import discord
import datetime

from database.entities.User import User
from commands.utils import Status, get_emoji, mention_author

async def run(db_config, ctx):
    author = str(ctx.message.author)
    content = ctx.message.content
    
    print("\nReceived message from '"+author+"' with content '"+content+"'")

    user = User.get_user(db_config, author)

    previous_bento = user.last_bento_date
    if previous_bento is not None:
        next_bracket = previous_bento.replace(microsecond=0, second=0, minute=0)
        if previous_bento.hour % 2 == 0:
            next_bracket += datetime.timedelta(hours=2)
        else:
            next_bracket += datetime.timedelta(hours=1)

        now = datetime.datetime.now()
        print("Previous bento date:",previous_bento)
        print("Next bracket:",next_bracket)
        print("Now:",now)
        if next_bracket >= now:
            await no_bento(user, ctx)
            return
            
    currency_number = user.crepes
    if currency_number is None:
        currency_number = 0
    currency_number += 1

    user.crepes = currency_number
    user.last_bento_date = now

    user.update_user(db_config,now,content)

    emoji = get_emoji("crepe")
    emoji_str = emoji.toString(ctx)

    title = "Wait! Are you going to the dungeon today? Please take this with you! >///<"

    description = mention_author(ctx) + " has received a " + emoji_str + "!"

    if currency_number == 1:
        footer = "There is " + str(currency_number) + " " + emoji.name + " left in their bento box!"
    else:
        footer = "There are " + str(currency_number) + " " + emoji.plural + " left in their bento box!"

    embed = discord.Embed()
    embed.color = Status.OK.value
    embed.title = title
    embed.description = description
    embed.set_footer(text=footer)
    embed.set_image(url="attachment://yes.png")
    await ctx.send(embed=embed, file=discord.File("./images/bento/yes.png"))


async def no_bento(user, ctx):
    currency_number = user.crepes
    if currency_number is None:
        currency_number = 0

    emoji = get_emoji("crepe")

    title = "You are back already?"

    description = "Sorry, I don't have anything ready for you, " + mention_author(ctx) + "..."
    description += " Please come back again later!"

    if currency_number > 1:
        footer = "There are " + str(currency_number) + " " + emoji.plural + " left in your bento box!"
    else:
        footer = "There is " + str(currency_number) + " " + emoji.name + " left in your bento box!"

    embed = discord.Embed()
    embed.color = Status.KO.value
    embed.title = title
    embed.description = description
    embed.set_footer(text=footer)
    embed.set_image(url="attachment://nope.png")
    await ctx.send(embed=embed, file=discord.File("./images/bento/nope.png"))
