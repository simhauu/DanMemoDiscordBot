-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: us-cdbr-iron-east-04.cleardb.net    Database: heroku_0fe8a18d3b21642
-- ------------------------------------------------------
-- Server version	5.5.56-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adventurerskill`
--

DROP TABLE IF EXISTS `adventurerskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adventurerskill` (
  `adventurerskillid` int(11) NOT NULL AUTO_INCREMENT,
  `adventurerid` int(11) NOT NULL,
  `skillname` varchar(100) NOT NULL,
  `skilltype` varchar(100) NOT NULL,
  PRIMARY KEY (`adventurerskillid`),
  KEY `adventurerid_idx` (`adventurerid`),
  CONSTRAINT `adventurerid1` FOREIGN KEY (`adventurerid`) REFERENCES `adventurer` (`adventurerid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7884 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adventurerskill`
--

LOCK TABLES `adventurerskill` WRITE;
/*!40000 ALTER TABLE `adventurerskill` DISABLE KEYS */;
INSERT INTO `adventurerskill` VALUES (6956,1465,'Protection: \n','special'),(6957,1465,'Minor Heal: \n','combat'),(6958,1465,'Holy Light: \n','combat'),(6959,1465,'Sounding Staff: \n','combat'),(6960,1466,'Salvaging Aeriel','special'),(6961,1466,'Complete Angelic Power','combat'),(6962,1466,'Piko Hammer Slash','combat'),(6963,1466,'Angelic Cut','combat'),(6964,1467,'Timidus Lil Rafaga','special'),(6965,1467,'Illusion Mech','combat'),(6966,1467,'Illusion Piercer','combat'),(6967,1467,'Veter Schrimm','combat'),(6968,1468,'Lil Rafaga','special'),(6969,1468,'Ariel','combat'),(6970,1468,'Tres Piercer','combat'),(6971,1468,'Veter Mech','combat'),(6972,1469,'Jackpot Lil Rafaga','special'),(6973,1469,'Lucky Strike','combat'),(6974,1469,'Lucky Chain','combat'),(6975,1469,'Good Luck','combat'),(6976,1470,'Pikopiko Aerial','special'),(6977,1470,'Ariel?','combat'),(6978,1470,'Tres Piercer?','combat'),(6979,1470,'Veter Mech?','combat'),(6980,1471,'Fleur Lil Rafaga','special'),(6981,1471,'Carmine Blaze','combat'),(6982,1471,'Cardinal Blade','combat'),(6983,1471,'Blast of Pain','combat'),(6984,1472,'Heaven\'s Catastrophe','special'),(6985,1472,'Devilish Malevolence','combat'),(6986,1472,'Disintegrate','combat'),(6987,1472,'Ruthless Sword','combat'),(6988,1473,'Gorgeous Lil Rafaga','special'),(6989,1473,'Fortune Strike','combat'),(6990,1473,'Fortune Chain','combat'),(6991,1473,'Streak','combat'),(6992,1474,'Amazon Lil Rafaga','special'),(6993,1474,'Calma Lovushka','combat'),(6994,1474,'Force Wind','combat'),(6995,1474,'Veter Escudo','combat'),(6996,1475,'Tempest Lil Rafaga','special'),(6997,1475,'Ariel','combat'),(6998,1475,'Tres Piercer','combat'),(6999,1475,'Veter Mech','combat'),(7000,1476,'Radiant Lil Rafaga','special'),(7001,1476,'Blade Dance','combat'),(7002,1476,'Phase Slicer','combat'),(7003,1476,'Stiletto','combat'),(7004,1477,'Innocent Lil Rafaga','special'),(7005,1477,'Miliy Piercer','combat'),(7006,1477,'Sheet Volya','combat'),(7007,1477,'Miliy Mech','combat'),(7008,1478,'Solid Lil Rafaga','special'),(7009,1478,'Air Combination','combat'),(7010,1478,'Tornado Break','combat'),(7011,1478,'Revelation Cyclone','combat'),(7012,1479,'Present Lil Rafaga','special'),(7013,1479,'Kamita Mech','combat'),(7014,1479,'Varder Mech','combat'),(7015,1479,'Veter Grato','combat'),(7016,1480,'Eternal Lil Rafaga','special'),(7017,1480,'Syvet Mech','combat'),(7018,1480,'Syvet Shpaga','combat'),(7019,1480,'Lasvete Nyeba','combat'),(7020,1481,'Illumines Lil Rafaga','special'),(7021,1481,'Échthra Piercer','combat'),(7022,1481,'Contempt Mech','combat'),(7023,1481,'Prevent Wind','combat'),(7024,1482,'Mortal Encounter','special'),(7025,1482,'Devour Magic','combat'),(7026,1482,'Bone Splitter','combat'),(7027,1482,'Hunger','combat'),(7028,1483,'Tidal Lil Rafaga','special'),(7029,1483,'Aqua Blade','combat'),(7030,1483,'Cobalt Edge','combat'),(7031,1483,'Aqua Bite','combat'),(7032,1484,'Mal Amour','special'),(7033,1484,'Heart Breaker','combat'),(7034,1484,'Pure Glittering Edge','combat'),(7035,1484,'Passion Coordination','combat'),(7036,1485,'Lil Rafaga','special'),(7037,1485,'Ariel','combat'),(7038,1485,'Tres Piercer','combat'),(7039,1485,'Veter Mech','combat'),(7040,1486,'Shining Halation','special'),(7041,1486,'Flooding Water','combat'),(7042,1486,'Clear Water Potion','combat'),(7043,1486,'Cure Stream Potion','combat'),(7044,1487,'Tera Sagrado','special'),(7045,1487,'Dea Animus','combat'),(7046,1487,'Dea Templum','combat'),(7047,1487,'Gehenna Croce','combat'),(7048,1488,'Splashing Barrage','special'),(7049,1488,'Breezy Blade','combat'),(7050,1488,'Sword Stream','combat'),(7051,1488,'Water Spike','combat'),(7052,1489,'Ruling Rift','special'),(7053,1489,'Lancer Inspiration','combat'),(7054,1489,'Riddle','combat'),(7055,1489,'Dismantle','combat'),(7056,1490,'Geiravor Dens','special'),(7057,1490,'Cat Spike','combat'),(7058,1490,'Quick Revenge','combat'),(7059,1490,'Charge Growl','combat'),(7060,1491,'Speed Party!','special'),(7061,1491,'Fraction','combat'),(7062,1491,'Breach','combat'),(7063,1491,'Ferocious Piece','combat'),(7064,1492,'Scratch Frantically','special'),(7065,1492,'Charge Stake','combat'),(7066,1492,'Rapid Scure','combat'),(7067,1492,'Cat Inspire','combat'),(7068,1493,'Disthermal Ray: \n','special'),(7069,1493,'Icy Vein: \n','combat'),(7070,1493,'Frozen Solid: \n','combat'),(7071,1493,'Shatter Solid: \n','combat'),(7072,1494,'Cascading Glint Arrow','special'),(7073,1494,'Lightning Fletcher','combat'),(7074,1494,'Stoicism','combat'),(7075,1494,'Pristine Presence','combat'),(7076,1495,'Crystal Barrage: \n','special'),(7077,1495,'Cloven Chain: \n','combat'),(7078,1495,'Fragment Release: \n','combat'),(7079,1495,'Division Spike: \n','combat'),(7080,1496,'Burst Oil','special'),(7081,1496,'Poison Bullet','combat'),(7082,1496,'Hypno Ash','combat'),(7083,1496,'Melt Physica','combat'),(7084,1497,'Throwing Mastery','special'),(7085,1497,'Noxious Sting','combat'),(7086,1497,'Vanishing Shroud','combat'),(7087,1497,'Maker\'s Insight','combat'),(7088,1498,'Burst Oil','special'),(7089,1498,'Poison Bullet','combat'),(7090,1498,'Melt Physica','combat'),(7091,1498,'Fall Menta','combat'),(7092,1499,'Crack Burst','special'),(7093,1499,'Spread Knife','combat'),(7094,1499,'Diffusion Knife','combat'),(7095,1499,'Flash Knowledge','combat'),(7096,1500,'Chemistal Burst','special'),(7097,1500,'Hypno Mist','combat'),(7098,1500,'Plague Sting','combat'),(7099,1500,'Illness Miasma','combat'),(7100,1501,'Ascending Knives','special'),(7101,1501,'Magnetic Maze','combat'),(7102,1501,'Phase Shift','combat'),(7103,1501,'Thunder Crash','combat'),(7104,1502,'Dancing Lil Rafaga: \n','special'),(7105,1502,'Ravage Dance: \n','combat'),(7106,1502,'Kaleidoscopic Dance: \n','combat'),(7107,1502,'Alluring Steps: \n','combat'),(7108,1503,'Argonaut Firebolt','special'),(7109,1503,'Rapid Slash','combat'),(7110,1503,'Firebolt','combat'),(7111,1503,'Argonaut','combat'),(7112,1504,'Heroic Strike','special'),(7113,1504,'Rapid Firebolt','combat'),(7114,1504,'Broad Slicer','combat'),(7115,1504,'Argonaut','combat'),(7116,1505,'Firebolt Igniter','special'),(7117,1505,'Seething','combat'),(7118,1505,'Fiery Courage','combat'),(7119,1505,'Noble Firebolt','combat'),(7120,1506,'New Year\'s Strike','special'),(7121,1506,'Blast Gleam','combat'),(7122,1506,'Rapid Flash','combat'),(7123,1506,'Double Defense','combat'),(7124,1507,'Firebolt Fireworks','special'),(7125,1507,'Firebolt','combat'),(7126,1507,'Rapid Firebolt','combat'),(7127,1507,'Preparation','combat'),(7128,1508,'Argonaut Incarnation','special'),(7129,1508,'Sharpness','combat'),(7130,1508,'Molten Spike','combat'),(7131,1508,'Sweeping Strike','combat'),(7132,1509,'Argonaut Firebolt','special'),(7133,1509,'Rapid Slash','combat'),(7134,1509,'Firebolt','combat'),(7135,1509,'Argonaut','combat'),(7136,1510,'Sworn Strike','special'),(7137,1510,'True Strike','combat'),(7138,1510,'Glorius Aim','combat'),(7139,1510,'Bright Fatality','combat'),(7140,1511,'Argonaut Sky Chain','special'),(7141,1511,'Blast Edge','combat'),(7142,1511,'Wind Storm','combat'),(7143,1511,'Gale Force','combat'),(7144,1512,'Argonaut Firebolt','special'),(7145,1512,'Firebolt','combat'),(7146,1512,'Tri-Slicer','combat'),(7147,1512,'Argonaut','combat'),(7148,1513,'Luna Traviesa','special'),(7149,1513,'Reverie Reps','combat'),(7150,1513,'Fortis Spes','combat'),(7151,1513,'Pierce Firebolt','combat'),(7152,1514,'Dungeon Dance','special'),(7153,1514,'Firebolt?','combat'),(7154,1514,'Tri Slicer','combat'),(7155,1514,'Argonaut?','combat'),(7156,1515,'Darkest Doom\'s Edge','special'),(7157,1515,'Slashing Atonement','combat'),(7158,1515,'Blackest Aura','combat'),(7159,1515,'Forbidden Left Arm','combat'),(7160,1516,'Rumble Growl','special'),(7161,1516,'Rufen Mut','combat'),(7162,1516,'Grand Barrage','combat'),(7163,1516,'Erde Angriff','combat'),(7164,1517,'Vertilgen Wolf','special'),(7165,1517,'Lethality','combat'),(7166,1517,'Bloodboil','combat'),(7167,1517,'Eternal Thirst','combat'),(7168,1518,'Ulfheoinn','special'),(7169,1518,'Wolfskehl','combat'),(7170,1518,'Ulfr rogi','combat'),(7171,1518,'Fenris Wolf','combat'),(7172,1519,'Vanargand Solmani','special'),(7173,1519,'Wolfskehl','combat'),(7174,1519,'Wolfen Roar','combat'),(7175,1519,'Fenris Wolf','combat'),(7176,1520,'Vanargand Solmani','special'),(7177,1520,'Wolfskehl','combat'),(7178,1520,'Wolfen Roar','combat'),(7179,1520,'Fenris Wolf','combat'),(7180,1521,'Camael - Megiddo: \n','special'),(7181,1521,'Flame Healer: \n','combat'),(7182,1521,'Camael - Providence: \n','combat'),(7183,1521,'Camael: \n','combat'),(7184,1522,'Terrain Devastator: \n','special'),(7185,1522,'Seismic Assault: \n','combat'),(7186,1522,'Rock Biter: \n','combat'),(7187,1522,'Geo Surge: \n','combat'),(7188,1523,'Grand Showdown: \n','special'),(7189,1523,'Draw Card: \n','combat'),(7190,1523,'Cheating Hands: \n','combat'),(7191,1523,'Flash Trick: \n','combat'),(7192,1524,'Special Placeholder','special'),(7193,1524,'Skill 1 Placeholder','combat'),(7194,1524,'Skill 2 Placeholder','combat'),(7195,1524,'Skill 3 Placeholder','combat'),(7196,1525,'Felesculus','special'),(7197,1525,'Fierce Dagger','combat'),(7198,1525,'Siecle Thief','combat'),(7199,1525,'Nox Haze','combat'),(7200,1526,'Resonating Rift','special'),(7201,1526,'Wanted Mark','combat'),(7202,1526,'Land Spike','combat'),(7203,1526,'Dagger Mastery','combat'),(7204,1527,'Sharp Gift','special'),(7205,1527,'Parrying Dagger','combat'),(7206,1527,'Fend','combat'),(7207,1527,'Laceration','combat'),(7208,1528,'Heroic Tale: Prelude: \n','special'),(7209,1528,'Hero Diary: \n','combat'),(7210,1528,'Heartless Monsters!: \n','combat'),(7211,1528,'Strike of A Hero?: \n','combat'),(7212,1529,'Critical Savaging: \n','special'),(7213,1529,'Feral Bash: \n','combat'),(7214,1529,'Battle Trance: \n','combat'),(7215,1529,'Wild Strike: \n','combat'),(7216,1530,'Soul Light: \n','special'),(7217,1530,'Ice Touch: \n','combat'),(7218,1530,'Cure Ephialtes: \n','combat'),(7219,1530,'Reverie Droplet: \n','combat'),(7220,1531,'Tempest On Air: \n','special'),(7221,1531,'Hot Wallop: \n','combat'),(7222,1531,'Tap Floor: \n','combat'),(7223,1531,'Fencer Cadenza: \n','combat'),(7224,1532,'Reality Distortion: \n','special'),(7225,1532,'Insanity Genesis: \n','combat'),(7226,1532,'Coarse Gaze: \n','combat'),(7227,1532,'Vile Intimation: \n','combat'),(7228,1533,'Passion Banshee: \n','special'),(7229,1533,'Rejection: \n','combat'),(7230,1533,'Prime Comet: \n','combat'),(7231,1533,'Secret Passion: \n','combat'),(7232,1534,'Fleur de Sinclair: \n','special'),(7233,1534,'Slip In Fresh: \n','combat'),(7234,1534,'Hemorrhage: \n','combat'),(7235,1534,'Mutilate: \n','combat'),(7236,1535,'Successive Slay: \n','special'),(7237,1535,'Lethal Weapon: \n','combat'),(7238,1535,'Extreme Smasher: \n','combat'),(7239,1535,'Ultimate Slasher: \n','combat'),(7240,1536,'Gale Blast: \n','special'),(7241,1536,'Air Bender: \n','combat'),(7242,1536,'Focused Storm: \n','combat'),(7243,1536,'Vedanta Strike: \n','combat'),(7244,1537,'High Altitude Trajectory','special'),(7245,1537,'Dive Attack','combat'),(7246,1537,'Focused Attack','combat'),(7247,1537,'Head-on Attack','combat'),(7248,1538,'Verite Amour','special'),(7249,1538,'Hekma Irada','combat'),(7250,1538,'Nadam Reruabado','combat'),(7251,1538,'God\'s Theorem','combat'),(7252,1539,'Transcendent Garden: \n','special'),(7253,1539,'Savant: \n','combat'),(7254,1539,'Runic Intellect: \n','combat'),(7255,1539,'Prism Bolt: \n','combat'),(7256,1540,'Blinkedge Tornado','special'),(7257,1540,'Windforce','combat'),(7258,1540,'Sonic Wind','combat'),(7259,1540,'Vitalize','combat'),(7260,1541,'Electrocute','special'),(7261,1541,'Trueno Natura','combat'),(7262,1541,'Ardor Fulmen','combat'),(7263,1541,'Cor Exaltatio','combat'),(7264,1542,'Dio Thyrsos','special'),(7265,1542,'Xeno Lightning','combat'),(7266,1542,'Grandis Luster','combat'),(7267,1542,'Dio Grail','combat'),(7268,1543,'Light Pillar','special'),(7269,1543,'Sacred Scourge','combat'),(7270,1543,'Force Field','combat'),(7271,1543,'Sol Illuminate','combat'),(7272,1544,'Braver Assault','special'),(7273,1544,'Rush Spear','combat'),(7274,1544,'Braver Order','combat'),(7275,1544,'Trample Lance','combat'),(7276,1545,'Furious Brave','special'),(7277,1545,'Heightened Strike','combat'),(7278,1545,'Slash Cleave','combat'),(7279,1545,'Enrage','combat'),(7280,1546,'Braver Assault','special'),(7281,1546,'Rush Spear','combat'),(7282,1546,'Braver Order','combat'),(7283,1546,'Mortal Banish','combat'),(7284,1547,'Tactical Tuxedo','special'),(7285,1547,'Rush Spear','combat'),(7286,1547,'Buster Edge','combat'),(7287,1547,'Destructor','combat'),(7288,1548,'Hell Finegas','special'),(7289,1548,'Trample Lance','combat'),(7290,1548,'Braver Order','combat'),(7291,1548,'Destructor','combat'),(7292,1549,'Secourer Tenebres','special'),(7293,1549,'Void Circle','combat'),(7294,1549,'Riptide Roller','combat'),(7295,1549,'Crescent Abrasion','combat'),(7296,1550,'Tri-virtues: \n','special'),(7297,1550,'Northern Breeze: \n','combat'),(7298,1550,'Ether Wake: \n','combat'),(7299,1550,'Tranquil Wind: \n','combat'),(7300,1551,'Uchide no Kozuchi: \n','special'),(7301,1551,'Akane: \n','combat'),(7302,1551,'Shiika: \n','combat'),(7303,1551,'Yosuga: \n','combat'),(7304,1552,'Snow Shadow: \n','special'),(7305,1552,'Frozen Wing: \n','combat'),(7306,1552,'Ice Blade: \n','combat'),(7307,1552,'White Crane: \n','combat'),(7308,1553,'Dvergr Enhance','special'),(7309,1553,'Heavy Ax','combat'),(7310,1553,'Sidewinder','combat'),(7311,1553,'Ardigalea','combat'),(7312,1554,'Mighty Sunrise','special'),(7313,1554,'Strong Defense','combat'),(7314,1554,'Attack Fortress','combat'),(7315,1554,'Scintillate Ax','combat'),(7316,1555,'Dvergr Enhance','special'),(7317,1555,'Banishing Ax','combat'),(7318,1555,'Sidewinder','combat'),(7319,1555,'Ardigalea','combat'),(7320,1556,'Biker Bash','special'),(7321,1556,'Rev Up','combat'),(7322,1556,'Burn Out','combat'),(7323,1556,'Traction Burst','combat'),(7324,1557,'Chigusa Senbu','special'),(7325,1557,'Breath of Spring','combat'),(7326,1557,'Purifying Water','combat'),(7327,1557,'Anti-Spell Circle','combat'),(7328,1558,'Narukami Sakura','special'),(7329,1558,'Shunrai Shigure','combat'),(7330,1558,'Shinobigoi Yukidoke','combat'),(7331,1558,'Kushimitama Kagura','combat'),(7332,1559,'The Invite to Onsen','special'),(7333,1559,'Astonishing Slash','combat'),(7334,1559,'Earth Calling Kodachi','combat'),(7335,1559,'Chigo No Jin','combat'),(7336,1560,'Chigusa Snowfall','special'),(7337,1560,'Healing Waters','combat'),(7338,1560,'Emerald Shine','combat'),(7339,1560,'Divine Waters','combat'),(7340,1561,'Chigusa Senbu','special'),(7341,1561,'Loyal Knife','combat'),(7342,1561,'Breath of Spring','combat'),(7343,1561,'Anti-Katana Circle','combat'),(7344,1562,'Bloom in Water: \n','special'),(7345,1562,'Blooming Slash: \n','combat'),(7346,1562,'Glacial Stroke: \n','combat'),(7347,1562,'Preeminent Blade: \n','combat'),(7348,1563,'Celestial Steps: \n','special'),(7349,1563,'Zephyr: \n','combat'),(7350,1563,'Slashing Wind: \n','combat'),(7351,1563,'Gust Charge: \n','combat'),(7352,1564,'Ouka Issen','special'),(7353,1564,'Shielding Stance','combat'),(7354,1564,'Kenpu-Renzan','combat'),(7355,1564,'Heart of Perseverance','combat'),(7356,1565,'Ouka Issen','special'),(7357,1565,'Kenpu-Renzan','combat'),(7358,1565,'Shielding Stance','combat'),(7359,1565,'Spirited Stance','combat'),(7360,1566,'Ouka-Nisouren','special'),(7361,1566,'Spear of Absolute Bravery','combat'),(7362,1566,'Fair and Square','combat'),(7363,1566,'Do or Die Resistance','combat'),(7364,1567,'Flute Shot','special'),(7365,1567,'Projected Trajectory Shot','combat'),(7366,1567,'Bolting Assault Shot','combat'),(7367,1567,'Target Focused Shot','combat'),(7368,1568,'Cannon Shot','special'),(7369,1568,'Persuader','combat'),(7370,1568,'First Chance','combat'),(7371,1568,'Stance Square','combat'),(7372,1569,'Counter Water Strike: \n','special'),(7373,1569,'Misty Moon: \n','combat'),(7374,1569,'Verdant Gale: \n','combat'),(7375,1569,'Seven Siege: \n','combat'),(7376,1570,'Eighth Bullet','special'),(7377,1570,'Second Bullet','combat'),(7378,1570,'Fourth Bullet','combat'),(7379,1570,'Seventh Bullet','combat'),(7380,1571,'Bloom Thrower: \n','special'),(7381,1571,'Sharp Slicer: \n','combat'),(7382,1571,'Diffuse Aura: \n','combat'),(7383,1571,'Wind Walker: \n','combat'),(7384,1572,'Elf Ring','special'),(7385,1572,'Karpos Dallos','combat'),(7386,1572,'Karpos Pyr','combat'),(7387,1572,'Anemos Fotia','combat'),(7388,1573,'Aspara Illusion','special'),(7389,1573,'Arcs Ray?','combat'),(7390,1573,'Ether Charge?','combat'),(7391,1573,'Magias Decremento?','combat'),(7392,1574,'Icechunk Impact','special'),(7393,1574,'Sleet Fall','combat'),(7394,1574,'Crushing Deluge','combat'),(7395,1574,'Soothing Mist','combat'),(7396,1575,'Har Rea Laevateinn','special'),(7397,1575,'Kindling','combat'),(7398,1575,'Laid Waste','combat'),(7399,1575,'Immolation','combat'),(7400,1576,'Eternal Burst','special'),(7401,1576,'Lumen Keorn','combat'),(7402,1576,'Lumen Solum','combat'),(7403,1576,'Alvis Kairos','combat'),(7404,1577,'Radiant Lily','special'),(7405,1577,'Clear Simmer','combat'),(7406,1577,'Dispel Aureole','combat'),(7407,1577,'Horoscope Ray','combat'),(7408,1578,'Elf Ring','special'),(7409,1578,'Arcs Ray','combat'),(7410,1578,'Lux Maleficium','combat'),(7411,1578,'Anemos Fotia','combat'),(7412,1579,'Special Placeholder','special'),(7413,1579,'Skill 1 Placeholder','combat'),(7414,1579,'Skill 2 Placeholder','combat'),(7415,1579,'Skill 3 Placeholder','combat'),(7416,1580,'Galactica Magica','special'),(7417,1580,'Shining Wizard','combat'),(7418,1580,'Keep it a secret!','combat'),(7419,1580,'Magic Attack','combat'),(7420,1581,'Aquatic Tornado','special'),(7421,1581,'Aquatic Nova','combat'),(7422,1581,'Aquatic Lure','combat'),(7423,1581,'Aquatic Ray','combat'),(7424,1582,'Fusillade Fallarica','special'),(7425,1582,'Arcs Ray','combat'),(7426,1582,'Ether Charge','combat'),(7427,1582,'Magias Decremento','combat'),(7428,1583,'Spikey Avalanche','special'),(7429,1583,'Black Brand','combat'),(7430,1583,'Amplify Agony','combat'),(7431,1583,'Shadow Feeder','combat'),(7432,1584,'Crystal Deluge','special'),(7433,1584,'Blanc Glace','combat'),(7434,1584,'Avalanche Neige','combat'),(7435,1584,'Elle Grace','combat'),(7436,1585,'Fast Dimensional Attack','special'),(7437,1585,'Horizontal Attack','combat'),(7438,1585,'Slash','combat'),(7439,1585,'Rotating Attack','combat'),(7440,1586,'Game Changer: \n','special'),(7441,1586,'Havoc Assault: \n','combat'),(7442,1586,'Fallen Bastion: \n','combat'),(7443,1586,'Arc Sweep: \n','combat'),(7444,1587,'Lightning: \n','special'),(7445,1587,'Secretive Knight: \n','combat'),(7446,1587,'Stinging Blade: \n','combat'),(7447,1587,'Exquisite: \n','combat'),(7448,1588,'Raining Arrows','special'),(7449,1588,'Cure Potion','combat'),(7450,1588,'Detoxification','combat'),(7451,1588,'Hypnotic Arrow','combat'),(7452,1589,'Blizzard Rain','special'),(7453,1589,'Icicle Arrow','combat'),(7454,1589,'Mana Stock ','combat'),(7455,1589,'Reforce Cancel','combat'),(7456,1590,'Powering Arrow','special'),(7457,1590,'Heal Medicine','combat'),(7458,1590,'Chaos Pale','combat'),(7459,1590,'Flaming Blade','combat'),(7460,1591,'Lightning Arcbolt','special'),(7461,1591,'Conductivity','combat'),(7462,1591,'Enhanced Lightning','combat'),(7463,1591,'Loaded Lightning','combat'),(7464,1592,'Nature Blessing','special'),(7465,1592,'Raising Arrow','combat'),(7466,1592,'Through Pain','combat'),(7467,1592,'Assault Potion','combat'),(7468,1593,'Tumbling!','special'),(7469,1593,'Cure Potion?','combat'),(7470,1593,'Detoxification?','combat'),(7471,1593,'Poison Arrow?','combat'),(7472,1594,'Bubble Bloom','special'),(7473,1594,'Bubble Rush','combat'),(7474,1594,'Wipe Away','combat'),(7475,1594,'Hydro Blast','combat'),(7476,1595,'Shining Explosion','special'),(7477,1595,'Calamity Ray','combat'),(7478,1595,'Light Magic-Sword','combat'),(7479,1595,'Shining Howling','combat'),(7480,1596,'Pallum Satelite Cannon','special'),(7481,1596,'Emergency Maintenance','combat'),(7482,1596,'Caustic Smog','combat'),(7483,1596,'Robot Punch','combat'),(7484,1597,'Bursting Affection','special'),(7485,1597,'Lively Heart','combat'),(7486,1597,'Warm Heart','combat'),(7487,1597,'Shy Burn','combat'),(7488,1598,'Dolphin Army','special'),(7489,1598,'Calamity Water','combat'),(7490,1598,'Water Magic Sword','combat'),(7491,1598,'Frozen Water','combat'),(7492,1599,'Raining Arrows','special'),(7493,1599,'Cure Potion','combat'),(7494,1599,'Detoxification','combat'),(7495,1599,'Hypnotic Arrow','combat'),(7496,1600,'Trick or Sweet','special'),(7497,1600,'Sweet Prank','combat'),(7498,1600,'Magical Wand','combat'),(7499,1600,'Bad Trick','combat'),(7500,1601,'Sunshine Ray','special'),(7501,1601,'Heal Medicine','combat'),(7502,1601,'Hypnotic Arrow','combat'),(7503,1601,'Ether Assist','combat'),(7504,1602,'Flame Illusion','special'),(7505,1602,'Bright Hearth','combat'),(7506,1602,'Petit Feu','combat'),(7507,1602,'Eggnog Potion','combat'),(7508,1603,'Blinding Chant','special'),(7509,1603,'Face Cutter','combat'),(7510,1603,'Focused Will','combat'),(7511,1603,'Enlightenment','combat'),(7512,1604,'Special Placeholder: \n','special'),(7513,1604,'Skill 1 Placeholder: \n','combat'),(7514,1604,'Skill 2 Placeholder: \n','combat'),(7515,1604,'Skill 3 Placeholder: \n','combat'),(7516,1605,'Special Placeholder: \n','special'),(7517,1605,'Skill 1 Placeholder: \n','combat'),(7518,1605,'Skill 2 Placeholder: \n','combat'),(7519,1605,'Skill 3 Placeholder: \n','combat'),(7520,1606,'The Last Ronin: \n','special'),(7521,1606,'Rough Slash: \n','combat'),(7522,1606,'Wrath Bringer: \n','combat'),(7523,1606,'Wild Cutting: \n','combat'),(7524,1607,'Assault Strike','special'),(7525,1607,'Danger Detection','combat'),(7526,1607,'Thorough Destruction','combat'),(7527,1607,'Black Fist Crush','combat'),(7528,1608,'Special Placeholder','special'),(7529,1608,'Skill 1 Placeholder','combat'),(7530,1608,'Skill 2 Placeholder','combat'),(7531,1608,'Skill 3 Placeholder','combat'),(7532,1609,'Hell Kaios: \n','special'),(7533,1609,'Siege Breaker: \n','combat'),(7534,1609,'Ruination: \n','combat'),(7535,1609,'Over Power: \n','combat'),(7536,1610,'Links Heart: \n','special'),(7537,1610,'Burn Up!: \n','combat'),(7538,1610,'Glittering Fire: \n','combat'),(7539,1610,'Star\'s Wink: \n','combat'),(7540,1611,'ODM Attacks','special'),(7541,1611,'Cartwheel Attack','combat'),(7542,1611,'Ascending Attack','combat'),(7543,1611,'Non-Stop','combat'),(7544,1612,'Dazzling Cluster: \n','special'),(7545,1612,'Stone Rage: \n','combat'),(7546,1612,'Sediment Impact: \n','combat'),(7547,1612,'Fissure Heart: \n','combat'),(7548,1613,'Invisible Slayer','special'),(7549,1613,'Short Ripper','combat'),(7550,1613,'Massive Force','combat'),(7551,1613,'Wide Slash','combat'),(7552,1614,'Gatling Arrow','special'),(7553,1614,'Trick Arrow','combat'),(7554,1614,'Buster Arrow','combat'),(7555,1614,'Hiding Position','combat'),(7556,1615,'Metatron','special'),(7557,1615,'Heavenly Wings','combat'),(7558,1615,'Sword of Light','combat'),(7559,1615,'The Sun','combat'),(7560,1616,'King\'s War Cry','special'),(7561,1616,'Providence Eye','combat'),(7562,1616,'Raging Impact','combat'),(7563,1616,'Conquerer\'s Strike','combat'),(7564,1617,'Lightning Strike','special'),(7565,1617,'Slash of Light','combat'),(7566,1617,'Tumultuous Zoom','combat'),(7567,1617,'Bolt of Destruction','combat'),(7568,1618,'Fangs of Apocalypse','special'),(7569,1618,'Edge of Moment','combat'),(7570,1618,'Rupture of Annihilation','combat'),(7571,1618,'Mighty Power Slash','combat'),(7572,1619,'Argonaut Rogue Thunder: \n','special'),(7573,1619,'Spark Starter: \n','combat'),(7574,1619,'Shocking Paralyze: \n','combat'),(7575,1619,'Thunder Fulmination: \n','combat'),(7576,1620,'Survival Strategies: \n','special'),(7577,1620,'Heavy Strider: \n','combat'),(7578,1620,'Crushmonger: \n','combat'),(7579,1620,'Weighted Smasher: \n','combat'),(7580,1621,'Strobe Light','special'),(7581,1621,'Full Throttle','combat'),(7582,1621,'Pharmacy','combat'),(7583,1621,'Voice of Poplar Street','combat'),(7584,1622,'Sealing Futsunomitama: \n','special'),(7585,1622,'Crossing Lilies: \n','combat'),(7586,1622,'Wild Boar: \n','combat'),(7587,1622,'Bonecrusher: \n','combat'),(7588,1623,'Lethal Weapon','special'),(7589,1623,'Heavy Smash','combat'),(7590,1623,'Full Swing','combat'),(7591,1623,'Ordinary Plan','combat'),(7592,1624,'Voltage Emission','special'),(7593,1624,'Negative Electrode','combat'),(7594,1624,'Positive Electrode','combat'),(7595,1624,'Polarity Repulsion','combat'),(7596,1625,'Storm Sprinter: \n','special'),(7597,1625,'Mirage Dagger: \n','combat'),(7598,1625,'Quick Stab: \n','combat'),(7599,1625,'Flanking Strike: \n','combat'),(7600,1626,'Flowing Currency: \n','special'),(7601,1626,'Water Cloak: \n','combat'),(7602,1626,'Whelming Water: \n','combat'),(7603,1626,'Swelling Wave: \n','combat'),(7604,1627,'Special Placeholder','special'),(7605,1627,'Skill 1 Placeholder','combat'),(7606,1627,'Skill 2 Placeholder','combat'),(7607,1627,'Skill 3 Placeholder','combat'),(7608,1628,'Diamond Trail','special'),(7609,1628,'Frost Nova','combat'),(7610,1628,'Chilling Blast','combat'),(7611,1628,'Winter\'s Grasp','combat'),(7612,1629,'Wynn Fimbulvetr','special'),(7613,1629,'Triple Impaler','combat'),(7614,1629,'Fil Eldis','combat'),(7615,1629,'Liv Illusio','combat'),(7616,1630,'Pillar of Heavens','special'),(7617,1630,'Brightnening Weapon','combat'),(7618,1630,'Lucent Force','combat'),(7619,1630,'Zenith Sanction','combat'),(7620,1631,'Wynn Fimbulvetr','special'),(7621,1631,'Triple Impaler','combat'),(7622,1631,'Luna Aldis','combat'),(7623,1631,'Liv Illusio','combat'),(7624,1632,'Rea Laevateinn','special'),(7625,1632,'Luna Aldis','combat'),(7626,1632,'Veil Breath','combat'),(7627,1632,'Wynn Fimbulvetr','combat'),(7628,1633,'Milenas Wind','special'),(7629,1633,'Shockwave Tempest','combat'),(7630,1633,'Tempest Reverberato','combat'),(7631,1633,'Elven Protection','combat'),(7632,1634,'Luminous Wind','special'),(7633,1634,'Noah Heal','combat'),(7634,1634,'Vindblitz','combat'),(7635,1634,'Teal Wind','combat'),(7636,1635,'Luminous Vortex','special'),(7637,1635,'Stormbolt','combat'),(7638,1635,'Stellaris','combat'),(7639,1635,'Downburst','combat'),(7640,1636,'Splash Wind','special'),(7641,1636,'Break','combat'),(7642,1636,'Gale of Sanction','combat'),(7643,1636,'Guard from Onsen','combat'),(7644,1637,'Luminous Star Gale','special'),(7645,1637,'Arctic','combat'),(7646,1637,'Wind Shear','combat'),(7647,1637,'Storm Weaver','combat'),(7648,1638,'Faye Congelation','special'),(7649,1638,'Glacies Nivis','combat'),(7650,1638,'Valanga Neve','combat'),(7651,1638,'Nous Oblio','combat'),(7652,1639,'Furore Impaler','special'),(7653,1639,'Velocity','combat'),(7654,1639,'Cyclocity','combat'),(7655,1639,'Windfury','combat'),(7656,1640,'Confession D\'amour','special'),(7657,1640,'Orange Veil','combat'),(7658,1640,'Chagrin Chanter','combat'),(7659,1640,'Gloire Tyffon','combat'),(7660,1641,'Zephyrus Dawnbringer','special'),(7661,1641,'Flashing','combat'),(7662,1641,'Oppression','combat'),(7663,1641,'Against Bane','combat'),(7664,1642,'Vampiric Drain','special'),(7665,1642,'Insite Wind','combat'),(7666,1642,'Fairy Vamp','combat'),(7667,1642,'Vind Chaos','combat'),(7668,1643,'Mega Avalanche: \n','special'),(7669,1643,'Depth Crystal: \n','combat'),(7670,1643,'Monolith Sledgehammer: \n','combat'),(7671,1643,'Earthen Spike: \n','combat'),(7672,1644,'Gargantuan Amalgam: \n','special'),(7673,1644,'Overkill Vision: \n','combat'),(7674,1644,'Inferno Tale: \n','combat'),(7675,1644,'Obscure Perish: \n','combat'),(7676,1645,'Shrapnel Lights Tact: \n','special'),(7677,1645,'Touche: \n','combat'),(7678,1645,'Fente: \n','combat'),(7679,1645,'Raumure: \n','combat'),(7680,1646,'Muthee Sagrama','special'),(7681,1646,'Visana','combat'),(7682,1646,'Udayati','combat'),(7683,1646,'Dharana','combat'),(7684,1647,'Ambra Ugrata','special'),(7685,1647,'Vidyut','combat'),(7686,1647,'Ek Garjana','combat'),(7687,1647,'Vajrapaat','combat'),(7688,1648,'Patatrin Naga','special'),(7689,1648,'Suzila','combat'),(7690,1648,'Durbalata','combat'),(7691,1648,'Askanda','combat'),(7692,1649,'One-Bladed Bisection','special'),(7693,1649,'Headwind','combat'),(7694,1649,'Artisan Sword','combat'),(7695,1649,'Concentration','combat'),(7696,1650,'Torrential: \n','special'),(7697,1650,'Command Lead: \n','combat'),(7698,1650,'Sweeping Swath: \n','combat'),(7699,1650,'Smash: \n','combat'),(7700,1651,'Winter Sakura: \n','special'),(7701,1651,'Snow Illusion: \n','combat'),(7702,1651,'Snow Silver: \n','combat'),(7703,1651,'Dancing Snow: \n','combat'),(7704,1652,'Shinobi Star Attack: \n','special'),(7705,1652,'White Shadow: \n','combat'),(7706,1652,'Nimble Fighter: \n','combat'),(7707,1652,'Shinobi Strike: \n','combat'),(7708,1653,'Sword of the End: \n','special'),(7709,1653,'Shido Style Spirit Extinction Blow: \n','combat'),(7710,1653,'Shido Style Aerial Glint: \n','combat'),(7711,1653,'Shido Style Sword Force: \n','combat'),(7712,1654,'Multi-Shot: \n','special'),(7713,1654,'Archer\'s Art: \n','combat'),(7714,1654,'Strumming Strings: \n','combat'),(7715,1654,'Marksmanship: \n','combat'),(7716,1655,'Argonaut Liberation: \n','special'),(7717,1655,'Heat Wipe: \n','combat'),(7718,1655,'Cold Rush: \n','combat'),(7719,1655,'Sleet Whelm: \n','combat'),(7720,1656,'Purifying Storm: \n','special'),(7721,1656,'Sibilant Growth: \n','combat'),(7722,1656,'Vivify: \n','combat'),(7723,1656,'Torpor Wind: \n','combat'),(7724,1657,'Meteorite: \n','special'),(7725,1657,'Split Shadow: \n','combat'),(7726,1657,'Flight Void: \n','combat'),(7727,1657,'Dark Stinger: \n','combat'),(7728,1658,'Fiery Protector: \n','special'),(7729,1658,'Jolts: \n','combat'),(7730,1658,'Pure Casting: \n','combat'),(7731,1658,'Vortex of Flames: \n','combat'),(7732,1659,'Dear Argonaut: \n','special'),(7733,1659,'Hero Rising: \n','combat'),(7734,1659,'Awakening Spirits: \n','combat'),(7735,1659,'Spiral Strike: \n','combat'),(7736,1660,'Shattering Onslaught','special'),(7737,1660,'Static State','combat'),(7738,1660,'Breaking Point','combat'),(7739,1660,'Lightning Slash','combat'),(7740,1661,'Amazon Berserk','special'),(7741,1661,'Pololokka Rodirro','combat'),(7742,1661,'Amazoness Ira','combat'),(7743,1661,'Decremensis Resa','combat'),(7744,1662,'Gamine Prune','special'),(7745,1662,'Gardien Tonnerre','combat'),(7746,1662,'Temerite Innocence','combat'),(7747,1662,'Foudre Neige','combat'),(7748,1663,'Vila Lassa','special'),(7749,1663,'Pololokka Rodirro','combat'),(7750,1663,'Stela Defesa','combat'),(7751,1663,'Luna Pregare','combat'),(7752,1664,'Amazon Berserk','special'),(7753,1664,'Dos Rodirro','combat'),(7754,1664,'Amazoness Ira','combat'),(7755,1664,'Decremensis Resa','combat'),(7756,1665,'Intense Heat','special'),(7757,1665,'Tres Rodirro','combat'),(7758,1665,'Audaz Gusto','combat'),(7759,1665,'Pudo Rodirro','combat'),(7760,1666,'Chocolata Soltar','special'),(7761,1666,'Pecado Merienda','combat'),(7762,1666,'Bonito Ruptura','combat'),(7763,1666,'Bravo Gusto','combat'),(7764,1667,'Jormungandr Berserk','special'),(7765,1667,'Furious Espada','combat'),(7766,1667,'List Iorum','combat'),(7767,1667,'The Last Stand','combat'),(7768,1661,'Jormungandr Berserk','special'),(7769,1661,'Furious Espada','combat'),(7770,1661,'Amazoness Ira','combat'),(7771,1661,'Rampage Grans','combat'),(7772,1668,'Sacred Peony','special'),(7773,1668,'Flash Perfume','combat'),(7774,1668,'Rampage Beat','combat'),(7775,1668,'Heavenly Blow','combat'),(7776,1669,'Galvanic Ravager','special'),(7777,1669,'Roll of Thunder','combat'),(7778,1669,'Volt Charge','combat'),(7779,1669,'Unstable Thunder','combat'),(7780,1670,'Special Placeholder','special'),(7781,1670,'Skill 1 Placeholder','combat'),(7782,1670,'Skill 2 Placeholder','combat'),(7783,1670,'Skill 3 Placeholder','combat'),(7784,1671,'Unrequited Rhapsody','special'),(7785,1671,'Rumble Dance','combat'),(7786,1671,'Bridal Path Dash','combat'),(7787,1671,'Single-Minded Lover','combat'),(7788,1672,'Jormungandr Berserk','special'),(7789,1672,'Furious Espada','combat'),(7790,1672,'Amazoness Ira','combat'),(7791,1672,'Rampage Grans','combat'),(7792,1673,'Backdraft','special'),(7793,1673,'Gritar Amor','combat'),(7794,1673,'Amor Rampage','combat'),(7795,1673,'Lindo Pastel','combat'),(7796,1674,'Karna Lassa','special'),(7797,1674,'Forte Grans','combat'),(7798,1674,'Stela Scudo','combat'),(7799,1674,'Luna Pleghierra','combat'),(7800,1675,'Sword of the End','special'),(7801,1675,'Spirit Extinction Blow','combat'),(7802,1675,'Aerial Glint','combat'),(7803,1675,'Sword Force','combat'),(7804,1676,'Lepida Cyclops','special'),(7805,1676,'Kakitsubata','combat'),(7806,1676,'Rindo','combat'),(7807,1676,'Housenka','combat'),(7808,1677,'Iron Galive','special'),(7809,1677,'Oniyuri','combat'),(7810,1677,'Suzuran','combat'),(7811,1677,'Hitujigusa','combat'),(7812,1678,'Finest Hour!: \n','special'),(7813,1678,'Spectacular: \n','combat'),(7814,1678,'Blade Rondo: \n','combat'),(7815,1678,'Edge of Celerity: \n','combat'),(7816,1679,'Wish As One: \n','special'),(7817,1679,'Star Pulse: \n','combat'),(7818,1679,'Spotlight: \n','combat'),(7819,1679,'Glaring Force: \n','combat'),(7820,1680,'Whirlpool Piercer: \n','special'),(7821,1680,'Morphing: \n','combat'),(7822,1680,'Flux Rumbler: \n','combat'),(7823,1680,'Water Harpoon: \n','combat'),(7824,1681,'Techtonik Breaker: \n','special'),(7825,1681,'Earthshaker: \n','combat'),(7826,1681,'Force Crush: \n','combat'),(7827,1681,'Bandar Bash: \n','combat'),(7828,1682,'Firemoon','special'),(7829,1682,'Zangetsu','combat'),(7830,1682,'Will o\' Wisp','combat'),(7831,1682,'Starkhaut','combat'),(7832,1683,'Waterhawk','special'),(7833,1683,'Moon Slash','combat'),(7834,1683,'Will o\' Wisp','combat'),(7835,1683,'Vite Scheleien','combat'),(7836,1684,'Firemoon','special'),(7837,1684,'Zangetsu','combat'),(7838,1684,'Will o\' Wisp','combat'),(7839,1684,'Starkhaut','combat'),(7840,1685,'Thousand Flames','special'),(7841,1685,'Name of the Flame','combat'),(7842,1685,'The Art of Forging','combat'),(7843,1685,'Spark Hammer','combat'),(7844,1686,'Special Placeholder','special'),(7845,1686,'Skill 1 Placeholder','combat'),(7846,1686,'Skill 2 Placeholder','combat'),(7847,1686,'Skill 3 Placeholder','combat'),(7848,1687,'Romance Blaze: \n','special'),(7849,1687,'Ignite Fist: \n','combat'),(7850,1687,'Surging Force: \n','combat'),(7851,1687,'Vigor: \n','combat'),(7852,1688,'Wolven Incarnation: \n','special'),(7853,1688,'Instinct: \n','combat'),(7854,1688,'Wolven Lore: \n','combat'),(7855,1688,'Tribe Alpha: \n','combat'),(7856,1689,'Tiger Fire','special'),(7857,1689,'Tetsusaisen','combat'),(7858,1689,'Chisouba','combat'),(7859,1689,'Butei Tenshin','combat'),(7860,1690,'Futsunomitama','special'),(7861,1690,'Brutal Slash','combat'),(7862,1690,'Kagenui Ichishiki','combat'),(7863,1690,'Jubaku-jin Ichishiki','combat'),(7864,1691,'Tenka-chizan','special'),(7865,1691,'Brutal Slash Kai','combat'),(7866,1691,'Kagenui Yonshiki','combat'),(7867,1691,'Skill 3 Placeholder','combat'),(7868,1692,'Futsunomitama','special'),(7869,1692,'Samidare-Giri','combat'),(7870,1692,'Fuma-jin Nishiki','combat'),(7871,1692,'Yoroi-kuzushii Nishiki','combat'),(7872,1693,'Shimenawanomitama','special'),(7873,1693,'Tora-giri','combat'),(7874,1693,'Shining Katana','combat'),(7875,1693,'Kourin-jin','combat'),(7876,1694,'Furin-kazan','special'),(7877,1694,'Catalpa Katana','combat'),(7878,1694,'Kekkai-jin Sanshiki','combat'),(7879,1694,'Ichino-Gata Gekishin','combat'),(7880,1695,'Futsunomitama','special'),(7881,1695,'Samidare-Giri','combat'),(7882,1695,'Kagenui Nishiki','combat'),(7883,1695,'Jubaku-jin Nishiki','combat');
/*!40000 ALTER TABLE `adventurerskill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 14:18:29
