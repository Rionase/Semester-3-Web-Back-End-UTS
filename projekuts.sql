-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 08:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekuts`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `day` varchar(256) NOT NULL,
  `meal_plan` varchar(256) NOT NULL,
  `food_name` varchar(256) NOT NULL,
  `food_description` varchar(500) NOT NULL,
  `image_path` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `day`, `meal_plan`, `food_name`, `food_description`, `image_path`) VALUES
(1, 'Monday', 'Breakfast', 'Soy Milk', 'Soy Milk is a plant-based nondairy beverage that\'s a popular alternative to cow\'s milk. It\'s made from soybeans.', '/Image/Monday/Soy_Milk.png'),
(2, 'Monday', 'Breakfast', 'Dumpling', 'Dumplings are delicate, bite-sized treats of different fillings wrapped in a thin layer of dough. It\'s filled with meat, shrimp and vegetables.', '/Image/Monday/Dumplings.png'),
(3, 'Monday', 'Breakfast', 'Congee', 'A comforting and filling dish, congee (Chinese rice porridge) can be enjoyed plain or with various savoury or sweet ingredients.', '/Image/Monday/Congee.png'),
(4, 'Monday', 'Lunch', 'Lumpia', 'Lumpia are made of thin paper-like or crepe-like pastry skin called \"lumpia wrapper\" enveloping savory or sweet fillings.', '/Image/Monday/Lumpia.png'),
(5, 'Monday', 'Lunch', 'Capcai', 'Capcai is the Hokkien-derived term for a popular Chinese Indonesian and Peranakan stir-fried vegetable dish that originates from Fujian cuisine.', '/Image/Monday/Capcai.png'),
(6, 'Monday', 'Lunch', 'Sweet and Sour Pork', 'A Chinese stir-fry dish made with juicy pieces of pork tenderloin, bell peppers, onion, and pineapple.', '/Image/Monday/Sweet_and_Sour_Pork.png'),
(7, 'Monday', 'Lunch', 'Egg Drop Soup', 'One of the staple soups in Chinese cuisine is the famous egg drop soup. As the name suggests, it is made by dropping whisked eggs in hot broth.', '/Image/Monday/Egg_Drop_Soup.png'),
(8, 'Monday', 'Lunch', 'Oolong Tea', 'Oolong tea is made from the Camellia sinensis plant. Its dried leaves and leaf buds are used to make several different teas, including black and green teas.', '/Image/Monday/Oolong_Tea.png'),
(9, 'Monday', 'Lunch', 'Mooncake', 'Most mooncakes consist of a thick, tender pastry skin enveloping a sweet, dense filling, and contain whole salted egg yolks in their center that symbolizes the full moon.', '/Image/Monday/Mooncake.png'),
(10, 'Monday', 'Dinner', 'Scallion Pancake', 'Scallion pancake is a Chinese unleavened flatbread made from wheat flour which is folded with oil and finely minced scallions.', '/Image/Monday/Scallion_Pancake.png'),
(11, 'Monday', 'Dinner', 'Stir-Fried Gai Lan', 'Stir-fried gai lan is a traditional Chinese dish from the southern parts of the country. The dish is usually made with a combination of gailan, vegetable oil, ginger, garlic, oyster sauce,', '/Image/Monday/Stir_Fry_Gai_Lan.png'),
(12, 'Monday', 'Dinner', 'Oyster Omelet', 'The dish consists of small oysters added to a mixture of potato starch and egg batter. We also add a dash of spicy chili sauce mixed with lime juice.', '/Image/Monday/Oyster_Omelet.png'),
(13, 'Monday', 'Dinner', 'Soy Sause Chicken', 'Soy sauce chicken is an example of red cooking technique, where meat is simmered in a soy sauce-based liquid along with various seasonings.', '/Image/Monday/Soy_Sauce_Chicken.png'),
(14, 'Monday', 'Dinner', 'Pu Erh Tea', 'Pu erh, also known as aged or vintage tea is a renowned tea produced exclusively in the Yunnan province of China.', '/Image/Monday/Pu_Erh_Tea.png'),
(15, 'Monday', 'Dinner', 'Red Bean Soup', 'Red bean soup is a classic Chinese soup that is commonly consumed as a dessert, made from red azuki beans, lotus seeds, and tangerine or orange peel.', '/Image/Monday/Red_Bean_Soup.png'),
(16, 'Tuesday', 'Breakfast', 'Luwak Coffee', 'Luwak coffee is a drink that comes from coffee beans harvested from the cleaned feces of the wild luwak. This drink has a smoother taste than coffee in general.', '/Image/Tuesday/Luwak_Coffee.png'),
(17, 'Tuesday', 'Breakfast', 'Gado-gado', 'Gado-gado is the Indonesian version of mixed vegetable salad that consists of vegetables, tofu, and tempeh, spicy savory peanut sauce and topped it with crackers.', '/Image/Tuesday/Gado_Gado.png'),
(18, 'Tuesday', 'Breakfast', 'Bubur Ketan Hitam', 'Bubur Ketan Hitam is an Indonesian traditional porridge consists of black sticky rice, coconut milk, and palm or cane sugar.', '/Image/Tuesday/Bubur_ketan_hitam.png'),
(19, 'Tuesday', 'Lunch', 'Lemper', 'Lemper is a savory snack from Indonesia made by stuffing glutinous rice with seasoned shredded chicken which is then rolled in a banana leaf.', '/Image/Tuesday/Lemper.png'),
(20, 'Tuesday', 'Lunch', 'Tempe Medoan', 'Thin slices of tempeh are dipped in batter that is enriched with ground coriander, sliced scallions, and garlic before they are deep-fried.', '/Image/Tuesday/Tempe_Mendoan.png'),
(21, 'Tuesday', 'Lunch', 'Sayur Asam', 'The sweet and sour flavour of this dish is considered refreshing and very compatible with fried or grilled dishes.', '/Image/Tuesday/Sayur_asam.png'),
(22, 'Tuesday', 'Lunch', 'Ayam Bakar', 'Our chicken is marinated with the mixture of kecap manis (sweet soy sauce) and coconut oil, applied with a brush during grilling. ', '/Image/Tuesday/Ayam_bakar.png'),
(23, 'Tuesday', 'Lunch', 'Cendol', 'An iced sweet dessert that contains droplets of green rice flour jelly, coconut milk and palm sugar syrup.', '/Image/Tuesday/Cendol.png'),
(24, 'Tuesday', 'Lunch', 'Wajik', 'Wajik or wajid is a traditional Indonesian sticky rice cake. It\'s usually made with glutinous rice, palm sugar, coconut milk, pandan leaves, and salt.', '/Image/Tuesday/Wajik.png'),
(25, 'Tuesday', 'Dinner', 'Bakwan Jagung', 'Bakwan Jagung is an Indonesian fried dish made with corn, Chinese celery, spring onions and shallots in a batter then fried to crispy perfection.', '/Image/Tuesday/Bakwan_jagung.png'),
(26, 'Tuesday', 'Dinner', 'Telur Balado', 'These eggs have a crispy outer layer coated with bold sweet, sour, and spicy flavors.', '/Image/Tuesday/Telur_balado.png'),
(27, 'Tuesday', 'Dinner', 'Gulai', 'Our gulai consist of rich spices such as turmeric, coriander, shallot, garlic, lemongrass, and other spice ground into paste and cooked in coconut milk.', '/Image/Tuesday/Gulai.png'),
(28, 'Tuesday', 'Dinner', 'Rendang', 'Rendang is a popular dish made with meat stewed in coconut milk and spices.', '/Image/Tuesday/Beef_Rendang.png'),
(29, 'Tuesday', 'Dinner', 'Coconut Water', 'This tropical water has a subtle sweet note, combined with a bit salty and nutty hints of the coconut.', '/Image/Tuesday/Coconut.png'),
(30, 'Tuesday', 'Dinner', 'Putu Bambu', 'Putu Bambu is made of rice flour called suji and coloured green with pandan leaves, filled with palm sugar, steamed in bamboo tubes and served with desiccated coconut.', '/Image/Tuesday/Putu_bambu.png'),
(31, 'Wednesday', 'Breakfast', 'Cappucino', 'An espresso-based coffee drink that originated in Italy and is prepared with steamed milk foam.', '/Image/Wednesday/Cappuccino.png'),
(32, 'Wednesday', 'Breakfast', 'Pancetta eggs', 'Pancetta adds a brawny bites to compliment the soft eggs. Lots of ground black pepper gives the custardy eggs a spicy snap.', '/Image/Wednesday/Pancetta_eggs.png'),
(33, 'Wednesday', 'Breakfast', 'Breakfast panini', 'Pita bread with pesto, freshly picked veggies and bacon. A hearty breakfast that will keep you going all morning.', '/Image/Wednesday/Breakfast_panini.png'),
(34, 'Wednesday', 'Lunch', 'Deviled Eggs', 'Hard-boiled eggs that have had their boiled yolks removed and mixed with ingredients into a paste, then added back to the cavities of the egg whites.', '/Image/Wednesday/Deviled_eggs.png'),
(35, 'Wednesday', 'Lunch', 'Panzanella', 'An Italian salad made of moistened bread, with tomatoes, onions, basil, and a dressing of vinegar and olive oil.', '/Image/Wednesday/Panzanella.png'),
(36, 'Wednesday', 'Lunch', 'Saltimbocca', 'The dish consists of tender, pan-fried veal cutlets that are wrapped in Italian prosciutto, flavored with fresh sage, then sautéed in white wine.', '/Image/Wednesday/Saltimbocca.png'),
(37, 'Wednesday', 'Lunch', 'Ossobuco', 'Slow-cooked in beef broth until the meat becomes soft enough to cut with a fork, ossobuco is finished with a topping of gremolà.', '/Image/Wednesday/Ossobuco.png'),
(38, 'Wednesday', 'Lunch', 'Bellini', 'A sweet and fruity drink is delectable on a warm summer’s day.', '/Image/Wednesday/Bellini.png'),
(39, 'Wednesday', 'Lunch', 'Semifreddo', 'Semifreddo is chilled until it sets and it is then served semi-frozen, while its unbelieveably light texture makes it melt on the tongue.', '/Image/Wednesday/Semifreddo.png'),
(40, 'Wednesday', 'Dinner', 'Supplì', 'Roman supplì are traditionally filled with mozzarella, and the rice is pre-simmered in a tomato-based meat sauce.', '/Image/Wednesday/Suppli.png'),
(41, 'Wednesday', 'Dinner', 'Caesar Salad', 'Romaine lettuce and croutons dressed with lemon juice, olive oil, egg, Worcestershire sauce, anchovies, garlic, Dijon mustard, Parmesan cheese, and black pepper.', '/Image/Wednesday/Caesar_salad.png'),
(42, 'Wednesday', 'Dinner', 'Cotoletta', 'Just like its distant Viennese cousin, cotoletta alla Milanese is a thinly pounded, breaded, pan-fried veal cutlet.', '/Image/Wednesday/Cotoletta.png'),
(43, 'Wednesday', 'Dinner', 'Tagliatelle ai funghi', 'a flavorful Italian dish consisting of fresh tagliatelle pasta paired with meaty mushrooms.', '/Image/Wednesday/Tagliatelle_ai_funghi.png'),
(44, 'Wednesday', 'Dinner', 'Hugo spritz', 'Made from prosecco, elderflower syrup and club soda with mint leaves on top to garnish the drink off.', '/Image/Wednesday/Hugo_spritz.png'),
(45, 'Wednesday', 'Dinner', 'Pandoro', 'Its name is derived from the phrase pan d’oro, meaning golden bread, a reference to its yellow color which comes from the large amount of egg yolks used in the bread.\r\n', '/Image/Wednesday/Pandoro.png'),
(46, 'Thursday', 'Breakfast', 'Coffee', 'Our coffee are made with the finest roaste beans, guaranteed to wake you up.', '/Image/Thursday/Coffee.png'),
(47, 'Thursday', 'Breakfast', 'Avocado Toast', 'Toasted bread topped with a combination of mashed avocados, salt, pepper, and citrus juice.', '/Image/Thursday/Avocado_toast.png'),
(48, 'Thursday', 'Breakfast', 'Eggs Benedict', 'Two halves of an English muffin, each topped with Canadian bacon, a poached egg, and hollandaise sauce.', '/Image/Thursday/Eggs_benedict.png'),
(49, 'Thursday', 'Lunch', 'Onion Rings', 'Dipped onion rings in batter, then deep-frying until golden and crispy.', '/Image/Thursday/Onion_rings.png'),
(50, 'Thursday', 'Lunch', 'Chinese Chicken Salad', 'Romaine lettuce, shredded chicken, vegetables, fried noodles, and almonds is popular throughout the States.', '/Image/Thursday/Chicken_salad.png'),
(51, 'Thursday', 'Lunch', 'Pot Pie', 'The savory pies are filled with meat along with vegetables such as peas, potatoes, and carrots.', '/Image/Thursday/Pot_pie.png'),
(52, 'Thursday', 'Lunch', 'Lobster Roll', 'A savory turnover filled with classic pizza ingredients: mozzarella, salami and vegetables, with marinara sauce served on the side.', '/Image/Thursday/Lobster_roll.png'),
(53, 'Thursday', 'Lunch', 'Milkshake', 'Chocolate and fruits are added to milk and ice cream, lavishly decorated and served cold.', '/Image/Thursday/Milkshake.png'),
(54, 'Thursday', 'Lunch', 'Key Lime Pie', 'Lime custard is poured into a buttery crust made from graham crackers and topped with sweet whipped cream.', '/Image/Thursday/Key_lime_pie.png'),
(55, 'Thursday', 'Dinner', 'Mozzarella Sticks', 'Traditionally served as an appetizer with marinara sauce.', '/Image/thursday/Mozzarella_sticks.png'),
(56, 'Thursday', 'Dinner', 'Corn on the Cob', 'Grilled freshly picked sweet corn. placed on a stick and smeared with butter.', '/Image/Thursday/Corn.png'),
(57, 'Thursday', 'Dinner', 'Bufallo Wings', 'Deep-fry wings and serve in hot sauce with a blue cheese dressing and some thickly sliced celery sticks. \r\n', '/Image/Thursday/Buffalo_wings.png'),
(58, 'Thursday', 'Dinner', 'Barbecue Ribs', 'Moist, juicy, smoky, tender — all those adjectives will only conjure one image in your mind from here on out', '/Image/Thursday/Barbecue_ribs.png'),
(59, 'Thursday', 'Dinner', 'Wine', 'Pleasant flavours that are sweet and \'rounded\' in nature are described as rich.', '/Image/Thursday/Wine.png'),
(60, 'Thursday', 'Dinner', 'Molten Chocolate Cake', 'Once cracked the spongy outside cake will set with an explosion of liquid chocolate oozing out of its confinements, as if finally set free.', '/Image/Thursday/Chocolate_cake.png'),
(61, 'Friday', 'Breakfast', 'French coffee', 'Kahlua, cointreau, and coffee. Stir in sugar. Top with whipped cream and chocolate shavings ', '/Image/Friday/French_coffee.png'),
(62, 'Friday', 'Breakfast', 'Pain au Chocolat', 'A light, flaky, rectangular pastry with a chocolate filling.\r\n', '/Image/Friday/Pain_au_chocolat.png'),
(63, 'Friday', 'Breakfast', 'Croissant', 'Buttery, flaky, French viennoiserie pastry inspired by the shape of the Austrian kipferl.', '/Image/Friday/Croissant.png'),
(64, 'Friday', 'Lunch', 'Quiche', 'A pastry crust that is filled with eggs, milk, cheese, spinach, and fresh herbs.\r\n', '/Image/Friday/Quiche.png'),
(65, 'Friday', 'Lunch', 'Salade Niçoise', 'A salad that is typically seasoned with traditional Provençal seasoning of olive oil, garlic, and basil.', '/Image/Friday/Salade_nicoise.png'),
(66, 'Friday', 'Lunch', 'Galette de Bretagne', 'These pancakes are made from buckwheat flour, then filled with eggs, ham, mushrooms, and bacon.', '/Image/Friday/Galette_de_bretagne.png'),
(67, 'Friday', 'Lunch', 'Tête de veau', 'A calf’s head, which is boiled for a long time until the meat becomes tender and the skin develops a gelatinous consistency.', '/Image/Friday/Tete_de_veau.png'),
(68, 'Friday', 'Lunch', 'French Press', 'Coffee is steeped inside the pot, and the mesh is then used to press down the coffee grounds', '/Image/Friday/French_press.png'),
(69, 'Friday', 'Lunch', 'Souffle', 'A cheese base combined with whisked egg whites, butter, milk, and flour. The dish puffs up into a decadent golden when baked. ', '/Image/Friday/Souffle.png'),
(70, 'Friday', 'Dinner', 'Tartiflette', 'One of the best-loved dishes of the Alps, tartiflette is a mouth-watering gratinated potato dish from the mountainous region of Savoie in France.', '/Image/Friday/Tartiflette.png'),
(71, 'Friday', 'Dinner', 'Pot-au-feu', 'French classic is a stew-like dish of boiled meat and vegetables.', '/Image/Friday/Pot-au-feu.png'),
(72, 'Friday', 'Dinner', 'Daube', 'a hearty Provençal stew consisting of (usually) lamb or beef that is simmered low and slow in wine with various vegetables and seasonings\r\n', '/Image/Friday/Daube.png'),
(73, 'Friday', 'Dinner', 'En papillote fish', 'Fish prepared this way comes out moist, tender, and packed with flavor.', '/Image/Friday/En_papillote.png'),
(74, 'Friday', 'Dinner', 'Vosne-Romanée', 'These well-structured and concentrated wines are characterized by their dark garnet color and aromas of ripe red and black berries.', '/Image/Friday/Vosne_romanee.png'),
(75, 'Friday', 'Dinner', 'Fiadone', 'fiadone is a traditional dessert prepared with brocciu, eggs, sugar, lemon zest, and lemon juice. \r\n', '/Image/Friday/Fiadone.png'),
(76, 'Saturday', 'Breakfast', 'Koucha', 'A type of tea that is more oxidized than oolong, yellow, white and green teas.\r\n', '/Image/Saturday/Koucha.png'),
(77, 'Saturday', 'Breakfast', 'Tamagoyaki', 'Eggs are folded into themselves until they are fully cooked. Fluffy and pair wells with rice.\r\n', '/Image/Saturday/Tamagoyaki.png'),
(78, 'Saturday', 'Breakfast', 'Rice with Natto', 'Rice top with a traditional Japanese food made from whole soybeans that have been fermented.', '/Image/Saturday/Natto.png'),
(79, 'Saturday', 'Lunch', 'Chawanmushi', 'A delicate custard-soup, its name meaning steamed in a tea cup.', '/Image/Saturday/Chawanmushi.png'),
(80, 'Saturday', 'Lunch', 'Cucumber Salad ', 'A light and refreshing salad consisted of cucumber and vinegar.', '/Image/Saturday/Cucumber_salad.png'),
(81, 'Saturday', 'Lunch', 'Ebi Furai', 'Large prawns are typically dipped in egg wash, coated in panko breadcrumbs, then deep-fried. ', '/Image/Saturday/Ebi_furai.png'),
(82, 'Saturday', 'Lunch', 'Shio Ramen', 'Broth is paired with straight, thin noodles, and topped with chashu, scallions, hard boiled eggs, and wakame seaweed.\r\n', '/Image/Saturday/Shio_ramen.png'),
(83, 'Saturday', 'Lunch', 'Matcha', 'a Chinese green tea variety that is unique for its harvesting, processing, and preparation methods.', '/Image/Saturday/Matcha.png'),
(84, 'Saturday', 'Lunch', 'Monaka', 'Wagashi consisting of an azuki bean jam filling that is sandwiched between two thin mochi wafers.', '/Image/Saturday/Monaka.png'),
(85, 'Saturday', 'Dinner', 'Tsukune yakitori', 'Subtly sweet combination of sauce while the meat can be enriched with various spice and seasoning.', '/Image/Saturday/Tsukune.png'),
(86, 'Saturday', 'Dinner', 'Nimono', 'Vegetables simmered in broth, a popular way to eat vegetables in japan.', '/Image/Saturday/Nimono.png'),
(87, 'Saturday', 'Dinner', 'Tataki', 'Meat that is briefly seared and left raw in the middle.\r\n', '/Image/Saturday/Tataki.png'),
(88, 'Saturday', 'Dinner', 'YakiUdon  ', 'Employ a wide variety of sliced vegetables  and meat which are all shortly fried, mixed with the thick udon noodles and doused in a fragrant sauce. ', '/Image/Saturday/Yaki-udon.png'),
(89, 'Saturday', 'Dinner', 'Umeshu', 'A Japanese liqueur made by macerating sugar and ume plums (Prunus mume) in alcohol.', '/Image/Saturday/Umeshu.png'),
(90, 'Saturday', 'Dinner', 'Taiyaki', 'A snack made from flour and filled with azuki sweet bean paste.', '/Image/Saturday/Taiyaki.png'),
(91, 'Sunday', 'Breakfast', 'English Breakfast Tea', 'Traditionally blend of black teas originating from Assam, Ceylon and Kenya.\r\n', '/Image/Sunday/English_breakfast.png'),
(92, 'Sunday', 'Breakfast', 'Bread and Butter Pudding', 'Slices of bread combined with raisins, custard, and spices such as vanilla, cinnamon, and nutmeg.', '/Image/Sunday/Bread_pudding.png'),
(93, 'Sunday', 'Breakfast', 'Full English Breakfast', 'The traditional full English breakfast, includes back bacon, sausages, eggs, grilled tomatoes, fried mushrooms and fried bread.', '/Image/Sunday/Full_english_breakfast.png'),
(94, 'Sunday', 'Lunch', 'Cucumber Sandwich', 'A concoction made with crustless triangles of lightly buttered white bread that is filled with paper-thin cucumber slices.\r\n', '/Image/Sunday/Cucumber_sandwich.png'),
(95, 'Sunday', 'Lunch', 'Cauliflower Cheese', 'Baked cauliflower florets doused in a sauce made from flour, milk, butter, nutmeg, and cheddar.\r\n', '/Image/Sunday/Cauliflower_cheese.png'),
(96, 'Sunday', 'Lunch', 'Welsh Onion Cake', 'Made with layers of thinly sliced potatoes and soft onions topped with bits of butter and baked until sticky and golden.', '/Image/Sunday/Welsh_onion_cake.png'),
(97, 'Sunday', 'Lunch', 'Lancashire Hotpot', 'Consists of lamb or mutton and onion, topped with sliced potatoes and baked in a heavy pot on a low heat.\r\n', '/Image/Sunday/Lancashire_hotpot.png'),
(98, 'Sunday', 'Lunch', 'Earl Grey Tea', 'A tea blend which has been flavoured with oil of bergamot.', '/Image/Sunday/Earl_grey.png'),
(99, 'Sunday', 'Lunch', 'Lemon Drizzle Cake', 'A traditional British spongecake that is drizzled with sweet and sour lemon sauce on top. ', '/Image/Sunday/Lemon_cake.png'),
(100, 'Sunday', 'Dinner', 'Sausage Rolls', 'British sausage meat that\'s wrapped in puff pastry and baked.\r\n', '/Image/Sunday/Sausage_rolls.png'),
(101, 'Sunday', 'Dinner', 'Caesar Salad', 'Romaine lettuce and croutons dressed with lemon juice, olive oil, egg, Worcestershire sauce, anchovies, garlic, Dijon mustard, Parmesan cheese, and black pepper.\r\n', '/Image/Sunday/Caesar_salad.png'),
(102, 'Sunday', 'Dinner', 'Scotch eggs', 'Hard-boiled eggs that are encased in sausage meat and coated in breadcrumbs. ', '/Image/Sunday/Scotch_eggs.png'),
(103, 'Sunday', 'Dinner', 'Fish and Chips', 'A dish consisting of freshly fried fish fillets and sliced fried potatoes. The fish is dipped in a batter of eggs, flour, and milk, then fried in oil.', '/Image/Sunday/Fish_and_chips.png'),
(104, 'Sunday', 'Dinner', 'Ale', 'Beer brewed using a warm fermentation method, resulting in a sweet, full-bodied and fruity taste.', '/Image/Sunday/Ale.png'),
(105, 'Sunday', 'Dinner', 'Banoffee Pie', 'English dessert made with cream, bananas, and toffee on top of a pastry shell or on top of a base made with crumbled biscuits.', '/Image/Sunday/Banoffee_pie.png');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `reservation_name` varchar(255) NOT NULL,
  `active_phone_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `meal_plans` int(11) NOT NULL,
  `orders_amount` int(11) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `username`, `reservation_name`, `active_phone_number`, `address`, `date`, `meal_plans`, `orders_amount`, `price`) VALUES
(1, 'Nicholas123', 'Nicholas', '0800-0000-0001', 'Jln Beruang', '2022-11-21', 2, 3, '$75'),
(2, 'Nicholas123', 'Niko', '0800-0000-0002', 'Jln. Beruang', '2022-11-18', 3, 3, '$75'),
(3, 'Nicholas123', 'Saputra', '0800-0000-0003', 'Jln Adam Malik', '2022-11-09', 1, 3, '$45'),
(4, 'Nicholas123', 'Nich', '0800-0000-0005', 'Jln Beruang', '2022-11-18', 2, 1, '$25'),
(5, 'Nicholas123', 'NSL', '0800-0000-0006', 'Jln Pasar', '2022-11-17', 3, 2, '$50'),
(6, 'Nicholas123', 'NSL', '0800-0000-0009', 'Jln. Beruang', '2022-11-22', 3, 3, '$75'),
(7, 'Nicholas123', 'Liemawan', '0800-0000-0010', 'Jln Delman', '2022-11-15', 1, 3, '$45'),
(8, 'Nicholas123', 'Liemawan', '0800-0000-0011', 'Jln Beruang', '2022-11-14', 2, 3, '$75'),
(9, 'Nicholas123', 'Sap', '0800-0000-0100', 'Jln Multatuli', '2022-11-16', 3, 5, '$125'),
(10, 'Nicholas123', 'Cheris', '0900-0000-0010', 'Jln Almond', '2022-11-21', 3, 3, '$75'),
(11, 'Cheris123', 'Cheris', '0800-0000-0015', 'Jln Singa', '2022-11-22', 3, 3, '$75');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`username`, `password`) VALUES
('Andi123', 'PasswordAndi'),
('Budi123', 'PasswordBudi'),
('Cheris123', 'PasswordCheris'),
('Nicholas123', 'PasswordNicholas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
