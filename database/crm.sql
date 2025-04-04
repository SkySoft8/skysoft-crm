-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: crm
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('13850d58-c351-5179-f605-67ccb60dc7fd','Руссоль','2025-03-08 21:28:35','2025-03-08 22:25:38','1','1','Длал им сайт.\nАнтон Барков работает уже не у них, но с ним нормальные отношения',0,'1','Customer','Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://russalt.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('13ab5927-8943-c20d-7762-67cc570387b4','Партнерпринт (Типография)','2025-03-08 14:44:25','2025-03-08 14:44:25','1','1','Печатал визитки недорого. Можно также напечатать буклеты',0,'1','Provider','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://vizitki-minsk.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('153b44b3-2cc7-33c1-97e5-67c4522f68d3','Альянс Групп','2025-03-02 12:42:04','2025-03-02 12:42:04','1','1','Вячеслав из Воронежа',0,'1','Customer','Finance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://alliance-finance.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17880776-0b7f-8a05-ea01-67d7fc06d209','ТЭК-Торг (тендерная площадка)','2025-03-17 10:41:13','2025-03-17 10:46:18','1','1','Тендерная площадка России. На ней выделена специально услуга для компаний из Беларуси. Работаю с ними',0,'1','Other','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.tektorg.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('180a6bc7-8624-bcb2-4ffc-67ccb5cfbb71','РУП “Национальный центр маркетинга и конъюнктуры цен”','2025-03-08 21:24:06','2025-03-08 21:24:06','1','1','У них несколько направлений сотрудничества:\nМаркетинг (от них письмо) Поговорил с начальницей. Крутая дама. Шарит. Интересный разговор. Можно работать\nБизнес-миссии, круглые столы: 328-46-25. Евгения Масловская. Я есть у них в базе. Если будет что-то по моей теме - позовут\nГосзакупки (на айстрейде надо отслеживать по факту публикации закупки, можно рассылку заказать. НА гиас есть планы. Можно их просмотреть и зарнее обзвонить когда что будет)\nВозвращаясь к вашему вопросу по поиску потенциальных клиентов, обращаю внимание на планы государственных закупок, рзмещенных на сайте gias.by ссылочка https://gias.by/gias/#/plans.\nВыбрав нужные параметры можнор создать пул потенциальных клиентов и продолжить с ними работу в индивидуальном порядке.\n\nПо вопросам работы вышеназванных порталов и специфики работы с ними следует обращаться в Управление обеспечения закупок по следующим телефонам 327-09-08, 203-40-16.',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://ncmps.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1a14b86f-f2c0-4475-83c1-67c2262b2fb7','Conference of European Rabbis (CER )','2025-02-28 21:09:53','2025-02-28 21:09:53','1','1','',0,'1','Customer','Not For Profit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://rabbiscer.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1e3cb31c-e12c-9858-4800-67c7616a1092','Белорусский фонд финансовой поддержки предпринимателей','2025-03-04 20:24:20','2025-03-04 20:24:20','1','1','Дают кредиты.\nПроводят биржи крупный-малый бизнес (около 8 бирж в год)\nДелают еще много чего для предпринимателей',0,'1','Investor','Finance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.belarp.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('256a1280-0287-8e86-9d18-67cbf5cf16b3','ЕИС (Россия). ЗакупкиГовРу','2025-03-08 07:43:28','2025-03-08 07:43:28','1','1','ЗакупкиГовРу',0,'1','Other','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://zakupki.gov.ru/epz/main/public/home.html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2d973865-1200-3db5-e4e2-67ccc1b06481','Яндекс (Белорусский офис)','2025-03-08 22:17:31','2025-03-08 22:17:31','1','1','Белорусский офис Яндекса. У них покупать рекламу',0,'1','Provider','Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://yandex.by/adv/contact/offices?country=belarus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2e700e8d-8479-c55f-322d-67ccb4d80daf','РУВАРД','2025-03-08 21:21:33','2025-03-08 21:21:33','1','1','Их юридическое название ООО Инфорза',0,'1','Provider','Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://ruward.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('32c258a6-93a8-eab8-46d3-67cbff29b1cb','Налоговая инспекция (Российская и Белорусская)','2025-03-08 08:29:16','2025-03-08 08:29:16','1','1','В налоговую подаю 2 декларации:\n1. УСН (подаю и плачу 1 раз в квартал)\n2. подоходный налог налоговых агентов (подаю 1 раз в квартал, плачу 1 раз в месяц, вместе с выдачей зарплаты). Численность работников у меня 0,08. ФОТ 180 за квартал\n3. Проценты банка тоже отражаю в декларации и тоже плачу с них налоги\nИ заполнить книгу.\n\n\nЧтобы исправить декларацию надо создать новую и поставить галочку \"признак внесения изменений\" и отправить ее.\n\nПлачу зарплату 2 раза в месяц. Налоги плачу именно с зарплаты, с аванса не надо\n\nТелефоны:\n8 017 229-79-79 - техподдержка\n8 017 365-43-48 - консультации\n8 017 379-57-92 - инспектор\n\nВход в личный кабинет: https://lkfl.portal.nalog.gov.by/en/esifuyl\nвходить с помощью ЕС ИФЮЛ',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://nalog.gov.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('33e2392e-94c6-df62-67f5-67c49bd4b745','Беларусбанк','2025-03-02 17:53:06','2025-03-02 17:53:06','1','1','Филиал \"БЕЛЖЕЛДОР\" У них открыт счет и клиент-банк\n\n+375 17 218 84 31\n\nПосле получения оплаты я заполняю бланк \"сведения\" в клиент банке в течение 7 дней. Мой исполнитель по этой теме Шимкова Ольга Вячеславовна(все вопросы к ней).\n\n\nПокупать валюту (рос. рубли и доллары) можно без спецвалютного счета. Можно купить валюту сразу при отправлении платежа (напр с белорусского счета купить доллары и отправить на Украину). Но делать это все надо через исполнителя.\nВалюту меняют с 9.00 до 15.00\n\n--------------------------------------------------------------------------------\nВ ЦБУ №527 ОАО «АСБ Беларусбанк» изменились контактные номера телефонов. 8017 373 22 92, 8017 375 31 16.\n\n\n\nДЛЯ ООО\nЕсть корпоративная карта с нее могу снимать деньги на хозяйственные нужды. Коммиссия банку нулевая (но все расходы надо подтверждать чеками для налоговой)\nЗарплату перечисляю на карту зарплаты ИП (комиссия банку 0,3% от суммы)\n\n\nМОСТ (поудалять информация об ИП и добавить все что надо по ООО)\nhttps://most.belarusbank.by/partners/192493247\nhttps://belarusbank.by/ru/33270/1680/32404/32656/192493247\nhttps://belarusbank.by/ru/33270/1680/32404/32656/193630179\n\nПроценты на остатки по счетам зачисляются на счет в белорусских рублях',0,'1','Provider','Finance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://belarusbank.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('34cf4eb2-571d-259e-19ef-67d5f17f593e','Центр Юнити','2025-03-15 21:32:45','2025-03-15 21:32:45','1','1','Бизнес консультирование',0,'1','Customer','Consulting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://vk.com/centreunity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3ef910d5-5a1f-5120-e01f-67cbf9e6c358','МетаЭра','2025-03-08 08:00:27','2025-03-08 08:00:27','1','1','Бухгалтерия юристы - онлайн сервис',0,'1','Customer','Consulting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://meta-era.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3fc241d5-44db-8dd6-7c3e-67cb234a2a06','ГК Техиндустрия','2025-03-07 16:49:21','2025-03-07 16:49:21','1','1','',0,'1','Customer','Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://aspect-bez.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4237080c-2bb1-ecaf-cb19-67c76317d084','БелЭЗ','2025-03-04 20:31:08','2025-03-04 20:31:08','1','1','Контора по эксплуатации зданий от ГХУ',0,'1','Provider','Utilities',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://belez.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('42e50070-836f-8844-ba64-67ccb3814af9','Росквартал (Борис Валит)','2025-03-08 21:13:35','2025-03-08 21:13:35','1','1','Борис Валит из Петрозаводска. Они делают портал для ЖКХ Росквартал. МОжет это их основной проект, а может и нет.\nМожет есть еще что-то\n\nянварь 2025 - Поговорили с ним по двум направлениям:\n1. Фронтенд для росквартала. ДЕлаем разовый проект, потом планируется долгосрочное сотрудничество\n2. По финансированию проекта турмеддрайвер. Послушал, сказал, что таких много и скорее всего интересно не будет. Но сказал, что готов рассмотреть проект',0,'1','Customer','Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://roskvartal.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('45f22804-af09-a325-dc13-67cbfd1e69d2','Министерство антимонопольного регулирования и торговли','2025-03-08 08:21:10','2025-03-08 08:21:10','1','1','К ним только если закупка проводиться за счет средств госбюджета и я считаю что не справедливо.\n\nЕсли за счет собственных средств (постановление 229 от 15 марта 2012г), то\nТолько по поводу тендера, по поводу его исполнения только в суд или к заказчику или жалоба в госконтроль или в милицию.\nhttp://www.bsu.by/Cache/pdf/418233.pdf\nТел 8 017 200-91-31\n\nКАК ПИСАТЬ ЖАЛОБУ:\nhttp://www.mintorg.gov.by/index.php?option=com_content&task=view&id=2873',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://mart.gov.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('48900258-8f09-f318-9c96-67cb249fcf32','ГХУ Аренда','2025-03-07 16:54:03','2025-03-07 16:54:03','1','1','Можно у них арендовать офис. Помещение по всей стране и по всем районам Минска',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.bc.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('4b26305c-ece5-38bb-0578-67ccb2e3d9e3','Постоянный комитет Союзного Государства','2025-03-08 21:11:03','2025-03-08 21:11:03','1','1','Это исполнительный орган Союзного Государства.\nВ основном они ведут всю текущую работу. Можно к ним обращаться, если надо что-то спросить или попасть куда-то в рамках Созного государства.\nУ них можно разместить информацию на портале',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://soyuz.by/postoyannyy-komitet-soyuznogo-gosudarstva',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('507e5c80-13ad-a05a-a6f6-67ccbf1e45c9','Международный институт управления и предпринимательства','2025-03-08 22:07:44','2025-03-08 22:07:44','1','1','Сотрудничают с НИИ ЭКОНОМИКИ (у нас в Минске такое есть)\nРектор:\n- Институт участвует в международный программах стартапов (можно предложить менторство)\n- Можно дешево получить швейцарский диплом онлайн\n- Можно ездить в зарубежные программы повышения квалификации\n- Можно сделать международную программу повышения квалификации у нас (на моем предприятии) через ИУП, у них есть лицензия\n\nДекан факультета повышения квалификации:\n- Преподают ИТ в госструктурах (в ЖКХ у них вроде как есть выходы)\n- Им нужны лекторы и студенты (предположительно нужны семинары мои)\n\nПервый проректор (8029 638-17-35 Екатерина Олеговна):\n- Развивают промышленный туризм. Можно как турист учавствовать (кататься на БелАЗе) и как специалист (узнавать как работает предприятие)\n\nОлег Владимирович Сиваграков (зав отделом науки)\n- Спросить у него можно ли заказать экономическое исследование (например исследовать экономику какого-то региона, области и т.п.)',0,'1','Partner','Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.imb.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('534967b2-8330-3b55-1bac-67bf512ef1d1','APE SREDA (ОМСК)','2025-02-26 17:37:52','2025-02-26 17:37:52','1','1','Обслуживаем платформу\nЕще говорил по поводу сотрудничества в области CRM и в области мелких сайтов и дазайна (Сайты маленькие - постоянно, дизайн (возможно), ЦРМ как для НКО).\nВернуться к этому разговору позже не раньше лета 2025 года.\n\nДиректор Татьяна Федянина\nОбщаемся с ее помощницой Елизаветой через телеграмм',0,'1','Customer','Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://apesreda.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('55395c55-d06b-42c0-d8e9-67c452d67ac2','БАМАП-ВЕДЫ','2025-03-02 12:44:50','2025-03-02 12:44:50','1','1','Учебный центр ассоциации БАМАП\nУчебный класс: 2 этаж аудитория 201',0,'1','Customer','Shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bamap-vedy.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('589936db-6fa6-6ec0-0ac5-67c75f2729b1','Белорусская торгово промышленная палата','2025-03-04 20:17:57','2025-03-04 20:17:57','1','1','БелТПП. Может помочь только со связями с посольствами выставками, бизнес-миссиями, деловыми советами, защитой от госорганов и доступом на рынки. Их стратегия написана в приоритетах https://www.cci.by/o-palate/strategicheskiy-plan/ Смотреть на них и решать где я смогу встроиться в их стратегию.\nУ них более чем 900 соглашений в более чем 100 странах мира. Есть 4 профильных комитета 24 деловых совета с зарубежными странами\nЦентр делового образования. Можно попробовать предложить свой семинар провести по ИТ ли по документообороту. ПРЕДЛАГАЛ. ЗНАЮТ ПРО МЕНЯ\nМожно добавляться в реестр добросовестных партнеров\nМожно писать в меркурий\nЗа 2023 год только на одном мероприятии был\nПосмотреть 2024 год, если ничего не будет - можновыйти из палаты. Они в основном работают с Товарами и с Крупными предприятиями\nЗа 2024 год есть много мероприятий от Бел ТПП в основном спикером или бизнес миссии подходящие. Обратили на меня внимание, поднял статус, помогли мне, предложили интересные бизнес миссии . Держат марку',0,'1','Other','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cci.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('61df3b03-929d-a671-ba87-67a363a4af6d','Test','2025-02-05 13:09:22','2025-02-05 13:09:22','1','1','test',0,'1','Customer','Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'localhost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('72229271-79e6-6e0a-2c96-67c401f54a47','Mitto AG','2025-03-02 06:59:47','2025-03-02 06:59:47','1','1','Компания Ильи Горелика, которая отправляет СМС. У меня стоит оборудование.',0,'1','Customer','Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://mitto.ch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7ffeaef0-9612-b41f-f952-67d7f1ddd765','МТС','2025-03-17 09:55:29','2025-03-17 09:55:29','1','1','У них у меня оформлен телефон. Я их клиент',0,'1','Provider','Communications',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.mts.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8211660d-a8c1-fe79-67b8-67cbf7dd235b','Комплето','2025-03-08 07:54:54','2025-03-08 07:54:54','1','1','Веб студия из Москвы. Договорились на сотрудничество по партнерсокй программе\nКомплето Клуб https://club.completo.ru\nУсловия сотрудничества: 1-2 лида в месяц с бюджетом 250 000 - 1 000 000 RUB. Я им отдаю 15% от контракта (от всех платежей клиента)',0,'1','Partner','Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.completo.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('834ed6dc-4c0c-98f8-b4f5-67ccbd080554','ТутПластМет','2025-03-08 21:59:54','2025-03-08 21:59:54','1','1','Продают ящики и другое для заводов',0,'1','Customer','Retail',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://plastmet.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('86935516-36ca-2d4a-9c26-67bde84030ad','ActiveCloud','2025-02-25 15:58:05','2025-02-25 15:58:05','1','1','По поводу российской лицензии на телематические услуги связи писать в российское отделение на почту sales Если не ответят, то пробовать еще раз через Наталью Шемет\n\nМожно с ними делать совместный PR. Они работают примерно с 50-ю изданиями. Что-то бесплатно, что-то платно. Можно сделать пресс-релиз, когда сделаю проект ЖКХ (они вроде согласны)\n\nРегистрировать клиентов в Беларуси на почту sales@activecloud.by Указать номер кабинета партнера и они ко мне его привяжут сами.\n\nКак партнер получаю оплаты за хостинг постоянно и за домен один раз, от тех клиентов, которых привожу.\nДомены су и ру можно к ним перенести.',0,'1','Partner','Telecommunications',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.activecloud.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8b87f1d3-eec8-bbe0-3e2e-67cc567d4d0d','Партия ЛДПБ','2025-03-08 14:39:05','2025-03-08 14:39:05','1','1','Что можно делать:\n- предалгать инициативы законов\n- защищаться от произвола\n- заводить бизнес-контакты\n\nОбязательства:\n-ходить на их мероприятия (встречи, субботники, вечера помощи и т.п.)\n\n\nИТОГИ ВЫБОРОВ 2024 (СРОК ПОЛНОМОЧИЙ 5 ЛЕТ)\nГайдукевич Олег Сергеевич - Совет Республики\nПалата представителей:\n+Витебская область - Балыш Андрей Иванович\n+Могилевская область - Приходько Оксана Игоревна\n+Гомельская область - Уткин Виталий Юрьевич\n\nМестные советы:\nОсосков Александр Игоревич - председатель Брестской областной организации ЛДП, член Центрального комитета ЛДПБ;\nТепляков Игорь Петрович - председатель Витебской областной организации ЛДПБ, член Центрального комитета ЛДПБ;\nПоздняков Евгений Борисович - председатель Оршанской районной организации ЛДПБ, член Центрального комитета ЛДПБ;\nРоманьков Владимир Владимирович - заместите председателя Витебской областной организации ЛДПБ;\nЛободырев Александр Иванович - председатель Могилевской областной организации ЛДПБ, член Центрального комитета ЛДПБ.\nПакуль Галина Станиславовна - председатель Лидской районной организации ЛДПБ;\nОсосов Сергей Борисович - председатель Мостовской районной организации ЛДПБ;\nБолондзь Андрей Станиславович - председатель Ивьевской районной организации ЛДПБ.\n\n\n\nЕсть в Беларуси парламентский клуб. Он не связан с партией. Там руководитель Саввиных\nВот информация: https://house.gov.by/ru/interview-ru/view/v-belarusi-sozdan-otkrytyj-klub-parlamentskij-meridian-6374/\n\n\nДЕПУТАТЫ МОЕГО ОКРУГА\nПалата Представителей - Мирончик-Иванова Анастасия Сергеевна - беспартийная (Дзержинский выборный округ)\nМестные советы - Медведев Сергей Владимирович - беспартийный (Куприяновский выборный округ)\n\n\nНОВАЯ КОНСТИТУЦИЯ 2022 ГОДА\nОбновленной Конституцией сохранена президентская форма правления с перераспределением полномочий Президента, парламента и правительства исходя из их конституционных функций: в определенной мере ограничены полномочия Президента в законотворческом процессе - исключено право Президента издавать декреты как законодательные акты; правительство наделено дополнительными полномочиями в сферах науки и инноваций, государственно-частного партнерства; усилена роль правительства в управлении бюджетно-финансовой сферой государства; расширены полномочия парламента в решении кадровых вопросов и осуществлении контрольных функций.\n\n\nЧТОБ ВЫБИТЬ ГОСЗАКАЗ- МОЖНО ОБРАЩАТЬСЯ В ПАЛАТУ ПРЕДСТАВИТЕЛЕЙ И СОВЕТ РЕСПУБЛИКИ. У НИХ ТАМ ЕСТЬ КОМИССИИ ПО МЕСТНОМУ САМОУПРАВЛЕНИЮ. КРОМЕ ТОГО МОЖНО ОБРАЩАТЬСЯ В МИНСКИЙ ГОРОДСКОЙ СОВЕТ ДЕПУТАТОВ, ТАМ ЕСТЬ КОМИССИЯ ПО СВЯЗИ\n\n\nУ депутатов любого совета или парламента есть сессии. Они проходят несколько раз в год',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://ldpb.by/ru/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8bff4011-b443-a74b-3502-67c762d8af03','Белстат','2025-03-04 20:28:44','2025-03-04 20:28:44','1','1','https://e-respondent.belstat.gov.by/belstat/\n\nПодаю отчеты:\n1МП микро - один раз в год до 1 февраля за предыдущий год (можно подавать после 18 января)\n6 ИКТ - один раз в два года (можно подавать после 18 января)\n12 ВЭС услуги - 1 раз в месяц только если сумма больше 1000 у.е., если меньше - не подаю, подаю только за те месяцы, где больше 1000 у.е.\n\nТелефоны:\nпо 1 МП микро:\n8 017 374-25-89\n8 017 326-44-42\n\nпо 6 ИКТ (все по стране сдают их одинаково, должен сам появиться в программе):\n8 017 348-63-63\n8 017 374-94-15\n\nпо 12 ВЭС услуги (заполнять следующим месяцем, появляется после 8 числа. Они выставляют автоматически, заполнять надо только если был оборот выше 1000 у.е.):\n8 017 356-56-19\n8 017 342-11-12\n\nТехподдержка (им звонить по работе самой программы)\n8 017 371-01-80\nВидеоинструкция: https://www.belstat.gov.by/informatsiya-dlya-respondenta/elektronnaya-otchetnost/elektronnyy-respondent-on-line/videoinstruktsiya-po-rabote-s-veb-portalom-s-ozvuchkoy-vklyuchaya-nastroyku-rabochego-mesta-import-s/',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.belstat.gov.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('8fd8edbb-71e6-25ec-a75e-679cdfbf50cc','1С-Битрикс','2025-01-31 14:32:36','2025-02-22 10:54:39','1','1','Я их партнер. НЕ могу продавать лицензии ниже, чем в их прайсах.\nПартнер ID 4662097\nhttp://www.1c-bitrix.by/about/contacts.php#tab-info-link\n\nКонтактная информация офиса\n«1С-Битрикс» в Республике Беларусь\n\n\nE-mail: Belarus@1c-bitrix.by\nТелефон:\n+375 (44) 524-24-24\nВремя работы:\nс 9.00 до 18.00\nВыходные:\nсуббота, воскресенье\nПочтовый адрес: Республика Беларусь, 220035, г. Минск, пр-т Победителей, д.59, офис 410, ИУП «1С-Битрикс»',0,'1','Partner','Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://www.1c-bitrix.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('a69c2bc7-060c-b782-7a72-67c402d669d2','SensationCLICK','2025-03-02 07:02:46','2025-03-02 07:02:46','1','1','',0,'1','Customer','Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://sensationclick.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('a86cae20-22f7-c978-70bc-67c75feeea5b','Белгосстрах','2025-03-04 20:15:50','2025-03-04 20:15:50','1','1','взнос 0,6% от начисленной зарплаты (от всей, которая начисляется до вычета налогов)\n1 раз в квартал плачу взносы\n1 раз в год подаю отчет до 25 января (за предыдущий год). Подаю через портал Белгосстраха: https://reporting.bgs.by/\n\nКонтактных лиц и инспекторов у них нет. Есть телефоны по которым звонить и они все скажут\n\n8 017 243-70-41\n8 017 234-90-42\n8 017 234-90-43',0,'1','Other','Insurance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bgs.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('a90d38b0-db8c-ff3a-3340-67cc55a41073','ОФС-экспорт (Рикманс, Нимарис)','2025-03-08 14:34:09','2025-03-18 09:08:08','1','1','Логистическая контора.\nВот еще их некоторые имейлы:\nkresszn@gmail.com\nlegal@rickmans.by\nassistant@rickmans.by',0,'1','Customer','Shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://ofs-export.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('b0569f60-8626-ec9a-90a5-67ccb76990fe','Сигнас','2025-03-08 21:32:14','2025-03-08 21:32:14','1','1','ТЕХПОДДЕРЖКУ ДЕЛАТЬ НЕ ПЛАНИРУЮТ. ДЕЛАЕМ СВОЙ ФРОНТ РАБОТЫ И ПРОЩАЕМСЯ',0,'1','Customer','Retail',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://signas.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('b1d6205a-eebc-e565-286c-67c75e98e7f6','Беларусское радио','2025-03-04 20:09:45','2025-03-04 20:09:45','1','1','Это холдинг. Радио БЕЛАРУСЬ (международное) и РАДИО СТОЛИЦА - это их подразделения',0,'1','Press','Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://radio1.by/ru/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('b94c87e7-7a61-2373-aa86-67ccbc56382d','Телеканал БТ','2025-03-08 21:52:39','2025-03-08 21:56:03','1','1','Можно попасть на БТ через отдел экономических новостей',0,'1','Press','Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://news.by/televidenie/belarus-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('b9ab24c0-4de4-06b3-f0e1-67c22f03e315','IGROW','2025-02-28 21:50:30','2025-02-28 21:50:30','1','1','Вот суть IGROW:\nhttps://probusiness.io/special_project/7812-lyudi-mechtayut-o-svobode-i-ona-v-predprinimatelstve-zachem-krupnyy-gosbank-zapustil-set-khabov-dlya-biznesa.html\nТ.е. помимо семинаров с ними можно рабоать по следующим направлениям:\n1. Они могут свести с производственными предприятиями в регионах, которым нужны ИТ- услуги и которым нужно обучить пользоваться им своих специалистов.\n2. Могут свести с фермерами и сельскохозяйственными предприятиями.\n3. Можно работать по изменению законодательства о венчурном финансировании. Они этим занимаются и ищут проекты\n\nЕсть соглашение с ними. У них есть помещения-коворкинги по всей стране, они бесплатные и можно через них проводить мероприятия.\nОни могут собрать аудиторию (делают рассылку по базе клиентов и по своим другим источникам). С ними можно работать по регионам, у них везде есть коворкинг центры\n\n\n08.07.24 - Созвонились с Татьяной, поговорили и сделали выводы. Договорились делать по областным центрам. Она сказала, что можно сделать вебинар с урезанной версией информации, посмотреть откуда кто зарегистрируется, а потом когда будет понятно кто откуда - делать платный семинар на месте. Договорились делать осенью или в следующем году. (можно вебинар на осень, а семинары планировать на следующий год) вебинар делать такой же как делали (только отбирать предприятия по критериям), а когда поеду - подробнее все платно говорить им с демонстрацией примеров и результатов.\n\n\n\nСсылка на кабинет с мероприятием: https://bezkassira.by/organise/\n\n\nОРГАНИЗАЦИИ ДЛЯ РАССЫЛОК:\nhttps://komlev.by/index.html Говорил с ними. Все нормально. все можно 255 р рассылка, еще можно сделать обзвон\nhttps://bezkassira.by/contact/ все будем делать через них. Самые лучшие условия.\n220 BYN рассылка на 15000 контактов (это именно база бизнес контактов)\nМожно оформить туром все мероприятия и сделать разовую рассылку. Делать одну афишу на все города сразу с датами\n\n\nПОГОВОРИТЬ С ТАТЬЯНОЙ, ЧТОБЫ РАЗРЕШИЛА ПОЛЬЗОВАТЬСЯ ИХ КОВОРКИНГОМ НА ШАРАНГОВИЧА',0,'1','Partner','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.belapb.by/malomu-i-srednemu-biznesu/ekosistema-belagroprombanka/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('bcbb402e-4f63-820d-9eab-67c499b3a109','БГУ (Факультет радиофизики и компьютерных технологий)','2025-03-02 17:48:36','2025-03-02 17:48:36','1','1','У них всего 4 курса, после третьего нет практики (только если студенты сами захотят). Производственная практика есть на последнем 4-м курсе. Сказала, что могут ко мне кого-то отправить.\n\nРаспределение студентов - 28 апреля\n\nПрактикой и распределением занимается Елена Сергеевна Григорчук (дальше общаться с ней)\nНомер телефона: +375 33 602-44-54\nПочта: grigorchuk.elena@gmail.com',0,'1','Partner','Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://rfe.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('be097ac4-fbfd-0c97-27c8-67cbf4befdd5','Евразийская Экономическая Комиссия','2025-03-08 07:39:38','2025-03-08 07:39:38','1','1','Можно писать жалобы. Можно решать серьезные вопросы через них',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://eec.eaeunion.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('c6a69114-5cd7-3536-8ac3-67c22201a00e','CerPrize','2025-02-28 20:55:31','2025-02-28 20:55:31','1','1','Подразделение РАББИСЦЕР',0,'1','Customer','Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://www.cerprize.org',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('d23816c7-f3ce-7775-a284-67cbf6f076c5','ИООО «ЛУКОЙЛ Белоруссия»','2025-03-08 07:49:47','2025-03-08 07:49:47','1','1','Покупаю топливо',0,'1','Provider','Chemicals',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://lukoil.by/ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('d48822e9-1af8-f46d-52bc-67ccbbcfdbf5','СПАМАШ','2025-03-08 21:48:15','2025-03-08 21:48:15','1','1','У них несколько направлений бизнеса. Я делал сайт для одного направления',0,'1','Customer','Machinery',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://spamash.ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('d5d10a43-d222-dbf7-2a1a-67ccbe5b5e3d','ФСЗН Фрунзенского района','2025-03-08 22:03:18','2025-03-08 22:03:18','1','1','Отчеты:\nПУ-1 при создании новой страховой карты работника или изменении данных в ней\n\nПУ-2 - при приеме на работу (любого сотрудника и себя в том числе). Если надо сделать зеленую карту, то ПУ-2 достаточно. Карту делают 10 дней\n\nотчет 4 фонд и ПУ-3 - 1 раз в квартал обязательно до 20-го числа\n\nсначала подаю отчет 4 фонд, потом плачу взносы, а потом через два дня, когда оплата прошла подаю ПУ3 (ПУ3 подается по каждому человеку, а отчет 4 фонд по общей сумме)\n\nОтчет 4 фонд подаю через портал http://portal.ssf.gov.by/mainPage/\nПУ-3 подаю через программу на компьютере\n\n215-29-19, 215-29-21 ФСЗН заполнение ПУ-3 помогают, Отчет 4 фонд не помогает никто, если крайний случай, то помогает техподдержка\n\nВ январе за предыдущий год подаю пояснительную записку.\n\nОтчет 4 фонд\nЗаполняется с нарастающим итогом с начала года. Строка 6 - ФОТ с начала года, Если оно правильно, тогда должно быть правильно в строке 11 - это тоже с начала года.',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://ssf.gov.by/ru/min-gor-ru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('d67f84e4-6670-252d-0aec-67ccbc6e0e19','Тестовый','2025-03-08 21:55:21','2025-03-08 21:55:21','1','1','Тестовый контрагент. Для добавления в сделки',0,'1','Customer','Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://sky-soft.su',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('e98cc65a-212d-d34d-d56b-67ccb14ae90b','Посольство Беларуссии в России','2025-03-08 21:06:59','2025-03-08 21:06:59','1','1','Есть сеть офисов в России, через них можно более эффективно решать вопросы',0,'1','Other','Government',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://russia.mfa.gov.by/ru/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ea2a938e-8525-cfab-b48d-67cb26018bc1','Дом Прессы','2025-03-07 16:59:46','2025-03-07 16:59:46','1','1','Контактные телефоны:\n+375-17-311-16-24,\n+375-17-311-16-33,\n+375-29-895-55-58.\n\nЕ-mail: public-pc@mail.ru',0,'1','Press','Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.dompressy.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ecaf1628-28a5-a360-a717-67c454b4e567','БГТУ','2025-03-02 12:51:36','2025-03-02 12:51:36','1','1','Универ, в котором беру студентов.\nПроцесс такой: Пишу Наталье на почту кто и под какие задачи нужен - она ищет студентов, которые подойдут и отправляет на практику.',0,'1','Partner','Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.belstu.by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ed5c93a9-4349-a23f-df69-67c4012e1d82','Institute for Freedom of Faith & Security in Europe (IIFSE)','2025-03-02 06:58:11','2025-03-02 06:58:11','1','1','',0,'1','Customer','Not For Profit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.iffse.eu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
INSERT INTO `accounts_contacts` VALUES ('aa7e3881-24f9-6312-30c5-67bc3fe9ecac','a36123d0-036d-192c-d9db-67bc3f3e4264','61df3b03-929d-a671-ba87-67a363a4af6d','2025-04-02 17:06:35',1);
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('61df3b03-929d-a671-ba87-67a363a4af6d',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('10209b5d-ee72-f284-8186-678644d0b804','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SecurityGroups','module',89,0),('102a4663-639e-efdb-f4b5-6786443a7d00','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Contracts','module',90,0),('103943be-0fd6-7919-0fe0-678644a99b7b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','EmailMarketing','module',90,0),('11a7821f-2564-1501-b9bd-678644d45ecd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','EmailMarketing','module',90,0),('11aced96-2a7c-8378-851b-678644528cf6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Contracts','module',90,0),('11ce30ea-763a-0974-b0cf-6786443eb683','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SecurityGroups','module',90,0),('130dc6e8-3080-675c-5100-6786442e3cd2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','EmailMarketing','module',90,0),('131f0c09-9f39-f73b-cf86-678644ca6cf2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Contracts','module',90,0),('135605f1-e6f1-a664-f900-67864470967c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SecurityGroups','module',90,0),('13740ba2-f22f-e835-6494-6786449815f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Emails','module',90,0),('137b3aa7-154d-f8b7-c1ef-6786447629b3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Project','module',89,0),('1484b9e2-23e4-acaf-f60e-678644127e41','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','EmailMarketing','module',90,0),('1487507a-df41-412f-96ea-678644ddf8ea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Contracts','module',90,0),('14ff3397-1b93-2030-a698-67864474c0f7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SecurityGroups','module',90,0),('15460b97-9ecf-b88d-0dfa-678644d38eaf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Project','module',90,0),('15f8891c-0bed-706a-6278-678644be48e3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOP_Case_Updates','module',89,0),('15fd23d3-0d0b-a97a-833c-67864471776e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','EmailMarketing','module',90,0),('168cfa47-86a3-c6f5-5cfd-6786447248fe','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SecurityGroups','module',90,0),('16c75c51-c26f-a3eb-af7f-678644a7b56e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Project','module',90,0),('1773f0a8-0193-f3e4-5504-678644769b72','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','EmailMarketing','module',90,0),('1799a16e-2a19-e25f-ed31-678644606225','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOP_Case_Updates','module',90,0),('1805b624-d559-3f71-6fb1-6786446c8fae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SecurityGroups','module',90,0),('1831e5f8-843f-475d-be24-678644a3bca8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Project','module',90,0),('1907b155-c0d3-668a-55d9-67864468a8ff','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOP_Case_Updates','module',90,0),('197581be-a423-a480-61c4-678644aba250','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SecurityGroups','module',90,0),('19921563-c084-eb9e-38d5-6786449f6a9c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Project','module',90,0),('1a7728d4-ff6e-3d57-5e47-67864476b8ee','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOP_Case_Updates','module',90,0),('1ae3b8d4-88d6-f96b-2227-678644b2a708','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SecurityGroups','module',90,0),('1af8119a-4452-e0c5-3260-6786441029f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Project','module',90,0),('1bc3380c-f258-994b-612e-6786445bfeba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','EAPM','module',89,0),('1bf1ccde-0c92-2e52-ca4d-678644dd18f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOP_Case_Updates','module',90,0),('1c68fc75-971c-ef60-2e05-678644984935','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Project','module',90,0),('1d5697c0-e7a0-3c2a-5c26-6786448f5a29','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','EAPM','module',90,0),('1d67fe3b-8c4f-ef3a-a74b-678644ae1d6c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOP_Case_Updates','module',90,0),('1dd29e26-3051-cab0-1b57-67864420676d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Project','module',90,0),('1e0116b0-c3ee-ac54-2bb2-6786449d479b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Documents','module',89,0),('1eb77108-ec55-4059-8e5f-67864490c226','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','EAPM','module',90,0),('1edfa9dd-6ce5-d8ab-4aa1-6786443165e9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOP_Case_Updates','module',90,0),('1fa4a52a-e071-9acb-3cdb-67864488f8e3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Documents','module',90,0),('20256407-1fb4-14b5-6501-6786447d801d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','EAPM','module',90,0),('202e3a09-9dc0-79c1-3cb2-678644f2dbcb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Maps','module',89,0),('205149d3-beee-5b2f-240a-678644eda994','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOP_Case_Updates','module',90,0),('21286653-e0f0-7376-d8d9-6786445b66cd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Documents','module',90,0),('21d26e9f-0373-4bc9-9dc6-678644a960c8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Maps','module',90,0),('21d91c6a-79e0-1a85-afc8-678644af815d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','EAPM','module',90,0),('21e1021d-993d-4e32-9e94-67864421a179','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOK_KnowledgeBase','module',89,0),('229a8850-0944-397c-c220-6786443afc3e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Documents','module',90,0),('2311e5f9-1d88-bb2e-393f-6786443b9621','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Leads','module',89,0),('235fd35d-6ad9-06f7-2f78-6786441550c4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','EAPM','module',90,0),('2362a018-c0ed-f2c8-6fb8-678644c225dc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Maps','module',90,0),('23891480-ff46-5c7b-e7de-67864474a694','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOK_KnowledgeBase','module',90,0),('24064f38-2866-a691-34f4-6786448917d9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Documents','module',90,0),('2446d688-0e21-4b70-deab-67864460b413','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyResponses','module',89,0),('24dd9c22-65a2-f066-86b9-678644c0f34b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','EAPM','module',90,0),('24f69fc9-e139-304c-fffa-678644dc71f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Maps','module',90,0),('250003a4-20a4-53f3-6003-678644206b2c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOK_KnowledgeBase','module',90,0),('25416555-cb44-4407-4e3b-678644ece3bc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Leads','module',90,0),('25738709-5c5e-bae5-bf53-678644ed4fab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Documents','module',90,0),('2615cd95-7642-4a6f-4234-6786445da8a4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyResponses','module',90,0),('26548b35-65c2-9685-54de-678644b9e694','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','EAPM','module',90,0),('266b34e6-c63d-4295-7ccc-67864486b598','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOK_KnowledgeBase','module',90,0),('26743825-e603-a1da-c3de-6786446e28a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Maps','module',90,0),('26ddabf9-3142-8d00-cbea-6786441c395b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Leads','module',90,0),('270a9a2d-e55a-a7a4-28ce-6786448131c3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Documents','module',90,0),('27a1819a-e849-3a5b-8361-678644cc1f8f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyResponses','module',90,0),('27dc8ae2-6a55-4539-c739-678644872dc4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOK_KnowledgeBase','module',90,0),('280b3b63-26ad-217f-7245-678644804183','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Maps','module',90,0),('28521e5d-235b-9313-662c-678644f411db','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Leads','module',90,0),('288509bb-ab16-f4bf-c399-678644306d11','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Documents','module',90,0),('29302266-da8f-c9ee-ca4c-678644cf53ae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyResponses','module',90,0),('294ba4c4-ba1d-2579-2301-67864497421a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOK_KnowledgeBase','module',90,0),('298e77cc-bb1d-5338-545f-6786448b87a1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Maps','module',90,0),('29da0a4b-1b34-58c8-4f50-678644ee5af2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Leads','module',90,0),('2a2aed84-b717-4035-a6fb-6786447ba2f7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Opportunities','module',89,0),('2aae6b98-76ea-cea4-d1e7-678644a8a909','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyResponses','module',90,0),('2ae0d18c-fa94-52d5-51b7-6786446c7d0d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOK_KnowledgeBase','module',90,0),('2b146800-5037-7b14-f722-67864423ff99','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Maps','module',90,0),('2b382010-0928-27ee-c476-678644cef48c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Leads','module',90,0),('2b560515-ca7c-4e9a-add4-6786447d840d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Emails','module',90,0),('2bbf0746-22b3-a029-8dc8-678644a84d05','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Opportunities','module',90,0),('2c248f4a-2d44-adcf-d16c-6786448e9084','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyResponses','module',90,0),('2c5420a5-1d7a-83d5-168d-678644a0b831','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOK_KnowledgeBase','module',90,0),('2c95c204-cb11-7e9e-ebfe-678644cddea1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Leads','module',90,0),('2cbeeceb-3d00-5b82-e067-678644601bda','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Meetings','module',89,0),('2d52df0a-9217-ad13-5873-678644aaedc4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Opportunities','module',90,0),('2d9ed0e6-5070-eddd-9665-678644966f09','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyResponses','module',90,0),('2e0eaca1-6941-589a-6a8f-678644553ec9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Leads','module',90,0),('2e4c99ea-e472-5ddb-e62c-678644bed669','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Meetings','module',90,0),('2ed4afd2-9a82-19a4-f145-67864451bd7d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Opportunities','module',90,0),('2f097045-f57b-c551-b197-67864499f505','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyResponses','module',90,0),('2fbd9c00-e898-9367-d801-678644ea99d0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Meetings','module',90,0),('3039b46b-61a7-fc5c-352e-678644b68dea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Opportunities','module',90,0),('312148c7-9dc2-1fde-97d2-678644a8d72a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Meetings','module',90,0),('31a3715e-2390-d24a-d8d8-678644720721','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Opportunities','module',90,0),('328c609e-55b9-20d5-bf4b-678644b6b2d8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Meetings','module',90,0),('330ae2b5-5c3b-ad57-b781-6786440d3292','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Opportunities','module',90,0),('340e98b4-5252-6526-fa0b-67864423ed82','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Meetings','module',90,0),('34918caf-387d-f205-4ffa-67864455e3e3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Opportunities','module',90,0),('357e1bc2-4721-f310-095a-678644b51810','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Meetings','module',90,0),('36e83883-7012-f00a-8f4e-6786441eff5c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Meetings','module',90,0),('3bcecf8a-f4ae-3a93-ef13-67864439c7ec','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Invoices','module',89,0),('3cf97575-b89b-99d4-9caa-67864463b2c8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ProjectTask','module',89,0),('3d883e82-d91e-d05d-56a3-678644067a5d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Invoices','module',90,0),('3e7fa7c6-4175-0543-c937-678644d2be6c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ProjectTask','module',90,0),('3f008403-987d-aeb8-03d4-6786447ec078','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Invoices','module',90,0),('3f526803-3869-04de-92d7-678644c37d72','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','OutboundEmailAccounts','module',89,0),('3ff6ef71-b907-6b4f-f9e9-678644237102','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ProjectTask','module',90,0),('400581d9-a2f5-516c-3c12-67d43bcfe492','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','access','planK_Planning','module',89,0),('40909ec6-ec58-5eef-efcd-678644eae05c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Invoices','module',90,0),('40f8c904-ff32-c0ad-22f3-6786441e330b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','OutboundEmailAccounts','module',90,0),('41550cd4-9022-0514-8d24-678644514cd5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ProjectTask','module',90,0),('41f30098-6017-8477-9315-6786445ce5be','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Emails','module',90,0),('41f89a7d-20a8-618d-5703-678644759659','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Invoices','module',90,0),('428aaa78-0995-59e0-7f1b-678644ee62ae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','OutboundEmailAccounts','module',90,0),('42af5d15-a55e-ff1a-aba6-678644c93851','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ProjectTask','module',90,0),('4385df4b-21c7-6910-34f3-67864478100a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Invoices','module',90,0),('4403cbfd-de45-a516-4772-678644f3dbe3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','OutboundEmailAccounts','module',90,0),('440e6604-c2a9-b8e7-3e70-678644e02612','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ProjectTask','module',90,0),('441a8abc-9dd7-502c-e1c7-67d43bf3b3c7','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','view','planK_Planning','module',90,0),('44fe8efd-53fc-77f8-6ed9-678644aeaa0a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Invoices','module',90,0),('45754602-8965-f136-40c0-678644d718e0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ProjectTask','module',90,0),('457b4e46-2d3f-6181-8049-67864460d928','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','OutboundEmailAccounts','module',90,0),('45d14ca8-a3b3-bc7c-6564-67d43b6811be','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','list','planK_Planning','module',90,0),('469a7b0f-2f6b-dffa-f338-678644b9a416','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Invoices','module',90,0),('46ddd0e9-d248-39cd-a131-678644268622','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ProjectTask','module',90,0),('46e7f03a-0570-d034-1986-678644f33026','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','OutboundEmailAccounts','module',90,0),('47cdabad-53ca-0483-38c0-67d43b2b1982','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','edit','planK_Planning','module',90,0),('4854eae7-6f41-039f-90b9-678644b18dd6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','OutboundEmailAccounts','module',90,0),('49ac13f0-96e4-dac1-7b25-67d43b68f18d','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','delete','planK_Planning','module',90,0),('4a0866fc-46bb-c219-4115-67864462e1d1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','OutboundEmailAccounts','module',90,0),('4b73c55e-1728-c249-493e-67d43bcfb846','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','import','planK_Planning','module',90,0),('4d637904-3597-acc2-de38-67d43bad75e7','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','export','planK_Planning','module',90,0),('4f403eb8-3edb-4b3e-04a1-67d43bd4ece0','2025-03-14 14:22:43','2025-03-14 14:22:43','1','1','massupdate','planK_Planning','module',90,0),('5072d1f7-e1c5-5538-9590-678644a5402f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Markers','module',89,0),('5192873f-9016-9f7d-5069-678644aad0e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOR_Reports','module',89,0),('51df1c1d-bb12-2539-d018-67864499e969','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Quotes','module',89,0),('523aae00-7e5e-f0df-6bae-678644b4d66e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Markers','module',90,0),('533f1b88-2b29-c8d2-14fa-678644e3c5d7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOR_Reports','module',90,0),('536afd0f-c624-84ba-5a34-678644b7626a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Surveys','module',89,0),('5375cf50-6b60-e2c8-ad2c-6786447937c3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Quotes','module',90,0),('53be5f34-4513-73a3-386b-67864414485e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Markers','module',90,0),('54d63818-2449-5468-29aa-67864431b10b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOR_Reports','module',90,0),('54e80ee1-e535-d97a-33b8-678644ae21de','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Quotes','module',90,0),('550b03e6-cad8-f3f0-baf9-67864422735d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Surveys','module',90,0),('55303849-d5f5-2dca-9a14-678644dbfcad','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Markers','module',90,0),('56500711-b97d-7568-38e2-678644dabef3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Quotes','module',90,0),('569e16ca-4746-ef5e-b231-67864452c994','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Surveys','module',90,0),('56a2f794-b240-5727-faa3-678644c984e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOR_Reports','module',90,0),('56c02d17-9d59-10f2-2506-678644bcc94c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Markers','module',90,0),('57bea2f5-9406-4dec-521f-678644af17fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Tasks','module',89,0),('57cdbfda-54da-9255-a94e-6786444888f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Quotes','module',90,0),('58266a33-5d9e-b4f6-ff2a-678644859956','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Surveys','module',90,0),('582893e2-0895-301b-5185-678644107b4e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Markers','module',90,0),('582e67c1-7d10-40f4-6b83-6786440f9dfe','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOR_Reports','module',90,0),('5944319e-cd26-5ecb-612e-67864445d2f6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Quotes','module',90,0),('5962f3c4-1c7c-9a4e-dbe1-67864434551b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Tasks','module',90,0),('599c8652-349f-efbf-e5aa-678644007396','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Markers','module',90,0),('599d01f7-943d-9fa8-e1e2-678644c9f04c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Surveys','module',90,0),('59c80f9d-b006-9aee-3b80-678644cb7134','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOR_Reports','module',90,0),('5ac0eeba-7c66-68c0-c350-67864414e1f2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Quotes','module',90,0),('5b00c00d-81c6-4b1c-6924-678644800843','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Tasks','module',90,0),('5b120cfd-928c-cafc-16ae-678644e4d14f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Markers','module',90,0),('5b2e9c1f-4939-29c3-2cfc-678644bf00b9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Surveys','module',90,0),('5b3ceceb-52af-5ff3-14dd-678644f065ba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOR_Reports','module',90,0),('5c3afb72-bf96-132b-9a91-67864481880b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Quotes','module',90,0),('5c810a4e-d831-f35a-e37e-678644694d42','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Tasks','module',90,0),('5c9ead8c-a1b9-ebab-f047-6786445796a0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Surveys','module',90,0),('5cbe7c15-e514-8ffb-5069-678644f35a82','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOR_Reports','module',90,0),('5df7c5ad-d42c-c8b2-efb3-678644227cfa','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Tasks','module',90,0),('5e21c8a3-9c5e-1d98-5107-67864423cb93','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Surveys','module',90,0),('5f61828b-231b-b0d6-44af-678644b328e7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Tasks','module',90,0),('60c8d289-2ce9-9ff7-566b-67864496f1dc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Tasks','module',90,0),('623aa5e6-1be3-18b1-96c5-678644907e68','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Tasks','module',90,0),('6378efd2-d89f-2c44-9d6a-6786442db074','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','EmailTemplates','module',89,0),('652c2d1d-c450-4bb9-7714-678644a29000','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','EmailTemplates','module',90,0),('666b2dd9-f5b9-cda3-de5b-6786440dfa52','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Cases','module',89,0),('66bfc61a-269b-b1b0-e842-678644b385fd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','EmailTemplates','module',90,0),('67a31118-f551-6475-5ef4-678644c7ff72','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','InboundEmail','module',89,0),('67f2ae3b-425e-1d67-cffb-678644302369','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Cases','module',90,0),('68434ad6-dd2f-71c8-3f49-678644adae87','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','EmailTemplates','module',90,0),('6965470d-e41e-9163-c4d2-678644ff29cf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Cases','module',90,0),('696709dd-97b3-e098-e69e-678644c5b794','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','InboundEmail','module',90,0),('69c193e3-8345-14d3-7786-6786445ab944','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','EmailTemplates','module',90,0),('6acd5088-6b99-4ec2-d2db-678644b137c1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Cases','module',90,0),('6adca0eb-aa57-0bd2-3400-678644e497b0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','InboundEmail','module',90,0),('6b45ce51-5839-1829-7d73-678644e46f67','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','EmailTemplates','module',90,0),('6b49ea01-0691-1316-2f23-678644917106','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_PDF_Templates','module',89,0),('6c3b0cc5-1ba4-5e7a-8348-6786446457fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Cases','module',90,0),('6c57b910-cb6c-33cd-bbe4-678644b7a6fa','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','InboundEmail','module',90,0),('6cc1de51-f26c-90b8-4015-678644f895ce','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','EmailTemplates','module',90,0),('6cf34adb-f4be-be6c-72cc-67864484fc38','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_PDF_Templates','module',90,0),('6da1baea-de3d-7a44-96d6-67864469a529','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ExternalOAuthConnection','module',89,0),('6db41c15-2316-3865-d855-678644e155cc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Cases','module',90,0),('6dca600f-333c-0ef5-83f1-678644f59efe','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','InboundEmail','module',90,0),('6e486ad3-e169-1a19-3533-678644774ea4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','EmailTemplates','module',90,0),('6e7b1b58-0735-aeef-7884-678644cfd29e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_PDF_Templates','module',90,0),('6f2dc331-c5d7-2263-da92-67864415c8b9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Cases','module',90,0),('6f4573de-fd40-79ad-7166-6786447f1554','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','InboundEmail','module',90,0),('6f4cf947-5f85-e654-f525-67864401ccab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ExternalOAuthConnection','module',90,0),('6feb85c8-9955-e7c3-7543-678644b335d6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_PDF_Templates','module',90,0),('709f9db6-f099-8c19-3b80-678644e0fe91','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Cases','module',90,0),('70c81f67-4782-375c-9853-678644366439','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','InboundEmail','module',90,0),('70c9580e-d490-82e7-4833-678644557d5c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ExternalOAuthConnection','module',90,0),('7156ad13-ff04-a298-cfca-678644dcaa1c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_PDF_Templates','module',90,0),('7233226c-012e-7030-9872-678644d1a6c5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','InboundEmail','module',90,0),('72580917-0567-7328-3163-678644030f66','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ExternalOAuthConnection','module',90,0),('7269c54d-7571-199c-5fd8-6786448a35b6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Campaigns','module',89,0),('72d409f9-1832-c760-1869-678644edd2a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_PDF_Templates','module',90,0),('739d678b-0cc4-2715-e9bf-6786448d3cb1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AM_ProjectTemplates','module',89,0),('73dfccc9-c567-bd4a-3609-678644ecdda8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ExternalOAuthConnection','module',90,0),('73ff4b6e-1f88-a059-5f68-6786448b24a1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Campaigns','module',90,0),('744e9f3d-e5e5-a754-9512-67864480d428','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_PDF_Templates','module',90,0),('753979a8-f3fa-edbb-604c-678644d93c46','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AM_ProjectTemplates','module',90,0),('75583d30-46c9-b307-6813-6786445b1e4f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ExternalOAuthConnection','module',90,0),('7586897e-b729-9eb2-08bf-6786449228ca','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Campaigns','module',90,0),('75c5d4ce-37c4-e971-e716-67864425c765','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_PDF_Templates','module',90,0),('76b60482-1fb0-5c2b-2207-6786447244da','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AM_ProjectTemplates','module',90,0),('76ca98d7-766f-2850-13b1-678644674674','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ExternalOAuthConnection','module',90,0),('7706b863-f564-805f-03e0-6786449bcf2f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Campaigns','module',90,0),('783810b8-5756-8a19-7649-678644e36aaf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AM_ProjectTemplates','module',90,0),('783cd91f-2574-405c-d93a-6786445d499b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ExternalOAuthConnection','module',90,0),('78839c31-44c2-67ae-1649-678644e55e5f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Campaigns','module',90,0),('79c2cdc4-3057-9023-c287-678644ce6439','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AM_ProjectTemplates','module',90,0),('79f1ea30-be4b-25ff-b4ba-678644da4239','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Campaigns','module',90,0),('7b448f64-503e-ba9a-1e8a-67864461816b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AM_ProjectTemplates','module',90,0),('7b65e47d-656f-5b04-c3a1-6786441bd4a6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Campaigns','module',90,0),('7cba1251-10a2-28f6-fb88-678644cb5968','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AM_ProjectTemplates','module',90,0),('7cf57bd4-8cb6-87e9-8244-6786443566d8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Campaigns','module',90,0),('7e398b54-21a6-2721-1733-6786442ed628','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AM_ProjectTemplates','module',90,0),('7e867371-1327-3ca2-d7cd-678644f330d6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Areas','module',89,0),('7fb2fabe-e5b3-c19f-045b-6786443ba229','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','FP_events','module',89,0),('802cf709-2daa-b840-3707-6786447f41bd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Areas','module',90,0),('815620cb-3d6a-e4e0-7fa4-6786443700fc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','FP_events','module',90,0),('81a7b605-7594-13ab-ebab-67864451e22f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Areas','module',90,0),('82a05889-f872-1203-4f8d-678644de6a36','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyQuestionResponses','module',89,0),('82ddf5c8-c766-80c5-2c08-678644ad3128','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','FP_events','module',90,0),('832ac2a9-ebe8-fcc0-c9df-67864485798d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Areas','module',90,0),('844ab1d0-464c-3200-7fc5-6786449b61bf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','FP_events','module',90,0),('84625701-fe6f-d470-8721-6786440f8e1e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyQuestionResponses','module',90,0),('84a07691-ea6f-6028-fe6d-678644519559','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Areas','module',90,0),('85b3a897-c4f7-2b52-3f92-6786447a63e7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','FP_events','module',90,0),('85f930d4-c7a5-bd99-f06b-678644134b03','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyQuestionResponses','module',90,0),('860fa687-dcba-1a74-eb8f-6786444eff99','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Areas','module',90,0),('8728e798-c0da-8c27-dbaf-678644d0f9f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','FP_events','module',90,0),('877b4aee-f3b0-e457-561c-678644618f21','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Areas','module',90,0),('87860bb0-0f00-9525-6556-678644b6af9c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyQuestionResponses','module',90,0),('88a2bda9-66f8-6f41-315c-678644067b56','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','FP_events','module',90,0),('88eec6e1-f3d5-ff63-1146-6786447f4c93','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Areas','module',90,0),('890052b7-8cd5-e424-6095-678644576df1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyQuestionResponses','module',90,0),('8a2d9fdf-cd3e-e29d-ff54-67864433a8fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','FP_events','module',90,0),('8a7ff652-0648-ee1e-2841-678644d31505','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyQuestionResponses','module',90,0),('8bfd5624-ed6e-0069-3102-67864459a7ab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyQuestionResponses','module',90,0),('8d7c19b7-f718-ebc2-f4cd-678644307d37','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyQuestionResponses','module',90,0),('8ef63f77-0684-fcd3-ac87-678644f42c6a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Notes','module',89,0),('91a125c2-8c24-918f-65e8-678644ea8ba4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Notes','module',90,0),('942d653e-b612-4c36-5391-678644ed9ff6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Notes','module',90,0),('95a47207-a56b-a02e-61b3-678644ad669c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ExternalOAuthProvider','module',89,0),('95b97000-a7bb-9c5b-dc28-67864406a476','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Notes','module',90,0),('97362fbe-6958-0e0b-a948-678644407513','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Notes','module',90,0),('9756f39a-0240-d215-6209-67864431c9e1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ExternalOAuthProvider','module',90,0),('990540b1-3b12-1a19-3cce-6786445f041c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ExternalOAuthProvider','module',90,0),('99ba6ccb-38bd-0e45-cb03-67864464aba9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Notes','module',90,0),('9a037c13-54cd-9e8e-29f6-6786446f7b42','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Product_Categories','module',89,0),('9a570f79-3247-2ce5-aacf-678644aab63a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Contracts','module',89,0),('9aa78adb-bed0-8179-bd03-6786446868ef','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ExternalOAuthProvider','module',90,0),('9b4f18f8-e91c-5f77-de6b-678644c8111b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Notes','module',90,0),('9b647f8e-733b-6002-f729-678644ac8861','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Bugs','module',89,0),('9bb19648-c631-f722-eea4-678644d39dcc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Product_Categories','module',90,0),('9c2474f5-4cd2-b779-c6d7-6786448c324a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ExternalOAuthProvider','module',90,0),('9ce741c8-3a03-a370-6476-67864485cec1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Notes','module',90,0),('9cf453af-3229-a954-6020-67864430a3cf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Bugs','module',90,0),('9d5ce66b-585c-4a65-9189-6786448ffd3e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Product_Categories','module',90,0),('9da12da5-8e17-2b14-75f3-67864450787f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ExternalOAuthProvider','module',90,0),('9e8e9adb-c6d9-3ba1-1dde-678644be6887','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Bugs','module',90,0),('9ed13268-f70f-8b42-4aca-67864470ce4f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Product_Categories','module',90,0),('9f2155df-548d-6179-3e0d-678644212c9b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ExternalOAuthProvider','module',90,0),('a0035c59-42fc-68ab-1e36-678644fcb638','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOW_WorkFlow','module',89,0),('a003941d-9f7d-8f9e-8665-678644901db4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Bugs','module',90,0),('a0551714-6127-12dd-3e77-6786447a68d9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Product_Categories','module',90,0),('a0b270d6-da7d-96a3-8d33-678644701329','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ExternalOAuthProvider','module',90,0),('a16f5d4e-12a0-ee9d-ae0f-678644fa3dc3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Bugs','module',90,0),('a188ea69-a80a-492c-04ba-678644bb4d6c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Contacts','module',89,0),('a19d92bd-ade3-c268-e6c7-67864482e069','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOW_WorkFlow','module',90,0),('a1a1f635-34a2-27ce-71fd-678644494739','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AM_TaskTemplates','module',89,0),('a1eb487c-16a5-e746-48e8-67864441c62d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Product_Categories','module',90,0),('a2cdf36d-1efc-49fe-52b9-678644fd21a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Bugs','module',90,0),('a30fe8fd-b1c8-3cf0-3649-6786441cbe18','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOW_WorkFlow','module',90,0),('a328d968-dec6-eba7-3b9b-678644ad5f48','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Contacts','module',90,0),('a33e93be-4f55-a225-286a-678644b1ecbd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AM_TaskTemplates','module',90,0),('a392f492-f119-c0bc-9329-6786445c7eed','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Product_Categories','module',90,0),('a432c2e5-5eba-94b7-9478-67864425db49','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Bugs','module',90,0),('a4989e9c-522e-85ba-1cf8-67864421bb55','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOW_WorkFlow','module',90,0),('a4a28c56-78b2-0534-1fa5-67864427a3c2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Contacts','module',90,0),('a4b6b0e7-7941-c02f-1d69-678644e235b9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AM_TaskTemplates','module',90,0),('a5258b87-aa05-aa0c-de0b-678644cc330f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Product_Categories','module',90,0),('a5a40cb8-fb6d-5aac-ebca-678644a7820f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Bugs','module',90,0),('a5ff5f89-818f-67b9-3c0c-678644179da5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOW_WorkFlow','module',90,0),('a62d0642-f91d-8f60-b206-678644c12a49','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AM_TaskTemplates','module',90,0),('a62e3c3f-5199-bc33-9987-678644874ef5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Contacts','module',90,0),('a74daa83-369d-77bd-38d5-678644d62ab9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','ProspectLists','module',89,0),('a77b307c-afcb-54ed-e84b-678644face12','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOW_WorkFlow','module',90,0),('a79c891a-e940-ac55-0097-6786449b1041','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AM_TaskTemplates','module',90,0),('a7b9eda3-6e2e-eeeb-7f7d-678644fc849b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Contacts','module',90,0),('a8ee6d29-2047-c373-42b5-678644dfd6d6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','ProspectLists','module',90,0),('a8fe0e58-6726-7542-38b9-678644af4893','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOW_WorkFlow','module',90,0),('a9192784-b61e-7d49-fd37-678644b17820','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AM_TaskTemplates','module',90,0),('a92b2831-cd9b-ab8e-e413-678644014ca1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Contacts','module',90,0),('aa36477f-9133-9fad-39fe-67864406d620','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','jjwg_Address_Cache','module',89,0),('aa4f6243-ee6e-0c22-f048-678644af5c33','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','ProspectLists','module',90,0),('aa87acf7-356c-3c34-5732-678644f26228','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOW_WorkFlow','module',90,0),('aa9741be-f5fd-6e02-f0c3-678644d62186','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AM_TaskTemplates','module',90,0),('aaa45a3f-9f1e-fa23-ecbb-678644d18d35','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Contacts','module',90,0),('abb93ab1-c809-74fe-7f34-678644c673b4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','ProspectLists','module',90,0),('abdc7880-4e3a-ad35-c03c-678644bca371','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','jjwg_Address_Cache','module',90,0),('ac20d907-34d6-38dc-a616-678644071be7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Contacts','module',90,0),('ac28a331-d915-10b5-6ac6-678644c86169','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AM_TaskTemplates','module',90,0),('ad437682-ec22-6216-ff60-678644daa606','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','ProspectLists','module',90,0),('ad6ee04c-d193-e442-9201-678644f7660c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','jjwg_Address_Cache','module',90,0),('aeb25096-c588-9b15-1a7b-67864408930c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','ProspectLists','module',90,0),('aedff2f0-46ae-7003-0a87-678644b0da47','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','FP_Event_Locations','module',89,0),('aee5f7a8-0635-f53a-a491-678644920a5b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','jjwg_Address_Cache','module',90,0),('b0193ace-4155-e50a-1ddb-6786449a56cb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','ProspectLists','module',90,0),('b0570fa0-f0a0-c751-539a-678644a2e5fb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','jjwg_Address_Cache','module',90,0),('b06b998b-7164-6657-6f7a-678644bc2b80','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','FP_Event_Locations','module',90,0),('b0731412-008e-0c8b-d397-678644a93840','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyQuestions','module',89,0),('b1a18fb3-38b6-2016-d0cf-678644261b25','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','ProspectLists','module',90,0),('b1d633dc-a489-3d18-1a1e-678644dbb2f0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','FP_Event_Locations','module',90,0),('b207eeba-4c63-04ac-9849-6786440a69a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','jjwg_Address_Cache','module',90,0),('b20c42a9-6b91-8187-986a-678644504e1a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyQuestions','module',90,0),('b3481cea-7503-ea2f-1006-678644c19107','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','FP_Event_Locations','module',90,0),('b3749e42-e2e3-afd3-dd7e-6786444a0e51','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','jjwg_Address_Cache','module',90,0),('b392dd42-7386-5af1-e134-6786445580e4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyQuestions','module',90,0),('b4b7fbed-9ee2-50bc-fa76-678644493dcd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','FP_Event_Locations','module',90,0),('b4f35ace-d280-9861-8ec1-678644956649','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','jjwg_Address_Cache','module',90,0),('b524aedb-bcd2-c8e2-6a71-678644b433a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyQuestions','module',90,0),('b57d0398-bc82-726b-70c6-6786449d20a9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Contracts','module',90,0),('b63629fa-15b4-df60-4958-678644c2eb70','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','FP_Event_Locations','module',90,0),('b6b7f3b3-9c4d-42dd-2e2d-6786441dc291','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyQuestions','module',90,0),('b79c8720-3aa0-6871-f081-678644edff34','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','FP_Event_Locations','module',90,0),('b8352e72-2cb0-e944-f206-6786448a44ae','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyQuestions','module',90,0),('b9066348-3b7e-7bca-4609-678644a9b319','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','FP_Event_Locations','module',90,0),('b9c41e61-f03b-af83-f102-678644bf7324','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyQuestions','module',90,0),('bb6088e3-b849-3508-831d-678644b6c734','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyQuestions','module',90,0),('bc08fc84-1ec9-0a29-3cdd-6786443855ea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','TemplateSectionLine','module',89,0),('bdb5a1e2-e968-5cad-14d0-6786446e3868','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','TemplateSectionLine','module',90,0),('bec6fec8-4a55-03c1-9732-678644ebaf50','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Calls','module',89,0),('bf28823f-aeac-9a69-c59b-678644a8031d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','TemplateSectionLine','module',90,0),('c0552890-446b-29f9-3500-67864439956d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Calls','module',90,0),('c0a00dd4-fe8a-6e6a-e1f4-67864488c213','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','TemplateSectionLine','module',90,0),('c1ea5b1c-32fa-5899-4146-678644ef6d93','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Calls','module',90,0),('c23bd88d-7352-1857-a910-678644644be3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','TemplateSectionLine','module',90,0),('c357b65a-4cb6-f608-3192-67864498aa3d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Calls','module',90,0),('c3bf1b27-2226-9313-821b-678644e900dd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','TemplateSectionLine','module',90,0),('c4c0a957-2896-7713-92a7-6786442c8e80','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Calls','module',90,0),('c546392b-a461-2de7-448f-6786448ab83e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','TemplateSectionLine','module',90,0),('c6325b8e-f95c-6c0f-2f8f-678644b09ae1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Calls','module',90,0),('c6c41517-7c7f-1b44-414d-678644fc8c5f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','TemplateSectionLine','module',90,0),('c7a8b52e-8cdb-9b5b-8a85-6786448b3cba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Calls','module',90,0),('c9260084-cd75-e19e-1168-6786440fceab','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Calls','module',90,0),('cc5aeb1a-8fc7-22b3-f9a6-67864426d708','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOS_Products','module',89,0),('cd1f8a83-6dd2-10a3-9c91-67864427d193','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Users','module',89,0),('ce0153ab-fdba-d93f-6cd0-678644615630','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOS_Products','module',90,0),('ceb3044c-1b88-8b83-e036-6786440772b0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Users','module',90,0),('cec70716-93e7-fa23-201f-678644ac45cb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Contracts','module',90,0),('cf82342d-1d0b-436c-9036-678644a436cc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOS_Products','module',90,0),('d028031c-f8c7-71ca-295b-6786449eab4a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Users','module',90,0),('d0d011c0-f4cf-5f8d-8d9e-678644d0a869','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOW_Processed','module',89,0),('d0feac51-fbff-497f-8c7a-678644edd670','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Products','module',90,0),('d1976cde-b244-2f49-7699-6786444099eb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Users','module',90,0),('d2706be6-d35a-2209-9320-6786447624c8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOS_Products','module',90,0),('d27e2000-2c95-e61c-dca7-678644c99c1c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOW_Processed','module',90,0),('d2b1070c-eccf-39eb-c665-67864441f75f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','EmailMarketing','module',89,0),('d311539b-c53a-c401-5e63-678644090be8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Users','module',90,0),('d3c2ece6-0c85-b3d8-8b14-678644aff855','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Prospects','module',89,0),('d3e16566-624d-3acd-60cb-678644b7cecc','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOS_Products','module',90,0),('d40cdf2e-4a2a-b735-6f0b-678644fda3fd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOW_Processed','module',90,0),('d4952964-158a-a5fc-7596-6786444c4327','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Users','module',90,0),('d55f349f-21ef-ee97-7082-678644676a07','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Prospects','module',90,0),('d5641667-e814-1fb5-3ab0-67864479c627','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOS_Products','module',90,0),('d589fad9-edc3-ee6c-56b8-678644615f1a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOW_Processed','module',90,0),('d5b04fe9-258d-84a0-4323-6786441e143d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOR_Scheduled_Reports','module',89,0),('d6099838-b6f4-348f-e761-6786448ffe04','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Users','module',90,0),('d6a7fab2-0804-b9b9-a4e6-678644a7710e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Calls_Reschedule','module',89,0),('d6e78a68-6b44-9aad-6e64-678644cbb398','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Prospects','module',90,0),('d6ef5530-5a7a-8edc-a034-678644ad850c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOS_Products','module',90,0),('d7137db1-e375-3dab-3d8a-6786441e2ac9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOW_Processed','module',90,0),('d7348280-de99-dc40-e9c1-678644f1c7ba','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOR_Scheduled_Reports','module',90,0),('d7758521-48af-fcfe-6466-678644a9cead','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Users','module',90,0),('d7d61035-b08e-fbfa-2790-678644c6acc7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Alerts','module',89,0),('d859b467-8cb8-370e-3e73-6786442df008','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Calls_Reschedule','module',90,0),('d88401bb-69f0-d23c-169a-678644cdd803','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Prospects','module',90,0),('d8a1069e-3929-6c0a-c183-6786445d46b2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOW_Processed','module',90,0),('d8c36331-f41b-165b-2915-678644da2fea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOR_Scheduled_Reports','module',90,0),('d96b0ef4-7e83-3adb-afaa-678644e0cb03','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Alerts','module',90,0),('d9e6e3cc-a88f-77d1-3d9b-6786440c09a7','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Calls_Reschedule','module',90,0),('da0f7a10-24ac-04d2-be2a-678644051031','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOW_Processed','module',90,0),('da15933d-be50-be7b-85e2-67864466911c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Prospects','module',90,0),('da415eb1-07a7-41d1-d1d3-678644fbcd3f','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOR_Scheduled_Reports','module',90,0),('dafc0a2b-40c3-5591-2a1a-678644276374','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Alerts','module',90,0),('db72d410-51f5-ad63-220b-678644ed850e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Calls_Reschedule','module',90,0),('db880f62-edc4-1805-7fae-678644312a94','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOW_Processed','module',90,0),('dbaba7b6-2eb8-d194-d411-6786443efea2','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Prospects','module',90,0),('dbbd32f3-de8d-a33f-bc09-678644fc0c92','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOR_Scheduled_Reports','module',90,0),('dc668fa6-743d-ca1f-5274-678644ddf95e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOP_Case_Events','module',89,0),('dc75c940-4915-fea5-c3df-67864459c5e6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Alerts','module',90,0),('dcfcb2b8-ae75-9323-2a9d-6786445d49f3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Calls_Reschedule','module',90,0),('dd10db3e-e5f5-3634-c074-678644eddf74','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Prospects','module',90,0),('dd495b04-b499-7083-6ae1-6786447d9b70','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOR_Scheduled_Reports','module',90,0),('ddf32d67-128c-9a43-acc2-67864401916a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Alerts','module',90,0),('ddfacbd5-a77b-5069-c4d1-67864499842e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOP_Case_Events','module',90,0),('de753e58-a590-1be6-2792-678644688a8b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Prospects','module',90,0),('de8fb969-d067-5976-8d9f-678644bce23b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Calls_Reschedule','module',90,0),('decaaa08-9672-516c-9b73-678644fb4b43','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOR_Scheduled_Reports','module',90,0),('df638806-23fd-3acc-536f-6786444ba845','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOP_Case_Events','module',90,0),('df6a8328-2121-be7b-f146-678644d17ba0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Alerts','module',90,0),('e08205a9-017a-256b-39de-678644b6a9fd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Calls_Reschedule','module',90,0),('e0a02f70-b3e2-8f59-8892-678644e7c8e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('e0c01083-d03c-aa51-aa35-678644f13b2d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','SurveyQuestionOptions','module',89,0),('e0e61aab-dd3e-a700-2a75-6786447f4fc4','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Alerts','module',90,0),('e0e7096f-24c9-6adf-93f1-678644888465','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOP_Case_Events','module',90,0),('e22ec895-a751-8dbb-4f33-6786445bab62','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Calls_Reschedule','module',90,0),('e260d5ce-7dbb-e331-f638-678644134f6b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOP_Case_Events','module',90,0),('e26379c7-5e95-6d81-eeab-678644715262','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','SurveyQuestionOptions','module',90,0),('e276c64a-0df2-67e1-e72a-67864441d181','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Alerts','module',90,0),('e3d7d35a-517a-3b12-db23-678644d77812','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOP_Case_Events','module',90,0),('e3ec961d-38d0-0b49-d8a9-6786441beb1d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','SurveyQuestionOptions','module',90,0),('e47aa177-0ebe-968e-063d-6786445669b6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Accounts','module',89,0),('e53d243a-1911-d722-68d0-6786443fc170','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOP_Case_Events','module',90,0),('e58977d5-e437-81e6-df68-678644c9cc70','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','SurveyQuestionOptions','module',90,0),('e60843b7-3889-77b2-2281-67864423f231','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Accounts','module',90,0),('e6a2ee0b-4b84-8de2-f8bc-678644b655e8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOP_Case_Events','module',90,0),('e70e88bd-63a2-836d-cf49-6786444c091d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','SurveyQuestionOptions','module',90,0),('e7e94e73-b09c-0d1f-4c77-6786446c40b5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Accounts','module',90,0),('e856da02-5294-d7ba-ec61-678644884fe0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('e88e2bb7-f3bf-3c9f-a038-6786448d2991','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','SurveyQuestionOptions','module',90,0),('e91e08f1-c24a-d7e5-128b-6786449bd26b','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOS_Contracts','module',90,0),('e967fe85-8e5f-6da4-22c1-678644fb5f42','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Accounts','module',90,0),('e9fa098a-d045-9806-8c3c-6786440ac6fa','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('ea2d6192-3a6b-197d-6f98-6786440ef54e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','SurveyQuestionOptions','module',90,0),('ead61e40-d955-4f6d-f8bd-678644e24db6','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Accounts','module',90,0),('eb6c3552-6782-bab4-15bc-67864475e424','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('ebaba765-310e-54cc-6719-6786441cb19c','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','SurveyQuestionOptions','module',90,0),('ebe608f5-3b2c-6c53-ca5a-6786444589a5','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','EmailMarketing','module',90,0),('ec3c1da5-7777-06f4-26a1-678644fbfdc8','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','Accounts','module',90,0),('ece4496e-6f37-7d83-d3ea-6786441340f9','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('ed9b1820-b8ad-2ad0-9a58-678644c93629','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','Accounts','module',90,0),('ede4722e-b2a0-862f-08e5-6786449df86a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','access','Emails','module',89,0),('ee589bc6-6266-a294-2322-6786449083bb','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('ef006b0f-c851-a113-d962-6786448d3608','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','Accounts','module',90,0),('ef7702b4-f2ac-4864-ae8e-678644a48fc1','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','view','Emails','module',90,0),('f00954f1-b2e7-81a9-8102-67864433a16d','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('f0e211c9-7f27-8c04-869c-6786447d52ea','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','list','Emails','module',90,0),('f18c3f46-16d0-3d34-7bb3-6786443f1bbf','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('f2619a5b-0f92-d80b-6799-678644a0ebfd','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','edit','Emails','module',90,0),('f2f42730-e728-73f8-498d-6786443b1236','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('f3dae34c-6b24-101f-c6dc-678644e59296','2025-01-14 11:02:58','2025-01-14 11:02:58','1','','delete','Emails','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  `snooze` datetime DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int DEFAULT '0',
  `predecessors` int DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int DEFAULT NULL,
  `order_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int DEFAULT NULL,
  `y_field` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_cstm`
--

DROP TABLE IF EXISTS `aos_invoices_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices_cstm` (
  `id_c` char(36) NOT NULL,
  `paid_c` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_cstm`
--

LOCK TABLES `aos_invoices_cstm` WRITE;
/*!40000 ALTER TABLE `aos_invoices_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext,
  `pdffooter` longtext,
  `margin_left` int DEFAULT '15',
  `margin_right` int DEFAULT '15',
  `margin_top` int DEFAULT '16',
  `margin_bottom` int DEFAULT '16',
  `margin_header` int DEFAULT '9',
  `margin_footer` int DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  `run_on_import` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rebuild`
--

DROP TABLE IF EXISTS `cache_rebuild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_rebuild` (
  `cache_key` varchar(255) DEFAULT NULL,
  `rebuild` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rebuild`
--

LOCK TABLES `cache_rebuild` WRITE;
/*!40000 ALTER TABLE `cache_rebuild` DISABLE KEYS */;
INSERT INTO `cache_rebuild` VALUES ('app-metadata-language-strings-',1),('app-metadata-language-strings-',1);
/*!40000 ALTER TABLE `cache_rebuild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `tracker_count` int DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.25'),('MySettings','tab','YTo0Mzp7czo4OiJBY2NvdW50cyI7czo4OiJBY2NvdW50cyI7czo4OiJDb250YWN0cyI7czo4OiJDb250YWN0cyI7czo4OiJDYWxlbmRhciI7czo4OiJDYWxlbmRhciI7czo3OiJTdXJ2ZXlzIjtzOjc6IlN1cnZleXMiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NDoiSG9tZSI7czo0OiJIb21lIjtzOjE4OiJBT0JIX0J1c2luZXNzSG91cnMiO3M6MTg6IkFPQkhfQnVzaW5lc3NIb3VycyI7czo3OiJQcm9qZWN0IjtzOjc6IlByb2plY3QiO3M6NjoiQWxlcnRzIjtzOjY6IkFsZXJ0cyI7czoyMToiQU9SX1NjaGVkdWxlZF9SZXBvcnRzIjtzOjIxOiJBT1JfU2NoZWR1bGVkX1JlcG9ydHMiO3M6NDoiQnVncyI7czo0OiJCdWdzIjtzOjEyOiJqandnX01hcmtlcnMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czoxMDoiamp3Z19BcmVhcyI7czoxMDoiamp3Z19BcmVhcyI7czoxNDoiU2VjdXJpdHlHcm91cHMiO3M6MTQ6IlNlY3VyaXR5R3JvdXBzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxODoiamp3Z19BZGRyZXNzX0NhY2hlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6MjI6IkFPU19Qcm9kdWN0X0NhdGVnb3JpZXMiO3M6MjI6IkFPU19Qcm9kdWN0X0NhdGVnb3JpZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEwOiJBT1NfUXVvdGVzIjtzOjEwOiJBT1NfUXVvdGVzIjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxMjoiQU9XX1dvcmtGbG93IjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTY6IlJlc291cmNlQ2FsZW5kYXIiO3M6MTY6IlJlc291cmNlQ2FsZW5kYXIiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjExOiJBT1JfUmVwb3J0cyI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjE3OiJBT0tfS25vd2xlZGdlQmFzZSI7czo1OiJDYWxscyI7czo1OiJDYWxscyI7czo4OiJNZWV0aW5ncyI7czo4OiJNZWV0aW5ncyI7czo1OiJOb3RlcyI7czo1OiJOb3RlcyI7czo1OiJMZWFkcyI7czo1OiJMZWFkcyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6MTQ6IkVtYWlsVGVtcGxhdGVzIjtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czoxMzoiUHJvc3BlY3RMaXN0cyI7czo5OiJQcm9zcGVjdHMiO3M6OToiUHJvc3BlY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czo5OiJEb2N1bWVudHMiO3M6OToiRG9jdW1lbnRzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE0OiJwbGFuS19QbGFubmluZyI7czoxNDoicGxhbktfUGxhbm5pbmciO30='),('portal','on','0'),('tracker','Tracker','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('MySettings','disable_useredit','no'),('MySettings','hide_subpanels','YTowOnt9');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('15bba35b-daf9-2215-9811-67c22ee59df0','2025-02-28 21:45:16','2025-02-28 21:45:16','1','1','',0,'1',NULL,'Gady','Gronich','CEO and Chief of Staff to the President',NULL,NULL,0,NULL,NULL,'+ 49 172 7164945',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('199a1c44-54f7-07da-bffd-67c7606cae08','2025-03-04 20:22:13','2025-03-04 20:22:13','1','1','Занимается реестром, заполнением анкет',0,'1',NULL,'Валентина','Аввакумова','Начальник сектора работы с членами',NULL,NULL,0,NULL,NULL,'+375 17 237-71-86',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('1b11656c-0b4a-f620-02e5-67bde980fc4f','2025-02-25 16:01:14','2025-02-25 16:01:14','1','1','',0,'1',NULL,'Наталья','Шемет','Менеджер по работе с партнерами',NULL,NULL,0,NULL,NULL,'+375 44 557-18-57',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('1b891c4e-19c9-eeb6-7b6f-67d7f1850c88','2025-03-17 09:56:51','2025-03-17 09:56:51','1','1','',0,'1',NULL,'Александра','.','Менеджер по работе с клиентами',NULL,NULL,0,NULL,NULL,'+375 33 905-07-13',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('1c698b99-ff3f-82e5-5b2a-67cbf51325ec','2025-03-08 07:45:31','2025-03-08 07:45:31','1','1','',0,'1',NULL,'Евгения','Дурышева','Сотрудник ЕИС (контролирует регистрацию)',NULL,NULL,0,NULL,NULL,'+74994031621',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('222774ec-d206-12e4-230c-67cbff4849f6','2025-03-08 08:27:02','2025-03-08 08:27:02','1','1','',0,'1',NULL,'Сотрудник','.','Управление госзакупок (рассмотение жалоб)',NULL,NULL,0,NULL,NULL,'+375 17 226 12 75',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('240a19fb-9aa0-fbca-e1db-67ccb4a9e049','2025-03-08 21:19:37','2025-03-08 21:19:37','1','1','',0,'1',NULL,'Александр','Чибисов','Бухгалтер Росквартала (компания на аутсорсе) Есть телеграмм',NULL,NULL,0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('24118f78-4570-648f-2557-67c7626a2e3d','2025-03-04 20:26:57','2025-03-04 20:26:57','1','1','8 029 386-52-09 личный номер телефона, если надо будет вдруг',0,'1',NULL,'Светлана','.','Занимается нефинансовой поддержкой',NULL,NULL,0,NULL,NULL,'8 029 189-89-17',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('24ed0924-e734-250e-05d7-67cbf8360703','2025-03-08 07:56:04','2025-03-08 07:56:04','1','1','',0,'1',NULL,'Артем','Елисов','Коммерческий директор',NULL,NULL,0,NULL,NULL,'+7 (964) 721-33-66',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('2521b11b-11d8-51ba-c9d6-67c22f32a7bf','2025-02-28 21:51:40','2025-02-28 21:51:40','1','1','',0,'1',NULL,'Татьяна','Крутько (с ней работаю)','Сотрудник IGROW',NULL,NULL,0,NULL,NULL,'+375 29 681 99 82',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('269b6f19-be7a-9e55-f383-67ccb2539f52','2025-03-08 21:12:03','2025-03-08 21:12:03','1','1','',0,'1',NULL,'Андрей Петрович','Бригадин','Советник (вроде как, точно не знаю)',NULL,NULL,0,NULL,NULL,'+375 29 122-04-74',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('29e701f6-da6a-5d01-c361-67cbf84aeebe','2025-03-08 07:57:38','2025-03-17 17:45:42','1','1','',1,'1',NULL,'Юлия','Пильщикова','Партнерский менеджер',NULL,NULL,0,NULL,NULL,'8(900)088-97-84',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('2b9d7a67-afbf-40e9-96ef-67ccbeb4acd8','2025-03-08 22:04:21','2025-03-08 22:04:21','1','1','',0,'1',NULL,'Наталья Ивановна','Милевская','Инспектор (каб. 212)',NULL,NULL,0,NULL,NULL,'+375 17 270-54-75',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('2e6b2386-a742-7a2a-e8a0-67cc5525ccf2','2025-03-08 14:36:23','2025-03-08 14:36:23','1','1','',0,'1',NULL,'Наталья','Рудинская','Юрист',NULL,NULL,0,NULL,NULL,'+375 29 647-74-40',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('2f740427-cd62-4576-d24c-67c4539ce1f3','2025-03-02 12:48:17','2025-03-02 12:48:17','1','1','',0,'1',NULL,'Геннадий Брониславович','Дашкевич','Директор',NULL,NULL,0,NULL,NULL,'+375 29 697-04-82',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('30e35048-6c66-c8ec-dc76-67c453d8aea8','2025-03-02 12:47:08','2025-03-02 12:47:08','1','1','',0,'1',NULL,'Светлана Викторовна','Голенович','Бухгалтер',NULL,NULL,0,NULL,NULL,'+375 44 725 57 20',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('35ddfee3-a6b5-6977-b019-67c49b71d991','2025-03-02 17:56:14','2025-03-02 17:56:14','1','1','',0,'1',NULL,'Технический Отдел','.','Техподдержка (есть удаленная техподдержка у меня)',NULL,NULL,0,NULL,NULL,'+375 17 309-04-04',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('377c4831-4ea2-4d84-a27a-67cb23795fb9','2025-03-07 16:50:23','2025-03-07 16:50:23','1','1','',0,'1',NULL,'Алексей','Дудин','Генеральный директор',NULL,NULL,0,NULL,NULL,'+7 916 788-33-00',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('3a85b759-cbab-871d-6bee-67c49ae175a8','2025-03-02 17:49:47','2025-03-02 17:49:47','1','1','',0,'1',NULL,'Елена Сергеевна','Григорчук','Занимается практикой и распределением',NULL,NULL,0,NULL,NULL,'+375 33 602-44-54',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('3cbbe12e-624d-d0c0-3e1e-67c223289841','2025-02-28 20:57:57','2025-02-28 20:57:57','1','1','',0,'1',NULL,'Franciska','Goldschmidt-Kosman','Руководитель проекта',NULL,NULL,0,NULL,NULL,'+1 (845) 642-76-36',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('494083c7-ad2b-2b9e-ce6c-67cc571ccfe4','2025-03-08 14:41:26','2025-03-08 14:41:26','1','1','',0,'1',NULL,'Олег','Юрьевич','Председатель Минского отделения',NULL,NULL,0,NULL,NULL,'+375 29 108 2356',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('4bcb0f59-24df-08fe-8f6a-67cb2570c64e','2025-03-07 16:58:16','2025-03-07 16:58:16','1','1','',0,'1',NULL,'Елена Владимировна','Бутримович','ОТДЕЛ СТРАХОВАНИЯ',NULL,NULL,0,NULL,NULL,'+375 17 222-42-65',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('4ce6f6d0-61be-c7db-0b2a-67cbf6c9ca0b','2025-03-08 07:50:54','2025-03-08 07:50:54','1','1','',0,'1',NULL,'Ольга','Довнар','Ведущий специалист группы организации розничных продаж нефте- и газопродуктов',NULL,NULL,0,NULL,NULL,'+375-17-208-98-98',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('50871f5f-2650-e5ca-ec04-67cc007163b5','2025-03-08 08:32:48','2025-03-08 08:32:48','1','1','',0,'1',NULL,'Российская','Налоговоя','Та, к которой я привязан как физлицо',NULL,NULL,0,NULL,NULL,'+7(495)400-18-68(51)',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('54603a12-0a3f-561e-4e66-67ccb3f75402','2025-03-08 21:14:31','2025-03-08 21:14:31','1','1','',0,'1',NULL,'Борис','Валит','Директор или подрядчик (непонятно)',NULL,NULL,0,NULL,NULL,'+7 911 409 4268',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('5bd4529b-f98d-e955-1ae0-67cbfec4001a','2025-03-08 08:23:24','2025-03-08 08:23:24','1','1','',0,'1',NULL,'Сотрудник','.','Канцелярия (искать жалобу)',NULL,NULL,0,NULL,NULL,'+375 17 327 73 07',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('5c74c739-021a-3d32-d811-67ccc2e6aa62','2025-03-08 22:19:01','2025-03-08 22:19:01','1','1','',0,'1',NULL,'Сотрудник','Яндекса','Конкретного нет',NULL,NULL,0,NULL,NULL,'+375 17 336-31-36',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('5da26fde-863f-82bf-9f1b-67ccbb35e168','2025-03-08 21:50:21','2025-03-08 21:50:21','1','1','',0,'1',NULL,'Илона','Эдуардовна','Ведет проект',NULL,NULL,0,NULL,NULL,'+375 25 943-16-67',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('60f76538-284f-ad85-3cf0-67c75fc1a0a9','2025-03-04 20:14:23','2025-03-04 20:14:23','1','1','',0,'1',NULL,'Елизавета','Лашкевич','Ведет передачу про бизнес (также работает на ТВ)',NULL,NULL,0,NULL,NULL,'+375 25 684-90-95',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('61f98092-b92e-a9a4-4802-67c45453f3f5','2025-03-02 12:54:03','2025-03-02 12:54:03','1','1','',0,'1',NULL,'Дмитрий','Романенко','Зав кафедры веб-дизайна',NULL,NULL,0,NULL,NULL,'+375 29 633-19-95',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('679be7a2-dea2-9427-af80-67cbf425a2d7','2025-03-08 07:41:27','2025-03-08 07:41:27','1','1','',0,'1',NULL,'Татьяна Николаевна','Козловская','Сотрудник отдела госзакупок (доб номер 5470)',NULL,NULL,0,NULL,NULL,'+7(495) 669-24-00',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('6a183276-da94-89e7-10b4-67ccc1041663','2025-03-08 22:14:33','2025-03-08 22:14:33','1','1','',0,'1',NULL,'Олег Владимирович','Сиваграков','Заведующий отдела науки',NULL,NULL,0,NULL,NULL,'+375 29 626-46-86',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('6a75dd7f-7a82-b396-a729-67c402a18feb','2025-03-02 07:04:19','2025-03-02 07:04:19','1','1','',0,'1',NULL,'Ingo Recher','Recher','Владелец (Директор)',NULL,NULL,0,NULL,NULL,'+4915254010860',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('6ee56944-4f67-190d-4dda-67cbf353eca3','2025-03-08 07:34:49','2025-03-08 07:35:48','1','1','',0,'1',NULL,'Наталья','Курилович','Продает дорогие услуги (облака, инф. без.)',NULL,NULL,0,NULL,NULL,'+375 25 614-35-49',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),('7cb41cfd-bf50-8b91-e574-67b9ac6494df','2025-02-22 10:54:10','2025-02-25 12:17:47','1','1','',0,'1',NULL,'Максим','Макхамов','Технарь (говорить с ним по техническим вопросам)',NULL,NULL,0,NULL,NULL,'+375 29 115-24-24',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),('7df312fb-902c-c894-d78a-67ccb517a69f','2025-03-08 21:22:34','2025-03-08 21:22:34','1','1','',0,'1',NULL,'Наталья','Соколова','Коммерческий директор',NULL,NULL,0,NULL,NULL,'+7(926) 615-49-58',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('82ea0234-0ee9-6dd0-925d-67c75e7ebf61','2025-03-04 20:10:44','2025-03-04 20:10:44','1','1','',0,'1',NULL,'Анастасия','Акишева','Ведет ИТ-передачи',NULL,NULL,0,NULL,NULL,'+375 29 176-09-12',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('890993b9-55e5-5814-12e0-67ccc04d0cfe','2025-03-08 22:10:22','2025-03-08 22:10:22','1','1','',0,'1',NULL,'Екатерина','Олеговна','Проректор',NULL,NULL,0,NULL,NULL,'+375 29 638-17-35',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('8c4254e2-7ea4-fc59-4c9a-67c453df4110','2025-03-02 12:45:58','2025-03-02 12:45:58','1','1','',0,'1',NULL,'Сергей','.','Системный администратор',NULL,NULL,0,NULL,NULL,'+375 29 686-43-58',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('8e348736-b8c0-c799-4ac0-67c453436df2','2025-03-02 12:49:21','2025-03-02 12:49:21','1','1','',0,'1',NULL,'Виктор Сергеевич','Мясоеденков','Заместитель директора',NULL,NULL,0,NULL,NULL,'+375 29 675-10-15',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('91a971c6-5685-c2c0-df5d-67ccb7124b0b','2025-03-08 21:33:12','2025-03-08 21:33:12','1','1','',0,'1',NULL,'Андрей','.','Давал задание (ведет проект)',NULL,NULL,0,NULL,NULL,'+375 44 798-04-97',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('93490d50-6c60-f744-c0c1-67c22e3bcde8','2025-02-28 21:46:40','2025-02-28 21:46:40','1','1','',0,'1',NULL,'Shorena','Mikava','Legal Counsel and Special Adviser of the Board of Patrons',NULL,NULL,0,NULL,NULL,'+49 160 91601601',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('93acc2da-2830-98d3-4959-67cbfff993f1','2025-03-08 08:25:56','2025-03-08 08:25:56','1','1','',0,'1',NULL,'Сотрудник','.','Управление госзакупок (консультации)',NULL,NULL,0,NULL,NULL,'+375 (17) 327-53-58',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('93e0ee6b-9a44-c9f8-26f8-67d5f2d84c47','2025-03-15 21:36:03','2025-03-15 21:36:03','1','1','',0,'1',NULL,'Ирина','Несивкина','Директор',NULL,NULL,0,NULL,NULL,'+7 915 458-90-28',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('9457e85a-17be-fc74-32a4-67cc00c8fc92','2025-03-08 08:31:36','2025-03-08 08:34:30','1','1','',0,'1',NULL,'Отдел','Консультаций','Фрунзенская налоговая',NULL,NULL,0,NULL,NULL,'+375 17 356-46-55',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),('97b83b2f-1863-59a5-e2e4-67cbf55fcea4','2025-03-08 07:46:42','2025-03-08 07:46:42','1','1','',0,'1',NULL,'Екатерина Юрьевна','Чистякова','Сотрудник казначейства (регистрирует в ЕИС от казначейства)',NULL,NULL,0,NULL,NULL,'+7 (495) 214-72-24',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('98ee91f8-6a42-07f3-b46e-67cbf959f46d','2025-03-08 08:02:54','2025-03-08 08:02:54','1','1','',0,'1',NULL,'Дмитрий','Заблоцко-Горький','Менеджер проекта (из Беларуси)',NULL,NULL,0,NULL,NULL,'+375 29 769-47-83',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('9b6eb36e-f634-bd77-5a50-67c225ff1d48','2025-02-28 21:06:40','2025-02-28 21:06:40','1','1','',0,'1',NULL,'Rachel','Goldschmidt-Peleg','Project Manager',NULL,NULL,0,NULL,NULL,'+972 54-205-5441',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('9f904cc0-c604-289b-eba2-67c4527fe03d','2025-03-02 12:43:08','2025-03-02 12:43:08','1','1','',0,'1',NULL,'Вячеслав','Зясядько','Директор',NULL,NULL,0,NULL,NULL,'+7 903 850-92-55',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('9fa98c05-2a62-8b8e-be90-67cbf59dc1cf','2025-03-08 07:44:28','2025-03-08 07:44:28','1','1','',0,'1',NULL,'Михаил','Варнаков','Технический специалист (регистрирует в ЕИС)',NULL,NULL,0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('a36123d0-036d-192c-d9db-67bc3f3e4264','2025-02-24 09:44:50','2025-04-02 17:06:35','1','1','Testing',1,'1',NULL,'test','Нгуен','Рабочий',NULL,NULL,0,NULL,NULL,'+375333328228',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('a5a22dd2-5efe-a7fa-eb4c-67c49c4b0820','2025-03-02 17:57:21','2025-03-02 17:57:21','1','1','',0,'1',NULL,'Мария','Приступо','Зам главы (офис в германии)',NULL,NULL,0,NULL,NULL,'+375 44 775-56-27',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('a85d9012-9f4f-bea3-6a76-67d7fd1e12b8','2025-03-17 10:45:32','2025-03-17 10:45:32','1','1','Другой телефон: +7 (495) 734-81-18 доб. 7798',0,'1',NULL,'Людмила Евгеньевна','Фомина','Менеджер по работе с иностранными клиентами',NULL,NULL,0,NULL,NULL,'+7 (926) 732-09-85',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('af12aabb-0aa3-6633-989a-67c49beb0d62','2025-03-02 17:54:57','2025-03-02 17:54:57','1','1','',0,'1',NULL,'Дмитрий','.','Специалист по кредитам и банковским гарантиям',NULL,NULL,0,NULL,NULL,'+375 17 395 21 36',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('b0a60390-5b2b-26ca-11e1-67d7fcdbe606','2025-03-17 10:43:53','2025-03-17 10:43:53','1','1','Другие телефоны: +7 (495) 734-81-18, доб. 7731',0,'1',NULL,'Ольга Григорьевна','Митрофанова','Руководитель направления \"Услуги для поставщиков\"',NULL,NULL,0,NULL,NULL,'+7 (906) 761-58-01',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('b6847202-28c8-b6df-69f0-67c49cf4b9a7','2025-03-02 17:58:27','2025-03-02 17:58:27','1','1','',0,'1',NULL,'Ольга Александровна','Прокопчик','Специалист по работе с клиентами (ВАЛЮТА С 9 до 15)',NULL,NULL,0,NULL,NULL,'+375 17 307-21-91',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('b88d0919-31e7-d32f-3b5f-67ccbb50ecd7','2025-03-08 21:49:21','2025-03-08 21:49:21','1','1','',0,'1',NULL,'Николай','Николаевич','Ведет проект',NULL,NULL,0,NULL,NULL,'+375 29 757-72-24',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('bdef28a7-e2c8-7801-bd09-67bf52ba2685','2025-02-26 17:41:46','2025-02-26 17:45:43','1','1','',0,'1',NULL,'Татьяна','Федянина','Директор',NULL,NULL,0,NULL,NULL,'+79507925839',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),('caa57d09-d30d-d7b4-1525-67cbf9bceb94','2025-03-08 08:01:45','2025-03-08 08:01:45','1','1','',0,'1',NULL,'Анастасия','.','Юрист (оформляла ООО)',NULL,NULL,0,NULL,NULL,'+375 29 767-88-71',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('d0c939d7-bc1b-97fc-187e-67cb262fb61b','2025-03-07 17:01:33','2025-03-07 17:01:33','1','1','',0,'1',NULL,'Надежда','.','Обращаться по пресс-конференциям',NULL,NULL,0,NULL,NULL,'+375 29 188-88-98',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('d50c11c5-ba81-a13c-ea69-67ccbc003424','2025-03-08 21:53:36','2025-03-08 21:53:36','1','1','',0,'1',NULL,'Светлана','Анатольевна','Зав отдела экономических новостей',NULL,NULL,0,NULL,NULL,'8 017 389 60 64',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('d82d7083-05a7-4e49-ef5f-67ccbe76a937','2025-03-08 22:00:56','2025-03-08 22:00:56','1','1','',0,'1',NULL,'Максим','Агрейцович','Директор',NULL,NULL,0,NULL,NULL,'8 (029) 614-83-40',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('d8f0883f-bcf5-dc01-a4a4-67cc0033d8fa','2025-03-08 08:30:18','2025-03-08 08:30:18','1','1','',0,'1',NULL,'Надежда Владимировна','Громова','Налоговый инспектор (Россия ООО) ИФНС№36',NULL,NULL,0,NULL,NULL,'+7 (495) 400-30-83',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('d9547e7d-7f70-9714-3043-67c230e35fd1','2025-02-28 21:52:28','2025-02-28 21:52:28','1','1','',0,'1',NULL,'Анастасия','Неселовская','Сотрудник IGROW',NULL,NULL,0,NULL,NULL,'+375296574380',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('d9cc0890-f917-67f7-7b23-67ccb6872cb1','2025-03-08 21:30:35','2025-03-08 21:30:35','1','1','',0,'1',NULL,'Антон','Барков','Начальник ИТ-отдела',NULL,NULL,0,NULL,NULL,'+7 903 368 28 88',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('da7501d9-ce62-c0c5-6f38-67b9a8c95f33','2025-02-22 10:34:25','2025-02-22 10:36:22','1','1','',0,'1',NULL,'Наталья','Жукова','Главный бухгалтер',NULL,NULL,0,NULL,NULL,'+375(29)124-50-24',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),('de68fa49-81cc-697c-3430-67cb25bdc0d8','2025-03-07 16:56:44','2025-03-07 16:56:44','1','1','',0,'1',NULL,'Екатерина','каб 324','Заключает договора',NULL,NULL,0,NULL,NULL,'+375 17 222-62-74',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('debf06f4-ac7b-d214-1c74-67c45463a751','2025-03-02 12:52:57','2025-03-02 12:52:57','1','1','',0,'1',NULL,'Наталья','Потапенко','Отвечает за практику',NULL,NULL,0,NULL,NULL,'+375293444826',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('e1939228-dc36-b13c-b529-67cc001ed4b3','2025-03-08 08:33:57','2025-03-08 08:33:57','1','1','',0,'1',NULL,'Светлана Михайловна','Студенок','Налоговый инспектор (ООО)',NULL,NULL,0,NULL,NULL,'+375 17 379-57-92',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('e4c7f7e9-a8b0-5a55-f3c0-67a4944d42c1','2025-02-06 10:51:53','2025-02-22 10:51:44','1','1','',1,'1',NULL,'цц','ыы','',NULL,NULL,0,NULL,NULL,'',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),('e9092698-4b0b-368e-2798-67bf5208ab83','2025-02-26 17:40:29','2025-03-17 19:51:59','1','1','',0,'1',NULL,'Елизавета','Манакина','Помощник руководителя',NULL,NULL,0,NULL,NULL,'+7 995 273 3839',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,0,'Single'),('f2ee7e2f-c1d4-44ca-5752-67ccb10dbd74','2025-03-08 21:08:58','2025-03-08 21:08:58','1','1','',0,'1',NULL,'Ольга Александровна','Байкач','Занимается сферой госзакупок (доб. тел 160)',NULL,NULL,0,NULL,NULL,'+7 495 777 66 44',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('f3473e54-a6ea-4382-cfb8-67c7637a88aa','2025-03-04 20:32:54','2025-03-04 20:32:54','1','1','',0,'1',NULL,'Мальвина','Дмитриевна','Принимает заявки и выставляет счета',NULL,NULL,0,NULL,NULL,'+375 (29) 342-58-81',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('f3af3549-306d-0f03-cc7d-67c4028fc4ee','2025-03-02 07:01:28','2025-03-02 07:01:28','1','1','Телефон указанный здесь - телефон в Германии. Актуальный смотреть в телеграмм и у меня в телефоне должен быть записан',0,'1',NULL,'Илья','Горелик','Директор(соучредитель)',NULL,NULL,0,NULL,NULL,'+491745859070',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('fa3e06a5-b5c3-c994-895d-67c22ee8d2c0','2025-02-28 21:47:36','2025-02-28 21:47:36','1','1','',0,'1',NULL,'Aharon','Shmuel Baskin','CER Secretary',NULL,NULL,0,NULL,NULL,'+972546679530',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single'),('fa7a01e6-3132-3593-ff1e-67cc55a8ae29','2025-03-08 14:35:14','2025-03-08 14:35:14','1','1','',0,'1',NULL,'Жанна','Кресс','Помощник руководителя (ведет проект)',NULL,NULL,0,NULL,NULL,'+375 29 509-25-72',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Single');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
INSERT INTO `contacts_cstm` VALUES ('a36123d0-036d-192c-d9db-67bc3f3e4264',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES ('9d0d9fea-bdd3-2db3-ad4d-67ebdd13a062','Российский рубль','₽','643',39,'Active',0,'2025-04-01 12:36:28','2025-04-01 12:36:28','1'),('b662627a-7b51-f6f3-a4b6-67ebdebc54e7','Евро','€','978',1,'Active',0,'2025-04-01 12:38:29','2025-04-01 12:38:29','1'),('ec980b0e-d3f5-86a1-96f9-67ebde5194d9','Белорусский рубль','Br','933',1,'Active',0,'2025-04-01 12:37:53','2025-04-01 12:37:53','1');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('6ffde6cb-f80d-210f-994d-67a3639da89c','7047c84a-b6d5-3293-bdae-67a36319e39f','61df3b03-929d-a671-ba87-67a363a4af6d','Accounts',1,0,'2025-02-05 13:09:22','2025-02-05 13:09:22',0),('c5f0e370-d802-0250-7de2-67bc3f59443c','c629c13d-53ce-225f-d0ac-67bc3fc61119','a36123d0-036d-192c-d9db-67bc3f3e4264','Contacts',1,0,'2025-02-24 09:44:50','2025-04-02 17:06:35',1);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('7047c84a-b6d5-3293-bdae-67a36319e39f','test@gmail.com','TEST@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2025-02-05 13:09:22','2025-02-05 13:09:22',0),('c629c13d-53ce-225f-d0ac-67bc3fc61119','crispersiren241@gmail.com','CRISPERSIREN241@GMAIL.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2025-02-24 09:44:50','2025-02-24 09:44:50',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

LOCK TABLES `email_addresses_audit` WRITE;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int unsigned DEFAULT NULL,
  `imap_uid` int unsigned DEFAULT NULL,
  `msgno` int unsigned DEFAULT NULL,
  `recent` tinyint DEFAULT NULL,
  `flagged` tinyint DEFAULT NULL,
  `answered` tinyint DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `seen` tinyint DEFAULT NULL,
  `draft` tinyint DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('54106d1d-9843-3810-1007-678644356413','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>',0,NULL,NULL,'system'),('55bc0dd8-cbcc-6713-0e75-678644436a87','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>',0,NULL,NULL,'system'),('747f1db0-c9a3-f1f7-c9f8-6786441cd98e','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),('7797dc76-2b56-89ed-e187-678644d086a3','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','User Case Update','Email template to send to a SuiteCRM user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),('b49135a4-7e1f-c4e2-0779-678644f59ec2','2013-05-24 14:31:45','2025-01-14 11:02:58','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n',0,NULL,NULL,'system'),('bd7c3500-10f5-5810-36d4-678644d7be96','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('bf6200de-c464-322c-2f28-67864414a779','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),('c090e21a-1161-bc77-9664-6786440b1f10','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('c356807a-4804-2ad0-4993-67864422c85a','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Two Factor Authentication email','This template is used to send a user a code for Two Factor Authentication.','Two Factor Authentication Code','Two Factor Authentication code is $code.','<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('ee8b0cbb-aa8b-6547-8871-6786444e58e0','2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>',0,NULL,NULL,'system');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`),
  KEY `idx_email_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_oauth_connections`
--

DROP TABLE IF EXISTS `external_oauth_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text,
  `refresh_token` text,
  `external_oauth_provider_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_connections`
--

LOCK TABLES `external_oauth_connections` WRITE;
/*!40000 ALTER TABLE `external_oauth_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_oauth_providers`
--

DROP TABLE IF EXISTS `external_oauth_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_providers`
--

LOCK TABLES `external_oauth_providers` WRITE;
/*!40000 ALTER TABLE `external_oauth_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES ('1fd77564-0054-46d8-23c0-67bc5043c39f','Users 1 1','2025-02-24 10:58:34','2025-02-24 10:58:34','1','1',NULL,1,'1','1','Users'),('4920d6ec-de1a-232c-bcd9-67bc50bc3cf0','Users 1 1','2025-02-24 10:58:33','2025-02-24 10:58:33','1','1',NULL,1,'1','1','Users');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('AOS_Invoicespaid_c','paid_c','LBL_PAID','','','AOS_Invoices','currency',26,0,'','2025-04-01 12:33:10',0,0,0,0,1,'true','','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Opportunitiesdeal_status_c','deal_status_c','LBL_DEAL_STATUS','','','Opportunities','enum',100,0,NULL,'2025-03-14 16:14:04',0,0,0,0,1,'true','deal_status_list','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Opportunitiesrefusal_reason_c','refusal_reason_c','LBL_REFUSAL_REASON','','','Opportunities','enum',100,0,NULL,'2025-03-14 13:43:30',0,0,0,0,1,'true','refusal_reason_list','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2025-01-14 11:02:58',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2025-01-14 11:02:58',0,0,0,0,1,'true','8','','',''),('Tasksperson_view_c','person_view_c','LBL_PERSON_VIEW',NULL,NULL,'Tasks','enum',100,0,NULL,'2025-03-04 13:17:31',0,0,0,0,1,'true','person_view_c_list',NULL,NULL,NULL),('Taskssales_stage_c','sales_stage_c','LBL_SALES_STAGE',NULL,NULL,'Tasks','enum',100,0,'not_sales','2025-02-28 16:38:55',0,0,0,0,1,'true','sales_stage_c_list',NULL,NULL,NULL);
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `email_body_filtering` varchar(255) DEFAULT 'multi',
  `server_url` varchar(100) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int DEFAULT '143',
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT '0',
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT '0',
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint DEFAULT NULL,
  `failure_count` tinyint DEFAULT NULL,
  `job_delay` int DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES ('19bc8836-f4be-071e-1e36-67c7d97ca457','Сипмозиум СМИ (в Бел ТПП) платно 3 кв','2025-03-05 04:58:30','2025-03-05 04:58:30','1','1','',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-08-14 05:15:00',NULL,'planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('36e24b98-f545-8bd9-3628-67c7d9a5721c','Поездка в Удмуртию (возможно)','2025-03-05 04:57:38','2025-03-05 04:57:38','1','1','Летом возможно будет поездка в Удмуртию в рамках проекта. Поназначать там встречи с торговой палатой и с министерством туризма или с кем-то другим, когда будет понятно поеду или нет',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-07-16 05:15:00',NULL,'planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('39a25254-1ab6-f087-6f4d-67c7d837818d','Семинар по госзакупкам (ПОЛЕЗНО. ПРОДАЖИ)','2025-03-05 04:50:37','2025-03-07 17:08:56','1','1','Нац центр маркетинга позвал меня\nhttps://edu.tektorg.ru/dp_rb?utm_source=suppliers&utm_medium=email&utm_campaign=usl_030325&utm_content=button#program\n\nБУдет тек торг, сам центр маркетинга - очно\nБудут заказчики онлайн.\nАдрес проведения: Республика Беларусь, г. Минск, площадь Свободы, 17, 10 этаж.\n\nМожно через них ходить на дни поставщика. Вот пример: https://www.tektorg.ru/news-press/tek-torg-organizuet-den-postavshhika-na-ploshhadke-vystavki-rosbuild-2025\nТакие дни проходят по всем сферам и почти на каждой выставке (смотреть экспоцентр): https://www.expocentr.ru/ru/events/',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-03-06 05:15:00',NULL,'completed','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),('65d5d381-2322-65b7-c9d9-67c0bf02a3e3','Ивент в ActieCloud по инф без (ПОЛЕЗНО. ОБУЧЕНИЕ)','2025-02-27 19:39:41','2025-03-07 17:35:21','1','1','https://www.activecloud.by/news/sobytiya/biznes-poldnik-dlya-partnerov-1-likbez-po-infobezopasnosti/#\n\nПолезное мероприятие. Узнал о новых услугах. Кроме того они очень гибкие во всем и помогают с продажей информационной безопасности.\nИнформационная безопасность у них на уровне.',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-02-04 20:00:00',NULL,'completed','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),('749c2406-a88f-a2bf-0000-67c7dab2b3ee','Поездка в Гонконг (ВОЗМОЖНО)','2025-03-05 05:00:29','2025-03-05 05:00:29','1','1','Гонконг (ELECTRONIC ASIA) Кристина Земскова обещала ВИП билет в 2025 году https://10times.com/ru/electronicasia\n24,01,25 - написал Кристине. Она перенаправила к Екатерине. Екатерина сразу же ответила, что поездки на осень планируются летом. Напомнить о себе в начале июля.\n30,01,25 - написал имейл Эрику, с которым я говорил на онлайн-ивенте. Предложил ему партнерство, жду от него ответа.\n04.02.25 - ответил мне, спросил когда приеду. Я написал ему и спросил про встречу и потенциальное партнерство. Жду ответа',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-10-14 05:15:00',NULL,'planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('752edecc-d527-d506-1e11-67c7d8d7a48a','Форум регионов Беларуси и Казахстана (продажи)','2025-03-05 04:52:08','2025-03-05 04:56:40','1','1','ДАта пока непонятна',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-05-06 05:15:00',NULL,'planned','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),('80390dba-0d70-aab6-2511-67c7dacddb9b','Встреча с дипламатами СНГ в БелТПП 4 кв','2025-03-05 05:01:14','2025-03-05 05:01:14','1','1','Спросить у послов можно ли договориться, чтобы они мне назначали встречи с госконторами или другими предприятиями. Чтобы я ехал уже на назначенные ими встречи.\n\n\n\nПроговорить с послом России эффективность сотрудничества. Сказать что не получается договориться с россиянами, они не хотят, тянут. Можно ли с этим что-то сделать (говорить на примере Бурятии)',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-11-12 05:15:00',NULL,'planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9d79c748-f9b4-09c8-9c1d-67cc06565076','Встреча с Олегом Юрьевичем по проектам (ПОЛЕЗНО)','2025-03-08 08:56:21','2025-03-08 08:56:43','1','1','Все ок. Договорились, что пришлю ему описание проектов',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-03-07 09:15:00',NULL,'completed','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),('a8560dda-9f61-4347-e113-67d586f52a41','Встреча с Леонидом по радиоэлектронике (ПОЛЕЗНО)','2025-03-15 13:55:51','2025-03-15 13:55:51','1','1','Будет сотрудничество по двум направлениям\n1. буду делать продвижение\n2. Будем работать с проектом для станков',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-03-15 14:15:00',NULL,'completed','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('af14310e-655f-22b4-e753-67c7d9d0cb4e','ТИБО (для информации)','2025-03-05 04:55:56','2025-03-05 05:02:33','1','1','Должны говорить про цифровизацию в ЕАЭС. БУдте скорее всего новый план 2025 - 2030\nПонять как она будет развиваться в ЕАЭС',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-06-17 05:15:00',NULL,'planned','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),('b138711f-9e45-c5e1-350b-67c7d94afaa0','Евразийский экономический форум (ДЛЯ ИНФОРМАЦИИ)','2025-03-05 04:55:19','2025-03-21 19:38:13','1','1','Сайт форума: https://forum.eaeunion.org\nТочно будет в июне 2025\nПОНЯТЬ КАК БУДЕТ РАЗВИВАТЬсЯ СОЮЗ ЕАЭС\nПонять межрегиональное сотрудничество\n\n\nhttps://www.sb.by/articles/provedenie-evraziyskogo-ekonomicheskogo-foruma-obsuzhdayut-v-minske.html\n\nАктульное\nhttps://www.sb.by/articles/delovaya-programma-predstoyashchego-v-minske-evraziyskogo-ekonomicheskogo-foruma-v-tselom-opredelena.html',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-06-03 05:15:00',NULL,'planned','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL),('c3ce6c1e-1c03-5ccb-6905-67c7da9e8a90','Политический форум ЛДПБ (Для информции)','2025-03-05 04:59:35','2025-03-05 04:59:35','1','1','',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-09-04 05:15:00',NULL,'planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('dc3598c7-35e1-913a-60db-67c7da72b0c9','Встреча с представителями БелТПП в ЕС 3 кв','2025-03-05 04:59:08','2025-03-05 04:59:08','1','1','',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-08-14 05:15:00',NULL,'planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('eee72ea3-8c98-778e-c5e6-67c7d88fff24','Выставка ОТДЫХ 2025','2025-03-05 04:51:30','2025-03-05 04:51:30','1','1','https://tourexpo.by/programma/\nПогогворить с районами припятского полесья с туротделами. Они там должны быть\n\n+ смотреть другие мероприятия по программе выставки\n\n27 марта (четверг)\n15,00 - 17,30 -Презентация новых объектов туристической инфраструктуры «Инвестиционный потенциал туристической индустрии Беларуси» - конференцзал №1\n\n28 марта (пятница)\nцелый день',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-03-27 05:15:00',NULL,'planned','Sugar',NULL,-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('fb290fdf-dc2e-b961-cfac-67c0bf19e05f','Встреча с представителями БелТПП в СНГ 1 кв','2025-02-27 19:41:44','2025-03-15 13:56:49','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2025-03-31 07:00:00',NULL,'planned','Sugar','',-1,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int DEFAULT NULL,
  `duration_amount` int DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

LOCK TABLES `oauth2clients` WRITE;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

LOCK TABLES `oauth2tokens` WRITE;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `refusal_reason_c` varchar(100) DEFAULT NULL,
  `deal_status_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('227fba6e-e22f-bdb2-1694-678644c9a12f','system','system','1',NULL,NULL,NULL,NULL,NULL,'SMTP','other','','25','','',1,'0',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plank_planning`
--

DROP TABLE IF EXISTS `plank_planning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plank_planning` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `planning_name` varchar(255) DEFAULT NULL,
  `kp_total` varchar(255) DEFAULT NULL,
  `project_total` varchar(255) DEFAULT NULL,
  `planned_sum` varchar(255) DEFAULT NULL,
  `total_sum` varchar(255) DEFAULT NULL,
  `year_plan` text,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plank_planning`
--

LOCK TABLES `plank_planning` WRITE;
/*!40000 ALTER TABLE `plank_planning` DISABLE KEYS */;
/*!40000 ALTER TABLE `plank_planning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plank_planning_audit`
--

DROP TABLE IF EXISTS `plank_planning_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plank_planning_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_plank_planning_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plank_planning_audit`
--

LOCK TABLES `plank_planning_audit` WRITE;
/*!40000 ALTER TABLE `plank_planning_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `plank_planning_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('ac760c75-bbff-c0bf-1a87-67cea155b752','2025-03-10 08:24:56','2025-03-10 08:24:56','1','1','1','sdasd','fdfdfdfdf',0,'2025-03-10','2025-03-19','Underway',NULL,0);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
INSERT INTO `project_cstm` VALUES ('ac760c75-bbff-c0bf-1a87-67cea155b752',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int DEFAULT NULL,
  `time_finish` int DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int DEFAULT '1',
  `task_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `actual_effort` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
INSERT INTO `project_users_1_c` VALUES ('1bce2413-d1c6-9b3c-e702-67cea1fc59ff','2025-03-10 08:24:56',0,'ac760c75-bbff-c0bf-1a87-67cea155b752','1');
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('1033f71c-d806-e034-ffbc-67ed941aab1c','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('107eccfb-5192-65b9-2512-67ed94b1856f','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('10bbfa2a-2ceb-157c-cfb5-67ed946349c9','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11afced8-2990-3802-7ed7-67ed94d29562','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1363429e-673b-c9da-2078-67ed94df16a6','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14a175a6-bee1-68c3-d403-67ed94fde773','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('160102af-5e70-96ee-3aef-67ed943e2464','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('160cfbd4-6021-611d-a92c-67ed949c07fb','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('16883342-a66f-9572-3683-67ed943c7870','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1760020e-8a88-9b32-d6b4-67ed944ff0a4','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('178927ac-4437-8a74-23d7-67ed94afaa0f','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('17922e34-cb98-19ad-8c99-67ed9479afe6','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('18198251-4171-05a1-c7f5-67ed94409794','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18c8baf7-d672-bc27-62fc-67ed94e9f2c6','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('191290e7-62db-a87a-5cb5-67ed9447161f','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('192c066c-af6e-a346-50dd-67ed94910987','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('195c0155-a903-87c8-f6a4-67ed94d694f3','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('19800554-d580-ed00-9479-67ed94e8b638','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a3d9e14-1212-c45f-072e-67ed9423fe1f','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a80b2d2-30ea-40b3-f430-67ed94ae625f','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1af60fbd-7564-ada1-491c-67ed947044c3','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('1b41df5d-0a46-dd5c-82e4-67ed94b2c0f9','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bafa0b3-8e4d-f508-4316-67ed943f55e5','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1bfb4574-4f64-1c82-536e-67ed941a1595','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),('1c471b6b-1ad3-e7e2-873c-67ed940d2f63','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('1c7509cd-b6fd-8cb0-6cf5-67ed94edec91','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1cf502d3-a918-b632-cf2b-67ed943cb2ad','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d31cb5c-6f16-d230-a5aa-67ed94718ba7','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1d70d328-38a6-0a16-805c-67ed9499f6a2','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1da18a06-6cb9-b5d4-98ef-67ed94d313b5','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('1deec37b-7572-81a7-73f1-67ed94d255ce','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e6d8f80-d453-9740-55a2-67ed94cc9d69','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ea7e40b-0349-bdb2-6561-67ed94b5d634','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1eeb2a21-8616-5c47-5c17-67ed949d26b7','surveyquestions_surveyquestionresponses','SurveyQuestions','surveyquestions','id','SurveyQuestionResponses','surveyquestionresponses','surveyquestion_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f1732fc-2141-f80b-8acf-67ed94c7530d','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('2060fc81-3a9b-7531-f3bb-67ed94b8bce7','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('209c1a48-a828-08d4-02e5-67ed946d81e5','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('21d00bf8-74d8-6993-6385-67ed943cf61a','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('21d8534c-a3c0-fe04-e85f-67ed94c44cba','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2209e22b-f7a2-c0f4-215b-67ed944e7b99','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('234b5dcd-c7a4-90f2-614a-67ed94931df6','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('237921cc-0ec2-3a75-7236-67ed94ae2b63','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('23d93acd-6c99-192b-b123-67ed946de6f0','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24b4c97e-8182-e95c-8e1a-67ed947d1201','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('24f66eea-982a-8e28-7c5f-67ed94e4a1af','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2522041c-4d63-f92b-0941-67ed94093133','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('253f243b-4488-d786-c3c1-67ed940bcec8','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2635af51-a2a8-c79e-c8c1-67ed94b2b9fd','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26702ba4-d62f-37ac-90e0-67ed948a68a6','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('276521e9-0dc3-6fa9-29d3-67ed94983bd6','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27e8f882-cab7-3967-dfcd-67ed9491b87a','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27f357a6-2a54-1608-8881-67ed945b4281','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29398c3a-34c0-614f-9d22-67ed94d476b4','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('296beb0c-8e82-301c-2b52-67ed945b4745','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29e0fd35-45db-3e89-1aaf-67ed9461a289','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a9d307f-64e5-ca91-18d3-67ed948f6bf9','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b8c8f75-760d-c29d-f978-67ed946a3eb0','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d04f070-41e8-c90f-7e7b-67ed944afcdc','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d9d60be-e93c-3340-1f76-67ed94fbd213','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2e7ac2ec-c2d2-95bf-3581-67ed94e5e6ae','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('2f014d1d-4a94-398e-0fef-67ed9472a95a','securitygroups_outboundemailaccounts','SecurityGroups','securitygroups','id','OutboundEmailAccounts','outbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','OutboundEmailAccounts',0,0),('2f0efb00-6d24-a37f-e6e5-67ed945df632','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ff04cfd-03e4-c737-0c98-67ed948865bb','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30050eaf-d598-22f1-9090-67ed942b8a2e','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('307ec97e-638a-7fdd-a0ad-67ed94f42d93','outbound_email_owner_user','Users','users','id','OutboundEmailAccounts','outbound_email','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31f1290d-15b2-45b0-1c80-67ed943218ab','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31fc5e0a-b0e5-a9fe-cd64-67ed9446b617','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3366f548-320c-199d-107f-67ed946845f0','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('336af229-338c-29ce-2a72-67ed94f18c96','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34df0ef1-6a2b-bb74-7737-67ed94365f42','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('352b937b-00f8-e5a0-76eb-67ed9447abe1','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('359b7c54-feea-ecf4-6f5e-67ed94676e66','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('369b41bc-e757-0b69-f8b1-67ed941e35bc','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),('3b77bec5-adb8-a216-21ce-67ed940ed4f8','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ccd0b4f-7696-51d4-9ce9-67ed94be9f3c','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),('3ce66af6-4a00-03df-eab6-67ed94b32a88','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3cf37f43-490b-17bf-51ab-67ed946c3a1c','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e5b91c2-11dc-173a-17a3-67ed94ca0553','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e6ae6f4-7e7c-6c45-decb-67ed947d4e60','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ed87d74-4d1a-3292-2440-67ed9466269b','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f7175f4-f115-9e87-fad6-67ed9425ce7e','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3fcb7ede-145b-79e0-77cc-67ed949bfdfe','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('3fd6ec35-a793-5f5a-2ff8-67ed9467f794','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('40971623-c862-981b-a619-67ed94703161','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4116c353-36d6-54c9-6469-67ed94d7d852','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('41471ce3-8da4-94de-f5d1-67ed94a317b6','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('414a7636-b83a-9168-0cfe-67ed94f69755','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('420cc9bc-19d5-eff7-bafe-67ed94b60fd0','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('42802f2f-4f87-fd72-6429-67ed94168060','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),('42bb9c7a-1487-b579-2705-67ed94e692ad','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('42c2b4cb-a53b-5792-b440-67ed94b478bf','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4380f380-34ba-8ecf-abfb-67ed942b888b','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('4432c2cc-b091-0cf5-d5bb-67ed94115a4d','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('443e2866-bb11-98ef-b90c-67ed9440d004','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('45ab88c7-566c-d41c-4f28-67ed94689b00','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45b5f032-0d2e-03ec-31f5-67ed949ea53f','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('46e54792-c57e-76c0-4bc6-67ed94aa9025','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('471f774e-aced-6f8c-d013-67ed94db017d','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('485ebceb-8cda-18df-ad36-67ed94f19160','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('48ad7993-b8bc-3e61-3738-67ed94cff374','campaign_notes','Campaigns','campaigns','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Campaigns',0,0),('498aa9ff-c2cd-88dd-11c2-67ed942ffc18','externaloauthconnection_modified_user','Users','users','id','ExternalOAuthConnection','external_oauth_connections','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49d03f72-e631-7063-6ee8-67ed948b808c','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a10f63a-90e4-a3a5-9854-67ed944078a7','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a54f70b-814f-e929-2cbe-67ed945d65a5','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b119d6f-ec36-f38c-62ae-67ed94caa4af','externaloauthconnection_created_by','Users','users','id','ExternalOAuthConnection','external_oauth_connections','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b4a8506-5e06-eccb-2e3b-67ed94a1ef8c','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b61ec7e-8485-d1dd-d9e1-67ed941119d4','plank_planning_modified_user','Users','users','id','planK_Planning','plank_planning','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b82ae68-d230-79fd-2911-67ed94402037','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c53d61f-1670-1ba5-f762-67ed9406aa62','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c8c3344-bbb1-facb-b80f-67ed941e56e8','securitygroups_externaloauthconnection','SecurityGroups','securitygroups','id','ExternalOAuthConnection','external_oauth_connections','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthConnection',0,0),('4cc39fc3-7195-91f6-954c-67ed94c8281b','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cd6b853-335b-8a9a-bb51-67ed94211e8c','plank_planning_created_by','Users','users','id','planK_Planning','plank_planning','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d04a3b3-d609-5f6a-a3c1-67ed9467558d','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4dc1d754-8e2f-cc74-44e5-67ed9481f46f','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e08bc66-af97-114c-a6b1-67ed94d7012c','external_oauth_connections_external_oauth_providers','ExternalOAuthProvider','external_oauth_providers','id','ExternalOAuthConnection','external_oauth_connections','external_oauth_provider_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e3d0ddc-d8f3-4372-ec50-67ed940f6bb6','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e441c5d-edbd-cae7-8167-67ed94217b5b','plank_planning_assigned_user','Users','users','id','planK_Planning','plank_planning','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e6ef81c-07e9-7230-4c89-67ed9431323c','securitygroups_inboundemail','SecurityGroups','securitygroups','id','InboundEmail','inbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','InboundEmail',0,0),('4e78f4bf-ed55-4238-ce46-67ed9472b37e','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f716ec8-8d31-dc7e-0127-67ed948e1b2b','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f817067-8a80-96bd-5737-67ed94417584','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('4fbf24fe-54b3-9c9f-81b2-67ed94d7490e','securitygroups_plank_planning','SecurityGroups','securitygroups','id','planK_Planning','plank_planning','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','planK_Planning',0,0),('4fe8960e-789a-c4b0-7a75-67ed94849917','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5005a4ca-6513-cbfc-add1-67ed94cbbdb0','inbound_emails_distribution_user','Users','users','id','InboundEmail','inbound_email','distribution_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50f453dc-b78c-7a38-394b-67ed94c56dd9','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('516b102c-cf0b-2b9a-95e8-67ed94a2173d','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('516e6541-08f4-cb1a-f24b-67ed94162ad2','inbound_emails_autoreply_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52698a9e-cbc7-7096-eba7-67ed94934a0b','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52e95a0d-6bbe-c503-4355-67ed9439675c','inbound_emails_case_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','create_case_template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53e209b2-7bcc-c4c0-f723-67ed943640aa','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('53e335b0-d833-6a70-c8d3-67ed94996b66','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('545bdfd0-862b-b935-8c6b-67ed9447d507','inbound_emails_external_oauth_connections','ExternalOAuthConnection','external_oauth_connections','id','InboundEmail','inbound_email','external_oauth_connection_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('558f2c1c-2b4e-778e-5594-67ed946b7248','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('55da29e0-61bb-a106-f77f-67ed94798994','inbound_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','InboundEmail','inbound_email','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56c143bc-d602-379f-cb24-67ed94523138','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56cd41a3-e4a2-065d-7355-67ed94a7640c','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('56fd0ad5-1486-b302-6a60-67ed94f59f22','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('57403f49-a26a-8a04-64ed-67ed94ac6694','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('584cecf4-9cbb-8138-ef6a-67ed94e46c4f','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('584eaf87-2492-1bf7-da66-67ed94213cb3','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5890feee-10c8-5a6b-bee4-67ed9423a7c8','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58c8b618-6c48-13b6-ab99-67ed9468e7c4','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('59b581aa-058f-cf12-8299-67ed94de2374','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('59b93562-b01e-1e0a-418a-67ed945940c4','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59f4c7b1-461f-5f48-8739-67ed94852137','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b39aab5-b4f7-1324-ac3f-67ed947ffe37','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('5b72c56e-7068-8ed7-8c48-67ed94e09cc8','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('5cb449b9-fddd-b88a-453b-67ed94665120','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('5ce40a1b-2063-44c3-926f-67ed94051d7d','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('5e289107-03da-15e4-4ca7-67ed942cc4cc','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('5e6856a4-0b4d-4ef6-1e16-67ed94fa1ce5','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('5e70189d-301f-a4a8-39dd-67ed947b3663','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('5fa7a85e-e4ab-0713-c4f1-67ed9494a8d7','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('5fd6d32a-6fcb-d231-575e-67ed94c1c788','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('5fd73f4c-941b-476c-c454-67ed94c2a3f9','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('611de015-c4e6-ab63-d183-67ed94c546c3','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('614d0b4b-17e4-62b2-761c-67ed9403a4e0','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('62353956-d899-f5ff-d335-67ed948899a0','prospectlists_assigned_user','Users','users','id','ProspectLists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6254ddd6-8d0f-3a13-80a4-67ed94eac77f','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('62ce9f39-0096-18de-ce69-67ed94c75c7b','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('636d5aff-fee6-5e2a-0550-67ed940d94c3','externaloauthprovider_modified_user','Users','users','id','ExternalOAuthProvider','external_oauth_providers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('638347f0-b54c-e996-367a-67ed947370b8','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('63d49bea-ec98-4732-1bde-67ed948ab8df','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('645bc4f9-28dc-f7f7-f950-67ed94d5d0ed','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('647b507d-7745-c930-f81e-67ed9423a3d7','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6504f65b-6a69-cf20-7c5e-67ed942ff69a','externaloauthprovider_created_by','Users','users','id','ExternalOAuthProvider','external_oauth_providers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65307024-cd71-9642-02d1-67ed94318938','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('653aa32f-2442-b482-2944-67ed94304941','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('65f46ff7-1135-7035-cef5-67ed94fa59e6','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66702f11-8314-3a0e-8a11-67ed94c31995','securitygroups_externaloauthprovider','SecurityGroups','securitygroups','id','ExternalOAuthProvider','external_oauth_providers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthProvider',0,0),('66b30799-d4f0-58c1-2ee8-67ed94a0cd28','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('66fe8b6c-a995-283f-8299-67ed941f87ef','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67794ee3-e789-055a-658c-67ed947d49cf','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67e9017e-10e9-59ef-b041-67ed94a32929','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('6828ce12-a97f-4d9f-7165-67ed94d0ec46','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('685b6dbc-871b-ca3b-240e-67ed94928654','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('699face9-d1b2-f19f-cd49-67ed946e60d3','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('6b09b34d-2cfb-1b3f-e953-67ed94be82bf','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('6c87cb1e-9570-f737-886a-67ed94dbbc07','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('6dff897f-3a56-1410-cb92-67ed94c005a5','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('6f7f4031-3698-86cf-ec0e-67ed9426f146','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('70ffaf15-532a-f1ef-ff60-67ed94570d37','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('726e2fcb-3de4-73a0-df4f-67ed9400b129','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('73ea44d2-5081-0448-b208-67ed94fdb748','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('7559754c-182b-e92e-bae4-67ed94b6d08e','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('75b98015-e224-a06d-5214-67ed94bc3542','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75da170c-619f-9a3e-4a12-67ed94367812','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76782bfa-8c82-1643-3536-67ed94323830','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76cdc4ba-d570-7a4d-69e8-67ed947d12c0','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('7743a3b1-ec91-cace-e820-67ed9442d547','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('778fb790-d619-28b0-fff7-67ed94f92767','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('783c9cce-2f63-fd6b-6a72-67ed94daec5e','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('7844da3a-325e-3d62-a9ba-67ed94af193f','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7858b18b-af3c-a3d9-f73c-67ed94f6d2e4','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('787f92e6-0d38-b8f2-7ff3-67ed9427a71e','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78f3884b-7653-2c73-37fd-67ed945c777d','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78ff2880-395a-38d4-b525-67ed947daf23','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79b46e7f-be8b-8b86-09e3-67ed9407d4a5','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('79bd8eb1-00fa-06ab-c671-67ed94f41f59','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('79f9d8fe-ecb8-f3d6-7127-67ed94e9f3e3','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('7a31bb0a-8cc2-016a-4940-67ed949e95fe','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a70f511-23ac-cab1-bd65-67ed9453a7ef','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ab481d0-9bca-f4ca-a8ec-67ed944da4df','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ab758e1-ae04-0611-3509-67ed941dca3f','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('7af56a15-93b5-fe1f-b5a1-67ed945ca89b','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('7b2dac74-d127-e440-1b6f-67ed941902e2','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('7c1fa79d-ad72-8107-9207-67ed94c3b4e9','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c664e6a-2285-e4a2-8bfb-67ed94780147','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('7c6906c7-ab0d-5396-3569-67ed94f50ef6','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c6b1ecb-21e5-5b53-5ef1-67ed941a3919','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c9a47f9-580d-6411-c0b0-67ed9414f52c','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('7ca422c1-8bb8-2b23-0ade-67ed94c6f344','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d79d82f-9dfd-5263-7f02-67ed9486ba26','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7da18de8-f1ba-10f3-4c8d-67ed94840caa','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('7dda2dd2-5845-98b7-3156-67ed9445b604','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ddf35e8-ed57-f717-f7ef-67ed9457fb5f','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e1b881a-a621-fb72-8d0e-67ed94b9e336','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f137c7e-5ddf-7d17-9512-67ed94e2987d','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f152c0a-23e5-ede0-a853-67ed949d46c4','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('7f1f0a02-6ecf-1116-372c-67ed94b0e997','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f4f78f6-acab-5a7f-9676-67ed94dce314','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('7f8da65b-06a1-cd81-bae6-67ed9453c7c0','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('808e57dd-35f2-231d-812e-67ed940ee3b4','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8091df54-5906-c6ed-cedd-67ed949bd2f0','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('80c81a33-defa-4c33-58de-67ed94e67000','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('81024747-17a7-d445-a905-67ed94631e84','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('81c5469c-e672-7c75-9628-67ed94e8ceaa','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('823e86da-d744-7c7b-0e14-67ed941393bd','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('8241915a-e3fd-8d30-5d57-67ed94757ddc','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('82717b6d-dcab-121c-409a-67ed94ad2e84','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('82ec00c5-7b50-9b56-f08f-67ed94c7bee9','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82fb2171-f3c7-a454-a81a-67ed94357033','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('83b9393e-d5bf-1a01-70ad-67ed94cd4620','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('83bd35ef-174b-3f07-9069-67ed94cce91e','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('847ae422-90db-8b53-0de8-67ed940f2675','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('84f62fa4-e176-1cb8-63ab-67ed94039e32','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('852d92bc-ab8b-c60f-464a-67ed94e1a385','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('85f76df7-ddf8-a437-3b4b-67ed949d92c0','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('8661d5f0-a179-c4ab-6bda-67ed94c6bfdb','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('86a60c97-51ec-3bdf-9d8d-67ed94114e90','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('876fe23a-7bf2-5211-4115-67ed941171e9','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('87db1d14-8e19-fa07-5727-67ed941bd97c','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('88da5786-d3e0-0a29-28f0-67ed942b1886','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('895a2225-05f3-7e07-5d39-67ed94408913','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('8a523df2-c6b4-abb0-bf4c-67ed949b3ec9','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('8ad0eb13-9887-4913-598e-67ed9426ddbe','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('8bccb5e5-740f-008d-3491-67ed944b28fe','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('8d3c638a-cf1f-f815-e629-67ed94116bdf','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('8e207abd-86f7-accc-68b4-67ed94318c69','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8eb6cec4-7495-97ca-dec9-67ed94f30b41','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('8faa21e4-6681-abf3-faa5-67ed9463514c','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90320707-f598-8310-4918-67ed94231cfa','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('903365e1-53b8-7555-7fc5-67ed94f6c6a4','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9128a557-55f2-cbf9-e13d-67ed947eb9e9','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('91af6856-8427-8aac-8bb2-67ed94096738','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('91f20efd-108d-ad89-7692-67ed944d1ccc','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92985e0d-95ad-4971-7fd0-67ed9426d020','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('930a4a0f-8713-0508-330d-67ed94c96cef','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('931fc858-35f4-9fe3-53aa-67ed94eb0c77','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('9370b3cc-c13a-49a2-b2bd-67ed94c73067','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9392cc29-1deb-6f01-adf7-67ed94385b24','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('949bb6b0-18fc-b450-8a35-67ed941e8719','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94a0e594-4aba-e062-ee42-67ed94a5ddf0','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('94adc58a-4cb9-4ca9-ae67-67ed94f3bc2a','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94d0196a-a85a-8e3e-a481-67ed94ec7521','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('9515a6a0-faea-fc6c-6500-67ed9479a69f','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('95a46edd-15c9-66de-5490-67ed945ff1c5','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9609ec52-c172-975d-f884-67ed942ed1b6','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('961a62b7-9acb-5553-62ca-67ed94e9feeb','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('964a03d4-90d8-c5a8-c828-67ed94968236','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('964b085a-4fa2-96ca-21e9-67ed94d9950f','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96898750-fc4d-c3d9-b2c7-67ed947e8bc0','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96bcd9bd-20d5-8f80-58d4-67ed949807cf','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('977ad991-516e-0080-e260-67ed9464f94f','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('978a5d66-f9f4-a422-27ed-67ed94f52f95','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('97b849a8-e143-2c19-7f3a-67ed941e884e','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('97be7f83-ed28-f5e6-c109-67ed94f2057b','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98372d75-7cdd-36ef-c2c2-67ed9437211f','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98c053a6-bef9-9180-f46f-67ed94142f14','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('98f8e8ee-5e74-c141-e713-67ed94706c32','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('99b57afc-f4eb-10e2-c58d-67ed94f80a1c','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('9a2eb0d9-0440-d6e7-1bb1-67ed94e10162','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('9a75d62b-10dd-3172-4662-67ed949c96f7','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('9b301f22-697f-62fd-a8bb-67ed94982228','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('9b8234b0-08a5-916f-33eb-67ed9403d904','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),('9ba8e633-b2e5-5dba-6439-67ed940b2edf','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9bea5798-962c-d449-d7af-67ed944c6ae9','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('9c9cc35e-582b-b93c-dcf7-67ed9475b824','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d2045c3-33fa-d35e-ffd1-67ed94b8e3c5','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('9d209ba2-f803-d450-29c0-67ed9411d36b','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d64def5-3885-7055-6709-67ed9410da74','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('9db70d49-19f9-6553-1863-67ed94dacfc2','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e0af956-5249-2f52-9bce-67ed9467bb8f','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e98b796-75c2-eb86-c05a-67ed94412e1b','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('9ed9be38-4950-907c-3b28-67ed94b78318','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('9f881a0c-afaf-d414-68ba-67ed94375012','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a013b369-e68b-be5f-f680-67ed94d6aa01','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('a05191ae-11f9-d5c0-b77a-67ed94ccdda5','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('a0fc49bc-1f10-283e-3c6f-67ed9439aebe','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1c6c02c-9161-6438-ff31-67ed94d59e94','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('a1cabcce-06d1-7827-fe68-67ed94e7721c','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('a278e750-149b-70c4-b5d4-67ed94de2fa8','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('a33f25c0-1c23-4b22-e55d-67ed941be6d2','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('a340f2b0-d3d5-2e69-cff6-67ed94b640e9','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('a387ff8a-9726-7734-af7f-67ed946c24cc','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3ed94df-4967-6992-e6b9-67ed94fc2863','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a4b16b29-9256-34a6-0a4d-67ed9447c152','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('a4ed5a4a-f979-1b43-eb02-67ed94462fa7','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5113f09-c45b-e8bd-8d9a-67ed94560364','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a5393050-bb6a-9a7f-d931-67ed94659a9e','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a62fe428-bf03-20ad-c616-67ed94286642','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('a63a4e66-a640-b297-fb22-67ed9493ce5b','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a666e12c-51c3-82ed-f065-67ed947d70ba','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a69af611-5c8b-8d71-7e94-67ed94c5ddef','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a7a161ec-8f8f-7ede-81bc-67ed94d8a1eb','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7a20e96-f921-82a3-473a-67ed94585b14','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('a7da7c9a-0321-7e74-f512-67ed949f8273','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7de15f9-8162-374d-2906-67ed947fabfe','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('a8159865-f573-f23e-1e19-67ed94f97618','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a8a233cc-adab-b4ba-2223-67ed941bce4a','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a9150b80-5da8-5f9e-5966-67ed945b4f7c','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a91a1622-5c45-e2e5-e80c-67ed9450aace','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('a9470285-19bd-e301-6c4a-67ed94902f56','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a99fa926-8ca6-e6da-2e19-67ed94ea8724','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa14819f-fa66-13dd-b477-67ed9439d053','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa8e45b3-b10a-b0d9-6592-67ed9435018e','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('aa8f0799-de78-b6c6-ef70-67ed9459b529','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aafebad1-0729-c1c8-7510-67ed94b2b251','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('ab063d59-496c-58fc-4008-67ed94e18f26','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab84d428-2c4d-8d7b-7933-67ed949c7f41','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac0fbf98-543c-9a7e-f88c-67ed94288ba2','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('acc7e556-2383-8dc6-4acc-67ed94b95c5f','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad365a76-9401-4da2-bea6-67ed94d985b5','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('ad81fd6b-614e-f6bc-5926-67ed94fbb4f9','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('adf34e01-dbb6-fa5a-122b-67ed945035a5','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aeb1decf-a0f9-b29a-8a9e-67ed94a844e9','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aebd1d29-8187-36dc-51b9-67ed9479cfc3','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('b02495d6-bc07-0ecb-073e-67ed943a7beb','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('b0919cb6-7593-c3db-4a46-67ed94628659','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('b0c7dc6b-e5cc-2bdc-e190-67ed94612c60','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b198e8f7-7149-a78a-5b46-67ed942567b9','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('b1db38d3-a1a3-2444-1b65-67ed94294340','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1e41e8b-d594-e8ee-41e8-67ed94a88fd5','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('b29f0acb-fa36-ba59-3081-67ed94fe8235','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b313e332-0013-c83d-63cf-67ed94771fc0','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('b34e2567-acae-7ec2-4cec-67ed948d1643','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3737b26-06f6-f8e2-d196-67ed9461e221','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('b4103cac-8bd7-51e0-6de6-67ed94f49818','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4860da2-fc05-54cd-7193-67ed94ee2f04','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('b4c3b1e5-8ae5-093b-0995-67ed948799e1','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4cff724-dab5-0353-8e49-67ed944b0fb7','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),('b605286c-2f65-c284-c706-67ed94b8b5a7','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),('b64658cd-79d9-3a6d-3029-67ed9404d5d2','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('b68c10bb-d7e1-2247-f412-67ed948c755f','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('b7f1c38f-7e2a-56ea-ff2c-67ed948bf291','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8bcab4c-ca83-529e-e8d5-67ed94380daf','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9681d8d-2730-f3c0-1df8-67ed94e8c1c5','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9c10911-f436-2342-3625-67ed94cb731d','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba2d3e02-76fb-bd0a-6fbd-67ed944ff0db','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb2b1d7f-a1ea-d9d1-ac3b-67ed949dd18d','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb634886-4b19-79f2-880d-67ed943305fa','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bbe3059c-5c4b-09df-d5ce-67ed9492b702','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bcdd3a7c-3806-15e9-4933-67ed9448ac97','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('bd0adaf9-d0e7-a7df-fc82-67ed94dcd22f','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be17d0cb-9686-a980-035d-67ed9408c3ca','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('becfa1a8-79ce-e8e1-e617-67ed94ab779c','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c04356b5-9d56-87eb-6fb2-67ed942d99ad','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1656cb3-f55b-92c3-d22b-67ed94c3553c','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c185b44b-0843-70fd-e757-67ed94584ff4','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c24beb0a-83a0-b541-bbb9-67ed94f94649','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2ec34f0-d071-7823-5aaa-67ed94b1c885','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2f211f7-1400-6027-8ae7-67ed948a634e','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c30560ea-cd3e-eb09-476d-67ed948549bf','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('c3b19117-b40b-b65a-5368-67ed9496ec88','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c467fec1-4bee-4daa-2178-67ed94cbfe45','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c49edbe3-b913-988f-bb25-67ed9414ed79','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4bb65f2-802c-0cac-712c-67ed94b553ee','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4e6adfa-0b6a-1668-576d-67ed946cf292','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5e90071-9056-cd3c-0879-67ed94927eeb','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('c61ced58-ce66-6e84-8865-67ed94515c3e','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c66cc859-8c8a-ea8e-00a5-67ed94d2c534','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c75804aa-70d4-eb09-f04a-67ed94bdb238','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('c77c3ba8-84ff-7163-71f6-67ed9414ac5a','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7904ddf-230c-57bd-e8a9-67ed94651814','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7db5f2a-776a-9c74-eac0-67ed9499295a','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),('c80e3ad3-763a-14c1-44db-67ed948b2f1c','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8cc73c4-3167-4dcd-1744-67ed9493dfdb','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('c90cae86-6f80-7bdf-ba31-67ed94a88eef','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('c917f71b-5492-af11-d21d-67ed940d6e89','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c98f6cb5-98b0-618e-7930-67ed94835f02','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ca076cc8-e746-a907-6f7d-67ed94cbcce3','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ca3add6a-93b8-c86b-b969-67ed94185004','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('ca7afcf3-5d76-06e2-a45a-67ed9420e7d6','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('cb0eb913-a9cb-72c7-a1f1-67ed942f643a','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb4b2176-196f-1de6-53e3-67ed9425241b','surveyresponses_contacts','Contacts','contacts','id','SurveyResponses','surveyresponses','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cbbe0cb2-707e-266f-0c32-67ed9439f041','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('cc81bf01-cb72-cad8-555b-67ed944324f4','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('ccb4c9b6-62db-b8ee-e2b1-67ed94db5821','surveyresponses_accounts','Accounts','accounts','id','SurveyResponses','surveyresponses','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd2b4335-a526-f290-83b0-67ed94a0d362','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('ceb14e7b-ebac-e177-0a30-67ed94f5ba4a','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d0242eaf-ace6-b200-fcd2-67ed94448fd5','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d1e2097e-7fde-4bad-4b3d-67ed94938c35','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d34f04c7-9eb6-e11a-bffe-67ed946cad0d','users_users_password_link','Users','users','id',NULL,'users_signatures','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d44d06e1-5f34-dd49-69fa-67ed94aba47c','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4c5bd0e-ab34-7f2f-8cca-67ed94b2085a','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('d4d5010f-a43a-413b-d271-67ed94e26d99','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4f64860-8391-50c0-814a-67ed9444c86e','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d52f0c09-8234-81fa-309e-67ed944463ca','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d59e05a0-636a-6bab-f9b0-67ed9465de6f','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6427591-1e39-739d-1e74-67ed947076db','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('d6c072c1-bfec-ac5c-57a5-67ed94ed95b8','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d71bb063-b432-9e15-c479-67ed94051e51','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d869a27c-b7bd-7b96-2be3-67ed947d84fd','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d87d10f5-5e10-fa55-eb00-67ed943c39d9','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8ef52be-08b1-be40-46c5-67ed94add1fc','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d9e75588-f9c7-c084-36ef-67ed944928e9','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('d9ee55bc-396d-7cc8-76ba-67ed94ece2af','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('daaa4842-ce53-760b-2165-67ed94fd308e','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db041b5c-eaf4-0846-b237-67ed94794e18','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db5e30c4-166f-bca7-36bd-67ed946ef221','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db619d0d-b4ab-9430-c806-67ed94c1e114','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dbb76745-ea3a-19de-56fd-67ed9418bddc','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dbbe76fc-bb66-306c-59b4-67ed948822d0','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc0ffd5c-51ec-1610-101d-67ed94bf4661','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc5fc1de-074c-7ed7-b740-67ed94c2f7dd','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dcd6734d-0cfe-ba09-c836-67ed94820fa6','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd58e9bf-3822-0d6f-a75b-67ed942f8546','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd599ced-3969-e110-062b-67ed9420d236','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd907fcc-43af-885a-2758-67ed949fc664','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('dddaadf3-13d4-fad1-b599-67ed9493733e','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de402ee5-2287-9830-698e-67ed94f64f3e','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de4cf645-745d-0a16-f6a2-67ed946f2233','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('decae83f-cba5-470d-adf2-67ed948f1622','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dece8f43-564c-d5b2-064c-67ed94a609d2','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df06318e-9447-55a5-defc-67ed94fbfe75','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('df4f0427-4806-ebcc-0f26-67ed94965100','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),('dfb47621-ab56-4b2a-8c47-67ed94be9e86','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e0435a9b-c983-ff25-8c73-67ed949e8d34','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('e07ca79a-d58a-6913-3fb5-67ed94b40aa0','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('e092841d-8d6f-4b52-e425-67ed94c7a410','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e104b47f-5ec8-89c8-293d-67ed94719293','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e1328913-f0cc-68dd-4aea-67ed94801696','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e1b9c537-0d16-7260-198b-67ed949ea7ec','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e1e7843f-641e-fd94-08b7-67ed94717859','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e1f1d4e2-c2c7-3fd3-af14-67ed948dbe02','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e28bc798-7180-b6ce-950a-67ed944fd5cc','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e2ac282e-455a-fceb-6647-67ed9485e3ab','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e36b95fd-7f3a-cfe1-21a8-67ed94920a8f','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e3704219-cbc4-d436-ed5c-67ed94495e5b','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e3ac9e47-f25e-bff7-97cf-67ed948b1e3f','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e430c341-6a41-47d8-5aac-67ed9445e074','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4f77478-9679-2d1e-94de-67ed94aa5ffa','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e65e7a4f-0614-e634-9d31-67ed94a4d0a8','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7cc70a5-d36a-4d65-79da-67ed94ed0eb0','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('e94b86fe-dbf9-2612-a4ac-67ed94f882cd','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('ea000110-e364-c354-3452-67ed9426ae5e','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eaf54b1b-3afd-fc64-66d6-67ed94224049','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('ec7329aa-dd82-5d8a-6990-67ed948e7088','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec7c904e-e20e-9550-db5d-67ed94a647b1','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('edebe2f3-d10d-83d1-b99c-67ed942f6c25','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ee35f9f1-5ec7-3023-f3fe-67ed9480fcdc','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eec93231-6733-99ef-6f39-67ed945d6bb4','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ef63dbf3-9f9f-8207-1c8d-67ed941339f8','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0635be2-d22f-c93f-40d5-67ed94b16b8c','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f06b0a78-64dc-51c1-019c-67ed949aa7e7','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0830b4f-dea9-cc19-37e7-67ed94dc547f','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0a50e4d-df86-26e0-2505-67ed94327526','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0b5026b-bf73-8e65-2d22-67ed94ec8648','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0d44933-c9f0-3753-adfa-67ed946ee99c','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f1d83bc5-9a96-cc97-bbe1-67ed94d2dece','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f25dc676-3626-007c-39d4-67ed94b003ff','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f2da3302-7b22-ed5c-6733-67ed94768184','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('f2f69861-b2ce-b020-4ccd-67ed940a4761','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f38f2ece-4681-108d-7890-67ed94e4a430','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3c53727-8645-9dfa-eed7-67ed942e957c','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `quick_filter` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('7d36dfb5-c7b4-7fa3-db02-6786442bc532',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 15:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('7f40e871-b3ab-1cb3-ece4-678644870f01',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 12:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('8122e09f-2095-181e-84fe-678644219c1b',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 18:30:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('82dec096-0f96-eb5a-e57f-678644a28b37',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 19:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('849b8d1a-b399-7adf-41fb-678644e5e111',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 17:45:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('865a31a7-0f98-b494-7784-6786442a9f05',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 07:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('881d2f99-20ab-2407-93ea-678644135f86',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 17:00:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('89dee340-a602-058c-3f32-678644c6acb2',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 07:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('8ba93df8-57a8-f6c5-7185-678644fdd566',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 13:15:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('8d911fa6-9488-8a8d-ed97-67864454ef9a',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 16:30:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('8f599124-8206-d3a1-484c-6786443488d0',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 09:00:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('9125d160-f5c1-3c58-5ffe-678644b7cf74',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Google Calendar Sync','function::syncGoogleCalendar','2015-01-01 19:30:01',NULL,'*/15::*::*::*::*',NULL,NULL,NULL,'Active',0),('92e1faa8-32fb-fb7c-0408-678644ab7a12',0,'2025-01-14 11:02:58','2025-01-14 11:02:58','1','1','Perform Elasticsearch Index','function::runElasticSearchIndexerScheduler','2015-01-01 15:15:01',NULL,'30::4::*::*::*',NULL,NULL,NULL,'Active',0);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('bba10d4f-8edd-9fda-57ff-67bc3f7034d7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:a36123d0-036d-192c-d9db-67bc3f3e4264:test Нгуен]','2025-02-24 09:44:50','2025-02-24 09:44:50','1','1',NULL,0,'1','Contacts','a36123d0-036d-192c-d9db-67bc3f3e4264',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

LOCK TABLES `surveyquestionoptions` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

LOCK TABLES `surveyquestionoptions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

LOCK TABLES `surveyquestionoptions_surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

LOCK TABLES `surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

LOCK TABLES `surveyquestionresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

LOCK TABLES `surveyquestions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

LOCK TABLES `surveyresponses` WRITE;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

LOCK TABLES `surveyresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

LOCK TABLES `surveys_audit` WRITE;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('195bd914-b00c-c343-457d-67d46243f141','йццукееншншгермти','2025-03-14 17:06:30','2025-03-15 18:21:33','1','1','рлоиритьсм',1,'1','In Progress',0,'2025-03-15 21:00:00',0,NULL,NULL,'','',NULL),('27b305c7-063f-1e12-faeb-67d461524fcc','аааааааааааааааааааааааааааааа','2025-03-14 17:03:52','2025-03-15 18:21:33','1','1','ропорпопоп',1,'1','In Progress',0,'2025-03-14 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('29460633-1402-bfee-a6c8-67dd2f807f10','вапвапвапвап','2025-03-21 09:21:02','2025-03-21 09:21:02','1','1','вапвап',0,'1','In Progress',0,'2025-03-21 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('2be78907-cf46-860f-da02-67d44824cfbf','task','2025-03-14 15:16:21','2025-04-02 17:06:11','1','1','dsff',1,'1','In Progress',0,'2025-03-19 21:00:00',0,NULL,NULL,'','',NULL),('3c84f182-0cda-594b-0cd4-67dd30dafc50','ооо','2025-03-21 09:24:44','2025-03-21 09:24:44','1','1','жжж',0,'1','In Progress',0,'2025-03-20 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('3f968ea0-b311-0abd-2b74-67d45dae503e','оооддьмм','2025-03-14 16:45:00','2025-03-15 18:21:33','1','1','ророр',1,'1','In Progress',0,'2025-03-14 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('446bea0b-99df-e483-8d05-67d46e05680a','исми','2025-03-14 17:58:03','2025-03-14 17:58:03','1','1','сичси',0,'1','In Progress',0,'2025-03-14 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('4d596d50-7236-8133-2687-67cae5ce1f0c','fdfsf','2025-03-07 12:25:52','2025-04-02 17:06:19','1','1','sdfdsfsdf',1,'1','In Progress',0,'2025-03-20 21:00:00',0,'2025-03-06 21:00:00',NULL,NULL,NULL,NULL),('55787611-eded-5ad1-8c20-67d460e2cd26','аааааааааааааааааааааааааааа','2025-03-14 17:01:30','2025-03-14 17:01:30','1','1','риорморм',0,'1','In Progress',0,'2025-03-15 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('60ddbf60-3e56-532d-af6f-67dd865283ca','fdfsdf','2025-03-21 15:31:32','2025-04-02 17:06:19','1','1','fdsfdf',1,'1','In Progress',0,NULL,0,NULL,NULL,NULL,NULL,NULL),('8640b9ce-7310-f165-207e-67ce9fa4d399','оирроор','2025-03-10 08:13:41','2025-03-15 18:21:16','1','1','ооллр',1,'1','In Progress',0,'2025-03-13 21:00:00',0,'2025-03-10 21:00:00',NULL,NULL,NULL,NULL),('9b45a5c7-35d2-16ec-f4e9-67eafca8b96e','НОВАЯ','2025-03-31 20:36:54','2025-03-31 20:36:54','1','1','sdfsdfsf',0,'1','In Progress',0,'2025-04-15 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('a0be4aac-182a-b20e-d15d-67c7641202ac','ывмывм','2025-03-04 20:38:12','2025-03-15 18:21:16','1','1','ывмывмывм',1,'1','In Progress',0,NULL,0,'2025-03-03 21:00:00',NULL,NULL,NULL,NULL),('a3c6b994-6267-7b5b-43c9-67dd2f878053','444','2025-03-21 09:23:02','2025-03-21 09:23:02','1','1','дд',0,'1','In Progress',0,'2025-03-20 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('aec9305d-9fe0-7059-6f78-67ed698dd3ec','dnsmd,asnd','2025-04-02 16:45:31','2025-04-02 17:06:19','1','1','sfesfssf',1,'1','In Progress',0,'2025-04-29 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('b3a1b76b-b751-bdf1-3594-67ccb99b0fa6','яч','2025-03-08 21:42:45','2025-03-15 18:21:16','1','1','явапвп',1,'1','In Progress',0,'2025-03-09 21:00:00',0,'2025-03-08 21:00:00',NULL,NULL,NULL,NULL),('b5728365-9ace-bf2d-c3fe-67d5c4ea8adb','ымвмм','2025-03-15 18:20:29','2025-03-15 18:21:16','1','1','вавиваи',1,'1','In Progress',0,'2025-03-15 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('b5c15c96-071a-518f-1dcd-67c764634a05','ыпывп','2025-03-04 20:37:54','2025-03-15 18:21:16','1','1','ывмвымвм',1,'1','In Progress',0,'2025-03-03 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('c1f7a02b-ba1a-7f93-140b-67d460fe3082','ррррррррррррррр','2025-03-14 17:00:56','2025-03-14 17:00:56','1','1','одлрлортл',0,'1','In Progress',0,'2025-03-14 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('d59abded-dc0c-9c2b-69fc-67c76571a640','ямывм','2025-03-04 20:42:15','2025-03-15 18:21:16','1','1','ывмывм',1,'1','In Progress',0,'2025-03-04 21:00:00',0,'2025-03-03 21:00:00',NULL,NULL,NULL,NULL),('e2f60762-54d4-0073-2bfa-67e551f27b94','Задача','2025-03-27 13:22:50','2025-04-02 17:06:19','1','1','РОООООООО',1,'1','In Progress',0,'2025-03-13 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('e617b700-6905-82a6-ecd2-67ebeae33ba4','рпопр','2025-04-01 13:31:11','2025-04-02 17:06:19','1','1','прпор',1,'1','Not Started',0,'2025-04-25 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('e837acfc-23c4-4ad3-312b-67c764380a1a','вап','2025-03-04 20:37:12','2025-03-15 18:21:16','1','1','впвп',1,'1','In Progress',0,'2025-03-03 21:00:00',0,NULL,NULL,NULL,NULL,NULL),('ef6b93ef-698b-0d2c-a88c-67c76448cc96','ывмвым','2025-03-04 20:38:34','2025-03-04 20:38:34','1','1','ывмывмыв',0,'1','In Progress',0,'2025-03-03 21:00:00',0,'2025-03-03 21:00:00',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_cstm`
--

DROP TABLE IF EXISTS `tasks_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_cstm` (
  `id_c` char(36) NOT NULL,
  `sales_stage_c` varchar(100) DEFAULT 'not_sales',
  `person_view_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_cstm`
--

LOCK TABLES `tasks_cstm` WRITE;
/*!40000 ALTER TABLE `tasks_cstm` DISABLE KEYS */;
INSERT INTO `tasks_cstm` VALUES ('2be78907-cf46-860f-da02-67d44824cfbf','cold_start','general'),('4d596d50-7236-8133-2687-67cae5ce1f0c','cold_strategy','general'),('60ddbf60-3e56-532d-af6f-67dd865283ca','project','small_medium_buisness'),('aec9305d-9fe0-7059-6f78-67ed698dd3ec','hot_commercial','large_or_statecorp'),('e2f60762-54d4-0073-2bfa-67e551f27b94','freezed','gr_state_budget'),('e617b700-6905-82a6-ecd2-67ebeae33ba4','hot_commercial','large_or_statecorp');
/*!40000 ALTER TABLE `tasks_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (1,'63b00283-392e-ee5c-dec7-6786450a0727','1','Users','1','Administrator','2025-01-14 11:08:29','editview','4ccptjp5d8d4jpuff82v1j240c',1,0),(2,'d3d25489-e4e1-78ec-2ce8-678645e41d7e','1','Users','1','Administrator','2025-01-14 11:08:30','detailview','4ccptjp5d8d4jpuff82v1j240c',1,0),(3,'dbadd66d-73db-cc0b-a7c4-67864b3dc9d1','1','Users','1','Administrator','2025-01-14 11:32:57','editview','jrl813773vin1gof0tpuug2cue',1,0),(4,'9aba8438-5ea7-c385-2a17-67864bda29da','1','Users','1','Administrator','2025-01-14 11:32:58','detailview','jrl813773vin1gof0tpuug2cue',1,0),(5,'783a3bb7-bdfa-f0cc-a2d9-67a363f4d39e','1','Accounts','61df3b03-929d-a671-ba87-67a363a4af6d','Test','2025-02-05 13:09:27','detailview','sv02cd7c5qrkfij75fvt0i7jt6',1,0),(6,'8dcc1737-61d8-2ce5-ddb9-67b3184703ac','1','Users','1','Administrator','2025-02-17 11:09:07','editview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(7,'c2535661-099d-ca7a-921b-67b318bb0cec','1','Users','1','Administrator','2025-02-17 11:09:07','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(8,'210be871-5751-b509-c4dc-67b31831b5fa','1','Users','1','Administrator','2025-02-17 11:09:23','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(9,'5eeb9458-4425-e8f5-8669-67b3183b2aa6','1','Users','1','Administrator','2025-02-17 11:09:29','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(10,'2306b10d-c8c9-89e8-b8cb-67b318853240','1','Users','1','Administrator','2025-02-17 11:09:31','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(11,'b49a3e7f-c74b-5a70-0e39-67b4430605a7','1','Users','1','Administrator','2025-02-18 08:23:23','editview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(12,'abdbaff9-da54-56e2-268f-67b443d4c7dc','1','Users','1','Administrator','2025-02-18 08:23:24','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(13,'2d17c401-84ab-2731-9d4f-67b444aa8ce1','1','Users','1','Administrator','2025-02-18 08:26:25','editview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(14,'959aa860-ea85-32ee-d052-67b444a7cdb7','1','Users','1','Administrator','2025-02-18 08:26:25','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(15,'18de4c8f-509e-4cc5-c0cc-67b445e8e096','1','Users','1','Administrator','2025-02-18 08:31:45','editview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(16,'8b254b74-6b3c-75e5-d437-67b44517fa97','1','Users','1','Administrator','2025-02-18 08:31:45','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(17,'e3c0728d-e830-1440-3fb0-67b4459ea6cc','1','Users','1','Administrator','2025-02-18 08:32:02','editview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(18,'c2c48738-6719-b3c0-7fa6-67b445f06a9d','1','Users','1','Administrator','2025-02-18 08:32:03','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(19,'4c611b4d-9149-8a7a-4c3d-67b445b55f70','1','Users','1','Administrator','2025-02-18 08:32:08','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(20,'767d6354-e6a9-9d75-a145-67b4457f3cf0','1','Users','1','Administrator','2025-02-18 08:32:11','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(21,'b0727c82-37f4-17f5-e332-67b445e2405c','1','Users','1','Administrator','2025-02-18 08:32:15','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(22,'733ed70a-f74e-b868-58cd-67b44508b6d6','1','Users','1','Administrator','2025-02-18 08:32:18','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(23,'d38e184b-5a46-bc5d-08d8-67b44588b259','1','Users','1','Administrator','2025-02-18 08:32:29','editview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(24,'35ac1c7b-a093-8d7d-0777-67b4459bf483','1','Users','1','Administrator','2025-02-18 08:32:30','detailview','jo6fbuhb0tb25agsvqoh1smih5',1,0),(25,'f220b794-bccf-55ca-cf20-67b4452e9a16','1','Users','1','Administrator','2025-02-18 08:33:23','editview','31vuqiikfj9dd8l3fq7hmpo9u3',1,0),(26,'5af884f7-65b9-69e3-a0cb-67b445b0b545','1','Users','1','Administrator','2025-02-18 08:33:24','detailview','31vuqiikfj9dd8l3fq7hmpo9u3',1,0),(27,'8acc9881-cbe7-c660-ce34-67b44673c469','1','Users','1','Administrator','2025-02-18 08:34:39','detailview','31vuqiikfj9dd8l3fq7hmpo9u3',1,0),(28,'55890349-1d53-0b6f-d67e-67b4464ddd93','1','Users','1','Administrator','2025-02-18 08:34:43','detailview','31vuqiikfj9dd8l3fq7hmpo9u3',1,0),(29,'825d08b0-2c73-925e-3473-67b4467c5963','1','Users','1','Administrator','2025-02-18 08:34:43','detailview','31vuqiikfj9dd8l3fq7hmpo9u3',1,0),(30,'97f0e7e6-a739-522b-9f2f-67b4460e61db','1','Users','1','Administrator','2025-02-18 08:35:04','editview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(31,'de354129-6b9b-4e36-d1a8-67b446195b82','1','Users','1','Administrator','2025-02-18 08:35:05','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(32,'1b2c331c-5b12-717d-8110-67b446f9bcf8','1','Users','1','Administrator','2025-02-18 08:35:14','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(33,'686ea0b6-bc09-06f8-d283-67b446fe9669','1','Users','1','Administrator','2025-02-18 08:35:18','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(34,'1ed3fd7f-2c63-2941-fbc3-67b4468d9017','1','Users','1','Administrator','2025-02-18 08:35:20','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(35,'81cd8a4d-90fa-ee23-2895-67b446a32d87','1','Users','1','Administrator','2025-02-18 08:37:48','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(36,'b25d8e89-de0f-3e67-c14e-67b4468d4f19','1','Users','1','Administrator','2025-02-18 08:37:48','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(37,'3712a61f-af97-bb23-e63e-67b44624b033','1','Users','1','Administrator','2025-02-18 08:38:02','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(38,'14b77ff3-75af-4145-cb9c-67b446c4c36c','1','Users','1','Administrator','2025-02-18 08:38:03','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(39,'314633d1-fa48-2329-9411-67b447f342b2','1','Users','1','Administrator','2025-02-18 08:38:28','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(40,'1763ae9b-75f7-fbeb-f121-67b447917660','1','Users','1','Administrator','2025-02-18 08:38:29','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(41,'a8261c9e-a451-f462-030a-67b44748c28e','1','Users','1','Administrator','2025-02-18 08:38:35','editview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(42,'b340ae29-daa1-d8f6-c918-67b4477f43a2','1','Users','1','Administrator','2025-02-18 08:38:36','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(43,'b5cc49f1-9056-52ce-f3f7-67b4470505d4','1','Users','1','Administrator','2025-02-18 08:39:19','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(44,'7d1f0c0c-b846-807b-421e-67b447a0a4c0','1','Users','1','Administrator','2025-02-18 08:39:23','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(45,'da124164-2633-d41a-500f-67b447efe1a1','1','Users','1','Administrator','2025-02-18 08:39:26','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(46,'28ea4e78-c0a8-930a-c54c-67b449a6aa49','1','Users','1','Administrator','2025-02-18 08:48:42','editview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(47,'4c3aae5b-df37-9410-fda2-67b449a10db7','1','Users','1','Administrator','2025-02-18 08:48:42','detailview','jiedqgfsd6rmk9rs2adsm4iggb',1,0),(48,'b1fc498f-f64a-5360-ada7-67b44a0df019','1','Users','1','Administrator','2025-02-18 08:51:17','editview','i55vn8ff4qomksisjf0429geil',1,0),(49,'16f4df9c-3bdf-4ff8-f23b-67b44ad3e709','1','Users','1','Administrator','2025-02-18 08:51:18','detailview','i55vn8ff4qomksisjf0429geil',1,0),(50,'ec6edb9e-90c3-6e29-c637-67b44a058e9a','1','Users','1','Administrator','2025-02-18 08:51:25','detailview','i55vn8ff4qomksisjf0429geil',1,0),(51,'7ad7b7cf-dee0-e2ca-b8fb-67b44a5b53c6','1','Users','1','Administrator','2025-02-18 08:51:29','detailview','i55vn8ff4qomksisjf0429geil',1,0),(52,'e602436a-da08-e99a-b726-67b44a56f52d','1','Users','1','Administrator','2025-02-18 08:51:31','detailview','i55vn8ff4qomksisjf0429geil',1,0),(53,'35a1596b-4208-b7c6-62cc-67b44a538193','1','Users','1','Administrator','2025-02-18 08:51:55','editview','i55vn8ff4qomksisjf0429geil',1,0),(54,'7f78810e-ccb6-fed4-8c30-67b44a19c090','1','Users','1','Administrator','2025-02-18 08:51:55','detailview','i55vn8ff4qomksisjf0429geil',1,0),(55,'78ba84ca-7b43-7ef2-acc3-67b44b31d7e8','1','Users','1','Administrator','2025-02-18 08:56:05','editview','h1ftod11s29st8k50hgah9pdjr',1,0),(56,'cee8edfd-15d8-856f-a542-67b44b217acc','1','Users','1','Administrator','2025-02-18 08:56:05','detailview','h1ftod11s29st8k50hgah9pdjr',1,0),(57,'7542cb4e-bb3b-198a-593b-67b44bef75d0','1','Users','1','Administrator','2025-02-18 08:56:37','editview','879aiqrqqih0tciivtng8bndnd',1,0),(58,'e9d38403-30e2-cf11-db23-67b44b7e66fb','1','Users','1','Administrator','2025-02-18 08:56:37','detailview','879aiqrqqih0tciivtng8bndnd',1,0),(59,'1bcc526f-2684-f5af-0852-67b44b6ae2c5','1','Users','1','Administrator','2025-02-18 08:56:53','detailview','879aiqrqqih0tciivtng8bndnd',1,0),(60,'393462e1-2a16-d599-e920-67b44b73dbb7','1','Users','1','Administrator','2025-02-18 08:56:57','detailview','879aiqrqqih0tciivtng8bndnd',1,0),(61,'f3b4142a-c5a7-b8f1-9b9a-67b44bcef58d','1','Users','1','Administrator','2025-02-18 08:56:59','detailview','879aiqrqqih0tciivtng8bndnd',1,0),(62,'c6e74c2b-c278-6c31-b8ac-67b44b0611f1','1','Users','1','Administrator','2025-02-18 08:57:22','editview','5cckph9m8j394t6i9ahk03racv',1,0),(63,'fdc40c0e-14ba-6161-3f05-67b44b2720a7','1','Users','1','Administrator','2025-02-18 08:57:23','detailview','5cckph9m8j394t6i9ahk03racv',1,0),(64,'c5f6fe01-7703-dea1-5a2a-67b44c8125d5','1','Users','1','Administrator','2025-02-18 09:02:10','editview','5cckph9m8j394t6i9ahk03racv',1,0),(65,'c34d648a-23ed-3a21-598b-67b44c3952ce','1','Users','1','Administrator','2025-02-18 09:02:11','detailview','5cckph9m8j394t6i9ahk03racv',1,0),(66,'221f3dbc-b271-435f-fa3e-67b44c39e991','1','Users','1','Administrator','2025-02-18 09:02:15','detailview','5cckph9m8j394t6i9ahk03racv',1,0),(67,'42b043af-fe85-fbc8-a158-67b44c34c045','1','Users','1','Administrator','2025-02-18 09:02:19','detailview','5cckph9m8j394t6i9ahk03racv',1,0),(68,'e1bdac12-c493-b331-d731-67b44cd9876b','1','Users','1','Administrator','2025-02-18 09:02:21','detailview','5cckph9m8j394t6i9ahk03racv',1,0),(69,'6e070d3c-4a48-16f0-b296-67bc2e359789','1','Users','1','Administrator','2025-02-24 08:31:15','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(70,'b4f9a06a-164d-1bb0-82eb-67bc2e8ac76b','1','Users','1','Administrator','2025-02-24 08:31:15','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(71,'1e65119c-c8d5-af9b-9984-67bc2ee1ca65','1','Users','1','Administrator','2025-02-24 08:31:43','editview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(72,'1e04dfe9-783c-d3f0-b01e-67bc2e96a687','1','Users','1','Administrator','2025-02-24 08:31:43','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(73,'6b27fc03-bf6b-8db0-7925-67bc2fa3a106','1','Users','1','Administrator','2025-02-24 08:34:34','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(74,'2752c6f1-92a1-a77e-a8b5-67bc2fb054ee','1','Users','1','Administrator','2025-02-24 08:34:41','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(75,'92faff36-5062-7cc4-8353-67bc2f6d311b','1','Users','1','Administrator','2025-02-24 08:34:41','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(76,'7b4cc69a-48f1-50f9-d062-67bc2fb515cc','1','Users','1','Administrator','2025-02-24 08:35:28','editview','fhnsdpl21a8amn54vjm0nsq28t',1,0),(77,'7f822bed-6c57-2d3b-b9f7-67bc2fd589e2','1','Users','1','Administrator','2025-02-24 08:35:28','detailview','fhnsdpl21a8amn54vjm0nsq28t',1,0),(78,'24e8c515-c52c-668a-3bea-67bc2fef0ba0','1','Users','1','Administrator','2025-02-24 08:35:50','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(79,'ce893288-1efc-21d2-3325-67bc2f6accb5','1','Users','1','Administrator','2025-02-24 08:35:50','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(80,'7b5cd3bd-9895-8f14-922f-67bc2f9b252e','1','Users','1','Administrator','2025-02-24 08:36:03','editview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(81,'72b87620-6dbb-8a58-74d7-67bc2f91d56c','1','Users','1','Administrator','2025-02-24 08:36:03','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(82,'39b90b7f-9337-3839-45e0-67bc2f499fef','1','Users','1','Administrator','2025-02-24 08:36:15','editview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(83,'ca09fc8c-dd25-2a51-6ec4-67bc2fd8f307','1','Users','1','Administrator','2025-02-24 08:36:16','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(84,'170bebbc-e07a-4b07-db5d-67bc2f017094','1','Users','1','Administrator','2025-02-24 08:36:45','editview','8a68m4dg2lf0knsnvts96n24sp',1,0),(85,'1b9e5ae1-89ce-3a4a-2d63-67bc2fb319f6','1','Users','1','Administrator','2025-02-24 08:36:45','detailview','8a68m4dg2lf0knsnvts96n24sp',1,0),(86,'832455d8-7105-fb54-d03a-67bc3056fee7','1','Users','1','Administrator','2025-02-24 08:38:55','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(87,'425b6b60-b857-cf03-be58-67bc30096774','1','Users','1','Administrator','2025-02-24 08:39:03','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(88,'5bf624af-79ef-6084-141a-67bc309c7439','1','Users','1','Administrator','2025-02-24 08:39:03','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(89,'5780cd13-df77-7e21-c0b5-67bc3079e6ed','1','Users','1','Administrator','2025-02-24 08:39:12','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(90,'d6dbbf36-9971-952e-73ef-67bc308c6fd0','1','Users','1','Administrator','2025-02-24 08:39:12','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(91,'d2e6e85e-b2a4-9110-7380-67bc3077662f','1','Users','1','Administrator','2025-02-24 08:39:30','editview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(92,'c26546d8-12ae-365a-9c89-67bc307fc843','1','Users','1','Administrator','2025-02-24 08:39:31','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(93,'b835bc83-ad9b-1e88-3446-67bc30770db9','1','Users','1','Administrator','2025-02-24 08:40:05','detailview','3cejqp93hcohpf5bip96ttu40c',1,0),(94,'abcf6b65-8766-8171-74ce-67bc30554b96','1','Users','1','Administrator','2025-02-24 08:40:06','detailview','3cejqp93hcohpf5bip96ttu40c',1,0),(95,'b3d608e6-d3d3-44e2-77db-67bc309cb9de','1','Users','1','Administrator','2025-02-24 08:40:14','editview','3cejqp93hcohpf5bip96ttu40c',1,0),(96,'d1617066-47ba-6f1c-f91c-67bc30044793','1','Users','1','Administrator','2025-02-24 08:40:15','detailview','3cejqp93hcohpf5bip96ttu40c',1,0),(97,'58a84862-5247-ed7c-1a10-67bc3065f870','1','Users','1','Administrator','2025-02-24 08:40:47','editview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(98,'491de344-5f21-272f-178f-67bc30ba6d1e','1','Users','1','Administrator','2025-02-24 08:40:47','detailview','cqov4h7h9e4ke9hc05ek1pffk4',1,0),(99,'6e2fab66-e44c-c5e0-ba02-67bc30f94670','1','Users','1','Administrator','2025-02-24 08:41:21','editview','05g094a0nlhel5emqaq79qetmn',1,0),(100,'7b78ebf9-89fe-0237-0ec4-67bc30df58b2','1','Users','1','Administrator','2025-02-24 08:41:21','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(101,'e8b7ecda-1acf-c349-01b1-67bc31df25a3','1','Users','1','Administrator','2025-02-24 08:43:26','editview','h4i2j7lvvgvblgtsimgqmits82',1,0),(102,'129271cb-bdde-9fd2-815f-67bc31aee2c7','1','Users','1','Administrator','2025-02-24 08:43:27','detailview','h4i2j7lvvgvblgtsimgqmits82',1,0),(103,'4626aad9-c8c2-759e-86bf-67bc32381410','1','Users','1','Administrator','2025-02-24 08:50:36','editview','05g094a0nlhel5emqaq79qetmn',1,0),(104,'baf916fe-65e9-eeb8-68a5-67bc323a6d7d','1','Users','1','Administrator','2025-02-24 08:50:36','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(105,'9247c8df-adb5-c6bc-de88-67bc320c5822','1','Users','1','Administrator','2025-02-24 08:50:45','editview','05g094a0nlhel5emqaq79qetmn',1,0),(106,'6dc57574-57ba-4352-17a1-67bc3230758a','1','Users','1','Administrator','2025-02-24 08:50:45','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(107,'4a26cba3-1293-5e1e-122e-67bc33aba3de','1','Users','1','Administrator','2025-02-24 08:52:21','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(108,'c1171e4f-618c-de4d-73ee-67bc33ae7c99','1','Users','1','Administrator','2025-02-24 08:52:28','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(109,'cd320314-d1d8-288b-d88c-67bc3366e72c','1','Users','1','Administrator','2025-02-24 08:52:29','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(110,'a2c9f72a-3aae-18ff-8690-67bc33635b1f','1','Users','1','Administrator','2025-02-24 08:53:07','editview','439j6boatq4d49301bcqre5mv0',1,0),(111,'39c70dc9-2b8f-ab07-6704-67bc332d0258','1','Users','1','Administrator','2025-02-24 08:53:08','detailview','439j6boatq4d49301bcqre5mv0',1,0),(112,'1be8d4b6-8f22-8f9b-7ebb-67bc3489b3a3','1','Users','1','Administrator','2025-02-24 08:57:28','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(113,'d8f40fed-57cd-0e38-febe-67bc34592d9c','1','Users','1','Administrator','2025-02-24 08:57:28','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(114,'4c278d40-e209-45c3-0123-67bc3478fa51','1','Users','1','Administrator','2025-02-24 08:57:37','editview','05g094a0nlhel5emqaq79qetmn',1,0),(115,'70338b3c-d26b-d97f-7d1d-67bc34d0b2e7','1','Users','1','Administrator','2025-02-24 08:57:37','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(116,'6fec0364-c0a0-f9f2-2596-67bc3496f88e','1','Users','1','Administrator','2025-02-24 08:57:59','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(117,'6cad1f0d-b42f-809a-6205-67bc3473a963','1','Users','1','Administrator','2025-02-24 08:58:06','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(118,'b883e630-a15b-92dc-b656-67bc34c110a2','1','Users','1','Administrator','2025-02-24 08:58:06','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(119,'1751208b-6039-13c8-5e65-67bc34d4eebf','1','Users','1','Administrator','2025-02-24 08:58:54','editview','2b1k3kc1j7un0pgqo3fkbp46op',1,0),(120,'45476a89-ac8d-0617-50f8-67bc34088489','1','Users','1','Administrator','2025-02-24 08:58:54','detailview','2b1k3kc1j7un0pgqo3fkbp46op',1,0),(121,'3617ee48-7f75-cd20-0e03-67bc36dbcfc0','1','Users','1','Administrator','2025-02-24 09:08:08','editview','05g094a0nlhel5emqaq79qetmn',1,0),(122,'21a17d94-5f35-62c2-bb92-67bc36a78b5d','1','Users','1','Administrator','2025-02-24 09:08:08','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(123,'d3cfc9a4-7394-8e0a-77ee-67bc37b0a066','1','Users','1','Administrator','2025-02-24 09:08:18','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(124,'3a8292fb-4883-49ab-cdaa-67bc3704bb6f','1','Users','1','Administrator','2025-02-24 09:08:25','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(125,'a0c55a47-0097-8d22-9532-67bc3723ec33','1','Users','1','Administrator','2025-02-24 09:08:25','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(126,'5037b54b-290e-c165-111c-67bc3794b76e','1','Users','1','Administrator','2025-02-24 09:09:34','editview','05g094a0nlhel5emqaq79qetmn',1,0),(127,'7ce1bc34-45bb-57bc-1be0-67bc373f1210','1','Users','1','Administrator','2025-02-24 09:09:34','detailview','05g094a0nlhel5emqaq79qetmn',1,0),(128,'8c967a14-b5f9-c6cd-9227-67bc371a11fa','1','Users','1','Administrator','2025-02-24 09:10:54','editview','6cu68dha3thbntuh80p5q5od9o',1,0),(129,'b1a86b2c-50c0-19b4-763e-67bc37a1bfb0','1','Users','1','Administrator','2025-02-24 09:10:54','detailview','6cu68dha3thbntuh80p5q5od9o',1,0),(130,'a2d90dbd-0b8b-86be-21d3-67bc371984f9','1','Users','1','Administrator','2025-02-24 09:11:40','editview','6cu68dha3thbntuh80p5q5od9o',1,0),(131,'992a792f-f8c6-7741-997e-67bc37495a6d','1','Users','1','Administrator','2025-02-24 09:11:41','detailview','6cu68dha3thbntuh80p5q5od9o',1,0),(132,'49c10847-0bcc-ff10-f6f7-67bc3c60b1f9','1','Users','1','Administrator','2025-02-24 09:30:23','editview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(133,'499df2ac-66e0-4619-42fa-67bc3cd32332','1','Users','1','Administrator','2025-02-24 09:30:24','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(134,'599ce34c-42c2-4218-ece7-67bc3c2b2e25','1','Users','1','Administrator','2025-02-24 09:31:00','editview','d91v9hj8chhbj8bh7gnp8ngckp',1,0),(135,'23179886-ee0a-b330-e793-67bc3c27af34','1','Users','1','Administrator','2025-02-24 09:31:00','detailview','d91v9hj8chhbj8bh7gnp8ngckp',1,0),(136,'17319c99-cbb0-b4e4-dc42-67bc3de3679a','1','Users','1','Administrator','2025-02-24 09:37:07','editview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(137,'7022e121-77bc-1619-1831-67bc3d3861f0','1','Users','1','Administrator','2025-02-24 09:37:07','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(138,'7e9c7b3e-41ec-dec9-d96b-67bc3f0570e5','1','Contacts','a36123d0-036d-192c-d9db-67bc3f3e4264','test Нгуен','2025-02-24 09:44:52','detailview','ij8ck6tfe51ganpht9tu14m6j7',0,0),(139,'17ec1663-c761-e75e-de02-67bc3f98cc57','1','Users','1','Administrator','2025-02-24 09:45:09','editview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(140,'e1d80ace-7e7b-4926-4564-67bc3fa95ded','1','Users','1','Administrator','2025-02-24 09:45:09','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(141,'6b3d6092-2bff-ebd7-83fa-67bc3f10afc4','1','Users','1','Tung Lam Nguyen','2025-02-24 09:45:23','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(142,'7e49be24-d385-fb3b-e363-67bc3f2e50c2','1','Users','1','Tung Lam Nguyen','2025-02-24 09:45:29','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(143,'dc174f6b-ef9e-03d4-ecdb-67bc3f5435e4','1','Users','1','Tung Lam Nguyen','2025-02-24 09:45:29','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(144,'8991a208-1b22-5b56-1913-67bc3f28a359','1','Users','1','Tung Lam Nguyen','2025-02-24 09:45:45','editview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(145,'e628ad6d-1937-28d1-05e7-67bc3ff5018c','1','Users','1','Tung Lam Nguyen','2025-02-24 09:45:45','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(146,'7943f9e9-dce3-bdec-7152-67bc406f4036','1','Users','1','Tung Lam Nguyen','2025-02-24 09:50:37','editview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(147,'a42f4a5c-cbd2-e42c-df0a-67bc40f9ba34','1','Users','1','Tung Lam Nguyen','2025-02-24 09:50:37','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(148,'e2a48cb6-d5a6-10d2-3701-67bc40005164','1','Users','1','Tung Lam Nguyen','2025-02-24 09:50:46','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(149,'3654a89d-e86e-7305-889c-67bc40881b4f','1','Users','1','Tung Lam Nguyen','2025-02-24 09:50:51','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(150,'95a5ad46-674a-9578-dc3b-67bc40d68399','1','Users','1','Tung Lam Nguyen','2025-02-24 09:50:51','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(151,'dea31238-1e71-9d42-0960-67bc4162f722','1','Users','1','Tung Lam Nguyen','2025-02-24 09:51:06','editview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(152,'5ce1e450-e7b1-152f-77a0-67bc4130c1b6','1','Users','1','Tung Lam Nguyen','2025-02-24 09:51:07','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(153,'3dc10085-cb40-5d99-fd48-67bc41b200c5','1','Users','1','Tung Lam Nguyen','2025-02-24 09:53:36','editview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(154,'6cac6a17-3b69-4764-6623-67bc41632de0','1','Users','1','Tung Lam Nguyen','2025-02-24 09:53:36','detailview','ij8ck6tfe51ganpht9tu14m6j7',1,0),(155,'7b83cabd-38e7-f554-23f9-67bc43cbac92','1','Users','1','Tung Lam Nguyen','2025-02-24 10:02:34','editview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(156,'7b1609a5-94e9-17f2-9e31-67bc43bb74c3','1','Users','1','Tung Lam Nguyen','2025-02-24 10:02:34','detailview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(157,'6974b023-1da5-775d-d839-67bc444dfe23','1','Users','1','Tung Lam Nguyen','2025-02-24 10:04:21','editview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(158,'2a26c4b4-b327-779b-2d65-67bc44eb2b49','1','Users','1','Tung Lam Nguyen','2025-02-24 10:04:21','detailview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(159,'c4e62b86-7d96-a274-8d38-67bc46862526','1','Contacts','a36123d0-036d-192c-d9db-67bc3f3e4264','test Нгуен','2025-02-24 10:14:15','detailview','5lah1ll932fomu1ie8dkk7nnu4',0,0),(160,'863bcf12-d791-6401-2140-67bc46ef6ea2','1','Accounts','61df3b03-929d-a671-ba87-67a363a4af6d','Test','2025-02-24 10:14:34','detailview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(161,'79ce0a4d-0bd0-eb01-6f4d-67bc4a634d6e','1','Users','1','Tung Lam Nguyen','2025-02-24 10:32:14','editview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(162,'45d7079e-2402-5d08-df04-67bc4a0ecab0','1','Users','1','Tung Lam Nguyen','2025-02-24 10:32:14','detailview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(163,'608b343a-b2ca-dc92-8ccd-67bc50dca3f3','1','Users','1','Tung Lam Nguyen','2025-02-24 10:56:03','editview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(164,'2d35ea30-a831-f566-8136-67bc504bcde2','1','Users','1','Tung Lam Nguyen','2025-02-24 10:56:03','detailview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(165,'5c8d1a37-0c95-2d8d-636d-67bc5015a48d','1','Users','1','Tung Lam Nguyen','2025-02-24 10:58:11','detailview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(166,'4be020a4-4a0a-b784-696c-67bc507bc250','1','Users','1','Tung Lam Nguyen','2025-02-24 10:58:11','detailview','5lah1ll932fomu1ie8dkk7nnu4',1,0),(167,'e568a1f3-6547-2f2d-aa41-67bc577c29e6','1','Users','1','Tung Lam Nguyen','2025-02-24 11:26:40','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(168,'a1f00201-9219-190e-e4d7-67bc5726e487','1','Users','1','Tung Lam Nguyen','2025-02-24 11:26:41','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(169,'ac0eaba9-628f-9ff7-245a-67bc5733130f','1','Users','1','Tung Lam Nguyen','2025-02-24 11:26:58','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(170,'78bff4a3-9df7-1a74-8056-67bc576b4f86','1','Users','1','Tung Lam Nguyen','2025-02-24 11:26:59','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(171,'2c8b4d1f-8157-aa6e-3237-67bd89febed0','1','Users','1','Tung Lam Nguyen','2025-02-25 09:13:12','editview','2j95j911knbbjbc5gtroh32k8j',1,0),(172,'425eee9e-b576-22b4-741f-67bd8959b98e','1','Users','1','Tung Lam Nguyen','2025-02-25 09:13:12','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(173,'77318f42-59fc-21fc-8be3-67bda33387a2','1','Users','1','Tung Lam Nguyen','2025-02-25 11:02:07','editview','2j95j911knbbjbc5gtroh32k8j',1,0),(174,'10825139-698d-9fbf-217e-67bda3760e58','1','Users','1','Tung Lam Nguyen','2025-02-25 11:02:07','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(175,'2c4ac019-6345-e57d-6fc6-67bda3015eb2','1','Users','1','Tung Lam Nguyen','2025-02-25 11:02:37','editview','2j95j911knbbjbc5gtroh32k8j',1,0),(176,'fb97062a-54b2-43da-e18e-67bda30a491f','1','Users','1','Tung Lam Nguyen','2025-02-25 11:02:37','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(177,'6c27364d-4605-4154-5ea8-67bda61239a5','1','Users','1','Tung Lam Nguyen','2025-02-25 11:17:27','editview','2j95j911knbbjbc5gtroh32k8j',1,0),(178,'afe18df2-6437-7b62-0c11-67bda698a527','1','Users','1','Tung Lam Nguyen','2025-02-25 11:17:27','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(179,'d4b8b36c-7731-8d64-71a5-67bdb6155e0a','1','Users','1','Tung Lam Nguyen','2025-02-25 12:25:13','editview','2j95j911knbbjbc5gtroh32k8j',1,0),(180,'18d178bb-3d2d-0019-1e97-67bdb66223b0','1','Users','1','Tung Lam Nguyen','2025-02-25 12:25:14','detailview','2j95j911knbbjbc5gtroh32k8j',1,0),(181,'38c97f5f-2281-d2c5-7818-67bdb77bab4e','1','Users','1','Tung Lam Nguyen','2025-02-25 12:27:00','editview','skgct6eofjeduko6gm0fm8uub0',1,0),(182,'85504628-5ab5-ecbd-6ee5-67bdb7cc1365','1','Users','1','Tung Lam Nguyen','2025-02-25 12:27:00','detailview','skgct6eofjeduko6gm0fm8uub0',1,0),(183,'1053a631-2857-d6ed-63aa-67bdb9c1b490','1','Users','1','Tung Lam Nguyen','2025-02-25 12:36:27','detailview','skgct6eofjeduko6gm0fm8uub0',1,0),(184,'7b870447-b5ef-82e7-4d2a-67bdb9aca2f1','1','Users','1','Tung Lam Nguyen','2025-02-25 12:36:33','detailview','skgct6eofjeduko6gm0fm8uub0',1,0),(185,'8311005a-3ea4-17b5-af79-67bdb945a718','1','Users','1','Tung Lam Nguyen','2025-02-25 12:36:33','detailview','skgct6eofjeduko6gm0fm8uub0',1,0),(186,'a399edab-fa64-9043-3603-67bdb946b5fa','1','Users','1','Tung Lam Nguyen','2025-02-25 12:36:40','editview','skgct6eofjeduko6gm0fm8uub0',1,0),(187,'3a53cfbe-2a72-3262-853b-67bdb9155195','1','Users','1','Tung Lam Nguyen','2025-02-25 12:36:41','detailview','skgct6eofjeduko6gm0fm8uub0',1,0),(188,'bf70666a-5c68-8ba9-b408-67bdb9a857ab','1','Users','1','Tung Lam Nguyen','2025-02-25 12:37:24','editview','1ulc525t6r6sgpe504s7hgjcpn',1,0),(189,'64e85b88-e155-f442-e0c2-67bdb959df3f','1','Users','1','Tung Lam Nguyen','2025-02-25 12:37:25','detailview','1ulc525t6r6sgpe504s7hgjcpn',1,0),(190,'2ade0024-dd70-0c6c-0ba6-67cae5cdaae2','1','Tasks','4d596d50-7236-8133-2687-67cae5ce1f0c','fdfsf','2025-03-07 12:25:55','detailview','sseoj43conan6eq1kvb66in82n',0,0),(191,'87413089-1606-3388-6303-67caf90a15f5','1','Tasks','4d596d50-7236-8133-2687-67cae5ce1f0c','fdfsf','2025-03-07 13:50:18','detailview','sseoj43conan6eq1kvb66in82n',0,0),(192,'1296ca6a-bbad-75d8-ca2e-67cea1e35765','1','Project','ac760c75-bbff-c0bf-1a87-67cea155b752','sdasd','2025-03-10 08:24:58','detailview','sseoj43conan6eq1kvb66in82n',1,0),(193,'33b70221-41ab-ed33-42c5-67cea196384b','1','Project','ac760c75-bbff-c0bf-1a87-67cea155b752','sdasd','2025-03-10 08:24:58','detailview','sseoj43conan6eq1kvb66in82n',1,0),(194,'e6000e6c-186b-8449-8841-67d44830d74b','1','Tasks','2be78907-cf46-860f-da02-67d44824cfbf','task','2025-03-14 15:16:23','detailview','kdotvocvfnhq9kjkbe9vjb655g',0,0),(195,'20c3acb7-4dd2-7c53-3989-67dd86d0c563','1','Tasks','60ddbf60-3e56-532d-af6f-67dd865283ca','fdfsdf','2025-03-21 15:31:34','detailview','ri8mk4a1guaen6nl5odchofiks',0,0),(196,'a60c5a82-8e87-8c5e-2165-67e5511b5a94','1','Tasks','e2f60762-54d4-0073-2bfa-67e551f27b94','Задача','2025-03-27 13:22:52','detailview','b9bv6j6hjgo66korl8q4rjvqge',0,0),(197,'5f98716e-777a-36c2-2c25-67ebdd8af369','1','Currencies','9d0d9fea-bdd3-2db3-ad4d-67ebdd13a062','Base Implementation.  Should be overridden.','2025-04-01 12:36:28','save','b9bv6j6hjgo66korl8q4rjvqge',1,0),(198,'40e04f49-1790-44e7-445c-67ebddef4519','1','Currencies','9d0d9fea-bdd3-2db3-ad4d-67ebdd13a062','Base Implementation.  Should be overridden.','2025-04-01 12:36:45','detailview','b9bv6j6hjgo66korl8q4rjvqge',1,0),(199,'b48377bf-35dd-7a77-377d-67ebde52e79c','1','Currencies','ec980b0e-d3f5-86a1-96f9-67ebde5194d9','Base Implementation.  Should be overridden.','2025-04-01 12:37:53','save','b9bv6j6hjgo66korl8q4rjvqge',1,0),(200,'7f8cb722-736c-501f-901f-67ebde91c42f','1','Currencies','b662627a-7b51-f6f3-a4b6-67ebdebc54e7','Base Implementation.  Should be overridden.','2025-04-01 12:38:29','save','b9bv6j6hjgo66korl8q4rjvqge',1,0),(201,'9e8a615d-7454-12d2-fe54-67ebea1743ae','1','Tasks','e617b700-6905-82a6-ecd2-67ebeae33ba4','рпопр','2025-04-01 13:31:13','detailview','su29kbn79hehd9as281ve9veo8',0,0),(202,'ea0c005f-25bb-58f2-7bfe-67ec133688e7','1','Tasks','e617b700-6905-82a6-ecd2-67ebeae33ba4','рпопр','2025-04-01 16:27:11','detailview','su29kbn79hehd9as281ve9veo8',0,0),(203,'ee8eee2b-9de7-ae10-e90b-67ec20d3d801','1','Tasks','e617b700-6905-82a6-ecd2-67ebeae33ba4','рпопр','2025-04-01 17:22:48','detailview','su29kbn79hehd9as281ve9veo8',0,0),(204,'6302a0b0-7c73-e530-30c6-67ed69fca250','1','Tasks','aec9305d-9fe0-7059-6f78-67ed698dd3ec','dnsmd,asnd','2025-04-02 16:45:32','detailview','fh9pfc862nrfcd4qqnd7o5eo62',0,0),(205,'1daf3e36-601d-b593-dc99-67ed6e85b2c6','1','Tasks','2be78907-cf46-860f-da02-67d44824cfbf','task','2025-04-02 17:06:00','detailview','b81kc1jedkrpk44iulms4jpo86',0,0),(206,'a106ffa1-b923-f5b5-b6db-67ed6e75a551','1','Tasks','2be78907-cf46-860f-da02-67d44824cfbf','task','2025-04-02 17:06:07','detailview','b81kc1jedkrpk44iulms4jpo86',0,0),(207,'ef625e60-083c-a835-b4a6-67eea1ea7539','1','Users','1','Tung Lam Nguyen','2025-04-03 14:57:03','editview','g2bs86d80ns5qm7c3mkncc2g5i',1,0),(208,'375a888c-5e8c-a454-e881-67eea12fe20a','1','Users','1','Tung Lam Nguyen','2025-04-03 14:57:04','detailview','g2bs86d80ns5qm7c3mkncc2g5i',1,0),(209,'79b8d246-2959-2b3a-cd72-67eea160022b','1','Users','1','Tung Lam Nguyen','2025-04-03 14:57:15','editview','g2bs86d80ns5qm7c3mkncc2g5i',1,0),(210,'92110a25-ed25-4b37-7a7c-67eea1620f17','1','Users','1','Tung Lam Nguyen','2025-04-03 14:57:15','detailview','g2bs86d80ns5qm7c3mkncc2g5i',1,0),(211,'60c6263a-59c2-4099-76ee-67eea1e5c229','1','Users','1','Дмитрий Нор','2025-04-03 14:57:43','detailview','g2bs86d80ns5qm7c3mkncc2g5i',1,0),(212,'e90942f5-93a3-3d99-0cf9-67eea1695a7e','1','Users','1','Дмитрий Нор','2025-04-03 14:57:50','detailview','g2bs86d80ns5qm7c3mkncc2g5i',1,0),(213,'bc8aee21-e639-d6e4-d90e-67eea1d41a3c','1','Users','1','Дмитрий Нор','2025-04-03 14:57:55','detailview','g2bs86d80ns5qm7c3mkncc2g5i',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('78520b89-57a9-4913-9ce4-67d44f58e22e','upload/upgrades/module/planning_module2025_03_14_154630.zip','84039ad5cb38003288b7a997cc7e04eb','module','installed','1741967190','planning_module','Модуль \"Планирование\"','planning_module','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO319czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czo1OiJwbGFuSyI7czo2OiJhdXRob3IiO3M6MjY6ItCi0YPQvdCzINCb0LDQvCDQndCz0YPQtdC9IjtzOjExOiJkZXNjcmlwdGlvbiI7czo0OToi0JzQvtC00YPQu9GMICZxdW90O9Cf0LvQsNC90LjRgNC+0LLQsNC90LjQtSZxdW90OyI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxNToicGxhbm5pbmdfbW9kdWxlIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyNS0wMy0xNCAxNTo0NjozMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE3NDE5NjcxOTA7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjE1OiJwbGFubmluZ19tb2R1bGUiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTQ6InBsYW5LX1BsYW5uaW5nIjtzOjU6ImNsYXNzIjtzOjE0OiJwbGFuS19QbGFubmluZyI7czo0OiJwYXRoIjtzOjQxOiJtb2R1bGVzL3BsYW5LX1BsYW5uaW5nL3BsYW5LX1BsYW5uaW5nLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL3BsYW5LX1BsYW5uaW5nIjtzOjI6InRvIjtzOjIyOiJtb2R1bGVzL3BsYW5LX1BsYW5uaW5nIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2025-03-14 15:46:30',1),('85281953-0191-a589-18ba-67976cd77e76','upload/upgrades/langpack/SuiteCRM7RU-master.zip','12ee4fa025ed36be86a1de6752bdb4e4','langpack','installed','7.14.6','','','','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czo0MToiUlVTU0lBTiBSQVBJUkEgTEFOR1VBR0UgUEFDSyBGT1IgU1VJVEVDUk0iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcxOiLQvtGH0LXRgNC10LTQvdC+0Lkg0L/QtdGA0LXQstC+0LQg0L3QsCDQstC10LvQuNC60LjQuSDQuCDQvNC+0LPRg9GH0LjQuSI7czo0OiJ0eXBlIjtzOjg6ImxhbmdwYWNrIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjM6IlllcyI7czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YTowOnt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo2OiJhdXRob3IiO3M6OToibGlraG9ib3J5IjtzOjc6InZlcnNpb24iO3M6NjoiNy4xNC42IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAyMy8xMS8wNSI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjI6e3M6MjoiaWQiO3M6NToicnVfcnUiO3M6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5jbHVkZSI7czoyOiJ0byI7czo3OiJpbmNsdWRlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L21vZHVsZXMiO3M6MjoidG8iO3M6NzoibW9kdWxlcyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbnN0YWxsIjtzOjI6InRvIjtzOjc6Imluc3RhbGwiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2025-01-27 11:20:56',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('1085cea9-473f-5d02-60d2-67ed95ceafee','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:51:11','2025-04-02 19:51:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('10a8e45c-510b-8b4f-84a3-67ebe6b09aef','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:13:48','2025-04-01 13:13:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1144bef3-8088-6cfb-5b1d-67d43d0241c6','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 14:28:26','2025-03-14 14:28:26','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('11f247bf-061f-90d5-332b-67eea1f1e331','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-03 14:57:09','2025-04-03 14:57:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('11f94cd5-49e9-baec-73c8-67bc2e2c467e','Users',0,'2025-02-24 08:31:49','2025-02-25 12:48:13','1','YTowOnt9'),('134df652-f306-971c-df37-67d41eb177b1','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 12:20:03','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('141cf4e9-5770-8d53-3f54-67ebe6d36cd1','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:13:48','2025-04-01 13:13:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('14c4521f-e203-1cd0-8789-67d43d8239d6','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 14:28:26','2025-03-14 14:28:26','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('154c3e9a-592b-a256-17b8-67ed95bdd84b','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:51:29','2025-04-02 19:51:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('155ac91e-c31c-5271-f12a-67eea1bade24','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-03 14:57:09','2025-04-03 14:57:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1586246a-3580-b945-6f2e-67ebe69ea6cf','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:12:33','2025-04-01 13:12:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1614108d-46d9-fcd4-cd76-67ed95e97495','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:51:11','2025-04-02 19:51:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('16bdef04-2f43-0e7f-f12d-67d43dcbf0aa','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 14:28:26','2025-03-14 14:28:26','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1863d1a8-ce53-7c46-4065-67ed6e2ae5db','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 17:06:40','2025-04-02 17:06:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('18e85af0-4410-45d4-d4df-67ebe652798b','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:12:33','2025-04-01 13:12:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1a72112e-d2d1-a56a-2053-67ed950d1f5d','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:52:58','2025-04-02 19:52:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1afa1dff-62a2-6948-aaad-67dd8658e3b2','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-21 15:30:27','2025-03-21 15:30:27','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1b9810d3-fd72-11cc-158c-67d41e94da2c','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 12:20:03','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1ca9c1d4-a688-2f0f-1b61-67ebe6447471','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:12:33','2025-04-01 13:12:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1d81f5d8-b185-d9ea-499b-67ed6e712adf','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 17:06:40','2025-04-02 17:06:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1e1f8756-f563-1b29-c6c8-67dd86ad30b3','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-21 15:30:27','2025-03-21 15:30:27','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1e75d878-079c-b720-88e3-67c6fbd937d9','Home2_AOS_INVOICES',0,'2025-03-04 13:09:20','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1f536b8a-abca-c908-52c4-67ed952cca7b','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:52:58','2025-04-02 19:52:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('218e2d28-c2e6-c11c-1ee4-67dd8682cf08','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-21 15:30:27','2025-03-21 15:30:27','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('21db7c71-bb26-a96b-15a2-67d4299eb17f','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 13:03:14','2025-03-14 13:03:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2254505f-9907-c0c5-b76b-67ed6e65fce7','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 17:06:40','2025-04-02 17:06:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('22dad28b-9473-ff01-1f85-67ebe8f34322','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:23:51','2025-04-01 13:23:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2366140c-4b96-07b7-2e66-67c6fd2a2a24','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-04 13:18:16','2025-03-04 13:18:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('24d0e7f3-0020-cf96-a3ab-67ed95e307e8','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:52:58','2025-04-02 19:52:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('25b389f9-d40b-0770-4214-67d429669ebf','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 13:03:14','2025-03-14 13:03:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2626641b-a1e4-0671-1a69-67ebe8429363','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:23:51','2025-04-01 13:23:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('26d7f308-b907-f87d-8db7-67d42125dab3','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 12:32:11','2025-03-14 12:32:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('27070803-7285-ea22-4367-67c6fdde56b7','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-04 13:18:16','2025-03-04 13:18:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2759fa99-73be-3e4a-c55f-67d4292177db','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 13:03:14','2025-03-14 13:03:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('280cf6eb-72f3-c175-dd55-67b44be97629','Dashboard',0,'2025-02-18 08:56:40','2025-04-03 14:57:42','1','YTowOnt9'),('28911e4d-053a-4afd-113f-67dd86d31ac5','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-21 15:31:39','2025-03-21 15:31:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('28ce1c86-5919-9e3c-0ff9-67eea18a29bd','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-03 14:57:42','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('28e43399-1bea-7e47-7804-67ebe788ed42','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:16:22','2025-04-01 13:16:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('29d32710-0771-81c2-6ea9-67ebe8f71d66','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:23:51','2025-04-01 13:23:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2a5e0cbe-4f1d-5fe5-d3f1-67ed6874be2a','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 16:38:38','2025-04-02 16:38:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2aa7f7b5-52f8-6c8e-a459-67b44b5fec21','global',0,'2025-02-18 08:56:18','2025-04-03 14:57:42','1','YTo0NDp7czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6MjoidXQiO3M6MToiMSI7czo4OiJ0aW1lem9uZSI7czoxMjoiRXVyb3BlL01pbnNrIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6InN1aXRlOCI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7czozOiI2MDAiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIxIjtzOjU6ImRhdGVmIjtzOjU6ImQubS5ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6Njoi0JLRgdC1IjtzOjI6InVpIjtzOjY0NjE6Insibm9vcCI6Im5vb3AiLCJjb250YWN0cy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJhZG1pbmlzdHJhdGlvbi1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoyLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoyfSwicmVjb3JkSWRzIjpbeyJpZCI6IjJiZTc4OTA3LWNmNDYtODYwZi1kYTAyLTY3ZDQ0ODI0Y2ZiZiJ9LHsiaWQiOiI0ZDU5NmQ1MC03MjM2LTgxMzMtMjY4Ny02N2NhZTVjZTFmMGMifV19LCJ1c2Vycy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoxNSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MTV9LCJyZWNvcmRJZHMiOlt7ImlkIjoiMTliYzg4MzYtZjRiZS0wNzFlLTFlMzYtNjdjN2Q5N2NhNDU3In0seyJpZCI6IjM2ZTI0Yjk4LWY1NDUtOGJkOS0zNjI4LTY3YzdkOWE1NzIxYyJ9LHsiaWQiOiIzOWEyNTI1NC0xYWI2LWYwODctNmY0ZC02N2M3ZDgzNzgxOGQifSx7ImlkIjoiNjVkNWQzODEtMjMyMi02NWI3LWM5ZDktNjdjMGJmMDJhM2UzIn0seyJpZCI6Ijc0OWMyNDA2LWE4OGYtYTJiZi0wMDAwLTY3YzdkYWIyYjNlZSJ9LHsiaWQiOiI3NTJlZGVjYy1kNTI3LWQ1MDYtMWUxMS02N2M3ZDhkN2E0OGEifSx7ImlkIjoiODAzOTBkYmEtMGQ3MC1hYWI2LTI1MTEtNjdjN2RhY2RkYjliIn0seyJpZCI6IjlkNzljNzQ4LWY5YjQtMDljOC05YzFkLTY3Y2MwNjU2NTA3NiJ9LHsiaWQiOiJhODU2MGRkYS05ZjYxLTQzNDctZTExMy02N2Q1ODZmNTJhNDEifSx7ImlkIjoiYWYxNDMxMGUtNjU1Zi0yMmI0LWU3NTMtNjdjN2Q5ZDBjYjRlIn0seyJpZCI6ImIxMzg3MTFmLTllNDUtYzVlMS0zNTBiLTY3YzdkOTRhZmFhMCJ9LHsiaWQiOiJjM2NlNmMxZS0xYzAzLTVjY2ItNjkwNS02N2M3ZGE5ZThhOTAifSx7ImlkIjoiZGMzNTk4YzctMzVlMS05MTNhLTYwZGItNjdjN2RhNzJiMGM5In0seyJpZCI6ImVlZTcyZWEzLThjOTgtNzc4ZS1jNWU2LTY3YzdkODhmZmYyNCJ9LHsiaWQiOiJmYjI5MGZkZi1kYzJlLWI5NjEtY2ZhYy02N2MwYmYxOWUwNWYifV19LCJtZWV0aW5ncy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsIm1lZXRpbmdzLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsIm1lZXRpbmdzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sIm1lZXRpbmdzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJtZWV0aW5ncy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjYwLCJwcmV2aW91cyI6NDAsIm5leHQiOi0xLCJsYXN0Ijo2MCwidG90YWwiOjczLCJwYWdlRmlyc3QiOjYxLCJwYWdlTGFzdCI6NzN9LCJyZWNvcmRJZHMiOlt7ImlkIjoiZDhmMDg4M2YtYmNmNS1kYzAxLWE0YTQtNjdjYzAwMzNkOGZhIn0seyJpZCI6ImQ5NTQ3ZTdkLTdmNzAtOTcxNC0zMDQzLTY3YzIzMGUzNWZkMSJ9LHsiaWQiOiJkOWNjMDg5MC1mOTE3LTY3ZjctN2IyMy02N2NjYjY4NzJjYjEifSx7ImlkIjoiZGE3NTAxZDktY2U2Mi1jMGM1LTZmMzgtNjdiOWE4Yzk1ZjMzIn0seyJpZCI6ImRlNjhmYTQ5LTgxY2MtNjk3Yy0zNDMwLTY3Y2IyNWJkYzBkOCJ9LHsiaWQiOiJkZWJmMDZmNC1hYzdiLWQyMTQtMWM3NC02N2M0NTQ2M2E3NTEifSx7ImlkIjoiZTE5MzkyMjgtZGMzNi1iMTNjLWI1MjktNjdjYzAwMWVkNGIzIn0seyJpZCI6ImU5MDkyNjk4LTRiMGItMzY4ZS0yNzk4LTY3YmY1MjA4YWI4MyJ9LHsiaWQiOiJmMmVlN2UyZi1jMWQ0LTQ0Y2EtNTc1Mi02N2NjYjEwZGJkNzQifSx7ImlkIjoiZjM0NzNlNTQtYTZlYS00MzgyLWNmYjgtNjdjNzYzN2E4OGFhIn0seyJpZCI6ImYzYWYzNTQ5LTMwNmQtMGYwMy1jYzdkLTY3YzQwMjhmYzRlZSJ9LHsiaWQiOiJmYTNlMDZhNS1iNWMzLWM5OTQtODk1ZC02N2MyMmVlOGQyYzAifSx7ImlkIjoiZmE3YTAxZTYtMzEzMi0zNTkzLWZmMWUtNjdjYzU1YThhZTI5In1dfSwidGFza3MtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsInRhc2tzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwidGFza3MtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwidGFza3MtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwidGFza3MtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sInRhc2tzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjotMSwibGFzdCI6MCwidG90YWwiOjgsInBhZ2VGaXJzdCI6MSwicGFnZUxhc3QiOjh9LCJyZWNvcmRJZHMiOlt7ImlkIjoiMjk0NjA2MzMtMTQwMi1iZmVlLWE2YzgtNjdkZDJmODA3ZjEwIn0seyJpZCI6IjNjODRmMTgyLTBjZGEtNTk0Yi0wY2Q0LTY3ZGQzMGRhZmM1MCJ9LHsiaWQiOiI0NDZiZWEwYi05OWRmLWU0ODMtOGQwNS02N2Q0NmUwNTY4MGEifSx7ImlkIjoiNTU3ODc2MTEtZWRlZC01YWQxLThjMjAtNjdkNDYwZTJjZDI2In0seyJpZCI6IjliNDVhNWM3LTM1ZDItMTZlYy1mNGU5LTY3ZWFmY2E4Yjk2ZSJ9LHsiaWQiOiJhM2M2Yjk5NC02MjY3LTdiNWItNDNjOS02N2RkMmY4NzgwNTMifSx7ImlkIjoiYzFmN2EwMmItYmExYS03ZjkzLTE0MGItNjdkNDYwZmUzMDgyIn0seyJpZCI6ImVmNmI5M2VmLTY5OGItMGQyYy1hODhjLTY3Yzc2NDQ4Y2M5NiJ9XX0sImNvbnRhY3RzLXJlY29yZHZpZXctY3VycmVudC1yZWNvcmQtcGFnaW5hdGlvbiI6eyJwYWdpbmF0aW9uIjp7InBhZ2VTaXplIjoyMCwiY3VycmVudCI6MCwicHJldmlvdXMiOi0xLCJuZXh0IjoyMCwibGFzdCI6NDAsInRvdGFsIjo1MSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MjB9LCJyZWNvcmRJZHMiOlt7ImlkIjoiMTM4NTBkNTgtYzM1MS01MTc5LWY2MDUtNjdjY2I2MGRjN2ZkIn0seyJpZCI6IjEzYWI1OTI3LTg5NDMtYzIwZC03NzYyLTY3Y2M1NzAzODdiNCJ9LHsiaWQiOiIxNTNiNDRiMy0yY2M3LTMzYzEtOTdlNS02N2M0NTIyZjY4ZDMifSx7ImlkIjoiMTc4ODA3NzYtMGI3Zi04YTA1LWVhMDEtNjdkN2ZjMDZkMjA5In0seyJpZCI6IjE4MGE2YmM3LTg2MjQtYmNiMi00ZmZjLTY3Y2NiNWNmYmI3MSJ9LHsiaWQiOiIxYTE0Yjg2Zi1mMmMwLTQ0NzUtODNjMS02N2MyMjYyYjJmYjcifSx7ImlkIjoiMWUzY2IzMWMtZTEyYy05ODU4LTQ4MDAtNjdjNzYxNmExMDkyIn0seyJpZCI6IjI1NmExMjgwLTAyODctOGU4Ni05ZDE4LTY3Y2JmNWNmMTZiMyJ9LHsiaWQiOiIyZDk3Mzg2NS0xMjAwLTNkYjUtZTRlMi02N2NjYzFiMDY0ODEifSx7ImlkIjoiMmU3MDBlOGQtODQ3OS1jNTVmLTMyMmQtNjdjY2I0ZDgwZGFmIn0seyJpZCI6IjMyYzI1OGE2LTkzYTgtZWFiOC00NmQzLTY3Y2JmZjI5YjFjYiJ9LHsiaWQiOiIzM2UyMzkyZS05NGM2LWRmNjItNjdmNS02N2M0OWJkNGI3NDUifSx7ImlkIjoiMzRjZjRlYjItNTcxZC0yNTllLTE5ZWYtNjdkNWYxN2Y1OTNlIn0seyJpZCI6IjNlZjkxMGQ1LTVhMWYtNTEyMC1lMDFmLTY3Y2JmOWU2YzM1OCJ9LHsiaWQiOiIzZmMyNDFkNS00NGRiLThkZDYtN2MzZS02N2NiMjM0YTJhMDYifSx7ImlkIjoiNDIzNzA4MGMtMmJiMS1lY2FmLWNiMTktNjdjNzYzMTdkMDg0In0seyJpZCI6IjQyZTUwMDcwLTgzNmYtODg0NC1iYTY0LTY3Y2NiMzgxNGFmOSJ9LHsiaWQiOiI0NWYyMjgwNC1hZjA5LWEzMjUtZGMxMy02N2NiZmQxZTY5ZDIifSx7ImlkIjoiNDg5MDAyNTgtOGYwOS1mMzE4LTljOTYtNjdjYjI0OWZjZjMyIn0seyJpZCI6IjRiMjYzMDVjLWVjZTUtMzhiYi0wNTc4LTY3Y2NiMmUzZDllMyJ9XX0sIm9wcG9ydHVuaXRpZXMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjotMjAsInRvdGFsIjowLCJwYWdlRmlyc3QiOjAsInBhZ2VMYXN0IjowfSwicmVjb3JkSWRzIjpbXX0sIm9wcG9ydHVuaXRpZXMtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOnRydWUsIm9wcG9ydHVuaXRpZXMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwib3Bwb3J0dW5pdGllcy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJvcHBvcnR1bml0aWVzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiTk9ORSJ9LCJjYWxscy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoxLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoxfSwicmVjb3JkSWRzIjpbeyJpZCI6IjRkNTk2ZDUwLTcyMzYtODEzMy0yNjg3LTY3Y2FlNWNlMWYwYyJ9XX0sImhvbWUtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MywicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6M30sInJlY29yZElkcyI6W3siaWQiOiIyYmU3ODkwNy1jZjQ2LTg2MGYtZGEwMi02N2Q0NDgyNGNmYmYifSx7ImlkIjoiNGQ1OTZkNTAtNzIzNi04MTMzLTI2ODctNjdjYWU1Y2UxZjBjIn0seyJpZCI6IjYwZGRiZjYwLTNlNTYtNTMyZC1hZjZmLTY3ZGQ4NjUyODNjYSJ9XX0sInBsYW5LX1BsYW5uaW5nLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJwbGFuS19QbGFubmluZy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsInBsYW5LX1BsYW5uaW5nLWxpc3R2aWV3LWN1cnJlbnQtcGFnaW5hdGlvbi10eXBlIjoicGFnaW5hdGlvbiIsInBsYW5LX1BsYW5uaW5nLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sInBsYW5LX1BsYW5uaW5nLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiTk9ORSJ9LCJvcHBvcnR1bml0aWVzLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJhY2NvdW50cy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6dHJ1ZSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiYWNjb3VudHMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn19IjtzOjEyOiJnbG9iYWxTZWFyY2giO2E6MTE6e3M6ODoiQWNjb3VudHMiO3M6NzoiQWNjb3VudCI7czo4OiJDb250YWN0cyI7czo3OiJDb250YWN0IjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJPcHBvcnR1bml0eSI7czo1OiJDYWxscyI7czo0OiJDYWxsIjtzOjk6IkRvY3VtZW50cyI7czo4OiJEb2N1bWVudCI7czo1OiJDYXNlcyI7czo1OiJhQ2FzZSI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czoxMzoiQU9TX0NvbnRyYWN0cyI7czo1OiJMZWFkcyI7czo0OiJMZWFkIjtzOjg6Ik1lZXRpbmdzIjtzOjc6Ik1lZXRpbmciO3M6NToiTm90ZXMiO3M6NDoiTm90ZSI7czo5OiJDYW1wYWlnbnMiO3M6ODoiQ2FtcGFpZ24iO319'),('2acf6593-aed0-6d73-5acb-67c6fb2b18e1','Home2_PROJECT_49487ae7-c536-eaf9-48a0-67c6fbcaf9e2',0,'2025-03-04 13:10:57','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2b6fdf3a-f85c-72f9-fe0e-67d42168387e','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 12:32:11','2025-03-14 12:32:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2bed5803-ee25-972a-0ab4-67ebe6eb8214','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:13:22','2025-04-01 13:13:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2bfd53f9-8d84-9080-269e-67dd86ccdc66','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-21 15:31:39','2025-03-21 15:31:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2bff46e7-29d0-c3b7-a731-67ebe798a557','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:17:45','2025-04-01 13:17:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2cb0056a-1d07-c14a-59c6-67ed6e7d9cbb','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 17:06:19','2025-04-02 17:06:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2cc650d0-b5db-67b5-551a-67ebe7f44218','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:16:22','2025-04-01 13:16:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2d2f784c-7761-f18f-6c7a-67d421cc6131','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 12:32:11','2025-03-14 12:32:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2d8b8711-d1fb-b845-aecc-67eea1271551','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-03 14:57:42','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2e0debc4-ae13-714a-345a-67d41e0a3ef8','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 12:16:52','2025-03-14 12:16:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2e259cf8-510c-9cd9-16fd-67eea19ceb55','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-03 14:56:45','2025-04-03 14:56:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2ed005ae-54de-473e-29a0-67c6fd077248','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-04 13:18:16','2025-03-04 13:18:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2eddf2ff-c561-5dfa-6b94-67b44b9e28a8','Reports',0,'2025-02-18 08:56:18','2025-02-18 08:56:18','1','YToxOntzOjk6ImZhdm9yaXRlcyI7Tjt9'),('2f266c8c-c8c0-6e3d-6f62-67ebe6f415f6','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:13:22','2025-04-01 13:13:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2f5094e4-fc80-2e81-220a-67ebe7810c77','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:17:45','2025-04-01 13:17:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2f679cba-97c5-5982-5595-67dd86ac568d','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-21 15:31:39','2025-03-21 15:31:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('303e0af9-46d2-2db5-07e1-67ebe8677952','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:23:39','2025-04-01 13:23:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('30544705-07e2-ed5f-0de7-67ebe7d849d9','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:16:22','2025-04-01 13:16:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('30bbc044-2194-1cb0-8be6-67b44b4277d7','Emails',0,'2025-02-18 08:56:40','2025-04-03 14:57:42','1','YTowOnt9'),('30c446fc-b6cb-a96c-9d7e-67b44bff2e29','Home',0,'2025-02-18 08:56:18','2025-04-03 14:57:42','1','YToyOntzOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo2OntpOjA7czozNjoiNGIxZDNmMGMtOWQwOS1mYjJlLTliNzktNjdjNmZiM2VjZTcwIjtpOjE7czozNjoiY2I1ZDRmMGUtMjdkMy05YTZhLTJkNDMtNjdjNmZiYWRmYmNkIjtpOjI7czozNjoiYzFjODkyZjQtZmFmZi0wYWYwLWMxNzAtNjdjNmZiNzJkM2UwIjtpOjM7czozNjoiZDJmODcwNWYtZjc4ZC01YjFhLTFkOTAtNjdjNmZiNDExNGY2IjtpOjQ7czozNjoiMWM2NTZlYWItN2IzYS00MWQxLThkZjgtNjdjNmZjODdmMmJkIjtpOjU7czozNjoiNzQ1ZTBjMzEtMzFmMC02N2U3LWI3ZTYtNjdjNmZiOWU2ZTA2Ijt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiI5Y2ExNDk5Ny00YzM0LWYxZWQtYzhiYi02N2M2ZmIxYzY4MDciO2k6MTtzOjM2OiI2ZjE0NzFlNi0zYzZkLTJkMTUtZGYyYS02N2M2ZmIzMGE5NDkiO2k6MjtzOjM2OiI0OTQ4N2FlNy1jNTM2LWVhZjktNDhhMC02N2M2ZmJjYWY5ZTIiO2k6MztzOjM2OiJlNmRhNTUyNi1mYWE5LWVjN2EtNWE1Zi02N2M2ZmI5Y2YzNjYiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fXM6ODoiZGFzaGxldHMiO2E6MTA6e3M6MzY6IjRiMWQzZjBjLTlkMDktZmIyZS05Yjc5LTY3YzZmYjNlY2U3MCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiSm90UGFkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9Kb3RQYWREYXNobGV0L0pvdFBhZERhc2hsZXQucGhwIjt9czozNjoiY2I1ZDRmMGUtMjdkMy05YTZhLTJkNDMtNjdjNmZiYWRmYmNkIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeU5vdGVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTm90ZXMiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL05vdGVzL0Rhc2hsZXRzL015Tm90ZXNEYXNobGV0L015Tm90ZXNEYXNobGV0LnBocCI7fXM6MzY6ImMxYzg5MmY0LWZhZmYtMGFmMC1jMTcwLTY3YzZmYjcyZDNlMCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxOToiQU9TX0ludm9pY2VzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTI6IkFPU19JbnZvaWNlcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NzM6Im1vZHVsZXMvQU9TX0ludm9pY2VzL0Rhc2hsZXRzL0FPU19JbnZvaWNlc0Rhc2hsZXQvQU9TX0ludm9pY2VzRGFzaGxldC5waHAiO31zOjM2OiJkMmY4NzA1Zi1mNzhkLTViMWEtMWQ5MC02N2M2ZmI0MTE0ZjYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjt9czozNjoiNzQ1ZTBjMzEtMzFmMC02N2U3LWI3ZTYtNjdjNmZiOWU2ZTA2IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjt9czozNjoiOWNhMTQ5OTctNGMzNC1mMWVkLWM4YmItNjdjNmZiMWM2ODA3IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjEzOiJKb3RQYWREYXNobGV0IjtzOjY6Im1vZHVsZSI7czo0OiJIb21lIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1MzoibW9kdWxlcy9Ib21lL0Rhc2hsZXRzL0pvdFBhZERhc2hsZXQvSm90UGFkRGFzaGxldC5waHAiO31zOjM2OiI2ZjE0NzFlNi0zYzZkLTJkMTUtZGYyYS02N2M2ZmIzMGE5NDkiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MzY6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6Mjk6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czoxMjQ6Im1vZHVsZXMvQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMvRGFzaGxldHMvQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXNEYXNobGV0L0FPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzRGFzaGxldC5waHAiO31zOjM2OiI0OTQ4N2FlNy1jNTM2LWVhZjktNDhhMC02N2M2ZmJjYWY5ZTIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6Ik15UHJvamVjdERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjc6IlByb2plY3QiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjYyOiJtb2R1bGVzL1Byb2plY3QvRGFzaGxldHMvTXlQcm9qZWN0RGFzaGxldC9NeVByb2plY3REYXNobGV0LnBocCI7fXM6MzY6ImU2ZGE1NTI2LWZhYTktZWM3YS01YTVmLTY3YzZmYjljZjM2NiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyMDoiTXlQcm9qZWN0VGFza0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjExOiJQcm9qZWN0VGFzayI7czo3OiJvcHRpb25zIjthOjY6e3M6NzoiZmlsdGVycyI7YTozOntzOjEyOiJkYXRlX2VudGVyZWQiO2E6MDp7fXM6MTA6ImRhdGVfc3RhcnQiO2E6MDp7fXM6MTE6ImRhdGVfZmluaXNoIjthOjA6e319czo1OiJ0aXRsZSI7czo1NToi0JzQvtC4INC+0YLQutGA0YvRgtGL0LUg0L/RgNC+0LXQutGC0L3Ri9C1INC30LDQtNCw0YfQuCI7czoxMToibXlJdGVtc09ubHkiO3M6NDoidHJ1ZSI7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6Njp7aTowO3M6NDoibmFtZSI7aToxO3M6MTI6InByb2plY3RfbmFtZSI7aToyO3M6MTA6ImRhdGVfc3RhcnQiO2k6MztzOjY6InN0YXR1cyI7aTo0O3M6MTY6InBlcmNlbnRfY29tcGxldGUiO2k6NTtzOjExOiJkYXRlX2ZpbmlzaCI7fXM6MTE6ImF1dG9SZWZyZXNoIjtzOjI6Ii0xIjt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjc0OiJtb2R1bGVzL1Byb2plY3RUYXNrL0Rhc2hsZXRzL015UHJvamVjdFRhc2tEYXNobGV0L015UHJvamVjdFRhc2tEYXNobGV0LnBocCI7fXM6MzY6IjFjNjU2ZWFiLTdiM2EtNDFkMS04ZGY4LTY3YzZmYzg3ZjJiZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlUYXNrc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IlRhc2tzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9UYXNrcy9EYXNobGV0cy9NeVRhc2tzRGFzaGxldC9NeVRhc2tzRGFzaGxldC5waHAiO319fQ=='),('30d00142-3eca-23d4-84e1-67c1dc4c1089','Home2_NOTE',0,'2025-02-28 15:53:35','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('317c087f-b0c2-9db6-4eda-67ed951a8327','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:52:35','2025-04-02 19:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('31c06848-04b3-8f4a-3e17-67d41eb4ebe7','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 12:16:52','2025-03-14 12:16:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3282878e-6534-fb05-ce46-67ebe6fb951a','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:13:22','2025-04-01 13:13:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('32a5f6d1-c3e6-29fa-bf0d-67ebe729baeb','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:17:45','2025-04-01 13:17:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('32c9dfe5-1086-4935-ee49-67e147c83e45','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-24 11:52:15','2025-03-24 11:52:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('32d9d945-f2c7-a249-6604-67eea1bef4f7','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-03 14:56:45','2025-04-03 14:56:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('33164113-23e3-1694-917f-67eea1f861e6','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-03 14:57:42','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('34d6a7f6-1981-65c2-21b1-67ebe8c6ea2b','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:23:39','2025-04-01 13:23:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('369447eb-ab1d-8dae-8e3c-67ebe83e31c1','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:23:39','2025-04-01 13:23:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3783e970-b37d-7410-81cd-67eea1ec4728','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-03 14:56:45','2025-04-03 14:56:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('37f9c3e9-5dd0-4282-056b-67ebea5d54eb','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:30:59','2025-04-01 13:30:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('39ef885e-b21f-286b-c1af-67d41e1bbcac','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 12:16:52','2025-03-14 12:16:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3a011c59-5d62-1f3c-baf7-67e147850e77','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-24 11:52:15','2025-03-24 11:52:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3a56534c-e50a-4554-0947-67c6fb4e1472','Home2_PROJECTTASK',0,'2025-03-04 13:11:11','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3b735670-983c-a368-442a-67ed6e6db511','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 17:06:48','2025-04-02 17:06:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3b91ba6f-63a3-d6b3-d539-67ebea440013','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:30:59','2025-04-01 13:30:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3d6a00ed-839f-f39d-d3d6-67e147067264','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-24 11:52:15','2025-03-24 11:52:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3dba83eb-ea7e-3dde-3c54-67c6fd3122ca','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-04 13:18:35','2025-03-04 13:18:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3fc15f12-6407-ea25-5017-67ebea702c97','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:30:59','2025-04-01 13:30:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('400d26f7-694d-df91-c987-67d46f30046d','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 18:03:24','2025-03-14 18:03:24','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4164e63c-d0d2-f40c-cac5-67ed6e81669c','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 17:06:48','2025-04-02 17:06:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4174039f-a032-1a27-adf5-67ed940b8556','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:49:39','2025-04-02 19:49:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('417ce68c-f847-d312-14b1-67ed69d1f307','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 16:45:17','2025-04-02 16:45:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('418d0c12-be73-c0b7-1129-67c6fd83cfb4','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-04 13:18:35','2025-03-04 13:18:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('434e819a-8eb5-2eba-8168-67d46ffb0185','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 18:03:24','2025-03-14 18:03:24','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('465ec2ba-e20f-bef0-4a54-67d46fd9267b','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 18:03:24','2025-03-14 18:03:24','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('466fcff4-6c0b-e999-fdcd-67ed696f2b8c','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 16:45:17','2025-04-02 16:45:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('469ae38b-2a7c-eaa1-9f58-67ed94b3413c','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:49:39','2025-04-02 19:49:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('46a640e9-ae46-bd57-1096-678644ad17e9','Home2_LEAD_4d016186-f906-df27-4172-678644d6ac6d',1,'2025-01-14 11:04:12','2025-02-18 08:35:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('486e07e1-b619-9b15-02ed-67c6fd2828a7','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-04 13:18:35','2025-03-04 13:18:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('49d52aa8-0664-a7c8-0539-67ed6e836ae4','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 17:06:48','2025-04-02 17:06:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4a930358-af43-80b4-e1cd-67ed6e515567','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 17:06:19','2025-04-02 17:06:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4a9a5771-aa1d-7e67-6a92-67b44b1dc70d','Home2_CALL',0,'2025-02-18 08:56:31','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4ad3a1d5-3f72-43ce-1d2c-67ed696c7103','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 16:45:17','2025-04-02 16:45:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4ba14725-be2d-c4e9-d672-67ed945c8870','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:49:39','2025-04-02 19:49:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4d55e0b0-4f52-ccd9-fc3a-67ed6e6190d0','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 17:07:20','2025-04-02 17:07:20','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4df0bd36-28dd-81ce-0210-67d41cd0181a','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 12:09:31','2025-03-14 12:09:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4e05afaf-dc4f-b83e-64bd-67b44b971850','Home2_MEETING',0,'2025-02-18 08:56:31','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4f2d9880-5765-65a8-b5a7-67ebe78ac8c2','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:17:08','2025-04-01 13:17:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('50074c55-05e5-765a-9595-67b44bba0390','Home2_OPPORTUNITY',0,'2025-02-18 08:56:31','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('50ca0ba8-1c29-5f16-b6dd-67c1dc81d4cb','Home2_CAMPAIGN',0,'2025-02-28 15:53:35','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('515db828-3ddf-c047-bb1f-67d41c9dea57','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 12:09:31','2025-03-14 12:09:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('51ad1534-06c5-426f-c665-67b44bf629ee','Home2_ACCOUNT',0,'2025-02-18 08:56:31','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5256b3b4-21c1-58a4-12d5-67ed6e20810c','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 17:07:20','2025-04-02 17:07:20','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('527b5a1e-dd2b-46d1-955c-67ebe7a064b0','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:17:08','2025-04-01 13:17:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('527fbbf6-2b0e-9ecd-e228-67caf972d064','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-07 13:48:58','2025-03-07 13:48:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('52aca5f5-3890-37a7-675e-67d440fbbb6a','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 14:45:09','2025-03-14 14:45:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5353de52-98c1-5ed9-473c-67b44b6d41f2','Home2_LEAD',0,'2025-02-18 08:56:31','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('54ea0516-b2e0-c3f5-2f02-67b44be6e7f1','Home2_SUGARFEED',0,'2025-02-18 08:56:31','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('55c9ebf9-668f-489c-909d-67b3160bd9ff','ACLRoles2_ACLROLE',1,'2025-02-17 10:58:28','2025-02-17 10:58:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('55d3663e-86b6-fd52-f205-67ebe7319d56','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:17:08','2025-04-01 13:17:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('55faf861-32f6-8e4b-fe8c-67caf92f780c','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-07 13:48:58','2025-03-07 13:48:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('567fbd47-ff21-b4ae-4cf0-67e148a8f671','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-24 11:55:17','2025-03-24 11:55:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('56b3fb1c-d166-c197-c971-67d4403a3787','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 14:45:09','2025-03-14 14:45:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('578ed5dc-568c-4d15-5072-67ed6e2fb2fd','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 17:07:20','2025-04-02 17:07:20','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('57ce8577-d1e2-2aa7-39dd-67d41c7597dd','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 12:09:31','2025-03-14 12:09:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('57d82f27-7ee4-8db2-f22d-67ed9333ab78','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:44:46','2025-04-02 19:44:46','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('59aa3170-5d0a-191b-1770-67d43aa7bdaa','ETag',0,'2025-03-14 14:19:11','2025-03-17 10:52:33','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),('5a5f6048-fbbd-23f9-9554-67d41ce52855','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 12:09:43','2025-03-14 12:09:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5a7617ea-0be9-5f30-7dab-67d440fcb65f','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 14:45:09','2025-03-14 14:45:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5ae03c09-8283-cc2b-b5a3-67e148c83695','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-24 11:55:17','2025-03-24 11:55:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5d02d20b-cd7f-3913-c15e-67caf901a2ed','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-07 13:48:58','2025-03-07 13:48:58','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5ed2f3f9-ecc0-79af-ef65-67dd864d68df','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-21 15:31:45','2025-03-21 15:31:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5f0e5f63-6a77-665f-6644-67d41c2db9fb','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 12:09:43','2025-03-14 12:09:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5f61d559-e63c-2aaf-8c20-67ed9363aac3','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:44:46','2025-04-02 19:44:46','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5fb2fd38-ac6e-ebaa-da11-67e1483f1bcd','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-24 11:55:17','2025-03-24 11:55:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('61250536-6226-4cee-e49e-67e5516e82b9','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-27 13:22:57','2025-03-27 13:22:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('61ca2151-4bf2-5f79-1420-67ed9316977d','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:44:46','2025-04-02 19:44:46','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('62213618-31a8-fd30-69eb-67dd86f95b48','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-21 15:31:45','2025-03-21 15:31:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('63200ec3-845e-02db-dba0-67e551161f76','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-27 13:22:57','2025-03-27 13:22:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('63a36f2f-63db-1df8-0e29-67caf9e7c35c','search',0,'2025-03-07 13:48:58','2025-03-14 12:20:03','1','YTowOnt9'),('6561a99c-8db8-ba59-f61a-67dd868ba52f','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-21 15:31:45','2025-03-21 15:31:45','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('661461be-43cd-3838-cb76-67864564eb06','Dashboard',1,'2025-01-14 11:08:36','2025-02-18 08:35:07','1','YTowOnt9'),('668754fd-903b-e6f5-4a62-67d41c402263','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 12:09:43','2025-03-14 12:09:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('68647fdf-3e54-4ee2-522e-67ed686730b6','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 16:38:28','2025-04-02 16:38:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('69ac9b18-4d3b-6280-c829-67ed9479fef3','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:49:10','2025-04-02 19:49:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6aabb180-5708-150d-de11-67d41c3c2688','Project',0,'2025-03-14 12:09:31','2025-03-14 12:20:03','1','YTowOnt9'),('6b45ef92-07a3-45a5-56d6-67ec1365b9d2','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 16:27:15','2025-04-01 16:27:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6b989594-20d5-f9cb-0958-678644f0ad00','global',1,'2025-01-14 11:02:58','2025-02-18 08:55:52','1','YTo0NTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjQyYjk5MzYwLWViMmMtNDNiOS1iOTQ3LTY3ODY0NGY5ZmI5ZSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6Njoic3VpdGU4IjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MjoidWkiO3M6MjQxMDoieyJub29wIjoibm9vcCIsImFjY291bnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LXBhZ2luYXRpb24tdHlwZSI6InBhZ2luYXRpb24iLCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJhY2NvdW50cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwiYWRtaW5pc3RyYXRpb24tcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjotMjAsInRvdGFsIjowLCJwYWdlRmlyc3QiOjAsInBhZ2VMYXN0IjowfSwicmVjb3JkSWRzIjpbXX0sInVzZXJzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwidXNlcnMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwidXNlcnMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwidXNlcnMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sImhvbWUtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MX0sInJlY29yZElkcyI6W3siaWQiOiI2MWRmM2IwMy05MjlkLWE2NzEtYmE4Ny02N2EzNjNhNGFmNmQifV19LCJhY2NvdW50cy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoxLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoxfSwicmVjb3JkSWRzIjpbeyJpZCI6IjYxZGYzYjAzLTkyOWQtYTY3MS1iYTg3LTY3YTM2M2E0YWY2ZCJ9XX0sImFjY291bnRzLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJhY2NvdW50cy1saXN0dmlldy1kaXNwbGF5ZWQtY29sdW1ucyI6WyJuYW1lIiwid2Vic2l0ZSIsImFjY291bnRfdHlwZSIsImluZHVzdHJ5Il0sImNvbnRhY3RzLXJlY29yZHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJjb250YWN0cy1yZWNvcmR2aWV3LWN1cnJlbnQtcmVjb3JkLXBhZ2luYXRpb24iOnsicGFnaW5hdGlvbiI6eyJwYWdlU2l6ZSI6MjAsImN1cnJlbnQiOjAsInByZXZpb3VzIjotMSwibmV4dCI6LTEsImxhc3QiOjAsInRvdGFsIjoxLCJwYWdlRmlyc3QiOjEsInBhZ2VMYXN0IjoxfSwicmVjb3JkSWRzIjpbeyJpZCI6IjYxZGYzYjAzLTkyOWQtYTY3MS1iYTg3LTY3YTM2M2E0YWY2ZCJ9XX0sImNvbnRhY3RzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY29udGFjdHMtbGlzdHZpZXctY3VycmVudC1wYWdpbmF0aW9uLXR5cGUiOiJwYWdpbmF0aW9uIiwiY29udGFjdHMtbGlzdHZpZXctY3VycmVudC1maWx0ZXJzIjp7ImRlZmF1bHQiOnsia2V5IjoiZGVmYXVsdCIsIm1vZHVsZSI6InNhdmVkLXNlYXJjaCIsImF0dHJpYnV0ZXMiOnsiY29udGVudHMiOiIifSwiY3JpdGVyaWEiOnsibmFtZSI6ImRlZmF1bHQiLCJmaWx0ZXJzIjpbXX19fSwiY29udGFjdHMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJERVNDIn0sImNvbnRhY3RzLWxpc3R2aWV3LWRpc3BsYXllZC1jb2x1bW5zIjpbIm5hbWUiLCJ0aXRsZSIsImFjY291bnRfbmFtZSIsImVtYWlsMSIsInBob25lX3dvcmsiLCJhc3NpZ25lZF91c2VyX25hbWUiXSwib3Bwb3J0dW5pdGllcy1yZWNvcmR2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwidXNlcnMtcmVjb3Jkdmlldy1jdXJyZW50LXJlY29yZC1wYWdpbmF0aW9uIjp7InBhZ2luYXRpb24iOnsicGFnZVNpemUiOjIwLCJjdXJyZW50IjowLCJwcmV2aW91cyI6LTEsIm5leHQiOi0xLCJsYXN0IjowLCJ0b3RhbCI6MSwicGFnZUZpcnN0IjoxLCJwYWdlTGFzdCI6MX0sInJlY29yZElkcyI6W3siaWQiOiI2MWRmM2IwMy05MjlkLWE2NzEtYmE4Ny02N2EzNjNhNGFmNmQifV19fSI7czo5OiJBQ0xSb2xlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoyNDoic3VicGFuZWxfcGFnaW5hdGlvbl90eXBlIjtzOjEwOiJwYWdpbmF0aW9uIjtzOjI0OiJsaXN0dmlld19wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6Mjg6InJlY29yZF9tb2RhbF9wYWdpbmF0aW9uX3R5cGUiO3M6MTA6InBhZ2luYXRpb24iO3M6MTg6InNub296ZV9hbGVydF90aW1lciI7czozOiI2MDAiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czoxMDoiSVNPLTg4NTktMSI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjt9'),('6cf7328d-232c-6609-da0b-67ed68d960ce','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 16:38:28','2025-04-02 16:38:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6d1953b7-957a-de0c-e938-678644563b6d','GoogleSync',1,'2025-01-14 11:02:58','2025-02-18 08:39:19','1','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('6d84f013-c926-b8a4-dc24-67b44bdbbc19','GoogleSync',0,'2025-02-18 08:56:25','2025-04-03 14:57:42','1','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('6dcf1ed2-4248-964a-18b2-6786450598bf','Emails',1,'2025-01-14 11:08:36','2025-02-18 08:39:19','1','YTowOnt9'),('6f1902dd-922b-3e19-e715-67ed943ded7b','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:49:10','2025-04-02 19:49:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6f3ecd60-b0f9-c821-a551-67ed685ddc73','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 16:38:28','2025-04-02 16:38:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('700adfdf-eeae-0192-d0dc-67d475f27d18','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 18:27:19','2025-03-14 18:27:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('724d5e8e-ea2f-1b1e-a367-67ec133713cd','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 16:27:15','2025-04-01 16:27:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('739d7310-55ed-2422-c1e8-67d475362233','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 18:27:19','2025-03-14 18:27:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('73f10fc5-3f1b-38c2-dcaa-67c6fc514485','Home2_TASK',0,'2025-03-04 13:15:19','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('74d8776e-57e2-7ea0-0a8c-67ed94f2061c','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:49:10','2025-04-02 19:49:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('75ff11d9-5c43-cef8-4d57-67d7fedd11a1','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-17 10:52:33','2025-03-17 10:52:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('772eb1f5-beb9-3207-21d2-67d4753ae35a','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 18:27:19','2025-03-14 18:27:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('79589d15-479a-6f91-e0e7-67d7fee80e35','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-17 10:52:33','2025-03-17 10:52:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7983692f-a980-c41e-1a9e-67ec138fc7d9','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 16:27:15','2025-04-01 16:27:15','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7bc3bd31-dcd3-c399-ff5c-67ed95ecf253','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:50:50','2025-04-02 19:50:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7bf6ad00-1573-f4b9-1881-67ed9507a93d','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:53:50','2025-04-02 19:53:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7c8b14d8-9a83-3f9a-23f3-67d7fe6bd65a','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-17 10:52:33','2025-03-17 10:52:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7cdbcfc6-6317-1a41-ec3b-67a364680a15','ModuleBuilder',1,'2025-02-05 13:14:56','2025-02-18 08:32:11','1','YToxOntzOjE3OiJmaWVsZHNUYWJsZUNvbHVtbiI7czozMjoieyJrZXkiOiJ0eXBlIiwiZGlyZWN0aW9uIjoiQVNDIn0iO30='),('8049fd8b-c426-5245-4566-67c6fe7b3b01','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-04 13:20:37','2025-03-04 13:20:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8122756d-a979-68a2-6266-67ed95f7186a','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:50:50','2025-04-02 19:50:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('81634703-4e98-c45c-aa8d-67cafaaf6821','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-07 13:53:37','2025-03-07 13:53:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('82336636-35e1-cade-5a0d-67ebdb3d26a9','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 12:28:08','2025-04-01 12:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('832e0932-ec70-acb1-e069-67ed95db1283','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:52:35','2025-04-02 19:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('843eb931-5071-a5ce-6afc-67c6fed12109','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-04 13:20:37','2025-03-04 13:20:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('847a75bb-2ec5-a411-d064-67cafafd49ce','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-07 13:53:37','2025-03-07 13:53:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('847d0558-a286-7e88-33fe-67ebea66c08c','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:31:18','2025-04-01 13:31:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('85b7746e-e804-b332-1611-67ed959fc38c','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:50:50','2025-04-02 19:50:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('86ac9884-561b-d6d5-193b-67ebdb768a43','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 12:28:08','2025-04-01 12:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('86bf0dba-0623-5d4f-fbd0-67ed68cfca92','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 16:38:38','2025-04-02 16:38:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('87a11667-8a93-cbf4-4158-67ed955e4fb7','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:53:50','2025-04-02 19:53:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8826a542-02b2-6974-1029-67d42828878c','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 13:02:41','2025-03-14 13:02:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('89d9e987-9c8b-b9fa-8138-67ed68572087','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 16:41:41','2025-04-02 16:41:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8a69ca53-89c9-290b-6773-67ed9525ecfd','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:53:50','2025-04-02 19:53:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8be8d31b-ab8b-aec7-974a-67c6feedde3e','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-04 13:20:37','2025-03-04 13:20:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8c024366-6516-f7d1-9b0c-67ed966ce4d5','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:54:51','2025-04-02 19:54:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8c148245-81d5-216d-9bbd-67cafa65c2ce','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-07 13:53:37','2025-03-07 13:53:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8ca5caa7-5a4f-8841-7d57-67d428ba5dcd','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 13:02:41','2025-03-14 13:02:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8d5aa7e1-aa17-a94e-c543-67ebdb5b794c','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 12:28:08','2025-04-01 12:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8e78aa2e-cc92-1abf-1835-67ed68908eea','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 16:41:41','2025-04-02 16:41:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8e86e838-fd68-f34f-c4b3-67d428fcb27c','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 13:02:41','2025-03-14 13:02:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8e94cc18-d252-9ab8-503a-67c6fbb0c352','Home2_PROJECT',0,'2025-03-04 13:10:56','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('92ac60fb-ed55-1403-5ab8-67ed684eef55','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 16:41:41','2025-04-02 16:41:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('936008c8-ca01-62cc-ab70-67b44b010b71','Home2_LEAD_4d016186-f906-df27-4172-678644d6ac6d',0,'2025-02-18 08:56:31','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('94fa9c0d-33b9-216a-81bc-67dd8666843d','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-21 15:30:11','2025-03-21 15:30:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('95c336ae-7f35-bd35-bf9a-67c6fdc8d001','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-04 13:16:14','2025-03-04 13:16:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9661d8d9-23c0-1237-f53b-67ed96653b3e','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:54:51','2025-04-02 19:54:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('99488206-0f1d-61d2-1082-67dd86f77d9b','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-21 15:30:11','2025-03-21 15:30:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9951dd28-4135-c310-cdea-67ed964fc234','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:54:51','2025-04-02 19:54:51','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('99964507-8fb7-8e0a-db1e-67c6fdfa72b9','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-04 13:16:14','2025-03-04 13:16:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9b29f329-7f7d-1341-7d55-67dd86aefa9c','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-21 15:30:11','2025-03-21 15:30:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9b7c0f72-4f37-2694-2ad3-67ed6e400885','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 17:06:19','2025-04-02 17:06:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9c491cb9-cee7-a129-23ae-67bc3f64ffd2','Assistant',0,'2025-02-24 09:44:11','2025-04-02 19:52:58','1','YTowOnt9'),('9d400658-27f2-97d8-b271-67c1dcd64233','Home2_AOS_CONTRACTS',0,'2025-02-28 15:53:35','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a07ebf40-15fc-1430-ef75-67c6fdc4c3d4','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-04 13:16:14','2025-03-04 13:16:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a389616c-fe86-28d4-072d-67c6fbed1c1c','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-04 13:09:21','2025-03-04 13:09:21','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a39c617d-1007-02b5-1dc8-67d448ea439d','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 15:16:38','2025-03-14 15:16:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a55aeeb7-ea15-5a22-2379-67caf909a62f','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-07 13:50:39','2025-03-07 13:50:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a5abf5fc-f437-b364-94e3-67d44830333a','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 15:16:28','2025-03-14 15:16:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a7213083-793d-c338-1a07-67d448af03b3','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 15:16:38','2025-03-14 15:16:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a8820ead-2358-d476-465a-67caf9385522','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-07 13:50:39','2025-03-07 13:50:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a8950820-4138-d4f6-7de0-67ed95569d6b','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:51:29','2025-04-02 19:51:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a9bc038c-091d-e09f-a787-67d4481ff770','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 15:16:28','2025-03-14 15:16:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aa8a7ec1-055b-0fd7-84f5-67d448ee15d5','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 15:16:38','2025-03-14 15:16:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('acc5d4a2-25be-f32a-ddc7-67b329c6c342','Users',1,'2025-02-17 12:19:54','2025-02-18 08:39:19','1','YTowOnt9'),('ada5e99e-021d-4929-7a33-67d448950fff','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 15:16:28','2025-03-14 15:16:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aeaa9be8-be00-8da1-afbd-67caf96ad38f','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-07 13:50:39','2025-03-07 13:50:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aeb9a986-d945-6c91-007c-67d41ca687a3','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 12:10:00','2025-03-14 12:10:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b325e638-be89-0dc7-442b-67d41c2c4a31','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 12:10:00','2025-03-14 12:10:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b4247c73-0b55-3e0f-f598-67dd864f3ea4','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-21 15:33:07','2025-03-21 15:33:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b461e4b7-b669-25ce-d202-67caf9be3586','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-07 13:51:01','2025-03-07 13:51:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b6ca0b44-102d-3cb0-a065-67ebeab3bb93','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:31:18','2025-04-01 13:31:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b6f809e7-7fcd-484c-438a-67e5510544c6','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-27 13:22:57','2025-03-27 13:22:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b7b827ed-d46b-91a7-4209-67dd86f73f45','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-21 15:33:07','2025-03-21 15:33:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b826e616-0695-62fa-ac38-67caf927e2d7','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-07 13:51:01','2025-03-07 13:51:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b8bd040b-1f5e-8ff7-602a-67ed95f7afbf','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:51:11','2025-04-02 19:51:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ba1aab6c-eb50-41c3-1c14-67ed95eec7da','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:52:01','2025-04-02 19:52:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bb490c5e-8fc1-5be1-4403-67dd866aa270','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-21 15:33:07','2025-03-21 15:33:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bb7af171-6f45-d2a0-e1c5-67d41c786ed1','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 12:10:00','2025-03-14 12:10:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bbd78401-1861-663b-d132-67d4401abe1e','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 14:42:16','2025-03-14 14:42:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bdaaa270-be8e-8992-06cc-67c6fb28e9d1','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES',0,'2025-03-04 13:10:47','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('be7cf2c4-14d1-4220-331e-67ed6e54ce7d','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 17:06:05','2025-04-02 17:06:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bf6cb992-e07b-0b7a-9d7d-67ed9580f960','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:52:01','2025-04-02 19:52:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bf850f1e-77ab-b52a-6d1a-67caf9eb600e','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-07 13:51:01','2025-03-07 13:51:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c02be5cb-d8de-81b6-d42a-67d44038dc5d','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 14:42:16','2025-03-14 14:42:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c2056c14-aeda-df12-cb6a-67d44009aad6','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 14:42:16','2025-03-14 14:42:16','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c29eb510-c890-6f3f-8740-67ed69a95457','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 16:45:37','2025-04-02 16:45:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c3416da2-043a-9ccb-b9a6-67ed6ed1010c','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 17:06:05','2025-04-02 17:06:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c4bcf2aa-8a4c-487a-69ee-67ed95b0ecde','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 19:52:01','2025-04-02 19:52:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c583dcae-d78b-1ec8-973f-67ebe6d06755','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:12:05','2025-04-01 13:12:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c717c112-fafb-8e6a-b0f2-67d43d50a580','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 14:29:08','2025-03-14 14:29:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c77102da-902e-91db-79c4-67ed6e16a842','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 17:05:44','2025-04-02 17:05:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c7957246-ce4c-9b12-daf3-67ed6e0c0547','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 17:06:05','2025-04-02 17:06:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c83aedba-8373-6b14-af7f-67eea1243faa','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-03 14:57:09','2025-04-03 14:57:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c846a18a-618d-0a07-b423-67ec20f0b366','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 17:22:53','2025-04-01 17:22:53','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c9735ed1-bb6e-dd92-6c3a-67ebe69ddbdc','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 13:12:05','2025-04-01 13:12:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ca330c18-8282-7212-1263-67ebe63b4564','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-01 13:13:48','2025-04-01 13:13:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cac0ea8d-22e4-b4d7-2a1e-67d43d825087','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 14:29:08','2025-03-14 14:29:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cbc2b25a-eb34-8fce-b000-67ed693b626f','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 16:45:37','2025-04-02 16:45:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cbe91de7-5994-e6af-c6aa-67ec200981e8','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-01 17:22:53','2025-04-01 17:22:53','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cc67297e-23d9-6f20-b69b-67d43def1669','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 14:29:08','2025-03-14 14:29:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cc718c66-aaf5-f862-65fc-67cafa919e30','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-07 13:53:11','2025-03-07 13:53:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ccaa806c-ccb8-9bce-1663-67ed6e440e87','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 17:05:44','2025-04-02 17:05:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ccd50c50-75a4-f9d4-69bf-67eea1dd8c3a','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-03 14:57:09','2025-04-03 14:57:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ccfe6853-efbc-72b8-aa1c-67ebe62fabc5','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:12:05','2025-04-01 13:12:05','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cd2140f3-2d06-7b74-6184-67eea13231fb','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-03 14:57:09','2025-04-03 14:57:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cd6300e1-1b40-ae4d-7e11-67d41e932458','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 12:20:03','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ce46d7d9-bfaa-bbe4-e9fa-67c6fb9685c7','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-04 13:11:11','2025-03-04 13:11:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cf41903b-eefc-4a19-0604-67ec2005c9b6','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 17:22:53','2025-04-01 17:22:53','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cf69cd30-c9e1-969c-1b11-67ed6e984cfa','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 17:05:44','2025-04-02 17:05:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cfb0d306-19cb-ad7a-f803-67cafadbef9c','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-07 13:53:11','2025-03-07 13:53:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cfdd548d-bc1d-6a01-70cf-67ed69c35df4','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 16:45:37','2025-04-02 16:45:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d02a6f0c-27de-7e05-c63c-67ed6e67ef23','import',0,'2025-04-02 17:07:56','2025-04-02 17:07:56','1','YToxOntzOjEyOiJmaWVsZF92YWx1ZXMiO3M6NDEyOiJ7ImN1c3RvbV9kZWxpbWl0ZXIiOiIsIiwiY3VzdG9tX2VuY2xvc3VyZSI6IiZxdW90OyIsImltcG9ydF90eXBlIjoiaW1wb3J0Iiwic291cmNlIjoiY3N2Iiwic291cmNlX2lkIjoiIiwiaW1wb3J0X21vZHVsZSI6IkNvbnRhY3RzIiwiaW1wb3J0bG9jYWxlX2NoYXJzZXQiOiJVVEYtOCIsImltcG9ydGxvY2FsZV9kYXRlZm9ybWF0IjoibS5kLlkiLCJpbXBvcnRsb2NhbGVfdGltZWZvcm1hdCI6Ikg6aSIsImltcG9ydGxvY2FsZV90aW1lem9uZSI6IkV1cm9wZVwvTWluc2siLCJpbXBvcnRsb2NhbGVfY3VycmVuY3kiOiItOTkiLCJpbXBvcnRsb2NhbGVfZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiOiIyIiwiaW1wb3J0bG9jYWxlX251bV9ncnBfc2VwIjoiLCIsImltcG9ydGxvY2FsZV9kZWNfc2VwIjoiLiJ9Ijt9'),('d1af52d1-a233-80fd-c93f-67eea164ef46','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-03 14:57:09','2025-04-03 14:57:09','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d2f9904b-3b8a-8a3c-13d7-67c6fb4c4af2','Home2_NOTE_cb5d4f0e-27d3-9a6a-2d43-67c6fbadfbcd',0,'2025-03-04 13:09:13','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d3ed2324-2998-125b-bb2f-67ed6e7dc716','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 17:06:25','2025-04-02 17:06:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d5cd0acc-c3e6-e5f6-4cd9-67cafa033470','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-07 13:53:11','2025-03-07 13:53:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d932b211-cd90-d4ff-594d-67ed6ed44b86','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 17:06:25','2025-04-02 17:06:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d933ff75-ced0-199d-e0ba-67c6fc694d61','Home2_TASK_7015efb6-4c51-0f1c-f2cb-67c6fcb5c5ce',0,'2025-03-04 13:15:21','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dcf86b4d-dd65-a769-f5a5-6786445eb2c4','Home',1,'2025-01-14 11:04:00','2025-02-18 08:35:07','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjRhZWJmYzY4LTY5YTYtZTkzMy1kYWFiLTY3ODY0NDVhNWM0NyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjRiNjE1OTMzLWFhMzUtNzE5Zi1hMjA1LTY3ODY0NGZkZjk2ZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjRiZDU4ZGZhLTM0OTMtZjQxNy0wM2RjLTY3ODY0NGEyODRkNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjRjMjVkOGI3LWI5MjUtMDg4Zi0yNmJiLTY3ODY0NDdhMzViOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNGM5NDgxOGItNzQzNC00ZGJmLTMyOWUtNjc4NjQ0MTY4MTVhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjY6e3M6NzoiZmlsdGVycyI7YToxOntzOjEyOiJkYXRlX2VudGVyZWQiO2E6MDp7fX1zOjU6InRpdGxlIjtzOjI5OiLQnNC+0Lgg0LrQvtC90YLRgNCw0LPQtdC90YLRiyI7czoxMToibXlJdGVtc09ubHkiO3M6NDoidHJ1ZSI7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6NDp7aTowO3M6NDoibmFtZSI7aToxO3M6MTI6ImFjY291bnRfdHlwZSI7aToyO3M6Nzoid2Vic2l0ZSI7aTozO3M6ODoiaW5kdXN0cnkiO31zOjExOiJhdXRvUmVmcmVzaCI7czoyOiItMSI7fX1zOjM2OiI0ZDAxNjE4Ni1mOTA2LWRmMjctNDE3Mi02Nzg2NDRkNmFjNmQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6NTp7aTowO3M6MzY6IjRiNjE1OTMzLWFhMzUtNzE5Zi1hMjA1LTY3ODY0NGZkZjk2ZSI7aToxO3M6MzY6IjRiZDU4ZGZhLTM0OTMtZjQxNy0wM2RjLTY3ODY0NGEyODRkNSI7aToyO3M6MzY6IjRjMjVkOGI3LWI5MjUtMDg4Zi0yNmJiLTY3ODY0NDdhMzViOCI7aTozO3M6MzY6IjRjOTQ4MThiLTc0MzQtNGRiZi0zMjllLTY3ODY0NDE2ODE1YSI7aTo0O3M6MzY6IjRkMDE2MTg2LWY5MDYtZGYyNy00MTcyLTY3ODY0NGQ2YWM2ZCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiNGFlYmZjNjgtNjlhNi1lOTMzLWRhYWItNjc4NjQ0NWE1YzQ3Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('dd648aa0-72ad-8c83-595e-67cae51c970a','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-07 12:26:00','2025-03-07 12:26:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dddfa81a-beeb-bbcb-c3ee-67cae5cc2153','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-07 12:25:39','2025-03-07 12:25:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ddfb1963-9fbf-fb8f-a831-67ed6efea6cc','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 17:06:25','2025-04-02 17:06:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('de04b6ee-9f58-a21b-7aee-67c6fc1c86c9','Home2_TASK_1c656eab-7b3a-41d1-8df8-67c6fc87f2bd',0,'2025-03-04 13:15:21','2025-04-03 14:57:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e08511ee-0873-efa4-c597-6786446fd052','Home2_CALL',1,'2025-01-14 11:04:00','2025-02-18 08:35:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e0b30359-43ed-1042-4777-67ed687d38a3','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-02 16:38:38','2025-04-02 16:38:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e15e719c-8641-06f9-df96-67cae5cebbbe','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-07 12:26:00','2025-03-07 12:26:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e1bce542-450a-a27a-1253-67cae5902231','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-07 12:25:39','2025-03-07 12:25:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e247409a-5958-99e2-88b1-678644d8814d','Home2_MEETING',1,'2025-01-14 11:04:00','2025-02-18 08:35:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e3db2069-7c62-ae70-53f4-6786440c6f15','Home2_OPPORTUNITY',1,'2025-01-14 11:04:00','2025-02-18 08:35:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e5a12d83-886d-1002-62f1-67864421d199','Home2_ACCOUNT',1,'2025-01-14 11:04:00','2025-02-18 08:35:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e75a2ff2-5d77-edee-84ca-678644bbd2f8','Home2_LEAD',1,'2025-01-14 11:04:00','2025-02-18 08:35:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e77c82de-9ea4-922d-fe81-67d4471dccc3','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-03-14 15:11:19','2025-03-14 15:11:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e83e6970-d16b-d243-ae86-67c6fbbf5e62','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-04 13:10:48','2025-03-04 13:10:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e8de72d4-586d-e80d-e576-67cae579cc37','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-07 12:26:00','2025-03-07 12:26:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e8e31d99-d091-1e7f-8a51-678644cf9c1c','Home2_SUGARFEED',1,'2025-01-14 11:04:00','2025-02-18 08:35:07','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e8f12fdc-b8ba-684e-a97e-67cae5516e01','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-07 12:25:39','2025-03-07 12:25:39','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e9f30896-45f5-8579-f7cb-67ebeac8969f','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-04-01 13:31:18','2025-04-01 13:31:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ea875021-e616-0119-50cd-67d4478a358d','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-03-14 15:11:19','2025-03-14 15:11:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('eadd9470-04de-c06a-1ddd-67c1d6572051','ModuleBuilder',0,'2025-02-28 15:29:52','2025-04-01 13:17:45','1','YTowOnt9'),('eddaacdb-1d55-b0d4-eaf7-67d447afc863','Home2_PROJECTTASK_e6da5526-faa9-ec7a-5a5f-67c6fb9c',0,'2025-03-14 15:11:19','2025-03-14 15:11:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ee335547-065a-1fd0-928b-67c1dcb2ef31','Home2_CONTACT',0,'2025-02-28 15:53:35','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('efa95335-db68-42c8-8555-67ed955666a9','Home2_AOS_INVOICES_c1c892f4-faff-0af0-c170-67c6fb7',0,'2025-04-02 19:52:35','2025-04-02 19:52:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f04d06a9-7a55-31cb-657a-67c1dc4e9632','Home2_DOCUMENT',0,'2025-02-28 15:53:35','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f26d964c-4747-62f8-b4c3-67c1dcabc187','Home2_CASE',0,'2025-02-28 15:53:35','2025-03-14 12:20:03','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f30e5ef0-9615-d926-fd22-67a36368564e','Assistant',1,'2025-02-05 13:09:31','2025-02-18 08:39:19','1','YTowOnt9'),('fde907cf-4436-65ca-fb9f-67ed95bd27ab','Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_6f1471e6-3c6d-',0,'2025-04-02 19:51:29','2025-04-02 19:51:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$2y$10$dNhRY/XsOFUQRAr8Xrpnm.4NJv6eCcqXVe97HL5iscBZLaXRsjTbO',0,NULL,NULL,1,'Дмитрий','Нор',1,0,1,NULL,'2025-01-14 11:02:58','2025-04-03 14:57:42','1','1','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-03 18:00:04
