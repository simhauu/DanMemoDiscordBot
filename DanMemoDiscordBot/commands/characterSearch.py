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
from commands.utils import get_emoji,HeroAscensionStatsP,HeroAscensionStatsB,HeroAscensionStatsM
from database.DBcontroller import DBcontroller
from database.entities.Adventurer import Adventurer, AdventurerSkill, AdventurerSkillEffects, AdventurerDevelopment, AdventurerStats
from database.entities.BaseConstants import Element, Target, Type, Attribute, Modifier

async def run(dbConfig, client, ctx, *search):
    is_embed = False
    is_files = False

    my_search = " "
    for words in search:
        my_search = my_search + words + " "

    db = DBcontroller(dbConfig)
    my_list = db.characterSearch(my_search,{})
    print(my_list)

    message = ""

    # exactly 1 result then display
    if len(my_list) == 0:
        message = "Sorry there are no results"
    elif len(my_list) == 1:
        temp_embed = discord.Embed()
        dev_embed = discord.Embed()
        temp_embed.color = 3066993
        dev_embed.color = 3066993
        if "Ad" in (my_list[0])[3]:
            info = db.assembleAdventurer(((my_list[0])[3])[2:])
            #print(info)
            for adventurerdev in info[4]:
                dev_embed.add_field(name=adventurerdev[0], value=adventurerdev[1], inline=False)
            is_adv = True
        else:
            info = db.assembleAssist(((my_list[0])[3])[2:])
            #print(info)
            is_adv = False
        temp_embed.add_field(name="Stats", value=await assembleStats(info[3],0,"",0), inline=True)
        temp_embed.add_field(name="Abilities", value=await assembleAbilities(info[3],0,"",0), inline=True)
        temp_embed.title = info[1]
        dev_embed.title = info[1]
        for skills in info[2]:
            if skills[1] == "":
                temp_embed.add_field(name=skills[0], value="placeholder", inline=False)                
            else:
                temp_embed.add_field(name=skills[0], value=skills[1], inline=False)
                
        try:
            # images
            file_list = []
            # file_list.append(discord.File("./lottery/"+info[0], filename="hex.png"))
            file_list.append(discord.File("./lottery/"+info[0]+"/hex.png"))
            #file_list.append(discord.File("./lottery/"+info[0], filename="texture.png"))        
            file_list.append(discord.File("./lottery/"+info[0] + "/texture.png"))
            temp_embed.set_thumbnail(url="attachment://hex.png")
            dev_embed.set_thumbnail(url="attachment://hex.png")
            temp_embed.set_image(url="attachment://texture.png")
            dev_embed.set_image(url="attachment://texture.png")
            is_files = True
        except:
            pass
        
        is_embed = True
    else:
        for Adventurersid in my_list:
            if("Ad" in Adventurersid):
                message= message + "[{}] {}\n".format(Adventurersid[1],Adventurersid[2])
            else:
                message= message + "[{}] {}\n".format(Adventurersid[1],Adventurersid[2])
    #try:
    if(is_embed and is_files):
        if(is_adv):
            await pageAdHandler(client, ctx, temp_embed,file_list, dev_embed,info[3], info[6])
        else:
            await pageASHandler(client, ctx,temp_embed,file_list,info[3])
    elif(is_embed):
        await ctx.send(embed=temp_embed)
    elif(is_files):
        await ctx.send(files=file_list)
    else:         
        await ctx.send(message)
    #except:
        #await ctx.send("Sorry unable to find results")
    db.closeconnection()

async def pageAdHandler(client, ctx, temp_embed:discord.Embed, file_list, dev_embed, stats_dict, unit_type):
    MAXLB = 5
    MAXHA = 6
    current_page = 0
    current_limitbreak = 0
    current_ha = 0
    page_list = [temp_embed, dev_embed]
    temp_embed.set_footer(text="Page {} of {}".format(current_page+1,len(page_list))) 

    emoji1 = '\u2b05'
    emoji2 = '\u27a1'
    limit_break_add = get_emoji("square_on").toString(ctx)
    limit_break_sub = get_emoji("square_off").toString(ctx)
    hero_ascend_add = get_emoji("star_on").toString(ctx)
    hero_ascend_sub = get_emoji("star_off").toString(ctx)
    async def updateStats():
        temp_embed.description = limit_break_add * current_limitbreak + limit_break_sub*(MAXLB-current_limitbreak)+ "    " + hero_ascend_add * current_ha + hero_ascend_sub*(MAXHA-current_ha)
        # Stats 
        temp_embed.set_field_at(0,name="Stats", value=await assembleStats(stats_dict,current_limitbreak,unit_type,current_ha), inline=True)
        # Abilities
        temp_embed.set_field_at(1,name="Abilities", value=await assembleAbilities(stats_dict,current_limitbreak,unit_type,current_ha), inline=True)
    await updateStats()
    msg = await ctx.send(files=file_list,embed=page_list[current_page])
    await msg.add_reaction(emoji1)
    await msg.add_reaction(emoji2)
    await msg.add_reaction(hero_ascend_sub)
    await msg.add_reaction(hero_ascend_add)
    await msg.add_reaction(limit_break_sub)
    await msg.add_reaction(limit_break_add)
    # set_field_at(index, *, name, value, inline=True)
    def check(reaction, user):
        return (str(reaction.emoji) == emoji2 
                or str(reaction.emoji) == emoji1 
                or str(reaction.emoji) == hero_ascend_add
                or str(reaction.emoji) == hero_ascend_sub
                or str(reaction.emoji) == limit_break_add
                or str(reaction.emoji) == limit_break_sub) and user !=client.user and reaction.message.id == msg.id
   
    while True:
        try:
            reaction, user = await client.wait_for('reaction_add', timeout=60.0, check=check)
        except asyncio.TimeoutError:
            page_list[current_page].color=16203840
            await msg.edit(embed=page_list[current_page])
            break
        else:
            # left
            if str(reaction.emoji) == emoji1:
                if(current_page > 0):
                    current_page = current_page -1
                else:
                    current_page = len(page_list)-1
            # right
            if str(reaction.emoji) == emoji2:
                if( current_page+1 < len(page_list)):
                    current_page = current_page +1
                else:
                    current_page = 0
            if str(reaction.emoji) == limit_break_sub:
                if(current_limitbreak > 0):
                    current_limitbreak = current_limitbreak -1
                else:
                    current_limitbreak = MAXLB
                await updateStats()
            if str(reaction.emoji) == limit_break_add:
                if(current_limitbreak < MAXLB):
                    current_limitbreak = current_limitbreak +1
                else:
                    current_limitbreak = 0
                await updateStats()
            if str(reaction.emoji) == hero_ascend_sub:
                if(current_ha > 0):
                    current_ha = current_ha -1
                else:
                    current_ha = MAXHA
                await updateStats()
            if str(reaction.emoji) == hero_ascend_add:
                if(current_ha < MAXHA):
                    current_ha = current_ha +1
                else:
                    current_ha = 0
                await updateStats()
            page_list[current_page].set_footer(text="Page {} of {}".format(current_page+1,len(page_list)))            
            await msg.edit(embed=page_list[current_page])    

async def pageASHandler(client, ctx, temp_embed:discord.Embed, file_list, stats_dict):
    MAXLB = 5
    current_page = 0
    current_limitbreak = 0
    current_ha = 0
    page_list = [temp_embed]
    temp_embed.set_footer(text="Page {} of {}".format(current_page+1,len(page_list))) 

    limit_break_add = get_emoji("square_on").toString(ctx)
    limit_break_sub = get_emoji("square_off").toString(ctx)
    async def updateStats():
        temp_embed.description = limit_break_add * current_limitbreak + limit_break_sub*(MAXLB-current_limitbreak)
        # Stats 
        temp_embed.set_field_at(0,name="Stats", value=await assembleStats(stats_dict,current_limitbreak,"",current_ha), inline=True)
        # Abilities
        temp_embed.set_field_at(1,name="Abilities", value=await assembleAbilities(stats_dict,current_limitbreak,"",current_ha), inline=True)
    await updateStats()
    msg = await ctx.send(files=file_list,embed=page_list[current_page])
    await msg.add_reaction(limit_break_sub)
    await msg.add_reaction(limit_break_add)
    # set_field_at(index, *, name, value, inline=True)
    def check(reaction, user):
        return (str(reaction.emoji) == limit_break_add
                or str(reaction.emoji) == limit_break_sub) and user !=client.user and reaction.message.id == msg.id
   
    while True:
        try:
            reaction, user = await client.wait_for('reaction_add', timeout=60.0, check=check)
        except asyncio.TimeoutError:
            page_list[current_page].color=16203840
            await msg.edit(embed=page_list[current_page])
            break
        else:
            if str(reaction.emoji) == limit_break_sub:
                if(current_limitbreak > 0):
                    current_limitbreak = current_limitbreak -1
                else:
                    current_limitbreak = MAXLB
                await updateStats()
            if str(reaction.emoji) == limit_break_add:
                if(current_limitbreak < MAXLB):
                    current_limitbreak = current_limitbreak +1
                else:
                    current_limitbreak = 0
                await updateStats()
            page_list[current_page].set_footer(text="Page {} of {}".format(current_page+1,len(page_list)))            
            await msg.edit(embed=page_list[current_page])    



async def assembleStats(stats_dict : dict, limitbreak:int,unit_type:str,heroascend:int):
    if (unit_type.lower() == "physical_type"):
        temp_hp = str(int(stats_dict.get("hp")[limitbreak]) + HeroAscensionStatsP.HP.value[heroascend])
        temp_mp = str(int(stats_dict.get("mp")[limitbreak]) + HeroAscensionStatsP.MP.value[heroascend])
        temp_pat = str(int(stats_dict.get("physical_attack")[limitbreak]) + HeroAscensionStatsP.PAT.value[heroascend])
        temp_mat = str(int(stats_dict.get("magic_attack")[limitbreak]) + HeroAscensionStatsP.MAT.value[heroascend])
        temp_def = str(int(stats_dict.get("defense")[limitbreak]) + HeroAscensionStatsP.DEF.value[heroascend])
    elif (unit_type.lower() == "magic_type"):
        temp_hp = str(int(stats_dict.get("hp")[limitbreak]) + HeroAscensionStatsM.HP.value[heroascend])
        temp_mp = str(int(stats_dict.get("mp")[limitbreak]) + HeroAscensionStatsM.MP.value[heroascend])
        temp_pat = str(int(stats_dict.get("physical_attack")[limitbreak]) + HeroAscensionStatsM.PAT.value[heroascend])
        temp_mat = str(int(stats_dict.get("magic_attack")[limitbreak]) + HeroAscensionStatsM.MAT.value[heroascend])
        temp_def = str(int(stats_dict.get("defense")[limitbreak]) + HeroAscensionStatsM.DEF.value[heroascend])
    # balance
    else:
        temp_hp = str(int(stats_dict.get("hp")[limitbreak]) + HeroAscensionStatsB.HP.value[heroascend])
        temp_mp = str(int(stats_dict.get("mp")[limitbreak]) + HeroAscensionStatsB.MP.value[heroascend])
        temp_pat = str(int(stats_dict.get("physical_attack")[limitbreak]) + HeroAscensionStatsB.PAT.value[heroascend])
        temp_mat = str(int(stats_dict.get("magic_attack")[limitbreak]) + HeroAscensionStatsB.MAT.value[heroascend])
        temp_def = str(int(stats_dict.get("defense")[limitbreak]) + HeroAscensionStatsB.DEF.value[heroascend])
        
    ret = ""
    ret = ret + "{} : {}\n".format("HP",temp_hp)
    ret = ret + "{} : {}\n".format("MP",temp_mp)
    ret = ret + "{} : {}\n".format("P.AT",temp_pat)
    ret = ret + "{} : {}\n".format("M.AT",temp_mat)
    ret = ret + "{} : {}\n".format("DEF",temp_def)
    return ret
async def assembleAbilities(stats_dict : dict,limitbreak:int,unit_type:str,heroascend:int):
    if (unit_type.lower() == "physical_type"):
        temp_str = str(int(stats_dict.get("strength")[limitbreak]) + HeroAscensionStatsP.STR.value[heroascend])
        temp_end = str(int(stats_dict.get("endurance")[limitbreak]) + HeroAscensionStatsP.END.value[heroascend])
        temp_dex = str(int(stats_dict.get("dexterity")[limitbreak]) + HeroAscensionStatsP.DEX.value[heroascend])
        temp_agi = str(int(stats_dict.get("agility")[limitbreak]) + HeroAscensionStatsP.AGI.value[heroascend])
        temp_mag = str(int(stats_dict.get("magic")[limitbreak]) + HeroAscensionStatsP.MAG.value[heroascend])
    elif (unit_type.lower() == "magic_type"):
        temp_str = str(int(stats_dict.get("strength")[limitbreak]) + HeroAscensionStatsM.STR.value[heroascend])
        temp_end = str(int(stats_dict.get("endurance")[limitbreak]) + HeroAscensionStatsM.END.value[heroascend])
        temp_dex = str(int(stats_dict.get("dexterity")[limitbreak]) + HeroAscensionStatsM.DEX.value[heroascend])
        temp_agi = str(int(stats_dict.get("agility")[limitbreak]) + HeroAscensionStatsM.AGI.value[heroascend])
        temp_mag = str(int(stats_dict.get("magic")[limitbreak]) + HeroAscensionStatsM.MAG.value[heroascend])
    # balance
    else:
        temp_str = str(int(stats_dict.get("strength")[limitbreak]) + HeroAscensionStatsB.STR.value[heroascend])
        temp_end = str(int(stats_dict.get("endurance")[limitbreak]) + HeroAscensionStatsB.END.value[heroascend])
        temp_dex = str(int(stats_dict.get("dexterity")[limitbreak]) + HeroAscensionStatsB.DEX.value[heroascend])
        temp_agi = str(int(stats_dict.get("agility")[limitbreak]) + HeroAscensionStatsB.AGI.value[heroascend])
        temp_mag = str(int(stats_dict.get("magic")[limitbreak]) + HeroAscensionStatsB.MAG.value[heroascend])


    ret = ""
    ret = ret + "{} : {}\n".format("Str.",temp_str)
    ret = ret + "{} : {}\n".format("End.",temp_end)
    ret = ret + "{} : {}\n".format("Dex.",temp_dex)
    ret = ret + "{} : {}\n".format("Agi.",temp_agi)
    ret = ret + "{} : {}\n".format("Mag.",temp_mag)
    return ret