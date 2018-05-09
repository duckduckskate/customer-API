CREATE DATABASE IF NOT EXISTS `recommendation`;

USE recommendation;

CREATE TABLE products (
    productCode      varchar(255)             NOT NULL,  -- UNSIGNED AUTO_INCREMENT??
    productName  varchar(255)            NOT NULL,
    PRIMARY KEY (productCode)                   -- Index built automatically on primary-key column
                                           -- INDEX (first_name)
                                           -- INDEX (last_name)
);
INSERT INTO `recommendation`.`products`
	(productCode,productName)
VALUES
	('S10_1678','The Swiss Family Robinson'),
('S10_1949','The Nutcracker and the Mouse King'),
('S10_2016','Ivanhoe'),
('S10_4698','The Legend of Sleepy Hollow'),
('S10_4757','Rip Van Winkle'),
('S10_4962','Grimms Fairy Tales'),
('S12_1099','A Visit From St. Nicholas'),
('S12_1108','Tales of Peter Parley About America'),
('S12_1666','Oliver Twist'),
('S12_2823','Nicholas Nickelby'),
('S12_3148','A Christmas Carol'),
('S12_3380','The Three Musketeers'),
('S12_3891','Fairy Tales'),
('S12_3990','The Children of the New Forest'),
('S12_4473','Slovenly Peter'),
('S12_4675','David Copperfield'),
('S18_1097','The Wide Wide World'),
('S18_1129','The King of the Golden River'),
('S18_1342','A Tale of Two Cities'),
('S18_1367','The Coral Island'),
('S18_1589','Tom Browns Schooldays'),
('S18_1662','Great Expectations'),
('S18_1749','The Water Babies'),
('S18_1889','A Journey to the Center of the Earth'),
('S18_1984','Alices Adventures in Wonderland'),
('S18_2238','Max and Moritz'),
('S18_2248','Hans Brinker or the Silver Skates'),
('S18_2319','Little Women'),
('S18_2325','Ragged Dick'),
('S18_2432','Lorna Doone'),
('S18_2581','Mrs. Overtheways Remembrances'),
('S18_2625','Twenty Thousand Leagues under the Sea'),
('S18_2795','At the Back of the North Wind'),
('S18_2870','The Brownies and other Tales'),
('S18_2949','The Princess and the Goblin'),
('S18_2957','Through the Looking-Glass'),
('S18_3029','A Dog of Flanders'),
('S18_3136','What Katy Did'),
('S18_3140','The Adventures of Tom Sawyer'),
('S18_3232','Black Beauty'),
('S18_3233','The Adventures of Pinocchio'),
('S18_3259','The Merry Adventures of Robin Hood'),
('S18_3278','Nights with Uncle Remus'),
('S18_3320','Treasure Island'),
('S18_3482','Adventures of Huckleberry Finn'),
('S18_3685','Heidi'),
('S18_3782','King Solomons Mines'),
('S18_3856','Kidnapped'),
('S18_4027','Little Lord Fauntleroy'),
('S18_4409','The Happy Prince and Other Tales'),
('S18_4522','The Blue Fairy Book'),
('S18_4600','The Jungle Book'),
('S18_4668','Seven Little Australians'),
('S18_4721','The Second Jungle Book'),
('S18_4933','Moonfleet'),
('S24_1046','The Black Corsair'),
('S24_1444','The Reluctant Dragon'),
('S24_1578','The Story of the Treasure Seekers'),
('S24_1628','The Wonderful Wizard of Oz'),
('S24_1785','The Tigers of Mompracem'),
('S24_1937','Five Children and It'),
('S24_2000','Just So Stories'),
('S24_2011','The Tale of Peter Rabbit'),
('S24_2022','King Arthur and His Knights'),
('S24_2300','The Call of the Wild'),
('S24_2360','Rebecca of Sunnybrook Farm'),
('S24_2766','A Little Princess'),
('S24_2840','The Railway Children'),
('S24_2841','White Fang'),
('S24_2887','Anne of Green Gables'),
('S24_2972','The Wind in the Willows'),
('S24_3151','The Secret Garden'),
('S24_3191','Peter and Wendy'),
('S24_3371','The Lost World'),
('S24_3420','Pollyanna'),
('S24_3432','The Magic Pudding'),
('S24_3816','Raggedy Ann'),
('S24_3856','The Story of Doctor Dolittle'),
('S24_3949','The Heart of a Dog'),
('S24_3969','Juan Bobo'),
('S24_4048','Velveteen Rabbit'),
('S24_4258','The Voyages of Doctor Dolittle'),
('S24_4278','The Dark Frigate'),
('S24_4620','Smoky the Cowhorse'),
('S32_1268','Winnie-the-Pooh'),
('S32_1374','The House at Pooh Corner'),
('S32_2206','Bambi'),
('S32_2509','The Trumpeter of Krakow'),
('S32_3207','Emil and the Detectives'),
('S32_3522','Swallows and Amazons'),
('S32_4289','Little House in the Big Woods'),
('S32_4485','The Hobbit'),
('S50_1341','My Name Is Aram'),
('S50_1392','Curious George'),
('S50_1514','Five on a Treasure Island'),
('S50_4713','Johnny Tremain'),
('S700_1138','The Little Prince'),
('S700_1691','Pippi Longstocking'),
('S700_1938','The Little White Horse'),
('S700_2047','Goodnight Moon'),
('S700_2466','Finn Family Moomintroll'),
('S700_2824','Charlottes Web'),
('S700_2834','The Cat in the Hat'),
('S700_3167','Toms Midnight Garden'),
('S700_3505','James and the Giant Peach'),
('S700_3962','The Phantom Tollbooth'),
('S700_4002','To Kill a Mockingbird'),
('S72_1253','Where the Wild Things Are');

CREATE TABLE recommendations (
	id	INT NOT NULL AUTO_INCREMENT,
    productCode      varchar(255)   NOT NULL,
    r_productCode      varchar(255)    NOT NULL,
	r_productName      varchar(255)    NOT NULL,
    KEY         (productCode),
    FOREIGN KEY (productCode) REFERENCES products (productCode),
    PRIMARY KEY (id)
    );

INSERT INTO `recommendation`.`recommendations`
	(productCode, r_productCode, r_productName)
VALUES
('S10_1678','S10_1949','The Nutcracker and the Mouse King'),
('S18_1342','S10_1949','The Nutcracker and the Mouse King'),
('S18_1342','S10_4757','Rip Van Winkle'),
('S10_1949','S10_2016','Ivanhoe'),
('S10_2016','S10_4698','The Legend of Sleepy Hollow'),
('S10_4698','S10_4757','Rip Van Winkle'),
('S10_4757','S10_4962','Grimms Fairy Tales'),
('S10_4962','S12_1099','A Visit From St. Nicholas'),
('S12_1099','S12_1108','Tales of Peter Parley About America'),
('S12_1108','S12_1666','Oliver Twist'),
('S12_1666','S12_2823','Nicholas Nickelby'),
('S12_2823','S12_3148','A Christmas Carol'),
('S12_3148','S12_3380','The Three Musketeers'),
('S12_3380','S12_3891','Fairy Tales'),
('S12_3891','S12_3990','The Children of the New Forest'),
('S12_3990','S12_4473','Slovenly Peter'),
('S12_4473','S12_4675','David Copperfield'),
('S12_4675','S18_1097','The Wide Wide World'),
('S18_1097','S18_1129','The King of the Golden River'),
('S18_1129','S18_1342','A Tale of Two Cities'),
('S18_1342','S18_1367','The Coral Island'),
('S18_1367','S18_1589','Tom Browns Schooldays'),
('S18_1367','S18_1097','The Wide Wide World'),
('S18_1367','S12_2823','Nicholas Nickelby'),
('S18_1367','S18_1662','Great Expectations'),
('S18_1367','S18_2581','Mrs. Overtheways Remembrances'),
('S18_1589','S18_1662','Great Expectations'),
('S18_1662','S18_1749','The Water Babies'),
('S18_1749','S18_1889','A Journey to the Center of the Earth'),
('S18_1889','S18_1984','Alices Adventures in Wonderland'),
('S18_1984','S18_2238','Max and Moritz'),
('S18_2238','S18_2248','Hans Brinker or the Silver Skates'),
('S18_2248','S18_2319','Little Women'),
('S18_2319','S18_2325','Ragged Dick'),
('S18_2325','S18_2432','Lorna Doone'),
('S18_2432','S18_2581','Mrs. Overtheways Remembrances'),
('S18_2581','S18_2625','Twenty Thousand Leagues under the Sea'),
('S18_2625','S18_2795','At the Back of the North Wind'),
('S18_2795','S18_2870','The Brownies and other Tales'),
('S18_2870','S18_2949','The Princess and the Goblin'),
('S18_2949','S18_2957','Through the Looking-Glass'),
('S18_2957','S18_3029','A Dog of Flanders'),
('S18_3029','S18_3136','What Katy Did'),
('S18_3136','S18_3140','The Adventures of Tom Sawyer'),
('S18_3140','S18_3232','Black Beauty'),
('S18_3232','S18_3233','The Adventures of Pinocchio'),
('S18_3233','S18_3259','The Merry Adventures of Robin Hood'),
('S18_3259','S18_3278','Nights with Uncle Remus'),
('S18_3278','S18_3320','Treasure Island'),
('S18_3320','S18_3482','Adventures of Huckleberry Finn'),
('S18_3482','S18_3685','Heidi'),
('S18_3685','S18_3782','King Solomons Mines'),
('S18_3782','S18_3856','Kidnapped'),
('S18_3856','S18_4027','Little Lord Fauntleroy'),
('S18_4027','S18_4409','The Happy Prince and Other Tales'),
('S18_4409','S18_4522','The Blue Fairy Book'),
('S18_4522','S18_4600','The Jungle Book'),
('S18_4600','S18_4668','Seven Little Australians'),
('S18_4668','S18_4721','The Second Jungle Book'),
('S18_4721','S18_4933','Moonfleet'),
('S18_4933','S24_1046','The Black Corsair'),
('S24_1046','S24_1444','The Reluctant Dragon'),
('S24_1444','S24_1578','The Story of the Treasure Seekers'),
('S24_1578','S24_1628','The Wonderful Wizard of Oz'),
('S24_1628','S24_1785','The Tigers of Mompracem'),
('S24_1785','S24_1937','Five Children and It'),
('S24_1937','S24_2000','Just So Stories'),
('S24_2000','S24_2011','The Tale of Peter Rabbit'),
('S24_2011','S24_2022','King Arthur and His Knights'),
('S24_2022','S24_2300','The Call of the Wild'),
('S24_2300','S24_2360','Rebecca of Sunnybrook Farm'),
('S24_2360','S24_2766','A Little Princess'),
('S24_2766','S24_2840','The Railway Children'),
('S24_2840','S24_2841','White Fang'),
('S24_2841','S24_2887','Anne of Green Gables'),
('S24_2887','S24_2972','The Wind in the Willows'),
('S24_2972','S24_3151','The Secret Garden'),
('S24_3151','S24_3191','Peter and Wendy'),
('S24_3191','S24_3371','The Lost World'),
('S24_3371','S24_3420','Pollyanna'),
('S24_3420','S24_3432','The Magic Pudding'),
('S24_3432','S24_3816','Raggedy Ann'),
('S24_3816','S24_3856','The Story of Doctor Dolittle'),
('S24_3856','S24_3949','The Heart of a Dog'),
('S24_3949','S24_3969','Juan Bobo'),
('S24_3969','S24_4048','Velveteen Rabbit'),
('S24_4048','S24_4258','The Voyages of Doctor Dolittle'),
('S24_4258','S24_4278','The Dark Frigate'),
('S24_4278','S24_4620','Smoky the Cowhorse'),
('S24_4620','S32_1268','Winnie-the-Pooh'),
('S32_1268','S32_1374','The House at Pooh Corner'),
('S32_1374','S32_2206','Bambi'),
('S32_2206','S32_2509','The Trumpeter of Krakow'),
('S32_2509','S32_3207','Emil and the Detectives'),
('S32_3207','S32_3522','Swallows and Amazons'),
('S32_3522','S32_4289','Little House in the Big Woods'),
('S32_4289','S32_4485','The Hobbit'),
('S32_4485','S50_1341','My Name Is Aram'),
('S50_1341','S50_1392','Curious George'),
('S50_1392','S50_1514','Five on a Treasure Island'),
('S50_1514','S50_4713','Johnny Tremain'),
('S50_4713','S700_1138','The Little Prince'),
('S700_1138','S700_1691','Pippi Longstocking'),
('S700_1691','S700_1938','The Little White Horse'),
('S700_1938','S700_2047','Goodnight Moon'),
('S700_2047','S700_2466','Finn Family Moomintroll'),
('S700_2824','S700_2834','The Cat in the Hat'),
('S700_2834','S700_3167','Toms Midnight Garden'),
('S700_3167','S700_3505','James and the Giant Peach'),
('S700_3505','S700_3962','The Phantom Tollbooth'),
('S700_3962','S700_4002','To Kill a Mockingbird'),
('S700_4002','S72_1253','Where the Wild Things Are')