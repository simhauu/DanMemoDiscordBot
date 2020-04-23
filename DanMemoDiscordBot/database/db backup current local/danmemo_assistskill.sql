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
-- Table structure for table `assistskill`
--

DROP TABLE IF EXISTS `assistskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assistskill` (
  `assistskillid` int NOT NULL AUTO_INCREMENT,
  `assistid` int NOT NULL,
  `skillname` varchar(200) NOT NULL,
  PRIMARY KEY (`assistskillid`),
  KEY `assistid1_idx` (`assistid`),
  CONSTRAINT `assistid1` FOREIGN KEY (`assistid`) REFERENCES `assist` (`assistid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2906 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistskill`
--

LOCK TABLES `assistskill` WRITE;
/*!40000 ALTER TABLE `assistskill` DISABLE KEYS */;
INSERT INTO `assistskill` VALUES (2576,884,'Lucky Tour+ \n'),(2577,884,'Lucky Tour++ \n'),(2578,885,'Scholar Mind Trick+'),(2579,885,'Scholar Mind Trick++'),(2580,886,'Cat\'s Aid+'),(2581,886,'Cat\'s Aid++'),(2582,887,'By Instinct+'),(2583,887,'By Instinct++'),(2584,888,'Cheerful Support+'),(2585,888,'Cheerful Support++'),(2586,889,'Wrought Iron+ \n'),(2587,889,'Wrought Iron++ \n'),(2588,890,'Neighbor\'s Recipe+ \n'),(2589,890,'Neighbor\'s Recipe++ \n'),(2590,891,'Special Dress+ \n'),(2591,891,'Special Dress++ \n'),(2592,892,'End of the Queue+ \n'),(2593,892,'End of the Queue++ \n'),(2594,893,'Smooth Talk+ \n'),(2595,893,'Smooth Talk++ \n'),(2596,894,'Trickster\'s Skills+ \n'),(2597,894,'Smooth Talk++ \n'),(2598,895,'Wicked Temptation+ \n'),(2599,895,'Wicked Temptation++ \n'),(2600,896,'Eastern Beauty+ \n'),(2601,896,'Eastern Beauty++ \n'),(2602,897,'Queen\'s Nightgown+ \n'),(2603,897,'Queen\'s Nightgown++ \n'),(2604,898,'Outbreak+'),(2605,898,'Outbreak++'),(2606,899,'Chocolate is War+ \n'),(2607,899,'Chocolate is War++ \n'),(2608,900,'Drilling Wind+ \n'),(2609,900,'Drilling Wind++ \n'),(2610,901,'Thunder Steel+ \n'),(2611,901,'Thunder Steel+ \n'),(2612,902,'Welcome+ \n'),(2613,902,'Welcome++ \n'),(2614,903,'Happiness Fever+ \n'),(2615,903,'Happiness Fever++ \n'),(2616,904,'Head-Turner+ \n'),(2617,904,'Head-Turner+ \n'),(2618,905,'Witch of Ruin+ \n'),(2619,905,'Witch of Ruin+ \n'),(2620,906,'Goddess Prayer+ \n'),(2621,906,'Goddess Prayer++ \n'),(2622,907,'Vow of sacrifice+ \n'),(2623,907,'Vow of sacrifice++ \n'),(2624,908,'Date with Bell+ \n'),(2625,908,'Date with Bell++ \n'),(2626,909,'Killer\'s Trickery+'),(2627,909,'Killer\'s Trickery++'),(2628,910,'Black Cat Inspection+'),(2629,910,'Black Cat Inspection++'),(2630,911,'Harvest Swimsuit+ \n'),(2631,911,'Harvest Swimsuit++ \n'),(2632,912,'Sleight of Hand+ \n'),(2633,912,'Sleight of Hand++ \n'),(2634,913,'Sweet Frustration+ \n'),(2635,913,'Sweet Frustration++ \n'),(2636,914,'Cyan Drop+ \n'),(2637,914,'Cyan Drop++ \n'),(2638,915,'Mastery Lightning+ \n'),(2639,915,'Mastery Lightning++ \n'),(2640,916,'With A Secret Map+ \n'),(2641,916,'With A Secret Map++ \n'),(2642,917,'Harvest\'s Grace+'),(2643,917,'Harvest\'s Grace++'),(2644,918,'Mother Bounty+'),(2645,918,'Mother Bounty++'),(2646,919,'Helping Renard+ \n'),(2647,919,'Helping Renard+ \n'),(2648,920,'Grace of Cups+'),(2649,920,'Grace of Cups++'),(2650,921,'Sweet Smile+'),(2651,921,'Sweet Smile++'),(2652,922,'Yearly Revival+ \n'),(2653,922,'Yearly Revival++ \n'),(2654,923,'Rise and Shine+ \n'),(2655,923,'Rise and Shine++ \n'),(2656,924,'Longing Gaze+ \n'),(2657,924,'Longing Gaze++ \n'),(2658,925,'Drinks of Orario+ \n'),(2659,925,'Drinks of Orario++ \n'),(2660,926,'Crimson Court+ \n'),(2661,926,'Crimson Court++ \n'),(2662,927,'Guild\'s Advice+'),(2663,927,'Guild\'s Advice++'),(2664,928,'Elven Investigation+'),(2665,928,'Elven Investigation++'),(2666,929,'Advice+'),(2667,929,'Advice++'),(2668,930,'Theory Library+'),(2669,930,'Theory Library++'),(2670,931,'Ceremonial Sensation+ \n'),(2671,931,'Ceremonial Sensation++ \n'),(2672,932,'Velvet Dress+ \n'),(2673,932,'Velvet Dress++ \n'),(2674,933,'Small Devotion+ \n'),(2675,933,'Small Devotion++ \n'),(2676,934,'Cutie Canon+ \n'),(2677,934,'Cutie Canon++ \n'),(2678,935,'It\'s Alright Now+ \n'),(2679,935,'It\'s Alright Now++ \n'),(2680,936,'Pose of Diligence+ \n'),(2681,936,'Pose of Diligence++ \n'),(2682,937,'Sparkling Smile+ \n'),(2683,937,'Sparkling Smile++ \n'),(2684,938,'Tale Continues+ \n'),(2685,938,'Tale Continues++ \n'),(2686,939,'Mad Love+'),(2687,939,'Mad Love++'),(2688,940,'In the Shadows+'),(2689,940,'In the Shadows++'),(2690,941,'Rampant Compassion+'),(2691,941,'Rampant Compassion++'),(2692,942,'Naming Gown+ \n'),(2693,942,'Naming Gown++ \n'),(2694,943,'I am Ganesha!+'),(2695,943,'I am Ganesha!++'),(2696,944,'Cry of a God+'),(2697,944,'Cry of a God++'),(2698,945,'Grand Order+'),(2699,945,'Grand Order++'),(2700,946,'Ghost\'s Guidance+ \n'),(2701,946,'Ghost\'s Guidance++ \n'),(2702,947,'Self-Wrap+ \n'),(2703,947,'Self-Wrap++ \n'),(2704,948,'Happiness Fever+ \n'),(2705,948,'Happiness Fever++ \n'),(2706,949,'Power of Light+ \n'),(2707,949,'Power of Light++ \n'),(2708,950,'Giant\'s Prayer+ \n'),(2709,950,'Giant\'s Prayer++ \n'),(2710,951,'Attack! Forward!+ \n'),(2711,951,'Attack! Forward!++ \n'),(2712,952,'Winding Intoxication+ \n'),(2713,952,'Winding Intoxication++ \n'),(2714,953,'Cunning Advice+'),(2715,953,'Cunning Advice++'),(2716,954,'Smith God\'s Eye+'),(2717,954,'Smith God\'s Eye++'),(2718,955,'Gentle Gaze+ \n'),(2719,955,'Gentle Gaze++ \n'),(2720,956,'Chocolate Advice+ \n'),(2721,956,'Chocolate Advice++ \n'),(2722,957,'Melody of Steel+'),(2723,957,'Melody of Steel++'),(2724,958,'Forge God\'s Refine+'),(2725,958,'Forge God\'s Refine++'),(2726,959,'Steel Guard+'),(2727,959,'Steel Guard++'),(2728,960,'Secret Intuition+'),(2729,960,'Secret Intuition++'),(2730,961,'Travel God\'s Grace+'),(2731,961,'Travel God\'s Grace++'),(2732,962,'All-Stars+ \n'),(2733,962,'All-Stars++ \n'),(2734,963,'Labyrinth Journal+'),(2735,963,'Labyrinth Journal++'),(2736,964,'Flame of Hope+'),(2737,964,'Flame of Hope++'),(2738,965,'Uncontrollable God+'),(2739,965,'Uncontrollable God++'),(2740,966,'Dazzling Wish+'),(2741,966,'Dazzling Wish++'),(2742,967,'Aid of Divine Fire+'),(2743,967,'Aid of Divine Fire++'),(2744,968,'Maiden\'s Protection+'),(2745,968,'Maiden\'s Protection++'),(2746,969,'My Heart to You+'),(2747,969,'My Heart to You++'),(2748,970,'Candy-Coated+'),(2749,970,'Candy-Coated++'),(2750,971,'Promised Road Home+ \n'),(2751,971,'Promised Road Home++ \n'),(2752,972,'Blessing Carols+ \n'),(2753,972,'Blessing Carols+ \n'),(2754,973,'Misfortune Teller+ \n'),(2755,973,'Misfortune Teller++ \n'),(2756,974,'Holy Bowstring+ \n'),(2757,974,'Holy Bowstring++ \n'),(2758,975,'God\'s Present+ \n'),(2759,975,'God\'s Present++ \n'),(2760,976,'Goddess Aura+ \n'),(2761,976,'Goddess Aura++ \n'),(2762,977,'Secrets of Trading+ \n'),(2763,977,'Secrets of Trading++ \n'),(2764,978,'My name is Alf!+ \n'),(2765,978,'My name is Alf!++ \n'),(2766,979,'Help of Child God+ \n'),(2767,979,'Help of Child God++ \n'),(2768,980,'Outbreak+ \n'),(2769,980,'Outbreak++ \n'),(2770,981,'Tonight, we feast!+'),(2771,981,'Tonight, we feast!++'),(2772,982,'Jester\'s Policy+'),(2773,982,'Jester\'s Policy++'),(2774,983,'Say What?!+'),(2775,983,'Say What?!++'),(2776,984,'The Masked Grin+'),(2777,984,'The Masked Grin++'),(2778,985,'Cleaning Skills+'),(2779,985,'Cleaning Skills++'),(2780,986,'Service Skills+'),(2781,986,'Service Skills++'),(2782,987,'Maharaja\'s Rule+ \n'),(2783,987,'Maharaja\'s Rule++ \n'),(2784,988,'God\'s Medicine+'),(2785,988,'God\'s Medicine++'),(2786,989,'Medi-God\'s Grace+'),(2787,989,'Medi-God\'s Grace++'),(2788,990,'Secret Potion+'),(2789,990,'Secret Potion++'),(2790,991,'Fertility\'s Cheer+'),(2791,991,'Fertility\'s Cheer++'),(2792,992,'Straighten Up!+'),(2793,992,'Straighten Up!++'),(2794,993,'Summer Flag+ \n'),(2795,993,'Summer Flag++ \n'),(2796,994,'Song of Honor+ \n'),(2797,994,'Song of Honor++ \n'),(2798,995,'Critical Hint+'),(2799,995,'Critical Hint++'),(2800,996,'Rumor Hunter+'),(2801,996,'Rumor Hunter++'),(2802,997,'Eternal Agape+ \n'),(2803,997,'Eternal Agape++ \n'),(2804,998,'Mummy Guidance+ \n'),(2805,998,'Mummy Guidance++ \n'),(2806,999,'Child of the MediGod+'),(2807,999,'Child of the MediGod++'),(2808,1000,'New Year Circle+ \n'),(2809,1000,'New Year Circle++ \n'),(2810,1001,'Year Plan+ \n'),(2811,1001,'Year Plan++ \n'),(2812,1002,'Nomadic Poetry+ \n'),(2813,1002,'Nomadic Poetry++ \n'),(2814,1003,'Just for Fun+ \n'),(2815,1003,'Just for Fun++ \n'),(2816,1004,'Onsen Prayer+ \n'),(2817,1004,'Onsen Prayer++ \n'),(2818,1005,'Edas Dance+ \n'),(2819,1005,'Edas Dance++ \n'),(2820,1006,'Old Times+ \n'),(2821,1006,'Old Times++ \n'),(2822,1007,'Onsen Effect+ \n'),(2823,1007,'Onsen Effect++ \n'),(2824,1008,'Hilarious Service+ \n'),(2825,1008,'Hilarious Service++ \n'),(2826,1009,'Elemental Aura+ \n'),(2827,1009,'Elemental Aura++ \n'),(2828,1010,'Top Producer+ \n'),(2829,1010,'Top Producer++ \n'),(2830,1011,'Heavy Promise+ \n'),(2831,1011,'Heavy Promise++ \n'),(2832,1012,'Innocent Blessing+ \n'),(2833,1012,'Innocent Blessing++ \n'),(2834,1013,'Beauty Worship+ \n'),(2835,1013,'Beauty Worship++ \n'),(2836,1014,'Phantom Beast?+ \n'),(2837,1014,'Phantom Beast?++ \n'),(2838,1015,'Chivalry\'s Lesson+'),(2839,1015,'Chivalry\'s Lesson++'),(2840,1016,'Holy Drop+ \n'),(2841,1016,'Holy Drop++ \n'),(2842,1017,'Mysterious Bonfire+ \n'),(2843,1017,'Mysterious Bonfire++ \n'),(2844,1018,'Bouncing Blessing+ \n'),(2845,1018,'Bouncing Blessing++ \n'),(2846,1019,'Great Vision+ \n'),(2847,1019,'Great Vision++ \n'),(2848,1020,'Until the Sunrise+ \n'),(2849,1020,'Until the Sunrise++ \n'),(2850,1021,'Black Cat Inspection+ \n'),(2851,1021,'Black Cat Inspection++ \n'),(2852,1022,'Up Up Down Down Arcanum+ \n'),(2853,1022,'Up Up Down Down Arcanum+ \n'),(2854,1023,'Happy Vacation+ \n'),(2855,1023,'Happy Vacation++ \n'),(2856,1024,'Summer Holiday!+ \n'),(2857,1024,'Summer Holiday!++ \n'),(2858,1025,'Devilish Spur+ \n'),(2859,1025,'Devilish Spur++ \n'),(2860,1026,'Swimsuit Competition+ \n'),(2861,1026,'Swimsuit Competition++ \n'),(2862,1027,'Hearty Lunch Box+'),(2863,1027,'Hearty Lunch Box++'),(2864,1028,'Heartful Smile+'),(2865,1028,'Heartful Smile++'),(2866,1029,'Chocomint Fertility+'),(2867,1029,'Chocomint Fertility++'),(2868,1030,'Fertility\'s Gift+'),(2869,1030,'Fertility\'s Gift++'),(2870,1031,'Snow Gift+'),(2871,1031,'Snow Gift++'),(2872,1032,'War God\'s Grace+'),(2873,1032,'War God\'s Grace++'),(2874,1033,'War Rampage+'),(2875,1033,'War Rampage++'),(2876,1034,'Cruel Beauty+ \n'),(2877,1034,'Cruel Beauty++ \n'),(2878,1035,'Amusing Agitation+ \n'),(2879,1035,'Amusing Agitation++ \n'),(2880,1036,'Angelic Fertility+ \n'),(2881,1036,'Angelic Fertility++ \n'),(2882,1037,'Titan Roar+ \n'),(2883,1037,'Titan Roar++ \n'),(2884,1038,'Regina Coeli+ \n'),(2885,1038,'Regina Coeli++ \n'),(2886,1039,'Sanctuary Prayer+ \n'),(2887,1039,'Sanctuary Prayer++ \n'),(2888,1040,'Thank Me, Peasants!+ \n'),(2889,1040,'Thank Me, Peasants!++ \n'),(2890,1041,'Elitist+ \n'),(2891,1041,'Elitist++ \n'),(2892,1042,'Day of Dream+ \n'),(2893,1042,'Day of Dream++ \n'),(2894,1043,'Nurse\'s Healing+ \n'),(2895,1043,'Nurse\'s Healing++ \n'),(2896,1044,'My time, finally!+ \n'),(2897,1044,'My time, finally!++ \n'),(2898,1045,'Snow in Hand+ \n'),(2899,1045,'Snow in Hand++ \n'),(2900,1046,'Chick March+ \n'),(2901,1046,'Chick March++ \n'),(2902,1047,'Child Blacksmith\'s Crafting+ \n'),(2903,1047,'Child Blacksmith\'s Crafting++ \n'),(2904,1048,'Enchanting Gaze+ \n'),(2905,1048,'Enchanting Gaze++ \n');
/*!40000 ALTER TABLE `assistskill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 14:11:10
