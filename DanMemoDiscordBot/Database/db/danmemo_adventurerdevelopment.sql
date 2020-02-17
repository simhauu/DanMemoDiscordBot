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
-- Table structure for table `adventurerdevelopment`
--

DROP TABLE IF EXISTS `adventurerdevelopment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adventurerdevelopment` (
  `adventurerdevelopmentid` int NOT NULL AUTO_INCREMENT,
  `adventurerid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `attributeid` int NOT NULL,
  `modifierid` int NOT NULL,
  PRIMARY KEY (`adventurerdevelopmentid`,`modifierid`),
  KEY `attributeid_idx` (`attributeid`),
  KEY `modifierid_idx` (`modifierid`),
  KEY `adventurerid3_idx` (`adventurerid`),
  CONSTRAINT `adventurerid3` FOREIGN KEY (`adventurerid`) REFERENCES `adventurer` (`adventurerid`) ON DELETE CASCADE,
  CONSTRAINT `attributeid3` FOREIGN KEY (`attributeid`) REFERENCES `attribute` (`attributeid`),
  CONSTRAINT `modifierid3` FOREIGN KEY (`modifierid`) REFERENCES `modifier` (`modifierid`)
) ENGINE=InnoDB AUTO_INCREMENT=3108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adventurerdevelopment`
--

LOCK TABLES `adventurerdevelopment` WRITE;
/*!40000 ALTER TABLE `adventurerdevelopment` DISABLE KEYS */;
INSERT INTO `adventurerdevelopment` VALUES (2219,440,'Crush?: I',279,344),(2220,440,'Tough?: I',281,344),(2221,440,'Acceleration?: I',282,344),(2222,440,'Status Resist?: I',283,341),(2223,440,'Spirit Healing?: I',284,345),(2224,441,'Enlightenment: I',291,350),(2225,441,'Train: I',281,341),(2226,441,'Train: I',290,341),(2227,441,'Earth Resistance: I',296,350),(2228,441,'Defense: I',280,341),(2229,441,'Status Resist: I',283,351),(2230,442,'Placeholder: I',290,341),(2231,442,'PlaceholderTwo: I',282,341),(2232,443,'Saboteur: I',290,344),(2233,443,'Hunter: G',282,344),(2234,443,'Tough: I',281,344),(2235,443,'Sword Fighter: I',279,344),(2236,443,'Status Resist: I',283,351),(2237,444,'Saboteur?: G',290,344),(2238,444,'Hunter?: G',282,358),(2239,444,'Tough?: I',281,359),(2240,444,'Sword Fighter?: I',279,360),(2241,444,'Healing Power?: I',299,345),(2242,445,'Enlightenment: I',291,351),(2243,445,'Piercing Strike: I',302,341),(2244,445,'Wind Resistance: I',292,364),(2245,445,'Rigid: I',281,341),(2246,445,'Rigid: I',290,341),(2247,445,'Rigid: I',282,341),(2248,445,'Status Resist: I',283,351),(2249,446,'Sword Fighter: I',279,351),(2250,446,'Strike: I',306,341),(2251,446,'Light Resistance: I',307,364),(2252,446,'Concentrate: I',282,351),(2253,446,'Concentrate: I',290,351),(2254,446,'Tough: I',281,351),(2255,447,'Saboteur: I',290,344),(2256,447,'Hunter: G',282,344),(2257,447,'Tough: I',281,344),(2258,447,'Sword Fighter: I',279,344),(2259,447,'Status Resist: I',283,351),(2260,448,'Wisdom: I',309,341),(2261,448,'Magic Resistance: I',293,341),(2262,448,'Swordsman: I',279,355),(2263,448,'Status Resist: G',283,351),(2264,448,'Spirit Healing: I',284,345),(2265,449,'Insect Killer',311,356),(2266,449,'Tough: I',281,341),(2267,449,'Swift: I',279,341),(2268,449,'Swift: I',282,341),(2269,449,'Status Resist: G',283,351),(2270,449,'Spirit Healing: I',284,345),(2271,450,'Sword Fighter: I',279,351),(2272,450,'Rigid: I',281,341),(2273,450,'Rigid: I',282,341),(2274,450,'Rigid: I',290,341),(2275,450,'Spirit Healing: I',284,359),(2276,450,'Status Resist: I',283,351),(2277,450,'Poison Resist: S',313,372),(2278,451,'Hunter: G',282,341),(2279,451,'Tough: I',281,341),(2280,451,'Swordsman: I',279,344),(2281,451,'Status Resist: G',283,351),(2282,451,'Crush: I',279,344),(2283,452,'Sword Fighter: I',279,351),(2284,452,'Strike: I',306,341),(2285,452,'Earth Resistance: I',296,364),(2286,452,'Rigid: I',281,341),(2287,452,'Rigid: I',282,341),(2288,452,'Rigid: I',290,341),(2289,452,'Status Resist: I',283,351),(2290,453,'Enlightenment: I',291,376),(2291,453,'Climb: I',281,341),(2292,453,'Climb: I',282,341),(2293,453,'Beast Killer',317,356),(2294,453,'Strike: I',306,341),(2295,453,'Fire Resistance: I',318,350),(2296,454,'Wisdom: I',309,341),(2297,454,'Magic Resistance: I',293,341),(2298,454,'Spirit Healing: I',284,359),(2299,454,'Status Resist: I',283,351),(2300,454,'Spirit Killer',321,356),(2301,455,'Wisdom: I',309,341),(2302,455,'Protection: I',280,341),(2303,455,'Protection: I',293,341),(2304,455,'Enlightenment: I',291,381),(2305,455,'Status Resist: G',283,351),(2306,455,'Spirit Healing: I',284,345),(2307,456,'Crush: I',279,351),(2308,456,'Strike: I',306,350),(2309,456,'Light Resistance: I',307,364),(2310,456,'Rigid: I',281,341),(2311,456,'Rigid: I',282,341),(2312,456,'Rigid: I',290,341),(2313,456,'Status Resist: I',283,351),(2314,457,'Sword Fighter: I',279,351),(2315,457,'Strike: I',306,341),(2316,457,'Fire Resistance: I',318,364),(2317,457,'Rigid: I',281,341),(2318,457,'Rigid: I',282,341),(2319,457,'Rigid: I',290,341),(2320,457,'Status Resist: I',283,351),(2321,458,'Enlightenment: I',291,351),(2322,458,'Piercing Strike: I',302,350),(2323,458,'Dark Resistance: I',327,364),(2324,458,'Rigid: I',281,341),(2325,458,'Rigid: I',282,341),(2326,458,'Rigid: I',290,341),(2327,458,'Material Killer',328,356),(2328,459,'Hunter: G',282,384),(2329,459,'Tough: I',281,384),(2330,459,'Swordsman: I',279,384),(2331,459,'Status Resist: G',283,341),(2332,459,'Spirit Healing: I',284,345),(2333,460,'Mage: I',291,359),(2334,460,'Tough: I',281,344),(2335,460,'Enlightenment: I',291,387),(2336,460,'Insane Speed: I',282,341),(2337,460,'Status Resist: I',283,341),(2338,461,'Mind\'s Eye: I',291,351),(2339,461,'Strike: I',306,341),(2340,461,'Fire Resistance: I',318,364),(2341,461,'Rigid: I',281,341),(2342,461,'Rigid: I',282,341),(2343,461,'Rigid: I',290,341),(2344,461,'Status Resist: I',283,351),(2345,462,'Crush: I',279,351),(2346,462,'Strike: I',306,341),(2347,462,'Fire Resistance: I',318,364),(2348,462,'Light Resistance: I',281,341),(2349,462,'Light Resistance: I',282,341),(2350,462,'Light Resistance: I',290,341),(2351,462,'Status Resist: I',283,351),(2352,463,'Protection: I',280,341),(2353,463,'Protection: I',293,341),(2354,463,'Solid: I',308,380),(2355,463,'Thunder Resistance: I',338,364),(2356,463,'Rigid: I',281,341),(2357,463,'Rigid: I',282,341),(2358,463,'Rigid: I',290,341),(2359,463,'Crush: I',279,351),(2360,464,'Nimble: I',279,341),(2361,464,'Nimble: I',282,341),(2362,464,'Magic Resistance: I',293,387),(2363,464,'Status Resist: I',283,351),(2364,464,'Defense: I',280,387),(2365,464,'Tough: I',281,341),(2366,465,'Mind\'s Eye: I',291,351),(2367,465,'Piercing Strike: I',302,350),(2368,465,'Thunder Resistance: I',338,364),(2369,465,'Rigid: I',281,341),(2370,465,'Rigid: I',282,341),(2371,465,'Rigid: I',290,341),(2372,465,'Status Resist: I',283,351),(2373,466,'Saboteur: I',290,341),(2374,466,'Acceleration: I',282,341),(2375,466,'Tough: I',281,341),(2376,466,'Crush: I',279,341),(2377,466,'Status Resist: I',283,351),(2378,467,'Hunter: G',282,351),(2379,467,'Strike: I',306,341),(2380,467,'Dark Resistance: I',323,364),(2381,467,'Battle Arts: G',279,350),(2382,467,'Battle Arts: G',290,350),(2383,467,'Insect Killer',311,356),(2384,468,'Placeholder: I',290,341),(2385,468,'PlaceholderTwo: I',282,341),(2386,469,'Acceleration: I',282,341),(2387,469,'Unbreakable: I',281,341),(2388,469,'Defense: I',280,341),(2389,469,'Magic Resistance: I',293,341),(2390,469,'Status Resist: I',283,351),(2391,470,'Placeholder: I',290,341),(2392,470,'PlaceholderTwo: I',282,341),(2393,471,'Mystery: ?',290,341),(2394,471,'Tough: I',281,341),(2395,471,'Tough: I',282,341),(2396,471,'Fire Resistance: I',318,350),(2397,471,'Courageous: I',279,351),(2398,471,'Status Resist: I',283,351),(2399,472,'Wisdom: I',309,341),(2400,472,'Defense: I',280,341),(2401,472,'Enlightenment: I',291,355),(2402,472,'Magic Resistance: I',293,341),(2403,472,'Status Resist: I',283,351),(2404,473,'Mystery: ?',290,351),(2405,473,'Solid: I',308,380),(2406,473,'Water Resistance: I',334,364),(2407,473,'Nimble: I',279,350),(2408,473,'Nimble: I',282,350),(2409,473,'Insect Killer',311,356),(2410,474,'Placeholder: I',290,341),(2411,474,'PlaceholderTwo: I',282,341),(2412,475,'Placeholder: I',290,341),(2413,475,'PlaceholderTwo: I',282,341),(2414,476,'Liaris Freese',348,378),(2415,476,'Liaris Freese',349,378),(2416,476,'Solid: I',308,380),(2417,476,'Wind Resistance: I',292,364),(2418,476,'Enlightenment: I',291,344),(2419,476,'Luck: I',309,341),(2420,477,'Liaris Freese',348,378),(2421,477,'Liaris Freese',349,378),(2422,477,'Acceleration: I',282,393),(2423,477,'Tough: I',281,393),(2424,477,'Crush: I',279,393),(2425,477,'Luck: I',309,344),(2426,478,'Liaris Freese',348,378),(2427,478,'Liaris Freese',349,378),(2428,478,'Wind Resistance: I',292,350),(2429,478,'Status Resist: I',283,351),(2430,478,'Enlightenment: I',291,356),(2431,478,'Luck: I',309,376),(2432,479,'Liaris Freese',348,378),(2433,479,'Liaris Freese',349,378),(2434,479,'Courageous: I',279,344),(2435,479,'Healing Power: I',299,359),(2436,479,'Status Resist: I',283,351),(2437,479,'Luck: I',309,341),(2438,480,'Placeholder: I',290,341),(2439,480,'PlaceholderTwo: I',282,341),(2440,481,'Placeholder: I',290,341),(2441,481,'PlaceholderTwo: I',282,341),(2442,482,'Liaris Freese',348,378),(2443,482,'Liaris Freese',349,378),(2444,482,'Courageous: I',279,341),(2445,482,'Dark Resistance: I',323,364),(2446,482,'Ox Slayer',350,372),(2447,482,'Luck: I',309,341),(2448,483,'Liaris Freese',348,378),(2449,483,'Liaris Freese',349,378),(2450,483,'Strike: I',306,341),(2451,483,'Earth Resistance: I',296,364),(2452,483,'Enlightenment: I',291,344),(2453,483,'Luck: I',309,341),(2454,484,'Liaris Freese',348,378),(2455,484,'Liaris Freese',349,378),(2456,484,'Acceleration: I',282,344),(2457,484,'Tough: I',281,344),(2458,484,'Crush: I',279,344),(2459,484,'Luck: I',309,358),(2460,485,'Liaris Freese',348,378),(2461,485,'Liaris Freese',349,378),(2462,485,'Climb: I',281,393),(2463,485,'Climb: I',282,393),(2464,485,'Status Resist: I',283,351),(2465,485,'Enlightenment: I',291,344),(2466,485,'Luck: I',309,344),(2467,486,'Saboteur?: I',290,344),(2468,486,'Acceleration?: I',282,358),(2469,486,'Tough?: I',281,359),(2470,486,'Crush?: I',279,360),(2471,486,'Enlightenment?: I',291,345),(2472,487,'Crush?: I',279,344),(2473,487,'Enlightenment?: I',291,344),(2474,487,'Tough?: I',281,344),(2475,487,'Acceleration?: I',282,344),(2476,487,'Saboteur?: I',290,344),(2477,488,'Insane Speed: I',282,344),(2478,488,'Fist Strike: G',279,341),(2479,488,'Magic Resistance: G',293,341),(2480,488,'Tough: I',281,344),(2481,488,'Hunter: G',279,341),(2482,489,'Fist Strike: G',279,351),(2483,489,'Counter-attack: I',352,356),(2484,489,'Wind Resistance: I',292,364),(2485,489,'Rigid: I',281,341),(2486,489,'Rigid: I',282,341),(2487,489,'Rigid: I',290,341),(2488,489,'Status Resist: I',283,351),(2489,490,'Beast Killer',317,356),(2490,490,'Insane Speed: I',282,341),(2491,490,'Fist Strike: G',279,341),(2492,490,'Magic Resistance: G',293,341),(2493,490,'Tough: I',281,344),(2494,491,'Placeholder: I',290,341),(2495,491,'PlaceholderTwo: I',282,341),(2496,492,'Placeholder: I',290,341),(2497,492,'PlaceholderTwo: I',282,341),(2498,493,'Placeholder: I',290,341),(2499,493,'PlaceholderTwo: I',282,341),(2500,494,'Climb: I',281,341),(2501,494,'Climb: I',282,341),(2502,494,'Protection: I',280,387),(2503,494,'Protection: I',293,387),(2504,494,'Status Resist: I',283,351),(2505,494,'Light Resistance: I',307,350),(2506,494,'Sword Fighter: I',279,381),(2507,495,'Enlightenment: I',291,351),(2508,495,'Piercing Strike: I',302,350),(2509,495,'Thunder Resistance: I',338,364),(2510,495,'Rigid: I',281,341),(2511,495,'Rigid: I',282,341),(2512,495,'Rigid: I',290,341),(2513,495,'Status Resist: I',283,351),(2514,496,'Crush: I',355,351),(2515,496,'Piercing Strike: I',302,341),(2516,496,'Thunder Resistance: I',338,366),(2517,496,'Rigid: I',281,341),(2518,496,'Rigid: I',282,341),(2519,496,'Rigid: I',290,341),(2520,496,'Status Resist: I',283,351),(2521,497,'Sword Fighter: I',279,351),(2522,497,'Strike: I',306,341),(2523,497,'Earth Resistance: I',296,366),(2524,497,'Rigid: I',281,341),(2525,497,'Rigid: I',282,341),(2526,497,'Rigid: I',290,341),(2527,497,'Status Resist: I',283,351),(2528,498,'Mage: I',291,384),(2529,498,'Enlightenment: I',291,384),(2530,498,'Status Resist: I',283,351),(2531,498,'Magic Resistance: I',293,387),(2532,498,'Defense: I',280,387),(2533,499,'Mage: H',291,351),(2534,499,'Strike: I',306,341),(2535,499,'Earth Resistance: I',296,364),(2536,499,'Crafter: I',290,351),(2537,499,'Climb: I',281,351),(2538,499,'Climb: I',282,351),(2539,500,'Crafter: I',290,341),(2540,500,'Insane Speed: I',282,341),(2541,500,'Unbreakable: I',281,341),(2542,500,'Mage: H',291,341),(2543,500,'Status Resist: I',283,351),(2544,501,'Placeholder: I',290,341),(2545,501,'PlaceholderTwo: I',282,341),(2546,502,'Placeholder: I',290,341),(2547,502,'PlaceholderTwo: I',282,341),(2548,503,'Placeholder: I',290,341),(2549,503,'PlaceholderTwo: I',282,341),(2550,504,'Aching Thumb',290,341),(2551,504,'Acceleration: I',282,341),(2552,504,'Unbreakable: I',281,341),(2553,504,'Crush: I',279,341),(2554,504,'Status Resist: I',283,351),(2555,505,'Placeholder: I',290,341),(2556,505,'PlaceholderTwo: I',282,341),(2557,506,'Swordsman: I',279,344),(2558,506,'Aching Thumb: I',290,341),(2559,506,'Crush: I',279,344),(2560,506,'Hunter: I',282,344),(2561,506,'Spirit Healing: G',284,344),(2562,507,'Swordsman: I',279,344),(2563,507,'Aching Thumb',290,341),(2564,507,'Crush: I',279,344),(2565,507,'Hunter: I',282,344),(2566,507,'Acceleration: I',282,344),(2567,508,'Crush',279,351),(2568,508,'Strike: I',306,341),(2569,508,'Dark Resistance: I',323,366),(2570,508,'Rigid: I',281,341),(2571,508,'Rigid: I',290,341),(2572,508,'Rigid: I',282,341),(2573,508,'Status Resist: I',283,351),(2574,509,'Placeholder: I',290,341),(2575,509,'PlaceholderTwo: I',282,341),(2576,510,'Fist Strike: E',279,341),(2577,510,'Strong Defense: H',281,358),(2578,510,'Magic Resistance: H',293,387),(2579,510,'Status Resist: I',283,351),(2580,510,'Healing Power: I',299,345),(2581,511,'Placeholder: I',290,341),(2582,511,'PlaceholderTwo: I',282,341),(2583,512,'Crafter: I',290,341),(2584,512,'Acceleration: I',282,341),(2585,512,'Unbreakable: I',281,341),(2586,512,'Crush: I',279,341),(2587,512,'Status Resist: I',283,351),(2588,513,'Abnomal Resistance: ?',283,341),(2589,513,'Tough: I',281,358),(2590,513,'Mind\'s Eye: I',291,384),(2591,513,'Saboteur: I',290,384),(2592,513,'Unbreakable: I',281,358),(2593,514,'Enlightenment: I',291,341),(2594,514,'Defense: I',280,341),(2595,514,'Magic Resistance: I',293,341),(2596,514,'Unbreakable: I',281,341),(2597,514,'Abnormal Resistance: ?',283,351),(2598,515,'Courageous: I',279,350),(2599,515,'Train: I',281,341),(2600,515,'Train: I',290,341),(2601,515,'Thunder Resistance: I',338,350),(2602,515,'Magic Resistance: I',293,341),(2603,515,'Abnormal Resist: ?',283,351),(2604,516,'Abnormal Resistance: ?',283,351),(2605,516,'Tough: I',281,344),(2606,516,'Mind\'s Eye: I',291,341),(2607,516,'Hunter: I',282,341),(2608,516,'Unbreakable: I',281,344),(2609,517,'Placeholder: I',290,341),(2610,517,'PlaceholderTwo: I',282,341),(2611,518,'Placeholder: I',290,341),(2612,518,'PlaceholderTwo: I',282,341),(2613,519,'Placeholder: I',290,341),(2614,519,'PlaceholderTwo: I',282,341),(2615,520,'Saboteur: I',290,341),(2616,520,'Courageous: I',279,341),(2617,520,'Insane Speed: I',282,341),(2618,520,'Healing Power: I',299,359),(2619,520,'Status Resist: I',283,351),(2620,521,'Saboteur: I',290,341),(2621,521,'Acceleration: I',282,341),(2622,521,'Unbreakable: I',281,341),(2623,521,'Crush: I',279,341),(2624,521,'Status Resist: I',283,351),(2625,522,'Saboteur: I',290,387),(2626,522,'Acceleration: I',282,387),(2627,522,'Unbreakable: I',281,387),(2628,522,'Crush: I',279,387),(2629,522,'Status Resist: I',281,341),(2630,523,'First Bullet',282,364),(2631,523,'Piercing Strike: I',302,341),(2632,523,'Light Resistance: I',307,364),(2633,523,'Crush:I ',279,341),(2634,523,'Spirit Killer',321,356),(2635,524,'Rouse: I',291,341),(2636,524,'Rouse: I',281,341),(2637,524,'Status Resist: I',283,351),(2638,524,'Defense: I',280,341),(2639,524,'Magic Resistance: I',293,341),(2640,524,'Instinct: I',282,341),(2641,524,'Instinct: I',290,341),(2642,525,'Wisdom: I',309,341),(2643,525,'Magic Resistance: I',293,341),(2644,525,'Spirit Healing: I',284,359),(2645,525,'Status Resist: I',283,351),(2646,525,'Spirit Killer',321,356),(2647,526,'Material Killer',328,356),(2648,526,'Mage: H',291,403),(2649,526,'Status Resist: I',283,351),(2650,526,'Chef: I',290,341),(2651,526,'Unbreakable: I',281,341),(2652,527,'Placeholder: I',290,341),(2653,527,'PlaceholderTwo: I',282,341),(2654,528,'Placeholder: I',290,341),(2655,528,'PlaceholderTwo: I',282,341),(2656,529,'Mage: H',291,380),(2657,529,'Defense: I',280,341),(2658,529,'Status Resist: I',283,351),(2659,529,'Unbreakable: I',281,404),(2660,529,'Fire Resistance: I',318,350),(2661,530,'Saboteur?: I',290,344),(2662,530,'Insane Speed?: I',282,358),(2663,530,'Unbreakable?: I',281,359),(2664,530,'Mage?: H',291,360),(2665,530,'Spirit Healing?: G',284,345),(2666,531,'Mage: H',291,351),(2667,531,'Strike: I',306,341),(2668,531,'Fire Resistance: I',318,366),(2669,531,'Chef: I',290,351),(2670,531,'Insane Speed: I',282,351),(2671,532,'Mage: H',291,351),(2672,532,'Train: I',281,341),(2673,532,'Train: I',363,341),(2674,532,'Acceleration: I',282,341),(2675,532,'Healing Power: I',299,359),(2676,532,'Status Resist: I',283,351),(2677,533,'Mage: H',291,351),(2678,533,'Piercing Strike: I',302,341),(2679,533,'Dark Resistance: I',323,364),(2680,533,'Rigid: I',281,341),(2681,533,'Rigid: I',290,341),(2682,533,'Rigid: I',282,341),(2683,533,'Status Resist: I',283,351),(2684,534,'Mage?: I',291,344),(2685,534,'Saboteur?: I',290,344),(2686,534,'Acceleration?: I',282,344),(2687,534,'Status Resist?: I',283,341),(2688,534,'Tough?: I',281,344),(2689,535,'Mage: H',291,351),(2690,535,'Strike: I',306,350),(2691,535,'Fire Resistance: I',318,364),(2692,535,'Rigid: I',281,341),(2693,535,'Rigid: I',282,341),(2694,535,'Rigid: I',290,341),(2695,535,'Status Resist: I',283,351),(2696,536,'Mage: H',291,351),(2697,536,'Strike: I',306,341),(2698,536,'Light Resistance: I',307,364),(2699,536,'Rigid: I',281,341),(2700,536,'Rigid: I',282,341),(2701,536,'Rigid: I',290,341),(2702,536,'Status Resist: I',283,351),(2703,537,'Battle Arts: I',279,351),(2704,537,'Battle Arts: I',282,351),(2705,537,'Battle Arts: I',290,351),(2706,537,'Strike: I',306,350),(2707,537,'Light Resistance: I',307,364),(2708,537,'Giant Killer: I',365,356),(2709,537,'Status Resist: I',283,351),(2710,538,'Placeholder: I',290,341),(2711,538,'PlaceholderTwo: I',282,341),(2712,539,'Enlightenment: I',291,358),(2713,539,'Tough: I',281,384),(2714,539,'Beast Killer',317,356),(2715,539,'Status Resist: I',283,351),(2716,539,'Mind\'s Eye: I',291,358),(2717,540,'Enlightenment: I',291,410),(2718,540,'Crafter: I',290,341),(2719,540,'Acceleration: I',282,341),(2720,540,'Status Resist: I',283,351),(2721,540,'Tough: I',281,410),(2722,541,'Courageous: I',279,351),(2723,541,'Strike: I',306,350),(2724,541,'Water Resistance: I',334,364),(2725,541,'Concentrate: I',282,351),(2726,541,'Concentrate: I',290,351),(2727,541,'Worm Killer',367,356),(2728,542,'Enlightenment: I',291,351),(2729,542,'Piercing Strike: I',302,341),(2730,542,'Thunder Resistance: I',338,350),(2731,542,'Rigid: I',281,341),(2732,542,'Rigid: I',282,341),(2733,542,'Rigid: I',290,341),(2734,542,'Status Resist: I',283,351),(2735,543,'Saboteur?: I',290,344),(2736,543,'Acceleration?: I',282,358),(2737,543,'Tough?: I',281,359),(2738,543,'Mage?: H',291,360),(2739,543,'Spirit Healing?: G',284,345),(2740,544,'Placeholder: I',290,341),(2741,544,'PlaceholderTwo: I',282,341),(2742,545,'Forestall: I',291,351),(2743,545,'Forestall: I',282,351),(2744,545,'Strike: I',306,341),(2745,545,'Fire Resistance: I',318,364),(2746,545,'Rigid: I',281,341),(2747,545,'Rigid: I',282,341),(2748,545,'Rigid: I',290,341),(2749,545,'Plant Killer',371,356),(2750,546,'Crafter: I',290,341),(2751,546,'Acceleration: I',282,341),(2752,546,'Unbreakable: I',281,341),(2753,546,'Enlightenment: I',291,341),(2754,546,'Status Resist: I',283,351),(2755,547,'Enlightenment?: I',291,344),(2756,547,'Saboteur?: I',290,344),(2757,547,'Acceleration?: I',282,344),(2758,547,'Status Resist?: I',283,341),(2759,547,'Tough?: I',281,344),(2760,548,'Spirit Healing: G',284,345),(2761,548,'Enlightenment: I',291,341),(2762,548,'Tough: I',281,410),(2763,548,'Acceleration: I',282,341),(2764,548,'Status Resist: I',283,351),(2765,549,'Mind\'s Eye: I',291,351),(2766,549,'Strike: I',306,341),(2767,549,'Fire Resistance: I',318,364),(2768,549,'Rigid: I',281,341),(2769,549,'Rigid: I',282,341),(2770,549,'Rigid: I',290,341),(2771,549,'Status Resist: I',283,351),(2772,550,'Placeholder: I',290,341),(2773,550,'PlaceholderTwo: I',282,341),(2774,551,'Enlightenment: I',291,341),(2775,551,'Strike: I',306,341),(2776,551,'Instinct: I',282,341),(2777,551,'Instinct: I',290,341),(2778,551,'Status Resist: I',283,351),(2779,551,'Light Resistance: I',307,350),(2780,552,'Enlightenment: I',291,376),(2781,552,'Instinct: I',282,341),(2782,552,'Instinct: I',290,341),(2783,552,'Defense: I',280,341),(2784,552,'Status Resist: I',283,351),(2785,552,'Magic Resistance: I',293,341),(2786,553,'Encouragement: I',373,378),(2787,553,'Solid: I',308,380),(2788,553,'Wind Resistance: I',292,364),(2789,553,'Forestall: I',291,341),(2790,553,'Forestall: I',282,341),(2791,553,'Status Resist: I',283,351),(2792,554,'Enlightenment: I',291,350),(2793,554,'Preseverance: I',281,351),(2794,554,'Preseverance: I',290,351),(2795,554,'Dark Resistance: I',323,364),(2796,554,'Insane Speed: I',282,341),(2797,554,'Status Resist: I',283,351),(2798,555,'Crush: I',279,351),(2799,555,'Strike: I',306,341),(2800,555,'Light Resistance: I',307,364),(2801,555,'Rigid: I',281,341),(2802,555,'Rigid: I',282,341),(2803,555,'Rigid: I',363,341),(2804,555,'Status Resist: I',283,351),(2805,556,'Placeholder: I',290,341),(2806,556,'PlaceholderTwo: I',282,341),(2807,557,'Battle Arts: I',279,351),(2808,557,'Battle Arts: I',290,351),(2809,557,'Strike: I',306,350),(2810,557,'Light Resistance: I',307,364),(2811,557,'Giant Killer: I',365,356),(2812,557,'Status Resist: I',283,351),(2813,558,'Defense: I',280,387),(2814,558,'Insane Speed: I',282,412),(2815,558,'Indomitable: I',281,384),(2816,558,'Status Resist: I',283,341),(2817,558,'Swordsman: I',279,384),(2818,559,'Acceleration: I',282,341),(2819,559,'Unbreakable: I',281,341),(2820,559,'Defense: I',280,341),(2821,559,'Magic Resistance: I',293,341),(2822,559,'Status Resist: I',283,351),(2823,560,'Enlightenment: I',291,351),(2824,560,'Piercing Strike: I',302,350),(2825,560,'Dark Resistance: I',323,364),(2826,560,'Rigid: I',281,351),(2827,560,'Rigid: I',282,351),(2828,560,'Rigid: I',290,351),(2829,560,'Spirit Killer',321,356),(2830,561,'Magic Resistance: I',293,387),(2831,561,'Defense: I',280,387),(2832,561,'Status Resist: I',283,351),(2833,561,'Swordsman: I',279,341),(2834,561,'Tough: I',281,341),(2835,562,'Resilience: I',376,378),(2836,562,'Coutner-attack: I',352,356),(2837,562,'Water Resistance: I',334,364),(2838,562,'Battle Arts: I',279,366),(2839,562,'Battle Arts: I',282,366),(2840,562,'Insect Killer',311,356),(2841,563,'Saboteur: I',290,341),(2842,563,'Acceleration: I',282,341),(2843,563,'Tough: I',281,341),(2844,563,'Swordsman: I',279,341),(2845,563,'Status Resist: I',283,351),(2846,564,'Crafter: I',290,341),(2847,564,'Acceleration: I',282,341),(2848,564,'Unbreakable: I',281,341),(2849,564,'Mind\'s Eye: I',291,341),(2850,564,'Status Resist: I',283,351),(2851,565,'Placeholder: I',290,341),(2852,565,'PlaceholderTwo: I',282,341),(2853,566,'Mind\'s Eye: I',291,351),(2854,566,'Solid: I',308,380),(2855,566,'Water Resistance: I',334,364),(2856,566,'Rigid: I',281,341),(2857,566,'Rigid: I',282,341),(2858,566,'Rigid: I',290,341),(2859,566,'Status Resist: I',283,351),(2860,567,'Placeholder: I',290,341),(2861,567,'PlaceholderTwo: I',282,341),(2862,568,'Mage: D',291,350),(2863,568,'Strike: I',306,341),(2864,568,'Fire Resistance: I',318,364),(2865,568,'Dragon Killer',379,356),(2866,568,'Climb: I',282,351),(2867,568,'Climb: I',290,351),(2868,569,'Placeholder: I',290,341),(2869,569,'PlaceholderTwo: I',282,341),(2870,570,'Acceleration: I',290,341),(2871,570,'Unbreakable: I',281,341),(2872,570,'Defense: I',280,341),(2873,570,'Magic Resistance: I',293,341),(2874,570,'Status Resist: I',283,351),(2875,571,'Placeholder: I',290,341),(2876,571,'PlaceholderTwo: I',282,341),(2877,572,'Magic Resistance: I',293,341),(2878,572,'Status Resist: G',283,351),(2879,572,'Mage: D',291,376),(2880,572,'Healing Power: D',299,345),(2881,572,'Spirit Healing: G',284,345),(2882,573,'Magic Resistance: I',293,387),(2883,573,'Insane Speed: I',282,358),(2884,573,'Mind\'s Eye: I',291,387),(2885,573,'Hunter: G',282,358),(2886,573,'Status Resist: G',283,341),(2887,574,'Magic Resistance: I',293,341),(2888,574,'Purpose: I',291,341),(2889,574,'Purpose: I',281,341),(2890,574,'Defense: I',280,341),(2891,574,'Concentrate: I',282,341),(2892,574,'Concentrate: I',290,341),(2893,574,'Status Resist: G',283,351),(2894,575,'Mind\'s Eye: I',291,341),(2895,575,'Unbreakable: I',281,341),(2896,575,'Concentrate: I',282,341),(2897,575,'Concentrate: I',290,341),(2898,575,'Protection: I',280,341),(2899,575,'Protection: I',293,341),(2900,575,'Status Resist: I',283,351),(2901,576,'Placeholder: I',290,341),(2902,576,'PlaceholderTwo: I',282,341),(2903,577,'Enlightenment: I',291,351),(2904,577,'Strike: I',306,341),(2905,577,'Earth Resistance: I',296,364),(2906,577,'Rigid: I',281,341),(2907,577,'Rigid: I',282,341),(2908,577,'Rigid: I',290,341),(2909,577,'Status Resist: I',283,351),(2910,578,'Mind\'s Eye: I',291,376),(2911,578,'Climb: I',281,341),(2912,578,'Climb: I',282,341),(2913,578,'Defense',280,341),(2914,578,'Strike: I',306,341),(2915,578,'Fire Resistance: I',318,350),(2916,579,'Crush: I',279,351),(2917,579,'Strike: I',306,350),(2918,579,'Earth Resistance: I',296,364),(2919,579,'Dragon Killer',379,356),(2920,579,'Rigid: I',281,351),(2921,579,'Rigid: I',282,351),(2922,579,'Rigid: I',290,351),(2923,580,'Battle Arts: I',279,351),(2924,580,'Battle Arts: I',290,351),(2925,580,'Piercing Strike: I',302,341),(2926,580,'Thunder Resistance: I',338,364),(2927,580,'Hunter: G',282,351),(2928,580,'Material Killer',328,356),(2929,581,'Transcendence: I',382,378),(2930,581,'Solid: I',308,380),(2931,581,'Dark Resistance: I',323,364),(2932,581,'Concentrate: I',279,351),(2933,581,'Concentrate: I',282,351),(2934,581,'Concentrate: I',290,351),(2935,581,'Protection: I',280,341),(2936,581,'Protection: I',293,341),(2937,582,'Magic Resistance: I',293,341),(2938,582,'Light Resistance: I',307,350),(2939,582,'Strike: I',306,341),(2940,582,'Vision: I',291,341),(2941,582,'Vision: I',282,341),(2942,582,'Status Resist: G',283,351),(2943,583,'Crafter: I',290,387),(2944,583,'Insane Speed: I',282,387),(2945,583,'Unbreakable: I',281,387),(2946,583,'Fist Strike: I',279,387),(2947,583,'Spirit Healing: I',284,345),(2948,584,'Train: I',281,341),(2949,584,'Train: I',290,341),(2950,584,'Solid: I',308,380),(2951,584,'Water Resistance: I',334,364),(2952,584,'Climb: I',281,341),(2953,584,'Climb: I',282,341),(2954,584,'Status Resist: I',283,351),(2955,585,'Fist Strike: I',279,341),(2956,585,'Protection: I',280,341),(2957,585,'Protection: I',293,341),(2958,585,'Unbreakable: I',281,341),(2959,585,'Leap: I',282,341),(2960,585,'Status Resist: I',283,351),(2961,586,'Saboteur: I',290,341),(2962,586,'Acceleration: I',282,341),(2963,586,'Unbreakable: I',281,341),(2964,586,'Swordsman: I',279,341),(2965,586,'Status Resist: I',283,351),(2966,587,'Crush: I',279,351),(2967,587,'Solid: I',308,380),(2968,587,'Water Resistance: I',334,364),(2969,587,'Rigid: I',281,341),(2970,587,'Rigid: I',282,341),(2971,587,'Rigid: I',385,341),(2972,587,'Status Resist: G',283,351),(2973,588,'Placeholder: I',290,341),(2974,588,'PlaceholderTwo: I',282,341),(2975,589,'Blessing: I',386,378),(2976,589,'Solid: I',308,380),(2977,589,'Water Resistance: I',334,364),(2978,589,'Concentrate: I',282,341),(2979,589,'Concentrate: I',290,341),(2980,589,'Crush: I',279,351),(2981,590,'Hunter: I',282,341),(2982,590,'Indomitable: I',281,341),(2983,590,'Courageous: I',279,358),(2984,590,'Fist Strike: G',279,358),(2985,590,'Crush: G',279,358),(2986,591,'Placeholder: I',290,341),(2987,591,'PlaceholderTwo: I',282,341),(2988,592,'Vigor: I',279,341),(2989,592,'Vigor: I',281,341),(2990,592,'Swift: I',279,341),(2991,592,'Swift: I',282,341),(2992,592,'Protection: I',280,341),(2993,592,'Protection: I',387,341),(2994,592,'Insect Killer',311,356),(2995,592,'Status Resist: H',283,351),(2996,593,'Hunter: I',282,341),(2997,593,'Indomitable: I',281,341),(2998,593,'Courageous: I',279,344),(2999,593,'Crush: I',279,344),(3000,593,'Status Resist: H',283,351),(3001,594,'Placeholder: I',290,341),(3002,594,'PlaceholderTwo: I',282,341),(3003,588,'Placeholder: I',290,341),(3004,588,'PlaceholderTwo: I',282,341),(3005,595,'Crush: I',279,351),(3006,595,'Piercing Strike: I',302,350),(3007,595,'Dark Resistance: I',323,364),(3008,595,'Rigid: I',281,341),(3009,595,'Rigid: I',290,341),(3010,595,'Rigid: I',282,341),(3011,595,'Beast Killer',317,356),(3012,596,'Fist Strike: G',279,351),(3013,596,'Solid: I',308,380),(3014,596,'Water Resistance: I',334,364),(3015,596,'Rigid: I',281,341),(3016,596,'Rigid: I',282,341),(3017,596,'Rigid: I',385,341),(3018,596,'Status Resist: G',283,351),(3019,597,'Placeholder: I',290,341),(3020,597,'PlaceholderTwo: I',282,341),(3021,598,'First Strike: G',279,350),(3022,598,'Strike: I',306,341),(3023,598,'Fire Resistance: I',318,364),(3024,598,'Rigid: I',281,341),(3025,598,'Rigid: I',282,341),(3026,598,'Rigid: I',290,341),(3027,598,'Plant Killer',371,356),(3028,599,'Placeholder: I',290,341),(3029,599,'PlaceholderTwo: I',282,341),(3030,600,'First Strike: I',279,366),(3031,600,'Status Resist: H',283,351),(3032,600,'Climb: I',281,341),(3033,600,'Climb: I',282,341),(3034,600,'Protection: I',280,341),(3035,600,'Protection: I',387,341),(3036,600,'Healing Power: I',299,345),(3037,601,'First Strike: I',279,341),(3038,601,'Status Resist: H',282,341),(3039,601,'Insane Speed: I',282,341),(3040,601,'Tough: I',281,341),(3041,601,'Healing Power: I',299,345),(3042,602,'Sword Fighter: I',279,351),(3043,602,'Piercing Strike: I',302,341),(3044,602,'Dark Resistance: I',323,364),(3045,602,'Rigid: I',281,351),(3046,602,'Rigid: I',282,351),(3047,602,'Rigid: I',290,351),(3048,602,'Status Resist: I',283,351),(3049,603,'Tough: I',281,344),(3050,603,'Crush: I',279,384),(3051,603,'Defense: I',280,387),(3052,603,'Status Resist: I',283,351),(3053,603,'Giant Killer',365,356),(3054,604,'Tough: I',281,341),(3055,604,'Defense: I',280,341),(3056,604,'Status Resist: I',283,351),(3057,604,'Battle Arts: I',279,387),(3058,604,'Battle Arts: I',290,387),(3059,604,'Dragon Killer',379,356),(3060,605,'Placeholder: I',290,341),(3061,605,'PlaceholderTwo: I',282,341),(3062,606,'Placeholder: I',290,341),(3063,606,'PlaceholderTwo: I',282,341),(3064,607,'Placeholder: I',290,341),(3065,607,'PlaceholderTwo: I',282,341),(3066,608,'Forestall: I',291,350),(3067,608,'Forestall: I',282,350),(3068,608,'Solid: I',308,380),(3069,608,'Wind Resistance: I',292,364),(3070,608,'Spirit Healing: G',284,408),(3071,608,'Worm Killer',367,356),(3072,609,'Placeholder: I',290,341),(3073,609,'PlaceholderTwo: I',282,341),(3074,610,'Mind\'s Eye: I',291,351),(3075,610,'Piercing Strike: I',302,341),(3076,610,'Thunder Resistance: I',338,366),(3077,610,'Rigid: I',281,341),(3078,610,'Rigid: I',282,341),(3079,610,'Rigid: I',290,341),(3080,610,'Status Resist: I',283,351),(3081,611,'Placeholder: I',290,341),(3082,611,'PlaceholderTwo: I',282,341),(3083,612,'Status Resist: I',283,351),(3084,612,'Crafter: I',290,341),(3085,612,'Tough: I',281,410),(3086,612,'Swordsman: I',279,341),(3087,612,'Indomitable: I',281,410),(3088,613,'Status Resist: I',283,341),(3089,613,'Crafter: I',290,384),(3090,613,'Tough: I',281,419),(3091,613,'Sword Fighter: I',279,384),(3092,613,'Indomitable: I',281,419),(3093,614,'Abnormal Resistance: ?',283,351),(3094,614,'Tough: I',281,410),(3095,614,'Mind\'s Eye: I',291,404),(3096,614,'Unbreakable: I',281,410),(3097,614,'Giant Killer',365,356),(3098,615,'Status Resist: I',283,351),(3099,615,'Train: I',290,341),(3100,615,'Train: I',281,341),(3101,615,'Strike: I',306,341),(3102,615,'Sword Fighter: I',279,370),(3103,615,'Earth Resistance: I',296,350),(3104,616,'Placeholder: I',290,341),(3105,616,'PlaceholderTwo: I',282,341),(3106,617,'Placeholder: I',290,341),(3107,617,'PlaceholderTwo: I',282,341);
/*!40000 ALTER TABLE `adventurerdevelopment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 19:45:27
