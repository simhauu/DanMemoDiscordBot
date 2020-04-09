-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: danmemo
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `assistskilleffects`
--

DROP TABLE IF EXISTS `assistskilleffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistskilleffects` (
  `assistskilleffectsid` int NOT NULL AUTO_INCREMENT,
  `assistskillid` int NOT NULL,
  `targetid` int NOT NULL,
  `attributeid` int NOT NULL,
  `modifierid` int NOT NULL,
  `duration` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`assistskilleffectsid`),
  KEY `targetid5_idx` (`targetid`),
  KEY `attributeid5_idx` (`attributeid`),
  KEY `modifierid5_idx` (`modifierid`),
  KEY `assistskillid5_idx` (`assistskillid`),
  CONSTRAINT `assistskillid5` FOREIGN KEY (`assistskillid`) REFERENCES `assistskill` (`assistskillid`) ON DELETE CASCADE,
  CONSTRAINT `attributeid5` FOREIGN KEY (`attributeid`) REFERENCES `attribute` (`attributeid`),
  CONSTRAINT `modifierid5` FOREIGN KEY (`modifierid`) REFERENCES `modifier` (`modifierid`),
  CONSTRAINT `targetid5` FOREIGN KEY (`targetid`) REFERENCES `target` (`targetid`)
) ENGINE=InnoDB AUTO_INCREMENT=1355 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistskilleffects`
--

LOCK TABLES `assistskilleffects` WRITE;
/*!40000 ALTER TABLE `assistskilleffects` DISABLE KEYS */;
INSERT INTO `assistskilleffects` VALUES (747,512,36,313,370,NULL),(748,513,36,313,372,NULL),(749,514,36,299,351,NULL),(750,515,36,299,350,NULL),(751,516,36,332,355,NULL),(752,517,36,332,420,NULL),(753,518,35,280,374,NULL),(754,519,35,280,371,NULL),(755,520,36,332,370,NULL),(756,521,36,332,372,NULL),(757,522,35,279,389,NULL),(758,522,36,308,341,NULL),(759,523,35,279,374,NULL),(760,523,36,308,351,NULL),(761,524,33,279,351,NULL),(762,524,36,279,421,NULL),(763,525,33,279,350,NULL),(764,525,36,279,422,NULL),(765,526,36,390,370,NULL),(766,526,36,384,370,NULL),(767,526,36,281,358,NULL),(768,527,36,390,372,NULL),(769,527,36,384,372,NULL),(770,527,36,281,344,NULL),(771,528,35,323,423,NULL),(772,528,36,336,387,NULL),(773,529,35,323,389,NULL),(774,529,36,336,341,NULL),(775,530,35,308,389,NULL),(776,531,35,308,374,NULL),(777,532,36,316,390,NULL),(778,533,36,316,375,NULL),(779,534,36,291,341,NULL),(780,534,35,319,377,NULL),(781,535,36,291,351,NULL),(782,535,35,319,424,NULL),(783,536,35,293,389,NULL),(784,536,35,308,423,NULL),(785,537,35,293,374,NULL),(786,537,35,308,389,NULL),(787,538,33,308,351,NULL),(788,539,33,308,350,NULL),(789,540,33,308,366,NULL),(790,541,33,308,364,NULL),(791,542,33,283,349,NULL),(792,543,33,283,355,NULL),(793,544,35,295,367,NULL),(794,545,35,295,377,NULL),(795,546,35,305,425,NULL),(796,546,35,294,371,NULL),(797,547,35,305,391,NULL),(798,547,35,294,347,NULL),(799,548,36,391,370,NULL),(800,549,36,391,372,NULL),(801,550,33,336,366,NULL),(802,551,33,336,364,NULL),(803,552,36,284,403,NULL),(804,553,36,284,341,NULL),(805,554,36,336,351,NULL),(806,555,36,336,350,NULL),(807,556,33,336,366,NULL),(808,557,33,336,364,NULL),(809,558,35,307,409,NULL),(810,558,35,296,409,NULL),(811,558,36,326,341,NULL),(812,558,36,354,341,NULL),(813,559,35,307,426,NULL),(814,559,35,296,426,NULL),(815,559,36,326,351,NULL),(816,559,36,354,351,NULL),(817,560,36,280,387,NULL),(818,560,35,336,389,NULL),(819,561,36,280,341,NULL),(820,561,35,336,374,NULL),(821,562,35,334,389,NULL),(822,563,35,334,374,NULL),(823,564,36,344,390,NULL),(824,565,36,344,375,NULL),(825,566,33,336,351,NULL),(826,567,33,336,366,NULL),(827,568,35,308,374,NULL),(828,569,35,308,371,NULL),(829,570,36,315,387,NULL),(830,570,36,280,341,NULL),(831,571,36,315,341,NULL),(832,571,36,280,351,NULL),(833,572,36,291,341,NULL),(834,572,36,282,387,NULL),(835,573,36,291,351,NULL),(836,573,36,282,341,NULL),(837,574,36,390,370,NULL),(838,574,35,281,427,NULL),(839,575,36,390,372,NULL),(840,575,35,281,423,NULL),(841,576,35,281,423,NULL),(842,577,35,281,389,NULL),(843,578,36,291,341,NULL),(844,578,35,307,389,NULL),(845,579,36,291,351,NULL),(846,579,35,307,374,NULL),(847,580,33,291,351,NULL),(848,581,33,291,350,NULL),(849,582,33,291,366,NULL),(850,583,33,291,380,NULL),(851,584,36,315,387,NULL),(852,584,36,291,341,NULL),(853,585,36,315,341,NULL),(854,585,36,291,351,NULL),(855,586,36,391,370,NULL),(856,586,35,281,427,NULL),(857,587,36,391,372,NULL),(858,587,35,281,423,NULL),(859,588,35,279,428,NULL),(860,589,35,279,409,NULL),(861,590,36,384,382,NULL),(862,590,35,281,427,NULL),(863,591,36,384,429,NULL),(864,591,35,281,423,NULL),(865,592,36,384,370,NULL),(866,593,36,384,372,NULL),(867,594,35,279,423,NULL),(868,595,35,279,389,NULL),(869,596,33,280,387,NULL),(870,597,33,280,341,NULL),(871,598,35,336,374,NULL),(872,599,35,336,371,NULL),(873,600,36,280,430,NULL),(874,601,36,280,351,NULL),(875,602,35,280,389,NULL),(876,602,35,308,423,NULL),(877,603,35,280,374,NULL),(878,603,35,308,389,NULL),(879,604,33,280,430,NULL),(880,605,33,280,351,NULL),(881,606,35,280,431,NULL),(882,607,35,280,374,NULL),(883,608,33,280,387,NULL),(884,609,33,280,341,NULL),(885,610,36,313,370,NULL),(886,610,36,280,387,NULL),(887,611,36,313,372,NULL),(888,611,36,280,341,NULL),(889,612,35,293,374,NULL),(890,613,35,293,371,NULL),(891,614,36,390,370,NULL),(892,615,36,390,372,NULL),(893,616,36,390,355,NULL),(894,617,36,390,420,NULL),(895,618,36,359,370,NULL),(896,618,35,281,427,NULL),(897,619,36,359,372,NULL),(898,619,35,281,423,NULL),(899,620,35,341,389,NULL),(900,620,36,293,341,NULL),(901,621,35,341,374,NULL),(902,621,36,293,351,NULL),(903,622,36,299,432,NULL),(904,623,36,299,433,NULL),(905,624,36,392,390,NULL),(906,625,36,392,375,NULL),(907,626,35,282,423,NULL),(908,626,35,280,389,NULL),(909,627,35,282,389,NULL),(910,627,35,280,374,NULL),(911,628,33,279,341,NULL),(912,629,33,279,351,NULL),(913,630,36,290,430,NULL),(914,631,36,290,351,NULL),(915,632,35,280,423,NULL),(916,632,35,293,423,NULL),(917,633,35,280,389,NULL),(918,633,35,293,389,NULL),(919,634,36,279,387,NULL),(920,635,36,279,341,NULL),(921,636,36,390,370,NULL),(922,636,35,293,431,NULL),(923,637,36,390,372,NULL),(924,637,35,293,374,NULL),(925,638,36,280,387,NULL),(926,638,36,308,387,NULL),(927,639,36,280,341,NULL),(928,639,36,308,341,NULL),(929,640,36,299,432,NULL),(930,641,36,299,433,NULL),(931,642,36,284,359,NULL),(932,643,36,284,344,NULL),(933,644,33,279,351,NULL),(934,645,33,279,350,NULL),(935,646,33,279,366,NULL),(936,647,33,279,380,NULL),(937,648,35,279,389,NULL),(938,648,35,341,389,NULL),(939,649,35,279,374,NULL),(940,649,35,341,374,NULL),(941,650,36,279,387,NULL),(942,650,36,299,341,NULL),(943,651,36,279,341,NULL),(944,651,36,299,351,NULL),(945,652,35,319,377,NULL),(946,652,35,293,423,NULL),(947,653,35,319,424,NULL),(948,653,35,293,389,NULL),(949,654,33,290,430,NULL),(950,655,33,290,351,NULL),(951,656,35,353,389,NULL),(952,656,36,290,351,NULL),(953,657,35,353,374,NULL),(954,657,36,290,350,NULL),(955,658,35,290,423,NULL),(956,658,36,341,341,NULL),(957,659,35,290,389,NULL),(958,659,36,341,351,NULL),(959,660,35,295,377,NULL),(960,660,35,338,389,NULL),(961,661,35,295,424,NULL),(962,661,35,338,374,NULL),(963,662,35,279,374,NULL),(964,663,35,279,371,NULL),(965,664,36,279,341,NULL),(966,665,36,279,351,NULL),(967,666,36,291,341,NULL),(968,666,36,346,341,NULL),(969,666,36,314,341,NULL),(970,667,36,291,351,NULL),(971,667,36,346,351,NULL),(972,667,36,314,351,NULL),(973,668,35,315,389,NULL),(974,668,36,282,425,NULL),(975,669,35,315,374,NULL),(976,669,36,282,391,NULL),(977,670,35,279,374,NULL),(978,671,35,279,371,NULL),(979,672,35,364,355,NULL),(980,672,36,336,387,NULL),(981,673,35,364,434,NULL),(982,673,36,336,341,NULL),(983,674,35,291,389,NULL),(984,674,35,294,423,NULL),(985,675,35,291,374,NULL),(986,675,35,294,389,NULL),(987,676,36,288,351,NULL),(988,676,36,336,387,NULL),(989,677,36,288,350,NULL),(990,677,36,336,341,NULL),(991,678,36,391,370,NULL),(992,678,36,315,393,NULL),(993,679,36,391,372,NULL),(994,679,36,315,403,NULL),(995,680,36,299,351,NULL),(996,681,36,299,350,NULL),(997,682,36,359,370,NULL),(998,682,35,293,431,NULL),(999,683,36,359,372,NULL),(1000,683,35,293,374,NULL),(1001,684,36,293,430,NULL),(1002,685,36,293,351,NULL),(1003,686,33,293,430,NULL),(1004,687,33,293,351,NULL),(1005,688,33,293,387,NULL),(1006,689,33,293,341,NULL),(1007,690,36,332,370,NULL),(1008,690,35,281,427,NULL),(1009,691,36,332,372,NULL),(1010,691,35,281,423,NULL),(1011,692,33,301,366,NULL),(1012,693,33,301,364,NULL),(1013,694,35,293,431,NULL),(1014,695,35,293,374,NULL),(1015,696,36,336,341,NULL),(1016,696,36,301,387,NULL),(1017,697,36,336,351,NULL),(1018,697,36,301,341,NULL),(1019,698,36,291,387,NULL),(1020,699,36,291,387,NULL),(1021,700,35,336,389,NULL),(1022,701,35,336,374,NULL),(1023,702,33,290,430,NULL),(1024,703,33,290,351,NULL),(1025,704,36,299,387,NULL),(1026,705,36,299,341,NULL),(1027,706,35,305,408,NULL),(1028,707,35,305,435,NULL),(1029,708,35,305,436,NULL),(1030,709,35,305,437,NULL),(1031,710,33,281,358,NULL),(1032,711,33,281,344,NULL),(1033,712,33,281,387,NULL),(1034,713,33,281,341,NULL),(1035,714,36,359,355,NULL),(1036,715,36,359,420,NULL),(1037,716,36,393,370,NULL),(1038,716,36,282,387,NULL),(1039,717,36,393,372,NULL),(1040,717,36,282,341,NULL),(1041,718,36,359,370,NULL),(1042,719,36,359,372,NULL),(1043,720,36,299,387,NULL),(1044,721,36,299,341,NULL),(1045,722,35,281,431,NULL),(1046,723,35,281,374,NULL),(1047,724,35,338,389,NULL),(1048,724,36,299,341,NULL),(1049,725,35,338,374,NULL),(1050,725,36,299,351,NULL),(1051,726,36,279,387,NULL),(1052,726,36,291,387,NULL),(1053,727,36,279,341,NULL),(1054,727,36,291,341,NULL),(1055,728,36,341,430,NULL),(1056,729,36,341,351,NULL),(1057,730,33,281,387,NULL),(1058,731,33,281,341,NULL),(1059,732,33,291,366,NULL),(1060,733,33,291,380,NULL),(1061,734,36,291,341,NULL),(1062,734,35,318,389,NULL),(1063,735,36,291,351,NULL),(1064,735,35,318,374,NULL),(1065,736,33,374,438,NULL),(1066,737,33,374,372,NULL),(1067,738,33,281,358,NULL),(1068,739,33,281,344,NULL),(1069,740,36,393,370,NULL),(1070,740,36,332,370,NULL),(1071,740,36,281,358,NULL),(1072,741,36,393,372,NULL),(1073,741,36,332,372,NULL),(1074,741,36,281,344,NULL),(1075,742,36,281,351,NULL),(1076,743,36,281,350,NULL),(1077,744,35,334,409,NULL),(1078,744,35,323,409,NULL),(1079,744,36,335,341,NULL),(1080,744,36,304,341,NULL),(1081,745,35,334,426,NULL),(1082,745,35,323,426,NULL),(1083,745,36,335,351,NULL),(1084,745,36,304,351,NULL),(1085,746,36,291,341,NULL),(1086,746,35,362,389,NULL),(1087,747,36,291,351,NULL),(1088,747,35,362,374,NULL),(1089,748,35,291,374,NULL),(1090,749,35,291,371,NULL),(1091,750,35,341,423,NULL),(1092,750,36,291,341,NULL),(1093,751,35,341,389,NULL),(1094,751,36,291,351,NULL),(1095,752,35,280,428,NULL),(1096,753,35,280,409,NULL),(1097,754,35,341,423,NULL),(1098,755,35,341,389,NULL),(1099,756,35,319,377,NULL),(1100,756,35,280,389,NULL),(1101,757,35,319,424,NULL),(1102,757,35,280,374,NULL),(1103,758,36,279,387,NULL),(1104,758,36,336,387,NULL),(1105,759,36,279,341,NULL),(1106,759,36,336,341,NULL),(1107,760,35,336,423,NULL),(1108,760,36,341,351,NULL),(1109,761,35,336,389,NULL),(1110,761,36,341,350,NULL),(1111,762,36,384,370,NULL),(1112,762,36,359,370,NULL),(1113,762,36,281,358,NULL),(1114,763,36,384,372,NULL),(1115,763,36,359,372,NULL),(1116,763,36,281,344,NULL),(1117,764,35,291,374,NULL),(1118,765,35,291,371,NULL),(1119,766,35,279,389,NULL),(1120,766,35,281,389,NULL),(1121,766,36,773,375,NULL),(1122,767,35,279,374,NULL),(1123,767,35,281,374,NULL),(1124,767,36,773,442,NULL),(1125,768,35,291,389,NULL),(1126,768,35,281,389,NULL),(1127,768,36,773,375,NULL),(1128,769,35,291,374,NULL),(1129,769,35,281,374,NULL),(1130,769,36,773,442,NULL),(1131,770,35,280,389,NULL),(1132,770,35,293,389,NULL),(1133,770,33,341,350,NULL),(1134,770,33,308,350,NULL),(1135,771,35,280,374,NULL),(1136,771,35,293,374,NULL),(1137,771,33,341,380,NULL),(1138,771,33,308,380,NULL),(1139,772,35,392,389,NULL),(1140,772,35,308,371,NULL),(1141,773,35,392,374,NULL),(1142,773,35,308,368,NULL),(1143,774,35,318,389,NULL),(1144,774,35,307,389,NULL),(1145,774,36,279,341,NULL),(1146,775,35,318,374,NULL),(1147,775,35,307,374,NULL),(1148,775,36,279,351,NULL),(1149,776,35,380,371,NULL),(1150,776,36,299,341,NULL),(1151,777,35,380,368,NULL),(1152,777,36,299,351,NULL),(1153,778,35,280,378,NULL),(1154,778,35,293,378,NULL),(1155,778,35,282,378,NULL),(1156,778,36,313,370,NULL),(1157,779,35,280,389,NULL),(1158,779,35,293,389,NULL),(1159,779,35,282,389,NULL),(1160,779,36,313,372,NULL),(1161,780,35,280,374,NULL),(1162,780,35,392,374,NULL),(1163,780,35,380,374,NULL),(1164,781,35,280,371,NULL),(1165,781,35,392,371,NULL),(1166,781,35,380,371,NULL),(1167,782,36,279,341,NULL),(1168,782,36,291,341,NULL),(1169,782,36,299,341,NULL),(1170,783,36,279,351,NULL),(1171,783,36,291,351,NULL),(1172,783,36,299,351,NULL),(1173,784,36,392,370,NULL),(1174,785,36,392,372,NULL),(1175,786,33,279,351,NULL),(1176,786,33,282,351,NULL),(1177,786,35,392,378,NULL),(1178,786,35,392,378,NULL),(1179,787,33,279,350,NULL),(1180,787,33,282,350,NULL),(1181,787,35,392,389,NULL),(1182,787,35,392,389,NULL),(1183,788,33,279,387,NULL),(1184,788,33,291,387,NULL),(1185,788,33,280,387,NULL),(1186,788,33,293,387,NULL),(1187,788,35,392,378,NULL),(1188,789,33,279,341,NULL),(1189,789,33,291,341,NULL),(1190,789,33,280,341,NULL),(1191,789,33,293,341,NULL),(1192,789,35,392,378,NULL),(1193,790,36,279,387,NULL),(1194,790,36,291,387,NULL),(1195,790,36,282,387,NULL),(1196,790,36,290,387,NULL),(1197,790,36,359,370,NULL),(1198,791,36,279,341,NULL),(1199,791,36,291,341,NULL),(1200,791,36,282,341,NULL),(1201,791,36,290,341,NULL),(1202,791,36,359,372,NULL),(1203,792,36,281,387,NULL),(1204,792,36,282,387,NULL),(1205,792,36,290,387,NULL),(1206,792,35,364,378,NULL),(1207,793,36,281,341,NULL),(1208,793,36,282,341,NULL),(1209,793,36,290,341,NULL),(1210,793,35,364,378,NULL),(1211,794,36,392,341,NULL),(1212,794,36,392,341,NULL),(1213,794,36,318,341,NULL),(1214,795,36,392,351,NULL),(1215,795,36,392,351,NULL),(1216,795,36,318,351,NULL),(1217,796,36,299,351,NULL),(1218,796,36,329,387,NULL),(1219,796,36,341,387,NULL),(1220,797,36,299,350,NULL),(1221,797,36,329,341,NULL),(1222,797,36,341,341,NULL),(1223,798,36,291,351,NULL),(1224,798,36,304,341,NULL),(1225,798,36,354,341,NULL),(1226,799,36,291,350,NULL),(1227,799,36,304,351,NULL),(1228,799,36,354,351,NULL),(1229,800,35,280,378,NULL),(1230,800,35,293,378,NULL),(1231,801,35,280,389,NULL),(1232,801,35,293,389,NULL),(1233,802,36,318,341,NULL),(1234,802,36,334,341,NULL),(1235,802,36,338,341,NULL),(1236,802,36,296,341,NULL),(1237,802,36,292,341,NULL),(1238,802,36,307,341,NULL),(1239,802,36,323,341,NULL),(1240,802,36,308,341,NULL),(1241,803,36,318,351,NULL),(1242,803,36,334,351,NULL),(1243,803,36,338,351,NULL),(1244,803,36,296,351,NULL),(1245,803,36,292,351,NULL),(1246,803,36,307,351,NULL),(1247,803,36,323,351,NULL),(1248,803,36,308,351,NULL),(1249,804,36,335,387,NULL),(1250,804,36,354,387,NULL),(1251,804,36,308,393,NULL),(1252,804,36,341,393,NULL),(1253,805,36,335,341,NULL),(1254,805,36,354,341,NULL),(1255,805,36,308,387,NULL),(1256,805,36,341,387,NULL),(1257,806,36,279,341,NULL),(1258,806,35,334,389,NULL),(1259,806,35,292,389,NULL),(1260,807,36,279,351,NULL),(1261,807,35,334,374,NULL),(1262,807,35,292,374,NULL),(1263,808,36,279,341,NULL),(1264,808,36,291,341,NULL),(1265,808,35,281,378,NULL),(1266,808,35,282,378,NULL),(1267,808,35,290,378,NULL),(1268,809,36,279,351,NULL),(1269,809,36,291,351,NULL),(1270,809,35,281,389,NULL),(1271,809,35,282,389,NULL),(1272,809,35,290,389,NULL),(1273,810,36,291,341,NULL),(1274,810,35,334,389,NULL),(1275,811,36,291,351,NULL),(1276,811,35,334,374,NULL),(1277,812,33,282,387,NULL),(1278,812,33,290,387,NULL),(1279,812,33,280,387,NULL),(1280,812,33,293,387,NULL),(1281,812,36,392,378,NULL),(1282,813,33,282,341,NULL),(1283,813,33,290,341,NULL),(1284,813,33,280,341,NULL),(1285,813,33,293,341,NULL),(1286,813,36,392,378,NULL),(1287,814,35,279,389,NULL),(1288,814,35,291,389,NULL),(1289,814,35,341,389,NULL),(1290,814,35,329,389,NULL),(1291,815,35,279,374,NULL),(1292,815,35,291,374,NULL),(1293,815,35,341,374,NULL),(1294,815,35,329,374,NULL),(1295,816,36,335,387,NULL),(1296,816,36,380,387,NULL),(1297,817,36,335,341,NULL),(1298,817,36,380,341,NULL),(1299,818,35,392,374,NULL),(1300,818,35,293,374,NULL),(1301,818,33,392,387,NULL),(1302,819,35,392,371,NULL),(1303,819,35,293,371,NULL),(1304,819,33,392,341,NULL),(1305,820,33,281,358,NULL),(1306,821,33,281,344,NULL),(1307,822,35,305,378,NULL),(1308,823,35,305,378,NULL),(1309,824,36,291,341,NULL),(1310,824,35,392,371,NULL),(1311,824,35,380,371,NULL),(1312,825,36,291,351,NULL),(1313,825,35,392,347,NULL),(1314,825,35,380,347,NULL),(1315,826,33,283,370,NULL),(1316,826,33,279,351,NULL),(1317,826,33,281,351,NULL),(1318,826,33,282,351,NULL),(1319,826,33,290,351,NULL),(1320,827,33,283,372,NULL),(1321,827,33,279,350,NULL),(1322,827,33,281,350,NULL),(1323,827,33,282,350,NULL),(1324,827,33,290,350,NULL),(1325,828,35,319,375,NULL),(1326,829,35,319,375,NULL),(1327,830,35,281,378,NULL),(1328,831,35,281,374,NULL),(1329,832,36,279,387,NULL),(1330,832,36,291,387,NULL),(1331,833,36,279,341,NULL),(1332,833,36,291,341,NULL),(1333,834,36,359,370,NULL),(1334,834,35,293,378,NULL),(1335,835,36,359,372,NULL),(1336,835,35,293,374,NULL),(1337,836,36,313,370,NULL),(1338,836,36,280,387,NULL),(1339,837,36,313,372,NULL),(1340,837,36,280,341,NULL),(1341,838,35,319,377,NULL),(1342,838,35,293,378,NULL),(1343,839,35,319,378,NULL),(1344,839,35,293,389,NULL),(1345,840,33,283,349,NULL),(1346,841,33,283,355,NULL),(1347,842,36,336,387,NULL),(1348,842,36,301,387,NULL),(1349,842,36,341,387,NULL),(1350,842,33,284,443,NULL),(1351,843,36,336,341,NULL),(1352,843,36,301,341,NULL),(1353,843,36,341,341,NULL),(1354,843,33,284,444,NULL);
/*!40000 ALTER TABLE `assistskilleffects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-07 23:53:05
