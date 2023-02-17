-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: i8a206.p.ssafy.io    Database: dearmybaby
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `festival` (
  `festival_id` bigint NOT NULL,
  `festival_address` varchar(255) DEFAULT NULL,
  `festival_avl_age` varchar(255) DEFAULT NULL,
  `festival_avl_parking` varchar(255) DEFAULT NULL,
  `festival_category` varchar(255) DEFAULT NULL,
  `festival_closed_day` varchar(255) DEFAULT NULL,
  `festival_fee` varchar(255) DEFAULT NULL,
  `festival_img_url` varchar(255) DEFAULT NULL,
  `festival_latitude` varchar(255) DEFAULT NULL,
  `festival_longitude` varchar(255) DEFAULT NULL,
  `festival_name` varchar(255) DEFAULT NULL,
  `festival_outline` varchar(1000) DEFAULT NULL,
  `festival_phone_number` varchar(255) DEFAULT NULL,
  `festival_place` varchar(255) DEFAULT NULL,
  `festival_start_day` varchar(255) DEFAULT NULL,
  `festival_visit_hour` varchar(255) DEFAULT NULL,
  `region_id` bigint DEFAULT NULL,
  PRIMARY KEY (`festival_id`),
  KEY `FK1149qx9iv8bmu1qu9r6lbtclw` (`region_id`),
  CONSTRAINT `FK1149qx9iv8bmu1qu9r6lbtclw` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (1,'제주특별자치도 서귀포시 표선면 민속해안로 537','전연령 가능','가능','6','20220922','무료','http://tong.visitkorea.or.kr/cms/resource/89/2846289_image2_1.jpg','33.3215135225','126.8447465590','제15회 제주해비치아트페스티벌','전국 문예회관 관계자, 국내외 예술단체 및 공연기획사, 문화예술관련 기관, 공연장 관련 장비업체 등 문화예술 산업 종사자 간 정보제공•교류•홍보를 위한 유통의 핵심 플랫폼 구축을 통해 기획역량 및 유통황성화에 기여하고, 다양한 형태의 공연예술프로그램 실연을 통해 문화 향유 기회를 제공하는 대한민국을 대표하는 아트마켓형 페스티벌','02-3019-5853~6','해비치호텔앤드리조트 제주 및 제주도 내 공연장 일원 등','20220919','09:00 - 18:00',8),(2,'제주특별자치도 제주시 조함해안로 525','전연령 가능','가능','6','20221015','무료','http://tong.visitkorea.or.kr/cms/resource/94/2848794_image2_1.jpg','33.5427390309','126.6690845131','제주레저힐링축제','레저스포츠와 문화예술이 어우러진 「융합형 관광 문화 축제」, 레저스포츠가 가진 역동성을 함께하는 「체험형 액티비티 축제」,제주형 문화․예술로 힐링을 나누는 「감성 문화 축제」,지역민과 직접 참여하고 만들어가는 「지역 밀착형 축제」이다. 환경을 생각하는 행사 운영으로 축제의 지속가능성을 확보한다. 제주의 대표적인 콘텐츠, 레저와 힐링이 어우러진 융합형 관광축제이다. 체험형 액티비티를 통해 레저 스포츠의 역동성을 즐기고 제주만의 감성적인 문화 예술로 힐링을 느낀다. 지역 문화 예술인과 소상송인 등 지역민과 함께 만들어가는 지역 밀착형 축제로서 다양한 환경친화적 캠페인과 프로그램 도입으로 축제의 지속가능성 또한 확보한다.',' 064-728-2751~6','함덕해수욕장. 새별오름','20220916','15:00~21:00',8),(3,'제주특별자치도 서귀포시 예래해안로 253','전연령 가능','가능','6','20220731','무료','http://tong.visitkorea.or.kr/cms/resource/42/2609642_image2_1.jpeg','33.2367128455','126.3885768862','제 20회 예래생태체험축제','예래생태체험축제는 \'물과 함께 신명나는 해변축제\'를 주제로 천혜의 경관을 자랑하는 논짓물과 바다를 최대한 활용하여 방문객 모두가 신나게 즐길 수 있는 해변축제이다.','064-760-4845','예래 논짓물 일원','20220730','09:00 - 18:00',8),(4,'제주특별자치도 제주시 동광로 90','전연령 가능','가능','6','20221121','무료','http://tong.visitkorea.or.kr/cms/resource/68/2650968_image2_1.JPG','33.5048855642','126.5377440121','제주국제관악제','제주의 관악은 6․25 한국전쟁을 전후한 어려웠던 시절부터 시작된다. 금빛 나팔소리로 제주사람들의 애환을 달래며, 천진스런 동경과 꿈을 심어주었다. 제주국제관악제는 제주토박이 관악인들에 의해 1995년에 격년제로 시작되었다. 1997년 제2회 대회까지의 개최를 발판으로 1998년에는 전문앙상블, 관악독주 등 소규모의 앙상블축제를 마련했다. 관악의 대중적 호응도와 축제성이 강한 홀수 해의 밴드축제와 병행하여 전문성에 초점을 맞춘 짝수 해의 축제였다. 이후 홀수해의 축제와 짝수해의 축제가 하나로 결합되어 현재까지 이어져오고 있다.','064-722-8704','제주아트센터. 서귀포예술의전당. 세계자동차&피아노박물관','20221118','19:30 - 21:00',8),(5,'제주특별자치도 제주시 중앙로 2','전연령 가능','가능','6','20221010','무료','http://tong.visitkorea.or.kr/cms/resource/58/2844258_image2_1.jpg','33.5181838831','126.5246670689','제61회 탐라문화제','탐라문화제는 지난 1962년 문화예술인들이 참여한 순수예술단체인 제주예총이 주최하여 \'제주예술제\'라는 이름으로 탄생되었다.제주예술제는 1965년 4회 때부터 한라문화제로 이름을 바뀌면서 전통문화와 현대예술이 조화를 이룬 종합적인 향토문화축제로 전환되면서 더욱 다채로워져서 제주를 대표하는 문화축전으로 그 위상을 한껏 드높였다. 이처럼 성장해 온 한라문화제는 2002년 제41회부터 \'탐라문화제\'로 개칭하고 \'제주의 유구한 역사와 고유한 문화전통\'을 되살리는 문화축제로 그 성격과 내용을 재정립했다.탐라문화제는 개천예술제와 백제문화제와 더불어 전국의 3대문화축제로 성장하였고, 2004년부터는 문화관광부에서 우수 지역 민속축제로 지정되기도 했다.탐라문화제에서 발굴된 방앗돌굴리는노래와 귀리겉보리농사일소리, 멸치후리는소리와 해녀노래, 불미공예를 비롯한 여러 민요 종목들이 제주도무형문화재로 지정되어 보배로운 문화유산으로 보존 전승되고 있다. 탐라문화제는 제주의 축제 발전에도 크게 공헌했다. 조랑말경주는 제주마 축제로 성장했고 남제주군의 특성행사로 열렸던 성읍민속마을의 정의골한마당축제와 덕수리전통민속재현행사는 지역문화축제로 발전하면서 그 우수성을 널리 떨치고 있으며 도내 수협들이 주관했던 바다축제는 제주해녀문화축제로 승화되어 세계화를 도모하고 있다.전국의 다양한 축제 중에서도 유일하게 열려 오고 있는 언어축제인 \'제주어 축제\'는 사라져 가는 구수한 제주사투리를 생활 속에 되살리는 중심 축제로 성장하여, \'제주어보존전승조례\'를 제정하는 문화정책으로 승화되었고 다양한 측면에서 제주어교육과 연구를 확산시키는데 기여하고 있다.','064-753-3287','탑동해변공연장. 탑동광장. 탐라광장 등 제주도일원','20221006','11:00~21:00',8),(6,'제주특별자치도 서귀포시 성산읍 일출로 284-12','전연령 가능','가능','6','20230101','무료','http://tong.visitkorea.or.kr/cms/resource/85/1876185_image2_1.jpg','33.4581111174','126.9415156012','제주성산일출축제','새해 첫날 맞이하는 일출제는 세계자연유산인 성산일출봉의 자연적 가치와 풍광을 재조명하고 이를 널리 알리고자 하는 자연축제이며, 송구영신의  의미를 되새기는 기원축제, 전통문화와 예술관광을 테마로 삼아 관광객들과 함께 흥과 멋을 나누는 문화관광축제이다.','064-782-2241','서귀포시 성산일출봉 일원','20221231','09:00 - 18:00',8),(7,'제주특별자치도 제주시 한림읍 한림로 300','전연령 가능','가능','4','20220417','유료','http://tong.visitkorea.or.kr/cms/resource/41/2712041_image2_1.JPG','33.3897241270','126.2381087692','제주 튤립축제 in 한림공원','제주 봄 힐링 명소로 사랑받고 있는 한림공원이 4월 5일부터 튤립축제를 연다.한림공원은 10만 평 대지 위의 정원으로 다양한 식물 정원은 물론, 천연기념물 236호인 협재굴, 쌍룡굴까지 있어 또 하나의 제주를 오롯이 느낄 수 있는 곳이다.걸어서 3분 거리에 협재해수욕장과 금능해수욕장이 있고, 4월 튤립, 6월 수국, 11월 국화 등 일 년 내내 꽃을 볼 수 있다. 이번 축제 기간에는 다이너스티, 스트롱골드, 퍼플 플래그 등 9개 품종 5만여 송이의 튤립을 볼 수 있으며, 꽃으로 둘러싸인 아름다운 포토존에서 인생샷을 남길 수 있다.','064-796-0001','한림공원 산야초원 플라워가든','20220405','09:00 - 18:00',8),(8,'제주특별자치도 서귀포시 색달동 3039','전연령 가능','가능','6','20230101','무료','http://tong.visitkorea.or.kr/cms/resource/07/2639307_image2_1.jpg','33.2450179104','126.4156521304','서귀포 겨울바다 국제펭귄수영대회','서귀포 겨울바다 국제펭귄수영대회는 일종의 극기체험을 통해 묵은해의 흔적을 지우고, 희망찬 새해를 설계하며 강한 정신력을 고취시키는 겨울 이벤트이다.세계적인 희귀보호종 왕바다거북이 산란을 위해 찾는 북방한계선인 중문색달해수욕장에서 1년에 단 한번 새해의 소망과 건강을 기원하며 겨울바다에 뛰어들어보자!','064-796-0001','중문색달해수욕장','20230101','09:00 - 18:00',8),(9,'제주특별자치도 제주시 한림읍 한림로 300','전연령 가능','가능','4','20220227','유료','http://tong.visitkorea.or.kr/cms/resource/25/2647025_image2_1.jpg','33.3902018773','126.2397419496','한림공원 매화축제','매화 · 수선화정원에는 버드나무처럼 늘어지는 80년생 능수매화가 장관을 이루며, 20년 이상 된 백매화, 홍매화, 겹백매화, 겹홍매화, 청매화 등이 만발하여  한림공원을 방문한 관광객들에게 제주의 봄소식을 전하고 있다.','064-796-0001','한림공원 매화정원','20220205','08:30~18:00',8),(10,'제주특별자치도 제주시 한림읍 한림로 300','전연령 가능','가능','4','20220626','유료','http://tong.visitkorea.or.kr/cms/resource/49/2824049_image2_1.jpg','33.3902018773','126.2397419496','제주 한림공원 제 14회 수국 축제','10만 평 대지 위에 또 하나의 제주인 한림공원에서 6월 17일 금요일부터 제 14회 수국 축제를 개최한다.한림공원은 다양한 식물뿐만 아니라, 천연기념물 236호인 협재굴, 쌍룡굴 또한 볼 수 있는 곳으로, 걸어서 3분 거리에 협재해수욕장과 금능해수욕장이 있어 많은 관광객들이 찾는 힐링 명소이다.현재 한림공원 수국 동산에는 수국과 산수국 1,000여 본에서 형형색색의 꽃들이 풍성하게 피어 관람객들에게 즐거움을 선사하고 있다. 수국은 토양의 성질에 따라 색이 파란색, 붉은색으로 변하며, 꽃잎처럼 생긴 꽃받침과 그 사이에 핀 아주 작은 꽃이 매력적인 식물이다.한림공원 수국 축제는 16일 금요일부터 26일 일요일까지 한림공원 내 수국 동산에서 열리며, 주말에는 수국 하바리움 만들기, 수국 토피어리 만들기 등 다양한 체험 또한 할 수 있다.','064-796-0001','한림공원 ','20220617','09:00 - 18:00',8),(11,'제주특별자치도 서귀포시 무영로254번길 3-1 제주전통옹기전승보존회','전연령 가능','가능','8','20221030','무료','http://tong.visitkorea.or.kr/cms/resource/98/2870198_image2_1.jpg','33.2828107186','126.2233124316','제14회 제주옹기굴제','옹기일이 한창이던 시절 여럿이 함께 \'계\'를 조직하여 \'굴\'을 만들고 협업으로 옹기를 생산해 내는 공동작업방식을 형성하였는데 이를 \'굴제\'라고 하였다. 이는 제주의 지역적 특성이 잘 드러난 공동체문화의 바탕을 이룬다. 따라서 제주옹기를 통한 전통의 새로운 가치 창조와 상생을 목적으로 노랑굴 큰불때기를 중심으로 제주옹기굴제를 축제화하여 제주사람들의 삶의 근본인 공동체문화를 체험하고 함께 공유하고자 한다.','1899-4008','제주옹기박물관','20221027','10:00 ~ 17:00',8),(12,'제주특별자치도 제주시 한림읍 한림로 300','전연령 가능','가능','4','20230219','유료','http://tong.visitkorea.or.kr/cms/resource/30/2944030_image2_1.jpg','33.3897241270','126.2381087692','제주 한림공원 2023 수선화 축제','“겨우내 피어난 100만 금잔옥대ㆍ제주수선화의 합창”제주 한림공원에서는 2023년 1월 21일부터 2023년 2월 19일까지 제 12회 수선화축제가 열린다.추운 겨울 한림공원 수선화 정원에는 제주의 해안에서 자생하는 “제주수선화”와 꽃 모양의 옥으로 만든 잔 받침대에 금술잔을 올려놓았다는 형태의 “금잔옥대 수선화” 100만 송이가 피어 짙은 향기를 뿜어내고 있다.또한 수선화 정원 내에는 수선화 시화가 활짝 핀 수선화와 한데 어우러져 운치를 더하고 있다. 혹독한 추위 속에서도 활짝 핀 한림공원 수선화 정원에서 아름다운 향기에 푸욱 빠져보시기 바란다.','064-796-0001','한림공원 ','20230121','09:00 - 18:00',8),(13,'제주특별자치도 서귀포시 남원읍 신례동로 256','전연령 가능','가능','6','20220915','유료','http://tong.visitkorea.or.kr/cms/resource/24/2825224_image2_1.jpg','33.3085171454','126.6344317363','휴애리 유럽 수국축제','서귀포시 남원읍 신례리에 위치한 휴애리 자연생활공원은 제주도민과 제주를 찾는 관광객에게 보다 나은 볼거리를 제공하고 또 힐링의 공간이 되고자 오는 7월 15일부터 “휴애리 유럽 수국축제”를 개최한다고 밝혔다.이번 2022 휴애리 유럽 수국축제는 정성스럽게 키운 유럽수국을 공원 곳곳에서 감상할 수 있어 제주도민과 관광객에게 ','064-732-2114','휴애리자연생활공원 내','20220715','09:00 - 18:00',8),(15,'제주특별자치도 서귀포시 남원읍 신례동로 256','전연령 가능','가능','4','20221115','유료','http://tong.visitkorea.or.kr/cms/resource/91/2742091_image2_1.jpg','33.3085171454','126.6344317363','휴애리 핑크뮬리 축제','2022 휴애리 핑크뮬리 축제는 서귀포시 남원읍 신례리에 위치한 휴애리의 대표 가을 축제 이다. 올해로 5번째인 이번 축제는 9월 15일 부터 시작 예정이며, 예년과 달리 공원 곳곳에 더욱 풍성하게 준비된 핑크뮬리가 방문하시는 모든 분들을 반길것으로 예상된다. 특히, 파란 가을 하늘이 인상적인 제주에서 핑크빛 핑크뮬리와 함께 멋진 인생사진을 남겨볼 수 있어 벌써부터 많은 분들의 관심을 얻고 있다. 또한 작년과 또 다른 특별한 풍경으로 핑크뮬리를 준비하여 답답한 일상에서 위로 를 받고 싶은 분들에게 더욱 매력적인 시간이 될 것 이다. 휴애리 핑크뮬리 축제에는 핑크뮬리 뿐만 아니라 감귤체험도 함께 해 볼 수 있어, 아이를 동반한 가족에게는 교육과 학습의 시간을, 제주감귤을 좋아하시는 분들에겐 행복한 시간이 될 것 이다. 휴애리는 여러 해 전부터 지역사회 환원 차원에서 제주도내 장애인단체, 보육원, 양로원 등은 축제 때마다 무료입장을 진행하고 있으며 도민과 관광객 가운데 3자녀이상 입장료 50%할인행사를 별도로 진행하고 있다.','064-732-2114','휴애리 자연생활공원','20220915','09:00 - 18:00',8),(16,'제주특별자치도 서귀포시 남원읍 신례동로 256','전연령 가능','가능','4','20230131','유료','http://tong.visitkorea.or.kr/cms/resource/28/2868128_image2_1.jpg','33.3085171454','126.6344317363','휴애리 동백축제','2022 휴애리 동백축제는 서귀포시 남원읍 신례리에 위치한 휴애리의 대표 겨울 축제이다. ','064-732-2114','휴애리 자연생활공원','20221114','09:00~17:30',8),(18,'제주특별자치도 제주시 조천읍 선교로 569-36','전연령 가능','가능','4','20221016','유료','http://tong.visitkorea.or.kr/cms/resource/34/2845934_image2_1.jpg','33.4569020299','126.7142575546','세계유산축전 -  제주 화산섬과 용암동굴 ','본 행사는 지난 2020년 처음 시범 시행 후, 올해로 3번째 추진 하는 정부사업으로 유네스코에 등재된 세계유산을 주제로 공연, 전시 등의 가치 확산&향유 프로그램과  참여자가 직접 체험하는 순례단, 워킹투어 등 세계유산에 대한 이해를 돕고 그 가치를 전달하고, 해석하는 프로그램을 결합한 복합 문화 홍보 사업이다.','064-755-2210','프로그램별 상이','20221001','09:00 - 18:00',8),(19,'제주특별자치도 제주시 판조로 253-6','전연령 가능','가능','6','20220731','유료','http://tong.visitkorea.or.kr/cms/resource/98/2823398_image2_1.jpg','33.3492032905','126.2177586632','제주 비체올린 능소화축제','햇빛 위에 올려놓은 자연 속에 조성된 힐링테마파크 라는 뜻의 비체올린에서 여름을 맞이하며 능소화 축제를 진행한다. 이번 능소화 축제는 6월1일부터 7월 31일까지 두달간 개최되며, 비체올린 곳곳에 피어난 능소화의 장관을 볼수 있다.전년도 보다 더 풍성하게 준비된 이번 비체올린 능소화 축제는 여름꽃 배경으로 인생 사진 찍기 좋은 제주여행 필수 코스이다. 비체올린 관계자에 따르면 연인, 가족, 친구와 함께 다양한 능소화 포토존에서 아름다운 여행 추억을 만들 수 있을 것이라 전했다.','064-773-0000','힐링파크 비체올린 내','20220601','09:00 ~ 18:30 ',8),(20,'제주특별자치도 서귀포시 도원로17번길 5-7','전연령 가능','가능','6','20220717','무료','http://tong.visitkorea.or.kr/cms/resource/49/2825849_image2_1.jpg','33.2775660451','126.1715448243','제11회 남방큰돌고래의 날','해양환경단체 핫핑크돌핀스는 제주 남방큰돌고래의 보호와 해양생태계 보전의 중요성을 알리기 위해 제11회 남방큰돌고래의 날 행사를 연다. 이 행사는 2012년 처음 열렸다. 핫핑크돌핀스가 국내 곳곳의 수족관에 있던 제주 남방큰돌고래들을 제주바다로 돌려보내자는 캠페인을 2011년 7월20일 열었던 것에서 시작, 그 후 매년 7월20일을 전후로 행사가 열리고 있다. 올해는 행사의 규모를 좀더 키워 핫핑크돌핀스 이외에도 해양동물생태보전연구소 마크가 공동주최자로 나섰다. 아울러 각종 민간단체가 협력단체로 참여해 워크샵을 진행하고, 사우스카니발과 훌라의 공연도 이어진다.','064-772-3366','제주도 서귀포시 대정읍 신도리 바닷가 소라공원','20220717','15:00 - 18:00',8),(22,'제주특별자치도 제주시 금백조로 930','전연령 가능','가능','5','20221031','유료','http://tong.visitkorea.or.kr/cms/resource/52/2856452_image2_1.jpg','33.4434017790','126.7786189466','HAPPINESS IS THE GREAT PUMKIN IN SNOPPY GARDEN','HAPPINESS IS THE GREAT PUMKIN IN SNOPPY GARDEN-할로윈 행사도 스누피가든에서 즐기자 9월 1일부터 10월 31일까지  HAPPINESS IS GREAT PUMPKIN IN SNOOPY GARDEN 축제가 10월 할로윈을 기념하여 제주도 구좌읍 송당리에 위치한 스누피 가든 박물관과 2만5천평의 정원 곳곳에서 진행될 예정이다.이번 축제에서는 할로윈 컨셉으로 특별 전시가 진행되어 야외가든 \'호박대왕의 호박밭\'에서 할로윈을 즐기며 호박대왕을 기다리는 피너츠 친구들의 모습을 볼 수 있다. 전시관도 일부 새롭게 개편되어 다시 찾는 방문객들에게도 새로운 즐거움을 선사할 예정이다. 카페 스누피에서는 축제 기간 한정으로 판매되는 할로윈 메뉴를 맛볼 수 있어 할로윈 축제를 더욱 생생하게 즐길 수 있을 것이라 기대된다.','064-903-1111','스누피가든 전역','20220901','09:00 -19:00',8),(23,'제주특별자치도 제주시 한창로 897','전연령 가능','가능','5','20221029','무료','http://tong.visitkorea.or.kr/cms/resource/52/2856452_image2_1.jpg','33.3340733448','126.3270161708','수눌음축제','2014년 2월부터 한림읍 금악리 황무지에 탄생한 탐나라공화국은 지역민들이 기증해 준 나무와 빗물을 활용한 인공 생태계 위에 예술문화를 접목해가고 있는 상상나라이다.공간 조성에 도움을 준 데 대한 감사 표시로 매달 마지막 토요일은 제주도민에게 무료개방하고 노랑축제와 헌책축제 등의 문화행사를 열었으며 이제 코로나-19와의 작별을 앞두고 탐나라공화국의 인공자연 환경과 제주의 수눌음 정신을 결합한 나눔문화를 사회에 확산시키고자 한다.이번 행사는 지식과 예술문화로부터 공연이나 음식문화까지 나눔을 실천하면서 일상의 여유를 공유하는데 중점을 두고 지식과 지혜를 나누는 배움나눔, 안 쓰는 물품과 사랑을 나누는 여유나눔, 전시 공연 등 예술적 재능을 나누는 기쁨나눔 등 다채로운 행사로 도민은 물론 외래 방문객까지 함께하는 민간 주도형 참여축제가 될 것이다.','064-772-2878','제주탐나라공화국','20221029','10:00 - 18:00',8),(25,'제주특별자치도 서귀포시 사계남로 202','전연령 가능','가능','6','20221119','유료','http://tong.visitkorea.or.kr/cms/resource/49/2892049_image2_1.jpg','33.2311233201','126.3087589355','사계로 페스티벌','지역주민과 마을 소상공인이 함께 만드는 축제이다.사계로 페스티벌은 사계리의 도로명 주소 ‘사계로’와 ‘사계로 가자’라는 두 가지 중의적 의미를 담고 있다.사계 마을의 문화를 담은 진정한 의미의 로컬 문화를 관광객과 함께 펼치는 장이 되었으면 한다.다음 스토리는 ‘고종달 설화’를 바탕으로 만들어졌다.사계리 마을 곳곳에 터를 잡고 있는 길냥이들은 오늘도 평화롭다. 따사로운 햇볕에 식빵을 굽고 있는 고양이...인 줄 알았지만, 옥황 상제의 부름을 받고 사계 마을을 지키는 비범한 용사들이었다고 한다.산방산은 본디 큰 인물을 배출하는 명당으로 바다로 뻗어 내린 바위 언덕에 큰 용이 자리 잡고 있는 신성한 곳이다.하지만 산방산의 이 신성함을 시기하며 두려워하는 어둠의 무리가 암살자 고종달을 보내 그 맥을 끊고자 하였다.그리하여 사계리 마을에 숨어든 고종달이 용의 등을 단칼에 베었고 사계리를 뒤덮은 용의 울음소리가 그치지 않으니 마을 사람들이 괴로운 형세이다.11월 19일 단 하루, 사계리 마을을 구할 고양이 용사들이여!마을에 숨어든 암살자 고종달을 잡아들여 용의 울음을 멈추게 하고 사계 마을의 신성함을 되찾도록 하여라.','0507-1455-2044','제주 서귀포시 안덕면 사계남로 202 사계용해경로당산방로 358 스테이더몽','20221119','13:00 - 22:00',8),(26,'제주특별자치도 서귀포시 신례동로 256 휴애리','전연령 가능','가능','4','20230228','유료','http://tong.visitkorea.or.kr/cms/resource/27/2943527_image2_1.jpg','33.3083171551','126.6336401426','휴애리 유채꽃 축제','2023 휴애리 유채꽃축제는 서귀포시 남원읍 신례리에 위치한 제주도 최대 휴애리 축제이다.이번 휴애리 유채꽃축제에는 정성스럽게 키운 유채꽃 4,000평 밭에서 직접 감상할 수 있다.휴애리 동백축제와 함께 하는 휴애리 유채꽃축제는 웨딩스냅, 우정스냅 등 인생사진 찍기 좋은 장소로 인정받아 지금현재 많은 스냅업체에서 사진찍기 좋은 필수 코스로 각광 받고있다.','064-732 - 2114','휴애리 공원 내','20230101','09:00 - 18:00 ',8),(28,'제주특별자치도 서귀포시 남원읍 신례동로 256','전연령 가능','가능','4','20220328','유료','http://tong.visitkorea.or.kr/cms/resource/04/2805904_image2_1.jpg','33.3085171454','126.6344317363','휴애리 매화축제','봄의 기운을 머금은 매화향기 한가득올해 열여섯 번째 매화축제 열려 다양한 포토존과 흑돼지 공연 까지,서귀포시 남원읍 신례리에 위치한 휴애리 자연생활공원은 제주도민과 제주를 찾는 관광객에게 보다 나은 볼거리를 제공하고 또 힐링의 공간이 되고자 오는 18일부터 휴애리 매화축제를 개최한다고 밝혔다.올해로 열여섯 번째 열리는 휴애리 매화축제는 휴애리 공원에서 정성스럽게 키운 매화꽃을 매화올레길, 매화정원 등 공원 곳곳에서 감상할 수 있는 휴애리 대표 축제이다. 진한 핑크빛 홍매화를 시작으로 봉오리를 틔우기 시작한 매화나무 까지 봄 향기 가득한 축제가 될 것으로 예상된다. 한해의 시작을 알리는 봄의 대표 꽃 매화가 가득한 휴애리 매화축제는 신혼여행, 웨딩스냅, 우정스냅 등 인생사진 찍기 좋은 장소로 인정받은 봄 제주여행의 필수 코스이다. 휴애리 관계자에 따르면 특히 이번 매화축제는 가족, 연인, 친구와 함께 다양한 매화 포토존에서 아름다운 추억을 만들 수 있을 것이라 전했다.휴애리 양지선 대표는 “제주를 사랑하는 도민들과 관광객들에게 색다른 볼거리를 제공하고자 풍성하고 아름다운 매화꽃을 작년 보다 더 많은 양으로 정성껏 가꾸고 보살펴 왔다”며 “특별히 올해는 감성 가득한 포토존과 함께 매화꽃을 즐길 수 있도록 준비하였다\"는 포부를 밝혔다.한편 휴애리는 여러 해 전부터 지역사회 환원 차원에서 제주도내 장애인단체, 보육원, 양로원 등은 축제 때마다 무료입장을 진행하고 있으며 도민과 관광객 가운데 3자녀이상 입장료 50%할인행사를 별도로 진행하고 있다.','064-732-2114','휴애리 자연생활공원 공원내','20220218','11:00. 13:00. 15:00. 17:00',8),(29,'제주 제주시 애월읍 봉성리 산59-8','전연령 가능','가능','4','20230312','무료','http://tong.visitkorea.or.kr/cms/resource/47/2945047_image2_1.jpg','33.3674368137','126.3581488','2023 제주들불축제','제주들불축제는 제주도의 목축문화인 들불놓기를 현대적으로 재현한 제주도의 대표축제이다. 매년 3월 새별오름에서 펼쳐지는 제주들불축제에서는 오름에 들불을 놓아 밤 하늘을 붉게 수놓는다. 커다란 오름을 따라 붉은 불꽃이 일렁이는 모습은 그야말로 장관이다. 이 특별한 야경을 보기 위해 한국인들뿐 아니라 외국인들도 많이 찾고 있다. 들불놓기 이외에도 오름 전체를 대형스크린삼아 조명을 비추는 미디어 파사드쇼와 횃불 대행진, 화산섬 제주의 탄생을 의미하는 화산불꽃쇼 등 화려한 볼거리가 제공된다. 또한, 제주전통문화공연과 체험프로그램이 열리며 행사장 인근에 푸드트럭들이 모여 다양한 먹거리들을 맛볼 수 있다.','064-728-2736 ','제주시 애월읍 봉성리 새별오름 일원','20230309','06:00 -22:00',8);
/*!40000 ALTER TABLE `festival` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 11:50:56
