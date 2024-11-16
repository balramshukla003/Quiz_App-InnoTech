

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `userID` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


LOCK TABLES `login` WRITE;
INSERT INTO `login` VALUES ('1','b','Balram Shukla','22-22-2002','balramshukla003@gmail.com','Student'),('11','1','Balram Shukla','22-22-2002','balramshukla003@gmail.com','Student'),('12','12','Samrat Shakti Shukla ','07-06-2001','balramshukla003@gmail.com','Student'),('balram003','balram','Balram Shukla','22-02-2004','balramshukla003@gmail.com','Student'),('samrat','shakti','Samrat','22-02-2004','balramshukla003@gmail.com','Teacher'),('yt','tryt','ww1','45-45-6545','465540@3QWEFEEYMJJ.HGHGT','Teacher');
UNLOCK TABLES;


DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(255) NOT NULL,
  `option_1` varchar(100) NOT NULL,
  `option_2` varchar(100) NOT NULL,
  `option_3` varchar(100) NOT NULL,
  `option_4` varchar(100) NOT NULL,
  `correct_option` int(11) NOT NULL CHECK (`correct_option` in (1,2,3,4)),
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `questions` WRITE;
INSERT INTO `questions` VALUES (1,'What is the capital of France?','Paris','London','Berlin','Madrid',1),(2,'What is the largest planet in our solar system?','Earth','Jupiter','Saturn','Mars',2),(3,'Which gas do plants absorb from the atmosphere?','Oxygen','Carbon Dioxide','Nitrogen','Hydrogen',2),(4,'Who developed the theory of relativity?','Isaac Newton','Albert Einstein','Galileo Galilei','Stephen Hawking',2),(5,'What is the boiling point of water at sea level?','100°C','90°C','80°C','110°C',1),(6,'Which is the smallest prime number?','0','1','2','3',3),(7,'What is the capital of Japan?','Tokyo','Seoul','Beijing','Bangkok',1),(8,'What is the chemical symbol for water?','H2O','O2','CO2','H2',1),(9,'Which element has the atomic number 1?','Oxygen','Hydrogen','Helium','Carbon',2),(10,'What is the largest continent on Earth?','Africa','Asia','Europe','North America',2),(11,'Which planet is known as the Red Planet?','Earth','Venus','Mars','Jupiter',3),(12,'Who wrote the play \"Hamlet\"?','Charles Dickens','William Shakespeare','Mark Twain','Jane Austen',2),(13,'What is the freezing point of water?','0°C','32°F','100°F','0°F',1),(14,'Which organ in the human body is primarily responsible for pumping blood?','Lungs','Heart','Kidney','Liver',2),(15,'What is the capital of Australia?','Sydney','Canberra','Melbourne','Brisbane',2),(16,'What is the hardest natural substance on Earth?','Gold','Iron','Diamond','Silver',3),(17,'What is the primary ingredient in guacamole?','Avocado','Tomato','Onion','Lemon',1),(18,'Which animal is known as the King of the Jungle?','Tiger','Elephant','Lion','Giraffe',3),(19,'What is the capital of Egypt?','Cairo','Alexandria','Giza','Luxor',1),(20,'Which country is known as the Land of the Rising Sun?','China','Japan','Thailand','Vietnam',2),(21,'What is the largest ocean on Earth?','Atlantic Ocean','Indian Ocean','Arctic Ocean','Pacific Ocean',4),(22,'What is the name of the longest river in the world?','Nile','Amazon','Yangtze','Mississippi',1),(23,'Which instrument is used to measure temperature?','Barometer','Thermometer','Hygrometer','Anemometer',2),(24,'What is the capital of Italy?','Rome','Venice','Florence','Milan',1),(25,'What is the main language spoken in Brazil?','Spanish','Portuguese','English','French',2),(26,'What is the currency of the United States?','Euro','Pound','Yen','Dollar',4),(27,'What is the fastest land animal?','Cheetah','Lion','Horse','Gazelle',1),(28,'Which vitamin is primarily obtained from sunlight?','Vitamin A','Vitamin C','Vitamin D','Vitamin E',3),(29,'What is the primary function of white blood cells?','Transport oxygen','Fight infections','Clot blood','Regulate temperature',2),(30,'Which vitamin is known as ascorbic acid?','Vitamin A','Vitamin B','Vitamin C','Vitamin D',3),(31,'What is the chemical formula for glucose?','C6H12O6','C12H22O11','C6H6','CH4',1),(32,'Which famous scientist developed the laws of motion?','Galileo Galilei','Isaac Newton','Albert Einstein','Niels Bohr',2),(33,'Which planet is known for its rings?','Earth','Mars','Jupiter','Saturn',4),(34,'What is the smallest country in the world?','Monaco','Vatican City','Nauru','Tuvalu',2),(35,'What is the primary function of the respiratory system?','Circulate blood','Exchange gases','Digest food','Support movement',2),(36,'What is the primary ingredient in bread?','Flour','Sugar','Yeast','Water',1),(37,'What is the capital of Russia?','Moscow','St. Petersburg','Kazakhstan','Novosibirsk',1),(38,'What is the primary ingredient in sushi?','Fish','Rice','Seaweed','Vegetables',2),(39,'What is the term for animals that eat only plants?','Carnivores','Herbivores','Omnivores','Insectivores',2),(40,'What is the tallest mountain in the world?','K2','Kangchenjunga','Mount Everest','Lhotse',3),(41,'Which famous physicist formulated the law of universal gravitation?','Albert Einstein','Isaac Newton','Galileo Galilei','Stephen Hawking',2),(42,'Which ocean is the largest?','Atlantic','Indian','Arctic','Pacific',4),(43,'What is the primary purpose of white blood cells?','Transport oxygen','Fight infections','Clot blood','Regulate temperature',2),(44,'What is the chemical formula for table salt?','NaCl','KCl','CaCO3','Na2SO4',1),(45,'What is the capital of Canada?','Toronto','Ottawa','Vancouver','Montreal',2),(46,'What is the largest desert in the world?','Sahara','Arabian','Gobi','Antarctic',4),(47,'What is the freezing point of water?','0°C','32°F','100°F','0°F',1),(48,'What is the main language spoken in China?','Mandarin','Cantonese','English','Spanish',1),(49,'What is the primary purpose of the skeletal system?','Support the body','Protect organs','Facilitate movement','All of the above',4),(50,'What is the largest mammal in the world?','Elephant','Blue Whale','Giraffe','Rhino',2),(51,'What is the chemical formula for oxygen gas?','O2','O3','CO2','H2O',1),(52,'What is the capital of Germany?','Berlin','Munich','Frankfurt','Hamburg',1),(53,'Who painted the Mona Lisa?','Vincent van Gogh','Pablo Picasso','Leonardo da Vinci','Claude Monet',3),(54,'Which gas is used in balloons?','Oxygen','Hydrogen','Helium','Nitrogen',3),(55,'What is the smallest bone in the human body?','Stapes','Incus','Malleus','Femur',1),(56,'What is the currency used in India?','Dollar','Rupee','Yen','Won',2),(57,'Which planet is closest to the sun?','Venus','Earth','Mercury','Mars',3),(58,'What is the longest river in the world?','Nile','Amazon','Yangtze','Mississippi',2),(59,'What is the process by which plants make their food?','Photosynthesis','Respiration','Transpiration','Evaporation',1),(60,'What is the name of the first manned mission to land on the moon?','Apollo 10','Apollo 11','Apollo 12','Apollo 13',2),(61,'What is the main ingredient in chocolate?','Cocoa','Sugar','Milk','Vanilla',1),(62,'Which famous scientist is known for his laws of motion?','Albert Einstein','Isaac Newton','Galileo Galilei','Niels Bohr',2),(63,'What is the term for animals that eat both plants and meat?','Carnivores','Herbivores','Omnivores','Insectivores',3),(64,'What is the primary purpose of the digestive system?','Transport oxygen','Digest food','Circulate blood','Support movement',2),(65,'What is the capital of Italy?','Rome','Venice','Florence','Milan',1),(66,'Which planet has the most moons?','Earth','Jupiter','Mars','Saturn',2),(67,'What is the main gas found in the air we breathe?','Oxygen','Carbon Dioxide','Nitrogen','Helium',3),(68,'What is the name of the first artificial satellite launched into space?','Apollo','Sputnik','Vostok','Explorer',2),(69,'Which is the largest mammal?','Elephant','Blue Whale','Giraffe','Rhino',2),(70,'What is the capital of South Korea?','Seoul','Busan','Incheon','Gwangju',1),(71,'What is the main function of the liver?','Filter blood','Produce bile','Digest food','Regulate temperature',2),(72,'What is the capital of Turkey?','Ankara','Istanbul','Izmir','Bursa',1),(73,'Which is the longest bone in the human body?','Humerus','Femur','Tibia','Fibula',2),(74,'Which planet is known for its beautiful rings?','Earth','Mars','Jupiter','Saturn',4),(75,'What is the primary purpose of red blood cells?','Transport carbon dioxide','Transport oxygen','Fight infections','Clot blood',2),(76,'Which gas is responsible for the greenhouse effect?','Oxygen','Nitrogen','Carbon Dioxide','Hydrogen',3),(77,'What is the capital of Greece?','Athens','Rome','Cairo','Madrid',1),(78,'What is the largest organ in the human body?','Heart','Liver','Skin','Lungs',3),(79,'What is the primary function of the brain?','Regulate body temperature','Control movement','Process information','All of the above',3),(80,'What is the chemical symbol for gold?','Ag','Au','Pb','Fe',2),(81,'Which is the hottest planet in our solar system?','Mars','Venus','Mercury','Jupiter',2),(82,'What is the capital of the United Kingdom?','London','Edinburgh','Belfast','Cardiff',1),(83,'What is the process of converting light energy into chemical energy called?','Photosynthesis','Respiration','Transpiration','Evaporation',1),(84,'Which animal is known as the Ship of the Desert?','Camel','Elephant','Horse','Donkey',1),(85,'What is the main function of the immune system?','Digest food','Transport oxygen','Fight infections','Regulate temperature',3),(86,'Which gas do we exhale?','Oxygen','Carbon Dioxide','Nitrogen','Helium',2),(87,'What is the capital of Indonesia?','Jakarta','Bali','Bandung','Surabaya',1),(88,'Which vitamin is produced when a person is exposed to sunlight?','Vitamin A','Vitamin C','Vitamin D','Vitamin E',3),(89,'What is the name of the largest desert in the world?','Sahara','Gobi','Arabian','Antarctic',4),(90,'What is the main ingredient in hummus?','Chickpeas','Lentils','Beans','Peas',1),(91,'Which element is a noble gas?','Oxygen','Hydrogen','Neon','Carbon',3),(92,'What is the currency of Australia?','Dollar','Pound','Yen','Euro',1),(93,'What is the process of water turning into vapor called?','Condensation','Evaporation','Precipitation','Sublimation',2),(94,'What is the capital of Mexico?','Mexico City','Guadalajara','Monterrey','Tijuana',1),(95,'What is the chemical formula for ammonia?','NH3','H2O','CO2','NaCl',1),(96,'What is the largest land animal?','Elephant','Giraffe','Rhino','Hippopotamus',1),(97,'Which planet is known for its Great Red Spot?','Earth','Jupiter','Saturn','Neptune',2),(98,'What is the main function of the kidneys?','Filter blood','Regulate temperature','Digest food','Produce insulin',1),(99,'What is the capital of Thailand?','Bangkok','Phuket','Chiang Mai','Pattaya',1),(100,'Which vitamin is important for vision?','Vitamin A','Vitamin B','Vitamin C','Vitamin D',1),(101,'What is the capital of Spain?','Barcelona','Madrid','Seville','Valencia',2),(102,'Which planet is known as the \"Giant Planet\"?','Saturn','Jupiter','Neptune','Uranus',2),(103,'What is the currency of China?','Yen','Dollar','Rupee','Yuan',4),(104,'What is the hardest natural substance on Earth?','Diamond','Gold','Iron','Platinum',1),(105,'What is the capital of France?','Paris','Berlin','Madrid','Rome',1),(106,'Which gas do plants produce during photosynthesis?','Oxygen','Carbon Dioxide','Nitrogen','Hydrogen',1),(107,'Who is known as the father of geometry?','Isaac Newton','Euclid','Pythagoras','Archimedes',2),(108,'What is the primary ingredient in pasta?','Flour','Rice','Corn','Barley',1),(109,'What is the largest internal organ in the human body?','Heart','Liver','Lungs','Kidneys',2),(110,'Which instrument is used to measure atmospheric pressure?','Barometer','Thermometer','Hygrometer','Anemometer',1),(111,'What is the capital of Italy?','Rome','Venice','Florence','Milan',1),(112,'What is the primary ingredient in chocolate?','Cocoa Beans','Sugar','Milk','Vanilla',1),(113,'What is the process of converting sugar into alcohol called?','Fermentation','Distillation','Oxidation','Hydrolysis',1),(114,'Which planet is known as the Morning Star?','Venus','Mars','Mercury','Jupiter',1),(115,'What is the main function of the digestive system?','Digest food','Transport nutrients','Regulate temperature','Produce hormones',1),(116,'Which animal is known for its ability to change color?','Chameleon','Octopus','Cuttlefish','All of the above',4),(117,'What is the chemical symbol for sodium?','Na','So','S','Sd',1),(118,'What is the primary source of energy for the Earth?','The Moon','The Sun','The Stars','Geothermal',2),(119,'What is the capital of Canada?','Toronto','Ottawa','Montreal','Vancouver',2),(120,'Which is the smallest continent?','Europe','Australia','Antarctica','South America',2),(121,'What is the term for the fear of spiders?','Acrophobia','Arachnophobia','Claustrophobia','Agoraphobia',2),(122,'What is the chemical formula for carbon dioxide?','CO2','O2','H2O','C2O',1),(123,'What is the largest mammal?','Elephant','Blue Whale','Giraffe','Rhino',2),(124,'What is the primary function of the liver?','Filter blood','Produce bile','Digest food','All of the above',4),(125,'Which vitamin is produced by the body when exposed to sunlight?','Vitamin A','Vitamin C','Vitamin D','Vitamin E',3),(126,'What is the capital of Japan?','Tokyo','Seoul','Beijing','Bangkok',1),(127,'Which part of the human body is responsible for balance?','Ears','Eyes','Nose','Brain',1),(128,'Which organ is responsible for detoxifying the blood?','Kidneys','Liver','Lungs','Heart',2),(129,'What is the largest land animal?','Elephant','Giraffe','Rhino','Hippo',1),(130,'What is the capital of Germany?','Berlin','Munich','Frankfurt','Hamburg',1),(131,'What is the main ingredient in tofu?','Soybeans','Wheat','Rice','Corn',1),(132,'Which planet is known for its extensive ring system?','Earth','Jupiter','Saturn','Uranus',3),(133,'What is the main gas found in the atmosphere of Mars?','Oxygen','Nitrogen','Carbon Dioxide','Hydrogen',3),(134,'What is the term for animals that are active at night?','Diurnal','Nocturnal','Crepuscular','Lunar',2),(135,'What is the capital of Egypt?','Cairo','Alexandria','Giza','Luxor',1),(136,'What is the primary purpose of the skeletal system?','Support','Movement','Protection','All of the above',4),(137,'Which planet has the most rings?','Mars','Jupiter','Saturn','Uranus',3),(138,'What is the chemical symbol for potassium?','K','P','Po','Pt',1),(139,'What is the largest continent on Earth?','Africa','Asia','North America','Europe',2),(140,'What is the process by which plants lose water vapor called?','Photosynthesis','Transpiration','Respiration','Evaporation',2),(141,'Which element is a gas at room temperature?','Bromine','Chlorine','Oxygen','Mercury',3),(142,'What is the capital of Italy?','Rome','Venice','Florence','Milan',1),(143,'Which mammal is known for having a pouch?','Elephant','Kangaroo','Lion','Giraffe',2),(144,'What is the smallest planet in our solar system?','Mercury','Mars','Venus','Earth',1),(145,'What is the main function of the respiratory system?','Digest food','Exchange gases','Regulate body temperature','Transport blood',2),(146,'What is the capital of Argentina?','Buenos Aires','Santiago','Montevideo','Lima',1),(147,'Which vitamin is important for blood clotting?','Vitamin A','Vitamin K','Vitamin C','Vitamin D',2),(148,'What is the capital of Brazil?','Rio de Janeiro','Brasilia','Sao Paulo','Salvador',2),(149,'What is the largest island in the world?','Greenland','New Guinea','Borneo','Madagascar',1),(150,'What is the name of the process by which a caterpillar transforms into a butterfly?','Metamorphosis','Photosynthesis','Pollination','Fertilization',1),(151,'What is the capital of India?','New Delhi','Mumbai','Bangalore','Kolkata',1),(152,'Which gas is used in soft drinks?','Nitrogen','Carbon Dioxide','Helium','Oxygen',2),(153,'What is the chemical symbol for gold?','Au','Ag','Fe','Hg',1),(154,'What is the main function of the kidneys?','Filter blood','Digest food','Produce insulin','Regulate temperature',1),(155,'What is the currency of Japan?','Yen','Won','Dollar','Euro',1),(156,'Which planet is known as the Blue Planet?','Mars','Earth','Neptune','Venus',2),(157,'What is the capital of Sweden?','Stockholm','Oslo','Copenhagen','Helsinki',1),(158,'Which part of the plant conducts photosynthesis?','Roots','Stems','Leaves','Flowers',3),(159,'What is the term for the study of fungi?','Botany','Mycology','Zoology','Ecology',2),(160,'What is the chemical formula for methane?','CH4','C2H6','C3H8','C4H10',1),(161,'What is the capital of Thailand?','Bangkok','Phuket','Chiang Mai','Pattaya',1),(162,'What is the primary purpose of the circulatory system?','Transport nutrients','Fight infections','Regulate temperature','Support movement',1),(163,'What is the largest organ in the human body?','Heart','Liver','Skin','Lungs',3),(164,'Which vitamin is important for immune function?','Vitamin A','Vitamin B','Vitamin C','Vitamin D',3),(165,'What is the capital of Russia?','Moscow','St. Petersburg','Novosibirsk','Yekaterinburg',1),(166,'What is the largest organ in the human body?','Skin','Liver','Heart','Brain',1),(167,'What is the chemical symbol for silver?','Ag','Si','Au','Hg',1),(168,'What is the main purpose of the nervous system?','Regulate body temperature','Control movement','Transmit signals','All of the above',3),(169,'Which planet is closest to the sun?','Venus','Earth','Mercury','Mars',3),(170,'What is the capital of Greece?','Athens','Rome','Cairo','Madrid',1),(171,'What is the main gas found in the air we breathe?','Oxygen','Nitrogen','Carbon Dioxide','Helium',2),(172,'What is the name of the first manned mission to land on the moon?','Apollo 10','Apollo 11','Apollo 12','Apollo 13',2),(173,'What is the term for the fear of heights?','Acrophobia','Claustrophobia','Agoraphobia','Mysophobia',1),(174,'Which element has the atomic number 1?','Hydrogen','Helium','Oxygen','Carbon',1),(175,'What is the capital of the United Kingdom?','London','Edinburgh','Belfast','Cardiff',1),(176,'Which gas is responsible for the greenhouse effect?','Oxygen','Nitrogen','Carbon Dioxide','Hydrogen',3),(177,'What is the main function of the reproductive system?','Produce hormones','Reproduce','Support movement','Transport oxygen',2),(178,'What is the chemical formula for water?','H2O','CO2','O2','H2',1),(179,'What is the largest desert in the world?','Sahara','Gobi','Arabian','Antarctic',1),(180,'What is the capital of Pakistan?','Islamabad','Karachi','Lahore','Peshawar',1),(181,'What is the process of cell division called?','Mitosis','Meiosis','Binary Fission','Budding',1),(182,'What is the currency of Russia?','Ruble','Dollar','Euro','Yen',1),(183,'What is the largest ocean on Earth?','Atlantic Ocean','Indian Ocean','Arctic Ocean','Pacific Ocean',4),(184,'What is the main function of white blood cells?','Transport oxygen','Fight infections','Clot blood','Regulate temperature',2),(185,'What is the capital of Australia?','Sydney','Canberra','Melbourne','Brisbane',2),(186,'What is the term for a baby kangaroo?','Cub','Kit','Joey','Pup',3),(187,'What is the main ingredient in guacamole?','Tomato','Avocado','Onion','Lime',2),(188,'Which element is essential for the formation of DNA?','Carbon','Oxygen','Phosphorus','Nitrogen',3),(189,'What is the capital of South Korea?','Seoul','Busan','Incheon','Gwangju',1),(190,'What is the largest planet in our solar system?','Earth','Mars','Jupiter','Saturn',3),(191,'Which gas is most abundant in the Earth\'s atmosphere?','Oxygen','Nitrogen','Carbon Dioxide','Argon',2),(192,'What is the term for the study of living organisms?','Botany','Zoology','Biology','Ecology',3),(193,'What is the main function of the muscular system?','Support','Movement','Protection','All of the above',2),(194,'What is the capital of Nigeria?','Lagos','Abuja','Port Harcourt','Kano',2),(195,'What is the process by which plants absorb water called?','Transpiration','Absorption','Evaporation','Photosynthesis',1),(196,'What is the largest fish in the ocean?','Great White Shark','Whale Shark','Tiger Shark','Hammerhead Shark',2),(197,'What is the capital of Kenya?','Nairobi','Mombasa','Kisumu','Eldoret',1),(198,'Which vitamin is important for healthy bones?','Vitamin A','Vitamin K','Vitamin D','Vitamin C',3),(199,'What is the capital of the Philippines?','Cebu','Manila','Davao','Quezon City',2),(200,'Which planet is known for its storms, including the Great Red Spot?','Venus','Mars','Jupiter','Saturn',3);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `quote` varchar(1000) NOT NULL,
  `author` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES ('The only limit to our realization of tomorrow is our doubts of today.','Franklin D. Roosevelt'),('In the end, we will remember not the words of our enemies, but the silence of our friends.','Martin Luther King Jr.'),('To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.','Ralph Waldo Emerson'),('The future belongs to those who believe in the beauty of their dreams.','Eleanor Roosevelt'),('Success is not final, failure is not fatal: It is the courage to continue that counts.','Winston Churchill'),('Life is what happens when you\'re busy making other plans.','John Lennon'),('You only live once, but if you do it right, once is enough.','Mae West'),('The best way to predict the future is to invent it.','Alan Kay'),('The greatest glory in living lies not in never falling, but in rising every time we fall.','Nelson Mandela'),('Your time is limited, so don\'t waste it living someone else\'s life.','Steve Jobs'),('A journey of a thousand miles begins with a single step.','Lao Tzu'),('If you want to lift yourself up, lift up someone else.','Booker T. Washington'),('Happiness is not something ready-made. It comes from your own actions.','Dalai Lama'),('The purpose of our lives is to be happy.','Dalai Lama'),('What you get by achieving your goals is not as important as what you become by achieving your goals.','Zig Ziglar'),('The only way to do great work is to love what you do.','Steve Jobs'),('If life were predictable it would cease to be life, and be without flavor.','Eleanor Roosevelt'),('The only impossible journey is the one you never begin.','Tony Robbins'),('Everything you’ve ever wanted is on the other side of fear.','George Addair'),('Believe you can and you’re halfway there.','Theodore Roosevelt');
UNLOCK TABLES;