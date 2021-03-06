import discord
import asyncio
import json
import sys
import os
import aiohttp
from discord.ext import commands
from PIL import Image
import io
from urllib.parse import urlparse
import itertools
import gspread

from commands.utils import get_emoji,HeroAscensionStatsP,HeroAscensionStatsB,HeroAscensionStatsM,Status, HeroAscensionStatsD, HeroAscensionStatsH, getDefaultEmoji, createGSpreadJSON
from database.DBcontroller import DBcontroller
from database.entities.Adventurer import Adventurer, AdventurerSkill, AdventurerSkillEffects, AdventurerDevelopment, AdventurerStats
from database.entities.BaseConstants import Element, Target, Type, Attribute, Modifier


async def run(client, ctx:commands.context, *search):
    """ ping everyone who hasn't done all their runs

    Arguments:
        client {discord.client} -- discord bot object
        ctx {commands.context} -- context of the message
    """
    current_user = ctx.message.author
    print("in")
    if(current_user.guild.id == 708002106245775410):
        has_access = False
        print("correct server")
        print(current_user.roles)
        for temp_roles in current_user.roles:
            if(temp_roles.id == 708005221586042881):
                has_access = True
        if(has_access):
            gc = gspread.service_account(filename="./gspread.json")

            sh = gc.open("Imanity FR")
            ws = sh.worksheet("Basic Data")

            discordids = ws.col_values(1, value_render_option='UNFORMATTED_VALUE')
            runs = ws.col_values(3, value_render_option='UNFORMATTED_VALUE')
            print(discordids)
            print(runs)
            msg = "Please finish your runs before reset!\n"
            for index in range(0,len(runs)):
                if(isinstance(runs[index], int)):
                    if(runs[index] != 0 and runs[index] <= 4 and index < len(discordids) and (discordids[index].strip() != "" or discordids[index]!= None)):
                        print(ctx.message)
                        print(ctx.message.guild)
                        print(ctx.message.guild.get_member(discordids[index]))
                        msg = msg + "<@!{}>\n".format(discordids[index])
                        
            #temp_embed = discord.Embed()
            #temp_embed.color = 16203840
            #temp_embed.title = "Familia Rush Notice"
            #temp_embed.description= msg
            # everyone did their 4 runs
            if(msg == "Please finish your runs before reset!\n"):
                msg ="That was the last out of the 120 finest runs we had to offer! Was it enough to solidify our position as the greatest familia on the EU server? Yes? **Great! All according to plan!** Was it barely not good enough? Don't worry, operation #beatdivinemyth is still in progress. Strive to do even a little bit better than today, and we're sure to beat them eventually! がんばって!"
            # Young Blacksmith Hephaistios (Girl)
            await ctx.send(msg,files=[discord.File("./ngnl.jpg")])