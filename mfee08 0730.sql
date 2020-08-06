-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-30 15:28:09
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mfee08`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cartlist`
--

CREATE TABLE `cartlist` (
  `preOrder` int(100) NOT NULL,
  `memberId` int(20) NOT NULL,
  `preTripName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `preGuideId` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `preTripDate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `preTripTime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tripId` int(20) NOT NULL,
  `tripPeo` int(20) NOT NULL,
  `orderLan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tripPrice` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tripNeed` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `cartlist`
--

INSERT INTO `cartlist` (`preOrder`, `memberId`, `preTripName`, `preGuideId`, `preTripDate`, `preTripTime`, `tripId`, `tripPeo`, `orderLan`, `tripPrice`, `tripNeed`) VALUES
(1, 1, '霧峰林家花園', '王曉華', '2020/08/06', '0900-1200', 1, 8, '台語', '300', '1.因為有小孩子，希望能準備一些小孩子能夠吸收的資訊\r\n2.對於林家花園很有興趣，希望能有更多的解說');

-- --------------------------------------------------------

--
-- 資料表結構 `memberlist`
--

CREATE TABLE `memberlist` (
  `memberId` int(11) NOT NULL,
  `memberAccount` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `memberPassword` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `memberName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `memberTel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `memberEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `memberLike` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `memberPic` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `memberGuide` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `guideBest` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `guideSide` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `guideInfo` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `memberlist`
--

INSERT INTO `memberlist` (`memberId`, `memberAccount`, `memberPassword`, `memberName`, `memberTel`, `memberEmail`, `memberLike`, `memberPic`, `memberGuide`, `guideBest`, `guideSide`, `guideInfo`) VALUES
(1, 'abc1', 'abc1', '張曉明', '0912345678', '123@456789.321', '古蹟', 'guide1.jpg', 'V', '古蹟', '台中', '台灣小貴子導遊，在台灣東部從事旅遊工作，已超過十五年之久。小貴子也在2002年榮獲交通部公路總局頒發優良職業駕駛人，並在2010年考取台灣國家導遊證照。 　　台灣小貴子導遊，在台灣宜蘭花蓮台東墾丁旅遊包車，均始終如一，堅持要做就做最好的。用心經營在地旅遊，讓旅客能得到更好更專業的服務品質。'),
(2, 'abc2', 'abc2', '艾茂紋', '0912345679', '123@456789.322', '風景', 'guide2.jpg', 'V', '風景', '中部', '哈囉~大家好~我是Vincent 喜歡戶外大自然的我~可以讓大家看見完全與眾不同的汐止喔~讓汐止的刻板印象完全翻轉!!私房的秘境景點更讓人有流連忘返的回憶~來汐止記得要找我喔～!!'),
(3, 'abc3', 'abc3', '王昱宣', '0912345680', '123@456789.323', '藝術', 'guide3.jpg', 'V', '藝術', '南部', '我熱愛旅遊，喜歡解說，興趣是生態、歷史、地理與閩南客家建築。 我還喜歡登山與旅行，來找我的旅客我都把他們當成朋友~~ 喜歡認識更多的朋友！ 用心介紹旅遊過程是我的樂趣！我是愛說故事的人！來找我吧！'),
(4, 'abc4', 'abc4', '宋佩樺', '0912345681', '123@456789.324', '人文', 'guide4.jpg', 'V', '人文', '東部', '台灣小貴子導遊，在台灣東部從事旅遊工作，已超過十五年之久。小貴子也在2002年榮獲交通部公路總局頒發優良職業駕駛人，並在2011年考取台灣國家導遊證照。 　　台灣小貴子導遊，在台灣宜蘭花蓮台東墾丁旅遊包車，均始終如一，堅持要做就做最好的。用心經營在地旅遊，讓旅客能得到更好更專業的服務品質。'),
(5, 'abc5', 'abc5', '溫任中', '0912345682', '123@456789.325', '古蹟', 'guide5.jpg', 'V', '古蹟', '北部', '哈囉~大家好~我是Vincent 喜歡戶外大自然的我~可以讓大家看見完全與眾不同的汐止喔~讓汐止的刻板印象完全翻轉!!私房的秘境景點更讓人有流連忘返的回憶~來汐止記得要找我喔～!!'),
(6, 'abc6', 'abc6', '倪政宏', '0912345683', '123@456789.326', '風景', 'guide6.jpg', 'V', '風景', '中部', '我熱愛旅遊，喜歡解說，興趣是生態、歷史、地理與閩南客家建築。 我還喜歡登山與旅行，來找我的旅客我都把他們當成朋友~~ 喜歡認識更多的朋友！ 用心介紹旅遊過程是我的樂趣！我是愛說故事的人！來找我吧！'),
(7, 'abc7', 'abc7', '楊漢潔', '0912345684', '123@456789.327', '藝術', 'guide7.jpg', 'V', '藝術', '南部', '台灣小貴子導遊，在台灣東部從事旅遊工作，已超過十五年之久。小貴子也在2002年榮獲交通部公路總局頒發優良職業駕駛人，並在2012年考取台灣國家導遊證照。 　　台灣小貴子導遊，在台灣宜蘭花蓮台東墾丁旅遊包車，均始終如一，堅持要做就做最好的。用心經營在地旅遊，讓旅客能得到更好更專業的服務品質。'),
(8, 'abc8', 'abc8', '陳柏白', '0912345685', '123@456789.328', '人文', 'guide8.jpg', 'V', '人文', '東部', '哈囉~大家好~我是Vincent 喜歡戶外大自然的我~可以讓大家看見完全與眾不同的汐止喔~讓汐止的刻板印象完全翻轉!!私房的秘境景點更讓人有流連忘返的回憶~來汐止記得要找我喔～!!'),
(9, 'abc9', 'abc9', '蔡承蓁', '0912345686', '123@456789.329', '古蹟', 'guide9.jpg', 'V', '古蹟', '北部', '我熱愛旅遊，喜歡解說，興趣是生態、歷史、地理與閩南客家建築。 我還喜歡登山與旅行，來找我的旅客我都把他們當成朋友~~ 喜歡認識更多的朋友！ 用心介紹旅遊過程是我的樂趣！我是愛說故事的人！來找我吧！'),
(10, 'abc10', 'abc10', '呂嘉琴', '0912345687', '123@456789.330', '風景', 'guide10.jpg', 'V', '風景', '中部', '台灣小貴子導遊，在台灣東部從事旅遊工作，已超過十五年之久。小貴子也在2002年榮獲交通部公路總局頒發優良職業駕駛人，並在2013年考取台灣國家導遊證照。 　　台灣小貴子導遊，在台灣宜蘭花蓮台東墾丁旅遊包車，均始終如一，堅持要做就做最好的。用心經營在地旅遊，讓旅客能得到更好更專業的服務品質。'),
(11, 'abc11', 'abc11', '韓原玉', '0912345688', '123@456789.331', '藝術', 'guide11.jpg', 'V', '藝術', '南部', '哈囉~大家好~我是Vincent 喜歡戶外大自然的我~可以讓大家看見完全與眾不同的汐止喔~讓汐止的刻板印象完全翻轉!!私房的秘境景點更讓人有流連忘返的回憶~來汐止記得要找我喔～!!	'),
(12, 'abc12', 'abc12', '陳紀順', '0912345689', '123@456789.332', '人文', 'guide12.jpg', 'V', '人文', '東部', '我熱愛旅遊，喜歡解說，興趣是生態、歷史、地理與閩南客家建築。 我還喜歡登山與旅行，來找我的旅客我都把他們當成朋友~~ 喜歡認識更多的朋友！ 用心介紹旅遊過程是我的樂趣！我是愛說故事的人！來找我吧！'),
(13, 'abc13', 'abc13', '吳怡君', '0912345690', '123@456789.333', '古蹟', 'guide13.jpg', 'V', '古蹟', '北部', '台灣小貴子導遊，在台灣東部從事旅遊工作，已超過十五年之久。小貴子也在2002年榮獲交通部公路總局頒發優良職業駕駛人，並在2014年考取台灣國家導遊證照。 　　台灣小貴子導遊，在台灣宜蘭花蓮台東墾丁旅遊包車，均始終如一，堅持要做就做最好的。用心經營在地旅遊，讓旅客能得到更好更專業的服務品質。'),
(14, 'abc14', 'abc14', '李崇祥', '0912345691', '123@456789.334', '風景', 'guide14.jpg', 'V', '風景', '中部', '哈囉~大家好~我是Vincent 喜歡戶外大自然的我~可以讓大家看見完全與眾不同的汐止喔~讓汐止的刻板印象完全翻轉!!私房的秘境景點更讓人有流連忘返的回憶~來汐止記得要找我喔～!!	'),
(15, 'abc15', 'abc15', '林建意', '0912345692', '123@456789.335', '藝術', 'guide15.jpg', 'V', '藝術', '南部', '我熱愛旅遊，喜歡解說，興趣是生態、歷史、地理與閩南客家建築。 我還喜歡登山與旅行，來找我的旅客我都把他們當成朋友~~ 喜歡認識更多的朋友！ 用心介紹旅遊過程是我的樂趣！我是愛說故事的人！來找我吧！'),
(16, 'abc16', 'abc16', '劉千芬', '0912345693', '123@456789.336', '人文', 'guide16.jpg', 'V', '人文', '東部', '台灣小貴子導遊，在台灣東部從事旅遊工作，已超過十五年之久。小貴子也在2002年榮獲交通部公路總局頒發優良職業駕駛人，並在2015年考取台灣國家導遊證照。 　　台灣小貴子導遊，在台灣宜蘭花蓮台東墾丁旅遊包車，均始終如一，堅持要做就做最好的。用心經營在地旅遊，讓旅客能得到更好更專業的服務品質。'),
(17, 'abc17', 'abc17', '藍瑋嘉', '0912345694', '123@456789.337', '古蹟', 'guide17.jpg', 'V', '古蹟', '北部', '哈囉~大家好~我是Vincent 喜歡戶外大自然的我~可以讓大家看見完全與眾不同的汐止喔~讓汐止的刻板印象完全翻轉!!私房的秘境景點更讓人有流連忘返的回憶~來汐止記得要找我喔～!!	'),
(18, 'abc18', 'abc18', '李子傑', '0912345695', '123@456789.338', '風景', 'guide18.jpg', 'V', '風景', '中部', '我熱愛旅遊，喜歡解說，興趣是生態、歷史、地理與閩南客家建築。 我還喜歡登山與旅行，來找我的旅客我都把他們當成朋友~~ 喜歡認識更多的朋友！ 用心介紹旅遊過程是我的樂趣！我是愛說故事的人！來找我吧！'),
(19, 'abc19', 'abc19', '吳雅雯', '0912345696', '123@456789.339', '藝術', 'guide19.jpg', 'V', '藝術', '南部', '台灣小貴子導遊，在台灣東部從事旅遊工作，已超過十五年之久。小貴子也在2002年榮獲交通部公路總局頒發優良職業駕駛人，並在2016年考取台灣國家導遊證照。 　　台灣小貴子導遊，在台灣宜蘭花蓮台東墾丁旅遊包車，均始終如一，堅持要做就做最好的。用心經營在地旅遊，讓旅客能得到更好更專業的服務品質。'),
(20, 'abc20', 'abc20', '陳淑惠', '0912345697', '123@456789.340', '人文', 'guide20.jpg', 'V', '人文', '東部', '哈囉~大家好~我是Vincent 喜歡戶外大自然的我~可以讓大家看見完全與眾不同的汐止喔~讓汐止的刻板印象完全翻轉!!私房的秘境景點更讓人有流連忘返的回憶~來汐止記得要找我喔～!!');

-- --------------------------------------------------------

--
-- 資料表結構 `orderlist`
--

CREATE TABLE `orderlist` (
  `oderPk` int(20) NOT NULL,
  `memberId` int(20) NOT NULL,
  `orderId` int(20) NOT NULL,
  `orderDate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contactName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contactTell` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contactBirth` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contactEmail` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `orderTotal` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `payWay` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cardNum` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `orderlist`
--

INSERT INTO `orderlist` (`oderPk`, `memberId`, `orderId`, `orderDate`, `contactName`, `contactTell`, `contactBirth`, `contactEmail`, `orderTotal`, `payWay`, `cardNum`) VALUES
(1, 1, 1, '2020/07/24', '張曉明', '0912345678', '1991/01/01', '123@456789.321', '1200', '信用卡', '1234-5678-5566-9988');

-- --------------------------------------------------------

--
-- 資料表結構 `triplist`
--

CREATE TABLE `triplist` (
  `tripId` int(5) NOT NULL,
  `memberId` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `tripState` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tripLike` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tirpCity` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `guideId` int(5) NOT NULL,
  `tripName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tripDate` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tripTime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `peoMost` int(20) NOT NULL,
  `tripIntroduce` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tripAttention` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tripPrice` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tripPic1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tripPic2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tripPic3` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `triplist`
--

INSERT INTO `triplist` (`tripId`, `memberId`, `tripState`, `tripLike`, `tirpCity`, `guideId`, `tripName`, `tripDate`, `tripTime`, `peoMost`, `tripIntroduce`, `tripAttention`, `tripPrice`, `tripPic1`, `tripPic2`, `tripPic3`) VALUES
(1, '1', '北部', '風景', '新竹', 0, '新竹~北埔冷泉', '2020/08/06', '0900-1200', 10, '[北埔冷泉] 全台唯一硫磺與碳酸共生之冷泉，具療效及美白之功能。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '600', 'trip1_1.jpg', 'trip1_2.jpg', 'trip1_3.jpg'),
(2, '2', '中部', '風景', '南投', 0, '溪頭走走', '2020/08/07', '0900-1200', 10, '大學池可說是湖光山色，還有神木林，其實他是台大的實驗林，是三面環山的凹谷地形，海拔最高為南面的嶺頭山 2025m，溪谷流貫兩山脈之間，主要海拔在800～2000m之間，因此植物林相豐富，可以來這裡做做森林浴、吸取一下芬多精和負離子，真的很舒服喔！', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '601', 'trip2_1.jpg', 'trip2_2.jpg', 'trip2_3.jpg'),
(3, '3', '南部', '藝術', '嘉義', 0, '故宮南院走走', '2020/08/07', '0900-1200', 10, '南院正推出「翰墨空間」書畫展、「青銅饗宴」青銅器展，八月推出「呼畢勒罕：清代活佛文物大展」；南院夜晚也很精彩，七月水舞表演登場，假日夜晚安排無人機群飛展演。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '602', 'trip3_1.jpg', 'trip3_2.jpg', 'trip3_3.jpg'),
(4, '4', '東部', '人文', '花蓮', 0, '南方澳平台', '2020/08/07', '0900-1200', 10, '觀景台之西側可眺望虎頭山的蓊鬱壯闊，北面可俯瞰內埤海灘及豆腐岬的美麗景致。站在觀景台上更可遠眺蘇澳港，其地形三面環山，原為一小型港口，是由北方澳、蘇澳及南方澳形成的天然優良港灣，形勢相當險要且地勢天成，是遊客造訪南方澳賞海觀景的絕佳地點。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '603', '	trip4_1.jpg', 'trip4_2.jpg', 'trip4_3.jpg'),
(5, '5', '北部', '人文', '基隆', 0, '正濱漁港 老舊漁港變身五彩繽紛小威尼斯', '2020/08/07', '0900-1200', 10, '最近很火紅的景點就是正濱漁港了，被稱作「台版威尼斯」，跟威尼斯的彩色島如出一轍，一整排的彩色小屋其實挺吸睛的，為原本老舊的漁港注入一股新的活力和朝氣，現場比照片看起來還漂亮，假日人潮更是絡繹不絕，完全無法小看變身後彩色漁港的威力呢', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '604', 'trip5_1.jpg', 'trip5_2.jpg', 'trip5_3.jpg'),
(6, '6', '中部', '風景', '台中', 0, '谷關風景特定區', '2020/08/07', '0900-1200', 10, '臺灣著名的溫泉旅遊點之一「谷關風景特定區」，位於和平區博愛村，由於其位處東西橫貫接口，原為泰雅族居地，海拔約800公尺。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '605', 'trip6_1.jpg', 'trip6_2.jpg', 'trip6_3.jpg'),
(7, '7', '南部', '古蹟', '高雄', 0, '	鳳儀書院', '2020/08/07', '0900-1200', 10, '鳳儀書院是全台最大的清朝古書院，打破對書院的傳統印象，這裡可比想像中好玩多了！書院四周有許多Q版的人偶，帶你穿越時空來到當時的生活情景，不只可以認識歷史故事，還可以拍出很多KUSO有趣的互動照喔！', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '606', 'trip7_1.jpg', 'trip7_2.jpg', 'trip7_3.jpg'),
(8, '8', '東部', '風景', '花蓮', 0, '台灣太魯閣', '2020/08/07', '0900-1200', 10, '緊鄰於大甲溪畔的谷關，因溫泉名聞遐邇而成名勝風景區，這裡的溫泉是屬於弱鹼性的碳酸泉水，水質特佳，該區的旅館也都有溫泉浴池設備提供旅客使用，此外，神木谷假期飯店內還有一株千年的五葉松神木。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '607', 'trip8_1.jpg', 'trip8_2.jpg', 'trip8_3.jpg'),
(9, '9', '北部', '風景', '桃園', 0, '《桃園大溪》舊百吉隧道 又見神隱少女隧道、經歷半世紀的神秘懷', '2020/08/07', '0900-1200', 10, '「舊百吉隧道」全長343公尺、寬4.5公尺，原屬北段橫貫台七線公路要道，西元1944年由日本人開闢具人行、防空與疏散專用隧道〈角板山戰略據點〉，後因不符公路需求，另闢建雙向通車的「新百吉隧道（1993年通車）」，舊百吉隧道從此功成身退。2007年重新整修改為遊憩步道後重新開放，提供遊客、單車通行。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '608', 'trip9_1.jpg', 'trip9_2.jpg', 'trip9_3.jpg'),
(10, '10', '中部', '風景', '台中', 0, '台中谷關風景區', '2020/08/07', '0900-1200', 10, '谷關除了洗溫泉浴、享受鱒魚美食、森林浴外，還有谷關溫泉公園、捎來步道為悠遊賞景的好去處。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '609', 'trip10_1.jpg', 'trip10_2.jpg', 'trip10_3.jpg'),
(11, '11', '南部', '古蹟', '高雄', 0, '紅毛港文化園區', '2020/08/07', '0900-1200', 10, '灣各地古時因西洋人毛髮泛紅或棕褐色，有別於東方人之黑髮，故稱西方人為「紅夷」，因此由西洋引進之鑄砲稱為「紅夷」，在台灣歷史中有關於荷蘭與西班牙之地方名稱或器物等均冠以「紅毛」', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '610', 'trip11_1.jpg', 'trip11_2.jpg', 'trip11_3.jpg'),
(12, '12', '東部', '風景', '台東', 0, '台東探索之旅', '2020/08/07', '0900-1200', 10, '原名白玉瓏的白玉瀑布，位在新知本大飯店附近，瀑布自五十公尺高的山崖壁傾瀉而下，水煙瀰漫、水花四散，景觀非常的婉約秀麗。沿著登山步道向上走，山林間的蟲鳴島叫，是最悅耳的大自然交響曲。在步道的最終即可感受到佈滿水氣的山林氣息，宛若精靈居住的仙境，令人嚮往不已。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '611', 'trip12_1.jpg', 'trip12_2.jpg', 'trip12_3.jpg'),
(13, '13', '北部', '風景', '台北', 0, '《台北平溪》望谷瀑布 山谷中寂靜的空靈系小站秘境', '2020/08/07', '0900-1200', 10, '說到平溪的景點，大家一定立即想到最有名的十分瀑布、十分老街、菁桐老街等等，這些都再熟悉不過了，其實在平溪線的小站「望谷車站」隱藏了一個空靈感十足的秘境瀑布，我們順著小徑到達終點，眼前有如兩片水簾懸掛在岩壁上，順勢流入深邃的碧綠色湖水，或許是深綠色的關係看起來更有神秘感，還有種與世隔絕的空靈感', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '612', 'trip13_1.jpg', 'trip13_2.jpg', 'trip13_3.jpg'),
(14, '14', '中部', '藝術', '台中', 0, '國立自然科學博物館', '2020/08/07', '0900-1200', 10, '國立自然科學博物館位於臺中市北區，是全臺首座將自然科學生活化的博物館，亦是一處可以實地動手操作學習的知識殿堂！本館展示呈現多樣性，包括：太空劇場、科學中心、生命科學廳、地球環境廳、人類文化廳、植物園等，內容豐富且深具教育意義。', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '613', 'trip14_1.jpg', 'trip14_2.jpg', 'trip14_3.jpg'),
(15, '15', '南部', '藝術', '高雄', 0, '柴山沙灘秘境', '2020/08/07', '0900-1200', 10, '說到高雄怎麼能錯過美麗的沙灘？位於柴山的沙灘秘境可是攝影師們的天堂，走進神秘小徑後，映入眼簾的是碉堡、仙人掌、沙灘，就像走進電影裡的場景，壯觀又迷人，讓人忍不住按下快門。神秘小徑也是別有洞天，有機會來的話，別忘了探索一番！', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '614', 'trip15_1.jpg', 'trip15_2.jpg', 'trip15_3.jpg'),
(16, '16', '東部', '風景', '台東', 0, '飛行傘雙人體驗', '2020/08/07', '0900-1200', 10, '台東～飛行傘的故鄉-密境新飛行場-卑南鄉美農村斑鳩社區 這裡不是國外，這麼美的景致，就在台灣- 台東 - 斑鳩高台-東台灣飛行傘俱樂部飛行場~ 斑鳩高台東台灣飛行傘俱樂部起飛場，海拔約420公尺，由於其特殊的地理條件，成為東部一處優良的天然空域活動場地，也為全台灣唯一全年四季每天均適合飛行之飛行場，更是國內唯一為台東縣內僅有可以俯瞰東西南北向全景-南台東市至北花東縱谷之飛行場，海岸線、綠島、蘭嶼一', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '615', 'trip16_1.jpg', 'trip16_2.jpg', 'trip16_3.jpg'),
(17, '17', '北部', '人文', '台北', 0, '《台北石門》老梅迷宮 神秘紅磚迷宮裡的躲貓貓、北海岸私房景點', '2020/08/07', '0900-1200', 10, '老梅迷宮有種神秘的復古感，說是7.80年代的風格也不為過，或許爸媽那年代就已經有了？整座迷宮以紅磚堆疊而成，帶點歲月斑駁的痕跡，靜靜的座落在綠意草皮上，神秘感十足，沿著步道往下走大約15分鐘就能到達最北邊的富貴角燈塔', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '616', 'trip17_1.jpg', 'trip17_2.jpg', 'trip17_3.jpg'),
(18, '18', '中部', '人文', '雲林', 0, '北港朝天宮', '2020/08/07', '0900-1200', 10, '北港朝天宮舊稱天妃廟或天后宮，為了紀念分靈自湄洲祖廟──朝天閣，才改名為朝天宮。創建於清康熙33年（西元1694年），因神蹟靈驗，已成為全國三百餘座媽祖廟的總廟，外觀輝煌。廟中供祀天上聖母、鎮殿媽、湄洲媽祖、觀世音菩薩等神像。廟內的樑架結構及木雕皆出自於名匠之手，如廟埕外石欄杆柱上四海龍王之石雕像，每尊姿態各異，氣勢雄健，還有以米字形做出斗拱結網構造而成的藻井，整座寺廟不論是小至窗花上的人物表情動', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '617', 'trip18_1.jpg', 'trip18_2.jpg', 'trip18_3.jpg'),
(19, '19', '南部', '風幾', '高雄', 0, '崗山之眼｜高雄新景點,懸掛天空的廊道,享盡登高望遠之美', '2020/08/07', '0900-1200', 10, '崗山之眼位於岡山及燕巢交界處的小崗山，佔地約1.8公頃，園區規劃配合原有地形與環境，營造為自然生態休憩園區，包括天空廊道、音樂花園、市集及碉堡遊憩區等，其中最大亮點就是造型類似小提琴頭，全長88公尺、高度約8層樓高，並以24條吊索支撐的天空廊道，走在廊道上可俯瞰大小崗山及阿公店水庫風景區，天候良好時還可遠眺85大樓及北大武等群山，視野相當遼闊，於2018年2月正式開放營運，即獲全球知名旅遊雜誌孤獨', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '618', 'trip19_1.jpg', 'trip19_2.jpg', 'trip19_3.jpg'),
(20, '20', '東部', '人文', '台東', 0, '台東的美好', '2020/08/07', '0900-1200', 10, '細細品味這裡獨有的海島景觀、芋頭田、雅美拼板舟、傳統住屋和美麗星辰，感受雅美族人與自然合而為一的生活智慧。躺在傳統屋前的涼亭上享受海風的吹拂，可以讓人立即忘卻城囂俗事，一起感受人與自然的貼近', '1.注意身體狀況，請準備充足的水分2.入園票需自行提前預訂3.如果有特殊需求請提前Mail告知', '619', 'trip20_1.jpg', 'trip20_2.jpg', 'trip20_3.jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cartlist`
--
ALTER TABLE `cartlist`
  ADD PRIMARY KEY (`preOrder`);

--
-- 資料表索引 `memberlist`
--
ALTER TABLE `memberlist`
  ADD PRIMARY KEY (`memberId`);

--
-- 資料表索引 `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`oderPk`);

--
-- 資料表索引 `triplist`
--
ALTER TABLE `triplist`
  ADD PRIMARY KEY (`tripId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cartlist`
--
ALTER TABLE `cartlist`
  MODIFY `preOrder` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `memberlist`
--
ALTER TABLE `memberlist`
  MODIFY `memberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `oderPk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `triplist`
--
ALTER TABLE `triplist`
  MODIFY `tripId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
