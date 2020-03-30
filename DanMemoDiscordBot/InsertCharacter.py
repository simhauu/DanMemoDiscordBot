import json
import os

import sys
sys.path.append('Entities/')

from DBcontroller import DBcontroller
from Adventurer import Adventurer, AdventurerSkill, AdventurerSkillEffects, AdventurerDevelopment, AdventurerStats
from BaseConstants import Element, Target, Type, Attribute, Modifier, Speed
from Character import Character
from Assist import AssistStats, Assist, AssistSkillEffects, AssistSkill


class AdventureC:
    def __init__(self, title, name, types, stars, limited, ascended, stats, skills, development):
        self._title = title
        self._name = name
        self._type = types
        self._stars = stars
        self._limited = limited
        self.ascended = ascended
        self.stats = stats
        self.skills = skills
        self.development = development

class AssistC:
    def __init__(self, title, name, stars, limited, stats, skills):
        self._title = title
        self._name = name
        self._stars = stars
        self._limited = limited
        self.stats = stats
        self.skills = skills


class InsertCharacter:
    
    def __init__(self, database):
        self._db = database

    def insertAdventurer(self, adventureComplete:AdventureC):
        characterid = self.getInsertCharacterID(adventureComplete._name,
                                           False)
        typeid = self.getBaseConstants(Type(None, adventureComplete._type),False)
        adventurerid = self.getInsertAdventurerID(characterid,
                                             typeid,
                                             int(adventureComplete._limited),
                                             adventureComplete.ascended,
                                             adventureComplete._stars,
                                             None,
                                             None,
                                             adventureComplete._title)
        # stats
        for attributeKeys in adventureComplete.stats:
            attributeid = self.getBaseConstants(Attribute(None, attributeKeys),False)
            db.insertData(AdventurerStats(None, adventurerid, attributeid, str(adventureComplete.stats.get(attributeKeys))))
        # skills
        for skillsKeys in adventureComplete.skills:
            skillsList = adventureComplete.skills.get(skillsKeys)
            if (skillsKeys =="special"):
                adventurerskillid = db.insertData(AdventurerSkill(None, adventurerid, skillsList.get("name"),skillsKeys))
                self.insertAdventurerSkillEffects(adventurerskillid, skillsList.get("effects"))
            elif(skillsKeys =="combat"):
                for skills in skillsList:
                    adventurerskillid = db.insertData(AdventurerSkill(None, adventurerid, skills.get("name"),skillsKeys))
                    self.insertAdventurerSkillEffects(adventurerskillid, skills.get("effects"))                    
            # development
            else:
                for skills in skillsList:
                    for effects in skills.get("effects"):
                        temp_attribute = effects.get("attribute")
                        temp_modifier = effects.get("modifier")
                        if(len(temp_modifier) > 0 and temp_modifier[len(temp_modifier)-1] == "%"):
                            temp_modifier = temp_modifier[:len(temp_modifier)-1]
                        attributeid = self.getBaseConstants(Attribute(None, temp_attribute), False)
                        modifierid = self.getBaseConstants(Modifier(None, temp_modifier), True)
                        #AdventurerDevelopment                
                        db.insertData(AdventurerDevelopment(None, adventurerid, skills.get("name"), attributeid,
                         modifierid))                            
            
    def insertAdventurerSkillEffects(self, adventurerskillid, skilleffectList):
        # AdventurerSkillEffects SET UP        
        for effects in skilleffectList:
            #Type+Element
            temp_value = effects.get("type")
            if(temp_value != None):
                temp_index = temp_value.find("_")
                temp_element = temp_value[0:temp_index]
                temp_ad_ele = temp_element
                temp_type = temp_value[temp_index+1:]
            else:
                temp_type = ""
                temp_element=""
            # Element
            eleid = self.getBaseConstants(Element(None, temp_element), False)
            # Type for skills
            typeid=self.getBaseConstants(Type(None, temp_type), False)
            temp_target = effects.get("target")
            temp_attribute = effects.get("attribute")
            temp_speed = effects.get("speed")
            temp_modifier = effects.get("modifier")

            if(len(temp_modifier) > 0 and temp_modifier[len(temp_modifier)-1] == "%"):
                temp_modifier = temp_modifier[:len(temp_modifier)-1]
            targetid = self.getBaseConstants(Target(None, temp_target), False)
            attributeid = self.getBaseConstants(Attribute(None, temp_attribute), False)
            speedid = self.getBaseConstants(Speed(None, temp_speed), False)
            modifierid = self.getBaseConstants(Modifier(None, temp_modifier), True)
            # inserting effects
            db.insertData(AdventurerSkillEffects(None, adventurerskillid, targetid,
                 attributeid, modifierid, effects.get("duration"), typeid,eleid, speedid))
    
    def insertAssist(self, assistComplete:AssistC):
        characterid = self.getInsertCharacterID(assistComplete._name,
                                           False)
        assistid = self.getInsertAssistID(characterid,
                                     int(assistComplete._limited),
                                     assistComplete._stars,
                                     None,
                                     None,
                                     assistComplete._title)
        # stats
        for attributeKeys in assistComplete.stats:
            attributeid = self.getBaseConstants(Attribute(None, attributeKeys),False)
            db.insertData(AssistStats(None, assistid, attributeid, str(assistComplete.stats.get(attributeKeys))))
        # skills
        for skills in assistComplete.skills:
            assistskillid = db.insertData(AssistSkill(None, assistid, skills.get("name")))
            self.insertAssistSkillEffects(assistskillid, skills.get("effects"))

    
    def insertAssistSkillEffects(self, assistskillid, skilleffectList):
        # assistskilleffects SET UP        
        for effects in skilleffectList:
            # Type for skills
            #typeid=self.getBaseConstants(Type(None, temp_type), False)
            temp_target = effects.get("target")
            temp_attribute = effects.get("attribute")
            temp_modifier = effects.get("modifier")
            if(len(temp_modifier) > 0 and temp_modifier[len(temp_modifier)-1] == "%"):
                temp_modifier = temp_modifier[:len(temp_modifier)-1]
            targetid = self.getBaseConstants(Target(None, temp_target), False)
            attributeid = self.getBaseConstants(Attribute(None, temp_attribute), False)
            modifierid = self.getBaseConstants(Modifier(None, temp_modifier), True)
            # inserting effects
            db.insertData(AssistSkillEffects(None, assistskillid, targetid,
                 attributeid, modifierid, effects.get("duration")))    
    
    
    def getBaseConstants(self, baseConstant, isMod):
        ret = -1
        # modifier has value instead of name (b/c made more sense but now im getting punished for it lol)
        if(isMod):
            ret_list = db.getDataColumn(str(type(baseConstant).__name__).lower(),"value", baseConstant.value)
        else:
            ret_list = db.getDataColumn(str(type(baseConstant).__name__).lower(),"name", baseConstant.name)
        # check if character in, if it is then get id else insert
        if(len(ret_list) == 0):
            ret = db.insertData(baseConstant)
        else:
            # id is always first column
            ret = (ret_list[0])[0]
        return ret
    
    def getInsertCharacterID(self, name, iscollab):
        ret = -1
        ret_list = db.getDataColumn("character","name", name)
        # check if character in, if it is then get id else insert
        if(len(ret_list) == 0):
            ret = db.insertData(Character(None, name, iscollab))
        else:
            # id is always first column
            ret = (ret_list[0])[0]
        return ret
    
    def getInsertAdventurerID(self, characterid, typeid, limited, ascended, stars, splashuri, iconuri, title):
        ret = -1
        ret_list = db.getDataColumn("adventurer","title", title)
        # check if character in, if it is then get id else insert
        if(len(ret_list) == 0):
            ret = db.insertData(Adventurer(None, characterid, typeid,title,limited, False,
                     stars, None, None))
        else:
            # id is always first column
            ret = (ret_list[0])[0]
        return ret
    
    
    def getInsertAssistID(self, characterid,limited,stars, splashuri, iconuri, title):
        ret = -1
        ret_list = db.getDataColumn("assist","title", title)
        # check if character in, if it is then get id else insert
        if(len(ret_list) == 0):
            ret = db.insertData(Assist(None,
                                       characterid,
                                       title,
                                       limited,
                                       stars,
                                       None,
                                       None))
        else:
            # id is always first column
            ret = (ret_list[0])[0]
        return ret

if __name__ =="__main__":
    db = DBcontroller("us-cdbr-iron-east-04.cleardb.net","bdcaa58f136231","c268bc42","3306","heroku_0fe8a18d3b21642")
    #ic = InsertCharacter(db)
    mod_list = db.getDataColumnList("modifier", "value")
    type_list =db.getDataColumnList("type", "name")
    ele_list = db.getDataColumnList("element", "name")
    speed_list = ["fast","slow"]
    attribute_list =db.getDataColumnList("attribute", "name")
    print(attribute_list)
    path = '../../database/update/'
    with open('Database/terms/human_input.json', 'r') as f:
        human_input_dict = json.load(f)
    for filename in os.listdir(path):
        with open(path + '/' + filename, 'r', encoding="utf8") as f:
            #as_dict = json.load(f)
            #if(as_dict.get("limited")== None):
                #as_dict["limited"]=False
            #temp_as = AssistC(as_dict.get("title"), as_dict.get("name"), as_dict.get("stars"), as_dict.get("limited"), as_dict.get("stats"), as_dict.get("skills"))
            #print(as_dict.get("stats"))
            #ic.insertAssist(temp_as)
            line = f.readline()
            #Adv
            if("Adventurer" in line):
                #AdventureC(title, name, types, stars, limited, ascended, stats, skills, development)
                if("Time-Limited" in line):
                    limited = True
                else:
                    limited= False
                if('⭐️⭐️⭐️⭐️' in line):
                    stars = 4
                elif('⭐️⭐️⭐️️' in line):
                    stars = 3
                elif('⭐️⭐️' in line):
                    stars = 2
                elif('⭐️️️' in line):
                    stars = 1
                # title and character
                line = f.readline()
                title = line[line.find('[')+1:line.find(']')]
                name = line[line.find(']')+1:].strip()
                line = f.readline()
                # stats
                line = f.readline()
                hp=[int(line[4:]),0,0,0,0,0]
                line = f.readline()
                mp=[int(line[4:]),0,0,0,0,0]
                line = f.readline()
                patt=[int(line[6:]),0,0,0,0,0]
                line = f.readline()
                matt=[int(line[6:]),0,0,0,0,0]
                line = f.readline()
                defence=[int(line[4:]),0,0,0,0,0]
                #abilities
                line = f.readline()
                line = f.readline()                
                strength=[int(line[4:]),0,0,0,0,0]
                line = f.readline()
                endurance=[int(line[4:]),0,0,0,0,0]
                line = f.readline()
                dex=[int(line[4:]),0,0,0,0,0]
                line = f.readline()
                agi=[int(line[4:]),0,0,0,0,0]
                line = f.readline()
                mag=[int(line[4:]),0,0,0,0,0]
                #skills
                # NAME                
                line = f.readline()
                skill_list = dict()
                skill_dict = dict()
                skill_list["special"] = skill_dict
                skill_dict["name"] = line
                skilleffect_list = []                
                skill_dict["effects"] = skilleffect_list
                skill_combat_list = []
                skill_list["combat"] = skill_combat_list
                print(skill_list)
                line = f.readline()
                my_dict = dict()
                skilleffect_list.append(my_dict)
                while(line.strip() != "Skills/Development Abilities"):
                    # skill effect
                    if("[" in line):
                        my_dict = dict()
                        skilleffect_list.append(my_dict)                        
                        # target first
                        my_dict["target"] = line[line.find('[')+1:line.find(']')].lower()
                        temp_skillline = line[line.find(']')+1:].lower()
                        # TURNS???
                        if(" turns " in temp_skillline):
                            my_dict["duration"] = temp_skillline[len(temp_skillline)-len(" X turns ")]
                            temp_skillline = temp_skillline[:len(temp_skillline)-len(" for X turns ")]
                        # FILTER HERE
                        print("BEFORE" + temp_skillline)                        
                        for keys in human_input_dict:
                            if(" "+keys+" " in temp_skillline):
                                temp_skillline= temp_skillline.replace(keys, human_input_dict.get(keys))
                        print("AFTER" + temp_skillline)
                        #temp_speed,temp_modifier,temp_element,temp_type,temp_attribute,row[3]
                        wordlist = temp_skillline.split(" ")
                        for words in wordlist:
                            print(words)
                            if(words != "boost"):
                                if(words in speed_list):
                                    my_dict["speed"] = words.lower()
                                elif(words in ele_list):
                                    my_dict["element"] = words.lower()
                                elif(words in type_list):
                                    my_dict["type"] = words.lower()
                                elif(words in attribute_list):
                                    my_dict["attribute"] = words.lower()
                                elif(words.replace("%","") in mod_list):
                                    my_dict["modifier"] = words.lower().replace("%","")                                
                            print(my_dict)
                    # new skill
                    else:
                        skill_dict = dict()                        
                        skill_dict["name"] = line
                        skilleffect_list = []
                        skill_dict["effects"] = skilleffect_list
                        skill_combat_list.append(skill_dict)
                    line = f.readline()
                print(skill_list)
                # adv development
            # Assist
            else:
                if("Time-Limited" in line):
                    limited = True
                else:
                    limited= False
                # title and character                    
                line = f.readline()
                title = line[line.find('[')+1:line.find(']')]
                name = line[line.find(']')+1:].strip()
                if('⭐️⭐️⭐️⭐️' in line):
                    stars = 4
                elif('⭐️⭐️⭐️️' in line):
                    stars = 3
                elif('⭐️⭐️' in line):
                    stars = 2
                elif('⭐️️️' in line):
                    stars = 1
                line = f.readline()
                # stats
                
                #abilities
                
                #skills                