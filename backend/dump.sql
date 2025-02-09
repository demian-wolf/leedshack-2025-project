BEGIN TRANSACTION;
CREATE TABLE allergen (
	id INTEGER NOT NULL, 
	name VARCHAR(255) NOT NULL, 
	PRIMARY KEY (id)
);
CREATE TABLE area (
	id INTEGER NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (name)
);
INSERT INTO "area" VALUES(1,'American');
INSERT INTO "area" VALUES(2,'British');
INSERT INTO "area" VALUES(3,'Canadian');
INSERT INTO "area" VALUES(4,'Chinese');
INSERT INTO "area" VALUES(5,'Croatian');
INSERT INTO "area" VALUES(6,'Dutch');
INSERT INTO "area" VALUES(7,'Egyptian');
INSERT INTO "area" VALUES(8,'Filipino');
INSERT INTO "area" VALUES(9,'French');
INSERT INTO "area" VALUES(10,'Greek');
INSERT INTO "area" VALUES(11,'Indian');
INSERT INTO "area" VALUES(12,'Irish');
INSERT INTO "area" VALUES(13,'Italian');
INSERT INTO "area" VALUES(14,'Jamaican');
INSERT INTO "area" VALUES(15,'Japanese');
INSERT INTO "area" VALUES(16,'Kenyan');
INSERT INTO "area" VALUES(17,'Malaysian');
INSERT INTO "area" VALUES(18,'Mexican');
INSERT INTO "area" VALUES(19,'Moroccan');
INSERT INTO "area" VALUES(20,'Polish');
INSERT INTO "area" VALUES(21,'Portuguese');
INSERT INTO "area" VALUES(22,'Russian');
INSERT INTO "area" VALUES(23,'Spanish');
INSERT INTO "area" VALUES(24,'Thai');
INSERT INTO "area" VALUES(25,'Tunisian');
INSERT INTO "area" VALUES(26,'Turkish');
INSERT INTO "area" VALUES(27,'Ukrainian');
INSERT INTO "area" VALUES(28,'Unknown');
INSERT INTO "area" VALUES(29,'Vietnamese');
CREATE TABLE black_listed_token (
	id INTEGER NOT NULL, 
	token VARCHAR(500) NOT NULL, 
	created_at DATETIME, 
	PRIMARY KEY (id), 
	UNIQUE (token)
);
CREATE TABLE category (
	id INTEGER NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	thumbnail VARCHAR(255), 
	description TEXT, 
	PRIMARY KEY (id), 
	UNIQUE (name)
);
INSERT INTO "category" VALUES(1,'Beef','https://www.themealdb.com/images/category/beef.png','Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]');
INSERT INTO "category" VALUES(2,'Chicken','https://www.themealdb.com/images/category/chicken.png','Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as a source of food (consuming both their meat and eggs) and, more rarely, as pets.');
INSERT INTO "category" VALUES(3,'Dessert','https://www.themealdb.com/images/category/dessert.png','Dessert is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur, however in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere. In some parts of the world, such as much of central and western Africa, and most parts of China, there is no tradition of a dessert course to conclude a meal.

The term dessert can apply to many confections, such as biscuits, cakes, cookies, custards, gelatins, ice creams, pastries, pies, puddings, and sweet soups, and tarts. Fruit is also commonly found in dessert courses because of its naturally occurring sweetness. Some cultures sweeten foods that are more commonly savory to create desserts.');
INSERT INTO "category" VALUES(4,'Lamb','https://www.themealdb.com/images/category/lamb.png','Lamb, hogget, and mutton are the meat of domestic sheep (species Ovis aries) at different ages.

A sheep in its first year is called a lamb, and its meat is also called lamb. The meat of a juvenile sheep older than one year is hogget; outside the USA this is also a term for the living animal. The meat of an adult sheep is mutton, a term only used for the meat, not the living animals. The term mutton is almost always used to refer to goat meat in the Indian subcontinent.

');
INSERT INTO "category" VALUES(5,'Miscellaneous','https://www.themealdb.com/images/category/miscellaneous.png','General foods that don''t fit into another category');
INSERT INTO "category" VALUES(6,'Pasta','https://www.themealdb.com/images/category/pasta.png','Pasta is a staple food of traditional Italian cuisine, with the first reference dating to 1154 in Sicily.

Also commonly used to refer to the variety of pasta dishes, pasta is typically a noodle made from an unleavened dough of a durum wheat flour mixed with water or eggs and formed into sheets or various shapes, then cooked by boiling or baking. As an alternative for those wanting a different taste, or who need to avoid products containing gluten, some pastas can be made using rice flour in place of wheat.[3][4] Pastas may be divided into two broad categories, dried (pasta secca) and fresh (pasta fresca).');
INSERT INTO "category" VALUES(7,'Pork','https://www.themealdb.com/images/category/pork.png','Pork is the culinary name for meat from a domestic pig (Sus scrofa domesticus). It is the most commonly consumed meat worldwide,[1] with evidence of pig husbandry dating back to 5000 BC. Pork is eaten both freshly cooked and preserved. Curing extends the shelf life of the pork products. Ham, smoked pork, gammon, bacon and sausage are examples of preserved pork. Charcuterie is the branch of cooking devoted to prepared meat products, many from pork.

Pork is the most popular meat in Eastern and Southeastern Asia, and is also very common in the Western world, especially in Central Europe. It is highly prized in Asian cuisines for its fat content and pleasant texture. Consumption of pork is forbidden by Jewish and Muslim dietary law, a taboo that is deeply rooted in tradition, with several suggested possible causes. The sale of pork is limited in Israel and illegal in certain Muslim countries.');
INSERT INTO "category" VALUES(8,'Seafood','https://www.themealdb.com/images/category/seafood.png','Seafood is any form of sea life regarded as food by humans. Seafood prominently includes fish and shellfish. Shellfish include various species of molluscs, crustaceans, and echinoderms. Historically, sea mammals such as whales and dolphins have been consumed as food, though that happens to a lesser extent in modern times. Edible sea plants, such as some seaweeds and microalgae, are widely eaten as seafood around the world, especially in Asia (see the category of sea vegetables). In North America, although not generally in the United Kingdom, the term "seafood" is extended to fresh water organisms eaten by humans, so all edible aquatic life may be referred to as seafood. For the sake of completeness, this article includes all edible aquatic life.');
INSERT INTO "category" VALUES(9,'Side','https://www.themealdb.com/images/category/side.png','A side dish, sometimes referred to as a side order, side item, or simply a side, is a food item that accompanies the entrée or main course at a meal. Side dishes such as salad, potatoes and bread are commonly used with main courses throughout many countries of the western world. New side orders introduced within the past decade[citation needed], such as rice and couscous, have grown to be quite popular throughout Europe, especially at formal occasions (with couscous appearing more commonly at dinner parties with Middle Eastern dishes).');
INSERT INTO "category" VALUES(10,'Starter','https://www.themealdb.com/images/category/starter.png','An entrée in modern French table service and that of much of the English-speaking world (apart from the United States and parts of Canada) is a dish served before the main course of a meal; it may be the first dish served, or it may follow a soup or other small dish or dishes. In the United States and parts of Canada, an entrée is the main dish or the only dish of a meal.

Historically, the entrée was one of the stages of the “Classical Order” of formal French table service of the 18th and 19th centuries. It formed a part of the “first service” of the meal, which consisted of potage, hors d’œuvre, and entrée (including the bouilli and relevé). The “second service” consisted of roast (rôti), salad, and entremets (the entremets sometimes being separated into a “third service” of their own). The final service consisted only of dessert.[3]:3–11 :13–25');
INSERT INTO "category" VALUES(11,'Vegan','https://www.themealdb.com/images/category/vegan.png','Veganism is both the practice of abstaining from the use of animal products, particularly in diet, and an associated philosophy that rejects the commodity status of animals.[b] A follower of either the diet or the philosophy is known as a vegan (pronounced /ˈviːɡən/ VEE-gən). Distinctions are sometimes made between several categories of veganism. Dietary vegans (or strict vegetarians) refrain from consuming animal products, not only meat but also eggs, dairy products and other animal-derived substances.[c] The term ethical vegan is often applied to those who not only follow a vegan diet but extend the philosophy into other areas of their lives, and oppose the use of animals for any purpose.[d] Another term is environmental veganism, which refers to the avoidance of animal products on the premise that the harvesting or industrial farming of animals is environmentally damaging and unsustainable.');
INSERT INTO "category" VALUES(12,'Vegetarian','https://www.themealdb.com/images/category/vegetarian.png','Vegetarianism is the practice of abstaining from the consumption of meat (red meat, poultry, seafood, and the flesh of any other animal), and may also include abstention from by-products of animal slaughter.

Vegetarianism may be adopted for various reasons. Many people object to eating meat out of respect for sentient life. Such ethical motivations have been codified under various religious beliefs, as well as animal rights advocacy. Other motivations for vegetarianism are health-related, political, environmental, cultural, aesthetic, economic, or personal preference. There are variations of the diet as well: an ovo-lacto vegetarian diet includes both eggs and dairy products, an ovo-vegetarian diet includes eggs but not dairy products, and a lacto-vegetarian diet includes dairy products but not eggs. A vegan diet excludes all animal products, including eggs and dairy. Some vegans also avoid other animal products such as beeswax, leather or silk clothing, and goose-fat shoe polish.');
INSERT INTO "category" VALUES(13,'Breakfast','https://www.themealdb.com/images/category/breakfast.png','Breakfast is the first meal of a day. The word in English refers to breaking the fasting period of the previous night. There is a strong likelihood for one or more "typical", or "traditional", breakfast menus to exist in most places, but their composition varies widely from place to place, and has varied over time, so that globally a very wide range of preparations and ingredients are now associated with breakfast.');
INSERT INTO "category" VALUES(14,'Goat','https://www.themealdb.com/images/category/goat.png','The domestic goat or simply goat (Capra aegagrus hircus) is a subspecies of C. aegagrus domesticated from the wild goat of Southwest Asia and Eastern Europe. The goat is a member of the animal family Bovidae and the subfamily Caprinae, meaning it is closely related to the sheep. There are over 300 distinct breeds of goat. Goats are one of the oldest domesticated species of animal, and have been used for milk, meat, fur and skins across much of the world. Milk from goats is often turned into goat cheese.');
CREATE TABLE ingredient (
	id INTEGER NOT NULL, 
	name VARCHAR(100) NOT NULL, 
	description TEXT, 
	PRIMARY KEY (id), 
	UNIQUE (name)
);
INSERT INTO "ingredient" VALUES(1,'Chicken','The chicken is a type of domesticated fowl, a subspecies of the red junglefowl (Gallus gallus). It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011. There are more chickens in the world than any other bird or domesticated fowl. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) and, less commonly, as pets. Originally raised for cockfighting or for special ceremonies, chickens were not kept for food until the Hellenistic period (4th–2nd centuries BC).

Genetic studies have pointed to multiple maternal origins in South Asia, Southeast Asia, and East Asia, but with the clade found in the Americas, Europe, the Middle East and Africa originating in the Indian subcontinent. From ancient India, the domesticated chicken spread to Lydia in western Asia Minor, and to Greece by the 5th century BC. Fowl had been known in Egypt since the mid-15th century BC, with the "bird that gives birth every day" having come to Egypt from the land between Syria and Shinar, Babylonia, according to the annals of Thutmose III.');
INSERT INTO "ingredient" VALUES(2,'Salmon','Salmon is the common name for several species of ray-finned fish in the family Salmonidae. Other fish in the same family include trout, char, grayling and whitefish. Salmon are native to tributaries of the North Atlantic (genus Salmo) and Pacific Ocean (genus Oncorhynchus). Many species of salmon have been introduced into non-native environments such as the Great Lakes of North America and Patagonia in South America. Salmon are intensively farmed in many parts of the world.

Typically, salmon are anadromous: they hatch in fresh water, migrate to the ocean, then return to fresh water to reproduce. However, populations of several species are restricted to fresh water through their lives. Folklore has it that the fish return to the exact spot where they hatched to spawn. Tracking studies have shown this to be mostly true. A portion of a returning salmon run may stray and spawn in different freshwater systems; the percent of straying depends on the species of salmon. Homing behavior has been shown to depend on olfactory memory. Salmon date back to the Neogene.');
INSERT INTO "ingredient" VALUES(3,'Beef','Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.

Most beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.');
INSERT INTO "ingredient" VALUES(4,'Pork','Pork is the culinary name for the flesh of a domestic pig (Sus scrofa domesticus). It is the most commonly consumed meat worldwide,[1] with evidence of pig husbandry dating back to 5000 BC.

Pork is eaten both freshly cooked and preserved. Curing extends the shelf life of the pork products. Ham, smoked pork, gammon, bacon and sausage are examples of preserved pork. Charcuterie is the branch of cooking devoted to prepared meat products, many from pork.

Pig is the most popular meat in the Eastern and non-Muslim parts of Southeastern Asia (Indochina, Philippines, Singapore, East Timor) and is also very common in the Western world, especially in Central Europe. It is highly prized in Asian cuisines for its fat content and pleasant texture. Consumption of pork is forbidden by Jewish, Muslim and Rastafarian dietary law, for religious reasons, with several suggested possible causes.');
INSERT INTO "ingredient" VALUES(5,'Avocado','The avocado, a tree with probable origin in South Central Mexico, is classified as a member of the flowering plant family Lauraceae. The fruit of the plant, also called an avocado (or avocado pear or alligator pear), is botanically a large berry containing a single large seed.

Avocados are commercially valuable and are cultivated in tropical and Mediterranean climates throughout the world. They have a green-skinned, fleshy body that may be pear-shaped, egg-shaped, or spherical. Commercially, they ripen after harvesting. Avocado trees are partially self-pollinating, and are often propagated through grafting to maintain predictable fruit quality and quantity. In 2017, Mexico produced 34% of the world supply of avocados.');
INSERT INTO "ingredient" VALUES(6,'Apple Cider Vinegar','Apple cider vinegar, or cider vinegar, is a vinegar made from fermented apple juice, and used in salad dressings, marinades, vinaigrettes, food preservatives, and chutneys. It is made by crushing apples, then squeezing out the juice. Bacteria and yeast are added to the liquid to start the alcoholic fermentation process, which converts the sugars to alcohol. In a second fermentation step, the alcohol is converted into vinegar by acetic acid-forming bacteria (Acetobacter species). Acetic acid and malic acid combine to give vinegar its sour taste. Apple cider vinegar has no medicinal or nutritional value. There is no high-quality clinical evidence that regular consumption of apple cider vinegar helps to maintain or lose body weight, or is effective to manage blood glucose and lipid levels.');
INSERT INTO "ingredient" VALUES(7,'Asparagus','Asparagus, or garden asparagus, folk name sparrow grass, scientific name Asparagus officinalis, is a perennial flowering plant species in the genus Asparagus. Its young shoots are used as a spring vegetable.

It was once classified in the lily family, like the related Allium species, onions and garlic. However, genetic research places lilies, Allium, and asparagus in three separate families—the Liliaceae, Amaryllidaceae, and Asparagaceae, respectively—with the Amaryllidaceae and Asparagaceae being grouped together in the order Asparagales. Sources differ as to the native range of Asparagus officinalis, but generally include most of Europe and western temperate Asia. It is widely cultivated as a vegetable crop.');
INSERT INTO "ingredient" VALUES(8,'Aubergine','Eggplant (US, Australia), aubergine (UK), or brinjal (South Asia and South Africa) is a plant species in the nightshade family Solanaceae. Solanum melongena is grown worldwide for its edible fruit.

Most commonly purple, the spongy, absorbent fruit is used in various cuisines. Although often considered a vegetable, it is a berry by botanical definition. As a member of the genus Solanum, it is related to tomato and potato. Like the tomato, its skin and seeds can be eaten, but, like the potato, it is usually eaten cooked. Eggplant is nutritionally low in macronutrient and micronutrient content, but the capability of the fruit to absorb oils and flavors into its flesh through cooking expands its use in the culinary arts.

It was originally domesticated from the wild nightshade species thorn or bitter apple, S. incanum, probably with two independent domestications: one in South Asia, and one in East Asia.');
INSERT INTO "ingredient" VALUES(9,'Baby Plum Tomatoes','The tomato is the edible, often red, berry of the plant Solanum lycopersicum, commonly known as a tomato plant. The species originated in western South America and Central America. The Nahuatl (Aztec language) word tomatl gave rise to the Spanish word tomate, from which the English word tomato derived.[3][4] Its domestication and use as a cultivated food may have originated with the indigenous peoples of Mexico. The Aztecs used tomatoes in their cooking at the time of the Spanish conquest of the Aztec Empire, and after the Spanish encountered the tomato for the first time after their contact with the Aztecs, they brought the plant to Europe. From there, the tomato was introduced to other parts of the European-colonized world during the 16th century.');
INSERT INTO "ingredient" VALUES(10,'Bacon','Bacon is a type of salt-cured pork. Bacon is prepared from several different cuts of meat, typically from the pork belly or from back cuts, which have less fat than the belly. It is eaten on its own, as a side dish (particularly in breakfasts), or used as a minor ingredient to flavour dishes (e.g., the club sandwich). Bacon is also used for barding and larding roasts, especially game, including venison and pheasant. The word is derived from the Old High German bacho, meaning "buttock", "ham" or "side of bacon", and is cognate with the Old French bacon.');
INSERT INTO "ingredient" VALUES(11,'Baking Powder','Baking powder is a dry chemical leavening agent, a mixture of a carbonate or bicarbonate and a weak acid. The base and acid are prevented from reacting prematurely by the inclusion of a buffer such as cornstarch. Baking powder is used to increase the volume and lighten the texture of baked goods. It works by releasing carbon dioxide gas into a batter or dough through an acid-base reaction, causing bubbles in the wet mixture to expand and thus leavening the mixture. The first single-acting baking powder was developed by Birmingham based food manufacturer Alfred Bird in England in 1843. The first double-acting baking powder was developed by Eben Norton Horsford in America in the 1860s.');
INSERT INTO "ingredient" VALUES(12,'Balsamic Vinegar','Balsamic vinegar (Italian: aceto balsamico), occasionally shortened to balsamic, is a very dark, concentrated, and intensely flavoured vinegar originating in Italy, made wholly or partially from grape must. Grape must is freshly crushed grape juice with all the skins, seeds and stems.');
INSERT INTO "ingredient" VALUES(13,'Basil','Basil, also called great basil, is a culinary herb of the family Lamiaceae (mints).

Basil is native to tropical regions from central Africa to Southeast Asia. It is a tender plant, and is used in cuisines worldwide. Depending on the species and cultivar, the leaves may taste somewhat like anise, with a strong, pungent, often sweet smell.');
INSERT INTO "ingredient" VALUES(14,'Basil Leaves','Basil, also called great basil, is a culinary herb of the family Lamiaceae (mints).
');
INSERT INTO "ingredient" VALUES(15,'Basmati Rice','Basmati is a variety of long, slender-grained aromatic rice which is traditionally from the Indian subcontinent. As of 2018-19, India exported to over 90% of the overseas basmati rice market, while Pakistan accounted for the remainder, according to the Indian state-run Agricultural and Processed Food Products Export Development Authority  and the Pakistan government-run Economic Survey of Pakistan. Many countries use domestically grown basmati rice crops; however, basmati is geographically exclusive to select districts of India, Pakistan, Nepal and Bangladesh.');
INSERT INTO "ingredient" VALUES(16,'Bay Leaf','The bay leaf is an aromatic leaf commonly used in cooking. It can be used whole, or as dried and ground.');
INSERT INTO "ingredient" VALUES(17,'Bay Leaves','The bay leaf is an aromatic leaf commonly used in cooking. It can be used whole, or as dried and ground.');
INSERT INTO "ingredient" VALUES(18,'Beef Brisket','Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.

Most beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.');
INSERT INTO "ingredient" VALUES(19,'Beef Fillet','Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.

Most beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.');
INSERT INTO "ingredient" VALUES(20,'Beef Gravy','Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.

Most beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.');
INSERT INTO "ingredient" VALUES(21,'Beef Stock','Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times. Beef is a source of high-quality protein and nutrients.

Most beef skeletal muscle meat can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak (filet mignon, sirloin steak, rump steak, rib steak, rib eye steak, hanger steak, etc.), while other cuts are processed (corned beef or beef jerky). Trimmings, on the other hand, are usually mixed with meat from older, leaner (therefore tougher) cattle, are ground, minced or used in sausages. The blood is used in some varieties called blood sausage. Other parts that are eaten include other muscles and offal, such as the oxtail, liver, tongue, tripe from the reticulum or rumen, glands (particularly the pancreas and thymus, referred to as sweetbread), the heart, the brain (although forbidden where there is a danger of bovine spongiform encephalopathy, BSE, commonly referred to as mad cow disease), the kidneys, and the tender testicles of the bull (known in the United States as calf fries, prairie oysters, or Rocky Mountain oysters). Some intestines are cooked and eaten as is, but are more often cleaned and used as natural sausage casings. The bones are used for making beef stock.');
INSERT INTO "ingredient" VALUES(22,'Bicarbonate Of Soda','Sodium bicarbonate, commonly known as baking soda, is a chemical compound with the formula NaHCO3. It is a salt composed of a sodium cation (Na+) and a bicarbonate anion (HCO3−). Sodium bicarbonate is a white solid that is crystalline, but often appears as a fine powder. It has a slightly salty, alkaline taste resembling that of washing soda (sodium carbonate). The natural mineral form is nahcolite. It is a component of the mineral natron and is found dissolved in many mineral springs.');
INSERT INTO "ingredient" VALUES(23,'Biryani Masala','Biryani, also known as biriyani, biriani, birani or briyani, is a mixed rice dish with its origins among the Muslims of the Indian subcontinent. It can be compared to mixing a curry, later combining it with semi-cooked rice separately. This dish is especially popular throughout the Indian subcontinent, as well as among the diaspora from the region. It is also prepared in other regions such as Iraqi Kurdistan. It is made with Indian spices, rice, meat (chicken, goat, beef, lamb, prawn, or fish), vegetables or eggs.');
INSERT INTO "ingredient" VALUES(24,'Black Pepper','Black pepper (Piper nigrum) is a flowering vine in the family Piperaceae, cultivated for its fruit, known as a peppercorn, which is usually dried and used as a spice and seasoning. When fresh and fully mature, it is about 5 mm (0.20 in) in diameter and dark red, and contains a single seed, like all drupes. Peppercorns and the ground pepper derived from them may be described simply as pepper, or more precisely as black pepper (cooked and dried unripe fruit), green pepper (dried unripe fruit), or white pepper (ripe fruit seeds).

Black pepper is native to present-day Kerala in Southwestern India, and is extensively cultivated there and elsewhere in tropical regions. Vietnam is the world''s largest producer and exporter of pepper, producing 34% of the world''s crop, as of 2013.');
INSERT INTO "ingredient" VALUES(25,'Black Treacle','Molasses (American English) or black treacle (British English) is a viscous product resulting from refining sugarcane or sugar beets into sugar. Molasses varies by amount of sugar, method of extraction, and age of plant. Sugarcane molasses is primarily used for sweetening and flavoring foods in the United States, Canada, and elsewhere. Molasses is a defining component of fine commercial brown sugar.

Sweet sorghum syrup may be colloquially called "sorghum molasses" in the southern United States.[2][3] Similar products include honey, maple syrup, corn syrup, and invert syrup. Most of these alternative syrups have milder flavors.');
INSERT INTO "ingredient" VALUES(26,'Borlotti Beans',NULL);
INSERT INTO "ingredient" VALUES(27,'Bowtie Pasta',NULL);
INSERT INTO "ingredient" VALUES(28,'Bramley Apples',NULL);
INSERT INTO "ingredient" VALUES(29,'Brandy',NULL);
INSERT INTO "ingredient" VALUES(30,'Bread',NULL);
INSERT INTO "ingredient" VALUES(31,'Breadcrumbs',NULL);
INSERT INTO "ingredient" VALUES(32,'Broccoli',NULL);
INSERT INTO "ingredient" VALUES(33,'Brown Lentils',NULL);
INSERT INTO "ingredient" VALUES(34,'Brown Rice',NULL);
INSERT INTO "ingredient" VALUES(35,'Brown Sugar',NULL);
INSERT INTO "ingredient" VALUES(36,'Butter',NULL);
INSERT INTO "ingredient" VALUES(37,'Cacao',NULL);
INSERT INTO "ingredient" VALUES(38,'Cajun',NULL);
INSERT INTO "ingredient" VALUES(39,'Canned Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(40,'Cannellini Beans',NULL);
INSERT INTO "ingredient" VALUES(41,'Cardamom',NULL);
INSERT INTO "ingredient" VALUES(42,'Carrots',NULL);
INSERT INTO "ingredient" VALUES(43,'Cashew Nuts',NULL);
INSERT INTO "ingredient" VALUES(44,'Cashews',NULL);
INSERT INTO "ingredient" VALUES(45,'Caster Sugar',NULL);
INSERT INTO "ingredient" VALUES(46,'Cayenne Pepper',NULL);
INSERT INTO "ingredient" VALUES(47,'Celeriac',NULL);
INSERT INTO "ingredient" VALUES(48,'Celery',NULL);
INSERT INTO "ingredient" VALUES(49,'Celery Salt',NULL);
INSERT INTO "ingredient" VALUES(50,'Challots',NULL);
INSERT INTO "ingredient" VALUES(51,'Charlotte Potatoes',NULL);
INSERT INTO "ingredient" VALUES(52,'Cheddar Cheese',NULL);
INSERT INTO "ingredient" VALUES(53,'Cheese',NULL);
INSERT INTO "ingredient" VALUES(54,'Cheese Curds',NULL);
INSERT INTO "ingredient" VALUES(55,'Cherry Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(56,'Chestnut Mushroom',NULL);
INSERT INTO "ingredient" VALUES(57,'Chicken Breast',NULL);
INSERT INTO "ingredient" VALUES(58,'Chicken Breasts',NULL);
INSERT INTO "ingredient" VALUES(59,'Chicken Legs',NULL);
INSERT INTO "ingredient" VALUES(60,'Chicken Stock',NULL);
INSERT INTO "ingredient" VALUES(61,'Chicken Thighs',NULL);
INSERT INTO "ingredient" VALUES(62,'Chickpeas',NULL);
INSERT INTO "ingredient" VALUES(63,'Chili Powder',NULL);
INSERT INTO "ingredient" VALUES(64,'Chilled Butter',NULL);
INSERT INTO "ingredient" VALUES(65,'Chilli',NULL);
INSERT INTO "ingredient" VALUES(66,'Chilli Powder',NULL);
INSERT INTO "ingredient" VALUES(67,'Chinese Broccoli',NULL);
INSERT INTO "ingredient" VALUES(68,'Chocolate Chips',NULL);
INSERT INTO "ingredient" VALUES(69,'Chopped Onion',NULL);
INSERT INTO "ingredient" VALUES(70,'Chopped Parsley',NULL);
INSERT INTO "ingredient" VALUES(71,'Chopped Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(72,'Chorizo',NULL);
INSERT INTO "ingredient" VALUES(73,'Christmas Pudding',NULL);
INSERT INTO "ingredient" VALUES(74,'Cilantro',NULL);
INSERT INTO "ingredient" VALUES(75,'Cinnamon',NULL);
INSERT INTO "ingredient" VALUES(76,'Cinnamon Stick',NULL);
INSERT INTO "ingredient" VALUES(77,'Cloves',NULL);
INSERT INTO "ingredient" VALUES(78,'Coco Sugar',NULL);
INSERT INTO "ingredient" VALUES(79,'Cocoa',NULL);
INSERT INTO "ingredient" VALUES(80,'Coconut Cream',NULL);
INSERT INTO "ingredient" VALUES(81,'Coconut Milk',NULL);
INSERT INTO "ingredient" VALUES(82,'Colby Jack Cheese',NULL);
INSERT INTO "ingredient" VALUES(83,'Cold Water',NULL);
INSERT INTO "ingredient" VALUES(84,'Condensed Milk',NULL);
INSERT INTO "ingredient" VALUES(85,'Coriander',NULL);
INSERT INTO "ingredient" VALUES(86,'Coriander Leaves',NULL);
INSERT INTO "ingredient" VALUES(87,'Coriander Seeds',NULL);
INSERT INTO "ingredient" VALUES(88,'Corn Tortillas',NULL);
INSERT INTO "ingredient" VALUES(89,'Cornstarch',NULL);
INSERT INTO "ingredient" VALUES(90,'Cream',NULL);
INSERT INTO "ingredient" VALUES(91,'Creme Fraiche',NULL);
INSERT INTO "ingredient" VALUES(92,'Cubed Feta Cheese',NULL);
INSERT INTO "ingredient" VALUES(93,'Cucumber',NULL);
INSERT INTO "ingredient" VALUES(94,'Cumin',NULL);
INSERT INTO "ingredient" VALUES(95,'Cumin Seeds',NULL);
INSERT INTO "ingredient" VALUES(96,'Curry Powder',NULL);
INSERT INTO "ingredient" VALUES(97,'Dark Brown Sugar',NULL);
INSERT INTO "ingredient" VALUES(98,'Dark Soft Brown Sugar',NULL);
INSERT INTO "ingredient" VALUES(99,'Dark Soy Sauce',NULL);
INSERT INTO "ingredient" VALUES(100,'Demerara Sugar',NULL);
INSERT INTO "ingredient" VALUES(101,'Diced Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(102,'Digestive Biscuits',NULL);
INSERT INTO "ingredient" VALUES(103,'Dill',NULL);
INSERT INTO "ingredient" VALUES(104,'Doner Meat',NULL);
INSERT INTO "ingredient" VALUES(105,'Double Cream',NULL);
INSERT INTO "ingredient" VALUES(106,'Dried Oregano',NULL);
INSERT INTO "ingredient" VALUES(107,'Dry White Wine',NULL);
INSERT INTO "ingredient" VALUES(108,'Egg Plants',NULL);
INSERT INTO "ingredient" VALUES(109,'Egg Rolls',NULL);
INSERT INTO "ingredient" VALUES(110,'Egg White',NULL);
INSERT INTO "ingredient" VALUES(111,'Egg Yolks',NULL);
INSERT INTO "ingredient" VALUES(112,'Eggs',NULL);
INSERT INTO "ingredient" VALUES(113,'Enchilada Sauce',NULL);
INSERT INTO "ingredient" VALUES(114,'English Mustard',NULL);
INSERT INTO "ingredient" VALUES(115,'Extra Virgin Olive Oil',NULL);
INSERT INTO "ingredient" VALUES(116,'Fajita Seasoning',NULL);
INSERT INTO "ingredient" VALUES(117,'Farfalle',NULL);
INSERT INTO "ingredient" VALUES(118,'Fennel Bulb',NULL);
INSERT INTO "ingredient" VALUES(119,'Fennel Seeds',NULL);
INSERT INTO "ingredient" VALUES(120,'Fenugreek',NULL);
INSERT INTO "ingredient" VALUES(121,'Feta',NULL);
INSERT INTO "ingredient" VALUES(122,'Fish Sauce',NULL);
INSERT INTO "ingredient" VALUES(123,'Flaked Almonds',NULL);
INSERT INTO "ingredient" VALUES(124,'Flax Eggs',NULL);
INSERT INTO "ingredient" VALUES(125,'Flour',NULL);
INSERT INTO "ingredient" VALUES(126,'Flour Tortilla',NULL);
INSERT INTO "ingredient" VALUES(127,'Floury Potatoes',NULL);
INSERT INTO "ingredient" VALUES(128,'Free-range Egg, Beaten',NULL);
INSERT INTO "ingredient" VALUES(129,'Free-range Eggs, Beaten',NULL);
INSERT INTO "ingredient" VALUES(130,'French Lentils',NULL);
INSERT INTO "ingredient" VALUES(131,'Fresh Basil',NULL);
INSERT INTO "ingredient" VALUES(132,'Fresh Thyme',NULL);
INSERT INTO "ingredient" VALUES(133,'Freshly Chopped Parsley',NULL);
INSERT INTO "ingredient" VALUES(134,'Fries',NULL);
INSERT INTO "ingredient" VALUES(135,'Full Fat Yogurt',NULL);
INSERT INTO "ingredient" VALUES(136,'Garam Masala',NULL);
INSERT INTO "ingredient" VALUES(137,'Garlic',NULL);
INSERT INTO "ingredient" VALUES(138,'Garlic Clove',NULL);
INSERT INTO "ingredient" VALUES(139,'Garlic Powder',NULL);
INSERT INTO "ingredient" VALUES(140,'Garlic Sauce',NULL);
INSERT INTO "ingredient" VALUES(141,'Ghee',NULL);
INSERT INTO "ingredient" VALUES(142,'Ginger',NULL);
INSERT INTO "ingredient" VALUES(143,'Ginger Cordial',NULL);
INSERT INTO "ingredient" VALUES(144,'Ginger Garlic Paste',NULL);
INSERT INTO "ingredient" VALUES(145,'Ginger Paste',NULL);
INSERT INTO "ingredient" VALUES(146,'Golden Syrup',NULL);
INSERT INTO "ingredient" VALUES(147,'Gouda Cheese',NULL);
INSERT INTO "ingredient" VALUES(148,'Granulated Sugar',NULL);
INSERT INTO "ingredient" VALUES(149,'Grape Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(150,'Greek Yogurt',NULL);
INSERT INTO "ingredient" VALUES(151,'Green Beans',NULL);
INSERT INTO "ingredient" VALUES(152,'Green Chilli',NULL);
INSERT INTO "ingredient" VALUES(153,'Green Olives',NULL);
INSERT INTO "ingredient" VALUES(154,'Green Red Lentils',NULL);
INSERT INTO "ingredient" VALUES(155,'Green Salsa',NULL);
INSERT INTO "ingredient" VALUES(156,'Ground Almonds',NULL);
INSERT INTO "ingredient" VALUES(157,'Ground Cumin',NULL);
INSERT INTO "ingredient" VALUES(158,'Ground Ginger',NULL);
INSERT INTO "ingredient" VALUES(159,'Gruyère',NULL);
INSERT INTO "ingredient" VALUES(160,'Hard Taco Shells',NULL);
INSERT INTO "ingredient" VALUES(161,'Harissa Spice',NULL);
INSERT INTO "ingredient" VALUES(162,'Heavy Cream',NULL);
INSERT INTO "ingredient" VALUES(163,'Honey',NULL);
INSERT INTO "ingredient" VALUES(164,'Horseradish',NULL);
INSERT INTO "ingredient" VALUES(165,'Hot Beef Stock',NULL);
INSERT INTO "ingredient" VALUES(166,'Hotsauce',NULL);
INSERT INTO "ingredient" VALUES(167,'Ice Cream',NULL);
INSERT INTO "ingredient" VALUES(168,'Italian Fennel Sausages',NULL);
INSERT INTO "ingredient" VALUES(169,'Italian Seasoning',NULL);
INSERT INTO "ingredient" VALUES(170,'Jalapeno',NULL);
INSERT INTO "ingredient" VALUES(171,'Jasmine Rice',NULL);
INSERT INTO "ingredient" VALUES(172,'Jerusalem Artichokes',NULL);
INSERT INTO "ingredient" VALUES(173,'Kale',NULL);
INSERT INTO "ingredient" VALUES(174,'Khus Khus',NULL);
INSERT INTO "ingredient" VALUES(175,'King Prawns',NULL);
INSERT INTO "ingredient" VALUES(176,'Kosher Salt',NULL);
INSERT INTO "ingredient" VALUES(177,'Lamb',NULL);
INSERT INTO "ingredient" VALUES(178,'Lamb Loin Chops',NULL);
INSERT INTO "ingredient" VALUES(179,'Lamb Mince',NULL);
INSERT INTO "ingredient" VALUES(180,'Lasagne Sheets',NULL);
INSERT INTO "ingredient" VALUES(181,'Lean Minced Beef',NULL);
INSERT INTO "ingredient" VALUES(182,'Leek',NULL);
INSERT INTO "ingredient" VALUES(183,'Lemon',NULL);
INSERT INTO "ingredient" VALUES(184,'Lemon Juice',NULL);
INSERT INTO "ingredient" VALUES(185,'Lemon Zest',NULL);
INSERT INTO "ingredient" VALUES(186,'Lemons',NULL);
INSERT INTO "ingredient" VALUES(187,'Lettuce',NULL);
INSERT INTO "ingredient" VALUES(188,'Lime',NULL);
INSERT INTO "ingredient" VALUES(189,'Little Gem Lettuce',NULL);
INSERT INTO "ingredient" VALUES(190,'Macaroni',NULL);
INSERT INTO "ingredient" VALUES(191,'Mackerel',NULL);
INSERT INTO "ingredient" VALUES(192,'Madras Paste',NULL);
INSERT INTO "ingredient" VALUES(193,'Marjoram',NULL);
INSERT INTO "ingredient" VALUES(194,'Massaman Curry Paste',NULL);
INSERT INTO "ingredient" VALUES(195,'Medjool Dates',NULL);
INSERT INTO "ingredient" VALUES(196,'Meringue Nests',NULL);
INSERT INTO "ingredient" VALUES(197,'Milk',NULL);
INSERT INTO "ingredient" VALUES(198,'Minced Garlic',NULL);
INSERT INTO "ingredient" VALUES(199,'Miniature Marshmallows',NULL);
INSERT INTO "ingredient" VALUES(200,'Mint',NULL);
INSERT INTO "ingredient" VALUES(201,'Monterey Jack Cheese',NULL);
INSERT INTO "ingredient" VALUES(202,'Mozzarella Balls',NULL);
INSERT INTO "ingredient" VALUES(203,'Muscovado Sugar',NULL);
INSERT INTO "ingredient" VALUES(204,'Mushrooms',NULL);
INSERT INTO "ingredient" VALUES(205,'Mustard',NULL);
INSERT INTO "ingredient" VALUES(206,'Mustard Powder',NULL);
INSERT INTO "ingredient" VALUES(207,'Mustard Seeds',NULL);
INSERT INTO "ingredient" VALUES(208,'Nutmeg',NULL);
INSERT INTO "ingredient" VALUES(209,'Oil',NULL);
INSERT INTO "ingredient" VALUES(210,'Olive Oil',NULL);
INSERT INTO "ingredient" VALUES(211,'Onion Salt',NULL);
INSERT INTO "ingredient" VALUES(212,'Onions',NULL);
INSERT INTO "ingredient" VALUES(213,'Orange',NULL);
INSERT INTO "ingredient" VALUES(214,'Orange Zest',NULL);
INSERT INTO "ingredient" VALUES(215,'Oregano',NULL);
INSERT INTO "ingredient" VALUES(216,'Oyster Sauce',NULL);
INSERT INTO "ingredient" VALUES(217,'Paprika',NULL);
INSERT INTO "ingredient" VALUES(218,'Parma Ham',NULL);
INSERT INTO "ingredient" VALUES(219,'Parmesan',NULL);
INSERT INTO "ingredient" VALUES(220,'Parmesan Cheese',NULL);
INSERT INTO "ingredient" VALUES(221,'Parmigiano-reggiano',NULL);
INSERT INTO "ingredient" VALUES(222,'Parsley',NULL);
INSERT INTO "ingredient" VALUES(223,'Peanut Butter',NULL);
INSERT INTO "ingredient" VALUES(224,'Peanut Oil',NULL);
INSERT INTO "ingredient" VALUES(225,'Peanuts',NULL);
INSERT INTO "ingredient" VALUES(226,'Peas',NULL);
INSERT INTO "ingredient" VALUES(227,'Pecorino',NULL);
INSERT INTO "ingredient" VALUES(228,'Penne Rigate',NULL);
INSERT INTO "ingredient" VALUES(229,'Pepper',NULL);
INSERT INTO "ingredient" VALUES(230,'Pine Nuts',NULL);
INSERT INTO "ingredient" VALUES(231,'Pitted Black Olives',NULL);
INSERT INTO "ingredient" VALUES(232,'Plain Chocolate',NULL);
INSERT INTO "ingredient" VALUES(233,'Plain Flour',NULL);
INSERT INTO "ingredient" VALUES(234,'Plum Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(235,'Potato Starch',NULL);
INSERT INTO "ingredient" VALUES(236,'Potatoes',NULL);
INSERT INTO "ingredient" VALUES(237,'Prawns',NULL);
INSERT INTO "ingredient" VALUES(238,'Puff Pastry',NULL);
INSERT INTO "ingredient" VALUES(239,'Raspberry Jam',NULL);
INSERT INTO "ingredient" VALUES(240,'Raw King Prawns',NULL);
INSERT INTO "ingredient" VALUES(241,'Red Chilli Flakes',NULL);
INSERT INTO "ingredient" VALUES(242,'Red Chilli',NULL);
INSERT INTO "ingredient" VALUES(243,'Red Chilli Powder',NULL);
INSERT INTO "ingredient" VALUES(244,'Red Onions',NULL);
INSERT INTO "ingredient" VALUES(245,'Red Pepper',NULL);
INSERT INTO "ingredient" VALUES(246,'Red Pepper Flakes',NULL);
INSERT INTO "ingredient" VALUES(247,'Red Wine',NULL);
INSERT INTO "ingredient" VALUES(248,'Refried Beans',NULL);
INSERT INTO "ingredient" VALUES(249,'Rice',NULL);
INSERT INTO "ingredient" VALUES(250,'Rice Noodles',NULL);
INSERT INTO "ingredient" VALUES(251,'Rice Stick Noodles',NULL);
INSERT INTO "ingredient" VALUES(252,'Rice Vermicelli',NULL);
INSERT INTO "ingredient" VALUES(253,'Rigatoni',NULL);
INSERT INTO "ingredient" VALUES(254,'Rocket',NULL);
INSERT INTO "ingredient" VALUES(255,'Rolled Oats',NULL);
INSERT INTO "ingredient" VALUES(256,'Saffron',NULL);
INSERT INTO "ingredient" VALUES(257,'Sage',NULL);
INSERT INTO "ingredient" VALUES(258,'Sake',NULL);
INSERT INTO "ingredient" VALUES(259,'Salsa',NULL);
INSERT INTO "ingredient" VALUES(260,'Salt',NULL);
INSERT INTO "ingredient" VALUES(261,'Salted Butter',NULL);
INSERT INTO "ingredient" VALUES(262,'Sausages',NULL);
INSERT INTO "ingredient" VALUES(263,'Sea Salt',NULL);
INSERT INTO "ingredient" VALUES(264,'Self-raising Flour',NULL);
INSERT INTO "ingredient" VALUES(265,'Semi-skimmed Milk',NULL);
INSERT INTO "ingredient" VALUES(266,'Sesame Seed',NULL);
INSERT INTO "ingredient" VALUES(267,'Shallots',NULL);
INSERT INTO "ingredient" VALUES(268,'Shredded Mexican Cheese',NULL);
INSERT INTO "ingredient" VALUES(269,'Shredded Monterey Jack Cheese',NULL);
INSERT INTO "ingredient" VALUES(270,'Small Potatoes',NULL);
INSERT INTO "ingredient" VALUES(271,'Smoked Paprika',NULL);
INSERT INTO "ingredient" VALUES(272,'Smoky Paprika',NULL);
INSERT INTO "ingredient" VALUES(273,'Sour Cream',NULL);
INSERT INTO "ingredient" VALUES(274,'Soy Sauce',NULL);
INSERT INTO "ingredient" VALUES(275,'Soya Milk',NULL);
INSERT INTO "ingredient" VALUES(276,'Spaghetti',NULL);
INSERT INTO "ingredient" VALUES(277,'Spinach',NULL);
INSERT INTO "ingredient" VALUES(278,'Spring Onions',NULL);
INSERT INTO "ingredient" VALUES(279,'Squash',NULL);
INSERT INTO "ingredient" VALUES(280,'Stir-fry Vegetables',NULL);
INSERT INTO "ingredient" VALUES(281,'Strawberries',NULL);
INSERT INTO "ingredient" VALUES(282,'Sugar',NULL);
INSERT INTO "ingredient" VALUES(283,'Sultanas',NULL);
INSERT INTO "ingredient" VALUES(284,'Sunflower Oil',NULL);
INSERT INTO "ingredient" VALUES(285,'Tamarind Ball',NULL);
INSERT INTO "ingredient" VALUES(286,'Tamarind Paste',NULL);
INSERT INTO "ingredient" VALUES(287,'Thai Fish Sauce',NULL);
INSERT INTO "ingredient" VALUES(288,'Thai Green Curry Paste',NULL);
INSERT INTO "ingredient" VALUES(289,'Thai Red Curry Paste',NULL);
INSERT INTO "ingredient" VALUES(290,'Thyme',NULL);
INSERT INTO "ingredient" VALUES(291,'Tomato Ketchup',NULL);
INSERT INTO "ingredient" VALUES(292,'Tomato Puree',NULL);
INSERT INTO "ingredient" VALUES(293,'Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(294,'Toor Dal',NULL);
INSERT INTO "ingredient" VALUES(295,'Tuna',NULL);
INSERT INTO "ingredient" VALUES(296,'Turmeric',NULL);
INSERT INTO "ingredient" VALUES(297,'Turmeric Powder',NULL);
INSERT INTO "ingredient" VALUES(298,'Turnips',NULL);
INSERT INTO "ingredient" VALUES(299,'Vanilla',NULL);
INSERT INTO "ingredient" VALUES(300,'Vanilla Extract',NULL);
INSERT INTO "ingredient" VALUES(301,'Veal',NULL);
INSERT INTO "ingredient" VALUES(302,'Vegan Butter',NULL);
INSERT INTO "ingredient" VALUES(303,'Vegetable Oil',NULL);
INSERT INTO "ingredient" VALUES(304,'Vegetable Stock',NULL);
INSERT INTO "ingredient" VALUES(305,'Vegetable Stock Cube',NULL);
INSERT INTO "ingredient" VALUES(306,'Vinaigrette Dressing',NULL);
INSERT INTO "ingredient" VALUES(307,'Vine Leaves',NULL);
INSERT INTO "ingredient" VALUES(308,'Vinegar',NULL);
INSERT INTO "ingredient" VALUES(309,'Water',NULL);
INSERT INTO "ingredient" VALUES(310,'White Chocolate Chips',NULL);
INSERT INTO "ingredient" VALUES(311,'White Fish',NULL);
INSERT INTO "ingredient" VALUES(312,'White Fish Fillets',NULL);
INSERT INTO "ingredient" VALUES(313,'White Vinegar',NULL);
INSERT INTO "ingredient" VALUES(314,'White Wine',NULL);
INSERT INTO "ingredient" VALUES(315,'Whole Milk',NULL);
INSERT INTO "ingredient" VALUES(316,'Whole Wheat',NULL);
INSERT INTO "ingredient" VALUES(317,'Wholegrain Bread',NULL);
INSERT INTO "ingredient" VALUES(318,'Worcestershire Sauce',NULL);
INSERT INTO "ingredient" VALUES(319,'Yogurt',NULL);
INSERT INTO "ingredient" VALUES(320,'Zucchini',NULL);
INSERT INTO "ingredient" VALUES(321,'Pretzels',NULL);
INSERT INTO "ingredient" VALUES(322,'Cream Cheese',NULL);
INSERT INTO "ingredient" VALUES(323,'Icing Sugar',NULL);
INSERT INTO "ingredient" VALUES(324,'Toffee Popcorn',NULL);
INSERT INTO "ingredient" VALUES(325,'Caramel',NULL);
INSERT INTO "ingredient" VALUES(326,'Caramel Sauce',NULL);
INSERT INTO "ingredient" VALUES(327,'Tagliatelle',NULL);
INSERT INTO "ingredient" VALUES(328,'Fettuccine','');
INSERT INTO "ingredient" VALUES(329,'Clotted Cream',NULL);
INSERT INTO "ingredient" VALUES(330,'Corn Flour','');
INSERT INTO "ingredient" VALUES(331,'Mussels',NULL);
INSERT INTO "ingredient" VALUES(332,'Fideo',NULL);
INSERT INTO "ingredient" VALUES(333,'Monkfish',NULL);
INSERT INTO "ingredient" VALUES(334,'Vermicelli Pasta',NULL);
INSERT INTO "ingredient" VALUES(335,'Baby Squid','');
INSERT INTO "ingredient" VALUES(336,'Squid','');
INSERT INTO "ingredient" VALUES(337,'Fish Stock','');
INSERT INTO "ingredient" VALUES(338,'Pilchards',NULL);
INSERT INTO "ingredient" VALUES(339,'Black Olives',NULL);
INSERT INTO "ingredient" VALUES(340,'Onion',NULL);
INSERT INTO "ingredient" VALUES(341,'Tomato',NULL);
INSERT INTO "ingredient" VALUES(342,'Duck',NULL);
INSERT INTO "ingredient" VALUES(343,'Duck Legs',NULL);
INSERT INTO "ingredient" VALUES(344,'Chicken Stock Cube',NULL);
INSERT INTO "ingredient" VALUES(345,'Pappardelle Pasta',NULL);
INSERT INTO "ingredient" VALUES(346,'Paccheri Pasta',NULL);
INSERT INTO "ingredient" VALUES(347,'Linguine Pasta',NULL);
INSERT INTO "ingredient" VALUES(348,'Sugar Snap Peas',NULL);
INSERT INTO "ingredient" VALUES(349,'Crusty Bread',NULL);
INSERT INTO "ingredient" VALUES(350,'Fromage Frais',NULL);
INSERT INTO "ingredient" VALUES(351,'Clams',NULL);
INSERT INTO "ingredient" VALUES(352,'Passata',NULL);
INSERT INTO "ingredient" VALUES(353,'Rapeseed Oil',NULL);
INSERT INTO "ingredient" VALUES(354,'Stilton Cheese',NULL);
INSERT INTO "ingredient" VALUES(355,'Lamb Leg',NULL);
INSERT INTO "ingredient" VALUES(356,'Lamb Shoulder',NULL);
INSERT INTO "ingredient" VALUES(357,'Apricot',NULL);
INSERT INTO "ingredient" VALUES(358,'Butternut Squash',NULL);
INSERT INTO "ingredient" VALUES(359,'Couscous',NULL);
INSERT INTO "ingredient" VALUES(360,'Minced Beef',NULL);
INSERT INTO "ingredient" VALUES(361,'Turkey Mince',NULL);
INSERT INTO "ingredient" VALUES(362,'Barbeque Sauce',NULL);
INSERT INTO "ingredient" VALUES(363,'Sweetcorn',NULL);
INSERT INTO "ingredient" VALUES(364,'Goose Fat',NULL);
INSERT INTO "ingredient" VALUES(365,'Duck Fat',NULL);
INSERT INTO "ingredient" VALUES(366,'Fennel',NULL);
INSERT INTO "ingredient" VALUES(367,'Red Wine Vinegar',NULL);
INSERT INTO "ingredient" VALUES(368,'Haricot Beans',NULL);
INSERT INTO "ingredient" VALUES(369,'Rosemary',NULL);
INSERT INTO "ingredient" VALUES(370,'Butter Beans',NULL);
INSERT INTO "ingredient" VALUES(371,'Pinto Beans',NULL);
INSERT INTO "ingredient" VALUES(372,'Tomato Sauce',NULL);
INSERT INTO "ingredient" VALUES(373,'Mascarpone',NULL);
INSERT INTO "ingredient" VALUES(374,'Mozzarella',NULL);
INSERT INTO "ingredient" VALUES(375,'Ricotta',NULL);
INSERT INTO "ingredient" VALUES(376,'Dried Apricots',NULL);
INSERT INTO "ingredient" VALUES(377,'Capers',NULL);
INSERT INTO "ingredient" VALUES(378,'Banana',NULL);
INSERT INTO "ingredient" VALUES(379,'Raspberries',NULL);
INSERT INTO "ingredient" VALUES(380,'Blueberries',NULL);
INSERT INTO "ingredient" VALUES(381,'Walnuts',NULL);
INSERT INTO "ingredient" VALUES(382,'Pecan Nuts',NULL);
INSERT INTO "ingredient" VALUES(383,'Maple Syrup',NULL);
INSERT INTO "ingredient" VALUES(384,'Light Brown Soft Sugar',NULL);
INSERT INTO "ingredient" VALUES(385,'Dark Brown Soft Sugar',NULL);
INSERT INTO "ingredient" VALUES(386,'Dark Chocolate Chips',NULL);
INSERT INTO "ingredient" VALUES(387,'Milk Chocolate',NULL);
INSERT INTO "ingredient" VALUES(388,'Dark Chocolate',NULL);
INSERT INTO "ingredient" VALUES(389,'Pumpkin',NULL);
INSERT INTO "ingredient" VALUES(390,'Shortcrust Pastry',NULL);
INSERT INTO "ingredient" VALUES(391,'Peanut Cookies',NULL);
INSERT INTO "ingredient" VALUES(392,'Gelatine Leafs',NULL);
INSERT INTO "ingredient" VALUES(393,'Peanut Brittle',NULL);
INSERT INTO "ingredient" VALUES(394,'Peaches',NULL);
INSERT INTO "ingredient" VALUES(395,'Yellow Pepper',NULL);
INSERT INTO "ingredient" VALUES(396,'Green Pepper',NULL);
INSERT INTO "ingredient" VALUES(397,'Courgettes',NULL);
INSERT INTO "ingredient" VALUES(398,'Tinned Tomatos',NULL);
INSERT INTO "ingredient" VALUES(399,'Chestnuts',NULL);
INSERT INTO "ingredient" VALUES(400,'Wild Mushrooms',NULL);
INSERT INTO "ingredient" VALUES(401,'Truffle Oil',NULL);
INSERT INTO "ingredient" VALUES(402,'Paneer',NULL);
INSERT INTO "ingredient" VALUES(403,'Naan Bread',NULL);
INSERT INTO "ingredient" VALUES(404,'Lentils',NULL);
INSERT INTO "ingredient" VALUES(405,'Roasted Vegetables',NULL);
INSERT INTO "ingredient" VALUES(406,'Kidney Beans',NULL);
INSERT INTO "ingredient" VALUES(407,'Mixed Grain',NULL);
INSERT INTO "ingredient" VALUES(408,'Tahini',NULL);
INSERT INTO "ingredient" VALUES(409,'Tortillas',NULL);
INSERT INTO "ingredient" VALUES(410,'Udon Noodles',NULL);
INSERT INTO "ingredient" VALUES(411,'Cabbage',NULL);
INSERT INTO "ingredient" VALUES(412,'Shiitake Mushrooms',NULL);
INSERT INTO "ingredient" VALUES(413,'Mirin',NULL);
INSERT INTO "ingredient" VALUES(414,'Sesame Seed Oil',NULL);
INSERT INTO "ingredient" VALUES(415,'Baguette',NULL);
INSERT INTO "ingredient" VALUES(416,'Vine Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(417,'Suet',NULL);
INSERT INTO "ingredient" VALUES(418,'Swede',NULL);
INSERT INTO "ingredient" VALUES(419,'Ham',NULL);
INSERT INTO "ingredient" VALUES(420,'Oysters',NULL);
INSERT INTO "ingredient" VALUES(421,'Stout',NULL);
INSERT INTO "ingredient" VALUES(422,'Lard',NULL);
INSERT INTO "ingredient" VALUES(423,'Lamb Kidney',NULL);
INSERT INTO "ingredient" VALUES(424,'Beef Kidney',NULL);
INSERT INTO "ingredient" VALUES(425,'Haddock',NULL);
INSERT INTO "ingredient" VALUES(426,'Smoked Haddock',NULL);
INSERT INTO "ingredient" VALUES(427,'Brussels Sprouts',NULL);
INSERT INTO "ingredient" VALUES(428,'Raisins',NULL);
INSERT INTO "ingredient" VALUES(429,'Currants',NULL);
INSERT INTO "ingredient" VALUES(430,'Custard',NULL);
INSERT INTO "ingredient" VALUES(431,'Mixed Peel',NULL);
INSERT INTO "ingredient" VALUES(432,'Redcurrants',NULL);
INSERT INTO "ingredient" VALUES(433,'Blackberries',NULL);
INSERT INTO "ingredient" VALUES(434,'Hazlenuts',NULL);
INSERT INTO "ingredient" VALUES(435,'Braeburn Apples',NULL);
INSERT INTO "ingredient" VALUES(436,'Red Food Colouring',NULL);
INSERT INTO "ingredient" VALUES(437,'Pink Food Colouring',NULL);
INSERT INTO "ingredient" VALUES(438,'Blue Food Colouring',NULL);
INSERT INTO "ingredient" VALUES(439,'Yellow Food Colouring',NULL);
INSERT INTO "ingredient" VALUES(440,'Apricot Jam',NULL);
INSERT INTO "ingredient" VALUES(441,'Marzipan',NULL);
INSERT INTO "ingredient" VALUES(442,'Almonds',NULL);
INSERT INTO "ingredient" VALUES(443,'Black Pudding',NULL);
INSERT INTO "ingredient" VALUES(444,'Baked Beans',NULL);
INSERT INTO "ingredient" VALUES(445,'White Flour',NULL);
INSERT INTO "ingredient" VALUES(446,'Yeast',NULL);
INSERT INTO "ingredient" VALUES(447,'Fruit Mix',NULL);
INSERT INTO "ingredient" VALUES(448,'Dried Fruit',NULL);
INSERT INTO "ingredient" VALUES(449,'Cherry',NULL);
INSERT INTO "ingredient" VALUES(450,'Glace Cherry',NULL);
INSERT INTO "ingredient" VALUES(451,'Treacle',NULL);
INSERT INTO "ingredient" VALUES(452,'Oatmeal',NULL);
INSERT INTO "ingredient" VALUES(453,'Oats',NULL);
INSERT INTO "ingredient" VALUES(454,'Egg',NULL);
INSERT INTO "ingredient" VALUES(455,'Beef Shin',NULL);
INSERT INTO "ingredient" VALUES(456,'Bouquet Garni',NULL);
INSERT INTO "ingredient" VALUES(457,'Single Cream',NULL);
INSERT INTO "ingredient" VALUES(458,'Red Wine Jelly',NULL);
INSERT INTO "ingredient" VALUES(459,'Apples',NULL);
INSERT INTO "ingredient" VALUES(460,'Goats Cheese',NULL);
INSERT INTO "ingredient" VALUES(461,'Prosciutto',NULL);
INSERT INTO "ingredient" VALUES(462,'Unsalted Butter',NULL);
INSERT INTO "ingredient" VALUES(463,'Brie',NULL);
INSERT INTO "ingredient" VALUES(464,'Tarragon Leaves',NULL);
INSERT INTO "ingredient" VALUES(465,'Chives',NULL);
INSERT INTO "ingredient" VALUES(466,'Pears',NULL);
INSERT INTO "ingredient" VALUES(467,'White Chocolate',NULL);
INSERT INTO "ingredient" VALUES(468,'Star Anise',NULL);
INSERT INTO "ingredient" VALUES(469,'Tiger Prawns',NULL);
INSERT INTO "ingredient" VALUES(470,'Custard Powder',NULL);
INSERT INTO "ingredient" VALUES(471,'Desiccated Coconut',NULL);
INSERT INTO "ingredient" VALUES(472,'Frozen Peas',NULL);
INSERT INTO "ingredient" VALUES(473,'Minced Pork',NULL);
INSERT INTO "ingredient" VALUES(474,'Creamed Corn',NULL);
INSERT INTO "ingredient" VALUES(475,'Sun-Dried Tomatoes',NULL);
INSERT INTO "ingredient" VALUES(476,'Dijon Mustard',NULL);
INSERT INTO "ingredient" VALUES(477,'Tabasco Sauce',NULL);
INSERT INTO "ingredient" VALUES(478,'Canola Oil',NULL);
INSERT INTO "ingredient" VALUES(479,'Cod',NULL);
INSERT INTO "ingredient" VALUES(480,'Salt Cod',NULL);
INSERT INTO "ingredient" VALUES(481,'Ackee',NULL);
INSERT INTO "ingredient" VALUES(482,'Jerk',NULL);
INSERT INTO "ingredient" VALUES(483,'Ground Beef',NULL);
INSERT INTO "ingredient" VALUES(484,'Baby Aubergine','Eggplant (Solanum melongena) or aubergine is a species of nightshade grown for its edible fruit. Eggplant is the common name in North America, Australia and New Zealand; in British English, it is aubergine, and in South Asia and South Africa, brinjal.

The fruit is widely used in cooking. As a member of the genus Solanum, it is related to the tomato and the potato. It was originally domesticated from the wild nightshade species, the thorn or bitter apple, S. incanum, probably with two independent domestications, one in South Asia and one in East Asia.');
INSERT INTO "ingredient" VALUES(485,'Paella Rice','Paella[a] is a Valencian rice dish that has ancient roots but its modern form originated in the mid-19th century in the area around Albufera lagoon on the east coast of Spain, adjacent to the city of Valencia. Many non-Spaniards view paella as Spain''s national dish, but most Spaniards consider it to be a regional Valencian dish. Valencians, in turn, regard paella as one of their identifying symbols.

Types of paella include Valencian paella, vegetable paella (Spanish: paella de verduras), seafood paella (Spanish: paella de mariscos), and mixed paella (Spanish: paella mixta), among many others. Valencian paella is believed to be the original recipe and consists of white rice, green beans (bajoqueta and tavella), meat (chicken, duck and rabbit), white beans (garrofón), snails, and seasoning such as saffron and rosemary. Another very common but seasonal ingredient is artichokes. Seafood paella replaces meat with seafood and omits beans and green vegetables. Mixed paella is a free-style combination of meat from land animals, seafood, vegetables, and sometimes beans. Most paella chefs use bomba rice due to it being less likely to overcook, but Valencians tend to use a slightly stickier (and thus more susceptible to overcooking) variety known as Senia. All types of paellas use olive oil.');
INSERT INTO "ingredient" VALUES(486,'Scotch Bonnet','Scotch bonnet, also known as bonney peppers, or Caribbean red peppers, is a variety of chili pepper named for its resemblance to a tam o'' shanter hat. Also called ata rodo by Yoruba speakers of Nigeria, it is found mainly in the Caribbean islands; it is also found in Guyana (where it is called the ball-of-fire pepper), the Maldives Islands (where it is called githeyo mirus), Panama (where it is called aji chombo) and West Africa. Most Scotch bonnets have a heat rating of 100,000–350,000 Scoville units. For comparison, most jalapeño peppers have a heat rating of 2,500 to 8,000 on the Scoville scale. However, completely sweet varieties of Scotch bonnet are grown on some of the Caribbean islands, called cachucha peppers.

These peppers are used to flavour many different dishes and cuisines worldwide and are often used in hot sauces and condiments. The Scotch bonnet has a sweeter flavour and stouter shape, distinct from its habanero relative with which it is often confused, and gives jerk dishes (pork/chicken) and other Caribbean dishes their unique flavour. Scotch bonnets are mostly used in West African, Antiguan, Kittitian/Nevisian, Anguilan, Dominican, St. Lucian, St Vincentian, Grenadian, Trinidadian, Jamaican, Barbadian, Guyanese, Surinamese, Haitian and Cayman cuisines and pepper sauces, though they often show up in other Caribbean recipes. It is also used in Costa Rica and Panama for Caribbean-styled recipes such as rice and beans, Rondón, saus, beef patties, and Ceviche.

Fresh, ripe Scotch bonnets can change from green to yellow to scarlet red, however many other breeds of this pepper can ripen to orange, yellow, peach, or even a chocolate brown.');
INSERT INTO "ingredient" VALUES(487,'Oxtail','Oxtail (occasionally spelled ox tail or ox-tail) is the culinary name for the tail of cattle. Formerly, it referred only to the tail of an ox or steer, a bullock (a castrated male).[citation needed] An oxtail typically weighs 2 to 4 lbs. (1–1.8 kg) and is skinned and cut into short lengths for sale.

Oxtail is a bony, gelatin-rich meat, which is usually slow-cooked as a stew[1] or braised. It is a traditional stock base for a soup. Traditional preparations involve slow cooking, so some modern recipes take a shortcut using a pressure cooker. Oxtail is the main ingredient of the Italian dish coda alla vaccinara (a classic of Roman cuisine). It is a popular flavour for powder, instant and premade canned soups in the United Kingdom and Ireland. Oxtails are also one of the popular bases for Russian aspic appetizer dishes (холодец or студень), along with pig trotters or ears or cow "knees", but are the preferred ingredients among Russian Jews because they can be Kosher.

Versions of oxtail soup are popular traditional dishes in South America, West Africa, China, Spain [2] and Indonesia. In Chinese cuisine, it''s usually made into a soup called 牛尾汤 (niúwěi tāng, "oxtail soup"). In Korean cuisine, a soup made with oxtail is called kkori gomtang (see gomguk). It is a thick soup seasoned with salt and eaten with a bowl of rice. It can be used as a stock for making tteokguk (rice cake soup). Stewed oxtail with butter bean or as main dish (with rice) is popular in Jamaica, Trinidad, and other West Indian cultures. Oxtail is also very popular in South Africa where it is often cooked in a traditional skillet called a potjie, which is a three-legged cast iron pot placed over an open fire. Oxtail is also eaten in other southern parts of Africa like Zimbabwe and served with sadza and greens. In the United States, oxtail is a mainstay in African American and West Indian households. In Cuban cuisine, a stew can be made from oxtail called rabo encendido. In the Philippines, it is prepared in a peanut based stew called Kare-kare. In Iran, Oxtail is slow-cooked and served as a substitute for shank in a main dish called Baghla-Poli-Mahicheh which is prepared with rice, shank (or oxtail) and a mixture of herbs including dill, coriander, parsley and garlic.

In the United States, oxtail has the meat-cutting classification NAMP 1791.');
INSERT INTO "ingredient" VALUES(488,'Broad Beans','Vicia faba, also known as the broad bean, fava bean, faba bean, field bean, bell bean, or tic bean, is a species of flowering plant in the pea and bean family Fabaceae. It is native to North Africa[dubious – discuss] southwest and south Asia, and extensively cultivated elsewhere.[citation needed] A variety Vicia faba var. equina Pers. – horse bean has been previously recognized.');
INSERT INTO "ingredient" VALUES(489,'Red Snapper','The northern red snapper (Lutjanus campechanus) is a species of snapper native to the western Atlantic Ocean including the Gulf of Mexico, where it inhabits environments associated with reefs. This species is commercially important and is also sought-after as a game fish.

The northern red snapper''s body is very similar in shape to other snappers, such as the mangrove snapper, mutton snapper, lane snapper, and dog snapper. All feature a sloped profile, medium-to-large scales, a spiny dorsal fin, and a laterally compressed body. Northern red snapper have short, sharp, needle-like teeth, but they lack the prominent upper canine teeth found on the mutton, dog, and mangrove snappers. This snapper reaches maturity at a length of about 39 cm (15 in). The common adult length is 60 cm (24 in), but may reach 100 cm (39 in). The maximum published weight is 38 kg (84 lb), and the oldest reported age is 100+ years. Coloration of the northern red snapper is light red, with more intense pigment on the back. It has 10 dorsal spines, 14 soft dorsal rays, three anal spines and eight to 9 anal soft rays. Juvenile fish (shorter than 30–35 cm) can also have a dark spot on their sides, below the anterior soft dorsal rays, which fades with age.');
INSERT INTO "ingredient" VALUES(490,'Malt Vinegar','Vinegar is a liquid consisting of about 5–20% acetic acid (CH3COOH), water, and other trace chemicals, which may include flavorings. The acetic acid is produced by the fermentation of ethanol by acetic acid bacteria. Vinegar is now mainly used as a cooking ingredient, or in pickling. As the most easily manufactured mild acid, it has historically had a great variety of industrial, medical, and domestic uses, some of which (such as its use as a general household cleaner) are still commonly practiced today.

Commercial vinegar is produced either by a fast or a slow fermentation process. In general, slow methods are used in traditional vinegars where fermentation proceeds slowly over the course of a few months or up to a year. The longer fermentation period allows for the accumulation of a non-toxic slime composed of acetic acid bacteria. Fast methods add mother of vinegar (bacterial culture) to the source liquid before adding air to oxygenate and promote the fastest fermentation. In fast production processes, vinegar may be produced between 20 hours to three days.');
INSERT INTO "ingredient" VALUES(491,'Rice Vinegar','Rice vinegar is a vinegar made from fermented rice in China, Japan, Korea, and Vietnam.

Chinese rice vinegars are stronger than Japanese ones, and range in colour from clear to various shades of red, brown and black and are therefore known as rice wine vinegar. Chinese and especially Japanese vinegars are less acidic than the distilled Western vinegars which, for that reason, are not appropriate substitutes for rice vinegars. The majority of the Asian rice vinegar types are also more mild and sweet than vinegars typically used in the Western world, with black vinegars as a notable exception. Chinese rice vinegars are made from huangjiu, a type of rice wine.');
INSERT INTO "ingredient" VALUES(492,'Water Chestnut','Eleocharis dulcis, the Chinese water chestnut or water chestnut, is a grass-like sedge native to Asia (China, Japan, India, Philippines, etc.), Australia, tropical Africa, and various islands of the Pacific and Indian Oceans. It is grown in many countries for its edible corms.

The water chestnut is not a nut at all, but an aquatic vegetable that grows in marshes, under water, in the mud. It has stem-like, tubular green leaves that grow to about 1.5 m. The water caltrop, which also is referred to by the same name, is unrelated and often confused with the water chestnut.

The small, rounded corms have a crisp, white flesh and may be eaten raw, slightly boiled, or grilled, and often are pickled or tinned. They are a popular ingredient in Chinese dishes. In China, they are most often eaten raw, sometimes sweetened. They also may be ground into a flour form used for making water chestnut cake, which is common as part of dim sum cuisine. They are unusual among vegetables for remaining crisp even after being cooked or canned, because their cell walls are cross-linked and strengthened by certain phenolic compounds, such as oligomers of ferulic acid. This property is shared by other vegetables that remain crisp in this manner, including the tiger nut and lotus root. The corms contain the antibiotic agent puchiin, which is stable to high temperature. Apart from the edible corms, the leaves can be used for cattlefeed, mulch or compost.

The corms are rich in carbohydrates (about 90% by dry weight), especially starch (about 60% by dry weight), and are also a good source of dietary fiber, riboflavin, vitamin B6, potassium, copper, and manganese.

If eaten uncooked, the surface of the plants may transmit fasciolopsiasis.');
INSERT INTO "ingredient" VALUES(493,'Tofu','Tofu, also known as bean curd, is a food cultivated by coagulating soy milk and then pressing the resulting curds into soft white blocks. It is a component in East Asian and Southeast Asian cuisines. Tofu can be soft, firm, or extra firm. Tofu has a subtle flavor and can be used in savory and sweet dishes. It is often seasoned or marinated to suit the dish.

Tofu has a low calorie count and relatively large amounts of protein. It is high in iron, and it can have a high calcium or magnesium content, depending on the coagulants used in manufacturing (e.g. calcium chloride, calcium sulfate, magnesium sulfate).');
INSERT INTO "ingredient" VALUES(494,'Doubanjiang','Doubanjiang (IPA: [tôupântɕjâŋ]), or simply Douban, or Toban-djan, Chili bean sauce, is a spicy, salty paste made from fermented broad beans, soybeans, salt, rice, and various spices. Doubanjiang exists in plain and spicy versions, with the latter containing red chili peppers and called la doubanjiang (辣豆瓣酱; pinyin: là dòubànjiàng; là meaning "hot" or "spicy").

It is used particularly in Sichuan cuisine, and in fact, the people of the province commonly refer to it as "the soul of Sichuan cuisine". A particularly well-known variety is called Pixian Douban (simplified Chinese: 郫县豆瓣; traditional Chinese: 郫縣豆瓣; pinyin: Píxiàn dòubàn), named after the district of Pixian, Sichuan.[1]

This sauce is sometimes stir-fried with oil and eaten with rice or noodles as a quick meal, and is also commonly used as a primary flavoring for fried tofu dishes and cold tofu salads. It is also frequently mixed with instant noodles.

In many Chinese communities and food factories, doubanjiang is produced with only soybeans and salt, and does not contain the broad beans or chili peppers typical of Sichuan-style doubanjiang.

In Korean cuisine, a similar form of bean paste is called doenjang.');
INSERT INTO "ingredient" VALUES(495,'Fermented Black Beans','Douchi (Chinese: 豆豉; pinyin: dòuchǐ), or tochi is a type of fermented and salted black soybean. In English, it is known as fermented black soybeans, Chinese fermented black beans (Chinese: 黑豆豆豉; pinyin: hēidòu dòuchǐ), salted black beans, salty black beans, or just black beans. They are a flavoring most popular in the cuisine of China, where they are most widely used for making black bean sauce dishes.[1][page needed]

Douchi is made by fermenting and salting black soybeans. The black type soybean is most commonly used and the process turns the beans soft, and mostly semi-dry (if the beans are allowed to dry). Regular soybeans (white soybeans) are also used, but this does not produce "salted black beans"; instead, these beans become brown. The smell is sharp, pungent, and spicy; the taste is salty, somewhat bitter and sweet.[citation needed] The product made with white soybeans is called mianchi.

The process and product are similar to ogiri and iru, both being African fermented bean products[citation needed].

Douchi, "Chinese salted black beans", and "black soybeans" should not be confused with the black turtle bean, a variety of common bean that is commonly used in the cuisines of Central America, South America, and the Caribbean.');
INSERT INTO "ingredient" VALUES(496,'Scallions','Scallions (green onion, spring onion and salad onion) are vegetables of various Allium onion species. Scallions have a milder taste than most onions. Their close relatives include the garlic, shallot, leek, chive, and Chinese onion.

Although the bulbs of many Allium species are used as food, the defining characteristic of scallion species is that they lack a fully developed bulb. In common with all Allium species, scallions have hollow, tubular green leaves, growing directly from the bulb. These leaves are used as a vegetable; they are eaten either raw or cooked. The leaves are often chopped into other dishes, in the manner of onions or garlic. Also known as scallions or green onions, spring onions are in fact very young onions, harvested before the bulb has had a chance to swell.');
INSERT INTO "ingredient" VALUES(497,'Sichuan Pepper','Sichuan pepper, Sichuan peppercorn, or Szechuan pepper, is a commonly used spice in Chinese cuisine. It is derived from at least two species of the global genus Zanthoxylum, including Z. simulans and Z. bungeanum. The genus Zanthoxylum belongs in the rue or citrus family, and, despite its name, is not closely related to either black pepper nor the chili pepper.

The husk or hull (pericarp) around the seeds may be used whole, especially in Sichuan cuisine, and the finely ground powder is one of the ingredients for five-spice powder. It is also used in traditional Chinese medicine. The pericarp is most often used, but the leaves of various species are also used in some regions of China.

Another species of Zanthoxylum native to China, Z. schinifolium, called xiāng jiāo zi (香椒子, "aromatic peppercorn") or qīng huā jiāo (青花椒, "green flower pepper"), is used as a spice in Hebei.

While the exact flavour and composition of different species from the genus Zanthoxylum vary, most share the same essential characteristics. So while the terms "Sichuan pepper" and sanshō may refer specifically to Z. simulans and Z. piperitum, respectively, the two are commonly used interchangeably.

Related species are used in the cuisines of Tibet, Bhutan, Nepal, Thailand, and India (the Konkani and Uttarakhandi people) and Toba Batak peoples. In Bhutan, this pepper is known as thingye and is used liberally in preparation of soups, gruels, and phaag sha paa (pork slices).[citation needed] In Nepal, timur is used in the popular foods momo, thukpa, chow mein, chicken chilli, and other meat dishes. It is also widely used in homemade pickles. People take timur as a medicine for stomach or digestion problems, in a preparation with cloves of garlic and mountain salt with warm water.');
INSERT INTO "ingredient" VALUES(498,'Wonton Skin','Won ton skin. Paper-thin squares of dough made from flour, water, eggs and salt used to make won tons, egg rolls and gyoza.');
INSERT INTO "ingredient" VALUES(499,'Starch','Starch or amylum is a polymeric carbohydrate consisting of a large number of glucose units joined by glycosidic bonds. This polysaccharide is produced by most green plants as energy storage. It is the most common carbohydrate in human diets and is contained in large amounts in staple foods like potatoes, wheat, maize (corn), rice, and cassava.

Pure starch is a white, tasteless and odorless powder that is insoluble in cold water or alcohol. It consists of two types of molecules: the linear and helical amylose and the branched amylopectin. Depending on the plant, starch generally contains 20 to 25% amylose and 75 to 80% amylopectin by weight.[4] Glycogen, the glucose store of animals, is a more highly branched version of amylopectin.

In industry, starch is converted into sugars, for example by malting, and fermented to produce ethanol in the manufacture of beer, whisky and biofuel. It is processed to produce many of the sugars used in processed foods. Mixing most starches in warm water produces a paste, such as wheatpaste, which can be used as a thickening, stiffening or gluing agent. The biggest industrial non-food use of starch is as an adhesive in the papermaking process. Starch can be applied to parts of some garments before ironing, to stiffen them.');
INSERT INTO "ingredient" VALUES(500,'Rice wine','Rice wine is an alcoholic beverage fermented and distilled from rice, traditionally consumed in East Asia, Southeast Asia and South Asia. Rice wine is made from the fermentation of rice starch that has been converted to sugars. Microbes are the source of the enzymes that convert the starches to sugar.[1]

Rice wine typically has an alcohol content of 18–25% ABV. Rice wines are used in Asian gastronomy at formal dinners and banquets and in cooking. They are also used in a religious and ceremonial context.');
INSERT INTO "ingredient" VALUES(501,'Cooking wine','Splash into casseroles, sauces and marinades for a rounded vibrant flavour.');
INSERT INTO "ingredient" VALUES(502,'Duck Sauce','Duck sauce (or orange sauce) is a condiment with a sweet and sour flavor and a translucent orange appearance similar to a thin jelly. Offered at Chinese-American restaurants, it is used as a dip for deep-fried dishes such as wonton strips, spring rolls, egg rolls, duck, chicken, fish, or with rice or noodles. It is often provided in single-serving packets along with soy sauce, mustard, hot sauce or red chili powder. It may be used as a glaze on foods, such as poultry. Despite its name the sauce is not prepared using duck meat.');
INSERT INTO "ingredient" VALUES(503,'Gochujang','Gochujang or red chili paste is a savory, sweet, and spicy fermented condiment made from chili powder, glutinous rice, meju powder, yeotgireum, and salt.');
INSERT INTO "ingredient" VALUES(504,'Bean Sprouts','Bean sprouts are a common ingredient across the world. They are particularly common in Eastern Asian cuisine.

There are two types of common bean sprouts:

Mung bean sprout is made from the greenish-capped mung beans
Soybean sprout is made from yellow, larger-grained soybean
It typically takes one week for them to become fully grown. The sprouted beans are more nutritious than the original beans and they require much less cooking time.');
INSERT INTO "ingredient" VALUES(505,'Noodles','Noodles are a staple food in many cultures. They are made from unleavened dough which is stretched, extruded, or rolled flat and cut into one of a variety of shapes. While long, thin strips may be the most common, many varieties of noodles are cut into waves, helices, tubes, strings, or shells, or folded over, or cut into other shapes. Noodles are usually cooked in boiling water, sometimes with cooking oil or salt added. They are often pan-fried or deep-fried. Noodles are often served with an accompanying sauce or in a soup. Noodles can be refrigerated for short-term storage or dried and stored for future use. The material composition or geocultural origin must be specified when discussing noodles. The word derives from the German word Nudel.[1]');
INSERT INTO "ingredient" VALUES(506,'Wood Ear Mushrooms','Auricularia auricula-judae, known as the Jew''s ear, wood ear, jelly ear or by a number of other common names, is a species of edible Auriculariales fungus found worldwide. The fruiting body is distinguished by its noticeably ear-like shape and brown colouration; it grows upon wood, especially elder. Its specific epithet is derived from the belief that Judas Iscariot hanged himself from an elder tree; the common name "Judas''s ear" was largely eclipsed by the corruption "Jew''s ear", while today "jelly ear" and other names are sometimes used. The fungus can be found throughout the year in temperate regions worldwide, where it grows upon both dead and living wood.

In the West, A. auricula-judae was used in folk medicine as recently as the 19th century for complaints including sore throats, sore eyes and jaundice, and as an astringent. Although it is not widely consumed in the West, it has long been popular in China, to the extent that Australia exported large volumes to China in the early twentieth century. Today, the fungus is a popular ingredient in many Chinese dishes, such as hot and sour soup, and also used in Chinese medicine. It is also used in Ghana, as a blood tonic. Modern research into possible medical applications has variously concluded that A. auricula-judae has antitumour, hypoglycemic, anticoagulant and cholesterol-lowering properties.');
INSERT INTO "ingredient" VALUES(507,'Dark Rum','Rum is a distilled alcoholic drink made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels.

The majority of the world''s rum production occurs in the Caribbean and Latin America. Rum is also produced in Australia, Portugal, Austria, Canada, Fiji, India, Japan, Mauritius, Nepal, New Zealand, the Philippines, Reunion Island, South Africa, Spain, Sweden, Taiwan, Thailand, the United Kingdom and the United States.

Rums are produced in various grades. Light rums are commonly used in cocktails, whereas "golden" and "dark" rums were typically consumed straight or neat, on the rocks, or used for cooking, but are now commonly consumed with mixers. Premium rums are also available, made to be consumed either straight or iced.

Rum plays a part in the culture of most islands of the West Indies as well as in The Maritimes and Newfoundland. This drink has famous associations with the Royal Navy (where it was mixed with water or beer to make grog) and piracy (where it was consumed as bumbo). Rum has also served as a popular medium of economic exchange, used to help fund enterprises such as slavery (see Triangular trade), organized crime, and military insurgencies (e.g., the American Revolution and Australia''s Rum Rebellion).');
INSERT INTO "ingredient" VALUES(508,'Light Rum','Rum is a distilled alcoholic drink made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels.

The majority of the world''s rum production occurs in the Caribbean and Latin America. Rum is also produced in Australia, Portugal, Austria, Canada, Fiji, India, Japan, Mauritius, Nepal, New Zealand, the Philippines, Reunion Island, South Africa, Spain, Sweden, Taiwan, Thailand, the United Kingdom and the United States.

Rums are produced in various grades. Light rums are commonly used in cocktails, whereas "golden" and "dark" rums were typically consumed straight or neat, on the rocks, or used for cooking, but are now commonly consumed with mixers. Premium rums are also available, made to be consumed either straight or iced.

Rum plays a part in the culture of most islands of the West Indies as well as in The Maritimes and Newfoundland. This drink has famous associations with the Royal Navy (where it was mixed with water or beer to make grog) and piracy (where it was consumed as bumbo). Rum has also served as a popular medium of economic exchange, used to help fund enterprises such as slavery (see Triangular trade), organized crime, and military insurgencies (e.g., the American Revolution and Australia''s Rum Rebellion).');
INSERT INTO "ingredient" VALUES(509,'Rum','Rum is a distilled alcoholic drink made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels.

The majority of the world''s rum production occurs in the Caribbean and Latin America. Rum is also produced in Australia, Portugal, Austria, Canada, Fiji, India, Japan, Mauritius, Nepal, New Zealand, the Philippines, Reunion Island, South Africa, Spain, Sweden, Taiwan, Thailand, the United Kingdom and the United States.

Rums are produced in various grades. Light rums are commonly used in cocktails, whereas "golden" and "dark" rums were typically consumed straight or neat, on the rocks, or used for cooking, but are now commonly consumed with mixers. Premium rums are also available, made to be consumed either straight or iced.

Rum plays a part in the culture of most islands of the West Indies as well as in The Maritimes and Newfoundland. This drink has famous associations with the Royal Navy (where it was mixed with water or beer to make grog) and piracy (where it was consumed as bumbo). Rum has also served as a popular medium of economic exchange, used to help fund enterprises such as slavery (see Triangular trade), organized crime, and military insurgencies (e.g., the American Revolution and Australia''s Rum Rebellion).');
INSERT INTO "ingredient" VALUES(510,'English Muffins','English muffins are a small, round, flat yeast-leavened bread which is commonly sliced horizontally, toasted, and buttered.[2] Toasted English muffins, which are often used in the United States as a breakfast food, may be served with sweet toppings (e.g., fruit jam, or honey) or savoury toppings (e.g., eggs, sausage rounds, bacon, or cheese). English muffins are also used as the bread in a variety of breakfast sandwiches, and are an essential ingredient in Eggs Benedict and most of its variations.

In the United States and U.S.-influenced territories, they are called English muffins to distinguish them from U.S. muffins, which are larger and sweeter miniature baked quick breads. They are very similar to bolo do caco in Portuguese cuisine.');
INSERT INTO "ingredient" VALUES(511,'Muffins','A muffin is an individual-sized, baked product. It can refer to two distinct items, a part-raised flatbread and a cupcake-like quickbread. The flatbread is of British or European derivation, and dates from at least the early 18th century, while the quickbread originated in North America during the 19th century. Both are common worldwide today.');
INSERT INTO "ingredient" VALUES(512,'White Wine Vinegar','Wine vinegar is made from red or white wine, and is the most commonly used vinegar in Southern and Central Europe, Cyprus and Israel. As with wine, there is a considerable range in quality. Better-quality wine vinegars are matured in wood for up to two years, and exhibit a complex, mellow flavor. Wine vinegar tends to have a lower acidity than white or cider vinegars. More expensive wine vinegars are made from individual varieties of wine, such as champagne, sherry, or pinot gris.');
INSERT INTO "ingredient" VALUES(513,'Smoked Salmon','Smoked salmon is a preparation of salmon, typically a fillet that has been cured and hot or cold smoked. Due to its moderately high price, smoked salmon is considered a delicacy. Although the term lox is sometimes applied to smoked salmon, they are different products.');
INSERT INTO "ingredient" VALUES(514,'Mars Bar','Mars is a variety of chocolate bar produced by Mars, Incorporated. It was first manufactured in 1932 in Slough, England by Forrest Mars, Sr. The bar was sold in two different formulations. In its original British version the bar consists of milk chocolate surrounding caramel and nougat, developed to resemble the American candy bar known as the Milky Way, which had been introduced a decade earlier. An American version of the Mars Bar was produced which had nougat and toasted almonds covered in milk chocolate; later, caramel was added to the recipe as well. The American version was discontinued in 2002, though it has been revived for short runs since then.');
INSERT INTO "ingredient" VALUES(515,'Rice Krispies','Rice Krispies (also known as Rice Bubbles in Australia and New Zealand) is a breakfast cereal marketed by Kellogg''s in 1927 and released to the public in 1928. Rice Krispies are made of crisped rice (rice and sugar paste that is formed into rice shapes or "berries", cooked, dried and toasted), and expand forming very thin and hollowed out walls that are crunchy and crisp. When milk is added to the cereal the walls tend to collapse, creating the "Snap, crackle and pop" sounds.

Rice Krispies cereal has a long advertising history, with the elf cartoon characters Snap, Crackle and Pop touting the brand. In 1963, The Rolling Stones recorded a short song for a Rice Krispies television advertisement.');
INSERT INTO "ingredient" VALUES(516,'Ancho Chillies',NULL);
INSERT INTO "ingredient" VALUES(517,'Almond Milk',NULL);
INSERT INTO "ingredient" VALUES(518,'Allspice',NULL);
INSERT INTO "ingredient" VALUES(519,'Almond Extract','The almond (Prunus dulcis, syn. Prunus amygdalus) is a species of tree native to Mediterranean climate regions of the Middle East, but widely cultivated elsewhere. The almond is also the name of the edible and widely cultivated seed of this tree. Within the genus Prunus, it is classified with the peach in the subgenus Amygdalus, distinguished from the other subgenera by corrugations on the shell (endocarp) surrounding the seed.

The fruit of the almond is a drupe, consisting of an outer hull and a hard shell with the seed, which is not a true nut, inside. Shelling almonds refers to removing the shell to reveal the seed. Almonds are sold shelled or unshelled. Blanched almonds are shelled almonds that have been treated with hot water to soften the seedcoat, which is then removed to reveal the white embryo.');
INSERT INTO "ingredient" VALUES(520,'Tripe','Tripe is a type of edible lining from the stomachs of various farm animals. Most tripe is from cattle and sheep.');
INSERT INTO "ingredient" VALUES(521,'Goat Meat','The domestic goat or simply goat (Capra aegagrus hircus) is a subspecies of C. aegagrus domesticated from the wild goat of Southwest Asia and Eastern Europe. The goat is a member of the animal family Bovidae and the goat—antelope subfamily Caprinae, meaning it is closely related to the sheep. There are over 300 distinct breeds of goat. Goats are one of the oldest domesticated species of animal, and have been used for milk, meat, fur, and skins across much of the world. Milk from goats is often turned into goat cheese.');
INSERT INTO "ingredient" VALUES(522,'Black Beans','The black turtle bean is a small, shiny variety of the common bean (Phaseolus vulgaris) especially popular in Latin American cuisine, though it can also be found in the Cajun and Creole cuisines of south Louisiana. Like most common beans, it is native to the Americas, but has been introduced around the world. It is also used in East Indian cooking, Punjabi cuisine, and in Maharashtrian cuisine, it is known as Kala Ghevada. It is used interchangeably with vigna mungo (black gram) in countries such as the United States. The black turtle bean is often simply called the black bean (frijoles negros, zaragoza, judía negra, poroto negro, or caraota o habichuela negra in Spanish; and feijão preto in Portuguese), although this terminology can cause confusion with other black beans.');
INSERT INTO "ingredient" VALUES(523,'Anchovy Fillet','Anchovies are tiny, silvery fish that come from the Mediterranean and southern European coasts. They''re sold salt-cured, usually oil-packed, and filleted. Commonly they come either flat or rolled in cans or jars, or ground and mixed with oil or butter to make a paste that is sold in tubes. On their own, anchovies are very salty but mixed into sauces, dressings, or pastas they add a wonderful depth of flavor.');
INSERT INTO "ingredient" VALUES(524,'Ras el hanout','Ras el hanout or rass el hanout (Arabic: راس الحانوت‎ raʾs al-ḥānūt, pronounced [rɑʔs ælħɑːnuːt] (About this soundlisten)) is a spice mix found in varying forms in Tunisia, Algeria, and Morocco.[1] It plays a similar role in North African cuisine as garam masala does in Indian cuisine. The name in Arabic means "head of the shop" and implies a mixture of the best spices the seller has to offer. Ras el hanout is used in many savory dishes, sometimes rubbed on meat or fish, or stirred into couscous or rice.

There is no definitive composition of spices that makes up ras el hanout. Each shop, company, or family may have their own blend. The mixture usually consists of over a dozen spices, in different proportions. Commonly used ingredients include cardamom, cumin, clove, cinnamon, nutmeg, mace, allspice, dry ginger, chili peppers, coriander seed, peppercorn, sweet and hot paprika, fenugreek, and dry turmeric. Some spices may be particular to the region, such as ash berries, chufa, grains of paradise, orris root, monk''s pepper, cubebs, dried rosebud, fennel seed or aniseed, galangal, long pepper. Ingredients may be toasted before being ground or pounded in a mortar and mixed together. Some preparations include salt or sugar, but that is generally not the accepted practice. Garlic, saffron, nuts or dry herbs are generally not included, as they are usually added to dishes individually, but some commercial preparations, particularly in Europe and North America, may contain them.

The composition of ras el hanout differs somewhat from the Baharat spice mix, but they differ more by the types of dishes they are associated with and by region rather than the ingredients in them. Although used by Berber people, it should not be confused with "berbere" spice mix from Ethiopia.

Certain supposed aphrodisiacs, including the notoriously dangerous "green metallic beetles", cantharides, have appeared in many Moroccan prescriptions, but these seem to be irrelevant for flavouring purposes.');
INSERT INTO "ingredient" VALUES(525,'Filo Pastry','Filo or phyllo (Greek: φύλλο "leaf") is a very thin unleavened dough used for making pastries such as baklava and börek in Middle Eastern and Balkan cuisines. Filo-based pastries are made by layering many sheets of filo brushed with oil or butter; the pastry is then baked.');
INSERT INTO "ingredient" VALUES(526,'Orange Blossom Water','Orange flower water, or orange blossom water, is the clear, perfumed by-product of the distillation of fresh bitter-orange blossoms for their essential oil.

Uses
Mediterranean Relief.jpg
This essential water has traditionally been used as an aromatizer in many Mediterranean traditional dessert dishes, such as in France for the gibassier and pompe à l''huile or in Spain for the Roscón de Reyes (King cake), or the Samsa in Tunisia or in Moroccan coffee, but has more recently found its way into other cuisines. For example, orange flower water is used in Europe to flavor madeleines, in Mexico to flavor little wedding cakes and Pan de muerto, and in the United States to make orange blossom scones and marshmallows. Orange flower water is also used as an ingredient in some cocktails, such as the Ramos Gin Fizz. In Malta and many North African as well as Middle Eastern countries, orange blossom water is widely used as medicine for stomach ache and given to small children as well as adults.

Orange flower water has been a traditional ingredient used often in North African as well as in Middle Eastern cooking. In Arab variants of baklava, orange blossom water is often mixed with the sweet syrup for flavor. Orange blossoms are believed to be used in this manner because they are seen as the traditional bridal flower and, therefore, symbolize purity (white, small and delicate). It is also added to plain water in the Middle East to mask high mineral content and other unpleasant flavors (e.g. those arising from storage in a qulla, a type of clay jug that keeps water cool in a manner similar to the zeer); some add the fragrance irrespective of the taste of the plain water.');
INSERT INTO "ingredient" VALUES(527,'Candied Peel','Candied fruit, also known as crystallized fruit or glacé fruit, has existed since the 14th century. Whole fruit, smaller pieces of fruit, or pieces of peel, are placed in heated sugar syrup, which absorbs the moisture from within the fruit and eventually preserves it.');
INSERT INTO "ingredient" VALUES(528,'Grand Marnier','Grand Marnier is a French brand of liqueurs. The brand''s best-known product is Grand Marnier Cordon Rouge, an orange-flavored liqueur created in 1880 by Alexandre Marnier-Lapostolle. It is made from a blend of Cognac brandy, distilled essence of bitter orange, and sugar. Grand Marnier Cordon Rouge is 40% alcohol.');
INSERT INTO "ingredient" VALUES(529,'Sherry','Sherry is a fortified wine made from white grapes that are grown near the city of Jerez de la Frontera in Andalusia, Spain.');
INSERT INTO "ingredient" VALUES(530,'Rose water','Rose water is a flavoured water made by steeping rose petals in water. Additionally, it is the hydrosol portion of the distillate of rose petals, a by-product of the production of rose oil for use in perfume. It is used to flavour food, as a component in some cosmetic and medical preparations, and for religious purposes throughout Europe and Asia.');
INSERT INTO "ingredient" VALUES(531,'Mixed Spice','Mixed spice, also called pudding spice, is a British[1] blend of sweet spices, similar to the pumpkin pie spice used in the United States. Cinnamon is the dominant flavour, with nutmeg and allspice. It is often used in baking, or to complement fruits or other sweet foods.');
INSERT INTO "ingredient" VALUES(532,'Mincemeat','Mincemeat is a mixture of chopped dried fruit, distilled spirits and spices, and sometimes beef suet, beef, or venison. Originally, mincemeat always contained meat. Many modern recipes contain beef suet, though vegetable shortening is sometimes used in its place.');
INSERT INTO "ingredient" VALUES(533,'Sweet Potatoes','The sweet potato or sweetpotato is a dicotyledonous plant that belongs to the bindweed or morning glory family, Convolvulaceae. Its large, starchy, sweet-tasting, tuberous roots are a root vegetable. The young leaves and shoots are sometimes eaten as greens.');
INSERT INTO "ingredient" VALUES(534,'Bread Rolls','A roll is a small, usually round or oblong individual loaf of bread served as a meal accompaniment (eaten plain or with butter) A roll can be served and eaten whole or cut transversely and dressed with filling between the two halves. Rolls are also commonly used to make sandwiches similar to those produced using slices of bread. They are found in most cuisines all over the world. In the Deipnosophistae, the author Athenaeus (c. 170 – c. 230) describes some of the bread, cakes, and pastries available in the Classical world. Among the breads mentioned are griddle cakes, honey-and-oil bread, mushroom-shaped loaves covered in poppy seeds, and the military specialty of rolls baked on a spit.');
INSERT INTO "ingredient" VALUES(535,'Bun','A bun is a small, sometimes sweet, bread-based item[1] or roll. Though they come in many shapes and sizes, they are most commonly hand-sized or smaller, with a round top and flat bottom.');
INSERT INTO "ingredient" VALUES(536,'Potatoe Buns','Potato bread is a form of bread in which potato flour or potato replaces a portion of the regular wheat flour. It is cooked in a variety of ways, including baking it on a hot griddle or pan, or in an oven. It may be leavened or unleavened, and may have a variety of other ingredients baked into it. The ratio of potato to wheat flour varies significantly from recipe to recipe, with some recipes having a majority of potato, and others having a majority of wheat flour. Some recipes call for mashed potatoes, with others calling for dehydrated potato flakes. It is available as a commercial product in many countries, with similar variations in ingredients, cooking method, and other variables.');
INSERT INTO "ingredient" VALUES(537,'Ground Pork','Ground meat, called mince or minced meat outside of North America (i.e. in U.K. and Commonwealth countries), and keema or qeema (Hindustani: क़ीमा (Devanagari), قیمہ (Nastaleeq), (pronounced [ˈqiːmaː])) in the Indian subcontinent, is meat finely chopped by a meat grinder or a chopping knife. A common type of ground meat is ground beef, but many other types of meats are prepared in a similar fashion, including pork, lamb, and poultry. In the Indian subcontinent, both mutton and goat meat are also minced to produce keema.');
INSERT INTO "ingredient" VALUES(538,'Pork Chops','A pork chop, like other meat chops, is a loin cut taken perpendicular to the spine of the pig and usually containing a rib or part of a vertebra. Pork chops are not processed and are leaner than other cuts of pork. Chops are commonly served as an individual portion.');
INSERT INTO "ingredient" VALUES(539,'Yukon Gold Potatoes','Yukon Gold is a large cultivar of potato most distinctly characterized by its thin, smooth, eye-free skin and yellow-tinged flesh. This potato was developed in the 1960s by Garnet Johnston in Guelph, Ontario, Canada, with the help of Geoff Rowberry at the University of Guelph. The official cross was made in 1966 and Yukon Gold was finally released into the market in 1980.');
INSERT INTO "ingredient" VALUES(540,'Yellow Onion','The brown onion or yellow onion is a variety of dry onion with a strong flavour. They have a greenish-white, light yellow, or white inside; its layers of papery skin have a yellow-brown or pale golden colour');
INSERT INTO "ingredient" VALUES(541,'Beef Stock Concentrate','Stock, sometimes called bone broth, is a savory cooking liquid that forms the basis of many dishes, particularly soups, stews and sauces. Making stock involves simmering animal bones or meat, seafood, or vegetables in water or wine, often for an extended period of time. Mirepoix or other aromatics may be added for more flavor.');
INSERT INTO "ingredient" VALUES(542,'Chicken Stock Concentrate','Stock, sometimes called bone broth, is a savory cooking liquid that forms the basis of many dishes, particularly soups, stews and sauces. Making stock involves simmering animal bones or meat, seafood, or vegetables in water or wine, often for an extended period of time. Mirepoix or other aromatics may be added for more flavor.');
INSERT INTO "ingredient" VALUES(543,'Persian Cucumber','Cucumber (Cucumis sativus) is a widely cultivated plant in the gourd family, Cucurbitaceae. It is a creeping vine that bears cucumiform fruits that are used as vegetables. There are three main varieties of cucumber: slicing, pickling, and seedless. Within these varieties, several cultivars have been created. In North America, the term "wild cucumber" refers to plants in the genera Echinocystis and Marah, but these are not closely related. The cucumber is originally from South Asia, but now grows on most continents. Many different types of cucumber are traded on the global market.');
INSERT INTO "ingredient" VALUES(544,'Mayonnaise','Mayonnaise, informally mayo is a thick cold condiment or dressing commonly used in sandwiches and composed salads or on French fries. It is also a base in sauces such as Tartar sauce.');
INSERT INTO "ingredient" VALUES(545,'Sriracha','Sriracha is a type of hot sauce or chili sauce made from a paste of chili peppers, distilled vinegar, garlic, sugar, and salt.');
INSERT INTO "ingredient" VALUES(546,'Rhubarb','Rhubarb is a general term used for the cultivated plants in the genus Rheum in the family Polygonaceae. It is a herbaceous perennial growing from short, thick rhizomes. Historically, different plants have been called "rhubarb" in English.');
INSERT INTO "ingredient" VALUES(547,'Pita Bread','Pita or pitta, is a family of yeast-leavened round flatbreads baked from wheat flour, common in the Mediterranean, Middle East, and neighboring areas.');
INSERT INTO "ingredient" VALUES(548,'Bulgur Wheat','Bulgur is a cereal food made from the cracked parboiled groats of several different wheat species, most often from durum wheat. It originates in Middle Eastern cuisine.');
INSERT INTO "ingredient" VALUES(549,'Quinoa','Quinoa is a flowering plant in the amaranth family. It is an herbaceous annual plant grown as a crop primarily for its edible seeds; the seeds are rich in protein, dietary fiber, B vitamins, and dietary minerals in amounts greater than in many grains.');
INSERT INTO "ingredient" VALUES(550,'Dill Pickles','A pickled cucumber is a cucumber that has been pickled in a brine, vinegar, or other solution and left to ferment for a period of time, by either immersing the cucumbers in an acidic solution or through souring by lacto-fermentation. Pickled cucumbers are often part of mixed pickles.');
INSERT INTO "ingredient" VALUES(551,'Sesame Seed Burger Buns','A bun is a small, sometimes sweet, bread-based item or roll. Though they come in many shapes and sizes, they are most commonly hand-sized or smaller, with a round top and flat bottom. Buns are usually made from flour, sugar, milk, yeast and butter.');
INSERT INTO "ingredient" VALUES(552,'Buns','A bun is a small, sometimes sweet, bread-based item or roll. Though they come in many shapes and sizes, they are most commonly hand-sized or smaller, with a round top and flat bottom. Buns are usually made from flour, sugar, milk, yeast and butter.');
INSERT INTO "ingredient" VALUES(553,'Iceberg Lettuce','Iceberg is a variety of lettuce with crisp leaves that grow in a spherical head resembling cabbage. It is considered one of the sweeter lettuce varieties like romaine and butterhead. Mature iceberg lettuce grows to about one foot in diameter.');
INSERT INTO "ingredient" VALUES(554,'Gherkin Relish','A relish is a cooked and pickled product made of chopped vegetables, fruits or herbs and is a food item typically used as a condiment to enhance a staple. Examples are chutneys and the North American relish, a pickled cucumber jam eaten with hot dogs or hamburgers.');
INSERT INTO "ingredient" VALUES(555,'Cheese Slices','Processed cheese is a food product made from cheese and other unfermented dairy ingredients mixed with emulsifiers. Additional ingredients, such as vegetable oils, salt, food coloring, or sugar may be included. As a result, many flavors, colors, and textures of processed cheese exist.');
INSERT INTO "ingredient" VALUES(556,'Shortening','Shortening is any fat that is a solid at room temperature and used to make crumbly pastry and other food products. Although butter is solid at room temperature and is frequently used in making pastry, the term "shortening" seldom refers to butter, but is more closely related to margarine.');
INSERT INTO "ingredient" VALUES(557,'Warm Water','Water is an inorganic, transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth''s hydrosphere and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients. Its chemical formula is H2O, meaning that each of its molecules contains one oxygen and two hydrogen atoms, connected by covalent bonds. Water is the name of the liquid state of H2O at standard ambient temperature and pressure. It forms precipitation in the form of rain and aerosols in the form of fog. Clouds are formed from suspended droplets of water and ice, its solid state. When finely divided, crystalline ice may precipitate in the form of snow. The gaseous state of water is steam or water vapor. Water moves continually through the water cycle of evaporation, transpiration (evapotranspiration), condensation, precipitation, and runoff, usually reaching the sea.');
INSERT INTO "ingredient" VALUES(558,'Boiling Water','Water is an inorganic, transparent, tasteless, odorless, and nearly colorless chemical substance, which is the main constituent of Earth''s hydrosphere and the fluids of most living organisms. It is vital for all known forms of life, even though it provides no calories or organic nutrients. Its chemical formula is H2O, meaning that each of its molecules contains one oxygen and two hydrogen atoms, connected by covalent bonds. Water is the name of the liquid state of H2O at standard ambient temperature and pressure. It forms precipitation in the form of rain and aerosols in the form of fog. Clouds are formed from suspended droplets of water and ice, its solid state. When finely divided, crystalline ice may precipitate in the form of snow. The gaseous state of water is steam or water vapor. Water moves continually through the water cycle of evaporation, transpiration (evapotranspiration), condensation, precipitation, and runoff, usually reaching the sea.');
INSERT INTO "ingredient" VALUES(559,'Pickle Juice','Pickling is the process of preserving or extending the shelf life of food by either anaerobic fermentation in brine or immersion in vinegar. In East Asia, vinaigrette is also used as a pickling medium. The pickling procedure typically affects the food''s texture, taste and flavor.');
INSERT INTO "ingredient" VALUES(560,'Powdered Sugar','Powdered sugar, also called confectioners'' sugar or icing sugar, is a finely ground sugar produced by milling granulated sugar into a powdered state. It usually contains a small amount of anti-caking agent to prevent clumping and improve flow');
INSERT INTO "ingredient" VALUES(561,'Kielbasa','Kielbasa is any type of meat sausage from Poland, and a staple of Polish cuisine. In American English the word typically refers to a coarse, U-shaped smoked sausage of any kind of meat, which closely resembles the Wiejska sausage in British English.');
INSERT INTO "ingredient" VALUES(562,'Polish Sausage','Kielbasa is any type of meat sausage from Poland, and a staple of Polish cuisine. In American English the word typically refers to a coarse, U-shaped smoked sausage of any kind of meat, which closely resembles the Wiejska sausage in British English.');
INSERT INTO "ingredient" VALUES(563,'Sauerkraut','Sauerkraut is finely cut raw cabbage that has been fermented by various lactic acid bacteria. It has a long shelf life and a distinctive sour flavor, both of which result from the lactic acid formed when the bacteria ferment the sugars in the cabbage leaves.');
INSERT INTO "ingredient" VALUES(564,'Caraway Seed','Caraway, also known as meridian fennel and Persian cumin (Carum carvi), is a biennial plant ... For example, it is used in goulash, sauerkraut, and caraway seed cake. The roots may be cooked as a vegetable like parsnips or carrots');
INSERT INTO "ingredient" VALUES(565,'Herring','Herring are forage fish, mostly belonging to the family Clupeidae. Herring often move in large schools around fishing banks and near the coast, found particularly in shallow, temperate waters of the North Pacific and North Atlantic Oceans, including the Baltic Sea, as well as off the west coast of South America.');
INSERT INTO "ingredient" VALUES(566,'Jam','Fruit preserves are preparations of fruits, vegetables and sugar, often stored in glass jam jars and Mason jars.

Many varieties of fruit preserves are made globally, including sweet fruit preserves, such as those made from strawberry or apricot, and savory preserves, such as those made from tomatoes or squash. The ingredients used and how they are prepared determine the type of preserves; jams, jellies, and marmalades are all examples of different styles of fruit preserves that vary based upon the fruit used. In English, the word, in plural form, "preserves" is used to describe all types of jams and jellies.');
INSERT INTO "ingredient" VALUES(567,'Mulukhiyah','Mulukhiyah , molokheyya ,molokhia or mulukhiyyah (Arabic: ملوخية‎ mulūkhiyyah) Greek : molokha is the leaves of Corchorus olitorius, commonly known in English as jute, nalta jute, tossa jute , jute mallow or Jew''s mallow. It is used as a vegetable. It is popular in Middle East, East African and North African countries and is called “Saluyot” in the Philippines. Mulukhiyah is rather bitter, and when boiled, the resulting liquid is a thick, highly mucilaginous broth; it is often described as "slimy", rather like cooked okra. Mulukhiyah is generally eaten cooked, not raw, and is most frequently turned into a kind of soup or stew, typically bearing the same name as the vegetable in the local language. Traditionally mulukhiyah is cooked with chicken or at least chicken stock for flavor and is served with white rice, accompanied with lemon or lime.');
INSERT INTO "ingredient" VALUES(568,'Sushi Rice','As the dietary staple of Japan, knowing how to cook Japanese rice is an important first step to becoming a Japanese cooking master. Perfectly prepared Japanese rice should be light, fluffy, and slightly sticky when cooked');
INSERT INTO "ingredient" VALUES(569,'Figs','Ficus carica is an Asian species of flowering plant in the mulberry family, known as the common fig. It is the source of the fruit also called the fig and as such is an important crop in those areas where it is grown commercially.');
INSERT INTO "ingredient" VALUES(570,'Cider','Cider (/ˈsaɪdər/ SY-dər) is an alcoholic beverage made from the fermented juice of apples. Cider is widely available in the United Kingdom (particularly in the West Country) and the Republic of Ireland. The UK has the world''s highest per capita consumption, as well as its largest cider-producing companies. Ciders from the South West of England are generally stronger. Cider is also popular in many Commonwealth countries, such as India, Canada, Australia, and New Zealand. As well as the UK and its former colonies, cider is popular in Portugal (mainly in Minho and Madeira), France (particularly Normandy and Brittany), northern Italy (Piedmont and Friuli), and northern Spain (especially the Principality of Asturias and the Basque Country). Central Europe also has its own types of cider with Rhineland-Palatinate and Hesse producing a particularly tart version known as Apfelwein. In the U.S., varieties of fermented cider are often called hard cider to distinguish alcoholic cider from non-alcoholic apple cider or "sweet cider", also made from apples. In Canada, cider cannot be called cider if there are no apples. Furthermore, according to the Food and Drug Regulations in Canada, cider cannot contain less than 2.5% or over 13% absolute alcohol by volume.');
INSERT INTO "ingredient" VALUES(571,'Beetroot','The beetroot is the taproot portion of a beet plant, usually known in Canada and the USA as beets while the vegetable is referred to as beetroot in British English, and also known as the table beet, garden beet, red beet, dinner beet or golden beet.');
INSERT INTO "ingredient" VALUES(572,'Sardines','"Sardine" and "pilchard" are common names that refer to various small, oily forage fish in the herring family Clupeidae. The term "sardine" was first used in English during the early 15th century and may come from the Mediterranean island of Sardinia, around which sardines were once abundant.');
INSERT INTO "ingredient" VALUES(573,'Ciabatta','Ciabatta is an Italian white bread made from wheat flour, water, salt, yeast and olive oil, created in 1982 by a baker in Adria, province of Rovigo, Veneto, Italy, in response to the popularity of French baguettes.');
INSERT INTO "ingredient" VALUES(574,'Buckwheat','Buckwheat (Fagopyrum esculentum), or common buckwheat, is a plant cultivated for its grain-like seeds and as a cover crop. The name "buckwheat" is used for several other species, such as Fagopyrum tataricum, a domesticated food plant raised in Asia. Despite the name, buckwheat is not closely related to wheat, as it is not a grass. Instead, buckwheat is related to sorrel, knotweed, and rhubarb. Buckwheat is referred to as a pseudocereal because its seeds'' culinary use is the same as cereals'', owing to their composition of complex carbohydrates.');
INSERT INTO "ingredient" VALUES(575,'Prunes','A prune is a dried plum, most commonly from the European plum. Not all plum species or varieties can be dried into prunes. A prune is the firm-fleshed fruit (plum) of Prunus domestica varieties that have a high soluble solids content, and do not ferment during drying. Use of the term "prune" for fresh plums is obsolete except when applied to varieties of plum grown for drying.');
INSERT INTO "ingredient" VALUES(576,'digestive biscuits',NULL);
INSERT INTO "ingredient" VALUES(577,'butter',NULL);
INSERT INTO "ingredient" VALUES(578,'Bramley apples',NULL);
INSERT INTO "ingredient" VALUES(579,'butter, softened',NULL);
INSERT INTO "ingredient" VALUES(580,'caster sugar',NULL);
INSERT INTO "ingredient" VALUES(581,'free-range eggs, beaten',NULL);
INSERT INTO "ingredient" VALUES(582,'ground almonds',NULL);
INSERT INTO "ingredient" VALUES(583,'almond extract',NULL);
INSERT INTO "ingredient" VALUES(584,'flaked almonds',NULL);
INSERT INTO "ingredient" VALUES(585,'Blackberrys',NULL);
INSERT INTO "ingredient" VALUES(586,'plain flour',NULL);
INSERT INTO "ingredient" VALUES(587,'chilled butter',NULL);
INSERT INTO "ingredient" VALUES(588,'cold water',NULL);
INSERT INTO "ingredient" VALUES(589,'raspberry jam',NULL);
INSERT INTO "ingredient" VALUES(590,'free-range egg, beaten',NULL);
INSERT INTO "ingredient" VALUES(591,'bread',NULL);
INSERT INTO "ingredient" VALUES(592,'sultanas',NULL);
INSERT INTO "ingredient" VALUES(593,'cinnamon',NULL);
INSERT INTO "ingredient" VALUES(594,'milk',NULL);
INSERT INTO "ingredient" VALUES(595,'double cream',NULL);
INSERT INTO "ingredient" VALUES(596,'eggs',NULL);
INSERT INTO "ingredient" VALUES(597,'sugar',NULL);
INSERT INTO "ingredient" VALUES(598,'nutmeg',NULL);
INSERT INTO "ingredient" VALUES(599,'mushrooms',NULL);
INSERT INTO "ingredient" VALUES(600,'Parma ham',NULL);
INSERT INTO "ingredient" VALUES(601,'salt',NULL);
INSERT INTO "ingredient" VALUES(602,'beef stock',NULL);
INSERT INTO "ingredient" VALUES(603,'sunflower oil',NULL);
INSERT INTO "ingredient" VALUES(604,'Olive oil',NULL);
INSERT INTO "ingredient" VALUES(605,'All spice',NULL);
INSERT INTO "ingredient" VALUES(606,'Cinnamon stick',NULL);
INSERT INTO "ingredient" VALUES(607,'Enchilada sauce',NULL);
INSERT INTO "ingredient" VALUES(608,'shredded Monterey Jack cheese',NULL);
INSERT INTO "ingredient" VALUES(609,'corn tortillas',NULL);
INSERT INTO "ingredient" VALUES(610,'chicken breasts',NULL);
INSERT INTO "ingredient" VALUES(611,'Plain chocolate',NULL);
INSERT INTO "ingredient" VALUES(612,'Plum tomatoes',NULL);
INSERT INTO "ingredient" VALUES(613,'salted butter',NULL);
INSERT INTO "ingredient" VALUES(614,'dark soft brown sugar',NULL);
INSERT INTO "ingredient" VALUES(615,'golden syrup',NULL);
INSERT INTO "ingredient" VALUES(616,'orange',NULL);
INSERT INTO "ingredient" VALUES(617,'rolled oats',NULL);
INSERT INTO "ingredient" VALUES(618,'Christmas pudding',NULL);
INSERT INTO "ingredient" VALUES(619,'Ginger paste',NULL);
INSERT INTO "ingredient" VALUES(620,'Vegetable oil',NULL);
INSERT INTO "ingredient" VALUES(621,'Cumin seeds',NULL);
INSERT INTO "ingredient" VALUES(622,'Coriander seeds',NULL);
INSERT INTO "ingredient" VALUES(623,'Turmeric powder',NULL);
INSERT INTO "ingredient" VALUES(624,'Chilli powder',NULL);
INSERT INTO "ingredient" VALUES(625,'Green chilli',NULL);
INSERT INTO "ingredient" VALUES(626,'fenugreek',NULL);
INSERT INTO "ingredient" VALUES(627,'Garam masala',NULL);
INSERT INTO "ingredient" VALUES(628,'onion',NULL);
INSERT INTO "ingredient" VALUES(629,'garlic',NULL);
INSERT INTO "ingredient" VALUES(630,'red pepper flakes',NULL);
INSERT INTO "ingredient" VALUES(631,'white wine',NULL);
INSERT INTO "ingredient" VALUES(632,'heavy cream',NULL);
INSERT INTO "ingredient" VALUES(633,'Parmesan cheese',NULL);
INSERT INTO "ingredient" VALUES(634,'bowtie pasta',NULL);
INSERT INTO "ingredient" VALUES(635,'macaroni',NULL);
INSERT INTO "ingredient" VALUES(636,'chicken stock',NULL);
INSERT INTO "ingredient" VALUES(637,'fajita seasoning',NULL);
INSERT INTO "ingredient" VALUES(638,'chicken breast',NULL);
INSERT INTO "ingredient" VALUES(639,'olive oil',NULL);
INSERT INTO "ingredient" VALUES(640,'red pepper',NULL);
INSERT INTO "ingredient" VALUES(641,'cheddar cheese',NULL);
INSERT INTO "ingredient" VALUES(642,'parsley',NULL);
INSERT INTO "ingredient" VALUES(643,'cajun',NULL);
INSERT INTO "ingredient" VALUES(644,'cayenne pepper',NULL);
INSERT INTO "ingredient" VALUES(645,'white fish',NULL);
INSERT INTO "ingredient" VALUES(646,'vegetable oil',NULL);
INSERT INTO "ingredient" VALUES(647,'flour tortilla',NULL);
INSERT INTO "ingredient" VALUES(648,'avocado',NULL);
INSERT INTO "ingredient" VALUES(649,'little gem lettuce',NULL);
INSERT INTO "ingredient" VALUES(650,'spring onion',NULL);
INSERT INTO "ingredient" VALUES(651,'salsa',NULL);
INSERT INTO "ingredient" VALUES(652,'sour cream',NULL);
INSERT INTO "ingredient" VALUES(653,'lemon',NULL);
INSERT INTO "ingredient" VALUES(654,'Chicken thigh',NULL);
INSERT INTO "ingredient" VALUES(655,'Soy sauce',NULL);
INSERT INTO "ingredient" VALUES(656,'Granulated sugar',NULL);
INSERT INTO "ingredient" VALUES(657,'Potato starch',NULL);
INSERT INTO "ingredient" VALUES(658,'tomato puree',NULL);
INSERT INTO "ingredient" VALUES(659,'thyme',NULL);
INSERT INTO "ingredient" VALUES(660,'bay leaves',NULL);
INSERT INTO "ingredient" VALUES(661,'chestnut mushroom',NULL);
INSERT INTO "ingredient" VALUES(662,'Gruyere cheese',NULL);
INSERT INTO "ingredient" VALUES(663,'Toor dal',NULL);
INSERT INTO "ingredient" VALUES(664,'Chopped tomatoes',NULL);
INSERT INTO "ingredient" VALUES(665,'Green Chili',NULL);
INSERT INTO "ingredient" VALUES(666,'strawberries',NULL);
INSERT INTO "ingredient" VALUES(667,'meringue nests',NULL);
INSERT INTO "ingredient" VALUES(668,'ginger cordial',NULL);
INSERT INTO "ingredient" VALUES(669,'Plain flour',NULL);
INSERT INTO "ingredient" VALUES(670,'Carrot',NULL);
INSERT INTO "ingredient" VALUES(671,'Tarragon',NULL);
INSERT INTO "ingredient" VALUES(672,'Raw king prawns',NULL);
INSERT INTO "ingredient" VALUES(673,'Chopped onion',NULL);
INSERT INTO "ingredient" VALUES(674,'Freshly chopped parsley',NULL);
INSERT INTO "ingredient" VALUES(675,'White wine',NULL);
INSERT INTO "ingredient" VALUES(676,'Minced garlic',NULL);
INSERT INTO "ingredient" VALUES(677,'Cubed Feta cheese',NULL);
INSERT INTO "ingredient" VALUES(678,'Garlic powder',NULL);
INSERT INTO "ingredient" VALUES(679,'Kosher salt',NULL);
INSERT INTO "ingredient" VALUES(680,'Black pepper',NULL);
INSERT INTO "ingredient" VALUES(681,'Cayenne pepper',NULL);
INSERT INTO "ingredient" VALUES(682,'garlic powder',NULL);
INSERT INTO "ingredient" VALUES(683,'whole wheat',NULL);
INSERT INTO "ingredient" VALUES(684,'lamb loin chops',NULL);
INSERT INTO "ingredient" VALUES(685,'shallots',NULL);
INSERT INTO "ingredient" VALUES(686,'carrots',NULL);
INSERT INTO "ingredient" VALUES(687,'turnips',NULL);
INSERT INTO "ingredient" VALUES(688,'celeriac',NULL);
INSERT INTO "ingredient" VALUES(689,'charlotte potatoes',NULL);
INSERT INTO "ingredient" VALUES(690,'fresh thyme',NULL);
INSERT INTO "ingredient" VALUES(691,'oregano',NULL);
INSERT INTO "ingredient" VALUES(692,'Garlic sauce',NULL);
INSERT INTO "ingredient" VALUES(693,'Gouda cheese',NULL);
INSERT INTO "ingredient" VALUES(694,'paprika',NULL);
INSERT INTO "ingredient" VALUES(695,'onion salt',NULL);
INSERT INTO "ingredient" VALUES(696,'chili powder',NULL);
INSERT INTO "ingredient" VALUES(697,'black pepper',NULL);
INSERT INTO "ingredient" VALUES(698,'celery salt',NULL);
INSERT INTO "ingredient" VALUES(699,'sage',NULL);
INSERT INTO "ingredient" VALUES(700,'allspice',NULL);
INSERT INTO "ingredient" VALUES(701,'basil',NULL);
INSERT INTO "ingredient" VALUES(702,'marjoram',NULL);
INSERT INTO "ingredient" VALUES(703,'egg',NULL);
INSERT INTO "ingredient" VALUES(704,'breadcrumbs',NULL);
INSERT INTO "ingredient" VALUES(705,'onions',NULL);
INSERT INTO "ingredient" VALUES(706,'carrot',NULL);
INSERT INTO "ingredient" VALUES(707,'curry powder',NULL);
INSERT INTO "ingredient" VALUES(708,'honey',NULL);
INSERT INTO "ingredient" VALUES(709,'soy sauce',NULL);
INSERT INTO "ingredient" VALUES(710,'bay leaf',NULL);
INSERT INTO "ingredient" VALUES(711,'garam masala',NULL);
INSERT INTO "ingredient" VALUES(712,'ginger',NULL);
INSERT INTO "ingredient" VALUES(713,'tomatoes',NULL);
INSERT INTO "ingredient" VALUES(714,'lemon juice',NULL);
INSERT INTO "ingredient" VALUES(715,'vine leaves',NULL);
INSERT INTO "ingredient" VALUES(716,'fennel bulb',NULL);
INSERT INTO "ingredient" VALUES(717,'lamb mince',NULL);
INSERT INTO "ingredient" VALUES(718,'potato',NULL);
INSERT INTO "ingredient" VALUES(719,'basmati rice',NULL);
INSERT INTO "ingredient" VALUES(720,'chopped parsley',NULL);
INSERT INTO "ingredient" VALUES(721,'coriander',NULL);
INSERT INTO "ingredient" VALUES(722,'clove',NULL);
INSERT INTO "ingredient" VALUES(723,'Cashew nuts',NULL);
INSERT INTO "ingredient" VALUES(724,'Khus khus',NULL);
INSERT INTO "ingredient" VALUES(725,'Ginger garlic paste',NULL);
INSERT INTO "ingredient" VALUES(726,'Basmati rice',NULL);
INSERT INTO "ingredient" VALUES(727,'Full fat yogurt',NULL);
INSERT INTO "ingredient" VALUES(728,'Bay leaf',NULL);
INSERT INTO "ingredient" VALUES(729,'Red Chilli powder',NULL);
INSERT INTO "ingredient" VALUES(730,'Biryani masala',NULL);
INSERT INTO "ingredient" VALUES(731,'cinnamon stick',NULL);
INSERT INTO "ingredient" VALUES(732,'Clove',NULL);
INSERT INTO "ingredient" VALUES(733,'Tomato Purée',NULL);
INSERT INTO "ingredient" VALUES(734,'Greek yogurt',NULL);
INSERT INTO "ingredient" VALUES(735,'red chili',NULL);
INSERT INTO "ingredient" VALUES(736,'Thai red curry paste',NULL);
INSERT INTO "ingredient" VALUES(737,'vegetable stock cube',NULL);
INSERT INTO "ingredient" VALUES(738,'coconut milk',NULL);
INSERT INTO "ingredient" VALUES(739,'fish sauce',NULL);
INSERT INTO "ingredient" VALUES(740,'rice noodles',NULL);
INSERT INTO "ingredient" VALUES(741,'lime',NULL);
INSERT INTO "ingredient" VALUES(742,'king prawns',NULL);
INSERT INTO "ingredient" VALUES(743,'mozzarella balls',NULL);
INSERT INTO "ingredient" VALUES(744,'baby plum tomatoes',NULL);
INSERT INTO "ingredient" VALUES(745,'fresh basil',NULL);
INSERT INTO "ingredient" VALUES(746,'farfalle',NULL);
INSERT INTO "ingredient" VALUES(747,'extra virgin olive oil',NULL);
INSERT INTO "ingredient" VALUES(748,'tuna',NULL);
INSERT INTO "ingredient" VALUES(749,'pepper',NULL);
INSERT INTO "ingredient" VALUES(750,'Coconut cream',NULL);
INSERT INTO "ingredient" VALUES(751,'Massaman curry paste',NULL);
INSERT INTO "ingredient" VALUES(752,'Tamarind paste',NULL);
INSERT INTO "ingredient" VALUES(753,'Brown sugar',NULL);
INSERT INTO "ingredient" VALUES(754,'chilli',NULL);
INSERT INTO "ingredient" VALUES(755,'Sichuan pepper',NULL);
INSERT INTO "ingredient" VALUES(756,'rice stick noodles',NULL);
INSERT INTO "ingredient" VALUES(757,'dark soy sauce',NULL);
INSERT INTO "ingredient" VALUES(758,'oyster sauce',NULL);
INSERT INTO "ingredient" VALUES(759,'white vinegar',NULL);
INSERT INTO "ingredient" VALUES(760,'water',NULL);
INSERT INTO "ingredient" VALUES(761,'peanut oil',NULL);
INSERT INTO "ingredient" VALUES(762,'Chinese broccoli',NULL);
INSERT INTO "ingredient" VALUES(763,'Italian fennel sausages',NULL);
INSERT INTO "ingredient" VALUES(764,'smoky paprika',NULL);
INSERT INTO "ingredient" VALUES(765,'fennel seeds',NULL);
INSERT INTO "ingredient" VALUES(766,'red wine',NULL);
INSERT INTO "ingredient" VALUES(767,'chopped tomatoes',NULL);
INSERT INTO "ingredient" VALUES(768,'pitted black olives',NULL);
INSERT INTO "ingredient" VALUES(769,'rigatoni',NULL);
INSERT INTO "ingredient" VALUES(770,'pecorino',NULL);
INSERT INTO "ingredient" VALUES(771,'anchovy fillet',NULL);
INSERT INTO "ingredient" VALUES(772,'basil leaves',NULL);
INSERT INTO "ingredient" VALUES(773,'Red Chili',NULL);
INSERT INTO "ingredient" VALUES(774,'Tamarind ball',NULL);
INSERT INTO "ingredient" VALUES(775,'Canned tomatoes',NULL);
INSERT INTO "ingredient" VALUES(776,'Red Onion',NULL);
INSERT INTO "ingredient" VALUES(777,'Pine nuts',NULL);
INSERT INTO "ingredient" VALUES(778,'lean minced beef',NULL);
INSERT INTO "ingredient" VALUES(779,'dried oregano',NULL);
INSERT INTO "ingredient" VALUES(780,'hot beef stock',NULL);
INSERT INTO "ingredient" VALUES(781,'worcestershire sauce',NULL);
INSERT INTO "ingredient" VALUES(782,'spaghetti',NULL);
INSERT INTO "ingredient" VALUES(783,'parmesan',NULL);
INSERT INTO "ingredient" VALUES(784,'penne rigate',NULL);
INSERT INTO "ingredient" VALUES(785,'red chilli flakes',NULL);
INSERT INTO "ingredient" VALUES(786,'italian seasoning',NULL);
INSERT INTO "ingredient" VALUES(787,'Parmigiano-Reggiano',NULL);
INSERT INTO "ingredient" VALUES(788,'Medjool dates',NULL);
INSERT INTO "ingredient" VALUES(789,'vanilla extract',NULL);
INSERT INTO "ingredient" VALUES(790,'self-raising flour',NULL);
INSERT INTO "ingredient" VALUES(791,'bicarbonate of soda',NULL);
INSERT INTO "ingredient" VALUES(792,'demerara sugar',NULL);
INSERT INTO "ingredient" VALUES(793,'black treacle',NULL);
INSERT INTO "ingredient" VALUES(794,'ice cream',NULL);
INSERT INTO "ingredient" VALUES(795,'muscovado sugar',NULL);
INSERT INTO "ingredient" VALUES(796,'Spring onions',NULL);
INSERT INTO "ingredient" VALUES(797,'Harissa',NULL);
INSERT INTO "ingredient" VALUES(798,'Ground cumin',NULL);
INSERT INTO "ingredient" VALUES(799,'rice',NULL);
INSERT INTO "ingredient" VALUES(800,'vegetable stock',NULL);
INSERT INTO "ingredient" VALUES(801,'salmon',NULL);
INSERT INTO "ingredient" VALUES(802,'asparagus',NULL);
INSERT INTO "ingredient" VALUES(803,'Vermicelli',NULL);
INSERT INTO "ingredient" VALUES(804,'brown sugar',NULL);
INSERT INTO "ingredient" VALUES(805,'ground ginger',NULL);
INSERT INTO "ingredient" VALUES(806,'minced garlic',NULL);
INSERT INTO "ingredient" VALUES(807,'cornstarch',NULL);
INSERT INTO "ingredient" VALUES(808,'stir-fry vegetables',NULL);
INSERT INTO "ingredient" VALUES(809,'brown rice',NULL);
INSERT INTO "ingredient" VALUES(810,'lemons',NULL);
INSERT INTO "ingredient" VALUES(811,'red onions',NULL);
INSERT INTO "ingredient" VALUES(812,'chicken thighs',NULL);
INSERT INTO "ingredient" VALUES(813,'garlic clove',NULL);
INSERT INTO "ingredient" VALUES(814,'ground cumin',NULL);
INSERT INTO "ingredient" VALUES(815,'chilli powder',NULL);
INSERT INTO "ingredient" VALUES(816,'turmeric',NULL);
INSERT INTO "ingredient" VALUES(817,'potatoes',NULL);
INSERT INTO "ingredient" VALUES(818,'green beans',NULL);
INSERT INTO "ingredient" VALUES(819,'Thai green curry paste',NULL);
INSERT INTO "ingredient" VALUES(820,'Thai fish sauce',NULL);
INSERT INTO "ingredient" VALUES(821,'sausages',NULL);
INSERT INTO "ingredient" VALUES(822,'horseradish',NULL);
INSERT INTO "ingredient" VALUES(823,'cherry tomatoes',NULL);
INSERT INTO "ingredient" VALUES(824,'green red lentils',NULL);
INSERT INTO "ingredient" VALUES(825,'zucchini',NULL);
INSERT INTO "ingredient" VALUES(826,'spinach',NULL);
INSERT INTO "ingredient" VALUES(827,'lasagne sheets',NULL);
INSERT INTO "ingredient" VALUES(828,'vegan butter',NULL);
INSERT INTO "ingredient" VALUES(829,'flour',NULL);
INSERT INTO "ingredient" VALUES(830,'soya milk',NULL);
INSERT INTO "ingredient" VALUES(831,'mustard',NULL);
INSERT INTO "ingredient" VALUES(832,'vinegar',NULL);
INSERT INTO "ingredient" VALUES(833,'self raising flour',NULL);
INSERT INTO "ingredient" VALUES(834,'coco sugar',NULL);
INSERT INTO "ingredient" VALUES(835,'cacao',NULL);
INSERT INTO "ingredient" VALUES(836,'baking powder',NULL);
INSERT INTO "ingredient" VALUES(837,'flax eggs',NULL);
INSERT INTO "ingredient" VALUES(838,'almond milk',NULL);
INSERT INTO "ingredient" VALUES(839,'vanilla',NULL);
CREATE TABLE meal (
	id INTEGER NOT NULL, 
	name VARCHAR(255) NOT NULL, 
	category_id INTEGER NOT NULL, 
	area_id INTEGER NOT NULL, 
	prep_time INTEGER, 
	instructions TEXT NOT NULL, 
	thumbnail VARCHAR(255), 
	tags VARCHAR(255), 
	PRIMARY KEY (id), 
	FOREIGN KEY(category_id) REFERENCES category (id), 
	FOREIGN KEY(area_id) REFERENCES area (id)
);
INSERT INTO "meal" VALUES(52764,'Garides Saganaki',8,10,40,'Place the prawns in a pot and add enough water to cover. Boil for 5 minutes. Drain, reserving the liquid, and set aside.
Heat 2 tablespoons of oil in a saucepan. Add the onion; cook and stir until soft. Mix in the parsley, wine, tomatoes, garlic and remaining olive oil. Simmer, stirring occasionally, for about 30 minutes, or until the sauce is thickened.
While the sauce is simmering, the prawns should become cool enough to handle. First remove the legs by pinching them, and then pull off the shells, leaving the head and tail on.
When the sauce has thickened, stir in the prawns. Bring to a simmer again if the sauce has cooled with the prawns, and cook for about 5 minutes. Add the feta and remove from the heat. Let stand until the cheese starts to melt. Serve warm with slices of crusty bread.
Though completely untraditional, you can add a few tablespoons of stock or passata to this recipe to make a delicious pasta sauce. Toss with pasta after adding the feta, and serve.','https://www.themealdb.com/images/media/meals/wuvryu1468232995.jpg','Seafood,Shellfish');
INSERT INTO "meal" VALUES(52765,'Chicken Enchilada Casserole',2,18,50,'Cut each chicken breast in about 3 pieces, so that it cooks faster and put it in a small pot. Pour Enchilada sauce over it and cook covered on low to medium heat until chicken is cooked through, about 20 minutes. No water is needed, the chicken will cook in the Enchilada sauce. Make sure you stir occasionally so that it doesn''t stick to the bottom.
Remove chicken from the pot and shred with two forks.
Preheat oven to 375 F degrees.
Start layering the casserole. Start with about ¼ cup of the leftover Enchilada sauce over the bottom of a baking dish. I used a longer baking dish, so that I can put 2 corn tortillas across. Place 2 tortillas on the bottom, top with ⅓ of the chicken and ⅓ of the remaining sauce. Sprinkle with ⅓ of the cheese and repeat starting with 2 more tortillas, then chicken, sauce, cheese. Repeat with last layer with the remaining ingredients, tortillas, chicken, sauce and cheese.
Bake for 20 to 30 minutes uncovered, until bubbly and cheese has melted and started to brown on top.
Serve warm.','https://www.themealdb.com/images/media/meals/qtuwxu1468233098.jpg','Casserole,Cheasy,Meat');
INSERT INTO "meal" VALUES(52767,'Bakewell tart',3,2,80,'To make the pastry, measure the flour into a bowl and rub in the butter with your fingertips until the mixture resembles fine breadcrumbs. Add the water, mixing to form a soft dough.
Roll out the dough on a lightly floured work surface and use to line a 20cm/8in flan tin. Leave in the fridge to chill for 30 minutes.
Preheat the oven to 200C/400F/Gas 6 (180C fan).
Line the pastry case with foil and fill with baking beans. Bake blind for about 15 minutes, then remove the beans and foil and cook for a further five minutes to dry out the base.
For the filing, spread the base of the flan generously with raspberry jam.
Melt the butter in a pan, take off the heat and then stir in the sugar. Add ground almonds, egg and almond extract. Pour into the flan tin and sprinkle over the flaked almonds.
Bake for about 35 minutes. If the almonds seem to be browning too quickly, cover the tart loosely with foil to prevent them burning.','https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg','Tart,Baking,Alcoholic');
INSERT INTO "meal" VALUES(52768,'Apple Frangipan Tart',3,2,43,'Preheat the oven to 200C/180C Fan/Gas 6.
Put the biscuits in a large re-sealable freezer bag and bash with a rolling pin into fine crumbs. Melt the butter in a small pan, then add the biscuit crumbs and stir until coated with butter. Tip into the tart tin and, using the back of a spoon, press over the base and sides of the tin to give an even layer. Chill in the fridge while you make the filling.
Cream together the butter and sugar until light and fluffy. You can do this in a food processor if you have one. Process for 2-3 minutes. Mix in the eggs, then add the ground almonds and almond extract and blend until well combined.
Peel the apples, and cut thin slices of apple. Do this at the last minute to prevent the apple going brown. Arrange the slices over the biscuit base. Spread the frangipane filling evenly on top. Level the surface and sprinkle with the flaked almonds.
Bake for 20-25 minutes until golden-brown and set.
Remove from the oven and leave to cool for 15 minutes. Remove the sides of the tin. An easy way to do this is to stand the tin on a can of beans and push down gently on the edges of the tin.
Transfer the tart, with the tin base attached, to a serving plate. Serve warm with cream, crème fraiche or ice cream.','https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg','Tart,Baking,Fruity');
INSERT INTO "meal" VALUES(52769,'Kapsalon',4,6,10,'Cut the meat into strips. Heat oil in a pan and fry the strips for 6 minutes until it''s ready.
Bake the fries until golden brown in a deep fryrer. When ready transfer to a backing dish. Make sure the fries are spread over the whole dish.
Cover the fries with a new layer of meat and spread evenly.
Add a layer of cheese over the meat. You can also use grated cheese. When done put in the oven for a few minutes until the cheese is melted.
Chop the lettuce, tomato and cucumber in small pieces and mix together. for a basic salad. As extra you can add olives jalapenos and a red union.
Dived the salad over the dish and Serve with garlicsauce and hot sauce','https://www.themealdb.com/images/media/meals/sxysrt1468240488.jpg','Snack');
INSERT INTO "meal" VALUES(52770,'Spaghetti Bolognese',1,13,34,'Put the onion and oil in a large pan and fry over a fairly high heat for 3-4 mins. Add the garlic and mince and fry until they both brown. Add the mushrooms and herbs, and cook for another couple of mins.

Stir in the tomatoes, beef stock, tomato ketchup or purée, Worcestershire sauce and seasoning. Bring to the boil, then reduce the heat, cover and simmer, stirring occasionally, for 30 mins.

Meanwhile, cook the spaghetti in a large pan of boiling, salted water, according to packet instructions. Drain well, run hot water through it, put it back in the pan and add a dash of olive oil, if you like, then stir in the meat sauce. Serve in hot bowls and hand round Parmesan cheese, for sprinkling on top.','https://www.themealdb.com/images/media/meals/sutysw1468247559.jpg','Pasta,Meat');
INSERT INTO "meal" VALUES(52771,'Spicy Arrabiata Penne',12,13,16,'Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.
In a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.
Drain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.','https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg','Pasta,Curry');
INSERT INTO "meal" VALUES(52772,'Teriyaki Chicken Casserole',2,15,55,'Preheat oven to 350° F. Spray a 9x13-inch baking pan with non-stick spray.
Combine soy sauce, ½ cup water, brown sugar, ginger and garlic in a small saucepan and cover. Bring to a boil over medium heat. Remove lid and cook for one minute once boiling.
Meanwhile, stir together the corn starch and 2 tablespoons of water in a separate dish until smooth. Once sauce is boiling, add mixture to the saucepan and stir to combine. Cook until the sauce starts to thicken then remove from heat.
Place the chicken breasts in the prepared pan. Pour one cup of the sauce over top of chicken. Place chicken in oven and bake 35 minutes or until cooked through. Remove from oven and shred chicken in the dish using two forks.
*Meanwhile, steam or cook the vegetables according to package directions.
Add the cooked vegetables and rice to the casserole dish with the chicken. Add most of the remaining sauce, reserving a bit to drizzle over the top when serving. Gently toss everything together in the casserole dish until combined. Return to oven and cook 15 minutes. Remove from oven and let stand 5 minutes before serving. Drizzle each serving with remaining sauce. Enjoy!','https://www.themealdb.com/images/media/meals/wvpsxx1468256321.jpg','Meat,Casserole');
INSERT INTO "meal" VALUES(52773,'Honey Teriyaki Salmon',8,15,10,'Mix all the ingredients in the Honey Teriyaki Glaze together. Whisk to blend well. Combine the salmon and the Glaze together.

Heat up a skillet on medium-low heat. Add the oil, Pan-fry the salmon on both sides until it’s completely cooked inside and the glaze thickens.

Garnish with sesame and serve immediately.','https://www.themealdb.com/images/media/meals/xxyupu1468262513.jpg','Fish,Breakfast,DateNight');
INSERT INTO "meal" VALUES(52774,'Pad See Ew',2,24,10,'Mix Sauce in small bowl.
Mince garlic into wok with oil. Place over high heat, when hot, add chicken and Chinese broccoli stems, cook until chicken is light golden.
Push to the side of the wok, crack egg in and scramble. Don''t worry if it sticks to the bottom of the wok - it will char and which adds authentic flavour.
Add noodles, Chinese broccoli leaves and sauce. Gently mix together until the noodles are stained dark and leaves are wilted. Serve immediately!','https://www.themealdb.com/images/media/meals/uuuspp1468263334.jpg','Pasta');
INSERT INTO "meal" VALUES(52775,'Vegan Lasagna',11,13,52,'1) Preheat oven to 180 degrees celcius. 
2) Boil vegetables for 5-7 minutes, until soft. Add lentils and bring to a gentle simmer, adding a stock cube if desired. Continue cooking and stirring until the lentils are soft, which should take about 20 minutes. 
3) Blanch spinach leaves for a few minutes in a pan, before removing and setting aside. 
4) Top up the pan with water and cook the lasagne sheets. When cooked, drain and set aside.
5) To make the sauce, melt the butter and add the flour, then gradually add the soya milk along with the mustard and the vinegar. Cook and stir until smooth and then assemble the lasagne as desired in a baking dish. 
6) Bake in the preheated oven for about 25 minutes.','https://www.themealdb.com/images/media/meals/rvxxuy1468312893.jpg','Vegan,Pasta');
INSERT INTO "meal" VALUES(52776,'Chocolate Gateau',3,9,68,'Preheat the oven to 180°C/350°F/Gas Mark 4. Grease and line the base of an 8 in round spring form cake tin with baking parchment
Break the chocolate into a heatproof bowl and place over a saucepan of gently simmering water and stir until it melts. (or melt in the microwave for 2-3 mins stirring occasionally)
Place the butter and sugar in a mixing bowl and cream together with a wooden spoon until light and fluffy. Gradually beat in the eggs, adding a little flour if the mixture begins to curdle. Fold in the remaining flour with the cooled, melted chocolate and milk. Mix until smooth.
Spread the mixture into the cake tin and bake for 50-55 mins or until firm in the centre and a skewer comes out cleanly. Cool for 10 minutes, then turn out and cool completely.','https://www.themealdb.com/images/media/meals/tqtywx1468317395.jpg','Cake,Chocolate,Desert,Pudding');
INSERT INTO "meal" VALUES(52777,'Mediterranean Pasta Salad',8,13,10,'Bring a large saucepan of salted water to the boil
Add the pasta, stir once and cook for about 10 minutes or as directed on the packet.
Meanwhile, wash the tomatoes and cut into quarters. Slice the olives. Wash the basil.
Put the tomatoes into a salad bowl and tear the basil leaves over them. Add a tablespoon of olive oil and mix.
When the pasta is ready, drain into a colander and run cold water over it to cool it quickly.
Toss the pasta into the salad bowl with the tomatoes and basil.
Add the sliced olives, drained mozzarella balls, and chunks of tuna. Mix well and let the salad rest for at least half an hour to allow the flavours to mingle.
Sprinkle the pasta with a generous grind of black pepper and drizzle with the remaining olive oil just before serving.','https://www.themealdb.com/images/media/meals/wvqpwt1468339226.jpg','Pasta,Baking');
INSERT INTO "meal" VALUES(52779,'Cream Cheese Tart',10,28,25,'Crust: make a dough from 250g flour (I like mixing different flours like plain and wholegrain spelt flour), 125g butter, 1 egg and a pinch of salt, press it into a tart form and place it in the fridge. Filling: stir 300g cream cheese and 100ml milk until smooth, add in 3 eggs, 100g grated parmesan cheese and season with salt, pepper and nutmeg. Take the crust out of the fridge and prick the bottom with a fork. Pour in the filling and bake at 175 degrees C for about 25 minutes. Cover the tart with some aluminium foil after half the time. In the mean time, slice about 350g mini tomatoes. In a small pan heat 3tbsp olive oil, 3tbsp white vinegar, 1 tbsp honey, salt and pepper and combine well. Pour over the tomato slices and mix well. With a spoon, place the tomato slices on the tart, avoiding too much liquid on it. Decorate with basil leaves and enjoy','https://www.themealdb.com/images/media/meals/wurrux1468416624.jpg','Tart,Savory');
INSERT INTO "meal" VALUES(52780,'Potato Gratin with Chicken',2,28,68,'15 minute potato gratin with chicken and bacon greens: a gratin always seems more effort and more indulgent than ordinary boiled or roasts, but it doesn''t have to take 45mins, it''s nice for a change and you can control the calorie content by going with full fat to low fat creme fraiche. (It''s always tastes better full fat though obviously!) to serve 4: use 800g of potatoes, finely slice and boil in a pan for about 5-8 mins till firmish, not soft. Finely slice 3 onions and place in an oven dish with 2 tblsp of olive oil and 100ml of chicken stock. Cook till the onions are soft then drain the potatoes and pour onto the onions. Season and spoon over cream or creme fraiche till all is covered but not swimming. Grate Parmesan over the top then finish under the grill till nicely golden. serve with chicken and bacon, peas and spinach.','https://www.themealdb.com/images/media/meals/qwrtut1468418027.jpg',NULL);
INSERT INTO "meal" VALUES(52781,'Irish stew',1,12,10,'Heat the oven to 180C/350F/gas mark 4. Drain and rinse the soaked wheat, put it in a medium pan with lots of water, bring to a boil and simmer for an hour, until cooked. Drain and set aside.

Season the lamb with a teaspoon of salt and some black pepper. Put one tablespoon of oil in a large, deep sauté pan for which you have a lid; place on a medium-high heat. Add some of the lamb – don''t overcrowd the pan – and sear for four minutes on all sides. Transfer to a bowl, and repeat with the remaining lamb, adding oil as needed.

Lower the heat to medium and add a tablespoon of oil to the pan. Add the shallots and fry for four minutes, until caramelised. Tip these into the lamb bowl, and repeat with the remaining vegetables until they are all nice and brown, adding more oil as you need it.

Once all the vegetables are seared and removed from the pan, add the wine along with the sugar, herbs, a teaspoon of salt and a good grind of black pepper. Boil on a high heat for about three minutes.

Tip the lamb, vegetables and whole wheat back into the pot, and add the stock. Cover and boil for five minutes, then transfer to the oven for an hour and a half.

Remove the stew from the oven and check the liquid; if there is a lot, remove the lid and boil for a few minutes.','https://www.themealdb.com/images/media/meals/sxxpst1468569714.jpg','Stew,Meat');
INSERT INTO "meal" VALUES(52782,'Lamb tomato and sweet spices',4,19,100,'Use pickled vine leaves here, preserved in brine. Small delicate leaves are better than the large bristly ones but, if only large leaves are to hand, then trim them to roughly 12 by 12 cms so that you don''t get too many layers of leaves around the filling. And remove any stalks. Drain the preserved leaves, immerse them in boiling water for 10 minutes and then leave to dry on a tea towel before use. 
Basmati rice with butter and pine nuts is an ideal accompaniment. Couscous is great, too. Serves four.
First make the filling. Put all the ingredients, apart from the tomatoes, in a bowl. Cut the tomatoes in half, coarsely grate into the bowl and discard the skins. Add half a teaspoon of salt and some black pepper, and stir. Leave on the side, or in the fridge, for up to a day. Before using, gently squeeze with your hands and drain away any juices that come out.
To make the sauce, heat the oil in a medium pan. Add the ginger and garlic, cook for a minute or two, taking care not to burn them, then add the tomato, lemon juice and sugar. Season, and simmer for 20 minutes.
While the sauce is bubbling away, prepare the vine leaves. Use any torn or broken leaves to line the base of a wide, heavy saucepan. Trim any leaves from the fennel, cut it vertically into 0.5cm-thick slices and spread over the base of the pan to cover completely.
Lay a prepared vine leaf (see intro) on a work surface, veiny side up. Put two teaspoons of filling at the base of the leaf in a 2cm-long by 1cm-wide strip. Fold the sides of the leaf over the filling, then roll it tightly from bottom to top, in a cigar shape. Place in the pan, seam down, and repeat with the remaining leaves, placing them tightly next to each other in lines or circles (in two layers if necessary).
Pour the sauce over the leaves (and, if needed, add water just to cover). Place a plate on top, to weigh the leaves down, then cover with a lid. Bring to a boil, reduce the heat and cook on a bare simmer for 70 minutes. Most of the liquid should evaporate. Remove from the heat, and leave to cool a little - they are best served warm. When serving, bring to the table in the pan - it looks great. Serve a few vine leaves and fennel slices with warm rice. Spoon the braising juices on top and garnish with coriander.','https://www.themealdb.com/images/media/meals/qtwtss1468572261.jpg','');
INSERT INTO "meal" VALUES(52783,'Rigatoni with fennel sausage sauce',4,13,79,'Heat a tablespoon of oil in a large saute pan for which you have a lid. Add the sausage pieces and fry on a medium-high heat for 10 minutes, stirring regularly, until golden-brown all over. Transfer the sausages to a plate, then add the onion and fennel to the hot pan and fry for 15 minutes, stirring once in a while, until soft and caramelised; if the pan goes a bit dry, add a teaspoon or so of extra oil. Stir in the paprika, garlic and half the fennel seeds, fry for two minutes more, then pour on the wine and boil for 30 seconds, to reduce by half. Add the tomatoes, sugar, 100ml water, the seared sausage and half a teaspoon of salt, cover and simmer for 30 minutes; remove the lid after 10 minutes, and cook until the sauce is thick and rich. Remove from the heat, stir through the olives and remaining fennel seeds and set aside until you’re ready to serve.

Bring a large pot of salted water to a boil, add the pasta and cook for 12-14 minutes (or according to the instructions on the packet), until al dente. Meanwhile, reheat the sauce. Drain the pasta, return it to the pot, stir in a tablespoon of oil, then divide between the bowls. 

Put all the pesto ingredients except the basil in the small bowl of a food processor. Add a tablespoon of water and blitz to a rough paste. Add the basil, then blitz until just combined (the pesto has a much better texture if the basil is not overblended).

Spoon over the ragù and top with a spoonful of pesto. Finish with a sprinkling of chopped fennel fronds, if you have any, and serve at once.','https://www.themealdb.com/images/media/meals/qtqvys1468573168.jpg','Pasta');
INSERT INTO "meal" VALUES(52784,'Smoky Lentil Chili with Squash',12,2,80,'Begin by roasting the squash. Slice it into thin crescents and drizzle with a little oil and sprinkle with sea salt. I added a fresh little sage I had in the fridge, but it’s unnecessary. Roast the squash a 205 C (400 F) for 20-30 minutes, flipping halfway through, until soft and golden. Let cool and chop into cubes.
Meanwhile, rinse the lentils and cover them with water. Bring them to the boil then turn down to a simmer and let cook (uncovered) for 20-30 minutes, or until tender. Drain and set aside.
While the lentils are cooking heat the 1 Tbsp. of oil on low in a medium pot. Add the onions and leeks and sauté for 5 or so minutes, or until they begin to soften. Add the garlic next along with the cumin and coriander, cooking for a few more minutes. Add the remaining spices – paprika, cinnamon, chilli, cocoa, Worcestershire sauce, salt, and oregano. Next add the can of tomatoes, the water or stock, and carrots. Let simmer, covered, for 20 minutes or until the veg is tender and the mixture has thickened up. You’ll need to check on the pot periodically for a stir and a top of of liquid if needed.
Add the lentils and chopped roasted squash. Let cook for 10 more minutes to heat through.
Serve with sliced jalapeno, lime wedges, cilantro, green onions, and cashew sour cream.

SIMPLE CASHEW SOUR CREAM

1 Cup Raw Unsalted Cashews
Pinch Sea Salt
1 tsp. Apple Cider Vinegar
Water

Bring some water to the boil, and use it to soak the cashews for at least four hours. Alternatively, you can use cold water and let the cashews soak overnight, but I’m forgetful/lazy, so often use the boil method which is much faster.
After the cashews have soaked, drain them and add to a high speed blender. Begin to puree, slowly adding about 1/2 cup fresh water, until a creamy consistency is reached. You may need to add less or more water to reach the desired consistency.
Add a pinch of sea salt and vinegar (or lemon juice).','https://www.themealdb.com/images/media/meals/uwxqwy1483389553.jpg','Pulse');
INSERT INTO "meal" VALUES(52785,'Dal fry',12,11,30,'Wash and soak toor dal in approx. 3 cups of water, for at least one hours. Dal will be double in volume after soaking. Drain the water.
Cook dal with 2-1/2 cups water and add salt, turmeric, on medium high heat, until soft in texture (approximately 30 mins) it should be like thick soup.
In a frying pan, heat the ghee. Add cumin seeds, and mustard seeds. After the seeds crack, add bay leaves, green chili, ginger and chili powder. Stir for a few seconds.
Add tomatoes, salt and sugar stir and cook until tomatoes are tender and mushy.
Add cilantro and garam masala cook for about one minute.
Pour the seasoning over dal mix it well and cook for another minute.
Serve with Naan.','https://www.themealdb.com/images/media/meals/wuxrtu1483564410.jpg','Curry,Vegetarian,Cake');
INSERT INTO "meal" VALUES(52786,'Rocky Road Fudge',3,1,10,'Line an 8-inch-square baking pan with wax paper or foil, and coat with non-stick spray.
Pour ½ cup of the miniature marshmallows into the bottom of the lined baking dish.
In a microwave-safe bowl, combine the chocolate chips and peanut butter. Microwave the chocolate mixture in 20-second intervals, stirring in between each interval, until the chocolate is melted.
Add the vanilla extract and stir well, until smooth.
Reserve 2 tablespoons of the chopped almonds or peanuts, and set aside.
Fold 1 ½ cups of the miniature marshmallows and the remaining chopped nuts into the chocolate mixture.
Transfer the chocolate mixture into the prepared pan and spread into an even layer. Immediately top with the reserved chopped nuts and the mallow bits or additional miniature marshmallows, if using.
Refrigerate for 4 hours, or until set.
Remove the fudge and wax paper from the pan. Carefully peel all of wax paper from the fudge.
Cut the fudge into bite-sized pieces and serve.','https://www.themealdb.com/images/media/meals/vtxyxv1483567157.jpg','Chocolate,Snack,Sweet,Baking');
INSERT INTO "meal" VALUES(52787,'Hot Chocolate Fudge',3,1,10,'Line an 8-inch-square baking pan with wax paper or foil, and coat with non-stick spray.
In a microwave-safe bowl, combine the dark chocolate chips, heavy cream and half of the sweetened condensed milk. Microwave the dark chocolate mixture in 20-second intervals, stirring in between each interval, until the chocolate is melted.
Add the vanilla extract to the dark chocolate mixture and stir well until smooth.
Transfer the dark chocolate mixture into the prepared pan and spread into an even layer.
In a separate bowl, combine the white chocolate chips with the remaining half of the sweetened condensed milk. Microwave the white chocolate mixture in 20-second intervals, stirring in between each interval, until the chocolate is melted.
Evenly spread the white chocolate mixture on top of dark chocolate layer.
Top the chocolate layers with the Mallow Bits or miniature marshmallows, and gently press them down.
Refrigerate for 4 hours, or until set.
Remove the fudge and wax paper from the pan. Carefully peel all of the wax paper from the fudge.
Cut the fudge into bite-sized pieces and serve.','https://www.themealdb.com/images/media/meals/xrysxr1483568462.jpg','Snack,Chocolate');
INSERT INTO "meal" VALUES(52788,'Christmas Pudding Flapjack',3,2,40,'Preheat the oven to 180°C/fan 160°C/gas mark 4 and grease and line a 25cm x 20cm tin. Melt the butter, sugar, syrup and orange zest in a large saucepan over a medium heat. The aim is to dissolve all the ingredients so that they are smooth, but to not lose any volume through boiling so be careful not to overheat.

Add the oats and stir well until evenly coated. Stir through the leftover Christmas pudding and tip into the prepared tin. Use a spoon to flatten the top and bake for 40 minutes until the edges start to brown. Whilst still warm in the tin, score into 12 squares. Allow to cool completely before cutting along the scores.

Keeps for 5 days in an air tight tin or freeze for up to 1 month.','https://www.themealdb.com/images/media/meals/vvusxs1483907034.jpg','Snack,Cake');
INSERT INTO "meal" VALUES(52791,'Eton Mess',3,2,10,'Purée half the strawberries in a blender. Chop the remaining strawberries, reserving four for decoration.
Whip the double cream until stiff peaks form, then fold in the strawberry purée and crushed meringue. Fold in the chopped strawberries and ginger cordial, if using.
Spoon equal amounts of the mixture into four cold wine glasses. Serve garnished with the remaining strawberries and a sprig of mint.','https://www.themealdb.com/images/media/meals/uuxwvq1483907861.jpg','Dairy,Fruity,Desert,Treat,Speciality');
INSERT INTO "meal" VALUES(52792,'Bread and Butter Pudding',3,2,70,'Grease a 1 litre/2 pint pie dish with butter.
Cut the crusts off the bread. Spread each slice with on one side with butter, then cut into triangles.
Arrange a layer of bread, buttered-side up, in the bottom of the dish, then add a layer of sultanas. Sprinkle with a little cinnamon, then repeat the layers of bread and sultanas, sprinkling with cinnamon, until you have used up all of the bread. Finish with a layer of bread, then set aside.
Gently warm the milk and cream in a pan over a low heat to scalding point. Don''t let it boil.
Crack the eggs into a bowl, add three quarters of the sugar and lightly whisk until pale.
Add the warm milk and cream mixture and stir well, then strain the custard into a bowl.
Pour the custard over the prepared bread layers and sprinkle with nutmeg and the remaining sugar and leave to stand for 30 minutes.
Preheat the oven to 180C/355F/Gas 4.
Place the dish into the oven and bake for 30-40 minutes, or until the custard has set and the top is golden-brown.','https://www.themealdb.com/images/media/meals/xqwwpy1483908697.jpg','Pudding,Brunch');
INSERT INTO "meal" VALUES(52793,'Sticky Toffee Pudding Ultimate',3,2,78,'Stone and chop the dates quite small, put them in a bowl, then pour the boiling water over. Leave for about 30 mins until cool and well-soaked, then mash a bit with a fork. Stir in the vanilla extract. Butter and flour seven mini pudding tins (each about 200ml/7fl oz) and sit them on a baking sheet. Heat oven to 180C/fan 160C/gas 4.
While the dates are soaking, make the puddings. Mix the flour and bicarbonate of soda together and beat the eggs in a separate bowl. Beat the butter and sugar together in a large bowl for a few mins until slightly creamy (the mixture will be grainy from the sugar). Add the eggs a little at a time, beating well between additions. Beat in the black treacle then, using a large metal spoon, gently fold in one-third of the flour, then half the milk, being careful not to overbeat. Repeat until all the flour and milk is used. Stir the soaked dates into the pudding batter. The mix may look a little curdled at this point and will be like a soft, thick batter. Spoon it evenly between the tins and bake for 20-25 mins, until risen and firm.
Meanwhile, put the sugar and butter for the sauce in a medium saucepan with half the cream. Bring to the boil over a medium heat, stirring all the time, until the sugar has completely dissolved. Stir in the black treacle, turn up the heat slightly and let the mixture bubble away for 2-3 mins until it is a rich toffee colour, stirring occasionally to make sure it doesn’t burn. Take the pan off the heat and beat in the rest of the cream.
Remove the puddings from the oven. Leave in the tins for a few mins, then loosen them well from the sides of the tins with a small palette knife before turning them out. You can serve them now with the sauce drizzled over, but they’ll be even stickier if left for a day or two coated in the sauce. To do this, pour about half the sauce into one or two ovenproof serving dishes. Sit the upturned puddings on the sauce, then pour the rest of the sauce over them. Cover with a loose tent of foil so that the sauce doesn’t smudge (no need to chill).
When ready to serve, heat oven to 180C/fan 160C/gas 4. Warm the puddings through, still covered, for 15-20 mins or until the sauce is bubbling. Serve them on their own, or with cream or custard.','https://www.themealdb.com/images/media/meals/xrptpq1483909204.jpg','Pudding,Desert,Cake,Dairy');
INSERT INTO "meal" VALUES(52794,'Vegan Chocolate Cake',11,1,45,'Simply mix all dry ingredients with wet ingredients and blend altogether. Bake for 45 min on 180 degrees. Decorate with some melted vegan chocolate ','https://www.themealdb.com/images/media/meals/qxutws1486978099.jpg','Vegan,Chocolate,Cake');
INSERT INTO "meal" VALUES(52795,'Chicken Handi',2,11,20,'Take a large pot or wok, big enough to cook all the chicken, and heat the oil in it. Once the oil is hot, add sliced onion and fry them until deep golden brown. Then take them out on a plate and set aside.
To the same pot, add the chopped garlic and sauté for a minute. Then add the chopped tomatoes and cook until tomatoes turn soft. This would take about 5 minutes.
Then return the fried onion to the pot and stir. Add ginger paste and sauté well.
Now add the cumin seeds, half of the coriander seeds and chopped green chillies. Give them a quick stir.
Next goes in the spices – turmeric powder and red chilli powder. Sauté the spices well for couple of minutes.
Add the chicken pieces to the wok, season it with salt to taste and cook the chicken covered on medium-low heat until the chicken is almost cooked through. This would take about 15 minutes. Slowly sautéing the chicken will enhance the flavor, so do not expedite this step by putting it on high heat.
When the oil separates from the spices, add the beaten yogurt keeping the heat on lowest so that the yogurt doesn’t split. Sprinkle the remaining coriander seeds and add half of the dried fenugreek leaves. Mix well.
Finally add the cream and give a final mix to combine everything well.
Sprinkle the remaining kasuri methi and garam masala and serve the chicken handi hot with naan or rotis. Enjoy!','https://www.themealdb.com/images/media/meals/wyxwsp1486979827.jpg',NULL);
INSERT INTO "meal" VALUES(52796,'Chicken Alfredo Primavera',2,13,31,'Heat 1 tablespoon of butter and 2 tablespoons of olive oil in a large skillet over medium-high heat. Season both sides of each chicken breast with seasoned salt and a pinch of pepper. Add the chicken to the skillet and cook for 5-7 minutes on each side, or until cooked through.  While the chicken is cooking, bring a large pot of water to a boil. Season the boiling water with a few generous pinches of kosher salt. Add the pasta and give it a stir. Cook, stirring occasionally, until al dente, about 12 minutes. Reserve 1/2 cup of  pasta water before draining the pasta.  Remove the chicken from the pan and transfer it to a cutting board; allow it to rest. Turn the heat down to medium and dd the remaining 1 tablespoon of butter and olive oil to the same pan you used to cook the chicken. Add the veggies (minus the garlic) and red pepper flakes to the pan and stir to coat with the oil and butter (refrain from seasoning with salt until the veggies are finished browning). Cook, stirring often, until the veggies are tender, about 5 minutes. Add the garlic and a generous pinch of salt and pepper to the pan and cook for 1 minute.  Deglaze the pan with the white wine. Continue to cook until the wine has reduced by half, about 3 minutes. Stir in the milk, heavy cream, and reserved pasta water. Bring the mixture to a gentle boil and allow to simmer and reduce for 2-3 minutes. Turn off the heat and add the Parmesan cheese and cooked pasta. Season with salt and pepper to taste. Garnish with Parmesan cheese and chopped parsley, if desired. ','https://www.themealdb.com/images/media/meals/syqypv1486981727.jpg','Pasta,Meat,Dairy');
INSERT INTO "meal" VALUES(52797,'Spicy North African Potato Salad',12,19,20,'Cook potatoes - place potatoes in a pot of cold water, and bring to the boil. Boil 20 minutes, or until potatoes are tender. You know they are cooked when you can stick a knife in them and the knife goes straight through.
Combine harissa spice, olive oil, salt and pepper and lemon juice in a small bowl and whisk until combined.
Once potatoes are cooked, drain water and roughly chop potatoes in half.
Add harissa mix and spring onions/green onions to potatoes and stir.
In a large salad bowl, lay out arugula/rocket.
Top with potato mix and toss.
Add fetta, mint and sprinkle over pine nuts.
Adjust salt and pepper to taste.','https://www.themealdb.com/images/media/meals/urtwux1486983078.jpg','Vegetarian,Spicy');
INSERT INTO "meal" VALUES(52802,'Fish pie',8,2,58,'01.Put the potatoes in a large pan of cold salted water and bring to the boil. Lower the heat, cover, then simmer gently for 15 minutes until tender. Drain, then return to the pan over a low heat for 30 seconds to drive off any excess water. Mash with 1 tbsp olive oil, then season.
02.Meanwhile put the milk in a large sauté pan, add the fish and bring to the boil. Remove from the heat, cover and stand for 3 minutes. Remove the fish (reserving the milk) and pat dry with kitchen paper, then gently flake into an ovenproof dish, discarding the skin and any bones.
03.Heat the remaining oil in a pan, stir in the flour and cook for 30 seconds. Gradually stir in 200-250ml of the reserved milk (discard the rest). Grate in nutmeg, season, then bubble until thick. Stir in the cream.
04.Preheat the oven to 190°C/fan170°C/gas 5. Grate the artichokes and add to the dish with the leek, prawns and herbs. Stir the lemon zest and juice into the sauce, then pour over. Mix gently with a wooden spoon.
05.Spoon the mash onto the fish mixture, then use a fork to make peaks, which will crisp and brown as it cooks. Sprinkle over the cheese, then bake for 35-40 minutes until golden and bubbling. Serve with wilted greens.','https://www.themealdb.com/images/media/meals/ysxwuq1487323065.jpg','Fish,Pie,Breakfast,Baking');
INSERT INTO "meal" VALUES(52803,'Beef Wellington',1,2,95,'Put the mushrooms into a food processor with some seasoning and pulse to a rough paste. Scrape the paste into a pan and cook over a high heat for about 10 mins, tossing frequently, to cook out the moisture from the mushrooms. Spread out on a plate to cool.
Heat in a frying pan and add a little olive oil. Season the beef and sear in the hot pan for 30 secs only on each side. (You don''t want to cook it at this stage, just colour it). Remove the beef from the pan and leave to cool, then brush all over with the mustard.
Lay a sheet of cling film on a work surface and arrange the Parma ham slices on it, in slightly overlapping rows. With a palette knife, spread the mushroom paste over the ham, then place the seared beef fillet in the middle. Keeping a tight hold of the cling film from the edge, neatly roll the Parma ham and mushrooms around the beef to form a tight barrel shape. Twist the ends of the cling film to secure. Chill for 15-20 mins to allow the beef to set and keep its shape.
Roll out the puff pastry on a floured surface to a large rectangle, the thickness of a £1 coin. Remove the cling film from the beef, then lay in the centre. Brush the surrounding pastry with egg yolk. Fold the ends over, the wrap the pastry around the beef, cutting off any excess. Turn over, so the seam is underneath, and place on a baking sheet. Brush over all the pastry with egg and chill for about 15 mins to let the pastry rest.
Heat the oven to 200C, 400F, gas 6.
Lightly score the pastry at 1cm intervals and glaze again with beaten egg yolk. Bake for 20 minutes, then lower the oven setting to 180C, 350F, gas 4 and cook for another 15 mins. Allow to rest for 10-15 mins before slicing and serving with the side dishes of your choice. The beef should still be pink in the centre when you serve it.','https://www.themealdb.com/images/media/meals/vvpprx1487325699.jpg','Meat,Stew');
INSERT INTO "meal" VALUES(52804,'Poutine',5,3,10,'Heat oil in a deep fryer or deep heavy skillet to 365°F (185°C).
Warm gravy in saucepan or microwave.
Place the fries into the hot oil, and cook until light brown, about 5 minutes.
Remove to a paper towel lined plate to drain.
Place the fries on a serving platter, and sprinkle the cheese over them.
Ladle gravy over the fries and cheese, and serve immediately.','https://www.themealdb.com/images/media/meals/uuyrrx1487327597.jpg','UnHealthy,Speciality,HangoverFood');
INSERT INTO "meal" VALUES(52805,'Lamb Biryani',4,11,39,'Grind the cashew, poppy seeds and cumin seeds into a smooth paste, using as little water as possible. Set aside. 

Deep fry the sliced onions when it is hot. Don’t overcrowd the oil. When the onions turn light brown, remove from oil and drain on paper towel. The fried onion will crisp up as it drains. Also fry the cashewnuts till golden brown. Set aside.

Wash the rice and soak in water for twenty minutes.
Meanwhile, take a big wide pan, add oil in medium heat, add the sliced onions, add the blended paste, to it add the green chillies, ginger garlic paste and garlic and fry for a minute.
Then add the tomatoes and sauté them well till they are cooked and not mushy.

Then to it add the red chilli powder, biryani powder, mint, coriander leaves and sauté them well.
Add the yogurt and mix well. I always move the skillet away from the heat when adding yogurt which prevents it from curdling.

Now after returning the skillet back to the stove, add the washed lamb and salt and ½ cup water and mix well. Cook for 1 hour and cook it covered in medium low heat or put it in a pressure cooker for 6 whistles. If the water is not drained totally, heat it by keeping it open.

Take another big pan, add thrice the cup of rice you use, and boil it. When it is boiling high, add the rice, salt and jeera and mix well. After 7 minutes exact or when the rice is 80% done. Switch off and drain the rice.

Now, the layering starts. To the lamb, pat and level it. Add the drained hot rice on the top of it. Garnish with fried onions, ghee, mint, coriander leaves and saffron dissolved in milk.

Cover the dish and bake in a 350f oven for 15 minutes or till the cooked but not mushy. Or cook in the stove medium heat for 12 minutes and lowest heat for 5 minutes. And switch off. Mix and serve hot!
Notes
1. If you are cooking in oven, do make sure to cook in a big oven safe pan and cover it tight and then keep in oven for the final step.
2. You can skip biryani masala if you don’t have and add just garam masala (1 tsp and red chilli powder – 3 tsp instead of 1 tsp)
3. If it is spicy in the end, squeeze some lemon, it will reduce the heat and enhance the flavors also.','https://www.themealdb.com/images/media/meals/xrttsx1487339558.jpg','Curry,Meat');
INSERT INTO "meal" VALUES(52806,'Tandoori chicken',2,11,18,'Mix the lemon juice with the paprika and red onions in a large shallow dish. Slash each chicken thigh three times, then turn them in the juice and set aside for 10 mins.
Mix all of the marinade ingredients together and pour over the chicken. Give everything a good mix, then cover and chill for at least 1 hr. This can be done up to a day in advance.
Heat the grill. Lift the chicken pieces onto a rack over a baking tray. Brush over a little oil and grill for 8 mins on each side or until lightly charred and completely cooked through.','https://www.themealdb.com/images/media/meals/qptpvt1487339892.jpg','Spicy,Meat');
INSERT INTO "meal" VALUES(52807,'Baingan Bharta',12,11,10,'Rinse the baingan (eggplant or aubergine) in water. Pat dry with a kitchen napkin. Apply some oil all over and
keep it for roasting on an open flame. You can also grill the baingan or roast in the oven. But then you won''t get
the smoky flavor of the baingan. Keep the eggplant turning after a 2 to 3 minutes on the flame, so that its evenly
cooked. You could also embed some garlic cloves in the baingan and then roast it.
2. Roast the aubergine till its completely cooked and tender. With a knife check the doneness. The knife should slid
easily in aubergines without any resistance. Remove the baingan and immerse in a bowl of water till it cools
down.
3. You can also do the dhungar technique of infusing charcoal smoky flavor in the baingan. This is an optional step.
Use natural charcoal for this method. Heat a small piece of charcoal on flame till it becomes smoking hot and red.
4. Make small cuts on the baingan with a knife. Place the red hot charcoal in the same plate where the roasted
aubergine is kept. Add a few drops of oil on the charcoal. The charcoal would begin to smoke.
5. As soon as smoke begins to release from the charcoal, cover the entire plate tightly with a large bowl. Allow the
charcoal smoke to get infused for 1 to 2 minutes. The more you do, the more smoky the baingan bharta will
become. I just keep for a minute. Alternatively, you can also do this dhungar method once the baingan bharta is
cooked, just like the way we do for Dal Tadka.
6. Peel the skin from the roasted and smoked eggplant.
7. Chop the cooked eggplant finely or you can even mash it.
8. In a kadai or pan, heat oil. Then add finely chopped onions and garlic.
9. Saute the onions till translucent. Don''t brown them.
10. Add chopped green chilies and saute for a minute.
11. Add the chopped tomatoes and mix it well.
12. Bhuno (saute) the tomatoes till the oil starts separating from the mixture.
13. Now add the red chili powder. Stir and mix well.
14. Add the chopped cooked baingan.
15. Stir and mix the chopped baingan very well with the onion­tomato masala mixture.
16. Season with salt. Stir and saute for some more 4 to 5 minutes more.
17. Finally stir in the coriander leaves with the baingan bharta or garnish it with them. Serve Baingan Bharta with
phulkas, rotis or chapatis. It goes well even with bread, toasted or grilled bread and plain rice or jeera rice.','https://www.themealdb.com/images/media/meals/urtpqw1487341253.jpg','Spicy,Bun,Calorific');
INSERT INTO "meal" VALUES(52808,'Lamb Rogan josh',4,11,65,'
Put the onions in a food processor and whizz until very finely chopped. Heat the oil in a large heavy-based pan, then fry the onion with the lid on, stirring every now and then, until it is really golden and soft. Add the garlic and ginger, then fry for 5 mins more.
Tip the curry paste, all the spices and the bay leaves into the pan, with the tomato purée. Stir well over the heat for about 30 secs, then add the meat and 300ml water. Stir to mix, turn down the heat, then add the yogurt.
Cover the pan, then gently simmer for 40-60 mins until the meat is tender and the sauce nice and thick. Serve scattered with coriander, with plain basmati or pilau rice.','https://www.themealdb.com/images/media/meals/vvstvq1487342592.jpg','Curry,Spicy,Alcoholic');
INSERT INTO "meal" VALUES(52809,'Recheado Masala Fish',8,11,70,'Soak all the spices, ginger, garlic, tamarind pulp and kashmiri chilies except oil in vinegar.
Add sugar and salt.
Also add turmeric powder.
Combine all nicely and marinate for 35-40 mins.
Grind the mixture until soft and smooth. Add more vinegar if required but ensure the paste has to be thick so add vinegar accordingly. If the masala paste is thin then it would not stick to the fish.
Rinse the fish slit from the center and give some incision from the top. You could see the fish below for clarity.
Now stuff the paste into the center and into the incision. Coat the entire fish with this paste. Marinate the fish for 30 mins.
Place oil in a shallow pan, once oil is quite hot shallow fry the stuffed mackerels.
Fry until golden brown from both sides
Serve the recheado mackerels hot with salad, lime wedges, rice and curry.
Notes
1. Ensure the masala paste is thick else the result won''t be good.
2. If you aren''t able to find kashmiri chilies then use bedgi chilies or kashmiri red chili powder.
3. You could use white vinegar or coconut vinegar.
4. Any left over paste could be stored in the fridge for future use.
5. Cinnamon could be avoided as it''s a strong spice used generally for meat or chicken.','https://www.themealdb.com/images/media/meals/uwxusv1487344500.jpg','Fish,Spicy');
INSERT INTO "meal" VALUES(52810,'Osso Buco alla Milanese',5,13,106,'Heat the oven to 300 degrees.
Dredging the shanks: pour the flour into a shallow dish (a pie plate works nicely). Season the veal shanks on all sides with salt and pepper. One at a time, roll the shanks around in the flour coat, and shake and pat the shank to remove any excuses flour. Discard the remaining flour.
Browning the shanks: put the oil and 1 tablespoon of the butter in a wide Dutch oven or heavy braising pot (6 to 7 quart) and heat over medium-high heat. When the butter has melted and the oil is shimmering, lower the shanks into the pot, flat side down; if the shanks won’t fit without touching one another, do this in batches. Brown the shanks, turning once with tongs, until both flat sides are well caramelized, about 5 minutes per side. If the butter-oil mixture starts to burn, lower the heat just a bit. Transfer the shanks to a large platter or tray and set aside.
The aromatics: pour off and discard the fat from the pot. Wipe out any burnt bits with a damp paper towel, being careful not to remove any delicious little caramelized bits. Ad the remaining 2 tablespoons butter to the pot and melt it over medium heat. When the butter has stopped foaming, add the onion, carrot, celery, and fennel. Season with salt and pepper, stir, and cook the vegetables until they begin to soften but do not brown, about 6 minutes. Stir in the garlic, orange zest, marjoram, and bay leaf, and stew for another minute or two.
The braising liquid: add the wine, increase the heat to high, and bring to a boil. Boil, stirring occasionally, to reduce the wine by about half, 5 minutes. Add the stock and tomatoes, with their juice, and boil again to reduce the liquid to about 1 cup total, about 10 minutes.
The braise: Place the shanks in the pot so that they are sitting with the exposed bone facing up, and pour over any juices that accumulated as they sat. Cover with parchment paper, pressing down so the parchment nearly touches the veal and the edges hang over the sides of the pot by about an inch. Cover tightly with the lid, and slide into the lower part of the oven to braise at a gentle simmer. Check the pot after the first 15 minutes, and if the liquid is simmering too aggressively, lower the oven heat by 10 or 15 degrees. Continue braising, turning the shanks and spooning some pan juices over the top after the first 40 minutes, until the meat is completely tender and pulling away from the bone, about 2 hours.
The gremolata: While the shanks are braising, stir together the garlic, parsley, and lemon zest in a small bowl. Cover with plastic wrap and set aside in a cool place (or the refrigerator, if your kitchen is very warm.)
The finish: When the veal is fork-tender and falling away from the bone, remove the lid and sprinkle over half of the gremolata. Return the veal to the oven, uncovered, for another 15 minutes to caramelize it some.
Using a slotted spatula or spoon, carefully lift the shanks from the braising liquid, doing your best to keep them intact. The shanks will be very tender and threatening to fall into pieces, and the marrow will be wobbly inside the bones, so this can be a bit tricky. But if they do break apart, don’t worry, the flavor won’t suffer at all. Arrange the shanks on a serving platter or other large plate, without stacking, and cover with foil to keep warm.
Finishing the sauce: Set the braising pot on top of the stove and evaluate the sauce: if there is a visible layer of fat floating on the surface, use a large spoon to skim it off and discard it. Taste the sauce for concentration of flavor. If it tastes a bit weak or flat, bring it to a boil over high heat, and boil to reduce the volume and intensify the flavor for 5 to 10 minutes. Taste again for salt and pepper. If the sauce wants more zip, stir in a teaspoon or two of the remaining gremolata.
Portioning the veal shanks: if the shanks are reasonably sized, serve one per person. If the shanks are gargantuan or you’re dealing with modest appetites, pull apart the larger shanks, separating them at their natural seams, and serve smaller amounts. Be sure to give the marrow bones to whomever prizes them most.
Serving: Arrange the veal shanks on warm dinner plates accompanied by the risotto, if serving. Just before carrying the plates to the table, sprinkle on the remaining gremolata and then spoon over a generous amount of sauce – the contact with the hot liquid will aromatize the gremolata and perk up everyone’s appetite with the whiff of garlic and lemon.','https://www.themealdb.com/images/media/meals/wwuqvt1487345467.jpg',NULL);
INSERT INTO "meal" VALUES(52811,'Ribollita',12,13,45,'Put 2 tablespoons of the oil in a large pot over medium heat. When it’s hot, add onion, carrot, celery and garlic; sprinkle with salt and pepper and cook, stirring occasionally, until vegetables are soft, 5 to 10 minutes.
Heat the oven to 500 degrees. Drain the beans; if they’re canned, rinse them as well. Add them to the pot along with tomatoes and their juices and stock, rosemary and thyme. Bring to a boil, then reduce heat so the soup bubbles steadily; cover and cook, stirring once or twice to break up the tomatoes, until the flavors meld, 15 to 20 minutes.
Fish out and discard rosemary and thyme stems, if you like, and stir in kale. Taste and adjust seasoning. Lay bread slices on top of the stew so they cover the top and overlap as little as possible. Scatter red onion slices over the top, drizzle with the remaining 3 tablespoons oil and sprinkle with Parmesan.
Put the pot in the oven and bake until the bread, onions and cheese are browned and crisp, 10 to 15 minutes. (If your pot fits under the broiler, you can also brown the top there.) Divide the soup and bread among 4 bowls and serve.','https://www.themealdb.com/images/media/meals/xrrwpx1487347049.jpg','Vegetarian');
INSERT INTO "meal" VALUES(52812,'Beef Brisket Pot Roast',1,1,46,'1 Prepare the brisket for cooking: On one side of the brisket there should be a layer of fat, which you want. If there are any large chunks of fat, cut them off and discard them. Large pieces of fat will not be able to render out completely.
Using a sharp knife, score the fat in parallel lines, about 3/4-inch apart. Slice through the fat, not the beef. Repeat in the opposite direction to make a cross-hatch pattern.
Salt the brisket well and let it sit at room temperature for 30 minutes.
 
2 Sear the brisket: You''ll need an oven-proof, thick-bottomed pot with a cover, or Dutch oven, that is just wide enough to hold the brisket roast with a little room for the onions.
Pat the brisket dry and place it, fatty side down, into the pot and place it on medium high heat. Cook for 5-8 minutes, lightly sizzling, until the fat side is nicely browned. (If the roast seems to be cooking too fast, turn the heat down to medium. You want a steady sizzle, not a raging sear.)
Turn the brisket over and cook for a few minutes more to brown the other side.

3 Sauté the onions and garlic: When the brisket has browned, remove it from the pot and set aside. There should be a couple tablespoons of fat rendered in the pot, if not, add some olive oil.
Add the chopped onions and increase the heat to high. Sprinkle a little salt on the onions. Sauté, stirring often, until the onions are lightly browned, 5-8 minutes. Stir in the garlic and cook 1-2 more minutes.
 
4 Return brisket to pot, add herbs, stock, bring to simmer, cover, cook in oven: Preheat the oven to 300°F. Use kitchen twine to tie together the bay leaves, rosemary and thyme.
Move the onions and garlic to the sides of the pot and nestle the brisket inside. Add the beef stock and the tied-up herbs. Bring the stock to a boil on the stovetop.
Cover the pot, place the pot in the 300°F oven and cook for 3 hours. Carefully flip the brisket every hour so it cooks evenly.
 
5 Add carrots, continue to cook: After 3 hours, add the carrots. Cover the pot and cook for 1 hour more, or until the carrots are cooked through and the brisket is falling-apart tender.
6 Remove brisket to cutting board, tent with foil: When the brisket is falling-apart tender, take the pot out of the oven and remove the brisket to a cutting board. Cover it with foil. Pull out and discard the herbs.
7 Make sauce (optional): At this point you have two options. You can serve as is, or you can make a sauce with the drippings and some of the onions. If you serve as is, skip this step.
To make a sauce, remove the carrots and half of the onions, set aside and cover them with foil. Pour the ingredients that are remaining into the pot into a blender, and purée until smooth. If you want, add 1 tablespoon of mustard to the mix. Put into a small pot and keep warm.
8 Slice the meat across the grain: Notice the lines of the muscle fibers of the roast. This is the "grain" of the meat. Slice the meat perpendicular to these lines, or across the grain (cutting this way further tenderizes the meat), in 1/4-inch to 1/2-inch slices.
Serve with the onions, carrots and gravy. Serve with mashed, roasted or boiled potatoes, egg noodles or polenta.','https://www.themealdb.com/images/media/meals/ursuup1487348423.jpg','Meat');
INSERT INTO "meal" VALUES(52813,'Kentucky Fried Chicken',2,1,19,'Preheat fryer to 350°F. Thoroughly mix together all the spice mix ingredients.
Combine spice mix with flour, brown sugar and salt.
Dip chicken pieces in egg white to lightly coat them, then transfer to flour mixture. Turn a few times and make sure the flour mix is really stuck to the chicken. Repeat with all the chicken pieces.
Let chicken pieces rest for 5 minutes so crust has a chance to dry a bit.
Fry chicken in batches. Breasts and wings should take 12-14 minutes, and legs and thighs will need a few more minutes. Chicken pieces are done when a meat thermometer inserted into the thickest part reads 165°F.
Let chicken drain on a few paper towels when it comes out of the fryer. Serve hot.','https://www.themealdb.com/images/media/meals/xqusqy1487348868.jpg','Meat,Spicy');
INSERT INTO "meal" VALUES(52814,'Thai Green Curry',2,24,16,'Put the potatoes in a pan of boiling water and cook for 5 minutes. Throw in the beans and cook for a further 3 minutes, by which time both should be just tender but not too soft. Drain and put to one side.
In a wok or large frying pan, heat the oil until very hot, then drop in the garlic and cook until golden, this should take only a few seconds. Don’t let it go very dark or it will spoil the taste. Spoon in the curry paste and stir it around for a few seconds to begin to cook the spices and release all the flavours. Next, pour in the coconut milk and let it come to a bubble.
Stir in the fish sauce and sugar, then the pieces of chicken. Turn the heat down to a simmer and cook, covered, for about 8 minutes until the chicken is cooked.
Tip in the potatoes and beans and let them warm through in the hot coconut milk, then add a lovely citrussy flavour by stirring in the shredded lime leaves (or lime zest). The basil leaves go in next, but only leave them briefly on the heat or they will quickly lose their brightness. Scatter with the lime garnish and serve immediately with boiled rice.','https://www.themealdb.com/images/media/meals/sstssx1487349585.jpg','Curry,Mild');
INSERT INTO "meal" VALUES(52815,'French Lentils With Garlic and Thyme',5,9,35,'Place a large saucepan over medium heat and add oil. When hot, add chopped vegetables and sauté until softened, 5 to 10 minutes.
Add 6 cups water, lentils, thyme, bay leaves and salt. Bring to a boil, then reduce to a fast simmer.
Simmer lentils until they are tender and have absorbed most of the water, 20 to 25 minutes. If necessary, drain any excess water after lentils have cooked. Serve immediately, or allow them to cool and reheat later.
For a fuller taste, use some chicken stock and reduce the water by the same amount.','https://www.themealdb.com/images/media/meals/vwwspt1487394060.jpg','Pulse');
INSERT INTO "meal" VALUES(52816,'Roasted Eggplant With Tahini, Pine Nuts, and Lentils',12,1,73,'
For the Lentils: Adjust oven rack to center position and preheat oven to 450°F to prepare for roasting eggplant. Meanwhile, heat 2 tablespoons olive oil in a medium saucepan over medium heat until shimmering. Add carrots, celery, and onion and cook, stirring, until softened but not browned, about 4 minutes. Add garlic and cook, stirring, until fragrant, about 30 seconds. Add lentils, bay leaves, stock or water, and a pinch of salt. Bring to a simmer, cover with the lid partially ajar, and cook until lentils are tender, about 30 minutes. (Top up with water if lentils are at any point not fully submerged.) Remove lid, stir in vinegar, and reduce until lentils are moist but not soupy. Season to taste with salt and pepper, cover, and keep warm until ready to serve.

2.
For the Eggplant: While lentils cook, cut each eggplant in half. Score flesh with the tip of a paring knife in a cross-hatch pattern at 1-inch intervals. Transfer to a foil-lined rimmed baking sheet, cut side up, and brush each eggplant half with 1 tablespoon oil, letting each brushstroke be fully absorbed before brushing with more. Season with salt and pepper. Place a rosemary sprig on top of each one. Transfer to oven and roast until completely tender and well charred, 25 to 35 minutes. Remove from oven and discard rosemary.

3.
To Serve: Heat 2 tablespoons olive oil and pine nuts in a medium skillet set over medium heat. Cook, tossing nuts frequently, until golden brown and aromatic, about 4 minutes. Transfer to a bowl to halt cooking. Stir half of parsley and rosemary into lentils and transfer to a serving platter. Arrange eggplant halves on top. Spread a few tablespoons of tahini sauce over each eggplant half and sprinkle with pine nuts. Sprinkle with remaining parsley and rosemary, drizzle with additional olive oil, and serve.','https://www.themealdb.com/images/media/meals/ysqrus1487425681.jpg','Vegetarian,Pulse,Nutty');
INSERT INTO "meal" VALUES(52817,'Stovetop Eggplant With Harissa, Chickpeas, and Cumin Yogurt',12,1,25,'Heat the oil in a 12-inch skillet over high heat until shimmering. Add the eggplants and lower the heat to medium. Season with salt and pepper as you rotate the eggplants, browning them on all sides. Continue to cook, turning regularly, until a fork inserted into the eggplant meets no resistance (you may have to stand them up on their fat end to finish cooking the thickest parts), about 20 minutes, lowering the heat and sprinkling water into the pan as necessary if the eggplants threaten to burn or smoke excessively.

2.
Mix the harissa, chickpeas and tomatoes together, then add to the eggplants. Cook until the tomatoes have blistered and broken down, about 5 minutes more. Season with salt and pepper and add water as necessary to thin to a saucy consistency. Meanwhile, combine the yogurt and cumin in a serving bowl. Season with salt and pepper.

3.
Top the eggplant mixture with the parsley, drizzle with more extra virgin olive oil, and serve with the yogurt on the side.','https://www.themealdb.com/images/media/meals/yqwtvu1487426027.jpg','Vegetarian');
INSERT INTO "meal" VALUES(52818,'Chicken Fajita Mac and Cheese',2,1,20,'Fry your onion, peppers and garlic in olive oil until nicely translucent. Make a well in your veg and add your chicken. Add your seasoning and salt. Allow to colour slightly.
Add your cream, stock and macaroni.
Cook on low for 20 minutes. Add your cheeses, stir to combine.
Top with roasted peppers and parsley.','https://www.themealdb.com/images/media/meals/qrqywr1503066605.jpg','Pasta,Cheasy,Meat');
INSERT INTO "meal" VALUES(52819,'Cajun spiced fish tacos',8,18,10,'Cooking in a cajun spice and cayenne pepper marinade makes this fish super succulent and flavoursome. Top with a zesty dressing and serve in a tortilla for a quick, fuss-free main that''s delightfully summery.

On a large plate, mix the cajun spice and cayenne pepper with a little seasoning and use to coat the fish all over.

Heat a little oil in a frying pan, add in the fish and cook over a medium heat until golden. Reduce the heat and continue frying until the fish is cooked through, about 10 minutes. Cook in batches if you don’t have enough room in the pan.

Meanwhile, prepare the dressing by combining all the ingredients with a little seasoning.
Soften the tortillas by heating in the microwave for 5-10 seconds. Pile high with the avocado, lettuce and spring onion, add a spoonful of salsa, top with large flakes of fish and drizzle over the dressing.','https://www.themealdb.com/images/media/meals/uvuyxu1503067369.jpg','Spicy,Fish');
INSERT INTO "meal" VALUES(52820,'Katsu Chicken curry',2,15,127,'Prep:15min  ›  Cook:30min  ›  Ready in:45min 

For the curry sauce: Heat oil in medium non-stick saucepan, add onion and garlic and cook until softened. Stir in carrots and cook over low heat for 10 to 12 minutes.
Add flour and curry powder; cook for 1 minute. Gradually stir in stock until combined; add honey, soy sauce and bay leaf. Slowly bring to the boil.
Turn down heat and simmer for 20 minutes or until sauce thickens but is still of pouring consistency. Stir in garam masala. Pour the curry sauce through a sieve; return to saucepan and keep on low heat until ready to serve.
For the chicken: Season both sides of chicken breasts with salt and pepper. Place flour, egg and breadcrumbs in separate bowls and arrange in a row. Coat the chicken breasts in flour, then dip them into the egg, then coat in breadcrumbs, making sure you cover both sides.
Heat oil in large frying pan over medium-high heat. Place chicken into hot oil and cook until golden brown, about 3 or 4 minutes each side. Once cooked, place on kitchen paper to absorb excess oil.
Pour curry sauce over chicken, serve with white rice and enjoy!','https://www.themealdb.com/images/media/meals/vwrpps1503068729.jpg','Curry,Meat');
INSERT INTO "meal" VALUES(52821,'Laksa King Prawn Noodles',8,17,10,'Heat the oil in a medium saucepan and add the chilli. Cook for 1 min, then add the curry paste, stir and cook for 1 min more. Dissolve the stock cube in a large jug in 700ml boiling water, then pour into the pan and stir to combine. Tip in the coconut milk and bring to the boil.
Add the fish sauce and a little seasoning. Toss in the noodles and cook for a further 3-4 mins until softening. Squeeze in the lime juice, add the prawns and cook through until warm, about 2-3 mins. Scatter over some of the coriander.
Serve in bowls with the remaining coriander and lime wedges on top for squeezing over.','https://www.themealdb.com/images/media/meals/rvypwy1503069308.jpg','Shellfish,Seafood');
INSERT INTO "meal" VALUES(52822,'Toad In The Hole',7,2,35,'Preheat the oven to 200°C/fan180°C/gas 6. fry sausages in a non-stick pan until browned.
Drizzle vegetable oil in a 30cm x 25cm x 6cm deep roasting tray and heat in the oven for 5 minutes.
Put the plain flour in a bowl, crack in the medium free-range eggs, then stir in the grated horseradish. Gradually beat in the semi-skimmed milk. Season.
Put the sausages into the hot roasting tray and pour over the batter. Top with cherry tomatoes on the vine and cook for 30 minutes until puffed and golden.','https://www.themealdb.com/images/media/meals/ytuvwr1503070420.jpg',NULL);
INSERT INTO "meal" VALUES(52823,'Salmon Prawn Risotto',8,13,10,'Melt the butter in a thick-based pan and gently cook the onion without colour until it is soft.
Add the rice and stir to coat all the grains in the butter
Add the wine and cook gently stirring until it is absorbed
Gradually add the hot stock, stirring until each addition is absorbed. Keep stirring until the rice is tender
Season with the lemon juice and zest, and pepper to taste. (there will probably be sufficient saltiness from the salmon to not need to add salt) Stir gently to heat through
Serve scattered with the Parmesan and seasonal vegetables.
Grill the salmon and gently place onto the risotto with the prawns and asparagus','https://www.themealdb.com/images/media/meals/xxrxux1503070723.jpg','Fish');
INSERT INTO "meal" VALUES(52824,'Beef Sunday Roast',1,2,70,'Cook the Broccoli and Carrots in a pan of boiling water until tender.

Roast the Beef and Potatoes in the oven for 45mins, the potatoes may need to be checked regularly to not overcook.

To make the Yorkshire puddings:
Heat oven to 230C/fan 210C/gas 8. Drizzle a little sunflower oil evenly into 2 x 4-hole Yorkshire pudding tins or a 12-hole non-stick muffin tin and place in the oven to heat through
To make the batter, tip 140g plain flour into a bowl and beat in four eggs until smooth. Gradually add 200ml milk and carry on beating until the mix is completely lump-free. Season with salt and pepper. Pour the batter into a jug, then remove the hot tins from the oven. Carefully and evenly pour the batter into the holes. Place the tins back in the oven and leave undisturbed for 20-25 mins until the puddings have puffed up and browned. Serve immediately.

Plate up and add the Gravy as desired.','https://www.themealdb.com/images/media/meals/ssrrrs1503664277.jpg','MainMeal');
INSERT INTO "meal" VALUES(52826,'Braised Beef Chilli',1,18,10,'Preheat the oven to 120C/225F/gas mark 1.

Take the meat out of the fridge to de-chill. Pulse the onions and garlic in a food processor until finely chopped. Heat 2 tbsp olive oil in a large casserole and sear the meat on all sides until golden.

Set to one side and add another small slug of oil to brown the chorizo. Remove and add the onion and garlic, spices, herbs and chillies then cook until soft in the chorizo oil. Season with salt and pepper and add the vinegar, tomatoes, ketchup and sugar.

Put all the meat back into the pot with 400ml water (or red wine if you prefer), bring up to a simmer and cook, covered, in the low oven.

After 2 hours, check the meat and add the beans. Cook for a further hour and just before serving, pull the meat apart with a pair of forks.','https://www.themealdb.com/images/media/meals/uuqvwu1504629254.jpg',NULL);
INSERT INTO "meal" VALUES(52827,'Massaman Beef curry',1,24,10,'Heat oven to 200C/180C fan/gas 6, then roast the peanuts on a baking tray for 5 mins until golden brown. When cool enough to handle, roughly chop. Reduce oven to 180C/160C fan/gas 4.
Heat 2 tbsp coconut cream in a large casserole dish with a lid. Add the curry paste and fry for 1 min, then stir in the beef and fry until well coated and sealed. Stir in the rest of the coconut with half a can of water, the potatoes, onion, lime leaves, cinnamon, tamarind, sugar, fish sauce and most of the peanuts. Bring to a simmer, then cover and cook for 2 hrs in the oven until the beef is tender.
Sprinkle with sliced chilli and the remaining peanuts, then serve straight from the dish with jasmine rice.','https://www.themealdb.com/images/media/meals/tvttqv1504640475.jpg','Curry');
INSERT INTO "meal" VALUES(52828,'Vietnamese Grilled Pork (bun-thit-nuong)',7,29,15,'Slice the uncooked pork thinly, about ⅛". It helps to slightly freeze it (optional).
Mince garlic and shallots. Mix in a bowl with sugar, fish sauce, thick soy sauce, pepper, and oil until sugar dissolves.
Marinate the meat for 1 hour, or overnight for better results.
Bake the pork at 375F for 10-15 minutes or until about 80% cooked. Finish cooking by broiling in the oven until a nice golden brown color develops, flipping the pieces midway.
Assemble your bowl with veggies, noodles, and garnish. Many like to mix the whole bowl up and pour the fish sauce on top, but I like to make individual bites and sauce it slowly.','https://www.themealdb.com/images/media/meals/qqwypw1504642429.jpg',NULL);
INSERT INTO "meal" VALUES(52829,'Grilled Mac and Cheese Sandwich',6,1,21,'Make the mac and cheese

1. Bring a medium saucepan of generously salted water (you want it to taste like seawater) to a boil. Add the pasta and cook, stirring occasionally, until al dente, 8 to 10 minutes, or according to the package directions. The pasta should be tender but still chewy.
2. While the pasta is cooking, in a small bowl, whisk together the flour, mustard powder, garlic powder, salt, black pepper, and cayenne pepper.
3. Drain the pasta in a colander. Place the empty pasta pan (no need to wash it) over low heat and add the butter. When the butter has melted, whisk in the flour mixture and continue to cook, whisking frequently, until the mixture is beginning to brown and has a pleasant, nutty aroma, about 1 minute. Watch carefully so it does not scorch on the bottom of the pan.
4. Slowly whisk the milk and cream into the flour mixture until everything is really well combined. Cook, whisking constantly, until the sauce is heated through and just begins to thicken, about 2 minutes. Remove from the heat. Gradually add the cheese while stirring constantly with a wooden spoon or silicone spatula and keep stirring until the cheese has melted into the sauce. Then stir in the drained cooked pasta.
5. Line a 9-by-13-inch (23-by-33-centimeter) rimmed baking sheet with parchment paper or aluminum foil. Coat the paper or foil with nonstick cooking spray or slick it with butter. Pour the warm mac and cheese onto the prepared baking sheet and spread it evenly with a spatula. Coat another piece of parchment paper with cooking spray or butter and place it, oiled or buttered side down, directly on the surface of the mac and cheese. Refrigerate until cool and firm, about 1 hour.

Make the grilled cheese
6. Heat a large cast-iron or nonstick skillet over medium-low heat.
7. In a small bowl, stir together the 4 tablespoons (55 grams) butter and garlic powder until well blended.
8. Remove the mac and cheese from the refrigerator and peel off the top layer of parchment paper. Carefully cut into 8 equal pieces. Each piece will make 1 grilled mac and cheese sandwich. (You can stash each individual portion in a double layer of resealable plastic bags and refrigerate for up to 3 days or freeze it for up to 1 month.)
9. Spread 3/4 teaspoon garlic butter on one side of each bread slice. Place half of the slices, buttered-side down, on a clean cutting board. Top each with one slice of Cheddar, then 1 piece of the mac and cheese. (Transfer from the baking sheet by scooting your hand or a spatula under each piece of mac and cheese and then flipping it over onto a sandwich.) Place 1 slice of Jack on top of each. Finish with the remaining bread slices, buttered-side up.
10. Using a wide spatula, place as many sandwiches in the pan as will fit without crowding it. Cover and cook until the bottoms are nicely browned, about 4 minutes. Turn and cook until the second sides are browned, the cheese is melted, and the mac and cheese is heated through, about 4 minutes more.
11. Repeat with the remaining ingredients. Cut the sandwiches in half, if desired, and serve.','https://www.themealdb.com/images/media/meals/xutquv1505330523.jpg',NULL);
INSERT INTO "meal" VALUES(52830,'Crock Pot Chicken Baked Tacos',2,18,15,'Put the uncooked chicken breasts in the crock pot. Pour the full bottle of salad dressing over the chicken. Sprinkle the rest of the ingredients over the top and mix them in a bit with a spoon.
Cover your crock pot with the lid and cook on high for 4 hours.
Remove all the chicken breasts from the crock pot and let cool.
Shred the chicken breasts and move to a glass bowl.
Pour most of the liquid over the shredded chicken.
FOR THE TACOS:
Make the guacamole sauce by mixing the avocado and green salsa together. Pour the guacamole mixture through a strainer until smooth and transfer to a squeeze bottle. Cut the tip off the lid of the squeeze bottle to make the opening more wide if needed.
Make the sour cream sauce by mixing the sour cream and milk together until you get a more liquid sour cream sauce. Transfer to a squeeze bottle.
In a 9x 13 glass baking dish, fill all 12+ tacos with a layer of refried beans, cooked chicken and shredded cheese.
Bake at 450 for 10-15 minutes just until the cheese is melted and bubbling.
Out of the oven top all the tacos with the sliced grape tomaotes, jalapeno and cilantro.
Finish with a drizzle of guacamole and sour cream.
Enjoy!','https://www.themealdb.com/images/media/meals/ypxvwv1505333929.jpg',NULL);
INSERT INTO "meal" VALUES(52831,'Chicken Karaage',2,15,10,'Add the ginger, garlic, soy sauce, sake and sugar to a bowl and whisk to combine. Add the chicken, then stir to coat evenly. Cover and refrigerate for at least 1 hour.

Add 1 inch of vegetable oil to a heavy bottomed pot and heat until the oil reaches 360 degrees F. Line a wire rack with 2 sheets of paper towels and get your tongs out. Put the potato starch in a bowl

Add a handful of chicken to the potato starch and toss to coat each piece evenly.

Fry the karaage in batches until the exterior is a medium brown and the chicken is cooked through. Transfer the fried chicken to the paper towel lined rack. If you want the karaage to stay crispy longer, you can fry the chicken a second time, until it''s a darker color after it''s cooled off once. Serve with lemon wedges.','https://www.themealdb.com/images/media/meals/tyywsw1505930373.jpg',NULL);
INSERT INTO "meal" VALUES(52832,'Coq au vin',2,9,68,'Heat 1 tbsp of the oil in a large, heavy-based saucepan or flameproof dish. Tip in the bacon and fry until crisp. Remove and drain on kitchen paper. Add the shallots to the pan and fry, stirring or shaking the pan often, for 5-8 mins until well browned all over. Remove and set aside with the bacon.
Pat the chicken pieces dry with kitchen paper. Pour the remaining oil into the pan, then fry half the chicken pieces, turning regularly, for 5-8 mins until well browned. Remove, then repeat with the remaining chicken. Remove and set aside.
Scatter in the garlic and fry briefly, then, with the heat medium-high, pour in the brandy or Cognac, stirring the bottom of the pan to deglaze. The alcohol should sizzle and start to evaporate so there is not much left.
Return the chicken legs and thighs to the pan along with any juices, then pour in a little of the wine, stirring the bottom of the pan again. Stir in the rest of the wine, the stock and tomato purée, drop in the bouquet garni, season with pepper and a pinch of salt, then return the bacon and shallots to the pan. Cover, lower the heat to a gentle simmer, add the chicken breasts and cook for 50 mins-1hr.
Just before ready to serve, heat the oil for the mushrooms in a large non-stick frying pan. Add the mushrooms and fry over a high heat for a few mins until golden. Remove and keep warm.
Lift the chicken, shallots and bacon from the pan and transfer to a warmed serving dish. Remove the bouquet garni. To make the thickener, mix the flour, olive oil and butter in a small bowl using the back of a teaspoon. Bring the wine mixture to a gentle boil, then gradually drop in small pieces of the thickener, whisking each piece in using a wire whisk. Simmer for 1-2 mins. Scatter the mushrooms over the chicken, then pour over the wine sauce. Garnish with chopped parsley.','https://www.themealdb.com/images/media/meals/qstyvs1505931190.jpg',NULL);
INSERT INTO "meal" VALUES(52833,'Salted Caramel Cheescake',3,1,10,'1) Blitz the biscuits and the pretzels in a food processor and mix the biscuits with the melted butter. Spread on the bottom of an 8″/20cm Deep Springform Tin and press down firmly. Leave to set in the fridge whilst you make the rest!

2) Using an electric mixer, I use my KitchenAid with the whisk attachment, whisk together the cream cheese, vanilla, and icing sugar until smooth and then add the caramel and whisk again until smooth and lump free – this could take a couple of minutes, I whisk it at half speed so not too quick or slow!

3) Pour in the double cream & Salt flakes and continue to whisk for a couple of minutes until its very thick and mousse like (I mix it on a medium speed, level 6/10) – Now this could take up to 5 minutes depending on your mixer, but you seriously have to stick at it – it will hold itself completely when finished mixing (like a meringue does!) If you don’t mix it enough it will not set well enough, but don’t get impatient and whisk it really quick because that’ll make it split! Spread over the biscuit base and leave to set in the fridge overnight.

4) Remove the Cheesecake from the tin carefully and decorate the cheesecake – I drizzled over some of the spare caramel, and then some Toffee Popcorn and more Pretzels!','https://www.themealdb.com/images/media/meals/xqrwyr1511133646.jpg',NULL);
INSERT INTO "meal" VALUES(52834,'Beef stroganoff',1,22,32,'Heat the olive oil in a non-stick frying pan then add the sliced onion and cook on a medium heat until completely softened, so around 15 mins, adding a little splash of water if they start to stick at all. Crush in the garlic and cook for a 2-3 mins further, then add the butter. Once the butter is foaming a little, add the mushrooms and cook for around 5 mins until completely softened. Season everything well, then tip onto a plate.
Tip the flour into a bowl with a big pinch of salt and pepper, then toss the steak in the seasoned flour. Add the steak pieces to the pan, splashing in a little oil if the pan looks particularly dry, and fry for 3-4 mins, until well coloured. Tip the onions and mushrooms back into the pan. Whisk the crème fraîche, mustard and beef stock together, then pour into the pan. Cook over a medium heat for around 5 mins. Scatter with parsley, then serve with pappardelle or rice.','https://www.themealdb.com/images/media/meals/svprys1511176755.jpg',NULL);
INSERT INTO "meal" VALUES(52835,'Fettucine alfredo',6,13,10,'In a medium saucepan, stir the clotted cream, butter and cornflour over a low-ish heat and bring to a low simmer. Turn off the heat and keep warm.
Meanwhile, put the cheese and nutmeg in a small bowl and add a good grinding of black pepper, then stir everything together (don’t add any salt at this stage).
Put the pasta in another pan with 2 tsp salt, pour over some boiling water and cook following pack instructions (usually 3-4 mins). When cooked, scoop some of the cooking water into a heatproof jug or mug and drain the pasta, but not too thoroughly.
Add the pasta to the pan with the clotted cream mixture, then sprinkle over the cheese and gently fold everything together over a low heat using a rubber spatula. When combined, splash in 3 tbsp of the cooking water. At first, the pasta will look wet and sloppy: keep stirring until the water is absorbed and the sauce is glossy. Check the seasoning before transferring to heated bowls. Sprinkle over some chives or parsley, then serve immediately.','https://www.themealdb.com/images/media/meals/uquqtu1511178042.jpg',NULL);
INSERT INTO "meal" VALUES(52836,'Seafood fideuà',8,23,39,'Boil the kettle. Empty the mussels into a colander and run under cold water. Throw away any with broken shells. Pick through the shells, tapping each one on the side of the sink – they should be closed or should slowly close when tapped – if they stay open, throw them away. If any of the shells still have barnacles or stringy beards attached, pull them off with a cutlery knife and rinse the shells well. Keep in the colander, covered with a cold, damp cloth, until you’re ready to cook. Peel the prawn shells on the body section only – leave the heads and tails intact. Score down the backs and pull out any gritty entrails. Chill until you’re ready to cook.
Put the saffron in a small cup, cover with 50ml kettle-hot water and set aside for 10 mins. If using vermicelli, put in a bowl and crush to little pieces (about 1cm long) with your hands.
Heat the oil in a large frying pan with at least a 3cm lip, or a 40cm paella pan. Add the onion and stir around the pan for 5 mins until soft. Add the garlic and cook for 1 min more, then tip in the vermicelli and cook for 5 mins, stirring from time to time, until the vermicelli is toasted brown. Stir in the paprika.
Keeping the heat moderate, stir through the monkfish, squid and saffron with its water, seasoning well. Spread the ingredients out in an even layer, then pour over the hot stock and scatter the tomatoes on top. Bring to a simmer, then cover the whole dish with a tight-fitting lid (or foil). Turn the heat to medium and cook for 6 mins.
Uncover and stir to incorporate the dry top layer of pasta. Push the mussels into the pasta so the hinges are buried in the bottom of the dish, and they stand straight up. Arrange the prawns on top, cover tightly and cook for another 6 mins or until the mussels are open, the prawns are pink and the pasta is cooked through. Leave to simmer for another 2-3 mins to cook off most of the remaining liquid (leave a little in the pan to prevent the pasta from sticking together). Allow to sit for 2-3 mins, then squeeze over the lemon juice and arrange the wedges on top. Scatter with parsley before serving.','https://www.themealdb.com/images/media/meals/wqqvyq1511179730.jpg',NULL);
INSERT INTO "meal" VALUES(52837,'Pilchard puttanesca',6,13,10,'Cook the pasta following pack instructions. Heat the oil in a non-stick frying pan and cook the onion, garlic and chilli for 3-4 mins to soften. Stir in the tomato purée and cook for 1 min, then add the pilchards with their sauce. Cook, breaking up the fish with a wooden spoon, then add the olives and continue to cook for a few more mins.

Drain the pasta and add to the pan with 2-3 tbsp of the cooking water. Toss everything together well, then divide between plates and serve, scattered with Parmesan.','https://www.themealdb.com/images/media/meals/vvtvtr1511180578.jpg',NULL);
INSERT INTO "meal" VALUES(52838,'Venetian Duck Ragu',6,13,32,'Heat the oil in a large pan. Add the duck legs and brown on all sides for about 10 mins. Remove to a plate and set aside. Add the onions to the pan and cook for 5 mins until softened. Add the garlic and cook for a further 1 min, then stir in the cinnamon and flour and cook for a further min. Return the duck to the pan, add the wine, tomatoes, stock, herbs, sugar and seasoning. Bring to a simmer, then lower the heat, cover with a lid and cook for 2 hrs, stirring every now and then.
Carefully lift the duck legs out of the sauce and place on a plate – they will be very tender so try not to lose any of the meat. Pull off and discard the fat, then shred the meat with 2 forks and discard the bones. Add the meat back to the sauce with the milk and simmer, uncovered, for a further 10-15 mins while you cook the pasta.
Cook the pasta following pack instructions, then drain, reserving a cup of the pasta water, and add the pasta to the ragu. Stir to coat all the pasta in the sauce and cook for 1 min more, adding a splash of cooking liquid if it looks dry. Serve with grated Parmesan, if you like.','https://www.themealdb.com/images/media/meals/qvrwpt1511181864.jpg',NULL);
INSERT INTO "meal" VALUES(52839,'Chilli prawn linguine',6,13,10,'Mix the dressing ingredients in a small bowl and season with salt and pepper. Set aside.

Cook the pasta according to the packet instructions. Add the sugar snap peas for the last minute or so of cooking time.

Meanwhile, heat the oil in a wok or large frying pan, toss in the garlic and chilli and cook over a fairly gentle heat for about 30 seconds without letting the garlic brown. Tip in the prawns and cook over a high heat, stirring frequently, for about 3 minutes until they turn pink.

Add the tomatoes and cook, stirring occasionally, for 3 minutes until they just start to soften. Drain the pasta and sugar snaps well, then toss into the prawn mixture. Tear in the basil leaves, stir, and season with salt and pepper.

Serve with salad leaves drizzled with the lime dressing, and warm crusty bread.','https://www.themealdb.com/images/media/meals/usywpp1511189717.jpg',NULL);
INSERT INTO "meal" VALUES(52840,'Clam chowder',10,1,28,'Rinse the clams in several changes of cold water and drain well. Tip the clams into a large pan with 500ml of water. Cover, bring to the boil and simmer for 2 mins until the clams have just opened. Tip the contents of the pan into a colander over a bowl to catch the clam stock. When cool enough to handle, remove the clams from their shells – reserving a handful of empty shells for presentation if you want. Strain the clam stock into a jug, leaving any grit in the bottom of the bowl. You should have around 800ml stock.
Heat the butter in the same pan and sizzle the bacon for 3-4 mins until it starts to brown. Stir in the onion, thyme and bay and cook everything gently for 10 mins until the onion is soft and golden. Scatter over the flour and stir in to make a sandy paste, cook for 2 mins more, then gradually stir in the clam stock then the milk and the cream.
Throw in the potatoes, bring everything to a simmer and leave to bubble away gently for 10 mins or until the potatoes are cooked. Use a fork to crush a few of the potato chunks against the side of the pan to help thicken – you still want lots of defined chunks though. Stir through the clam meat and the few clam shells, if you''ve gone down that route, and simmer for a minute to reheat. Season with plenty of black pepper and a little salt, if needed, then stir through the parsley just before ladling into bowls or hollowed-out crusty rolls.','https://www.themealdb.com/images/media/meals/rvtvuw1511190488.jpg',NULL);
INSERT INTO "meal" VALUES(52841,'Creamy Tomato Soup',10,2,30,'Put the oil, onions, celery, carrots, potatoes and bay leaves in a big casserole dish, or two saucepans. Fry gently until the onions are softened – about 10-15 mins. Fill the kettle and boil it.
Stir in the tomato purée, sugar, vinegar, chopped tomatoes and passata, then crumble in the stock cubes. Add 1 litre boiling water and bring to a simmer. Cover and simmer for 15 mins until the potato is tender, then remove the bay leaves. Purée with a stick blender (or ladle into a blender in batches) until very smooth. Season to taste and add a pinch more sugar if it needs it. The soup can now be cooled and chilled for up to 2 days, or frozen for up to 3 months.
To serve, reheat the soup, stirring in the milk – try not to let it boil. Serve in small bowls with cheesy sausage rolls.','https://www.themealdb.com/images/media/meals/stpuws1511191310.jpg','Baking');
INSERT INTO "meal" VALUES(52842,'Broccoli & Stilton soup',10,2,25,'Heat the rapeseed oil in a large saucepan and then add the onions. Cook on a medium heat until soft. Add a splash of water if the onions start to catch.

Add the celery, leek, potato and a knob of butter. Stir until melted, then cover with a lid. Allow to sweat for 5 minutes. Remove the lid.

Pour in the stock and add any chunky bits of broccoli stalk. Cook for 10 – 15 minutes until all the vegetables are soft.

Add the rest of the broccoli and cook for a further 5 minutes. Carefully transfer to a blender and blitz until smooth. Stir in the stilton, allowing a few lumps to remain. Season with black pepper and serve.','https://www.themealdb.com/images/media/meals/tvvxpv1511191952.jpg',NULL);
INSERT INTO "meal" VALUES(52843,'Lamb Tagine',4,19,64,'Heat the olive oil in a heavy-based pan and add the onion and carrot. Cook for 3- 4 mins until softened.

Add the diced lamb and brown all over. Stir in the garlic and all the spices and cook for a few mins more or until the aromas are released.

Add the honey and apricots, crumble in the stock cube and pour over roughly 500ml boiling water or enough to cover the meat. Give it a good stir and bring to the boil. Turn down to a simmer, put the lid on and cook for 1 hour.

Remove the lid and cook for a further 30 mins, then stir in the squash. Cook for 20 – 30 mins more until the squash is soft and the lamb is tender. Serve alongside rice or couscous and sprinkle with parsley and pine nuts, if using.','https://www.themealdb.com/images/media/meals/yuwtuu1511295751.jpg',NULL);
INSERT INTO "meal" VALUES(52844,'Lasagne',6,13,63,'Heat the oil in a large saucepan. Use kitchen scissors to snip the bacon into small pieces, or use a sharp knife to chop it on a chopping board. Add the bacon to the pan and cook for just a few mins until starting to turn golden. Add the onion, celery and carrot, and cook over a medium heat for 5 mins, stirring occasionally, until softened.
Add the garlic and cook for 1 min, then tip in the mince and cook, stirring and breaking it up with a wooden spoon, for about 6 mins until browned all over.
Stir in the tomato purée and cook for 1 min, mixing in well with the beef and vegetables. Tip in the chopped tomatoes. Fill each can half full with water to rinse out any tomatoes left in the can, and add to the pan. Add the honey and season to taste. Simmer for 20 mins.
Heat oven to 200C/180C fan/gas 6. To assemble the lasagne, ladle a little of the ragu sauce into the bottom of the roasting tin or casserole dish, spreading the sauce all over the base. Place 2 sheets of lasagne on top of the sauce overlapping to make it fit, then repeat with more sauce and another layer of pasta. Repeat with a further 2 layers of sauce and pasta, finishing with a layer of pasta.
Put the crème fraîche in a bowl and mix with 2 tbsp water to loosen it and make a smooth pourable sauce. Pour this over the top of the pasta, then top with the mozzarella. Sprinkle Parmesan over the top and bake for 25–30 mins until golden and bubbling. Serve scattered with basil, if you like.','https://www.themealdb.com/images/media/meals/wtsvxx1511296896.jpg',NULL);
INSERT INTO "meal" VALUES(52845,'Turkey Meatloaf',5,2,55,'Heat oven to 180C/160C fan/gas 4. Heat the oil in a large frying pan and cook the onion for 8-10 mins until softened. Add the garlic, Worcestershire sauce and 2 tsp tomato purée, and stir until combined. Set aside to cool.

Put the turkey mince, egg, breadcrumbs and cooled onion mix in a large bowl and season well. Mix everything to combine, then shape into a rectangular loaf and place in a large roasting tin. Spread 2 tbsp barbecue sauce over the meatloaf and bake for 30 mins.

Meanwhile, drain 1 can of beans only, then pour both cans into a large bowl. Add the remaining barbecue sauce and tomato purée. Season and set aside.

When the meatloaf has had its initial cooking time, scatter the beans around the outside and bake for 15 mins more until the meatloaf is cooked through and the beans are piping hot. Scatter over the parsley and serve the meatloaf in slices.','https://www.themealdb.com/images/media/meals/ypuxtw1511297463.jpg','Alcoholic');
INSERT INTO "meal" VALUES(52846,'Chicken & mushroom Hotpot',2,2,42,'Heat oven to 200C/180C fan/gas 6. Put the butter in a medium-size saucepan and place over a medium heat. Add the onion and leave to cook for 5 mins, stirring occasionally. Add the mushrooms to the saucepan with the onions.

Once the onion and mushrooms are almost cooked, stir in the flour – this will make a thick paste called a roux. If you are using a stock cube, crumble the cube into the roux now and stir well. Put the roux over a low heat and stir continuously for 2 mins – this will cook the flour and stop the sauce from having a floury taste.

Take the roux off the heat. Slowly add the fresh stock, if using, or pour in 500ml water if you’ve used a stock cube, stirring all the time. Once all the liquid has been added, season with pepper, a pinch of nutmeg and mustard powder. Put the saucepan back onto a medium heat and slowly bring it to the boil, stirring all the time. Once the sauce has thickened, place on a very low heat. Add the cooked chicken and vegetables to the sauce and stir well. Grease a medium-size ovenproof pie dish with a little butter and pour in the chicken and mushroom filling.

Carefully lay the potatoes on top of the hot-pot filling, overlapping them slightly, almost like a pie top.

Brush the potatoes with a little melted butter and cook in the oven for about 35 mins. The hot-pot is ready once the potatoes are cooked and golden brown.','https://www.themealdb.com/images/media/meals/uuuspp1511297945.jpg',NULL);
INSERT INTO "meal" VALUES(52847,'Pork Cassoulet',7,9,50,'Heat oven to 140C/120C fan/gas 1. Put a large ovenproof pan (with a tight-fitting lid) on a high heat. Add your fat and diced meat, cook for a few mins to seal the edges, giving it a quick stir to cook evenly. Reduce the heat to low, add the sliced onion, whole garlic cloves, carrot and fennel seeds, and cook gently to soften the veg for a few mins.
Pour over the red wine vinegar, scraping any meaty bits off the bottom of the pan. Add the stock, tomato purée, and half the rosemary and parsley. Bring to the boil and simmer for 10 mins, then season, cover with a lid and put into the oven for 2 hrs, removing the lid for the final hour of cooking. Stir occasionally and add the beans with 30 mins to go.
Remove the pan from the oven and heat the grill. Scatter the top with the remaining herbs and breadcrumbs, drizzle a little oil over the top, and return to the oven for 5-10 mins, until the breadcrumbs are golden. Serve with crusty bread and green veg.','https://www.themealdb.com/images/media/meals/wxuvuv1511299147.jpg',NULL);
INSERT INTO "meal" VALUES(52848,'Bean & Sausage Hotpot',5,2,40,'In a large casserole, fry the sausages until brown all over – about 10 mins.

Add the tomato sauce, stirring well, then stir in the beans, treacle or sugar and mustard. Bring to the simmer, cover and cook for 30 mins. Great served with crusty bread or rice.','https://www.themealdb.com/images/media/meals/vxuyrx1511302687.jpg',NULL);
INSERT INTO "meal" VALUES(52849,'Spinach & Ricotta Cannelloni',12,13,61,'First make the tomato sauce. Heat the oil in a large pan and fry the garlic for 1 min. Add the sugar, vinegar, tomatoes and some seasoning and simmer for 20 mins, stirring occasionally, until thick. Add the basil and divide the sauce between 2 or more shallow ovenproof dishes (see Tips for freezing, below). Set aside. Make a sauce by beating the mascarpone with the milk until smooth, season, then set aside.

Put the spinach in a large colander and pour over a kettle of boiling water to wilt it (you may need to do this in batches). When cool enough to handle squeeze out the excess water. Roughly chop the spinach and mix in a large bowl with 100g Parmesan and ricotta. Season well with salt, pepper and the nutmeg.

Heat oven to 200C/180C fan/gas 6. Using a piping bag or plastic food bag with the corner snipped off, squeeze the filling into the cannelloni tubes. Lay the tubes, side by side, on top of the tomato sauce and spoon over the mascarpone sauce. Top with Parmesan and mozzarella. You can now freeze the cannelloni, uncooked, or you can cook it first and then freeze. Bake for 30-35 mins until golden and bubbling. Remove from oven and let stand for 5 mins before serving.','https://www.themealdb.com/images/media/meals/wspuvp1511303478.jpg',NULL);
INSERT INTO "meal" VALUES(52850,'Chicken Couscous',2,19,18,'Heat the olive oil in a large frying pan and cook the onion for 1-2 mins just until softened. Add the chicken and fry for 7-10 mins until cooked through and the onions have turned golden. Grate over the ginger, stir through the harissa to coat everything and cook for 1 min more.

Tip in the apricots, chickpeas and couscous, then pour over the stock and stir once. Cover with a lid or tightly cover the pan with foil and leave for about 5 mins until the couscous has soaked up all the stock and is soft. Fluff up the couscous with a fork and scatter over the coriander to serve. Serve with extra harissa, if you like.','https://www.themealdb.com/images/media/meals/qxytrx1511304021.jpg',NULL);
INSERT INTO "meal" VALUES(52851,'Nutty Chicken Curry',2,11,11,'Finely slice a quarter of the chilli, then put the rest in a food processor with the ginger, garlic, coriander stalks and one-third of the leaves. Whizz to a rough paste with a splash of water if needed.
Heat the oil in a frying pan, then quickly brown the chicken chunks for 1 min. Stir in the paste for another min, then add the peanut butter, stock and yogurt. When the sauce is gently bubbling, cook for 10 mins until the chicken is just cooked through and sauce thickened. Stir in most of the remaining coriander, then scatter the rest on top with the chilli, if using. Eat with rice or mashed sweet potato.','https://www.themealdb.com/images/media/meals/yxsurp1511304301.jpg',NULL);
INSERT INTO "meal" VALUES(52852,'Tuna Nicoise',8,9,30,'Heat oven to 200C/fan 180C/gas 6. Toss the potatoes with 2 tsp oil and some seasoning. Tip onto a large baking tray, then roast for 20 mins, stirring halfway, until crisp, golden and cooked through.
Meanwhile, put eggs in a small pan of water, bring to the boil, then simmer for 8-10 mins, depending on how you like them cooked. Plunge into a bowl of cold water to cool for a few mins. Peel away the shells, then cut into halves.
In a large salad bowl, whisk together the remaining oil, red wine vinegar, capers and chopped tomatoes. Season, tip in the onion, spinach, tuna and potatoes, then gently toss together. Top with the eggs, then serve straight away.','https://www.themealdb.com/images/media/meals/yypwwq1511304979.jpg',NULL);
INSERT INTO "meal" VALUES(52853,'Chocolate Avocado Mousse',3,2,10,'1. Blend all the mousse ingredients together in your food processor until smooth. Add the cacao powder first and, as you blend, have all the ingredients to hand in order to adjust the ratios slightly as the size of avocados and bananas varies so much. The perfect ratio in order to avoid the dish tasting too much of either is to use equal amounts of both.

2. Taste and add a few drops of stevia if you feel you need more sweetness.

3. Fill little cups or shot glasses with the mousse, sprinkle with the cacao powder or nibs and serve.

Tip If you don’t have a frozen banana to hand you can just use a normal one and then chill the mousse before serving for a cooling dessert.','https://www.themealdb.com/images/media/meals/uttuxy1511382180.jpg',NULL);
INSERT INTO "meal" VALUES(52854,'Pancakes',3,1,31,'Put the flour, eggs, milk, 1 tbsp oil and a pinch of salt into a bowl or large jug, then whisk to a smooth batter. Set aside for 30 mins to rest if you have time, or start cooking straight away.
Set a medium frying pan or crêpe pan over a medium heat and carefully wipe it with some oiled kitchen paper. When hot, cook your pancakes for 1 min on each side until golden, keeping them warm in a low oven as you go.
Serve with lemon wedges and sugar, or your favourite filling. Once cold, you can layer the pancakes between baking parchment, then wrap in cling film and freeze for up to 2 months.','https://www.themealdb.com/images/media/meals/rwuyqx1511383174.jpg','Breakfast,Desert,Sweet,Fruity');
INSERT INTO "meal" VALUES(52855,'Banana Pancakes',3,1,10,'In a bowl, mash the banana with a fork until it resembles a thick purée. Stir in the eggs, baking powder and vanilla.
Heat a large non-stick frying pan or pancake pan over a medium heat and brush with half the oil. Using half the batter, spoon two pancakes into the pan, cook for 1-2 mins each side, then tip onto a plate. Repeat the process with the remaining oil and batter. Top the pancakes with the pecans and raspberries.','https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg','Breakfast,Desert,Sweet');
INSERT INTO "meal" VALUES(52856,'Choc Chip Pecan Pie',3,1,115,'First, make the pastry. Tip the ingredients into a food processor with 1 /4 tsp salt. Blend until the mixture resembles breadcrumbs. Drizzle 2-3 tsp cold water into the funnel while the blade is running – the mixture should start to clump together. Tip onto a work surface and bring together, kneading briefly into a ball. Pat into a disc, wrap in cling film, and chill for at least 20 mins. Heat oven to 200C/180C fan/gas 6.

Remove the pastry from the fridge and leave at room temperature for 5 mins to soften. Flour the work surface, then unwrap the pastry and roll to a circle the thickness of a £1 coin. Use the pastry to line a deep, 23cm round fluted tin – mine was about 3cm deep. Press the pastry into the corners and up the sides, making sure there are no gaps. Leave 1cm pastry overhanging (save some of the pastry scraps for later). Line with baking parchment (scrunch it up first to make it more pliable) and fill with baking beans. Blind-bake for 15-20 mins until the sides are set, then remove the parchment and beans and return to the oven for 5 mins until golden brown. Trim the pastry so it’s flush with the top of the tin – a small serrated knife is best for this. If there are any cracks, patch them up with the pastry scraps.

Meanwhile, weigh the butter, syrup and sugars into a pan, and add 1 /4 tsp salt. Heat until the butter has melted and the sugar dissolved, stirring until smooth. Remove from the heat and cool for 10 mins. Reduce oven to 160C/140C fan/gas 3.

Beat the eggs in a bowl. Add the syrup mixture, vanilla and pecans, and mix until well combined. Pour half the mixture into the tart case, scatter over half the chocolate chips, then cover with the remaining filling and chocolate chips. Bake on the middle shelf for 50-55 mins until set. Remove from the oven and leave to cool, then chill for at least 2 hrs before serving.','https://www.themealdb.com/images/media/meals/rqvwxt1511384809.jpg','Pie,Desert,Sweet,Nutty');
INSERT INTO "meal" VALUES(52857,'Pumpkin Pie',3,1,105,'Place the pumpkin in a large saucepan, cover with water and bring to the boil. Cover with a lid and simmer for 15 mins or until tender. Drain pumpkin; let cool.
Heat oven to 180C/160C fan/gas 4. Roll out the pastry on a lightly floured surface and use it to line a 22cm loose-bottomed tart tin. Chill for 15 mins. Line the pastry with baking parchment and baking beans, then bake for 15 mins. Remove the beans and paper, and cook for a further 10 mins until the base is pale golden and biscuity. Remove from the oven and allow to cool slightly.
Increase oven to 220C/200C fan/gas 7. Push the cooled pumpkin through a sieve into a large bowl. In a separate bowl, combine the sugar, salt, nutmeg and half the cinnamon. Mix in the beaten eggs, melted butter and milk, then add to the pumpkin purée and stir to combine. Pour into the tart shell and cook for 10 mins, then reduce the temperature to 180C/160C fan/gas 4. Continue to bake for 35-40 mins until the filling has just set.
Leave to cool, then remove the pie from the tin. Mix the remaining cinnamon with the icing sugar and dust over the pie. Serve chilled.','https://www.themealdb.com/images/media/meals/usuqtp1511385394.jpg','Halloween,Pie,Desert');
INSERT INTO "meal" VALUES(52858,'New York cheesecake',3,1,47,'Position an oven shelf in the middle of the oven. Preheat the oven to fan 160C/conventional 180C/gas 4. Line the base of a 23cm springform cake tin with parchment paper. For the crust, melt the butter in a medium pan. Stir in the biscuit crumbs and sugar so the mixture is evenly moistened. Press the mixture into the bottom of the pan and bake for 10 minutes. Cool on a wire rack while preparing the filling.
For the filling, increase the oven temperature to fan 200C/conventional 240C/gas 9. In a table top mixer fitted with the paddle attachment, beat the soft cheese at medium-low speed until creamy, about 2 minutes. With the mixer on low, gradually add the sugar, then the flour and a pinch of salt, scraping down the sides of the bowl and the paddle twice.
Swap the paddle attachment for the whisk. Continue by adding the vanilla, lemon zest and juice. Whisk in the eggs and yolk, one at a time, scraping the bowl and whisk at least twice. Stir the 284ml carton of soured cream until smooth, then measure 200ml/7fl oz (just over 3⁄4 of the carton). Continue on low speed as you add the measured soured cream (reserve the rest). Whisk to blend, but don''t over-beat. The batter should be smooth, light and somewhat airy.
Brush the sides of the springform tin with melted butter and put on a baking sheet. Pour in the filling - if there are any lumps, sink them using a knife - the top should be as smooth as possible. Bake for 10 minutes. Reduce oven temperature to fan 90C/conventional 110C/gas 1⁄4 and bake for 25 minutes more. If you gently shake the tin, the filling should have a slight wobble. Turn off the oven and open the oven door for a cheesecake that''s creamy in the centre, or leave it closed if you prefer a drier texture. Let cool in the oven for 2 hours. The cheesecake may get a slight crack on top as it cools.
Combine the reserved soured cream with the 142ml carton, the sugar and lemon juice for the topping. Spread over the cheesecake right to the edges. Cover loosely with foil and refrigerate for at least 8 hours or overnight.
Run a round-bladed knife around the sides of the tin to loosen any stuck edges. Unlock the side, slide the cheesecake off the bottom of the tin onto a plate, then slide the parchment paper out from underneath.','https://www.themealdb.com/images/media/meals/swttys1511385853.jpg','Desert,Dairy,Pudding,Cake,Breakfast');
INSERT INTO "meal" VALUES(52859,'Key Lime Pie',3,1,31,'Heat the oven to 160C/fan 140C/gas 3. Whizz the biscuits to crumbs in a food processor (or put in a strong plastic bag and bash with a rolling pin). Mix with the melted butter and press into the base and up the sides of a 22cm loose-based tart tin. Bake in the oven for 10 minutes. Remove and cool.
Put the egg yolks in a large bowl and whisk for a minute with electric beaters. Add the condensed milk and whisk for 3 minutes then add the zest and juice and whisk again for 3 minutes. Pour the filling into the cooled base then put back in the oven for 15 minutes. Cool then chill for at least 3 hours or overnight if you like.
When you are ready to serve, carefully remove the pie from the tin and put on a serving plate. To decorate, softly whip together the cream and icing sugar. Dollop or pipe the cream onto the top of the pie and finish with extra lime zest.','https://www.themealdb.com/images/media/meals/qpqtuu1511386216.jpg','Cake,Pie,Desert,Fruity,Sour');
INSERT INTO "meal" VALUES(52860,'Chocolate Raspberry Brownies',3,1,35,'Heat oven to 180C/160C fan/gas 4. Line a 20 x 30cm baking tray tin with baking parchment. Put the chocolate, butter and sugar in a pan and gently melt, stirring occasionally with a wooden spoon. Remove from the heat.
Stir the eggs, one by one, into the melted chocolate mixture. Sieve over the flour and cocoa, and stir in. Stir in half the raspberries, scrape into the tray, then scatter over the remaining raspberries. Bake on the middle shelf for 30 mins or, if you prefer a firmer texture, for 5 mins more. Cool before slicing into squares. Store in an airtight container for up to 3 days.','https://www.themealdb.com/images/media/meals/yypvst1511386427.jpg','Chocolate,Desert,Snack');
INSERT INTO "meal" VALUES(52861,'Peanut Butter Cheesecake',3,1,10,'Oil and line a 20cm round loose- bottomed cake tin with cling film, making it as smooth as possible. Melt the butter in a pan. Crush the biscuits by bashing them in a bag with a rolling pin, then stir them into the butter until very well coated. Press the mixture firmly into the base of the tin and chill.
Soak the gelatine in water while you make the filling. Tip the ricotta into a bowl, then beat in the peanut butter and syrup. Ricotta has a slightly grainy texture so blitz until smooth with a stick blender for a smoother texture if you prefer.
Take the soaked gelatine from the water and squeeze dry. Put it into a pan with the milk and heat very gently until the gelatine dissolves. Beat into the peanut mixture, then tip onto the biscuit base. Chill until set.
To freeze, leave in the tin and as soon as it is solid, cover the surface with cling film, then wrap the tin with cling film and foil.
To defrost, thaw in the fridge overnight.
To serve, carefully remove from the tin. Whisk the cream with the sugar until it holds its shape, then spread on top of the cheesecake and scatter with the peanut brittle.','https://www.themealdb.com/images/media/meals/qtuuys1511387068.jpg','Cake,Desert,Treat,UnHealthy,Speciality');
INSERT INTO "meal" VALUES(52862,'Peach & Blueberry Grunt',3,1,29,'Heat oven to 190C/170C fan/gas 5. Butter a wide shallow ovenproof dish. Blend the cornflour with the orange zest and juice, and put in a large pan with the sugar. Halve, stone and slice the peaches and add to the pan. Bring slowly to the boil, stirring gently until the sauce is shiny and thickened, about 3-4 mins. Remove from the heat, stir in the blueberries and tip into the prepared dish.
Tip the flour into a mixing bowl and add the 50g butter. Rub the butter into the flour until it resembles fine breadcrumbs, then stir in half the sugar. Mix the remaining sugar with the cinnamon and set aside.
Add the milk to the dry ingredients and mix to a soft dough. Turn out onto a lightly floured surface and knead briefly. Roll out to an oblong roughly 16 x 24cm. Brush with melted butter and sprinkle evenly with the spicy sugar. Roll up from one long side and cut into 12 slices. Arrange around the top of the dish, leaving the centre uncovered.
Bake for 20-25 mins, until the topping is crisp and golden. Serve warm.','https://www.themealdb.com/images/media/meals/ssxvup1511387476.jpg','Desert,Pudding,Fruity');
INSERT INTO "meal" VALUES(52863,'Vegetarian Casserole',12,2,40,'Heat the oil in a large, heavy-based pan. Add the onions and cook gently for 5 – 10 mins until softened.
Add the garlic, spices, dried thyme, carrots, celery and peppers and cook for 5 minutes.
Add the tomatoes, stock, courgettes and fresh thyme and cook for 20 - 25 minutes.
Take out the thyme sprigs. Stir in the lentils and bring back to a simmer. Serve with wild and white basmati rice, mash or quinoa.','https://www.themealdb.com/images/media/meals/vptwyt1511450962.jpg','Casserole,Vegetarian');
INSERT INTO "meal" VALUES(52864,'Mushroom & Chestnut Rotolo',12,2,40,'Soak the dried mushrooms in 350ml boiling water and set aside until needed. Blitz ¾ of the chestnuts with 150ml water until creamy. Roughly chop the remaining chestnuts.
Heat 2 tbsp olive oil in a large non-stick frying pan. Fry the shallots with a pinch of salt until softened, then add the garlic, chopped chestnuts and rosemary, and fry for 2 mins more. Add the wild mushrooms, 2 tbsp oil and some seasoning. Cook for 3 mins until they begin to soften. Drain and roughly chop the dried mushrooms (reserve the soaking liquid), then add those too, along with the soy sauce, and fry for 2 mins more.
Whisk the wine, reserved mushroom liquid and chestnut cream together to create a sauce. Season, then add half to the mushroom mixture in the pan and cook for 1 min until the sauce becomes glossy. Remove and discard the rosemary sprigs, then set the mixture aside.
Heat oven to 180C/160C fan/gas 4. Bring a large pan of salted water to the boil and get a large bowl of ice water ready. Drop the lasagne sheets into the boiling water for 2 mins or until pliable and a little cooked, then immediately plunge them into the cold water. Using your fingers, carefully separate the sheets and transfer to a clean tea towel. Spread a good spoonful of the sauce on the bottom two thirds of each sheet, then, rolling away from yourself, roll up the shorter ends. Cut each roll in half, then position the rolls of pasta cut-side up in a pie dish that you are happy to serve from at the table. If you have any mushroom sauce remaining after you’ve rolled up all the sheets, simply push it into some of the exposed rolls of pasta.
Pour the rest of the sauce over the top of the pasta, then bake for 10 mins or until the pasta no longer has any resistance when tested with a skewer.
Meanwhile, put the breadcrumbs, the last 2 tbsp olive oil, sage leaves and some seasoning in a bowl, and toss everything together. Scatter the rotolo with the crumbs and sage, then bake for another 10 mins, until the top is golden and the sage leaves are crispy. Leave to cool for 10 mins to allow the pasta to absorb the sauce, then drizzle with a little truffle oil, if you like, before taking your dish to the table.','https://www.themealdb.com/images/media/meals/ssyqwr1511451678.jpg','Vegetarian,Nutty');
INSERT INTO "meal" VALUES(52865,'Matar Paneer',12,11,10,'Heat the oil in a frying pan over high heat until it’s shimmering hot. Add the paneer, then turn the heat down a little. Fry until it starts to brown at the edges, then turn it over and brown on each side – the paneer will brown faster than you think, so don’t walk away. Remove the paneer from the pan and drain on kitchen paper.
Put the ginger, cumin, turmeric, ground coriander and chilli in the pan, and fry everything for 1 min. Add the tomatoes, mashing them with the back of a spoon and simmer everything for 5 mins until the sauce smells fragrant. Add a splash of water if it’s too thick. Season well. Add the peas and simmer for a further 2 mins, then stir in the paneer and sprinkle over the garam masala. Divide between two bowls, top with coriander leaves and serve with naan bread, roti or rice.','https://www.themealdb.com/images/media/meals/xxpqsy1511452222.jpg','Curry,Vegetarian');
INSERT INTO "meal" VALUES(52866,'Squash linguine',12,13,40,'Heat oven to 200C/180C fan/gas 6. Put the squash and garlic on a baking tray and drizzle with the olive oil. Roast for 35-40 mins until soft. Season.
Cook the pasta according to pack instructions. Drain, reserving the water. Use a stick blender to whizz the squash with 400ml cooking water. Heat some oil in a frying pan, fry the sage until crisp, then drain on kitchen paper. Tip the pasta and sauce into the pan and warm through. Scatter with sage.','https://www.themealdb.com/images/media/meals/wxswxy1511452625.jpg','Pasta,Light');
INSERT INTO "meal" VALUES(52867,'Vegetarian Chilli',12,2,31,'Heat oven to 200C/180C fan/ gas 6. Cook the vegetables in a casserole dish for 15 mins. Tip in the beans and tomatoes, season, and cook for another 10-15 mins until piping hot. Heat the pouch in the microwave on High for 1 min and serve with the chilli.','https://www.themealdb.com/images/media/meals/wqurxy1511453156.jpg','Chilli');
INSERT INTO "meal" VALUES(52868,'Kidney Bean Curry',12,11,18,'Heat the oil in a large frying pan over a low-medium heat. Add the onion and a pinch of salt and cook slowly, stirring occasionally, until softened and just starting to colour. Add the garlic, ginger and coriander stalks and cook for a further 2 mins, until fragrant.

Add the spices to the pan and cook for another 1 min, by which point everything should smell aromatic. Tip in the chopped tomatoes and kidney beans in their water, then bring to the boil.

Turn down the heat and simmer for 15 mins until the curry is nice and thick. Season to taste, then serve with the basmati rice and the coriander leaves.','https://www.themealdb.com/images/media/meals/sywrsu1511463066.jpg','Curry');
INSERT INTO "meal" VALUES(52869,'Tahini Lentils',12,19,10,'In a jug, mix the tahini with the zest and juice of the lemon and 50ml of cold water to make a runny dressing. Season to taste, then set aside.
Heat the oil in a wok or large frying pan over a medium-high heat. Add the red onion, along with a pinch of salt, and fry for 2 mins until starting to soften and colour. Add the garlic, pepper, green beans and courgette and fry for 5 min, stirring frequently.
Tip in the kale, lentils and the tahini dressing. Keep the pan on the heat for a couple of mins, stirring everything together until the kale is wilted and it’s all coated in the creamy dressing.','https://www.themealdb.com/images/media/meals/vpxyqt1511464175.jpg','Pulse');
INSERT INTO "meal" VALUES(52870,'Chickpea Fajitas',12,18,25,'Heat oven to 200C/180C fan/gas 6 and line a baking tray with foil. Drain the chickpeas, pat dry and tip onto the prepared baking tray. Add the oil and paprika, toss to coat, then roast for 20-25 mins until browned and crisp, shaking halfway through cooking.

Meanwhile, put the tomatoes and onion in a small bowl with the vinegar and set aside to pickle. Put the avocado in another bowl and mash with a fork, leaving some larger chunks. Stir in the lime juice and season well. Mix the soured cream with the harissa and set aside until ready to serve.

Heat a griddle pan until nearly smoking. Add the tortillas , one at a time, charring each side until hot with griddle lines. 

Put everything on the table and build the fajitas : spread a little of the harissa cream over the tortilla, top with roasted chickpeas, guacamole, pickled salsa and coriander, if you like. Serve with the lime wedges for squeezing over.','https://www.themealdb.com/images/media/meals/tvtxpq1511464705.jpg','Vegetarian');
INSERT INTO "meal" VALUES(52871,'Yaki Udon',12,15,13,'Boil some water in a large saucepan. Add 250ml cold water and the udon noodles. (As they are so thick, adding cold water helps them to cook a little bit slower so the middle cooks through). If using frozen or fresh noodles, cook for 2 mins or until al dente; dried will take longer, about 5-6 mins. Drain and leave in the colander.
Heat 1 tbsp of the oil, add the onion and cabbage and sauté for 5 mins until softened. Add the mushrooms and some spring onions, and sauté for 1 more min. Pour in the remaining sesame oil and the noodles. If using cold noodles, let them heat through before adding the ingredients for the sauce – otherwise tip in straight away and keep stir-frying until sticky and piping hot. Sprinkle with the remaining spring onions.','https://www.themealdb.com/images/media/meals/wrustq1511475474.jpg','LowCalorie');
INSERT INTO "meal" VALUES(52872,'Spanish Tortilla',12,23,55,'Put a large non-stick frying pan on a low heat. Cook the onion slowly in the oil and butter until soft but not brown – this should take about 15 mins. Add the potatoes, cover the pan and cook for a further 15-20 mins, stirring occasionally to make sure they fry evenly.
When the potatoes are soft and the onion is shiny, crush 2 garlic cloves and stir in, followed by the beaten eggs.
Put the lid back on the pan and leave the tortilla to cook gently. After 20 mins, the edges and base should be golden, the top set but the middle still a little wobbly. To turn it over, slide it onto a plate and put another plate on top, turn the whole thing over and slide it back into the pan to finish cooking. Once cooked, transfer to a plate and serve the tortilla warm or cold, scattered with the chopped parsley.
To accompany, take slices of warmed baguette, stab all over with a fork and rub with the remaining garlic, pile on grated tomatoes and season with sea salt and a drizzle of olive oil.','https://www.themealdb.com/images/media/meals/quuxsx1511476154.jpg','Egg,Light');
INSERT INTO "meal" VALUES(52873,'Beef Dumpling Stew',1,2,25,'Preheat the oven to 180C/350F/Gas 4.

For the beef stew, heat the oil and butter in an ovenproof casserole and fry the beef until browned on all sides.

Sprinkle over the flour and cook for a further 2-3 minutes.

Add the garlic and all the vegetables and fry for 1-2 minutes.

Stir in the wine, stock and herbs, then add the Worcestershire sauce and balsamic vinegar, to taste. Season with salt and freshly ground black pepper.

Cover with a lid, transfer to the oven and cook for about two hours, or until the meat is tender.

For the dumplings, sift the flour, baking powder and salt into a bowl.
Add the suet and enough water to form a thick dough.

With floured hands, roll spoonfuls of the dough into small balls.

After two hours, remove the lid from the stew and place the balls on top of the stew. Cover, return to the oven and cook for a further 20 minutes, or until the dumplings have swollen and are tender. (If you prefer your dumplings with a golden top, leave the lid off when returning to the oven.)

To serve, place a spoonful of mashed potato onto each of four serving plates and top with the stew and dumplings. Sprinkle with chopped parsley.','https://www.themealdb.com/images/media/meals/uyqrrv1511553350.jpg','Stew,Baking');
INSERT INTO "meal" VALUES(52874,'Beef and Mustard Pie',1,2,35,'Preheat the oven to 150C/300F/Gas 2.
Toss the beef and flour together in a bowl with some salt and black pepper.
Heat a large casserole until hot, add half of the rapeseed oil and enough of the beef to just cover the bottom of the casserole.
Fry until browned on each side, then remove and set aside. Repeat with the remaining oil and beef.
Return the beef to the pan, add the wine and cook until the volume of liquid has reduced by half, then add the stock, onion, carrots, thyme and mustard, and season well with salt and pepper.
Cover with a lid and place in the oven for two hours.
Remove from the oven, check the seasoning and set aside to cool. Remove the thyme.
When the beef is cool and you''re ready to assemble the pie, preheat the oven to 200C/400F/Gas 6.
Transfer the beef to a pie dish, brush the rim with the beaten egg yolks and lay the pastry over the top. Brush the top of the pastry with more beaten egg.
Trim the pastry so there is just enough excess to crimp the edges, then place in the oven and bake for 30 minutes, or until the pastry is golden-brown and cooked through.
For the green beans, bring a saucepan of salted water to the boil, add the beans and cook for 4-5 minutes, or until just tender.
Drain and toss with the butter, then season with black pepper.
To serve, place a large spoonful of pie onto each plate with some green beans alongside.','https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg','Meat,Pie');
INSERT INTO "meal" VALUES(52875,'Chicken Ham and Leek Pie',2,2,53,'Heat the chicken stock in a lidded saucepan. Add the chicken breast and bring to a low simmer. Cover with a lid and cook for 10 minutes. Remove the chicken breasts from the water with tongs and place on a plate. Pour the cooking liquor into a large jug.
Melt 25g/1oz of the butter in a large heavy-based saucepan over a low heat. Stir in the leeks and fry gently for two minutes, stirring occasionally until just softened. Add the garlic and cook for a further minute. Add the remaining butter and stir in the flour as soon as the butter has melted. Cook for 30 seconds, stirring constantly.
Slowly pour the milk into the pan, just a little at a time, stirring well between each adding. Gradually add 250ml/10fl oz of the reserved stock and the wine, if using, stirring until the sauce is smooth and thickened slightly. Bring to a gentle simmer and cook for 3 minutes.
Season the mixture, to taste, with salt and freshly ground black pepper. Remove from the heat and stir in the cream. Pour into a large bowl and cover the surface of the sauce with cling ilm to prevent a skin forming. Set aside to cool.
Preheat the oven to 200C/400F/Gas 6. Put a baking tray in the oven to heat.
For the pastry, put the flour and butter in a food processor and blend on the pulse setting until the mixture resembles fine breadcrumbs. With the motor running, add the beaten egg and water and blend until the mixture forms a ball. Portion off 250g/10oz of pastry for the lid.
Roll the remaining pastry out on a lightly floured surface, turning the pastry frequently until around 5mm/¼in thick and 4cm/1½in larger than the pie dish. Lift the pastry over the rolling pin and place it gently into the pie dish. Press the pastry firmly up the sides, making sure there are no air bubbles. Leave the excess pastry overhanging the sides.
Cut the chicken breasts into 3cm/1¼in pieces. Stir the chicken, ham and leeks into the cooled sauce. Pour the chicken filling into the pie dish. Brush the rim of the dish with beaten egg. Roll out the reserved pastry for the lid.
Cover the pie with the pastry lid and press the edges together firmly to seal. Trim any excess pastry.
Make a small hole in the centre of the pie with the tip of a knife. Glaze the top of the pie with beaten egg. Bake on the preheated tray in the centre of the oven for 35-40 minutes or until the pie is golden-brown all over and the filling is piping hot.','https://www.themealdb.com/images/media/meals/xrrtss1511555269.jpg','Pie,Meat');
INSERT INTO "meal" VALUES(52876,'Minced Beef Pie',1,2,53,'Preheat the oven to 200C/400F/Gas 6.
Heat the oil in a deep frying pan and fry the beef mince for 4-5 minutes, breaking it up with a wooden spoon as it browns.
Add the onion and cook for 2-3 minutes, then stir in the tomato purée and cook for 2-3 more minutes. Stir in the flour and cook for a further minute, then add the chopped mushrooms, the stout or beef stock and a couple of dashes of Worcestershire sauce. Bring to the boil, then reduce the heat, cover the pan with a lid and leave to simmer for 20 minutes. Set aside and leave to cool, then turn the meat mixture into a one litre pie dish.
Roll out the pastry on a floured work surface until it is slightly larger than the pie dish. Gently drape the pastry over the dish, pressing firmly onto the edges. Trim, then shape the edges into a fluted shape.
Cut some leaf shapes out of the pastry trimmings and decorate the top of the pie, sticking them to the pastry with the beaten egg yolk.
Make three or four slits in the pastry to allow the steam to escape, then brush the pie with the rest of the beaten egg yolk and bake in the oven for 20-25 minutes, or until golden-brown.
To serve, slice into wedges.','https://www.themealdb.com/images/media/meals/xwutvy1511555540.jpg','Pie,Meat');
INSERT INTO "meal" VALUES(52877,'Lamb and Potato pie',4,2,40,'Dust the meat with flour to lightly coat.
Heat enough vegetable oil in a large saucepan to fill the base, and fry the onion and meat until lightly browned. Season with salt and pepper.
Add the carrots, stock and more seasoning to taste.
Bring to the boil, cover and reduce the heat to a simmer. Simmer for at least an hour or until the meat is tender. Take your time cooking the meat, the longer you leave it to cook, the better the flavour will be.
Preheat the oven to 180C/350F/Gas 4.
Add the drained potato cubes to the lamb.
Turn the mixture into a pie dish or casserole and cover with the shortcrust pastry. Make three slits in the top of the pastry to release any steam while cooking.
Brush with beaten egg and bake for about 40 minutes, until the pastry is golden brown.
Serve.','https://www.themealdb.com/images/media/meals/sxrpws1511555907.jpg','Pie');
INSERT INTO "meal" VALUES(52878,'Beef and Oyster pie',1,2,37,'Season the beef cubes with salt and black pepper. Heat a tablespoon of oil in the frying pan and fry the meat over a high heat. Do this in three batches so that you don’t overcrowd the pan, transferring the meat to a large flameproof casserole dish once it is browned all over. Add extra oil if the pan seems dry.
In the same pan, add another tablespoon of oil and cook the shallots for 4-5 minutes, then add the garlic and fry for 30 seconds. Add the bacon and fry until slightly browned. Transfer the onion and bacon mixture to the casserole dish and add the herbs.
Preheat the oven to 180C/350F/Gas 4.
Pour the stout into the frying pan and bring to the boil, stirring to lift any stuck-on browned bits from the bottom of the pan. Pour the stout over the beef in the casserole dish and add the stock. Cover the casserole and place it in the oven for 1½-2 hours, or until the beef is tender and the sauce is reduced.
Skim off any surface fat, taste and add salt and pepper if necessary, then stir in the cornflour paste. Put the casserole dish on the hob – don’t forget that it will be hot – and simmer for 1-2 minutes, stirring, until thickened. Leave to cool.
Increase the oven to 200C/400F/Gas 6. To make the pastry, put the flour and salt in a very large bowl. Grate the butter and stir it into the flour in three batches. Gradually add 325ml/11fl oz cold water – you may not need it all – and stir with a round-bladed knife until the mixture just comes together. Knead the pastry lightly into a ball on a lightly floured surface and set aside 250g/9oz for the pie lid.
Roll the rest of the pastry out until about 2cm/¾in larger than the dish you’re using. Line the dish with the pastry then pile in the filling, tucking the oysters in as well. Brush the edge of the pastry with beaten egg.
Roll the remaining pastry until slightly larger than your dish and gently lift over the filling, pressing the edges firmly to seal, then trim with a sharp knife. Brush with beaten egg to glaze. Put the dish on a baking tray and bake for 25-30 minutes, or until the pastry is golden-brown and the filling is bubbling.','https://www.themealdb.com/images/media/meals/wrssvt1511556563.jpg','Pie');
INSERT INTO "meal" VALUES(52879,'Chicken Parmentier',2,9,51,'For the topping, boil the potatoes in salted water until tender. Drain and push through a potato ricer, or mash thoroughly. Stir in the butter, cream and egg yolks. Season and set aside.
For the filling, melt the butter in a large pan. Add the shallots, carrots and celery and gently fry until soft, then add the garlic. Pour in the wine and cook for 1 minute. Stir in the tomato purée, chopped tomatoes and stock and cook for 10–15 minutes, until thickened. Add the shredded chicken, olives and parsley. Season to taste with salt and pepper.
Preheat the oven to 180C/160C Fan/Gas 4.
Put the filling in a 20x30cm/8x12in ovenproof dish and top with the mashed potato. Grate over the Gruyère. Bake for 30–35 minutes, until piping hot and the potato is golden-brown.','https://www.themealdb.com/images/media/meals/uwvxpv1511557015.jpg','Meat,Dairy');
INSERT INTO "meal" VALUES(52880,'McSinghs Scotch pie',4,2,30,'Heat a large frying pan and toast the cumin seeds for a few minutes, then set aside. Heat the oil in the same pan and fry the onion, garlic, chilli, pepper and a good pinch of salt for around eight minutes, until there is no moisture left. Remove from the heat, stir in the toasted cumin seeds, ground mace (or nutmeg) and ground coriander. Leave to cool.
In a large bowl mix together the minced lamb, white pepper, fresh coriander, and the cooled spiced onion mixture until combined. Set aside, covered, in the fridge.
Preheat the oven to 200C/400F/Gas 6 and generously grease a 20cm/8in diameter loose-bottomed or springform round cake tin with lard.
To make the pastry, sift the flour and salt in a large bowl and make a well in the centre.
Put the milk, lard and 90ml/3fl oz of water in a saucepan and heat gently. When the lard has melted, increase the heat and bring to the boil.
Pour the boiling liquid into the flour, and use a wooden spoon to combine until cool enough to handle. Bring together into a ball.
Dust a work surface with flour and, working quickly, knead the dough briefly – it will be soft and moist. Set aside a third of the pastry and roll the rest out on a well-floured surface. Line the pie dish with the pastry, pressing it right up the sides until it pokes just over the top of the tin.
Add the filling into the pastry-lined tin bit by bit. As you reach the top, form a slight peak. Roll out the reserved pastry and top the pie with it. Pinch the edges to seal and trim the excess. Poke a hole in the top of the pie and insert a small tube made from aluminium foil to allow steam to escape.
Brush the top of the pie with a little beaten egg yolk, and bake in the preheated oven for 30 minutes (put a tray on the shelf below to catch any drips). Then reduce the temperature to 160C/325F/Gas 3 and cook for a further 1¼ hours until golden-brown. Leave to cool completely before refrigerating for two hours, or overnight.
Run a knife around the edge of the pie, remove from the tin and serve with chutneys, salads or pickles.','https://www.themealdb.com/images/media/meals/vssrtx1511557680.jpg','Pie');
INSERT INTO "meal" VALUES(52881,'Steak and Kidney Pie',1,2,44,'Preheat the oven to 220C/425F/Gas 7
Heat the vegetable oil in a large frying pan, and brown the beef all over. (You may need to do this in batches.) Set aside, then brown the kidneys on both sides in the same pan. Add the onions and cook for 3-4 minutes.
Return the beef to the pan, sprinkle flour over and coat the meat and onions
Add the stock to the pan, stir well and bring to the boil.
Turn the heat down and simmer for 1½ hours without a lid. If the liquid evaporates too much, add more stock.
Remove from the heat. Add salt, pepper and Worcestershire sauce and allow to cool completely. Place the cooked meat mixture into a pie dish.
Roll out the pastry to 5mm/¼in thick and 5cm/2in larger than the dish you are using.
Using a rolling pin, lift the pastry and place it over the top of the pie dish. Trim and crimp the edges with your fingers and thumb.
Brush the surface with the beaten egg mixture and bake for 30-40 minutes until golden-brown and puffed.
Serve with creamy mash and steamed vegetables to soak up the gravy.','https://www.themealdb.com/images/media/meals/qysyss1511558054.jpg','Pie');
INSERT INTO "meal" VALUES(52882,'Three Fish Pie',8,2,50,'Preheat the oven to 200C/400F/Gas 6 (180C fan).
Put the potatoes into a saucepan of cold salted water. Bring up to the boil and simmer until completely tender. Drain well and then mash with the butter and milk. Add pepper and taste to check the seasoning. Add salt and more pepper if necessary.
For the fish filling, melt the butter in a saucepan, add the leeks and stir over the heat. Cover with a lid and simmer gently for 10 minutes, or until soft. Measure the flour into a small bowl. Add the wine and whisk together until smooth.
Add the milk to the leeks, bring to the boil and then add the wine mixture. Stir briskly until thickened. Season and add the parsley and fish. Stir over the heat for two minutes, then spoon into an ovenproof casserole. Scatter over the eggs. Allow to cool until firm.
Spoon the mashed potatoes over the fish mixture and mark with a fork. Sprinkle with cheese.
Bake for 30-40 minutes, or until lightly golden-brown on top and bubbling around the edges.','https://www.themealdb.com/images/media/meals/spswqs1511558697.jpg','Fish,Seafood,Dairy,Pie');
INSERT INTO "meal" VALUES(52883,'Sticky Toffee Pudding',3,2,40,'Preheat the oven to 180C/160C Fan/Gas 4. Butter a wide shallow 1.7-litre/3-pint ovenproof dish.
Put the butter, sugar, eggs, flour, baking powder, bicarbonate of soda and treacle into a mixing bowl. Beat using an electric handheld whisk for about 30 seconds or until combined. Pour in the milk gradually and whisk again until smooth. Pour into the prepared dish. Bake for 35–40 minutes or until well risen and springy in the centre.
To make the sauce, put all the ingredients into a saucepan and stir over a low heat until the sugar has dissolved and the butter has melted. Bring to the boil, stirring for a minute.
To serve, pour half the sauce over the pudding in the baking dish. Serve with the cream or ice cream.','https://www.themealdb.com/images/media/meals/xqqqtu1511637379.jpg','Pudding,Cake,Desert');
INSERT INTO "meal" VALUES(52884,'Lancashire hotpot',4,2,10,'Heat oven to 160C/fan 140C/gas 3. Heat some dripping or butter in a large shallow casserole dish, brown the lamb in batches, lift to a plate, then repeat with the kidneys.
Fry the onions and carrots in the pan with a little more dripping until golden. Sprinkle over the flour, allow to cook for a couple of mins, shake over the Worcestershire sauce, pour in the stock, then bring to the boil. Stir in the meat and bay leaves, then turn off the heat. Arrange the sliced potatoes on top of the meat, then drizzle with a little more dripping. Cover, then place in the oven for about 1½ hrs until the potatoes are cooked.
Remove the lid, brush the potatoes with a little more dripping, then turn the oven up to brown the potatoes, or finish under the grill for 5-8 mins until brown.','https://www.themealdb.com/images/media/meals/uttrxw1511637813.jpg',NULL);
INSERT INTO "meal" VALUES(52886,'Spotted Dick',3,2,10,'Put the flour and salt in a bowl. Add the suet, currants, sugar, lemon and orange zest.
Pour in 150ml milk and mix to a firm but moist dough, adding the extra milk if necessary.
Shape into a fat roll about 20cm long. Place on a large rectangle of baking parchment. Wrap loosely to allow for the pudding to rise and tie the ends with string like a Christmas cracker.
Place a steamer over a large pan of boiling water, add the pudding to the steamer, cover and steam for 1 1/2 hours. Top up the pan with water from time to time.
Remove from the steamer and allow to cool slightly before unwrapping. Serve sliced with custard.','https://www.themealdb.com/images/media/meals/xqvyqr1511638875.jpg','Fruity,Pudding,Desert');
INSERT INTO "meal" VALUES(52887,'Kedgeree',8,2,48,'For the rice, heat the oil in a large, lidded pan, add the onion, then gently fry for 5 mins until softened but not coloured. Add the spices, season with salt, then continue to fry until the mix start to go brown and fragrant; about 3 mins.
Add the rice and stir in well. Add 600ml water, stir, then bring to the boil. Reduce to a simmer, then cover for 10 mins. Take off the heat and leave to stand, covered, for 10-15 mins more. The rice will be perfectly cooked if you do not lift the lid before the end of the cooking.
Meanwhile, put the haddock and bay leaves in a frying pan, cover with the milk, then poach for 10 mins until the flesh flakes. Remove from the milk, peel away the skin, then flake the flesh into thumbsize pieces. Place the eggs in a pan, cover with water, bring to the boil, then reduce to a simmer. Leave for 4½-5 mins, plunge into cold water, then peel and cut the eggs into quarters. Gently mix the fish, eggs, parsley, coriander and rice together in the pan. Serve hot, sprinkled with a few extra herbs.','https://www.themealdb.com/images/media/meals/utxqpt1511639216.jpg',NULL);
INSERT INTO "meal" VALUES(52888,'Eccles Cakes',3,2,65,'To make the pastry, dice the butter and put it in the freezer to go really hard. Tip flour into the bowl of a food processor with half the butter and pulse to the texture of breadcrumbs. Pour in the lemon juice and 100ml iced water, and pulse to a dough. Tip in the rest of the butter and pulse a few times until the dough is heavily flecked with butter. It is important that you don’t overdo this as the flecks of butter are what makes the pastry flaky.
On a floured surface roll the pastry out to a neat rectangle about 20 x 30cm. Fold the two ends of the pastry into the middle (See picture 1), then fold in half (pic 2). Roll the pastry out again and refold the same way 3 more times resting the pastry for at least 15 mins each time between roll and fold, then leave to rest in the fridge for at least 30 mins before using.
To make the filling, melt the butter in a large saucepan. Take it off the heat and stir in all the other ingredients until completely mixed, then set aside.
To make the cakes, roll the pastry out until it’s just a little thicker than a £1 coin and cut out 8 rounds about 12cm across. Re-roll the trimming if needed. Place a good heaped tablespoon of mixture in the middle of each round, brush the edges of the rounds with water, then gather the pastry around the filling and squeeze it together (pic 3). Flip them over so the smooth top is upwards and pat them into a smooth round. Flatten each round with a rolling pin to an oval until the fruit just starts to poke through, then place on a baking tray. Cut 2 little slits in each Eccles cakes, brush generously with egg white and sprinkle with the sugar (pic 4).
Heat the oven to 220C/200C fan/gas 8. Bake the Eccles cakes for 15-20 mins until just past golden brown and sticky. Leave to cool on a rack and enjoy while still warm or cold with a cup of tea. If you prefer, Eccles cakes also go really well served with a wedge of hard, tangy British cheese such as Lancashire or cheddar.','https://www.themealdb.com/images/media/meals/wtqrqw1511639627.jpg','Snack,Treat');
INSERT INTO "meal" VALUES(52889,'Summer Pudding',3,2,10,'Bring out the juices: Wash fruit and gently dry on kitchen paper – keep strawberries separate. Put sugar and 3 tbsp water into a large pan. Gently heat until sugar dissolves – stir a few times. Bring to a boil for 1 min, then tip in the fruit (not strawberries). Cook for 3 mins over a low heat, stirring 2-3 times. The fruit will be softened, mostly intact and surrounded by dark red juice. Put a sieve over a bowl and tip in the fruit and juice.
Line the bowl with cling film and prepare the bread: Line the 1.25-litre basin with cling film as this will help you to turn out the pudding. Overlap two pieces of cling film in the middle of the bowl as it’s easier than trying to get one sheet to stick to all of the curves. Let the edges overhang by about 15cm. Cut the crusts off the bread. Cut 4 pieces of bread in half, a little on an angle, to give 2 lopsided rectangles per piece. Cut 2 slices into 4 triangles each and leave the final piece whole.
Build the pud: Dip the whole piece of bread into the juice for a few secs just to coat. Push this into the bottom of the basin. Now dip the wonky rectangular pieces one at a time and press around the basin’s sides so that they fit together neatly, alternately placing wide and narrow ends up. If you can’t quite fit the last piece of bread in it doesn’t matter, just trim into a triangle, dip in juice and slot in. Now spoon in the softened fruit, adding the strawberries here and there as you go.
Let flavours mingle then serve: Dip the bread triangles in juice and place on top – trim off overhang with scissors. Keep leftover juice for later. Bring cling film up and loosely seal. Put a side plate on top and weight down with cans. Chill for 6 hrs or overnight. To serve, open out cling film then put a serving plate upside-down on top and flip over. serve with leftover juice, any extra berries and cream.','https://www.themealdb.com/images/media/meals/rsqwus1511640214.jpg','Summer');
INSERT INTO "meal" VALUES(52890,'Jam Roly-Poly',3,2,10,'Put a deep roasting tin onto the bottom shelf of the oven, and make sure that there’s another shelf directly above it. Pull the roasting tin out on its shelf, fill two-thirds with boiling water from the kettle, then carefully slide it back in. Heat oven to 180C/160C fan/gas 4. Tear off a large sheet of foil and greaseproof paper (about 30 x 40cm). Sit the greaseproof on top of the foil and butter it.
Tip butter, flour and vanilla seeds into a food processor; pulse until the butter has disappeared. Tip into a mixing bowl. Stir through the suet, pour in the milk and work together with a cutlery knife until you get a sticky dough. You may need a drop more milk, depending on your flour.
Tip the dough out onto a floured surface, quickly pat together to smooth, then roll out to a square roughly 25 x 25cm. Spread the jam all over, leaving a gap along one edge, then roll up from the opposite edge. Pinch the jam-free edge into the dough where it meets, and pinch the ends roughly, too. Carefully lift onto the greased paper, join-side down (you might find a flat baking sheet helpful for this), loosely bring up the paper and foil around it, then scrunch together along the edges and ends to seal. The roly-poly will puff quite a bit during cooking so don’t wrap it tightly. Lift the parcel directly onto the rack above the tin and cook for 1 hr.
Let the pudding sit for 5 mins before unwrapping, then carefully open the foil and paper, and thickly slice to serve.','https://www.themealdb.com/images/media/meals/ysqupp1511640538.jpg',NULL);
INSERT INTO "meal" VALUES(52891,'Blackberry Fool',3,2,35,'For the biscuits, preheat the oven to 200C/180C (fan)/Gas 6 and line two large baking trays with baking parchment. Scatter the nuts over a baking tray and roast in the oven for 6-8 minutes, or until golden-brown. Watch them carefully so that they don’t have a chance to burn. Remove from the oven, tip onto a board and leave to cool.
Put the butter and sugar in a large bowl and beat with a wooden spoon until light and creamy. Roughly chop the cooled nuts and add to the creamed butter and sugar, along with the lemon zest, flour and baking powder. Stir well until the mixture comes together and forms a ball – you may need to use your hands.
Divide the biscuit dough into 24 even pieces and roll into small balls. Place the balls the prepared baking trays, spaced well apart to allow for spreading.
Press the biscuits to flatten to around 1cm/½in thick. Bake the biscuits, one tray at a time, for 12 minutes or until very pale golden-brown. Leave to cool on the trays. They will be very soft when you take them out of the oven, but will crisp as they cool.
Store in an airtight tin and eat within five days.
For the fool, rinse the blackberries in a colander to wash away any dust or dirt. Put the blackberries in a non-stick saucepan and sprinkle over the caster sugar.
Stir in the lemon juice and heat gently for two minutes, or until the blackberries begin to soften and release their juices. Remove and reserve 12 blackberries for decoration and continue cooking the rest.
Simmer the blackberries very gently for 15 minutes, stirring regularly until very soft and squidgy. Remove from the heat and press the berries and juice through a sieve over a bowl, using the bottom of a ladle to help you extract as much of the purée as possible. Leave the purée to cool and discard the seeds. You should end up with around 325ml/11fl oz of purée.
Put the cream and yoghurt in a large bowl and whip with an electric whisk until soft peaks form when the whisk is removed from the bowl – the acidity of the fruit will thicken the cream further, so don’t take it too far.
When the purée is completely cold, adjust the sweetness to taste by adding more sugar if needed. Pour it into the bowl with the whipped cream and yoghurt and stir just once or twice until very lightly combined.
Spoon the blackberry fool into individual wide, glass dishes – or one large, single bowl. It should look quite marbled, so don’t over-stir it. Scatter a few tiny mint leaves on top and decorate with the reserved blackberries. Sprinkle with a little sugar if you like and serve with the hazelnut biscuits.','https://www.themealdb.com/images/media/meals/rpvptu1511641092.jpg','Desert,Summer,Fruity,Dairy');
INSERT INTO "meal" VALUES(52892,'Treacle Tart',3,2,60,'First make the short crust pastry: measure the flour into a large bowl and rub in the butter with your fingertips until the mixture resembles fine breadcrumbs (alternatively, this can be done in a food processor). Add about three tablespoons of cold water and mix to a firm dough, wrap in cling film and chill in the fridge for about 20 minutes.
Preheat the oven to 200C/400F/Gas 6 and put a heavy baking tray in the oven to heat up. Grease a deep 18cm/7in loose-bottomed fluted flan tin with butter.
Remove about 150g/5½oz of pastry from the main ball and set aside for the lattice top.
Roll the rest of the pastry out thinly on a lightly floured work surface and line the prepared flan tin with the pastry.
Prick the base with a fork, to stop the base rising up during baking.
Place the reserved pastry for the lattice top on cling film and roll out thinly. Egg wash the pastry and set aside to chill in the fridge (the cling film makes it easier to move about). Do not cut into strips at this stage. Do not egg wash the strips once they are on the tart as it will drip into the treacle mixture.
To make the filling, heat the syrup gently in a large pan but do not boil.
Once melted, add the breadcrumbs, lemon juice and zest to the syrup. (You can add less lemon if you would prefer less citrus taste.) If the mixture looks runny, add a few more breadcrumbs.
Pour the syrup mixture into the lined tin and level the surface.
Remove the reserved pastry from the fridge and cut into long strips, 1cm/½in wide. Make sure they are all longer than the edges of the tart tin.
Egg wash the edge of the pastry in the tin, and start to make the woven laying lattice pattern over the mixture, leave the strips hanging over the edge of the tin.
Once the lattice is in place, use the tin edge to cut off the strips by pressing down with your hands, creating a neat finish.
Bake on the pre-heated baking tray in the hot oven for about 10 minutes until the pastry has started to colour, and then reduce the oven temperature to 180C/350F/Gas 4. If at this stage the lattice seems to be getting too dark brown, cover the tart with tin foil.
Bake for a further 25-30 minutes until the pastry is golden-brown and the filling set.
Remove the tart from the oven and leave to firm up in the tin. Serve warm or cold.','https://www.themealdb.com/images/media/meals/wprvrw1511641295.jpg','Tart');
INSERT INTO "meal" VALUES(52893,'Apple & Blackberry Crumble',3,2,37,'Heat oven to 190C/170C fan/gas 5. Tip the flour and sugar into a large bowl. Add the butter, then rub into the flour using your fingertips to make a light breadcrumb texture. Do not overwork it or the crumble will become heavy. Sprinkle the mixture evenly over a baking sheet and bake for 15 mins or until lightly coloured.
Meanwhile, for the compote, peel, core and cut the apples into 2cm dice. Put the butter and sugar in a medium saucepan and melt together over a medium heat. Cook for 3 mins until the mixture turns to a light caramel. Stir in the apples and cook for 3 mins. Add the blackberries and cinnamon, and cook for 3 mins more. Cover, remove from the heat, then leave for 2-3 mins to continue cooking in the warmth of the pan.
To serve, spoon the warm fruit into an ovenproof gratin dish, top with the crumble mix, then reheat in the oven for 5-10 mins. Serve with vanilla ice cream.','https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg','Pudding');
INSERT INTO "meal" VALUES(52894,'Battenberg Cake',3,2,40,'Heat oven to 180C/160C fan/gas 4 and line the base and sides of a 20cm square tin with baking parchment (the easiest way is to cross 2 x 20cm-long strips over the base). To make the almond sponge, put the butter, sugar, flour, ground almonds, baking powder, eggs, vanilla and almond extract in a large bowl. Beat with an electric whisk until the mix comes together smoothly. Scrape into the tin, spreading to the corners, and bake for 25-30 mins – when you poke in a skewer, it should come out clean. Cool in the tin for 10 mins, then transfer to a wire rack to finish cooling while you make the second sponge.
For the pink sponge, line the tin as above. Mix all the ingredients together as above, but don’t add the almond extract. Fold in some pink food colouring. Then scrape it all into the tin and bake as before. Cool.
To assemble, heat the jam in a small pan until runny, then sieve. Barely trim two opposite edges from the almond sponge, then well trim a third edge. Roughly measure the height of the sponge, then cutting from the well-trimmed edge, use a ruler to help you cut 4 slices each the same width as the sponge height. Discard or nibble leftover sponge. Repeat with pink cake.
Take 2 x almond slices and 2 x pink slices and trim so they are all the same length. Roll out one marzipan block on a surface lightly dusted with icing sugar to just over 20cm wide, then keep rolling lengthways until the marzipan is roughly 0.5cm thick. Brush with apricot jam, then lay a pink and an almond slice side by side at one end of the marzipan, brushing jam in between to stick sponges, and leaving 4cm clear marzipan at the end. Brush more jam on top of the sponges, then sandwich remaining 2 slices on top, alternating colours to give a checkerboard effect. Trim the marzipan to the length of the cakes.
Carefully lift up the marzipan and smooth over the cake with your hands, but leave a small marzipan fold along the bottom edge before you stick it to the first side. Trim opposite side to match size of fold, then crimp edges using fingers and thumb (or, more simply, press with prongs of fork). If you like, mark the 10 slices using the prongs of a fork.
Assemble second Battenberg and keep in an airtight box or well wrapped in cling film for up to 3 days. Can be frozen for up to a month.','https://www.themealdb.com/images/media/meals/ywwrsp1511720277.jpg','Cake,Sweet');
INSERT INTO "meal" VALUES(52895,'English Breakfast',13,2,50,'Heat the flat grill plate over a low heat, on top of 2 rings/flames if it fits, and brush sparingly with light olive oil.
Cook the sausages first. Add the sausages to the hot grill plate/the coolest part if there is one and allow to cook slowly for about 15-20 minutes, turning occasionally, until golden. After the first 10 minutes, increase the heat to medium before beginning to cook the other ingredients. If you are struggling for space, completely cook the sausages and keep hot on a plate in the oven.
Snip a few small cuts into the fatty edge of the bacon. Place the bacon straight on to the grill plate and fry for 2-4 minutes each side or until your preferred crispiness is reached. Like the sausages, the cooked bacon can be kept hot on a plate in the oven.
For the mushrooms, brush away any dirt using a pastry brush and trim the stalk level with the mushroom top. Season with salt and pepper and drizzle over a little olive oil. Place stalk-side up on the grill plate and cook for 1-2 minutes before turning and cooking for a further 3-4 minutes. Avoid moving the mushrooms too much while cooking, as this releases the natural juices, making them soggy.
For the tomatoes, cut the tomatoes across the centre/or in half lengthways if using plum tomatoes , and with a small, sharp knife remove the green ''eye''. Season with salt and pepper and drizzle with a little olive oil. Place cut-side down on the grill plate and cook without moving for 2 minutes. Gently turn over and season again. Cook for a further 2-3 minutes until tender but still holding their shape.
For the black pudding, cut the black pudding into 3-4 slices and remove the skin. Place on the grill plate and cook for 1½-2 minutes each side until slightly crispy.
For ''proper'' fried bread it''s best to cook it in a separate pan. Ideally, use bread that is a couple of days old. Heat a frying pan to a medium heat and cover the base with oil. Add the bread and cook for 2-3 minutes each side until crispy and golden. If the pan becomes too dry, add a little more oil. For a richer flavour, add a knob of butter after you turn the slice.
For the fried eggs, break the egg straight into the pan with the fried bread and leave for 30 seconds. Add a good knob of butter and lightly splash/baste the egg with the butter when melted. Cook to your preferred stage, season and gently remove with a fish slice.
Once all the ingredients are cooked, serve on warm plates and enjoy straight away with a good squeeze of tomato ketchup or brown sauce.','https://www.themealdb.com/images/media/meals/utxryw1511721587.jpg','Breakfast');
INSERT INTO "meal" VALUES(52896,'Full English Breakfast',13,2,50,'Heat the flat grill plate over a low heat, on top of 2 rings/flames if it fits, and brush sparingly with light olive oil.
Cook the sausages first. Add the sausages to the hot grill plate/the coolest part if there is one and allow to cook slowly for about 15-20 minutes, turning occasionally, until golden. After the first 10 minutes, increase the heat to medium before beginning to cook the other ingredients. If you are struggling for space, completely cook the sausages and keep hot on a plate in the oven.
Snip a few small cuts into the fatty edge of the bacon. Place the bacon straight on to the grill plate and fry for 2-4 minutes each side or until your preferred crispiness is reached. Like the sausages, the cooked bacon can be kept hot on a plate in the oven.
For the mushrooms, brush away any dirt using a pastry brush and trim the stalk level with the mushroom top. Season with salt and pepper and drizzle over a little olive oil. Place stalk-side up on the grill plate and cook for 1-2 minutes before turning and cooking for a further 3-4 minutes. Avoid moving the mushrooms too much while cooking, as this releases the natural juices, making them soggy.
For the tomatoes, cut the tomatoes across the centre/or in half lengthways if using plum tomatoes , and with a small, sharp knife remove the green ''eye''. Season with salt and pepper and drizzle with a little olive oil. Place cut-side down on the grill plate and cook without moving for 2 minutes. Gently turn over and season again. Cook for a further 2-3 minutes until tender but still holding their shape.
For the black pudding, cut the black pudding into 3-4 slices and remove the skin. Place on the grill plate and cook for 1½-2 minutes each side until slightly crispy.
For ''proper'' fried bread it''s best to cook it in a separate pan. Ideally, use bread that is a couple of days old. Heat a frying pan to a medium heat and cover the base with oil. Add the bread and cook for 2-3 minutes each side until crispy and golden. If the pan becomes too dry, add a little more oil. For a richer flavour, add a knob of butter after you turn the slice.
For the fried eggs, break the egg straight into the pan with the fried bread and leave for 30 seconds. Add a good knob of butter and lightly splash/baste the egg with the butter when melted. Cook to your preferred stage, season and gently remove with a fish slice.
Once all the ingredients are cooked, serve on warm plates and enjoy straight away with a good squeeze of tomato ketchup or brown sauce.','https://www.themealdb.com/images/media/meals/sqrtwu1511721265.jpg','Greasy,UnHealthy,HangoverFood,Calorific,Breakfast,BBQ');
INSERT INTO "meal" VALUES(52897,'Carrot Cake',3,2,25,'For the carrot cake, preheat the oven to 160C/325F/Gas 3. Grease and line a 26cm/10in springform cake tin.
Mix all of the ingredients for the carrot cake, except the carrots and walnuts, together in a bowl until well combined. Stir in the carrots and walnuts.
Spoon the mixture into the cake tin and bake for 1 hour 15 minutes, or until a skewer inserted into the middle comes out clean. Remove the cake from the oven and set aside to cool for 10 minutes, then carefully remove the cake from the tin and set aside to cool completely on a cooling rack.
Meanwhile, for the icing, beat the cream cheese, caster sugar and butter together in a bowl until fluffy. Spread the icing over the top of the cake with a palette knife.','https://www.themealdb.com/images/media/meals/vrspxv1511722107.jpg','Cake,Treat,Sweet');
INSERT INTO "meal" VALUES(52898,'Chelsea Buns',3,2,58,'Sift the flour and salt into a large bowl. Make a well in the middle and add the yeast.
Meanwhile, warm the milk and butter in a saucepan until the butter melts and the mixture is lukewarm.
Add the milk mixture and egg to the flour mixture and stir until the contents of the bowl come together as a soft dough. (You may need to add a little extra flour.)
Tip the dough onto a generously floured work surface. Knead for five minutes, adding more flour if necessary, until the dough is smooth and elastic and no longer feels sticky.
Lightly oil a bowl with a little of the vegetable oil. Place the dough into the bowl and turn until it is covered in the oil. Cover the bowl with cling film and set aside in a warm place for one hour, or until the dough has doubled in size.
Lightly grease a baking tray.
For the filling, knock the dough back to its original size and turn out onto a lightly floured work surface. Roll the dough out into a rectangle 0.5cm/¼in thick. Brush all over with the melted butter, then sprinkle over the brown sugar, cinnamon and dried fruit.
Roll the dough up into a tight cylinder , cut ten 4cm/1½in slice and place them onto a lightly greased baking sheet, leaving a little space between each slice. Cover with a tea towel and set aside to rise for 30 minutes.
Preheat oven to 190C/375F/Gas 5.
Bake the buns in the oven for 20-25 minutes, or until risen and golden-brown.
Meanwhile, for the glaze, heat the milk and sugar in a saucepan until boiling. Reduce the heat and simmer for 2-3 minutes.
Remove the buns from the oven and brush with the glaze, then set aside to cool on a wire rack.','https://www.themealdb.com/images/media/meals/vqpwrv1511723001.jpg','Bun,Baking,Treat');
INSERT INTO "meal" VALUES(52899,'Dundee cake',3,2,193,'Put the almonds into a small bowl and pour over boiling water to just cover. Leave for 5 mins then drain in a sieve and leave to dry.
Preheat the oven to 180C/160 C fan/Gas Mark 4. Line a deep loose-based 20cm cake tin with baking parchment.
Put the butter in a large bowl and beat well until soft. Add the sugar and beat until light and fluffy. Stir in the orange zest and apricot jam.
Sieve together the flour and baking powder. Add the eggs to the creamed butter and sugar, a little at a time, beating well between each addition. If the mixture starts to curdle, stir in a little flour.
Add the remaining flour and ground almonds and mix well. Mix in the milk and then add the dried fruit and cherries and mix gently together.
Spoon the mixture into the prepared tin and spread level using the back of a spoon. Arrange the whole almonds close together in neat circles on the top of the cake. Bake in the oven for 45 mins.
Lower the oven temperature to 160C/140 C fan/Gas Mark 3 and cook for a further 60–80 minutes. Check the cake after 50 minutes by inserting a wooden or metal skewer into the cake. When it’s done it should have just a few crumbs attached. Check every 10 minutes - it’s important not to overcook this cake so the centre will be a little soft.
When cooked, remove the cake briefly from the oven, put the milk and sugar into a small pan and heat gently until the sugar has dissolved. Brush over the top of the cake and return the cake to the oven for 2-3 mins. Remove and allow the cake to cool in the tin. When quite cold remove from the tin and wrap in foil and keep for at least 2 days before cutting.','https://www.themealdb.com/images/media/meals/wxyvqq1511723401.jpg','heavy,Nutty,Fruity');
INSERT INTO "meal" VALUES(52900,'Madeira Cake',3,2,50,'Pre-heat the oven to 180C/350F/Gas 4. Grease an 18cm/7in round cake tin, line the base with greaseproof paper and grease the paper.
Cream the butter and sugar together in a bowl until pale and fluffy. Beat in the eggs, one at a time, beating the mixture well between each one and adding a tablespoon of the flour with the last egg to prevent the mixture curdling.
Sift the flour and gently fold in, with enough milk to give a mixture that falls slowly from the spoon. Fold in the lemon zest.
Spoon the mixture into the prepared tin and lightly level the top. Bake on the middle shelf of the oven for 30-40 minutes, or until golden-brown on top and a skewer inserted into the centre comes out clean.
Remove from the oven and set aside to cool in the tin for 10 minutes, then turn it out on to a wire rack and leave to cool completely.
To serve, decorate the cake with the candied peel.','https://www.themealdb.com/images/media/meals/urtqut1511723591.jpg','Cake,Light,Baking,Desert');
INSERT INTO "meal" VALUES(52901,'Rock Cakes',3,2,20,'Preheat oven to 180C/350F/Gas 4 and line a baking tray with baking parchment.
Mix the flour, sugar and baking powder in a bowl and rub in the cubed butter until the mixture looks like breadcrumbs, then mix in the dried fruit.
In a clean bowl, beat the egg and milk together with the vanilla extract.
Add the egg mixture to the dry ingredients and stir with a spoon until the mixture just comes together as a thick, lumpy dough. Add a teaspoon more milk if you really need it to make the mixture stick together.
Place golfball-sized spoons of the mixture onto the prepared baking tray. Leave space between them as they will flatten and spread out to double their size during baking.
Bake for 15-20 minutes, until golden-brown. Remove from the oven, allow to cool for a couple of minutes then turn them out onto a wire rack to cool.','https://www.themealdb.com/images/media/meals/tqrrsq1511723764.jpg','Baking,Cake');
INSERT INTO "meal" VALUES(52902,'Parkin Cake',3,2,50,'Heat oven to 160C/140C fan/gas 3. Grease a deep 22cm/9in square cake tin and line with baking parchment. Beat the egg and milk together with a fork.

Gently melt the syrup, treacle, sugar and butter together in a large pan until the sugar has dissolved. Remove from the heat. Mix together the oatmeal, flour and ginger and stir into the syrup mixture, followed by the egg and milk.

Pour the mixture into the tin and bake for 50 mins - 1 hr until the cake feels firm and a little crusty on top. Cool in the tin then wrap in more parchment and foil and keep for 3-5 days before eating if you can – it’ll become softer and stickier the longer you leave it, up to 2 weeks.
','https://www.themealdb.com/images/media/meals/qxuqtt1511724269.jpg','Caramel');
INSERT INTO "meal" VALUES(52903,'French Onion Soup',9,9,50,'Melt the butter with the oil in a large heavy-based pan. Add the onions and fry with the lid on for 10 mins until soft. Sprinkle in the sugar and cook for 20 mins more, stirring frequently, until caramelised. The onions should be really golden, full of flavour and soft when pinched between your fingers. Take care towards the end to ensure that they don’t burn.
Add the garlic for the final few mins of the onions’ cooking time, then sprinkle in the flour and stir well. Increase the heat and keep stirring as you gradually add the wine, followed by the hot stock. Cover and simmer for 15-20 mins.
To serve, turn on the grill, and toast the bread. Ladle the soup into heatproof bowls. Put a slice or two of toast on top of the bowls of soup, and pile on the cheese. Grill until melted. Alternatively, you can complete the toasts under the grill, then serve them on top.','https://www.themealdb.com/images/media/meals/xvrrux1511783685.jpg','Soup');
INSERT INTO "meal" VALUES(52904,'Beef Bourguignon',1,9,70,'Heat a large casserole pan and add 1 tbsp goose fat. Season the beef and fry until golden brown, about 3-5 mins, then turn over and fry the other side until the meat is browned all over, adding more fat if necessary. Do this in 2-3 batches, transferring the meat to a colander set over a bowl when browned.
In the same pan, fry the bacon, shallots or pearl onions, mushrooms, garlic and bouquet garni until lightly browned. Mix in the tomato purée and cook for a few mins, stirring into the mixture. This enriches the bourguignon and makes a great base for the stew. Then return the beef and any drained juices to the pan and stir through.
Pour over the wine and about 100ml water so the meat bobs up from the liquid, but isn’t completely covered. Bring to the boil and use a spoon to scrape the caramelised cooking juices from the bottom of the pan – this will give the stew more flavour.
Heat oven to 150C/fan 130C/gas 2. Make a cartouche: tear off a square of foil slightly larger than the casserole, arrange it in the pan so it covers the top of the stew and trim away any excess foil. Then cook for 3 hrs. If the sauce looks watery, remove the beef and veg with a slotted spoon, and set aside. Cook the sauce over a high heat for a few mins until the sauce has thickened a little, then return the beef and vegetables to the pan.
To make the celeriac mash, peel the celeriac and cut into cubes. Heat the olive oil in a large frying pan. Tip in the celeriac and fry for 5 mins until it turns golden. Season well with salt and pepper. Stir in the rosemary, thyme, bay and cardamom pods, then pour over 200ml water, enough to nearly cover the celeriac. Turn the heat to low, partially cover the pan and leave to simmer for 25-30 mins.
After 25-30 mins, the celeriac should be soft and most of the water will have evaporated. Drain away any remaining water, then remove the herb sprigs, bay and cardamom pods. Lightly crush with a potato masher, then finish with a glug of olive oil and season to taste. Spoon the beef bourguignon into serving bowls and place a large spoonful of the celeriac mash on top. Garnish with one of the bay leaves, if you like.','https://www.themealdb.com/images/media/meals/vtqxtu1511784197.jpg',NULL);
INSERT INTO "meal" VALUES(52905,'Chocolate Souffle',3,9,10,'Heat oven to 220C/fan 200C/gas 7 and place a baking tray on the top shelf. For the sauce, heat the cream and sugar until boiling. Remove from the heat, stir in the chocolate and butter until melted, then keep warm.
Brush 6 x 150ml ramekins with melted butter, sprinkle with the 2 tbsp caster sugar, then tip out any excess. Melt the chocolate and cream in a bowl over a pan of simmering water, cool, then mix in the egg yolks. Whisk the egg whites until they hold their shape, then add the sugar, 1 tbsp at a time, whisking back to the same consistency. Mix a spoonful into the chocolate, then gently fold in the rest.
Working quickly, fill the ramekins, wipe the rims clean and run your thumb around the edges. Turn oven down to 200C/fan 180C/gas 6, place the ramekins onto the baking tray, then bake for 8-10 mins until risen with a slight wobble. Don’t open the oven door too early as this may make them collapse.
Once the soufflés are ready, dust with icing sugar, scoop a small hole from their tops, then pour in some of the hot chocolate sauce. Replace the lids and serve straight away.','https://www.themealdb.com/images/media/meals/twspvx1511784937.jpg','DinnerParty,Desert,Pudding,Chocolate');
INSERT INTO "meal" VALUES(52906,'Flamiche',12,9,112,'For the pastry, sift the flour and salt into the bowl of a food processor, add the butter and lard, then whizz together briefly until the mixture looks like fine breadcrumbs. Tip the mixture into a bowl, then stir in the cheese and enough of the water for the mixture to come together. Tip out onto a lightly floured surface and knead briefly until smooth. Roll out thinly and line a 23cm x 4cm loose-?bottomed fluted flan tin. Prick the base with a fork. Chill for 20 minutes.
02.Melt the 75g butter in a saucepan over a low heat, then add the leeks and the salt. Cover and cook for ?10 minutes until soft. Uncover the pan, increase the heat and cook ?for 2 minutes, stirring occasionally, until the liquid has evaporated. Spoon onto a plate and leave to cool.
03.Preheat the oven to 200°C/fan180°C/gas 6. Line the pastry case with baking paper and baking beans or rice and blind bake for 15-20 minutes until the edges are biscuit-coloured. Remove the paper and beans/rice and return the case to the oven for 7-10 minutes until the base is crisp and lightly golden. Remove and set aside. Reduce the oven temperature to 190°C/fan170°C/gas 5.
04.Put the crème fraîche into a bowl with the whole egg, egg yolks and nutmeg. Lightly beat together, then season. Stir in the leeks. Spoon ?the mixture into the tart case and bake for 35-40 minutes until set ?and lightly golden. Remove from ?the oven and leave for 10 minutes. Take out of the tin and serve.','https://www.themealdb.com/images/media/meals/wssvvs1511785879.jpg','Tart');
INSERT INTO "meal" VALUES(52907,'Duck Confit',5,9,40,'The day before you want to make the dish, scatter half the salt, half the garlic and half of the herbs over the base of a small shallow dish. Lay the duck legs, skin-side up, on top, then scatter over the remaining salt, garlic and herbs. Cover the duck and refrigerate overnight. This can be done up to 2 days ahead.
Pour the wine into a saucepan that will snugly fit the duck legs in a single layer. Brush the salt off the duck legs and place them, skin-side down, in the wine. Cover the pan with a lid and place over a medium heat. As soon as the wine starts to bubble, turn the heat down to the lowest setting and cook for 2 hours, checking occasionally that the liquid is just barely simmering. (If you own a heat diffuser, it would be good to use it here.) After 2 hours, the duck legs should be submerged in their own fat and the meat should feel incredibly tender when prodded. Leave to cool.
The duck legs are now cooked and can be eaten immediately – or you can follow the next step if you like them crisp. If you are preparing ahead, pack the duck legs tightly into a plastic container or jar and pour over the fat, but not the liquid at the bottom of the pan. Cover and leave in the fridge for up to a month, or freeze for up to 3 months. The liquid you are left with makes a tasty gravy, which can be chilled or frozen until needed.
To reheat and crisp up the duck legs, heat oven to 220C/fan 200C/gas 7. Remove the legs from the fat and place them, skin-side down, in an ovenproof frying pan. Roast for 30-40 mins, turning halfway through, until brown and crisp. Serve with the reheated gravy, a crisp salad and some crisp golden ptoatoes.','https://www.themealdb.com/images/media/meals/wvpvsu1511786158.jpg',NULL);
INSERT INTO "meal" VALUES(52908,'Ratatouille',12,9,20,'Cut the aubergines in half lengthways. Place them on the board, cut side down, slice in half lengthways again and then across into 1.5cm chunks. Cut off the courgettes ends, then across into 1.5cm slices. Peel the peppers from stalk to bottom. Hold upright, cut around the stalk, then cut into 3 pieces. Cut away any membrane, then chop into bite-size chunks.
Score a small cross on the base of each tomato, then put them into a heatproof bowl. Pour boiling water over the tomatoes, leave for 20 secs, then remove. Pour the water away, replace the tomatoes and cover with cold water. Leave to cool, then peel the skin away. Quarter the tomatoes, scrape away the seeds with a spoon, then roughly chop the flesh.
Set a sauté pan over medium heat and when hot, pour in 2 tbsp olive oil. Brown the aubergines for 5 mins on each side until the pieces are soft. Set them aside and fry the courgettes in another tbsp oil for 5 mins, until golden on both sides. Repeat with the peppers. Don’t overcook the vegetables at this stage, as they have some more cooking left in the next step.
Tear up the basil leaves and set aside. Cook the onion in the pan for 5 mins. Add the garlic and fry for a further min. Stir in the vinegar and sugar, then tip in the tomatoes and half the basil. Return the vegetables to the pan with some salt and pepper and cook for 5 mins. Serve with basil.','https://www.themealdb.com/images/media/meals/wrpwuu1511786491.jpg','Vegetables,SideDish');
INSERT INTO "meal" VALUES(52909,'Tarte Tatin',3,9,82,'Roll the pastry to a 3mm-thick round on a lightly floured surface and cut a 24cm circle, using a plate as a guide. Lightly prick all over with a fork, wrap in cling film on a baking sheet and freeze while preparing the apples.
Heat oven to 180C/160C fan/gas 4. Peel, quarter and core the apples. Put the sugar in a flameproof 20cm ceramic Tatin dish or a 20cm ovenproof heavy-based frying pan and place over a medium-high heat. Cook the sugar for 5-7 mins to a dark amber caramel syrup that’s starting to smoke, then turn off the heat and stir in the 60g diced chilled butter.
To assemble the Tarte Tatin, arrange the apple quarters very tightly in a circle around the edge of the dish first, rounded-side down, then fill in the middle in a similar fashion. Gently press with your hands to ensure there are no gaps. Brush the fruit with the melted butter.
Bake in the oven for 30 mins, then remove and place the disc of frozen puff pastry on top – it will quickly defrost. Tuck the edges down the inside of the dish and, with a knife, prick a few holes in the pastry to allow steam to escape. Bake for a further 40-45 mins until the pastry is golden brown and crisp.
Allow to cool to room temperature for 1 hr before running a knife around the edge of the dish and inverting it onto a large serving plate that is deep enough to contain the juices. Serve with crème fraîche or vanilla ice cream.','https://www.themealdb.com/images/media/meals/ryspuw1511786688.jpg','Treat,Tart,Desert,DinnerParty');
INSERT INTO "meal" VALUES(52910,'Chinon Apple Tarts',3,9,60,'To make the red wine jelly, put the red wine, jam sugar, star anise, clove, cinnamon stick, allspice, split vanilla pod and seeds in a medium saucepan. Stir together, then heat gently to dissolve the sugar. Turn up the heat and boil for 20 mins until reduced and syrupy. Strain into a small, sterilised jam jar and leave to cool completely. Will keep in the fridge for up to 1 month.

Take the pastry out of the fridge and leave at room temperature for 10 mins, then unroll. Heat the grill to high and heat the oven to 180C/160C fan/gas 4. Cut out 2 x 13cm circles of pastry, using a plate as a guide, and place on a non-stick baking sheet. Sprinkle each circle with 1 tbsp sugar and grill for 5 mins to caramelise, watching carefully so that the sugar doesn’t burn. Remove from the grill. Can be done a few hours ahead, and left, covered, out of the fridge.

Peel, quarter and core the apples, cut into 2mm-thin slices and arrange on top of the pastry. Sprinkle over the remaining sugar and pop in the oven for 20-25 mins until the pastry is cooked through and golden, and the apples are softened. Remove and allow to cool slightly. Warm 3 tbsp of the red wine jelly in a small pan over a low heat with 1 tsp water to make it a little more runny, then brush over the top of the tarts.

Tip the crème fraîche into a bowl, sift over the icing sugar and cardamom, and mix together. Carefully lift the warm tarts onto serving plates and serve with the cardamom crème fraîche.','https://www.themealdb.com/images/media/meals/qtqwwu1511792650.jpg','Tart,Baking');
INSERT INTO "meal" VALUES(52911,'Summer Pistou',12,9,14,'Heat the oil in a large pan and fry the leeks and courgette for 5 mins to soften. Pour in the stock, add three-quarters of the haricot beans with the green beans, half the tomatoes, and simmer for 5-8 mins until the vegetables are tender.
Meanwhile, blitz the remaining beans and tomatoes, the garlic and basil in a food processor (or in a bowl with a stick blender) until smooth, then stir in the Parmesan. Stir the sauce into the soup, cook for 1 min, then ladle half into bowls or pour into a flask for a packed lunch. Chill the remainder. Will keep for a couple of days.','https://www.themealdb.com/images/media/meals/rqtxvr1511792990.jpg',NULL);
INSERT INTO "meal" VALUES(52912,'Three-cheese souffles',5,9,56,'Heat oven to 200C/180C fan/ gas 6 and butter 4 small (about 200ml) ramekins. Sprinkle the Parmesan into the ramekins, turning until all sides are covered. Place the milk and bay leaves in a large saucepan over a gentle heat and bring to the boil. Turn off the heat and leave to infuse for 15 mins.
Discard the bay leaves, add the butter and flour, and return to a low heat. Very gently simmer, stirring continuously with a balloon whisk, for about 6 mins until you get a smooth, thick white sauce. Make sure that you get right into the corners of the pan to stop the sauce from catching or becoming lumpy.
Once thickened, transfer the sauce to a large bowl and stir in the mustard powder, cayenne pepper, Gruyère and egg yolks until fully combined.
In a spotlessly clean bowl and with a clean whisk, beat the egg whites just until peaks begin to form.
Carefully fold the egg whites into the cheese sauce in three stages making sure you fold, rather than stir, to keep the egg whites light and airy. Fill the prepared ramekins with the soufflé mix.
Top each soufflé with a slice of goat’s cheese, then place on a baking tray. Bake for 20-25 mins or until springy and well risen but cooked through.
Leave to cool, then run a knife around the edge of each dish and remove the soufflés. If preparing in advance, place soufflés upside down (for neat presentation), on a tray. Cover tray in cling film. Chill for a few days or freeze for up to 1 month.
When ready to re-bake, heat oven to 200C/180C fan/gas 6. Place the upside-down soufflés in a shallow baking dish, top with the remaining goat’s cheese slices and pour over the cream (this stops them from drying out when baked for the second time). Cook for 8-10 mins until golden. Serve immediately alongside some simply dressed salad.','https://www.themealdb.com/images/media/meals/sxwquu1511793428.jpg','Baking');
INSERT INTO "meal" VALUES(52913,'Brie wrapped in prosciutto & brioche',9,9,92,'Mix the flour, 1 tsp salt, caster sugar, yeast, milk and eggs together in a mixer using the dough attachment for 5 mins until the dough is smooth. Add the butter and mix for a further 4 mins on medium speed. Scrape the dough bowl and mix again for 1 min. Place the dough in a container, cover with cling film and leave in the fridge for at least 6 hrs before using.
Wrap the Brie in the prosciutto and set aside. Turn out the dough onto a lightly floured surface. Roll into a 25cm circle. Place the wrapped Brie in the middle of the circle and fold the edges in neatly. Put the parcel onto a baking tray lined with baking parchment and brush with beaten egg. Chill in the fridge for 30 mins, then brush again with beaten egg and chill for a further 30 mins. Leave to rise for 1 hr at room temperature. Heat oven to 200C/180C fan/gas 6, then bake for 22 mins. Serve warm.','https://www.themealdb.com/images/media/meals/qqpwsy1511796276.jpg','SideDish,Treat,Baking');
INSERT INTO "meal" VALUES(52914,'Boulangère Potatoes',9,9,65,'Heat oven to 200C/fan 180C/gas 6. Fry the onions and thyme sprigs in the oil until softened and lightly coloured (about 5 mins).
Spread a layer of potatoes over the base of a 1.5-litre oiled gratin dish. Sprinkle over a few onions (see picture, above) and continue layering, finishing with a layer of potatoes. Pour over the stock and bake for 50-60 mins until the potatoes are cooked and the top is golden and crisp.','https://www.themealdb.com/images/media/meals/qywups1511796761.jpg','SideDish');
INSERT INTO "meal" VALUES(52915,'French Omelette',5,9,10,'Get everything ready. Warm a 20cm (measured across the top) non-stick frying pan on a medium heat. Crack the eggs into a bowl and beat them with a fork so they break up and mix, but not as completely as you would for scrambled egg. With the heat on medium-hot, drop one knob of butter into the pan. It should bubble and sizzle, but not brown. Season the eggs with the Parmesan and a little salt and pepper, and pour into the pan.
Let the eggs bubble slightly for a couple of seconds, then take a wooden fork or spatula and gently draw the mixture in from the sides of the pan a few times, so it gathers in folds in the centre. Leave for a few seconds, then stir again to lightly combine uncooked egg with cooked. Leave briefly again, and when partly cooked, stir a bit faster, stopping while there’s some barely cooked egg left. With the pan flat on the heat, shake it back and forth a few times to settle the mixture. It should slide easily in the pan and look soft and moist on top. A quick burst of heat will brown the underside.
Grip the handle underneath. Tilt the pan down away from you and let the omelette fall to the edge. Fold the side nearest to you over by a third with your fork, and keep it rolling over, so the omelette tips onto a plate – or fold it in half, if that’s easier. For a neat finish, cover the omelette with a piece of kitchen paper and plump it up a bit with your fingers. Rub the other knob of butter over to glaze. Serve immediately.','https://www.themealdb.com/images/media/meals/yvpuuy1511797244.jpg','Egg');
INSERT INTO "meal" VALUES(52916,'Pear Tarte Tatin',3,9,52,'Core the pears, then peel as neatly as possible and halve. If you like, they can be prepared up to a day ahead and kept in the fridge, uncovered, so that they dry out.
Tip the sugar, butter, star anise, cardamom and cinnamon into an ovenproof frying pan, about 20cm wide, and place over a high heat until bubbling. Shake the pan and stir the buttery sauce until it separates and the sugar caramelises to a toffee colour.
Lay the pears in the pan, then cook in the sauce for 10-12 mins, tossing occasionally, until completely caramelised. Don’t worry about them burning – they won’t – but you want to caramelise them as much as possible. Splash in the brandy and let it flambé, then set the pears aside.
Heat oven to 200C/fan 180C/gas 6. Roll the pastry out to the thickness of a £1 coin. Using a plate slightly larger than the top of the pan, cut out a circle, then press the edges of the circle of pastry to thin them out.
When the pears have cooled slightly, arrange them in the pan, cut side up, in a floral shape, with the pears around the edge pointing inwards. Rest the cinnamon stick on the top in the centre, with the cardamom pods scattered around.
Drape the pastry over the pears, then tuck the edges down the pan sides and under the fruit (see Gordon’s guide). Pierce the pastry a few times, then bake for 15 mins. If a lot of juice bubbles up the side of the pan, pour it off at this stage (see guide). Reduce oven to 180C/fan 160C/gas 4 and bake for 15 mins more until the pastry is golden. Leave the tart to stand for 10 mins, then invert it carefully onto a serving dish.','https://www.themealdb.com/images/media/meals/rxvxrr1511797671.jpg','Tart,Glazed,Baking');
INSERT INTO "meal" VALUES(52917,'White chocolate creme brulee',3,9,30,'Heat the cream, chocolate and vanilla pod in a pan until the chocolate has melted. Take off the heat and allow to infuse for 10 mins, scraping the pod seeds into the cream. If using the vanilla extract, add straight away. Heat oven to 160C/fan 140C/gas 3.
Beat yolks and sugar until pale. stir in the chocolate cream. Strain into a jug and pour into ramekins. Place in a deep roasting tray and pour boiling water halfway up the sides. Bake for 15-20 mins until just set with a wobbly centre. Chill in the fridge for at least 4 hrs.
To serve, sprinkle some sugar on top of the brûlées and caramelise with a blowtorch or briefly under a hot grill. Leave caramel to harden, then serve.','https://www.themealdb.com/images/media/meals/uryqru1511798039.jpg','Desert,DinnerParty,Pudding');
INSERT INTO "meal" VALUES(52918,'Fish Stew with Rouille',8,9,47,'Twist the heads from the prawns, then peel away the legs and shells, but leave the tails intact. Devein each prawn. Fry the shells in 1 tbsp oil for 5 mins, until dark pink and golden in patches. Add the wine, boil down by two thirds, then pour in the stock. Strain into a jug, discarding the shells.
Heat the rest of the oil in a deep frying pan or casserole. Add the fennel, onion and garlic, season, then cover and gently cook for 10 mins until softened. Meanwhile, peel the potato and cut into 2cm-ish chunks. Put into a pan of cold water, bring to the boil and cook for 5 mins until almost tender. Drain in a colander.
Peel a strip of zest from the orange. Put the zest, star anise, bay and ½ tsp harissa into the pan. Fry gently, uncovered, for 5-10 mins, until the vegetables are soft, sweet and golden.
Stir in the tomato purée, cook for 2 mins, then add the tomatoes and stock. Simmer for 10 mins until the sauce thickens slightly. Season to taste. The sauce can be made ahead, then reheated later in the day. Meantime, scrub the mussels or clams and pull away any stringy beards. Any that are open should be tapped sharply on the worktop – if they don’t close after a few seconds, discard them.
Reheat the sauce if necessary, then stir the potato, chunks of fish and prawns very gently into the stew. Bring back to the boil, then cover and gently simmer for 3 mins. Scatter the mussels or clams over the stew, then cover and cook for 2 mins more or until the shells have opened wide. Discard any that remain closed. The chunks of fish should flake easily and the prawns should be pink through. Scatter with the thyme leaves.
To make the quick rouille, stir the rest of the harissa through the mayonnaise. Serve the stew in bowls, topped with spoonfuls of rouille, which will melt into the sauce and enrich it. Have some good bread ready, as you’ll definitely want to mop up the juices.','https://www.themealdb.com/images/media/meals/vptqpw1511798500.jpg','Fish,Seafood,Shellfish');
INSERT INTO "meal" VALUES(52919,'Fennel Dauphinoise',9,9,50,'Heat oven to 180C/160C fan/gas 4. Put potatoes, fennel, and garlic in a medium non-stick pan. Pour in milk and double cream, season well and simmer gently, covered, for 10 mins, stirring halfway through, until potatoes are just tender.
Divide the mixture between 2 small (about 150ml) buttered ramekins and scatter with Parmesan. Bake for 40 mins until the potatoes are golden and tender when pierced with a knife. Snip the reserved fennel fronds over before serving.','https://www.themealdb.com/images/media/meals/ytttsv1511798734.jpg','Pie,SideDish');
INSERT INTO "meal" VALUES(52920,'Chicken Marengo',2,9,40,'Heat the oil in a large flameproof casserole dish and stir-fry the mushrooms until they start to soften. Add the chicken legs and cook briefly on each side to colour them a little.
Pour in the passata, crumble in the stock cube and stir in the olives. Season with black pepper – you shouldn’t need salt. Cover and simmer for 40 mins until the chicken is tender. Sprinkle with parsley and serve with pasta and a salad, or mash and green veg, if you like.','https://www.themealdb.com/images/media/meals/qpxvuq1511798906.jpg',NULL);
INSERT INTO "meal" VALUES(52921,'Provençal Omelette Cake',12,9,10,'Break the eggs into two bowls, five in each. Whisk lightly and season with salt and pepper. Heat the oil in a pan, add the courgettes and spring onions, then fry gently for about 10 mins until softened. Cool, then stir into one bowl of eggs with a little salt and pepper. Add the roasted peppers to the other bowl of eggs with the garlic, chilli, salt and pepper.
Heat a little oil in a 20-23cm frying pan, preferably non-stick. Pour the eggs with courgette into a measuring jug, then pourabout one-third of the mixture into the pan, swirling it to cover the base of the pan. Cook until the egg is set and lightly browned underneath, then cover the pan with a plate and invert the omelette onto it. Slide it back into the pan to cook the other side. Repeat with the remaining mix to make two more omelettes, adding a little oil to the pan each time. Stack the omelettes onto a plate. Make three omelettes in the same way with the red pepper mixture, then stack them on a separate plate.
Now make the filling. Beat the cheese to soften it, then beat in the milk to make a spreadable consistency. Stir in the herbs, salt and pepper. Line a deep, 20-23cm round cake tin with cling film (use a tin the same size as the frying pan). Select the best red pepper omelette and place in the tin, prettiest side down. Spread with a thin layer of cheese filling, then cover with a courgette omelette. Repeat, alternating the layers, until all the omelettes and filling are in the tin, finishing with an omelette. Flip the cling film over the omelette, then chill for up to 24 hrs.
To serve, invert the omelette cake onto a serving plate and peel off the cling film. Pile rocket on the top and scatter over the cheese, a drizzle of olive oil and a little freshly ground black pepper. Serve cut into wedges.','https://www.themealdb.com/images/media/meals/qwtrtp1511799242.jpg','Egg');
INSERT INTO "meal" VALUES(52922,'Prawn & Fennel Bisque',9,9,56,'Shell the prawns, then fry the shells in the oil in a large pan for about 5 mins. Add the onion, fennel and carrots and cook for about 10 mins until the veg start to soften. Pour in the wine and brandy, bubble hard for about 1 min to drive off the alcohol, then add the tomatoes, stock and paprika. Cover and simmer for 30 mins. Meanwhile, chop the prawns.
Blitz the soup as finely as you can with a stick blender or food processor, then press through a sieve into a bowl. Spend a bit of time really working the mixture through the sieve as this will give the soup its velvety texture.
Tip back into a clean pan, add the prawns and cook for 10 mins, then blitz again until smooth. You can make and chill this a day ahead or freeze it for 1 month. Thaw ovenight in the fridge. To serve, gently reheat in a pan with the cream. If garnishing, cook the 8 prawns in a little butter. Spoon into small bowls and top with the prawns and snipped fennel fronds.','https://www.themealdb.com/images/media/meals/rtwwvv1511799504.jpg','Soup,Warm,Seafood,Shellfish');
INSERT INTO "meal" VALUES(52923,'Canadian Butter Tarts',3,3,22,'Preheat the oven to fan 170C/ conventional 190C/gas 5. Roll out the pastry on a lightly floured surface so it’s slightly thinner than straight from the pack. Then cut out 18-20 rounds with a 7.5cm fluted cutter, re-rolling the trimmings. Use the rounds to line two deep 12-hole tart tins (not muffin tins). If you only have a regular-sized, 12-hole tart tin you will be able to make a few more slightly shallower tarts.
Beat the eggs in a large bowl and combine with the rest of the ingredients except the walnuts. Tip this mixture into a pan and stir continuously for 3-4 minutes until the butter melts, and the mixture bubbles and starts to thicken. It should be thick enough to coat the back of a wooden spoon. Don’t overcook, and be sure to stir all the time as the mixture can easily burn. Remove from the heat and stir in the nuts.
Spoon the filling into the unbaked tart shells so it’s level with the pastry. Bake for 15-18 minutes until set and pale golden. Leave in the tin to cool for a few minutes before lifting out on to a wire rack. Serve warm or cold.','https://www.themealdb.com/images/media/meals/wpputp1511812960.jpg','Speciality,Snack,Desert,Pudding');
INSERT INTO "meal" VALUES(52924,'Nanaimo Bars',3,3,23,'Start by making the biscuit base. In a bowl, over a pan of simmering water, melt the butter with the sugar and cocoa powder, stirring occasionally until smooth. Whisk in the egg for 2 to 3 mins until the mixture has thickened. Remove from heat and mix in the biscuit crumbs, coconut and almonds if using, then press into the base of a lined 20cm square tin. Chill for 10 mins.
For the middle layer, make the custard icing; whisk together the butter, cream and custard powder until light and fluffy, then gradually add the icing sugar until fully incorporated. Spread over the bottom layer and chill in the fridge for at least 10 mins until the custard is no longer soft.
Melt the chocolate and butter together in the microwave, then spread over the chilled bars and put back in the fridge. Leave until the chocolate has fully set (about 2 hrs). Take the mixture out of the tin and slice into squares to serve.','https://www.themealdb.com/images/media/meals/vwuprt1511813703.jpg','Treat,Snack,Dairy');
INSERT INTO "meal" VALUES(52925,'Split Pea Soup',9,3,10,'Put the gammon in a very large pan with 2 litres water and bring to the boil. Remove from the heat and drain off the water – this helps to get rid of some of the saltiness. Recover with 2 litres cold water and bring to the boil again. Put everything but the frozen peas into the pan and bring to the boil. Reduce to a simmer and cook for 1½-2½ hrs, topping up the water as and when you need to, to a similar level it started at. As the ham cooks and softens, you can halve it if you want, so it is all submerged under the liquid. When the ham is tender enough to pull into shreds, it is ready.
Lift out the ham, peel off and discard the skin. While it is still hot (wear a clean pair of rubber gloves), shred the meat. Remove bay from the soup and stir in the frozen peas. Simmer for 1 min, then blend until smooth. Add a splash of water if too thick, and return to the pan to heat through if it has cooled, or if you are making ahead.
When you are ready to serve, mix the hot soup with most of the ham – gently reheat if made ahead. Serve in bowls with the remaining ham scattered on top, and eat with crusty bread and butter.','https://www.themealdb.com/images/media/meals/xxtsvx1511814083.jpg','Soup,Warm');
INSERT INTO "meal" VALUES(52926,'Tourtiere',7,3,30,'Heat oven to 200C/180C fan/gas 6. Boil the potato until tender, drain and mash, then leave to cool. Heat the oil in a non-stick pan, add the mince and onion and quickly fry until browned. Add the garlic, spices, stock, plenty of pepper and a little salt and mix well. Remove from the heat, stir into the potato and leave to cool.
Roll out half the pastry and line the base of a 20-23cm pie plate or flan tin. Fill with the pork mixture and brush the edges of the pastry with water. Roll out the remaining dough and cover the pie. Press the edges of the pastry to seal, trimming off the excess. Prick the top of the pastry case to allow steam to escape and glaze the top with the beaten egg.
Bake for 30 mins until the pastry is crisp and golden. Serve cut into wedges with a crisp green salad. Leftovers are good cold for lunch the next day, served with a selection of pickles.','https://www.themealdb.com/images/media/meals/ytpstt1511814614.jpg','Pie,MainMeal,BBQ,Cake');
INSERT INTO "meal" VALUES(52927,'Montreal Smoked Meat',1,3,30,'To make the cure, in a small bowl mix together salt, pink salt, black pepper, coriander, sugar, bay leaf, and cloves. Coat entire brisket with the cure and place in an extra-large resealable plastic bag. Place in the coldest part of the refrigerator and cure for 4 days, flipping brisket twice a day.
Remove brisket from bag and wash as much cure off as possible under cold running water. Place brisket in a large container and fill with water and let soak for 2 hours, replacing water every 30 minutes. Remove from water and pat dry with paper towels.
To make the rub, mix together black pepper, coriander, paprika, garlic powder, onion powder, dill weed, mustard, celery seed, and crushed red papper in a small bowl. Coat entire brisket with the rub.
Fire up smoker or grill to 225 degrees, adding chunks of smoking wood chunks when at temperature. When wood is ignited and producing smoke, place brisket in, fat side up, and smoke until an instant read thermometer registers 165 degrees when inserted into thickest part of the brisket, about 6 hours.
Transfer brisket to large roasting pan with V-rack. Place roasting pan over two burners on stovetop and fill with 1-inch of water. Bring water to a boil over high heat, reduce heat to medium, cover roasting pan with aluminum foil, and steam brisket until an instant read thermometer registers 180 degrees when inserted into thickest part of the meat, 1 to 2 hours, adding more hot water as needed.
Transfer brisket to cutting board and let cool slightly. Slice and serve, preferably on rye with mustard.','https://www.themealdb.com/images/media/meals/uttupv1511815050.jpg','Speciality,Snack,StrongFlavor');
INSERT INTO "meal" VALUES(52928,'BeaverTails',3,3,10,'In the bowl of a stand mixer, add warm water, a big pinch of sugar and yeast. Allow to sit until frothy.
Into the same bowl, add 1/2 cup sugar, warm milk, melted butter, eggs and salt, and whisk until combined.
Place a dough hook on the mixer, add the flour with the machine on, until a smooth but slightly sticky dough forms.
Place dough in a bowl, cover with plastic wrap, and allow to proof for 1 1/2 hours.
Cut dough into 12 pieces, and roll out into long oval-like shapes about 1/4 inch thick that resemble a beaver’s tail.
In a large, deep pot, heat oil to 350 degrees. Gently place beavertail dough into hot oil and cook for 30 to 45 seconds on each side until golden brown.
Drain on paper towels, and garnish as desired. Toss in cinnamon sugar, in white sugar with a squeeze of lemon, or with a generous slathering of Nutella and a handful of toasted almonds. Enjoy!','https://www.themealdb.com/images/media/meals/ryppsv1511815505.jpg','Treat,Pudding,Speciality');
INSERT INTO "meal" VALUES(52929,'Timbits',3,3,10,'Sift together dry ingredients.
Mix together wet ingredients and incorporate into dry. Stir until smooth.
Drop by teaspoonfuls(no bigger) into hot oil (365 degrees, no hotter), turning after a few moments until golden brown on all sides.
Remove and drain.
Roll in cinnamon sugar while still warm and serve.','https://www.themealdb.com/images/media/meals/txsupu1511815755.jpg','Snack,Treat');
INSERT INTO "meal" VALUES(52930,'Pate Chinois',1,3,40,'In a large pot of salted water, cook the potatoes until they are very tender. Drain.
With a masher, coarsely crush the potatoes with at least 30 ml (2 tablespoons) of butter. With an electric mixer, purée with the milk. Season with salt and pepper. Set aside.
With the rack in the middle position, preheat the oven to 190 °C (375 °F).
In a large skillet, brown the onion in the remaining butter. Add the meat and cook until golden brown. Season with salt and pepper. Remove from the heat.
Lightly press the meat at the bottom of a 20-cm (8-inch) square baking dish. Cover with the corn and the mashed potatoes. Sprinkle with paprika and parsley.
Bake for about 30 minutes. Finish cooking under the broiler. Let cool for 10 minutes.','https://www.themealdb.com/images/media/meals/yyrrxr1511816289.jpg','MainMeal,Alcoholic');
INSERT INTO "meal" VALUES(52931,'Sugar Pie',3,3,35,'Preheat oven to 350 degrees F (175 degrees C). Grease a 9-inch pie dish.
Place the brown sugar and butter in a mixing bowl, and beat them together with an electric mixer until creamy and very well combined, without lumps. Beat in eggs, one at a time, incorporating the first egg before adding the next one. Add the vanilla extract and salt; beat the flour in, a little at a time, and then the milk, making a creamy batter. Pour the batter into the prepared pie dish.
Bake in the preheated oven for 35 minutes; remove pie, and cover the rim with aluminum foil to prevent burning. Return to oven, and bake until the middle sets and the top forms a crusty layer, about 15 more minutes. Let the pie cool to room temperature, then refrigerate for at least 1 hour before serving.','https://www.themealdb.com/images/media/meals/yrstur1511816601.jpg','Pie,Desert');
INSERT INTO "meal" VALUES(52932,'Pouding chomeur',3,3,37,'In a large bowl, with an electric mixer, mix the butter and sugar till the mix is light.
Add eggs and vanilla and mix.
In another bowl, mix flour and baking powder.
Alternate flour mix and milk to the butter mix.
Pour into a 13 inch by 9 inch greased pan.
MAPLE SAUCE.
In a large casserole, bring to boil the syrup, brown sugar, cream and butter and constantly stir.
Reduce heat and and gently cook 2 minutes or till sauce has reduced a little bit.
Pour sauce gently over cake.
Bake at 325°f (160°c) about 35 minutes or till cake is light brown and when toothpick inserted comes out clean.','https://www.themealdb.com/images/media/meals/yqqqwu1511816912.jpg','Pudding');
INSERT INTO "meal" VALUES(52933,'Rappie Pie',2,3,65,'Preheat oven to 400 degrees F (200 degrees C). Grease a 10x14x2-inch baking pan.
Heat margarine in a skillet over medium heat; stir in onion. Cook and stir until onion has softened and turned translucent, about 5 minutes. Reduce heat to low and continue to cook and stir until onion is very tender and dark brown, about 40 minutes more.
Bring chicken broth to a boil in a large pot; stir in chicken breasts, reduce heat, and simmer until chicken is no longer pink at the center, about 20 minutes. Remove from heat. Remove chicken breasts to a plate using a slotted spoon; reserve broth.
Juice potatoes with an electric juicer; place dry potato flesh into a bowl and discard juice. Stir salt and pepper into potatoes; stir in enough reserved broth to make the mixture the consistency of oatmeal. Set remaining broth aside.
Spread half of potato mixture evenly into the prepared pan. Lay cooked chicken breast evenly over potatoes; scatter caramelized onion evenly over chicken. Spread remaining potato mixture over onions and chicken to cover.
Bake in the preheated oven until golden brown, about 1 hour. Reheat chicken broth; pour over individual servings as desired.','https://www.themealdb.com/images/media/meals/ruwpww1511817242.jpg','Pie');
INSERT INTO "meal" VALUES(52934,'Chicken Basquaise',2,9,73,'Preheat the oven to 180°C/Gas mark 4. Have the chicken joints ready to cook. Heat the butter and 3 tbsp olive oil in a flameproof casserole or large frying pan. Brown the chicken pieces in batches on both sides, seasoning them with salt and pepper as you go. Don''t crowd the pan - fry the chicken in small batches, removing the pieces to kitchen paper as they are done.

Add a little more olive oil to the casserole and fry the onions over a medium heat for 10 minutes, stirring frequently, until softened but not browned. Add the rest of the oil, then the peppers and cook for another 5 minutes.

Add the chorizo, sun-dried tomatoes and garlic and cook for 2-3 minutes. Add the rice, stirring to ensure it is well coated in the oil. Stir in the tomato paste, paprika, bay leaves and chopped thyme. Pour in the stock and wine. When the liquid starts to bubble, turn the heat down to a gentle simmer. Press the rice down into the liquid if it isn''t already submerged and place the chicken on top. Add the lemon wedges and olives around the chicken.

Cover and cook in the oven for 50 minutes. The rice should be cooked but still have some bite, and the chicken should have juices that run clear when pierced in the thickest part with a knife. If not, cook for another 5 minutes and check again.','https://www.themealdb.com/images/media/meals/wruvqv1511880994.jpg','Meat');
INSERT INTO "meal" VALUES(52935,'Steak Diane',1,9,23,'Heat oil in a 12" skillet over medium-high heat. Season steaks with salt and pepper, and add to skillet; cook, turning once, until browned on both sides and cooked to desired doneness, about 4 to 5 minutes for medium-rare. Transfer steaks to a plate, and set aside.
Return skillet to high heat, and add stock; cook until reduced until to 1⁄2 cup, about 10 minutes. Pour into a bowl, and set aside. Return skillet to heat, and add butter; add garlic and shallots, and cook, stirring, until soft, about 2 minutes. Add mushrooms, and cook, stirring, until they release any liquid and it evaporates and mushrooms begin to brown, about 2 minutes. Add cognac, and light with a match to flambée; cook until flame dies down. Stir in reserved stock, cream, Dijon, Worcestershire, and hot sauce, and then return steaks to skillet; cook, turning in sauce, until warmed through and sauce is thickened, about 4 minutes. Transfer steak to serving plates and stir parsley and chives into sauce; pour sauce over steaks to serve.','https://www.themealdb.com/images/media/meals/vussxq1511882648.jpg','DateNight,Expensive,Meat,MainMeal,Cheasy');
INSERT INTO "meal" VALUES(52936,'Saltfish and Ackee',8,14,10,'For the saltfish, soak the salt cod overnight, changing the water a couple of times.
Drain, then put the cod in a large pan of fresh water and bring to the boil. Drain again, add fresh water and bring to the boil again.
Simmer for about five minutes, or until cooked through, then drain and flake the fish into large pieces. Discard any skin or bones.
For the dumplings, mix the flour and suet with a pinch of salt and 250ml/9fl oz water to make a dough.
Wrap the mixture in clingfilm and leave in the fridge to rest.
Open the can of ackee, drain and rinse, then set aside.
Heat a tablespoon of olive oil in a pan and fry the onion until softened but not brown.
Add the spices, seasoning, pepper sauce and sliced peppers and continue to fry until the peppers are tender.
Add the chopped tomatoes, then the salt cod and mix together. Lastly stir in the ackee very gently and leave to simmer until ready to serve.
When you’re almost ready to eat, heat about 1cm/½in vegetable oil in a frying pan and heat until just smoking.
Shape the dumpling mix into plum-size balls and shallow-fry until golden-brown. (CAUTION: hot oil can be dangerous. Do not leave the pan unattended.)
Drain the dumplings on kitchen paper and serve with the saltfish and ackee.','https://www.themealdb.com/images/media/meals/vytypy1511883765.jpg','Speciality');
INSERT INTO "meal" VALUES(52937,'Jerk chicken with rice & peas',2,14,90,'To make the jerk marinade, combine all the ingredients in a food processor along with 1 tsp salt, and blend to a purée. If you’re having trouble getting it to blend, just keep turning off the blender, stirring the mixture, and trying again. Eventually it will start to blend up – don’t be tempted to add water, as you want a thick paste.

Taste the jerk mixture for seasoning – it should taste pretty salty, but not unpleasantly, puckering salty. You can now throw in more chillies if it’s not spicy enough for you. If it tastes too salty and sour, try adding in a bit more brown sugar until the mixture tastes well balanced.

Make a few slashes in the chicken thighs and pour the marinade over the meat, rubbing it into all the crevices. Cover and leave to marinate overnight in the fridge.

If you want to barbecue your chicken, get the coals burning 1 hr or so before you’re ready to cook. Authentic jerked meats are not exactly grilled as we think of grilling, but sort of smoke-grilled. To get a more authentic jerk experience, add some wood chips to your barbecue, and cook your chicken over slow, indirect heat for 30 mins. To cook in the oven, heat to 180C/160C fan/gas 4. Put the chicken pieces in a roasting tin with the lime halves and cook for 45 mins until tender and cooked through.

While the chicken is cooking, prepare the rice & peas. Rinse the rice in plenty of cold water, then tip it into a large saucepan with all the remaining ingredients except the kidney beans. Season with salt, add 300ml cold water and set over a high heat. Once the rice begins to boil, turn it down to a medium heat, cover and cook for 10 mins.

Add the beans to the rice, then cover with a lid. Leave off the heat for 5 mins until all the liquid is absorbed. Squeeze the roasted lime over the chicken and serve with the rice & peas, and some hot sauce if you like it really spicy.','https://www.themealdb.com/images/media/meals/tytyxu1515363282.jpg','Chilli,Curry');
INSERT INTO "meal" VALUES(52938,'Jamaican Beef Patties',1,14,90,'Make the Pastry Dough

To a large bowl, add flour, 1 teaspoon salt, and turmeric and mix thoroughly.
Rub shortening into flour until there are small pieces of shortening completely covered with flour.
Pour in 1/2 cup of the ice water and mix with your hands to bring the dough together. Keep adding ice water 2 to 3 tablespoons at a time until the mixture forms a dough.
At this stage, you can cut the dough into 2 large pieces, wrap in plastic and refrigerate for 30 minutes before using it.
Alternatively, cut the dough into 10 to 12 equal pieces, place on a platter or baking sheet, cover securely with plastic wrap and let chill for 30 minutes while you make the filling.
Make the Filling

Add ground beef to a large bowl. Sprinkle in allspice and black pepper. Mix together and set aside.
Heat oil in a skillet until hot.
Add onions and sauté until translucent. Add hot pepper, garlic and thyme and continue to sauté for another minute. Add 1/4 teaspoon salt.
Add seasoned ground beef and toss to mix, breaking up any clumps, and let cook until the meat is no longer pink.
Add ketchup and more salt to taste.
Pour in 2 cups of water and stir. Bring the mixture to a boil then reduce heat and let simmer until most of the liquid has evaporated and whatever is remaining has reduced to a thick sauce.
Fold in green onions. Remove from heat and let cool completely.
Assemble the Patties

Beat the egg and water together to make an egg wash. Set aside.
Now you can prepare the dough in two ways.
First Method: Flour the work surface and rolling pin. If you had cut it into 2 large pieces, then take one of the large pieces and roll it out into a very large circle. Take a bowl with a wide rim (about 5 inches) and cut out three circles.

Place about 3 heaping tablespoons of the filling onto 1/2 of each circle. Dip a finger into the water and moisten the edges of the pastry. Fold over the other half and press to seal. 

Take a fork and crimp the edges. Cut off any extra to make it look neat and uniform. Place on a parchment-lined baking sheet and continue to work until you have rolled all the dough and filled the patties.
Second Method: If you had pre-cut the dough into individual pieces, work with one piece of dough at a time. Roll it out on a floured surface into a 5-inch circle or a little larger. Don’t worry if the edges are not perfect.

Place 3 heaping tablespoons of the filling on one side of the circle. Dip a finger into the water and moisten the edges of the pastry. Fold over the other half and press to seal.

Take a fork and crimp the edges. Cut off any extra to make it look neat and uniform. Place on a parchment-lined baking sheet and continue work until you have rolled all the dough and filled the patties.

Frying and Serving the Patties

After forming the patties, place the pans in the refrigerator while you heat the oven to 350 F.
Just before adding the pans with the patties to the oven, brush the patties with egg wash.
Bake patties for 30 minutes or until golden brown.
Cool on wire racks.
Serve warm.','https://www.themealdb.com/images/media/meals/wsqqsw1515364068.jpg','Snack,Spicy');
INSERT INTO "meal" VALUES(52939,'Callaloo Jamaican Style',5,14,18,'Cut leaves and soft stems from the kale branches, them soak in a bowl of cold water for about 5-10 minutes or until finish with prep.
Proceed to slicing the onions, mincing the garlic and dicing the tomatoes. Set aside
Remove kale from water cut in chunks.
Place bacon on saucepan and cook until crispy. Then add onions, garlic, thyme, stir for about a minute or more
Add tomatoes; scotch bonnet pepper, smoked paprika. Sauté for about 2-3 more minutes.
Finally add vegetable, salt, mix well, and steamed for about 6-8 minutes or until leaves are tender. Add a tiny bit of water as needed. Adjust seasonings and turn off the heat.
Using a sharp knife cut both ends off the plantain. This will make it easy to grab the skin of the plantains. Slit a shallow line down the long seam of the plantain; peel only as deep as the peel. Remove plantain peel by pulling it back.
Slice the plantain into medium size lengthwise slices and set aside.
Coat a large frying pan with cooking oil spray. Spray the tops of the plantains with a generous layer of oil spray and sprinkle with salt, freshly ground pepper.
Let the plantains "fry" on medium heat, shaking the frying pan to redistribute them every few minutes.
As the plantains brown, continue to add more cooking oil spray, salt and pepper (if needed) until they have reached the desired color and texture.
Remove and serve with kale','https://www.themealdb.com/images/media/meals/ussyxw1515364536.jpg','Savory');
INSERT INTO "meal" VALUES(52940,'Brown Stew Chicken',2,14,30,'Squeeze lime over chicken and rub well. Drain off excess lime juice.
Combine tomato, scallion, onion, garlic, pepper, thyme, pimento and soy sauce in a large bowl with the chicken pieces. Cover and marinate at least one hour.
Heat oil in a dutch pot or large saucepan. Shake off the seasonings as you remove each piece of chicken from the marinade. Reserve the marinade for sauce.
Lightly brown the chicken a few pieces at a time in very hot oil. Place browned chicken pieces on a plate to rest while you brown the remaining pieces.
Drain off excess oil and return the chicken to the pan. Pour the marinade over the chicken and add the carrots. Stir and cook over medium heat for 10 minutes.
Mix flour and coconut milk and add to stew, stirring constantly. Turn heat down to minimum and cook another 20 minutes or until tender.','https://www.themealdb.com/images/media/meals/sypxpx1515365095.jpg','Stew');
INSERT INTO "meal" VALUES(52941,'Red Peas Soup',1,14,115,'Wash and rinse the dried kidney beans.. then cover with water in a deep bowl. Remember as they soak they will expand to at least triple the size they were originally so add a lot of water to the bowl. Soak them overnight or for at least 2 hrs to make the cooking step go quicker. I tossed out the water they were soaked in after it did the job.

Have your butcher cut the salted pigtail into 2 inch pieces as it will be very difficult to cut with an ordinary kitchen knife. Wash, then place a deep pot with water and bring to a boil. Cook for 20 minutes, then drain + rinse and repeat (boil again in water). The goal is to make the pieces of pig tails tender and to remove most of the salt it was cured in.

Time to start the soup. Place everything in the pot (except the flour and potato), then cover with water and place on a high flame to bring to a boil. As it comes to a boil, skim off any scum/froth at the top and discard. Reduce the heat to a gentle boil and allow it to cook for 1 hr and 15 mins.. basically until the beans are tender and start falling apart.

It’s now time to add the potato (and Yams etc if you’re adding it) as well as the coconut milk and continue cooking for 15 minutes.

Now is a good time to start making the basic dough for the spinner dumplings. Mix the flour and water (add a pinch of salt if you want) until you have a soft/smooth dough. allow it to rest for 5 minutes, then pinch of a tablespoon at a time and roll between your hands to form a cigarette shape.

Add them to the pot, stir well and continue cooking for another 15 minutes on a rolling boil.

You’ll notice that I didn’t add any salt to the pot as the remaining salt from the salted pigtails will be enough to properly season this dish. However you can taste and adjust accordingly. Lets recap the timing part of things so you’re not confused. Cook the base of the soup for 1 hr and 15 minute or until tender, then add the potatoes and cook for 15 minutes, then add the dumplings and cook for a further 15 minutes. Keep in mind that this soup will thicken quite a bit as it cools.

While this is not a traditional recipe to any one specific island, versions of this soup (sometimes called stewed peas) can be found throughout the Caribbean, Latin America and Africa. A hearty bowl of this soup will surely give you the sleepies (some may call it ethnic fatigue). You can certainly freeze the leftovers and heat it up another day.','https://www.themealdb.com/images/media/meals/sqpqtp1515365614.jpg','Soup,SideDish');
INSERT INTO "meal" VALUES(52942,'Roast fennel and aubergine paella',11,23,56,'1 Put the fennel, aubergine, pepper and courgette in a roasting tray. Add a glug of olive oil, season with salt and pepper and toss around to coat the veggies in the oil. Roast in the oven for 20 minutes, turning a couple of times until the veg are pretty much cooked through and turning golden.

2 Meanwhile, heat a paella pan or large frying pan over a low– medium heat and add a glug of olive oil. Sauté the onion for 8–10 minutes until softened. Increase the heat to medium and stir in the rice, paprika and saffron. Cook for around 1 minute to start toasting the rice, then add the white wine. Reduce by about half before stirring in two-thirds of the stock. Reduce to a simmer and cook for 10 minutes without a lid, stirring a couple of times.

3 Stir in the peas, add some seasoning, then gently mix in the roasted veg. Pour over the remaining stock, arrange the lemon wedges on top and cover with a lid or some aluminium foil. Cook for a further 10 minutes.

4 To ensure you get the classic layer of toasted rice at the bottom of the pan, increase the heat to high until you hear a slight crackle. Remove from the heat and sit for 5 minutes before sprinkling over the parsley and serving.','https://www.themealdb.com/images/media/meals/1520081754.jpg','Vegan,Paella');
INSERT INTO "meal" VALUES(52943,'Oxtail with broad beans',1,14,35,'Toss the oxtail with the onion, spring onion, garlic, ginger, chilli, soy sauce, thyme, salt and pepper. Heat the vegetable oil in a large frying pan over medium-high heat. Brown the oxtail in the pan until browned all over, about 10 minutes. Place into a pressure cooker, and pour in 375ml water. Cook at pressure for 25 minutes, then remove from heat, and remove the lid according to manufacturer''s directions.
Add the broad beans and pimento berries, and bring to a simmer over medium-high heat. Dissolve the cornflour in 2 tablespoons water, and stir into the simmering oxtail. Cook and stir a few minutes until the sauce has thickened, and the broad beans are tender.','https://www.themealdb.com/images/media/meals/1520083578.jpg','Heavy,MainMeal,Speciality');
INSERT INTO "meal" VALUES(52944,'Escovitch Fish',8,14,10,'Rinse fish; rub with lemon or lime, seasoned with salt and pepper or use your favorite seasoning. I used creole seasoning. Set aside or place in the oven to keep it warm until sauce is ready.

In large skillet heat oil over medium heat, until hot, add the fish, cook each side- for about 5-7 minutes until cooked through and crispy on both sides. Remove fish and set aside. Drain oil and leave about 2-3 tablespoons of oil
Add, bay leave, garlic and ginger, stir-fry for about a minute making sure the garlic does not burn
Then add onion, bell peppers, thyme, scotch bonnet, sugar, all spice-continue stirring for about 2-3 minutes. Add vinegar, mix an adjust salt and pepper according to preference. Let it simmer for about 2 more minutes. 

Discard bay leave, thyme spring and serve over fish with a side of this bammy. You may make the sauce about 2 days in advance.','https://www.themealdb.com/images/media/meals/1520084413.jpg','Seafood,Spicy,Speciality,Easter');
INSERT INTO "meal" VALUES(52945,'Kung Pao Chicken',2,4,30,'Combine the sake or rice wine, soy sauce, sesame oil and cornflour dissolved in water. Divide mixture in half.
In a glass dish or bowl, combine half of the sake mixture with the chicken pieces and toss to coat. Cover dish and place in refrigerator for about 30 minutes.
In a medium frying pan, combine remaining sake mixture, chillies, vinegar and sugar. Mix together and add spring onion, garlic, water chestnuts and peanuts. Heat sauce slowly over medium heat until aromatic.
Meanwhile, remove chicken from marinade and sauté in a large frying pan until juices run clear. When sauce is aromatic, add sautéed chicken and let simmer together until sauce thickens.','https://www.themealdb.com/images/media/meals/1525872624.jpg',NULL);
INSERT INTO "meal" VALUES(52946,'Kung Po Prawns',8,4,14,'Mix the cornflour and 1 tbsp soy sauce, toss in the prawns and set aside for 10 mins. Stir the vinegar, remaining soy sauce, tomato purée, sugar and 2 tbsp water together to make a sauce.

When you’re ready to cook, heat a large frying pan or wok until very hot, then add 1 tbsp oil. Fry the prawns until they are golden in places and have opened out– then tip them out of the pan.

Heat the remaining oil and add the peanuts, chillies and water chestnuts. Stir-fry for 2 mins or until the peanuts start to colour, then add the ginger and garlic and fry for 1 more min. Tip in the prawns and sauce and simmer for 2 mins until thickened slightly. Serve with rice.','https://www.themealdb.com/images/media/meals/1525873040.jpg','BBQ');
INSERT INTO "meal" VALUES(52947,'Ma Po Tofu',1,4,10,'Add a small pinch of salt and sesame oil to minced beef. Mix well and set aside.
Mix 1 tablespoon of cornstarch with 2 and ½ tablespoons of water in a small bowl to make water starch.
Cut tofu into square cubes (around 2cms). Bring a large amount of water to a boil and then add a pinch of salt. Slide the tofu in and cook for 1 minute. Move out and drain.
Get a wok and heat up around 2 tablespoons of oil, fry the minced meat until crispy. Transfer out beef out and leave the oil in.
Fry doubanjiang for 1 minute over slow fire and then add garlic, scallion white, ginger and fermented black beans to cook for 30 seconds until aroma. Then mix pepper flakes in.
Add water to the seasonings and bring to boil over high fire. Gently slide the tofu cubes. Add light soy sauce and beef.Slow the heat after boiling and then simmer for 6-8 minutes. Then add chopped garlic greens.
Stir the water starch and then pour half of the mixture to the simmering pot. Wait for around 30 seconds and then pour the other half. You can slightly taste the tofu and add pinch of salt if not salty enough. By the way, if you feel it is too spicy, add some sugar can milder the taste. But be carefully as the broth is very hot at this point.
Transfer out when almost all the seasonings stick to tofu cubes. Sprinkle Szechuan peppercorn powder (to taste)and chopped garlic greens if using.
Serve immediately with steamed rice.','https://www.themealdb.com/images/media/meals/1525874812.jpg',NULL);
INSERT INTO "meal" VALUES(52948,'Wontons',7,4,10,'Combine pork, garlic, ginger, soy sauce, sesame oil, and vegetables in a bowl.
Separate wonton skins.
Place a heaping teaspoon of filling in the center of the wonton.
Brush water on 2 borders of the skin, covering 1/4 inch from the edge.
Fold skin over to form a triangle, sealing edges.
Pinch the two long outside points together.
Heat oil to 450 degrees and fry 4 to 5 at a time until golden.
Drain and serve with sauce.','https://www.themealdb.com/images/media/meals/1525876468.jpg','MainMeal');
INSERT INTO "meal" VALUES(52949,'Sweet and Sour Pork',7,4,20,'Preparation
1. Crack the egg into a bowl. Separate the egg white and yolk.

Sweet and Sour Pork
2. Slice the pork tenderloin into strips.

3. Prepare the marinade using a pinch of salt, one teaspoon of starch, two teaspoons of light soy sauce, and an egg white.

4. Marinade the pork strips for about 20 minutes.

5. Put the remaining starch in a bowl. Add some water and vinegar to make a starchy sauce.

Sweet and Sour Pork
Cooking Instructions
1. Pour the cooking oil into a wok and heat to 190°C (375°F). Add the marinated pork strips and fry them until they turn brown. Remove the cooked pork from the wok and place on a plate.

2. Leave some oil in the wok. Put the tomato sauce and white sugar into the wok, and heat until the oil and sauce are fully combined.

3. Add some water to the wok and thoroughly heat the sweet and sour sauce before adding the pork strips to it.

4. Pour in the starchy sauce. Stir-fry all the ingredients until the pork and sauce are thoroughly mixed together.

5. Serve on a plate and add some coriander for decoration.','https://www.themealdb.com/images/media/meals/1529442316.jpg','Sweet');
INSERT INTO "meal" VALUES(52950,'Szechuan Beef',1,4,10,'STEP 1 - MARINATING THE BEEF
In a bowl, add the beef, salt, sesame seed oil, white pepper, egg white, 2 Tablespoon of corn starch and 1 Tablespoon of oil.
STEP 2 - STIR FRY
First Cook the beef by adding 2 Tablespoon of oil until the beef is golden brown.
Set the beef aside
In a wok add 1 Tablespoon of oil, minced ginger, minced garlic and stir-fry for few seconds.
Next add all of the vegetables and then add sherry cooking wine and 1 cup of water.
To make the sauce add oyster sauce, hot pepper sauce, and sugar.
add the cooked beef and 1 spoon of soy sauce
To thicken the sauce, whisk together 1 Tablespoon of cornstarch and 2 Tablespoon of water in a bowl and slowly add to your stir-fry until it''s the right thickness.','https://www.themealdb.com/images/media/meals/1529443236.jpg',NULL);
INSERT INTO "meal" VALUES(52951,'General Tso''s Chicken',2,4,10,'DIRECTIONS:
STEP 1 - SAUCE
In a bowl, add 2 Cups of water, 2 Tablespoon soy sauce, 2 Tablespoon white vinegar, sherry cooking wine, 1/4 Teaspoon white pepper, minced ginger, minced garlic, hot pepper, ketchup, hoisin sauce, and sugar.
Mix together well and set aside.
STEP 2 - MARINATING THE CHICKEN
In a bowl, add the chicken, 1 pinch of salt, 1 pinch of white pepper, 2 egg whites, and 3 Tablespoon of corn starch
STEP 3 - DEEP FRY THE CHICKEN
Deep fry the chicken at 350 degrees for 3-4 minutes or until it is golden brown and loosen up the chicken so that they don''t stick together.
Set the chicken aside.
STEP 4 - STIR FRY
Add the sauce to the wok and then the broccoli and wait until it is boiling.
To thicken the sauce, whisk together 2 Tablespoon of cornstarch and 4 Tablespoon of water in a bowl and slowly add to your stir-fry until it''s the right thickness.
Next add in the chicken and stir-fry for a minute and serve on a plate','https://www.themealdb.com/images/media/meals/1529444113.jpg',NULL);
INSERT INTO "meal" VALUES(52952,'Beef Lo Mein',1,4,10,'STEP 1 - MARINATING THE BEEF
In a bowl, add the beef, salt, 1 pinch white pepper, 1 Teaspoon sesame seed oil, 1/2 egg, corn starch,1 Tablespoon of oil and mix together.
STEP 2 - BOILING THE THE NOODLES
In a 6 qt pot add your noodles to boiling water until the noodles are submerged and boil on high heat for 10 seconds. After your noodles is done boiling strain and cool with cold water.
STEP 3 - STIR FRY
Add 2 Tablespoons of oil, beef and cook on high heat untill beef is medium cooked.
Set the cooked beef aside
In a wok add 2 Tablespoon of oil, onions, minced garlic, minced ginger, bean sprouts, mushrooms, peapods and 1.5 cups of water or until the vegetables are submerged in water.
Add the noodles to wok
To make the sauce, add oyster sauce, 1 pinch white pepper, 1 teaspoon sesame seed oil, sugar, and 1 Teaspoon of soy sauce.
Next add the beef to wok and stir-fry','https://www.themealdb.com/images/media/meals/1529444830.jpg',NULL);
INSERT INTO "meal" VALUES(52953,'Shrimp Chow Fun',8,4,15,'STEP 1 - SOAK THE RICE NOODLES
Soak the rice noodles overnight untill they are soft
STEP 2 - BOIL THE RICE NOODLES
Boil the noodles for 10-15 minutes and then rinse with cold water to stop the cooking process of the noodles.
STEP 3 -MARINATING THE SHRIMP
In a bowl add the shrimp, egg, 1 pinch of white pepper, 1 Teaspoon of sesame seed oil, 1 Tablespoon corn starch and 1 tablespoon of oil
Mix together well
STEP 4 - STIR FRY
In a wok add 2 Tablespoons of oil, shrimp and stir fry them until it is golden brown
Set the shrimp aside
Add 1 Tablespoon of oil to the work and then add minced garlic, ginger and all of the vegetables.
Add the noodles to the wok
Next add sherry cooking wine, oyster sauce, sugar, vinegar, sesame seed oil, 1 pinch white pepper, and soy sauce
Add back in the shrimp
To thicken the sauce, whisk together 1 Tablespoon of corn starch and 2 Tablespoon of water in a bowl and slowly add to your stir-fry until it''s the right thickness.','https://www.themealdb.com/images/media/meals/1529445434.jpg',NULL);
INSERT INTO "meal" VALUES(52954,'Hot and Sour Soup',7,4,10,'STEP 1 - MAKING THE SOUP
In a wok add chicken broth and wait for it to boil.
Next add salt, sugar, sesame seed oil, white pepper, hot pepper sauce, vinegar and soy sauce and stir for few seconds.
Add Tofu, mushrooms, black wood ear mushrooms to the wok.
To thicken the sauce, whisk together 1 Tablespoon of cornstarch and 2 Tablespoon of water in a bowl and slowly add to your soup until it''s the right thickness.
Next add 1 egg slightly beaten with a knife or fork and add it to the soup and stir for 8 seconds
Serve the soup in a bowl and add the bbq pork and sliced green onions on top.','https://www.themealdb.com/images/media/meals/1529445893.jpg','Soup');
INSERT INTO "meal" VALUES(52955,'Egg Drop Soup',12,4,10,'In a wok add chicken broth and wait for it to boil.
Next add salt, sugar, white pepper, sesame seed oil.
When the chicken broth is boiling add the vegetables to the wok.
To thicken the sauce, whisk together 1 Tablespoon of cornstarch and 2 Tablespoon of water in a bowl and slowly add to your soup until it''s the right thickness.
Next add 1 egg slightly beaten with a knife or fork and add it to the soup slowly and stir for 8 seconds
Serve the soup in a bowl and add the green onions on top.','https://www.themealdb.com/images/media/meals/1529446137.jpg','Soup,Baking,Calorific');
INSERT INTO "meal" VALUES(52956,'Chicken Congee',2,4,80,'STEP 1 - MARINATING THE CHICKEN
In a bowl, add chicken, salt, white pepper, ginger juice and then mix it together well.
Set the chicken aside.
STEP 2 - RINSE THE WHITE RICE
Rinse the rice in a metal bowl or pot a couple times and then drain the water.
STEP 2 - BOILING THE WHITE RICE
Next add 8 cups of water and then set the stove on high heat until it is boiling. Once rice porridge starts to boil, set the stove on low heat and then stir it once every 8-10 minutes for around 20-25 minutes.
After 25 minutes, this is optional but you can add a little bit more water to make rice porridge to make it less thick or to your preference.
Next add the marinated chicken to the rice porridge and leave the stove on low heat for another 10 minutes.
After an additional 10 minutes add the green onions, sliced ginger, 1 pinch of salt, 1 pinch of white pepper and stir for 10 seconds.
Serve the rice porridge in a bowl
Optional: add Coriander on top of the rice porridge.','https://www.themealdb.com/images/media/meals/1529446352.jpg',NULL);
INSERT INTO "meal" VALUES(52957,'Fruit and Cream Cheese Breakfast Pastries',13,1,20,'Preheat oven to 400ºF (200ºC), and prepare two cookie sheets with parchment paper. In a bowl, mix cream cheese, sugar, and vanilla until fully combined. Lightly flour the surface and roll out puff pastry on top to flatten. Cut each sheet of puff pastry into 9 equal squares. On the top right and bottom left of the pastry, cut an L shape approximately ½ inch (1 cm) from the edge.
NOTE: This L shape should reach all the way down and across the square, however both L shapes should not meet at the ends. Your pastry should look like a picture frame with two corners still intact.
Take the upper right corner and fold down towards the inner bottom corner. You will now have a diamond shape.
Place 1 to 2 teaspoons of the cream cheese filling in the middle, then place berries on top.
Repeat with the remaining pastry squares and place them onto the parchment covered baking sheet.
Bake for 15-20 minutes or until pastry is golden brown and puffed.
Enjoy!
','https://www.themealdb.com/images/media/meals/1543774956.jpg','Breakfast,Summer');
INSERT INTO "meal" VALUES(52958,'Peanut Butter Cookies',3,1,10,'Preheat oven to 350ºF (180ºC).
In a large bowl, mix together the peanut butter, sugar, and egg.
Scoop out a spoonful of dough and roll it into a ball. Place the cookie balls onto a nonstick baking sheet.
For extra decoration and to make them cook more evenly, flatten the cookie balls by pressing a fork down on top of them, then press it down again at a 90º angle to make a criss-cross pattern.
Bake for 8-10 minutes or until the bottom of the cookies are golden brown.
Remove from baking sheet and cool.
Enjoy!','https://www.themealdb.com/images/media/meals/1544384070.jpg','Breakfast,UnHealthy,BBQ');
INSERT INTO "meal" VALUES(52959,'Baked salmon with fennel & tomatoes',8,2,35,'Heat oven to 180C/fan 160C/gas 4. Trim the fronds from the fennel and set aside. Cut the fennel bulbs in half, then cut each half into 3 wedges. Cook in boiling salted water for 10 mins, then drain well. Chop the fennel fronds roughly, then mix with the parsley and lemon zest.

Spread the drained fennel over a shallow ovenproof dish, then add the tomatoes. Drizzle with olive oil, then bake for 10 mins. Nestle the salmon among the veg, sprinkle with lemon juice, then bake 15 mins more until the fish is just cooked. Scatter over the parsley and serve.','https://www.themealdb.com/images/media/meals/1548772327.jpg','Paleo,Keto,HighFat,Baking,LowCarbs');
INSERT INTO "meal" VALUES(52960,'Salmon Avocado Salad',8,2,10,'Season the salmon, then rub with oil. Mix the dressing ingredients together. Halve, stone, peel and slice the avocados. Halve and quarter the cucumber lengthways, then cut into slices. Divide salad, avocado and cucumber between four plates, then drizzle with half the dressing.

Heat a non-stick pan. Add the salmon and fry for 3-4 mins on each side until crisp but still moist inside. Put a salmon fillet on top of each salad and drizzle over the remaining dressing. Serve warm.','https://www.themealdb.com/images/media/meals/1549542994.jpg','Paleo,Keto,LowCarbs,Salad,Alcoholic,Halloween,');
INSERT INTO "meal" VALUES(52961,'Budino Di Ricotta',3,13,40,'Mash the ricotta and beat well with the egg yolks, stir in the flour, sugar, cinnamon, grated lemon rind and the rum and mix well. You can do this in a food processor. Beat the egg whites until stiff, fold in and pour into a buttered and floured 25cm cake tin. Bake in the oven at 180ºC/160ºC fan/gas 4 for about 40 minutes, or until it is firm.

Serve hot or cold dusted with icing sugar.','https://www.themealdb.com/images/media/meals/1549542877.jpg','Cake,Baking,Desert,Sweet,Alcoholic,Calorific');
INSERT INTO "meal" VALUES(52962,'Salmon Eggs Eggs Benedict',13,1,10,'First make the Hollandaise sauce. Put the lemon juice and vinegar in a small bowl, add the egg yolks and whisk with a balloon whisk until light and frothy. Place the bowl over a pan of simmering water and whisk until mixture thickens. Gradually add the butter, whisking constantly until thick – if it looks like it might be splitting, then whisk off the heat for a few mins. Season and keep warm.

To poach the eggs, bring a large pan of water to the boil and add the vinegar. Lower the heat so that the water is simmering gently. Stir the water so you have a slight whirlpool, then slide in the eggs one by one. Cook each for about 4 mins, then remove with a slotted spoon.

Lightly toast and butter the muffins, then put a couple of slices of salmon on each half. Top each with an egg, spoon over some Hollandaise and garnish with chopped chives.','https://www.themealdb.com/images/media/meals/1550440197.jpg','Bun,Brunch');
INSERT INTO "meal" VALUES(52963,'Shakshuka',12,7,23,'Heat the oil in a frying pan that has a lid, then soften the onions, chilli, garlic and coriander stalks for 5 mins until soft. Stir in the tomatoes and sugar, then bubble for 8-10 mins until thick. Can be frozen for 1 month.

Using the back of a large spoon, make 4 dips in the sauce, then crack an egg into each one. Put a lid on the pan, then cook over a low heat for 6-8 mins, until the eggs are done to your liking. Scatter with the coriander leaves and serve with crusty bread.','https://www.themealdb.com/images/media/meals/g373701551450225.jpg','Egg,Brunch,Breakfast');
INSERT INTO "meal" VALUES(52964,'Smoked Haddock Kedgeree',13,11,33,'Melt 50g butter in a large saucepan (about 20cm across), add 1 finely chopped medium onion and cook gently over a medium heat for 5 minutes, until softened but not browned.

Stir in 3 split cardamom pods, ¼ tsp turmeric, 1 small cinnamon stick and 2 bay leaves, then cook for 1 minute.

Tip in 450g basmati rice and stir until it is all well coated in the spicy butter.

Pour in 1 litre chicken or fish stock, add ½ teaspoon salt and bring to the boil, stir once to release any rice from the bottom of the pan. Cover with a close-fitting lid, reduce the heat to low and leave to cook very gently for 12 minutes.

Meanwhile, bring some water to the boil in a large shallow pan. Add 750g un-dyed smoked haddock fillet and simmer for 4 minutes, until the fish is just cooked. Lift it out onto a plate and leave until cool enough to handle.

Hard-boil 3 eggs for 8 minutes.

Flake the fish, discarding any skin and bones. Drain the eggs, cool slightly, then peel and chop. 

Uncover the rice and remove the bay leaves, cinnamon stick and cardamom pods if you wish to. Gently fork in the fish and the chopped eggs, cover again and return to the heat for 2-3 minutes, or until the fish has heated through.

Gently stir in almost all the 3 tbsp chopped fresh parsley, and season with a little salt and black pepper to taste. Serve scattered with the remaining parsley and garnished with 1 lemon, cut into wedges.','https://www.themealdb.com/images/media/meals/1550441275.jpg','Brunch,Fish,Fusion');
INSERT INTO "meal" VALUES(52965,'Breakfast Potatoes',13,3,16,'Before you do anything, freeze your bacon slices that way when you''re ready to prep, it''ll be so much easier to chop!
Wash the potatoes and cut medium dice into square pieces. To prevent any browning, place the already cut potatoes in a bowl filled with water.
In the meantime, heat 1-2 tablespoons of oil in a large skillet over medium-high heat. Tilt the skillet so the oil spreads evenly.
Once the oil is hot, drain the potatoes and add to the skillet. Season with salt, pepper, and Old Bay as needed.
Cook for 10 minutes, stirring the potatoes often, until brown. If needed, add a tablespoon more of oil.
Chop up the bacon and add to the potatoes. The bacon will start to render and the fat will begin to further cook the potatoes. Toss it up a bit! The bacon will take 5-6 minutes to crisp.
Once the bacon is cooked, reduce the heat to medium-low, add the minced garlic and toss. Season once more. Add dried or fresh parsley. Control heat as needed.
Let the garlic cook until fragrant, about one minute.
Just before serving, drizzle over the maple syrup and toss. Let that cook another minute, giving the potatoes a caramelized effect.
Serve in a warm bowl with a sunny side up egg!','https://www.themealdb.com/images/media/meals/1550441882.jpg','Breakfast,Brunch,');
INSERT INTO "meal" VALUES(52966,'Chocolate Caramel Crispy',3,2,10,'Grease and line a 20 x 20cm/8" x 8" baking tin with parchment paper.
Put the mars bars and butter in a heat proof bowl and place over a pan of barely simmering water. Mixing with a whisk, melt until the mixture is smooth.
Pour over the rice krispies in a mixing bowl and mix until all the ingredients are evenly combined. Press evenly into the prepare baking tin and set aside.
Melt the milk chocolate in the microwave or over a pan of barely simmering water.
Spread the melted chocolate over the rice krispie mixture and leave to set in a cool place. Once set slice into squares and serve!','https://www.themealdb.com/images/media/meals/1550442508.jpg','Sweet,Snack,Treat,Tart,Alcoholic,BBQ');
INSERT INTO "meal" VALUES(52967,'Home-made Mandazi',13,16,19,'This is one recipe a lot of people have requested and I have tried to make it as simple as possible and I hope it will work for you. Make sure you use the right flour which is basically one with raising agents. Adjust the amount of sugar to your taste and try using different flavours to have variety whenever you have them.
You can use Coconut milk instead of regular milk, you can also add desiccated coconut to the dry flour or other spices like powdered cloves or cinnamon.
For “healthy looking” mandazis do not roll the dough too thin before frying and use the procedure I have indicated above.

1. Mix the flour,cinnamon and sugar in a suitable bowl.
2. In a separate bowl whisk the egg into the milk
3. Make a well at the centre of the flour and add the milk and egg mixture and slowly mix to form a dough.
4. Knead the dough for 3-4 minutes or until it stops sticking to the sides of the bowl and you have a smooth surface.
5. Cover the dough with a damp cloth  and allow to rest for 15 minutes.
6. Roll the dough on a lightly floured surface into a 1cm thick piece.
7. Using a sharp small knife, cut the dough into the desired size setting aside ready for deep frying.
8. Heat your oil in a suitable pot and gently dip the mandazi pieces to cook until light brown on the first side then turn to cook on the second side.
9. Serve them warm or cold','https://www.themealdb.com/images/media/meals/thazgm1555350962.jpg','Baking,Breakfast,Egg,Warm,Snack');
INSERT INTO "meal" VALUES(52968,'Mbuzi Choma (Roasted Goat)',14,16,60,'1. Steps for the Meat: 
 Roast meat over medium heat for 50 minutes and salt it as you turn it.

2. Steps for Ugali:
Bring the water and salt to a boil in a heavy-bottomed saucepan. Stir in the cornmeal slowly, letting it fall through the fingers of your hand.

3. Reduce heat to medium-low and continue stirring regularly, smashing any lumps with a spoon, until the mush pulls away from the sides of the pot and becomes very thick, about 10 minutes.

4.Remove from heat and allow to cool.

5. Place the ugali into a large serving bowl. Wet your hands with water, form a ball and serve.

6. Steps for Kachumbari: Mix the tomatoes, onions, chili and coriander leaves in a bowl.

7. Serve and enjoy!

','https://www.themealdb.com/images/media/meals/cuio7s1555492979.jpg','BBQ,Meat');
INSERT INTO "meal" VALUES(52969,'Chakchouka ',5,25,30,'In a large cast iron skillet or sauté pan with a lid, heat oil over medium high heat. Add the onion and sauté for 2-3 minutes, until softened. Add the peppers and garlic, and sauté for an additional 3-5 minutes. Add the tomatoes, cumin, paprika, salt, and chili powder. Mix well and bring the mixture to a simmer. Reduce the heat to medium low and continue to simmer, uncovered, 10-15 minutes until the mixture has thickened to your desired consistency. (Taste the sauce at this point and adjust for salt and spice, as desired.) Using the back of a spoon, make four craters in the mixture, large enough to hold an egg. Crack one egg into each of the craters. Cover the skillet and simmer for 5-7 minutes, until the eggs have set. Serve immediately with crusty bread or pita.','https://www.themealdb.com/images/media/meals/gpz67p1560458984.jpg',NULL);
INSERT INTO "meal" VALUES(52970,'Tunisian Orange Cake',3,25,50,'Preheat oven to 190 C / Gas 5. Grease a 23cm round springform tin.
Cut off the hard bits from the top and bottom of the orange. Slice the orange and remove all seeds. Puree the orange with its peel in a food processor. Add one third of the sugar and the olive oil and continue to mix until well combined.
Sieve together flour and baking powder.
Beat the eggs and the remaining sugar with an electric hand mixer for at least five minutes until very fluffy. Fold in half of the flour mixture, then the orange and the vanilla, then fold in the remaining flour. Mix well but not for too long.
Pour cake mixture into prepared tin and smooth out. Bake in preheated oven for 20 minutes. Reduce the oven temperature to 160 C / Gas 2 and bake again for 30 minutes Bake until the cake is golden brown and a skewer comes out clean. Cool on a wire cake rack.','https://www.themealdb.com/images/media/meals/y4jpgq1560459207.jpg',NULL);
INSERT INTO "meal" VALUES(52971,'Kafteji',12,25,65,'Peel potatoes and cut into 5cm cubes.
Pour 1-2 cm of olive oil into a large pan and heat up very hot. Fry potatoes until golden brown for 20 minutes, turning from time to time. Place on kitchen paper to drain.
Cut the peppers in half and remove seeds. Rub a little olive oil on them and place the cut side down on a baking tray. Place them under the grill. Grill until the skin is dark and bubbly. While the peppers are still hot, put them into a plastic sandwich bag and seal it. Take them out after 15 minutes and remove skins.
In the meantime, heat more olive oil another pan. Peel the onions and cut into thin rings. Fry for 15 minutes until golden brown, turning them often. Add the Ras el hanout at the end.
Cut the pumpkin into 5cm cubes and fry in the same pan you used for the potatoes for 10-15 minutes until it is soft and slightly browned. Place on kitchen paper.
Pour the remaining olive oil out of the pan and put all the cooked vegetables into the pan and mix. Whisk eggs and pour them over the vegetables. Put the lid on the pan so that the eggs cook. Put the contents of the pan onto a large chopping board, add salt and pepper and chopped and mix everything with a big knife.','https://www.themealdb.com/images/media/meals/1bsv1q1560459826.jpg',NULL);
INSERT INTO "meal" VALUES(52972,'Tunisian Lamb Soup',4,25,40,'Add the lamb to a casserole and cook over high heat. When browned, remove from the heat and set aside.
Keep a tablespoon of fat in the casserole and discard the rest. Reduce to medium heat then add the garlic, onion and spinach and cook until the onion is translucent and the spinach wilted or about 5 minutes.
Return the lamb to the casserole with the onion-spinach mixture, add the tomato puree, cumin, harissa, chicken, chickpeas, lemon juice, salt and pepper in the pan. Simmer over low heat for about 20 minutes.
Add the pasta and cook for 15 minutes or until pasta is cooked.','https://www.themealdb.com/images/media/meals/t8mn9g1560460231.jpg','Soup');
INSERT INTO "meal" VALUES(52973,'Leblebi Soup',12,25,60,'Heat the oil in a large pot. Add the onion and cook until translucent.
Drain the soaked chickpeas and add them to the pot together with the vegetable stock. Bring to the boil, then reduce the heat and cover. Simmer for 30 minutes.
In the meantime toast the cumin in a small ungreased frying pan, then grind them in a mortar. Add the garlic and salt and pound to a fine paste.
Add the paste and the harissa to the soup and simmer until the chickpeas are tender, about 30 minutes.
Season to taste with salt, pepper and lemon juice and serve hot.','https://www.themealdb.com/images/media/meals/x2fw9e1560460636.jpg','Soup');
INSERT INTO "meal" VALUES(52974,'Keleya Zaara',4,25,30,'Heat the vegetable oil in a large frying pan over medium-high heat. Add the lamb and cook until browned on all sides, about 5 minutes. Season with saffron, salt and pepper to taste; stir in all but 4 tablespoons of the onion, and pour in the water. Bring to the boil, then cover, reduce heat to medium-low, and simmer until the lamb is tender, about 15 minutes.
Uncover the pan, stir in the butter and allow the sauce reduce 5 to 10 minutes to desired consistency. Season to taste with salt and pepper, then pour into a serving dish. Sprinkle with the remaining chopped onions and parsley. Garnish with lemon wedges to serve.
','https://www.themealdb.com/images/media/meals/8x09hy1560460923.jpg',NULL);
INSERT INTO "meal" VALUES(52975,'Tuna and Egg Briks',8,25,21,'Heat 2 tsp of the oil in a large saucepan and cook the spring onions over a low heat for 3 minutes or until beginning to soften. Add the spinach, cover with a tight-fitting lid and cook for a further 2–3 minutes or until tender and wilted, stirring once or twice. Tip the mixture into a sieve or colander and leave to drain and cool.
Using a saucer as a guide, cut out 24 rounds about 12.5 cm (5 in) in diameter from the filo pastry, cutting 6 rounds from each sheet. Stack the filo rounds in a pile, then cover with cling film to prevent them from drying out.
When the spinach mixture is cool, squeeze out as much excess liquid as possible, then transfer to a bowl. Add the tuna, eggs, hot pepper sauce, and salt and pepper to taste. Mix well.
Preheat the oven to 200°C (400°F, gas mark 6). Take one filo round and very lightly brush with some of the remaining oil. Top with a second round and brush with a little oil, then place a third round on top and brush with oil.
Place a heaped tbsp of the filling in the middle of the round, then fold the pastry over to make a half-moon shape. Fold in the edges, twisting them to seal, and place on a non-stick baking sheet. Repeat with the remaining pastry and filling to make 8 briks in all.
Lightly brush the briks with the remaining oil. Bake for 12–15 minutes or until the pastry is crisp and golden brown.
Meanwhile, combine the tomatoes and cucumber in a bowl and sprinkle with the lemon juice and seasoning to taste. Serve the briks hot with this salad and the chutney.','https://www.themealdb.com/images/media/meals/2dsltq1560461468.jpg',NULL);
INSERT INTO "meal" VALUES(52976,'Cashew Ghoriba Biscuits',3,25,20,'Preheat the oven at 180 C / Gas 4. Line a baking tray with greaseproof paper.
In a bowl, mix the cashews and icing sugar. Add the egg yolks and orange blossom water and mix to a smooth homogeneous paste.
Take lumps of the cashew paste and shape into small balls. Roll the balls in icing sugar and transfer to the baking tray. Push an almond in the centre of each ghribia.
Bake until the biscuits are lightly golden, about 20 minutes. Keep an eye on them, they burn quickly.','https://www.themealdb.com/images/media/meals/t3r3ka1560461972.jpg',NULL);
INSERT INTO "meal" VALUES(52977,'Corba',9,26,27,'Pick through your lentils for any foreign debris, rinse them 2 or 3 times, drain, and set aside.  Fair warning, this will probably turn your lentils into a solid block that you’ll have to break up later
In a large pot over medium-high heat, sauté the olive oil and the onion with a pinch of salt for about 3 minutes, then add the carrots and cook for another 3 minutes.
Add the tomato paste and stir it around for around 1 minute. Now add the cumin, paprika, mint, thyme, black pepper, and red pepper as quickly as you can and stir for 10 seconds to bloom the spices. Congratulate yourself on how amazing your house now smells.
Immediately add the lentils, water, broth, and salt. Bring the soup to a (gentle) boil.
After it has come to a boil, reduce heat to medium-low, cover the pot halfway, and cook for 15-20 minutes or until the lentils have fallen apart and the carrots are completely cooked.
After the soup has cooked and the lentils are tender, blend the soup either in a blender or simply use a hand blender to reach the consistency you desire. Taste for seasoning and add more salt if necessary.
Serve with crushed-up crackers, torn up bread, or something else to add some extra thickness.  You could also use a traditional thickener (like cornstarch or flour), but I prefer to add crackers for some texture and saltiness.  Makes great leftovers, stays good in the fridge for about a week.','https://www.themealdb.com/images/media/meals/58oia61564916529.jpg','Soup');
INSERT INTO "meal" VALUES(52978,'Kumpir',9,26,10,'If you order kumpir in Turkey, the standard filling is first, lots of butter mashed into the potato, followed by cheese. There’s then a row of other toppings that you can just point at to your heart’s content – sweetcorn, olives, salami, coleslaw, Russian salad, allsorts – and you walk away with an over-stuffed potato because you got ever-excited by the choices on offer.

Grate (roughly – you can use as much as you like) 150g of cheese.
Finely chop one onion and one sweet red pepper.
Put these ingredients into a large bowl with a good sprinkling of salt and pepper, chilli flakes (optional).','https://www.themealdb.com/images/media/meals/mlchx21564916997.jpg','SideDish');
INSERT INTO "meal" VALUES(52979,'Bitterballen (Dutch meatballs)',1,6,10,'Melt the butter in a skillet or pan. When melted, add the flour little by little and stir into a thick paste. Slowly stir in the stock, making sure the roux absorbs the liquid. Simmer for a couple of minutes on a low heat while you stir in the onion, parsley and the shredded meat. The mixture should thicken and turn into a heavy, thick sauce.

Pour the mixture into a shallow container, cover and refrigerate for several hours, or until the sauce has solidified.

Take a heaping tablespoon of the cold, thick sauce and quickly roll it into a small ball. Roll lightly through the flour, then the egg and finally the breadcrumbs. Make sure that the egg covers the whole surface of the bitterbal. When done, refrigerate the snacks while the oil in your fryer heats up to 190C (375F). Fry four bitterballen at a time, until golden.

Serve on a plate with a nice grainy or spicy mustard. 
','https://www.themealdb.com/images/media/meals/lhqev81565090111.jpg','DinnerParty,HangoverFood,Alcoholic');
INSERT INTO "meal" VALUES(52980,'Stamppot',7,6,30,'
Wash and peel the potatoes and cut into similarly sized pieces for even cooking.

In a large soup pot, boil the potatoes and the bay leaves in salted water for 20 minutes. Discard the bay leaves.

If you''re not using a bag of ready-cut curly kale, wash the bunches thoroughly under cool running water to get rid of all soil—you wouldn''t want that gritty texture in your finished dish. Trim any coarse stems and discard any brown leaves. With a sharp knife, cut the curly kale into thin strips.

Peel and chop the shallots.

In a frying pan or skillet, melt 1 tbsp. of butter and saute the shallots for a few minutes before adding the curly kale and 2 tbsp. of water. Season and cook for about 10 minutes, or until tender.

Warm the milk on the stove or in the microwave.

Drain, shake and dry the potatoes with kitchen towels before mashing with a potato masher or ricer. Working quickly, add the warm milk and the remaining butter. Season to taste with nutmeg, salt, and pepper. 

Mix the cooked curly kale through the cooked mashed potato mixture.

Top with slices of the smoked sausage and serve hot with your favorite mustard or gravy.

Serve and enjoy!','https://www.themealdb.com/images/media/meals/hyarod1565090529.jpg','Savory,Breakfast');
INSERT INTO "meal" VALUES(52981,'Snert (Dutch Split Pea Soup)',9,6,90,'Gather the ingredients.

In a large soup pot, bring water, split peas, pork belly or bacon, pork chop, and bouillon cube to a boil. Reduce the heat to a simmer, cover and let cook for 45 minutes, stirring occasionally and skimming off any foam that rises to the top. 

Remove the pork chop, debone, and thinly slice the meat. Set aside.

Add the celery, carrots, potato, onion, leek, and celeriac to the soup. Return to the boil, reduce the heat to a simmer and let cook, uncovered, for another 30 minutes, adding a little extra water if the ingredients start to stick to the bottom of the pot.

Add the smoked sausage for the last 15 minutes of cooking time. When the vegetables are tender, remove the bacon and smoked sausage, slice thinly and set aside.

If you prefer a smooth consistency, purée the soup with a stick blender. Season to taste with salt and pepper. Add the meat back to the soup, setting some slices of rookworst aside.

Serve in heated bowls or soup plates, garnished with slices of rookworst and chopped celery leaf.

Enjoy!','https://www.themealdb.com/images/media/meals/9ptx0a1565090843.jpg','Soup,Cake');
INSERT INTO "meal" VALUES(52982,'Spaghetti alla Carbonara',6,13,15,'STEP 1
Put a large saucepan of water on to boil.

STEP 2
Finely chop the 100g pancetta, having first removed any rind. Finely grate 50g pecorino cheese and 50g parmesan and mix them together.

STEP 3
Beat the 3 large eggs in a medium bowl and season with a little freshly grated black pepper. Set everything aside.

STEP 4
Add 1 tsp salt to the boiling water, add 350g spaghetti and when the water comes back to the boil, cook at a constant simmer, covered, for 10 minutes or until al dente (just cooked).

STEP 5
Squash 2 peeled plump garlic cloves with the blade of a knife, just to bruise it.

STEP 6
While the spaghetti is cooking, fry the pancetta with the garlic. Drop 50g unsalted butter into a large frying pan or wok and, as soon as the butter has melted, tip in the pancetta and garlic.

STEP 7
Leave to cook on a medium heat for about 5 minutes, stirring often, until the pancetta is golden and crisp. The garlic has now imparted its flavour, so take it out with a slotted spoon and discard.

STEP 8
Keep the heat under the pancetta on low. When the pasta is ready, lift it from the water with a pasta fork or tongs and put it in the frying pan with the pancetta. Don’t worry if a little water drops in the pan as well (you want this to happen) and don’t throw the pasta water away yet.

STEP 9
Mix most of the cheese in with the eggs, keeping a small handful back for sprinkling over later.

STEP 10
Take the pan of spaghetti and pancetta off the heat. Now quickly pour in the eggs and cheese. Using the tongs or a long fork, lift up the spaghetti so it mixes easily with the egg mixture, which thickens but doesn’t scramble, and everything is coated.

STEP 11
Add extra pasta cooking water to keep it saucy (several tablespoons should do it). You don’t want it wet, just moist. Season with a little salt, if needed.

STEP 12
Use a long-pronged fork to twist the pasta on to the serving plate or bowl. Serve immediately with a little sprinkling of the remaining cheese and a grating of black pepper. If the dish does get a little dry before serving, splash in some more hot pasta water and the glossy sauciness will be revived.','https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg','Pasta,BBQ,Breakfast');
INSERT INTO "meal" VALUES(52987,'Lasagna Sandwiches',6,1,10,'1. In a small bowl, combine the first four ingredients; spread on four slices of bread. Layer with bacon, tomato and cheese; top with remaining bread.

2. In a large skillet or griddle, melt 2 tablespoons butter. Toast sandwiches until lightly browned on both sides and cheese is melted, adding butter if necessary.

Nutrition Facts
1 sandwich: 445 calories, 24g fat (12g saturated fat), 66mg cholesterol, 1094mg sodium, 35g carbohydrate (3g sugars, 2g fiber), 21g protein.','https://www.themealdb.com/images/media/meals/xr0n4r1576788363.jpg','Sandwich');
INSERT INTO "meal" VALUES(52988,'Classic Christmas pudding',3,2,10,'Get everything for the pudding prepared. Chop the almonds coarsely. Peel, core and chop the cooking apples. Sharpen your knife and chop the candied peel. (You can chop the almonds and apples in a food processor, but the peel must be done by hand.) Grate three quarters of the nutmeg (sounds a lot but it''s correct).

Mix the almonds, apples, candied peel, nutmeg, raisins, flour, breadcrumbs, light muscovado sugar, eggs and 2 tbsp brandy or cognac in a large bowl. 

Holding the butter in its wrapper, grate a quarter of it into the bowl, then stir everything together. Repeat until all the butter is grated, then stir for 3-4 mins – the mixture is ready when it subsides slightly after each stir. Ask the family to stir too, and get everyone to make a wish. 

Generously butter two 1.2 litre bowls and put a circle of baking parchment in the bottom of each. Pack in the pudding mixture. Cover with a double layer of baking parchment, pleating it to allow for expansion, then tie with string (keep the paper in place with a rubber band while tying). Trim off any excess paper. 

Now stand each bowl on a large sheet of foil and bring the edges up over the top, then put another sheet of foil over the top and bring it down underneath to make a double package (this makes the puddings watertight). Tie with more string, and make a handle for easy lifting in and out of the pan. Watch our video to see how to tie up a pudding correctly.

Boil or oven steam the puddings for 8 hrs, topping up with water as necessary. Remove from the pans and leave to cool overnight. When cold, discard the messy wrappings and re-wrap in new baking parchment, foil and string. Store in a cool, dry place until Christmas. 

To make the brandy butter, cream the butter with the orange zest and icing sugar. Gradually beat in the brandy or cognac and chopped stem ginger. Put in a small bowl, fork the top attractively and put in the fridge to set. The butter will keep for a week in the fridge, or it can be frozen for up to six weeks. 

On Christmas Day, boil or oven steam for 1 hr. Unwrap and turn out. To flame, warm 3-4 tbsp brandy in a small pan, pour it over the pudding and set light to it.','https://www.themealdb.com/images/media/meals/1d85821576790598.jpg','Christmas');
INSERT INTO "meal" VALUES(52989,'Christmas Pudding Trifle',3,2,10,'Peel the oranges using a sharp knife, ensuring all the pith is removed. Slice as thinly as possible and arrange over a dinner plate. Sprinkle with the demerara sugar followed by the Grand Marnier and set aside.

Crumble the Christmas pudding into large pieces and scatter over the bottom of a trifle bowl. Lift the oranges onto the pudding in a layer and pour over any juices.

Beat the mascarpone until smooth, then stir in the custard. Spoon the mixture over the top of the oranges.

Lightly whip the cream and spoon over the custard. Sprinkle with the flaked almonds and grated chocolate. You can make this a day in advance if you like, chill until ready to serve.','https://www.themealdb.com/images/media/meals/r33cud1576791081.jpg','Christmas');
INSERT INTO "meal" VALUES(52990,'Christmas cake',3,2,32,'Heat oven to 160C/fan 140C/gas 3. Line the base and sides of a 20 cm round, 7.5 cm deep cake tin. Beat the butter and sugar with an electric hand mixer for 1-2 mins until very creamy and pale in colour, scraping down the sides of the bowl half way through. Stir in a spoonful of the flour, then stir in the beaten egg and the rest of the flour alternately, a quarter at a time, beating well each time with a wooden spoon. Stir in the almonds.

Mix in the sherry (the mix will look curdled), then add the peel, cherries, raisins, cherries, nuts, lemon zest, spice, rosewater and vanilla. Beat together to mix, then stir in the baking powder.

Spoon mixture into the tin and smooth the top, making a slight dip in the centre. Bake for 30 mins, then lower temperature to 150C/fan 130C/gas 2 and bake a further 2-2¼ hrs, until a skewer insterted in the middle comes out clean. Leave to cool in the tin, then take out of the tin and peel off the lining paper. When completely cold, wrap well in cling film and foil to store until ready to decorate. The cake will keep for several months.','https://www.themealdb.com/images/media/meals/ldnrm91576791881.jpg','Christmas');
INSERT INTO "meal" VALUES(52991,'Mince Pies',3,2,25,'To make the pastry, rub 225g cold, diced butter into 350g plain flour, then mix in 100g golden caster sugar and a pinch of salt.

Combine the pastry into a ball – don’t add liquid – and knead it briefly. The dough will be fairly firm, like shortbread dough. You can use the dough immediately, or chill for later.

Preheat the oven to 200C/gas 6/fan 180C. Line 18 holes of two 12-hole patty tins, by pressing small walnut-sized balls of pastry into each hole.

Spoon 280g mincemeat into the pies.

Take slightly smaller balls of pastry than before and pat them out between your hands to make round lids, big enough to cover the pies. 

Top the pies with their lids, pressing the edges gently together to seal – you don’t need to seal them with milk or egg as they will stick on their own. (The pies may now be frozen for up to 1 month).

Beat 1 small egg and brush the tops of the pies. Bake for 20 mins until golden. Leave to cool in the tin for 5 mins, then remove to a wire rack.

To serve, lightly dust with icing sugar.','https://www.themealdb.com/images/media/meals/qe8pf51576795532.jpg','Christmas');
INSERT INTO "meal" VALUES(52992,'Soy-Glazed Meatloaves with Wasabi Mashed Potatoes & Roasted Carrots',1,1,60,'1. Preheat oven to 425 degrees. Wash and dry all produce. Dice potatoes into 1/2-inch pieces. Trim, peel, and cut carrots on a diagonal into 1/2-inch-thick pieces. Trim and thinly slice scallions, separating whites from greens; finely chop whites. Peel and finely chop garlic.

2. In a medium bowl, soak bread with 2 TBSP water (4 TBSP for 4 servings); break up with your hands until pasty. Stir in beef, sriracha, scallion whites, half the garlic, salt (we used 3/4 tsp kosher salt; 11/2 tsp for 4), and pepper. Form into two 1-inch-tall loaves (four loaves for 4). Place on one side of a baking sheet. Toss carrots on empty side of same sheet with a drizzle of oil, salt, and pepper. (For 4, spread meatloaves out across whole sheet and add carrots to a second sheet.) Bake for 20 minutes (we''ll glaze the meatloaves then).

3. Meanwhile, place potatoes in a medium pot with enough salted water to cover by 2 inches. Bring to a boil and cook until very
tender, 12-15 minutes. Reserve 1/2 cup potato cooking liquid, then drain. While potatoes cook, in a small bowl, combine soy sauce, garlic powder, 1/4 cup ketchup (1/2 cup for 4 servings), and 2 tsp sugar (4 tsp for 4).

4. Once meatloaves and carrots have baked 20 minutes, remove from oven. Spoon half the ketchup glaze over meatloaves (save
the rest for serving); return to oven until carrots are browned and tender, meatloaves are cooked through, and glaze is tacky, 4-5 minutes more.

5. Meanwhile, melt 2 TBSP butter (4 TBSP for 4 servings) in pot used for potatoes over medium heat. Add remaining garlic and cook
until fragrant, 30 seconds. Add potatoes and 1/4 tsp wasabi. Mash, adding splashes of reserved potato cooking liquid as necessary until smooth. Season with salt and pepper. (If you like things spicy, stir in more wasabi!)

6. Divide meatloaves, mashed potatoes, and roasted carrots between plates. Sprinkle with scallion greens and serve with remaining ketchup glaze on the side for dipping.','https://www.themealdb.com/images/media/meals/o2wb6p1581005243.jpg',NULL);
INSERT INTO "meal" VALUES(52993,'Honey Balsamic Chicken with Crispy Broccoli & Potatoes',2,1,39,'2 Servings

1. Preheat oven to 425 degrees. Wash and dry all produce. Cut potatoes into 1/2-inch-thick wedges. Toss on one side of a baking sheet with a drizzle of oil, salt, and pepper. (For 4 servings, spread potatoes out across entire sheet.) Roast on top rack for 5 minutes (we''ll add the broccoli then). 

2. Meanwhile, cut broccoli florets into bite-size pieces, if necessary. Peel and finely chop garlic. In a small microwave-safe bowl, combine 1 TBSP olive oil (2 TBSP for 4 servings) and half the garlic. Microwave until garlic sizzles, 30 seconds. 

3. Once potatoes have roasted 5 minutes, remove sheet from oven and add broccoli to empty side; carefully toss with garlic oil, salt, and pepper. (For 4 servings, add broccoli to a second sheet.) Continue roasting until potatoes and broccoli are browned and crispy, 15-20 minutes more. 

4. While veggies roast, pat chicken dry with paper towels; season all over with salt and pepper. Heat a drizzle of oil in a large pan over medium-high heat. Add chicken and cook until browned and cooked through, 5-6 minutes per side. (If chicken browns too quickly, reduce heat to medium.) Turn off heat; set chicken aside to rest. Wash out pan. 

5. Heat pan used for chicken over medium-high heat. Add a drizzle of oil and remaining garlic; cook until fragrant, 30 seconds. Stir in vinegar, honey, stock concentrate, and 1/4 cup water (1/3 cup for 4 servings). Simmer until thick and glossy, 2-3 minutes. Remove from heat and stir in 1 TBSP butter (2 TBSP for 4). Season with salt and pepper. 

6. Return chicken to pan and turn to coat in glaze. Divide chicken, broccoli, and potatoes between plates. Spoon any remaining glaze over chicken and serve. ','https://www.themealdb.com/images/media/meals/kvbotn1581012881.jpg',NULL);
INSERT INTO "meal" VALUES(52994,'Skillet Apple Pork Chops with Roasted Sweet Potatoes & Zucchini',7,1,52,'
Serves 2


1. 

Adjust racks to top and middle positions and preheat oven to 450 degrees. Wash and dry all produce. Dice sweet potatoes into 1/2-inch pieces. Toss on a baking sheet with a drizzle of oil, salt, and pepper. Roast on top rack for 12 minutes (we''ll roast the zucchini then). 


2. 

Meanwhile, halve and core apple; thinly slice into half-moons. Peel and finely chop garlic. Quarter lemon. Trim and halve zucchini lengthwise; cut crosswise into 1/2-inch-thick half-moons. Toss on a second baking sheet with a drizzle of oil and a pinch of salt and pepper. Set aside. 


3. 

Pat pork dry with paper towels and season all over with salt and pepper. Heat a drizzle of oil in a large pan over medium-high heat. Add pork and cook until browned and cooked through, 4-5 minutes per side. Turn off heat; transfer to a plate. 


4. 

Once sweet potatoes have roasted 12 minutes, transfer baking sheet with zucchini to middle rack and continue roasting until both veggies are browned and softened, 12-15 minutes more. 


5. 

Meanwhile, melt 1 TBSP butter (2 TBSP for 4 servings) in pan used for pork over medium-high heat. Add apple and season with salt and pepper. Cook, scraping up any browned bits from bottom of pan, until apple is slightly softened, 2-3 minutes. Add garlic; cook until fragrant, 30 seconds. Add 1/z cup water (3/4 cup for 4), stock concentrate, and 11/2 tsp sugar (3 tsp for 4). Cook, stirring, until sauce has thickened and apple is very tender, 3-5 minutes. Season with salt and pepper. 


6. 

Remove pan with apple from heat; stir in 1 TBSP butter (2 TBSP for 4 servings) and a squeeze of lemon juice. Divide pork, zucchini, and sweet potatoes between plates. Top pork with glazed apple sauce. Top zucchini with a squeeze of lemon juice. ','https://www.themealdb.com/images/media/meals/h3ijwo1581013377.jpg',NULL);
INSERT INTO "meal" VALUES(52995,'BBQ Pork Sloppy Joes',7,1,44,'1

Preheat oven to 450 degrees. Wash and dry all produce. Cut sweet potatoes into ½-inch-thick wedges. Toss on a baking sheet with a drizzle of oil, salt, and pepper. Roast until browned and tender, 20-25 minutes.

2

Meanwhile, halve and peel onion. Slice as thinly as possible until you have ¼ cup (½ cup for 4 servings); finely chop remaining onion. Peel and finely chop garlic. Halve lime; squeeze juice into a small bowl. Halve buns. Add 1 TBSP butter (2 TBSP for 4) to a separate small microwave-safe bowl; microwave until melted, 30 seconds. Brush onto cut sides of buns.

3

To bowl with lime juice, add sliced onion, ¼ tsp sugar (½ tsp for 4 servings), and a pinch of salt. Stir to combine; set aside to quick-pickle.

4

Heat a drizzle of oil in a large pan over medium-high heat. Add chopped onion and season with salt and pepper. Cook, stirring, until softened, 4-5 minutes. Add garlic and cook until fragrant, 30 seconds more. Add pork and season with salt and pepper. Cook, breaking up meat into pieces, until browned and cooked through, 4-6 minutes.

5

While pork cooks, in a third small bowl, combine BBQ sauce, pickling liquid from onion, 3 TBSP ketchup (6 TBSP for 4 servings), ½ tsp sugar (1 tsp for 4), and ¼ cup water (⅓ cup for 4). Once pork is cooked through, add BBQ sauce mixture to pan. Cook, stirring, until sauce is thickened, 2-3 minutes. Taste and season with salt and pepper.

6

Meanwhile, toast buns in oven or toaster oven until golden, 3-5 minutes. Divide toasted buns between plates and fill with as much BBQ pork as you’d like. Top with pickled onion and hot sauce. Serve with sweet potato wedges on the side.','https://www.themealdb.com/images/media/meals/atd5sh1583188467.jpg',NULL);
INSERT INTO "meal" VALUES(52996,'French Onion Chicken with Roasted Carrots & Mashed Potatoes',2,1,56,'1

Preheat oven to 425 degrees. Wash and dry all produce. Trim, peel, and cut carrots on a diagonal into ¼-inch-thick pieces. Dice potatoes into ½-inch pieces. Halve, peel, and thinly slice onion.

2

Toss carrots on a baking sheet with a drizzle of oil, salt, and pepper. Roast until browned and tender, 15-20 minutes.

3

Meanwhile, place potatoes in a medium pot with enough salted water to cover by 2 inches. Bring to a boil and cook until tender, 12-15 minutes. Drain and return potatoes to pot; cover to keep warm.

4

While potatoes cook, heat a drizzle of oil in a large pan over medium-high heat. Add onion and cook, stirring occasionally, until lightly browned and softened, 8-10 minutes. Sprinkle with 1 tsp sugar (2 tsp for 4 servings). Stir in stock concentrate and 2 TBSP water (¼ cup for 4); season with salt and pepper. Cook until jammy, 2-3 minutes more. Turn off heat; transfer to a small bowl. Wash out pan.

5

Pat chicken dry with paper towels; season all over with salt and pepper. Heat a drizzle of oil in pan used for onion over medium-high heat. Add chicken and cook until browned and cooked through, 5-6 minutes per side. In the last 1-2 minutes of cooking, top with caramelized onion and cheese. Cover pan until cheese melts. (If your pan doesn’t have a lid, cover with a baking sheet!)

6

Heat pot with drained potatoes over low heat; mash with sour cream, 2 TBSP butter (4 TBSP for 4 servings), salt, pepper, and a splash of water (or milk, for extra richness) until smooth. Divide chicken, roasted carrots, and mashed potatoes between plates.','https://www.themealdb.com/images/media/meals/b5ft861583188991.jpg',NULL);
INSERT INTO "meal" VALUES(52997,'Beef Banh Mi Bowls with Sriracha Mayo, Carrot & Pickled Cucumber',1,29,35,'Add''l ingredients: mayonnaise, siracha

1

Place rice in a fine-mesh sieve and rinse until water runs clear. Add to a small pot with 1 cup water (2 cups for 4 servings) and a pinch of salt. Bring to a boil, then cover and reduce heat to low. Cook until rice is tender, 15 minutes. Keep covered off heat for at least 10 minutes or until ready to serve.

2

Meanwhile, wash and dry all produce. Peel and finely chop garlic. Zest and quarter lime (for 4 servings, zest 1 lime and quarter both). Trim and halve cucumber lengthwise; thinly slice crosswise into half-moons. Halve, peel, and medium dice onion. Trim, peel, and grate carrot.

3

In a medium bowl, combine cucumber, juice from half the lime, ¼ tsp sugar (½ tsp for 4 servings), and a pinch of salt. In a small bowl, combine mayonnaise, a pinch of garlic, a squeeze of lime juice, and as much sriracha as you’d like. Season with salt and pepper.

4

Heat a drizzle of oil in a large pan over medium-high heat. Add onion and cook, stirring, until softened, 4-5 minutes. Add beef, remaining garlic, and 2 tsp sugar (4 tsp for 4 servings). Cook, breaking up meat into pieces, until beef is browned and cooked through, 4-5 minutes. Stir in soy sauce. Turn off heat; taste and season with salt and pepper.

5

Fluff rice with a fork; stir in lime zest and 1 TBSP butter. Divide rice between bowls. Arrange beef, grated carrot, and pickled cucumber on top. Top with a squeeze of lime juice. Drizzle with sriracha mayo.','https://www.themealdb.com/images/media/meals/z0ageb1583189517.jpg',NULL);
INSERT INTO "meal" VALUES(52998,'Corned Beef and Cabbage',1,12,65,'1

Place corned beef in large pot or Dutch oven and cover with water. Add the spice packet that came with the corned beef. Cover pot and bring to a boil, then reduce to a simmer. Simmer approximately 50 minutes per pound or until tender.

2

Add whole potatoes and peeled and cut carrots, and cook until the vegetables are almost tender. Add cabbage and cook for 15 more minutes. Remove meat and let rest 15 minutes.

3

Place vegetables in a bowl and cover. Add as much broth (cooking liquid reserved in the Dutch oven or large pot) as you want. Slice meat across the grain.','https://www.themealdb.com/images/media/meals/xb97a81583266727.jpg','');
INSERT INTO "meal" VALUES(52999,'Crispy Sausages and Greens',7,12,52,'Preheat the oven to 350°. Remove the stems from one bunch of Tuscan kale and tear the leaves into 1" pieces (mustard greens, collards, spinach, and chard are great, too). Coarsely chop half a head of green cabbage. Combine the greens in a large baking dish and add 4 cloves of thinly sliced garlic. Adding some sliced onions and shiitake mushrooms at this point is optional, but highly recommended (I''ll sauté the onions and mushrooms in a cast iron baking dish right on the stove before adding to the greens). Coat the greens with some olive oil and pour ½ cup chicken stock or broth over everything. Cover the dish with foil and bake until the greens are wilted, about 15 minutes. Remove foil and season with salt and pepper. Continue to bake until cabbage is tender, about 20-25 minutes more.

Meanwhile, heat a little olive oil in a large skillet over medium-high. Prick four sweet Italian sausages with a fork and cook until browned on all sides and cooked through, 10 to 12 minutes. When the greens are done, slice the sausage and toss into the greens with a splash of your favorite vinegar (I like sherry or red wine).','https://www.themealdb.com/images/media/meals/st1ifa1583267248.jpg',NULL);
INSERT INTO "meal" VALUES(53000,'Vegetable Shepherd''s Pie',1,12,211,'Add Ingredients:

12 cups chopped mixed vegetables
1   cup chopped fresh mushrooms 
1   cup pearl onions

TOPPING:

Preheat oven to 450°. Bake potatoes on a foil-lined baking sheet until tender, about 45 minutes. Let cool slightly, then peel. Press potatoes through a ricer, food mill, or colander into a large bowl. Add butter; stir until well blended. Stir in milk. Season to taste with salt.

FILLING:

Soak dried porcini in 3 cups hot water; set aside. Combine lentils, 1 garlic clove, 1 tsp. salt, and 4 cups water in a medium saucepan. Bring to a boil; reduce heat and simmer, stirring occasionally, until lentils are tender but not mushy, 15–20 minutes. Drain lentils and discard garlic.

Heat 3 Tbsp. oil in a large heavy pot over medium heat. Add onions and cook, stirring occasionally, until soft, about 12 minutes. Add chopped garlic and cook for 1 minute. Stir in tomato paste. Cook, stirring constantly, until tomato paste is caramelized, 2–3 minutes.

Add bay leaves and wine; stir, scraping up any browned bits. Stir in porcini, slowly pouring porcini soaking liquid into pan but leaving any sediment behind. Bring to a simmer and cook until liquid is reduced by half, about 10 minutes. Stir in broth and cook, stirring occasionally, until reduced by half, about 45 minutes.

Strain mixture into a large saucepan and bring to a boil; discard solids in strainer. Stir cornstarch and 2 Tbsp. water in a small bowl to dissolve. Add cornstarch mixture; simmer until thickened, about 5 minutes. Whisk in miso. Season sauce with salt and pepper. Set aside.

Preheat oven to 450°. Toss vegetables and pearl onions with remaining 2 Tbsp. oil, 5 garlic cloves, and rosemary sprigs in a large bowl; season with salt and pepper. Divide between 2 rimmed baking sheets. Roast, stirring once, until tender, 20–25 minutes. Transfer garlic cloves to a small bowl; mash well with a fork and stir into sauce. Discard rosemary. DO AHEAD: Lentils, sauce, and vegetables can be made 1 day ahead. Cover separately; chill.
Arrange lentils in an even layer in a 3-qt. baking dish; set dish on a foil-lined rimmed baking sheet. Toss roasted vegetables with fresh mushrooms and chopped herbs; layer on top of lentils. Pour sauce over vegetables. Spoon potato mixture evenly over.

Bake until browned and bubbly, about 30 minutes. Let stand for 15 minutes before serving.','https://www.themealdb.com/images/media/meals/w8umt11583268117.jpg','Alcoholic');
INSERT INTO "meal" VALUES(53005,'Strawberry Rhubarb Pie',3,2,55,'Pie Crust:  In a food processor, place the flour, salt, and sugar and process until combined. Add the butter and process until the mixture resembles coarse

meal (about 15 seconds). Pour 1/4 cup (60 ml) water in a slow, steady stream, through the feed tube until the dough just holds together when pinched. If necessary, add more water. Do not process more than 30 seconds.
Turn the dough onto your work surface and gather into a ball. Divide the dough in half, flattening each half into a disk, cover with plastic wrap, and refrigerate for about one hour before using. This will chill the butter and relax the gluten in the flour. 

After the dough has chilled sufficiently, remove one portion of the dough from the fridge and place it on a lightly floured surface.  Roll the pastry into a 12 inch (30 cm) circle. (To prevent the pastry from sticking to the counter and to ensure uniform thickness, keep lifting up and turning the pastry a quarter turn as you roll (always roll from the center of the pastry outwards).)  Fold the dough in half and gently transfer to a 9 inch (23 cm) pie pan. Brush off any excess flour and trim any overhanging pastry to an edge of 1/2 inch (1.5 cm). Refrigerate the pastry, covered with plastic wrap, while you make the filling. 

Remove the second round of pastry and roll it into a 13 inch (30 cm) circle. Using a pastry wheel or pizza cutter, cut the pastry into about 3/4 inch (2 cm) strips. Place the strips of pastry on a parchment paper-lined baking sheet, cover with plastic wrap, and place in the refrigerator for about 10 minutes. 

Make the Strawberry Rhubarb Filling: Place the cut strawberries and rhubarb in a large bowl. In a small bowl mix together the cornstarch, sugar, and ground cinnamon. 

Remove the chilled pie crust from the fridge. Sprinkle about 2 tablespoons of the sugar mixture over the bottom of the pastry crust. Add the remaining sugar mixture to the strawberries and rhubarb and gently toss to combine. Pour the fruit mixture into the prepared pie shell. Sprinkle the fruit with about 1 teaspoon of lemon juice and dot with 2 tablespoons of butter.

Remove the lattice pastry from the refrigerator and, starting at the center with the longest strips and working outwards, place half the strips, spacing about 1 inch (2.5 cm) apart, on top of the filling. (Use the shortest pastry strips at the outer edges.) Then, gently fold back, about halfway, every other strip of pastry. Take another strip of pastry and place it perpendicular on top of the first strips of pastry. Unfold the bottom strips of pastry and then fold back the strips that weren''t folded back the first time. Lay another strip of pastry perpendicular on top of the filling and then continue with the remaining strips. Trim the edges of the pastry strips, leaving a 1 inch (2.5 cm) overhang. Seal the edges of the pastry strips by folding them under the bottom pastry crust and flute the edges of the pastry. Brush the lattice pastry with milk and sprinkle with a little sugar. Cover and place in the refrigerator while you preheat the oven to 400 degrees F (205 degrees C) and place the oven rack in the lower third of the oven. Put a baking sheet, lined with aluminum foil, on the oven rack (to catch any spills.)

Place the pie plate on the hot baking sheet and bake the pie for about 35 minutes and then, if the edges of the pie are browning too much, cover with a foil ring. Continue to bake the pie for about another 10 minutes or until the crust is a golden brown color and the fruit juices begin to bubble.

Remove the pie from the oven and place on a wire rack to cool for several hours. Serve at room temperature with softly whipped cream or vanilla ice cream. Leftovers can be stored in the refrigerator for about 3 days. Reheat before serving. This pie can be frozen.

Makes one 9 inch (23 cm) pie.','https://www.themealdb.com/images/media/meals/178z5o1585514569.jpg','Pudding,Pie,Baking,Fruity,Glazed');
INSERT INTO "meal" VALUES(53006,'Moussaka',1,10,10,'Heat the grill to high. Brown the beef in a deep ovenproof frying pan over a high heat for 5 mins. Meanwhile, prick the aubergine with a fork, then microwave on High for 3-5 mins until soft. Mix the yogurt, egg and parmesan together, then add a little seasoning.

Stir the tomatoes, purée and potatoes in with the beef with some seasoning and heat through. Smooth the surface of the beef mixture with the back of a spoon, then slice the cooked aubergine and arrange on top. Pour the yogurt mixture over the aubergines, smooth out evenly, then grill until the topping has set and turned golden.','https://www.themealdb.com/images/media/meals/ctg8jd1585563097.jpg',NULL);
INSERT INTO "meal" VALUES(53007,'Honey Yogurt Cheesecake',3,10,25,'Heat oven to 160C/140C fan/gas 3. Crush the biscuits and most of the almonds inside a plastic food bag using a rolling pin. Mix with the butter, then press into the bottom of a deep, oval, 23cm dish (or something similar in size – a roasting tin, baking dish or cake tin will work). Bake for 10 mins until crisp.

Stir or mash together the yogurt and mascarpone, then whisk in the eggs, one at a time. Stir in the lemon and orange zests, then stir in most of the honey, reserving about 3 tbsp. Spread over the biscuit base, cover loosely with foil and cook for 1 hr. Remove the foil and cook for 15 mins more until lightly golden and the top is firm with just the slightest wobble in the middle. Leave to cool. Can be kept in the fridge for up to 2 days.

To serve, scatter with almonds, drizzle over the remaining honey, and hand around fresh fruit to go with it.','https://www.themealdb.com/images/media/meals/y2irzl1585563479.jpg',NULL);
INSERT INTO "meal" VALUES(53008,'Stuffed Lamb Tomatoes',4,10,60,'Heat oven to 180C/160C fan/gas 4. Slice the tops off the tomatoes and reserve. Scoop out most of the pulp with a teaspoon, being careful not to break the skin. Finely chop the pulp, and keep any juices. Sprinkle the insides of the tomatoes with a little sugar to take away the acidity, then place them on a baking tray.

Heat 2 tbsp olive oil in a large frying pan, add the onion and garlic, then gently cook for about 10 mins until soft but not coloured. Add the lamb, cinnamon and tomato purée, turn up the heat, then fry until the meat is browned. Add the tomato pulp and juice, the rice and the stock. Season generously. Bring to the boil, then simmer for 15 mins or until the rice is tender and the liquid has been absorbed. Set aside to cool a little, then stir in the herbs.

Stuff the tomatoes up to the brim, top tomatoes with their lids, drizzle with 2 tbsp more olive oil, sprinkle 3 tbsp water into the tray, then bake for 35 mins. Serve with salad and crusty bread, hot or cold.','https://www.themealdb.com/images/media/meals/u55lbp1585564013.jpg',NULL);
INSERT INTO "meal" VALUES(53009,'Lamb and Lemon Souvlaki',4,10,33,'Pound the garlic with sea salt in a pestle and mortar (or use a small food processor), until the garlic forms a paste. Whisk together the oil, lemon juice, zest, dill and garlic. Mix in the lamb and combine well. Cover and marinate for at least 2 hrs or overnight in the fridge. If you’re going to use bamboo skewers, soak them in cold water.

If you’ve prepared the lamb the previous day, take it out of the fridge 30 mins before cooking. Thread the meat onto the soaked or metal skewers. Heat the grill to high or have a hot griddle pan or barbecue ready. Cook the skewers for 2-3 mins on each side, basting with the remaining marinade. Heat the pitta or flatbreads briefly, then stuff with the souvlaki. Add Greek salad (see ''Goes well with'', right) and Tzatziki (below), if you like.','https://www.themealdb.com/images/media/meals/rjhf741585564676.jpg',NULL);
INSERT INTO "meal" VALUES(53010,'Lamb Tzatziki Burgers',4,10,15,'Tip the bulghar into a pan, cover with water and boil for 10 mins. Drain really well in a sieve, pressing out any excess water.

To make the tzatziki, squeeze and discard the juice from the cucumber, then mix into the yogurt with the chopped mint and a little salt.

Work the bulghar into the lamb with the spices, garlic (if using) and seasoning, then shape into 4 burgers. Brush with a little oil and fry or barbecue for about 5 mins each side until cooked all the way through. Serve in the buns (toasted if you like) with the tzatziki, tomatoes, onion and a few mint leaves.','https://www.themealdb.com/images/media/meals/k420tj1585565244.jpg',NULL);
INSERT INTO "meal" VALUES(53011,'Chicken Quinoa Greek Salad',2,10,10,'Cook the quinoa following the pack instructions, then rinse in cold water and drain thoroughly.

Meanwhile, mix the butter, chilli and garlic into a paste. Toss the chicken fillets in 2 tsp of the olive oil with some seasoning. Lay in a hot griddle pan and cook for 3-4 mins each side or until cooked through. Transfer to a plate, dot with the spicy butter and set aside to melt.

Next, tip the tomatoes, olives, onion, feta and mint into a bowl. Toss in the cooked quinoa. Stir through the remaining olive oil, lemon juice and zest, and season well. Serve with the chicken fillets on top, drizzled with any buttery chicken juices.','https://www.themealdb.com/images/media/meals/k29viq1585565980.jpg',NULL);
INSERT INTO "meal" VALUES(53012,'Gigantes Plaki',12,10,63,'Soak the beans overnight in plenty of water. Drain, rinse, then place in a pan covered with water. Bring to the boil, reduce the heat, then simmer for approx 50 mins until slightly tender but not soft. Drain, then set aside.

Heat oven to 180C/160C fan/gas 4. Heat the olive oil in a large frying pan, tip in the onion and garlic, then cook over a medium heat for 10 mins until softened but not browned. Add the tomato purée, cook for a further min, add remaining ingredients, then simmer for 2-3 mins. Season generously, then stir in the beans. Tip into a large ovenproof dish, then bake for approximately 1 hr, uncovered and without stirring, until the beans are tender. The beans will absorb all the fabulous flavours and the sauce will thicken. Allow to cool, then scatter with parsley and drizzle with a little more olive oil to serve.','https://www.themealdb.com/images/media/meals/b79r6f1585566277.jpg',NULL);
INSERT INTO "meal" VALUES(53013,'Big Mac',1,1,10,'For the Big Mac sauce, combine all the ingredients in a bowl, season with salt and chill until ready to use.
2. To make the patties, season the mince with salt and pepper and form into 4 balls using about 1/3 cup mince each. Place each onto a square of baking paper and flatten to form into four x 15cm circles. Heat oil in a large frypan over high heat. In 2 batches, cook beef patties for 1-2 minutes each side until lightly charred and cooked through. Remove from heat and keep warm. Repeat with remaining two patties.
3. Carefully slice each burger bun into three acrossways, then lightly toast.
4. To assemble the burgers, spread a little Big Mac sauce over the bottom base. Top with some chopped onion, shredded lettuce, slice of cheese, beef patty and some pickle slices. Top with the middle bun layer, and spread with more Big Mac sauce, onion, lettuce, pickles, beef patty and then finish with more sauce. Top with burger lid to serve.
5. After waiting half an hour for your food to settle, go for a jog.','https://www.themealdb.com/images/media/meals/urzj1d1587670726.jpg',NULL);
INSERT INTO "meal" VALUES(53014,'Pizza Express Margherita',5,13,37,'1 Preheat the oven to 230°C.

2 Add the sugar and crumble the fresh yeast into warm water.

3 Allow the mixture to stand for 10 – 15 minutes in a warm place (we find a windowsill on a sunny day works best) until froth develops on the surface.

4 Sift the flour and salt into a large mixing bowl, make a well in the middle and pour in the yeast mixture and olive oil.

5 Lightly flour your hands, and slowly mix the ingredients together until they bind.

6 Generously dust your surface with flour.

7 Throw down the dough and begin kneading for 10 minutes until smooth, silky and soft.

8 Place in a lightly oiled, non-stick baking tray (we use a round one, but any shape will do!)

9 Spread the passata on top making sure you go to the edge.

10 Evenly place the mozzarella (or other cheese) on top, season with the oregano and black pepper, then drizzle with a little olive oil.

11 Cook in the oven for 10 – 12 minutes until the cheese slightly colours.

12 When ready, place the basil leaf on top and tuck in!','https://www.themealdb.com/images/media/meals/x0lk931587671540.jpg',NULL);
INSERT INTO "meal" VALUES(53015,'Krispy Kreme Donut',3,1,103,'Dissolve yeast in warm water in 2 1/2-quart bowl. Add milk, sugar, salt, eggs, shortening and 2 cups flour. Beat on low for 30 seconds, scraping bowl constantly. Beat on medium speed for 2 minutes, scraping bowl occasionally. Stir in remaining flour until smooth. Cover and let rise until double, 50-60 minutes. (Dough is ready when indentation remains when touched.) Turn dough onto floured surface; roll around lightly to coat with flour. Gently roll dough 1/2-inch thick with floured rolling pin. Cut with floured doughnut cutter. Cover and let rise until double, 30-40 minutes.
Heat vegetable oil in deep fryer to 350°. Slide doughnuts into hot oil with wide spatula. Turn doughnuts as they rise to the surface. Fry until golden brown, about 1 minute on each side. Remove carefully from oil (do not prick surface); drain. Dip the doughnuts into creamy glaze set on rack.


Glaze: 
Heat butter until melted. Remove from heat. Stir in powdered sugar and vanilla until smooth. Stir in water, 1 tablespoon at a time, until desired consistency.','https://www.themealdb.com/images/media/meals/4i5cnx1587672171.jpg',NULL);
INSERT INTO "meal" VALUES(53016,'Chick-Fil-A Sandwich',2,1,32,'Wrap the chicken loosely between plastic wrap and pound gently with the flat side of a meat tenderizer until about 1/2 inch thick all around.
Cut into two pieces, as even as possible.
Marinate in the pickle juice for 30 minutes to one hour (add a teaspoon of Tabasco sauce now for a spicy sandwich).
Beat the egg with the milk in a bowl.
Combine the flour, sugar, and spices in another bowl.
Dip the chicken pieces each into the egg on both sides, then coat in flour on both sides.
Heat the oil in a skillet (1/2 inch deep) to about 345-350.
Fry each cutlet for 2 minutes on each side, or until golden and cooked through.
Blot on paper and serve on toasted buns with pickle slices.','https://www.themealdb.com/images/media/meals/sbx7n71587673021.jpg',NULL);
INSERT INTO "meal" VALUES(53017,'Paszteciki (Polish Pasties)',1,20,65,'Sift flour and salt into a large mixing bowl.
Use a spoon to push the egg yolk through a fine sieve into the flour.
Add the raw egg and mix well.
Beat in butter 1 tablespoon at a time.
Place dough on a floured surface and knead until smooth and elastic, then wrap in waxed paper and refrigerate until firm (at least 30 minutes).
In a heavy skillet, melt 2 tablespoons butter over medium heat; saute the onion and rutabaga until the onion is soft and transparent (5 minutes).
Put the onions, rutabaga, and beef through a meat grinder twice if you have one, if not just chop them up as fine as possible.
Melt the remaining 4 tablespoons butter over medium heat, and add the meat mixture.
Cook over low heat, stirring occasionally, until all of the liquid has evaporated and the mixture is thick enough to hold its shape.
Remove from heat and let cool, then stir in 1 egg, and season with salt and pepper.
Preheat oven to 350°F.
On a lightly floured surface, roll the dough out into a 13x8" rectangle (1/8" thick).
Spoon the filling down the center of the rectangle lengthwise, leaving about an inch of space on each end.
Lightly brush the long sides with cold water, then fold one of the long sides over the filling and the other side over the top of that.
Brush the short ends with cold water and fold them over the top, enclosing the filling.
Place pastry seam side down on a baking sheet and brush the top evenly with the remaining scrambled egg.
Bake in preheated oven until rich golden brown (30 minutes).
Slice pastry diagonally into 1.5" long pieces and serve as an appetizer or with soup.','https://www.themealdb.com/images/media/meals/c9a3l31593261890.jpg',NULL);
INSERT INTO "meal" VALUES(53018,'Bigos (Hunters Stew)',7,20,11,'Preheat the oven to 350 degrees F (175 degrees C).

Heat a large pot over medium heat. Add the bacon and kielbasa; cook and stir until the bacon has rendered its fat and sausage is lightly browned. Use a slotted spoon to remove the meat and transfer to a large casserole or Dutch oven.

Coat the cubes of pork lightly with flour and fry them in the bacon drippings over medium-high heat until golden brown. Use a slotted spoon to transfer the pork to the casserole. Add the garlic, onion, carrots, fresh mushrooms, cabbage and sauerkraut. Reduce heat to medium; cook and stir until the carrots are soft, about 10 minutes. Do not let the vegetables brown.

Deglaze the pan by pouring in the red wine and stirring to loosen all of the bits of food and flour that are stuck to the bottom. Season with the bay leaf, basil, marjoram, paprika, salt, pepper, caraway seeds and cayenne pepper; cook for 1 minute.

Mix in the dried mushrooms, hot pepper sauce, Worcestershire sauce, beef stock, tomato paste and tomatoes. Heat through just until boiling. Pour the vegetables and all of the liquid into the casserole dish with the meat. Cover with a lid.

Bake in the preheated oven for 2 1/2 to 3 hours, until meat is very tender.','https://www.themealdb.com/images/media/meals/md8w601593348504.jpg',NULL);
INSERT INTO "meal" VALUES(53019,'Pierogi (Polish Dumplings)',9,20,20,'To prepare the sauerkraut filling, melt the butter in a skillet over medium heat. Stir in the onion, and cook until translucent, about 5 minutes. Add the drained sauerkraut and cook for an additional 5 minutes. Season to taste with salt and pepper, then remove to a plate to cool.

For the mashed potato filling, melt the butter in a skillet over medium heat. Stir in the onion, and cook until translucent, about 5 minutes. Stir into the mashed potatoes, and season with salt and white pepper.

To make the dough, beat together the eggs and sour cream until smooth. Sift together the flour, salt, and baking powder; stir into the sour cream mixture until dough comes together. Knead the dough on a lightly floured surface until firm and smooth. Divide the dough in half, then roll out one half to 1/8 inch thickness. Cut into 3 inch rounds using a biscuit cutter.

Place a small spoonful of the mashed potato filling into the center of each round. Moisten the edges with water, fold over, and press together with a fork to seal. Repeat procedure with the remaining dough and the sauerkraut filling.

Bring a large pot of lightly salted water to a boil. Add perogies and cook for 3 to 5 minutes or until pierogi float to the top. Remove with a slotted spoon.','https://www.themealdb.com/images/media/meals/45xxr21593348847.jpg',NULL);
INSERT INTO "meal" VALUES(53020,'Rosół (Polish Chicken Soup)',2,20,10,'Add chicken to a large Dutch oven or stock pot 
Cover with water
Bring to a boil and simmer for 2 to 2 1/2 hours, skimming any impurities off the top to insure a clear broth
If your pot is big enough, add the vegetables and spices for the last hour of the cooking time
My Dutch oven wasn’t big enough to hold everything, just the chicken and other bones filled the pot, so I cooked the meat/bones for the full cooking time, then removed them, and cooked the vegetables and spices separately
Strain everything out of the broth
Bone the chicken, pulling the meat into large chunks
Slice the carrots
Return the chicken and carrots to the broth
Cook noodles according to package instructions if you’re using them
Add noodles to bowl and then top with hot soup','https://www.themealdb.com/images/media/meals/lx1kkj1593349302.jpg',NULL);
INSERT INTO "meal" VALUES(53021,'Gołąbki (cabbage roll)',1,20,23,'Bring a large pot of lightly salted water to a boil. Place cabbage head into water, cover pot, and cook until cabbage leaves are slightly softened enough to remove from head, 3 minutes. Remove cabbage from pot and let cabbage sit until leaves are cool enough to handle, about 10 minutes.

Remove 18 whole leaves from the cabbage head, cutting out any thick tough center ribs. Set whole leaves aside. Chop the remainder of the cabbage head and spread it in the bottom of a casserole dish.

Melt butter in a large skillet over medium-high heat. Cook and stir onion in hot butter until tender, 5 to 10 minutes. Cool.

Stir onion, beef, pork, rice, garlic, 1 teaspoon salt, and 1/4 teaspoon pepper together in a large bowl.

Preheat oven to 350 degrees F (175 degrees C).

Place about 1/2 cup beef mixture on a cabbage leaf. Roll cabbage around beef mixture, tucking in sides to create an envelope around the meat. Repeat with remaining leaves and meat mixture. Place cabbage rolls in a layer atop the chopped cabbage in the casserole dish; season rolls with salt and black pepper.

Whisk tomato soup, tomato juice, and ketchup together in a bowl. Pour tomato soup mixture over cabbage rolls and cover dish wish aluminum foil.

Bake in the preheated oven until cabbage is tender and meat is cooked through, about 1 hour.','https://www.themealdb.com/images/media/meals/q8sp3j1593349686.jpg',NULL);
INSERT INTO "meal" VALUES(53022,'Polskie Naleśniki (Polish Pancakes)',3,20,10,'Add flour, eggs, milk, water, and salt in a large bowl then mix with a hand mixer until you have a smooth, lump-free batter.
At this point, mix in the butter or the vegetable oil. Alternatively, you can use them to grease the pan before frying each pancake.
Heat a non-stick pan over medium heat, then pour in the batter, swirling the pan to help it spread.
When the pancake starts pulling away a bit from the sides, and the top is no longer wet, flip it and cook shortly on the other side as well.
Transfer to a plate. Cook the remaining batter until all used up.
Serve warm, with the filling of your choice.','https://www.themealdb.com/images/media/meals/58bkyo1593350017.jpg',NULL);
INSERT INTO "meal" VALUES(53023,'Sledz w Oleju (Polish Herrings)',8,20,10,'Soak herring in cold water for at least 1 hour. If very salty, repeat, changing the water each time.

Drain thoroughly and slice herring into bite-size pieces.

Place in a jar large enough to accommodate the pieces and cover with oil, allspice, peppercorns, and bay leaf. Close the jar.

Refrigerate for 2 to 3 days before eating. This will keep refrigerated up to 2 weeks.

Serve with finely chopped onion or onion slices, lemon, and parsley or dill.','https://www.themealdb.com/images/media/meals/7ttta31593350374.jpg',NULL);
INSERT INTO "meal" VALUES(53024,'Rogaliki (Polish Croissant Cookies)',3,20,27,'In a medium bowl mix egg yolks, philly cheese and baking powder using a hand held mixer. Carefully start adding the flour. When the mixture will not be mixing well, and will look like wood chips, put away the blending mixer and using your hands knead the dough.
Create a roll and cover in foil and freeze for 15 minutes. At this time preheat the oven to 375.
Take the dough out and separate into two. Roll and cut out 3 inch trangles.
Make as many as you can and on centre of each put a small spoon of jam. Roll them into a croissant shape.
Place the croissants onto a greased cookie sheet, and bake for 10-12 minutes or until golden.
Repeat with the rest of the dough.
When you take them out, put aside and sprinkle with powdered sugar on top.
This makes about 3 batches of 20 cookies each.
Total count about 60 cookies.','https://www.themealdb.com/images/media/meals/7mxnzz1593350801.jpg',NULL);
INSERT INTO "meal" VALUES(53025,'Ful Medames',12,7,30,'As the cooking time varies depending on the quality and age of the beans, it is good to cook them in advance and to reheat them when you are ready to serve. Cook the drained beans in a fresh portion of unsalted water in a large saucepan with the lid on until tender, adding water to keep them covered, and salt when the beans have softened. They take 2–2 1/2 hours of gentle simmering. When the beans are soft, let the liquid reduce. It is usual to take out a ladle or two of the beans and to mash them with some of the cooking liquid, then stir this back into the beans. This is to thicken the sauce.
Serve the beans in soup bowls sprinkled with chopped parsley and accompanied by Arab bread.
Pass round the dressing ingredients for everyone to help themselves: a bottle of extra-virgin olive oil, the quartered lemons, salt and pepper, a little saucer with the crushed garlic, one with chili-pepper flakes, and one with ground cumin.
The beans are eaten gently crushed with the fork, so that they absorb the dressing.
Optional Garnishes
Peel hard-boiled eggs—1 per person—to cut up in the bowl with the beans.
Top the beans with a chopped cucumber-and-tomato salad and thinly sliced mild onions or scallions. Otherwise, pass round a good bunch of scallions and quartered tomatoes and cucumbers cut into sticks.
Serve with tahina cream sauce (page 65) or salad (page 67), with pickles and sliced onions soaked in vinegar for 30 minutes.
Another way of serving ful medames is smothered in a garlicky tomato sauce (see page 464).
In Syria and Lebanon, they eat ful medames with yogurt or feta cheese, olives, and small cucumbers.
Variations
A traditional way of thickening the sauce is to throw a handful of red lentils (1/4 cup) into the water at the start of the cooking.
In Iraq, large brown beans are used instead of the small Egyptian ones, in a dish called badkila, which is also sold for breakfast in the street.','https://www.themealdb.com/images/media/meals/lvn2d51598732465.jpg',NULL);
INSERT INTO "meal" VALUES(53026,'Tamiya',12,7,35,'oak the beans in water to cover overnight.Drain. If skinless beans are unavailable, rub to loosen the skins, then discard the skins. Pat the beans dry with a towel.
Grind the beans in a food mill or meat grinder.If neither appliance is available, process them in a food processor but only until the beans form a paste. (If blended too smoothly, the batter tends to fall apart during cooking.) Add the scallions, garlic, cilantro, cumin, baking powder, cayenne, salt, pepper, and coriander, if using.  Refrigerate for at least 30 minutes.
Shape the bean mixture into 1-inch balls.Flatten slightly and coat with flour.
Heat at least 1½-inches of oil over medium heat to 365 degrees.
Fry the patties in batches, turning once, until golden brown on all sides, about 5 minutes.Remove with a wire mesh skimmer or slotted spoon. Serve as part of a meze or in pita bread with tomato-cucumber salad and tahina sauce.','https://www.themealdb.com/images/media/meals/n3xxd91598732796.jpg',NULL);
INSERT INTO "meal" VALUES(53027,'Koshari',12,7,65,'Cook the lentils. Bring lentils and 4 cups of water to a boil in a medium pot or saucepan over high heat. Reduce the heat to low and cook until lentils are just tender (15-17 minutes). Drain from water and season with a little salt. (Note: when the lentils are ready, they should not be fully cooked. They should be only par-cooked and still have a bite to them as they need to finish cooking with the rice).
Now, for the rice. Drain the rice from its soaking water. Combine the par-cooked lentils and the rice in the saucepan over medium-high heat with 1 tbsp cooking oil, salt, pepper, and coriander. Cook for 3 minutes, stirring regularly. Add warm water to cover the rice and lentil mixture by about 1 1/2 inches (you’ll probably use about 3 cups of water here). Bring to a boil; the water should reduce a bit. Now cover and cook until all the liquid has been absorbed and both the rice and lentils are well cooked through (about 20 minutes).  Keep covered and undisturbed for 5 minutes or so.
Now make the pasta. While the rice and lentils are cooking, make the pasta according to package instructions by adding the elbow pasta to boiling water with a dash of salt and a little oil. Cook until the pasta is al dente. Drain.
Cover the chickpeas and warm in the microwave briefly before serving.

Make the crispy onion topping. 

Sprinkle the onion rings with salt, then toss them in the flour to coat. Shake off excess flour.
In a large skillet, heat the cooking oil over medium-high heat, cook the onion rings, stirring often, until they turn a nice caramelized brown. Onions must be crispy, but not burned (15-20 minutes).','https://www.themealdb.com/images/media/meals/4er7mj1598733193.jpg',NULL);
INSERT INTO "meal" VALUES(53028,'Shawarma',2,7,14,'Combine the marinade ingredients in a large ziplock bag (or bowl).
Add the chicken and use your hands to make sure each piece is coated. If using a ziplock bag, I find it convenient to close the bag then massage the bag to disperse the rub all over each chicken piece.
Marinate overnight or up to 24 hours.
Combine the Yoghurt Sauce ingredients in a bowl and mix. Cover and put in the fridge until required (it will last for 3 days in the fridge).
Heat grill/BBQ (or large heavy based pan on stove) on medium high. You should not need to oil it because the marinade has oil in it and also thigh fillets have fat. But if you are worried then oil your hotplate/grill. (See notes for baking)
Place chicken on the grill and cook the first side for 4 to 5 minutes until nicely charred, then turn and cook the other side for 3 to 4 minutes (the 2nd side takes less time).
Remove chicken from the grill and cover loosely with foil. Set aside to rest for 5 minutes.
TO SERVE
Slice chicken and pile onto platter alongside flatbreads, Salad and the Yoghurt Sauce.
To make a wrap, get a piece of flatbread and smear with Yoghurt Sauce. Top with a bit of lettuce and tomato and Chicken Shawarma. Roll up and enjoy!','https://www.themealdb.com/images/media/meals/kcv6hj1598733479.jpg',NULL);
INSERT INTO "meal" VALUES(53029,'Mulukhiyah',1,7,19,'Saute the onions in the 3-4 tablespoons olive oil
Add the beef cubes or the chicken cutlets, sear for 3-4 min on each side
Add 1 liter of water or just enough to cover the meat
Cook over medium heat until the meat is done (I usually do this in the pressure cooker and press them for 5 min)

Add the frozen mulukhyia and stir until it thaws completely and then comes to a boil

In another pan add the 1/4 to 1/2 cup of olive oil and the cloves of garlic and cook over medium low heat until you can smell the garlic (don’t brown it, it will become bitter)

Add the oil and garlic to the mulukhyia and lower the heat and simmer for 5-10 minutes
Add salt to taste

Serve with a generous amount of lemon juice.

You can serve it with some short grain rice or some pita bread','https://www.themealdb.com/images/media/meals/x372ug1598733932.jpg',NULL);
INSERT INTO "meal" VALUES(53030,'Feteer Meshaltet',9,7,40,'Mix the flour and salt then pour one cup of water and start kneading.
If you feel the dough is still not coming together or too dry, gradually add the remaining water until you get a dough that is very elastic so that when you pull it and it won’t be torn.
Let the dough rest for just 10 minutes then divide the dough into 6-8 balls depending on the size you want for your feteer.
Warm up the butter/ghee or oil you are using and pour into a deep bowl.
Immerse the dough balls into the warm butter. Let it rest for 15 to 20 minutes.
Preheat oven to 550F.
Stretch the first ball with your hands on a clean countertop. Stretch it as thin as you can, the goal here is to see your countertop through the dough.
Fold the dough over itself to form a square brushing in between folds with the butter mixture.
Set aside and start making the next ball.
Stretch the second one thin as we have done for the first ball.
Place the previous one on the middle seam side down. Fold the outer one over brushing with more butter mixture as you fold. Set aside.
Keep doing this for the third and fourth balls. Now we have one ready, place on a 10 inch baking/pie dish seam side down and brush the top with more butter.
Repeat for the remaining 4 balls to make a second one. With your hands lightly press the folded feteer to spread it on the baking dish.
Place in preheated oven for 10 minutes when the feteer starts puffing turn on the broiler to brown the top.
When it is done add little butter on top and cover so it won’t get dry.','https://www.themealdb.com/images/media/meals/9f4z6v1598734293.jpg',NULL);
INSERT INTO "meal" VALUES(53031,'Egyptian Fatteh',1,7,35,'To prepare bread for bottom of dish: Take pita bread and rip into bite size pieces. In a frying pan, add about a 1/4 stick of butter, add bread pieces and fry until golden brown and crisp. Put these pieces in a glass baking dish, preferably a square sized dish. Set aside.
Then add to same pan, a little more butter, salt, approximately 2 cloves of crushed fresh garlic, and a teaspoon or so of cumin stir around a bit until you can smell aroma, then add fried bread pieces to this mixture, stir to coat bread and put back into glass baking dish. Set aside.
To prepare meat: put some butter in a pot, stir fry meat until brown, add 1 onion quartered, salt & pepper, 1 cube of chicken bouillon and water to cover meat. Bring to a boil, turn down to simmer, cover and cook until tender, approximately 2 hours. After meat has cooled, take out chunks of meat and put in a bowl, set aside. Reserve soup from the meat separately.
To prepare the rice: Put some butter into a pot, add shareya (fideo noodles) like a handful or so, keep stirring until golden brown, not too dark, but very golden. Then add two cups of rice, stir a little bit until some of the rice turns an opaque white. Add 2-1/4 cups of water and salt to taste. Bring to a boil, cover and turn down to simmer, cook until tender. Test the rice tenderness after about 35 minutes.
Now take some of the soup from meat and add to the top of the bread pieces in baking dish to saturate.Add cooked rice on top of bread pieces. Slowly spoon remainder of soup onto rice, looking at glass dish sides to see level of soup, should reach just to top of rice, don’t worry, this doesn’t have to be exact. Now you’re ready to make the sauce and fry the meat to put on top.
To prepare red sauce: In a pan, add a little oil or butter, crushed tomato, a half teaspoon of tomato paste, salt & pepper, 2 cloves of fresh crushed garlic and cumin. Add also approximately 3 tablespoons of vinegar, stir this until you smell aroma and it is a bit smooth. It should be a bit thick, not watery, but if too thick you can add a bit of water. Spread with a wooden spoon atop the rice to cover.
To fry meat: In a pan add a bit of butter or oil, the meat, just a touch of tomato paste, about a tablespoon of fresh crushed garlic, salt & pepper, a teaspoon of cumin. Cook until meat is golden fried.
Spoon this atop the rice and serve. Enjoy!','https://www.themealdb.com/images/media/meals/rlwcc51598734603.jpg',NULL);
INSERT INTO "meal" VALUES(53032,'Tonkatsu pork',7,15,10,'STEP 1
Remove the large piece of fat on the edge of each pork loin, then bash each of the loins between two pieces of baking parchment until around 1cm in thickness – you can do this using a meat tenderiser or a rolling pin. Once bashed, use your hands to reshape the meat to its original shape and thickness – this step will ensure the meat is as succulent as possible.

STEP 2
Put the flour, eggs and panko breadcrumbs into three separate wide-rimmed bowls. Season the meat, then dip first in the flour, followed by the eggs, then the breadcrumbs.

STEP 3
In a large frying or sauté pan, add enough oil to come 2cm up the side of the pan. Heat the oil to 180C – if you don’t have a thermometer, drop a bit of panko into the oil and if it sinks a little then starts to fry, the oil is ready. Add two pork chops and cook for 1 min 30 secs on each side, then remove and leave to rest on a wire rack for 5 mins. Repeat with the remaining pork chops.

STEP 4
While the pork is resting, make the sauce by whisking the ingredients together, adding a splash of water if it’s particularly thick. Slice the tonkatsu and serve drizzled with the sauce.','https://www.themealdb.com/images/media/meals/lwsnkl1604181187.jpg',NULL);
INSERT INTO "meal" VALUES(53033,'Japanese gohan rice',9,15,30,'STEP 1
Rinsing and soaking your rice is key to achieving the perfect texture. Measure the rice into a bowl, cover with cold water, then use your fingers to massage the grains of rice – the water will become cloudy. Drain and rinse again with fresh water. Repeat five more times until the water stays clear.

STEP 2
Tip the rinsed rice into a saucepan with 400ml water, or 200ml dashi and 200ml water, bring to the boil, then turn down the heat to a low simmer, cover with a tight-fitting lid with a steam hole and cook for 15 mins. Remove from the heat and leave to sit for another 15 mins, then stir through the mirin. Remove the lid and give it a good stir. Serve with any or all of the optional toppings.','https://www.themealdb.com/images/media/meals/kw92t41604181871.jpg',NULL);
INSERT INTO "meal" VALUES(53034,'Japanese Katsudon',7,15,10,'STEP 1
Heat the oil in a pan, fry the sliced onion until golden brown, then add the tonkatsu (see recipe here), placing it in the middle of the pan. Mix the dashi, soy, mirin and sugar together and tip three-quarters of the mixture around the tonkatsu. Sizzle for a couple of mins so the sauce thickens a little and the tonkatsu reheats.

STEP 2
Tip the beaten eggs around the tonkatsu and cook for 2-3 mins until the egg is cooked through but still a little runny. Divide the rice between two bowls, then top each with half the egg and tonkatsu mix, sprinkle over the chives and serve immediately, drizzling with a little more soy if you want an extra umami kick.','https://www.themealdb.com/images/media/meals/d8f6qx1604182128.jpg',NULL);
INSERT INTO "meal" VALUES(53035,'Ham hock colcannon',7,12,15,'STEP 1
Peel and cut the potatoes into even, medium-sized chunks. Put in a large pan filled with cold salted water, bring to the boil and cook for 10-15 mins until a knife can be inserted into the potatoes easily.

STEP 2
Meanwhile, melt the butter in a large sauté pan over a medium heat. Add the garlic, cabbage, spring onions and some seasoning. Stir occasionally until the cabbage is wilted but still retains a little bite, then set aside.

STEP 3
Drain the potatoes, leave to steam-dry for a couple of mins, then mash with the cream, mustard and seasoning in the same saucepan. Stir in the cabbage and ham hock. Keep warm over a low heat.

STEP 4
Reheat the pan you used to cook the cabbage (no need to wash first), add a splash of oil, crack in the eggs and fry to your liking. To serve, divide the colcannon between bowls and top each with a fried egg.','https://www.themealdb.com/images/media/meals/n41ny81608588066.jpg',NULL);
INSERT INTO "meal" VALUES(53036,'Boxty Breakfast',7,12,45,'STEP 1
Before you start, put your oven on its lowest setting, ready to keep things warm. Peel the potatoes, grate 2 of them, then set aside. Cut the other 2 into large chunks, then boil for 10-15 mins or until tender. Meanwhile, squeeze as much of the liquid from the grated potatoes as you can using a clean tea towel. Mash the boiled potatoes, then mix with the grated potato, spring onions and flour.

STEP 2
Whisk the egg white in a large bowl until it holds soft peaks. Fold in the buttermilk, then add the bicarbonate of soda. Fold into the potato mix.

STEP 3
Heat a large non-stick frying pan over a medium heat, then add 1 tbsp butter and some of the oil. Drop 3-4 spoonfuls of the potato mixture into the pan, then gently cook for 3-5 mins on each side until golden and crusty. Keep warm on a plate in the oven while you cook the next batch, adding more butter and oil to the pan before you do so. You will get 16 crumpet-size boxty from the mix. Can be made the day ahead, drained on kitchen paper, then reheated in a low oven for 20 mins.

STEP 4
Heat the grill to medium and put the tomatoes in a heavy-based pan. Add a good knob of butter and a little oil, then fry for about 5 mins until softened. Grill the bacon, then pile onto a plate and keep warm. Stack up the boxty, bacon and egg, and serve the tomatoes on the side.','https://www.themealdb.com/images/media/meals/naqyel1608588563.jpg',NULL);
INSERT INTO "meal" VALUES(53037,'Coddled pork with cider',7,12,23,'STEP 1
Heat the butter in a casserole dish until sizzling, then fry the pork for 2-3 mins on each side until browned. Remove from the pan.

STEP 2
Tip the bacon, carrot, potatoes and swede into the pan, then gently fry until slightly coloured. Stir in the cabbage, sit the chops back on top, add the bay leaf, then pour over the cider and stock. Cover the pan, then leave everything to gently simmer for 20 mins until the pork is cooked through and the vegetables are tender.

STEP 3
Serve at the table spooned straight from the dish.','https://www.themealdb.com/images/media/meals/7vpsfp1608588991.jpg',NULL);
INSERT INTO "meal" VALUES(53038,'Mustard champ',9,12,17,'STEP 1
Boil the potatoes for 15 mins or until tender. Drain, then mash.

STEP 2
Heat the milk and half the butter in the corner of the pan, then beat into the mash, along with the wholegrain mustard.

STEP 3
Gently fry the spring onions in the remaining butter for 2 mins until just soft but still a perky green. Fold into the mash and serve. Great with gammon or to top a fish pie.','https://www.themealdb.com/images/media/meals/o7p9581608589317.jpg',NULL);
INSERT INTO "meal" VALUES(53039,'Piri-piri chicken and slaw',2,21,40,'STEP 1

Whizz together all of the marinade ingredients in a small food processor. Rub the marinade onto the chicken and leave for 1 hour at room temperature.

STEP 2

Heat the oven to 190C/fan 170C/gas 5. Put the chicken in a roasting tray and cook for 1 hour 20 minutes. Rest under loose foil for 20 minutes. While the chicken is resting, mix together the slaw ingredients and season. Serve the chicken with slaw, fries and condiments.','https://www.themealdb.com/images/media/meals/hglsbl1614346998.jpg',NULL);
INSERT INTO "meal" VALUES(53040,'Spring onion and prawn empanadas',8,21,60,'STEP 1

To make the dough, rub the butter into the flour and then add the egg white and half the yolk (keep the rest), vinegar, a pinch of salt and enough cold water to make a soft dough. Knead on a floured surface until smooth and then wrap and rest for 30 minutes.

STEP 2

Heat the oven to 180c/fan 160c/gas 4. Trim the green ends of the spring onions and then finely slice the rest. Heat a little oil in a pan and fry them gently until soft but not browned. Add the chilli and garlic, stir and then add the prawns and cook until they are opaque. Season well. Scoop out the prawns and bubble the juices until they thicken, then add back the prawns.

STEP 3

Divide the empanada dough into eight balls and roll out to thin circles on a floured surface. Put some filling on one half of the dough, sprinkle the feta on top and fold the other half over. Trim the edge and then fold and crimp the dough together so the empanada is tightly sealed, put it on an oiled baking sheet either on its side or sitting on its un-crimped edge like a cornish pasty. Repeat with the remaining dough and mixture. Mix the leftover egg yolk with a splash of water and brush the top of the empanadas.

STEP 4

Bake for 30 minutes or until golden and slightly crisp around the edges.','https://www.themealdb.com/images/media/meals/1c5oso1614347493.jpg',NULL);
INSERT INTO "meal" VALUES(53041,'Grilled Portuguese sardines',8,21,10,'STEP 1

Put all of the ingredients, except the sardines, into a bowl and mix together with some seasoning. Pour into a baking dish, add the sardines and toss really well. Cover and chill for a few hours.

STEP 2

Heat a BBQ or griddle pan until hot. Cook the sardines for 4-5 minutes on each side or until really caramelised and charred. Put onto a serving plate, drizzle with oil, sprinkle with a little more paprika and squeeze over the lemon wedges.','https://www.themealdb.com/images/media/meals/lpd4wy1614347943.jpg',NULL);
INSERT INTO "meal" VALUES(53042,'Portuguese prego with green piri-piri',1,21,10,'STEP 1

Rub the garlic over the steaks then put in a sandwich bag and tip in the olive oil, sherry vinegar and parsley stalks. Smoosh everything together, then use a rolling pin to bash the steaks a few times. Leave for 1-2 hours.

STEP 2

To make the sauce, put all the ingredients into a blender with 1 tbsp water and whizz until as smooth as possible. This will make more than you’ll need for the recipe but will keep for a week in an airtight jar.

STEP 3

Heat a griddle or frying pan to high. Brush away the garlic and parsley stalks from the steaks and season well. Sear the steaks for 2 minutes on each side then rest on a plate. Put the ciabatta halves onto the plate, toasted-side down, to soak up any juices.

STEP 4

Slice the steaks then stuff into the rolls with the green sauce and rocket.','https://www.themealdb.com/images/media/meals/ewcikl1614348364.jpg',NULL);
INSERT INTO "meal" VALUES(53043,'Fish fofos',8,21,32,'STEP 1

Put the fish into a lidded pan and pour over enough water to cover. Bring to a simmer and gently poach for 10 minutes over a low heat with the lid on. Drain and flake the fish.

STEP 2

Put the fish, potato, green chilli, coriander, cumin, black pepper, garlic and ginger in a large bowl. Season, add the rice flour, mix well and break in 1 egg. Stir the mixture and divide into 15, then form into small logs. Break the remaining eggs into a bowl and whisk lightly. Put the breadcrumbs into another bowl. Dip each fofo in the beaten egg followed by the breadcrumb mixture. Chill for 20 minutes.

STEP 3

Heat 1cm of oil in a large frying pan over a medium heat. Fry the fofos in batches for 2 minutes on each side, turning gently to get an even golden brown colour all over. Drain on kitchen paper and repeat with the remaining fofos.

STEP 4

For the onion salad, mix together the onion, coriander and lemon juice with a pinch of salt. Serve with the fofos and mango chutney.','https://www.themealdb.com/images/media/meals/a15wsa1614349126.jpg',NULL);
INSERT INTO "meal" VALUES(53044,'Portuguese barbecued pork (Febras assadas)',7,21,48,'STEP 1

Cut the tenderloins into 5 equal-size pieces leaving the tail ends a little longer. Take a clear plastic bag and slip one of the pieces in. Bash it into an escalope the size of a side-plate with a rolling pin and repeat with the remaining pieces.

STEP 2

Put the wine, paprika, some salt and pepper and the juice of ½ a lemon in a bowl and add the pork. Leave to marinate for 20-30 minutes, while you get your barbecue to the stage where the coals are glowing but there are no flames.

STEP 3

To make the chips, fill a basin with cool water and cut the potatoes into 3cm-thick chips. Soak them in the water for 5 minutes and then change the water. Leave for 5 more minutes. Drain and then pat dry on a towel or with kitchen paper.

STEP 4

Heat the oil in a deep fryer or a deep heavy-based pan with a lid to 130C and lower the chips into the oil (in batches). Blanch for 8-10 minutes. Remove from the oil and drain well. Place on a tray to cool. Reheat the oil to 180C (make sure it’s hot or your chips will be soggy) and lower the basket of chips into the oil (again, do this in batches). Leave to cook for 2 minutes and then give them a little shake. Cook for another minute or so until they are well coloured and crisp to the touch. Drain well for a few minutes, tip into a bowl and sprinkle with sea salt.

STEP 5

The pork will cook quickly so do it in 2 batches. Take the pieces out of the marinade, rub them with oil, and drop them onto the barbecue (you could also use a chargrill). Cook for 1 minute on each side – they may flare up as you do so. This should really be enough time as they will keep on cooking. Take them off the barbecue and pile onto a plate. Repeat with the remaining batch.

STEP 6

Serve by piling a plate with chips, drop the pork on top of each pile and pouring the juices from the plate over so the chips take up the flavours. Top with a spoon of mayonnaise and a wedge of lemon.','https://www.themealdb.com/images/media/meals/cybyue1614349443.jpg',NULL);
INSERT INTO "meal" VALUES(53045,'Portuguese fish stew (Caldeirada de peixe)',8,21,33,'STEP 1

Heat a drizzle of oil in a large, deep-sided frying pan, and fry the onion and pepper on a medium heat until softened but not browned. Finely chop the coriander stalks (keep the leaves for later), and add to the pan with the chilli and chopped garlic. Fry for another few minutes. Add the wine, saffron and bay leaf and let it simmer until reduced by half.

STEP 2

Add the potatoes, tomatoes, and 300ml water and bring to a gentle boil. Break up the tomatoes with a spoon on the side of the pan and simmer for 20-25 minutes until the potatoes are just tender, and the tomatoes have broken down.

STEP 3

Season well, then gently push the fish into the sauce, and arrange the squid, prawns, clams and mussels on the surface. Put the lid on and cook for 6-8 minutes until the mussel and clam shells have opened, the prawns are cooked and the fish is flaky. Toast the bread, rub lightly with the halved garlic clove and drizzle with olive oil. Serve the stew scatted with chopped coriander leaves, and the toasts for dunking.','https://www.themealdb.com/images/media/meals/do7zps1614349775.jpg',NULL);
INSERT INTO "meal" VALUES(53046,'Portuguese custard tarts',3,21,15,'STEP 1
Roll the pastry
Mix the flour and icing sugar, and use this to dust the work surface. Roll the pastry out to make a 45 x 30cm rectangle. Roll up lengthways to create a long sausage shape.

STEP 2
Cutting pastry into rounds
Cut the pastry into 24 wheels, about 1-2cm thick.

STEP 3
Roll out each pastry portion
Roll each wheel lightly with the rolling pin to fit 2 x 12-hole non-stick fairy cake tins.

STEP 4
Press pastry into the tin
Press the pastry circles into the tins and mould into the tins to make thin cases. Chill until needed.

STEP 5
Make the infused syrup
Heat the oven to 220C/fan 200C/gas 7. Make a sugar syrup by bringing the sugar, 200ml water, lemon zest and cinnamon stick to the boil. Reduce until syrupy, allow to cool, then remove the cinnamon and lemon. Whisk the eggs, egg yolks and cornflour until smooth in another large pan.

STEP 6
Making custard
Heat the milk and vanilla pod seeds in a separate pan until just below the boil. Gradually pour the hot milk over the eggs and cornflour, then cook on a low heat, continually whisking.

STEP 7
Add syrup to custard
Add the cooled sugar syrup to the custard and whisk until thickened slightly.

STEP 8
Pour custard into the tins
Pour the custard through a sieve. Pour into the pastry cases and bake for 15 minutes until the pastry is golden and the custard has darkened.

STEP 9
cool and dust with icing sugar
Cool completely in the tins then sift over icing sugar and ground cinnamon to serve.



 ','https://www.themealdb.com/images/media/meals/vmz7gl1614350221.jpg',NULL);
INSERT INTO "meal" VALUES(53047,'Moroccan Carrot Soup',12,19,12,'Step 1
Preheat oven to 180° C.
Step 2
Combine carrots, onion, garlic, cumin seeds, coriander seeds, salt and olive oil in a bowl and mix well. Transfer on a baking tray.
Step 3
Put the baking tray in preheated oven and roast for 10-12 minutes or till carrots soften. Remove from heat and cool.
Step 4
Grind the baked carrot mixture along with some water to make a smooth paste and strain in a bowl.
Step 5
Heat the carrot mixture in a non-stick pan. Add two cups of water and bring to a boil. Add garam masala powder and mix. Add salt and mix well.
Step 6
Remove from heat, add lemon juice and mix well.
Step 7
Serve hot.','https://www.themealdb.com/images/media/meals/jcr46d1614763831.jpg',NULL);
INSERT INTO "meal" VALUES(53048,'Mee goreng mamak',8,17,10,'Heat oil in a pan at medium heat. Then, add peanuts, dried chilies, dried shrimps and dhal. Fry the aromatics until fragrant. Remove from pan and leave aside.

Blend fried ingredients with tamarind paste and water until fine. Then, sauté the blended ingredients in oil heated over low heat. Continue cooking until the oil separates from the paste and turns a darker shade.

Skin and cut potatoes into small chunks and boil them in a pot of water until knife-tender. Once ready, remove them from the pot and leave aside. Discard water.

Slice onion and fried tofu, mince garlic, cut some cabbage and Chinese flowering cabbage (choi sam). Prepare prawn fritters and cut them. Boil noodles to soften them if bought dried. Also mix black soy sauce with water.

To fry one portion of mee goreng mamak, heat oil and add 1/4 of the following ingredients in this order: garlic, onion, paste. Sauté until fragrant. Optionally, add prawns.

Add in 1/4 amount of tofu, boiled potatoes, cabbage, Chinese flowering cabbage and prawn fritters. Sauté for another 30 seconds.

Add noodles to the wok. Add 3 tablespoons of dark soy sauce mixture. Mix evenly for the next 1 minute. Then, move the noodles to the side of the wok. Stir in an egg. Garnish with a slice of lime and slices of green chilies. To cook another plate of noodles, repeat from step 5 onwards.','https://www.themealdb.com/images/media/meals/xquakq1619787532.jpg',NULL);
INSERT INTO "meal" VALUES(53049,'Apam balik',3,17,10,'Mix milk, oil and egg together. Sift flour, baking powder and salt into the mixture. Stir well until all ingredients are combined evenly.

Spread some batter onto the pan. Spread a thin layer of batter to the side of the pan. Cover the pan for 30-60 seconds until small air bubbles appear.

Add butter, cream corn, crushed peanuts and sugar onto the pancake. Fold the pancake into half once the bottom surface is browned.

Cut into wedges and best eaten when it is warm.','https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg',NULL);
INSERT INTO "meal" VALUES(53050,'Ayam Percik',2,17,70,'In a blender, add the ingredients for the spice paste and blend until smooth.
Over medium heat, pour the spice paste in a skillet or pan and fry for 10 minutes until fragrant. Add water or oil 1 tablespoon at a time if the paste becomes too dry. Don''t burn the paste. Lower the fire slightly if needed.
Add the cloves, cardamom, tamarind pulp, coconut milk, water, sugar and salt. Turn the heat up and bring the mixture to boil. Turn the heat to medium low and simmer for 10 minutes. Stir occasionally. It will reduce slightly. This is the marinade/sauce, so taste and adjust seasoning if necessary. Don''t worry if it''s slightly bitter. It will go away when roasting.
When the marinade/sauce has cooled, pour everything over the chicken and marinate overnight to two days.
Preheat the oven to 425 F.
Remove the chicken from the marinade. Spoon the marinade onto a greased (or aluminum lined) baking sheet. Lay the chicken on top of the sauce (make sure the chicken covers the sauce and the sauce isn''t exposed or it''ll burn) and spread the remaining marinade on the chicken. Roast for 35-45 minutes or until internal temp of the thickest part of chicken is at least 175 F.
Let chicken rest for 5 minutes. Brush the chicken with some of the oil. Serve chicken with the sauce over steamed rice (or coconut rice).','https://www.themealdb.com/images/media/meals/020z181619788503.jpg',NULL);
INSERT INTO "meal" VALUES(53051,'Nasi lemak',8,17,64,'In a medium saucepan over medium heat, stir together coconut milk, water, ground ginger, ginger root, salt, bay leaf, and rice. Cover, and bring to a boil. Reduce heat, and simmer for 20 to 30 minutes, or until done.

 Step 2
Place eggs in a saucepan, and cover with cold water. Bring water to a boil, and immediately remove from heat. Cover, and let eggs stand in hot water for 10 to 12 minutes. Remove eggs from hot water, cool, peel and slice in half. Slice cucumber.

 Step 3
Meanwhile, in a large skillet or wok, heat 1 cup vegetable oil over medium-high heat. Stir in peanuts and cook briefly, until lightly browned. Remove peanuts with a slotted spoon and place on paper towels to soak up excess grease. Return skillet to stove. Stir in the contents of one package anchovies; cook briefly, turning, until crisp. Remove with a slotted spoon and place on paper towels. Discard oil. Wipe out skillet.

 Step 4
Heat 2 tablespoons oil in the skillet. Stir in the onion, garlic, and shallots; cook until fragrant, about 1 or 2 minutes. Mix in the chile paste, and cook for 10 minutes, stirring occasionally. If the chile paste is too dry, add a small amount of water. Stir in remaining anchovies; cook for 5 minutes. Stir in salt, sugar, and tamarind juice; simmer until sauce is thick, about 5 minutes.

 Step 5
Serve the onion and garlic sauce over the warm rice, and top with peanuts, fried anchovies, cucumbers, and eggs.','https://www.themealdb.com/images/media/meals/wai9bw1619788844.jpg',NULL);
INSERT INTO "meal" VALUES(53052,'Roti john',1,17,10,'Mix all the ingredients in a bowl.
Heat a pan or griddle with a little vegetable oil.
Pour the mixture onto the pan and place a piece of open-faced baguette on top.
Press on the bread with a spatula and grill for 2 minutes.
Turn the bread over to make it a little crispy.
Remove from pan and cut the bread into small portions.
Add mayonnaise and/or Sambal before cutting the sandwich (optional).','https://www.themealdb.com/images/media/meals/hx335q1619789561.jpg',NULL);
INSERT INTO "meal" VALUES(53053,'Beef Rendang',1,17,10,'Chop the spice paste ingredients and then blend it in a food processor until fine.
Heat the oil in a stew pot, add the spice paste, cinnamon, cloves, star anise, and cardamom and stir-fry until aromatic. Add the beef and the pounded lemongrass and stir for 1 minute. Add the coconut milk, tamarind juice, water, and simmer on medium heat, stirring frequently until the meat is almost cooked. Add the kaffir lime leaves, kerisik (toasted coconut), sugar or palm sugar, stirring to blend well with the meat.
Lower the heat to low, cover the lid, and simmer for 1 to 1 1/2 hours or until the meat is really tender and the gravy has dried up. Add more salt and sugar to taste. Serve immediately with steamed rice and save some for overnight.','https://www.themealdb.com/images/media/meals/bc8v651619789840.jpg',NULL);
INSERT INTO "meal" VALUES(53054,'Seri muka kuih',3,17,115,'Soak glutinous rice with water for at least 1 ½ hours prior to using. Drain.
Prepare a 9-inch round or square cake pan and spray with cooking spray or line with plastic wrap.
Mix coconut milk, water, salt and the rice. Pour it into cake pan, topped with the pandan knots.
Steam for 30 minutes.
After 30 minutes, fluff up the rice and remove pandan knots. Then, using a greased spatula, flatten the steamed rice. Make sure there are no holes/air bubbles and gaps in the rice, especially the sides.
Steam for another 10 minutes.

Combine pandan juice, coconut milk, all purpose flour, cornflour, and sugar. Mix well.
Add eggs and whisk well then strain into a medium sized metal bowl or pot.
Place pandan mixture over simmering water (double boiler or bain-marie)
Stir continuously and cook till custard starts to thicken. (15 minutes)
Pour pandan custard into glutinous rice layer, give it a little tap (for air bubbles) and continue to steam for 30 minutes.
Remove kuih seri muka from the steamer and allow to cool completely before cutting into rectangles or diamond shapes.','https://www.themealdb.com/images/media/meals/6ut2og1619790195.jpg',NULL);
INSERT INTO "meal" VALUES(53055,'Cevapi Sausages',1,5,24,'Place the ground meat in a bowl. Chop the onion very finely and grate the garlic cloves. Add to the bowl. Add the chopped parsley, all sorts of paprika, baking soda, dried breadcrumbs, water, Vegeta, salt, and pepper.
Mix well with the hand mixer fitted with the dough hooks. Cover the bowl with cling film/ plastic foil and leave to rest for 1 or 2 hours in the refrigerator.
Take portions of the meat mixture, about 50-55 g/ 1.7-1.9 oz/ ¼ cup portions, and form the cevapi. The rolls should be about as thick as your thumb and about 7-10 cm/ 3-4 inches long. I had 18 sausages. The recipe can be easily doubled.
Grill the cevapcici on the hot grill pan or on the barbecue for about 12-14 minutes, turning them several times in between, or until brown and cooked through. I checked by cutting one in the middle and then grilling the following batches for the same period of time.
Serve hot as suggested above. The cevapcici can be reheated in the oven at 180 degrees Celsius/ 350 degrees Fahrenheit for about 10 minutes or until heated through. Check one, if it is not hot enough, give the sausages a few more minutes.','https://www.themealdb.com/images/media/meals/vc08jn1628769553.jpg','Sausages');
INSERT INTO "meal" VALUES(53056,'Croatian lamb peka',1,5,60,'Preheat oven to 200°C fan / 220°C / 425°F / Gas mark 7
If you have not bought diced lamb, cut your lamb shoulder or leg into large chunks and place to one side.
Chunks of chopped lamb of a red chopping board
Make oil marinade -
Mix 80ml of olive oil in a bowl with garlic puree, sundried tomato puree ,black pepper and salt.
olive oil, gia sundried tomato puree and gia garlic puree and black pepper mixed together in a silver bowl to make Croatian peka
Add potatoes and vegetables into a large lidded casserole dish.
Chopped up vegetables which consist of chopped up red onion, courgette, potatoes red peppers in a cast iron pan
Place diced lamb on top of the vegetables, pour the marinade and wine over the top.
Chunks of lamb covered in in a sundried tomato oil sauce which is on top of chopped red onion, aubergine, courgette and potatoes in a cast iron pan
Add the rosemary, thyme and sage, trying to keep the herbs on top.
So you can easily remove the herb stalks once cooked.
Chunks of lamb coated in a sundried tomato oil sauce and covered with thyme, rosemary and sage which is on top of chopped red onion, aubergine, courgette and potatoes in a cast iron pan
Place lid on the casserole dish and cook for 1hr 30 minute
If you do not have a lid cover very well with kitchen foil
Cast iron dish with lid on in the oven
Take the lid off, remove any thick herb stems. Stir in 2 tbsp of olive oil.
Cook for a further 20-30 mins.
Cooked Croatian Lamb Peka in a cast iron pan in the oven
Serve with fresh homemade bread to dip into the juices.','https://www.themealdb.com/images/media/meals/pn59o51628769837.jpg',NULL);
INSERT INTO "meal" VALUES(53057,'Traditional Croatian Goulash',1,5,75,'Clean the meat from the veins if there are some and cut it into smaller pieces, 3 × 3 cm. Marinate the meat in the mustard and spices and let it sit in the refrigerator for one hour
Heat one tablespoon of pork fat or vegetable oil in a pot and fry the meat on all sides until it gets browned. Once the meat is cooked, transfer it to a plate and add another tablespoon of fat to the pot
Cut the onions very fine, peel the carrots and shred it using a grater. Cook the onions and carrots over low heat for 15 minutes. You can salt the vegetables a little to make them soften faster
Once the vegetables have browned and become slightly mushy, add the meat and bay leaves and garlic. Pour over with wine and simmer for 10-15 minutes to allow the alcohol to evaporate. Now is the right time to add 2/3 the amount of liquid
Cover the pot and cook over low heat for an hour, stirring occasionally. After the first hour, pour over the rest of the water or stock and cook for another 30-45 minutes
Allow the stew to cool slightly and serve it with a sprinkle of chopped parsley and few slices of fresh hot pepper if you like to spice it up a bit
Slice ​​some fresh bread, season the salad and simply enjoying these wonderful flavors','https://www.themealdb.com/images/media/meals/n1hcou1628770088.jpg','Soup');
INSERT INTO "meal" VALUES(53058,'Croatian Bean Stew',1,5,50,'Heat the oil in a pan. Add the chopped vegetables and sauté until tender. Take a pot, empty the beans together with the vegetables into it, put the sausages inside and cook for further 20 minutes on a low heat. Or, put it in an oven and bake it at a temperature of 180ºC/350ºF for 30 minutes. This dish is even better reheated the next day.','https://www.themealdb.com/images/media/meals/tnwy8m1628770384.jpg','Warming, Soup, Beans');
INSERT INTO "meal" VALUES(53059,'Mushroom soup with buckwheat',9,5,10,'Chop the onion and garlic, slice the mushrooms and wash the buckwheat. Heat the oil and lightly sauté the onion. Add the mushrooms and the garlic and continue to sauté. Add the salt, vegetable seasoning, buckwheat and the bay leaf and cover with water. Simmer gently and just before it is completely cooked, add pepper, sour cream mixed with flour, the chopped parsley and vinegar to taste.','https://www.themealdb.com/images/media/meals/1ngcbf1628770793.jpg','Warming, Soup');
INSERT INTO "meal" VALUES(53060,'Burek',9,5,10,'Fry the finely chopped onions and minced meat in oil. Add the salt and pepper. Grease a round baking tray and put a layer of pastry in it. Cover with a thin layer of filling and cover this with another layer of filo pastry which must be well coated in oil. Put another layer of filling and cover with pastry. When you have five or six layers, cover with filo pastry, bake at 200ºC/392ºF for half an hour and cut in quarters and serve.','https://www.themealdb.com/images/media/meals/tkxquw1628771028.jpg','Streetfood, Onthego');
INSERT INTO "meal" VALUES(53061,'Fresh sardines',9,5,10,'Wash the fish under the cold tap. Roll in the flour and deep fry in oil until crispy. Lay on kitchen towel to get rid of the excess oil and serve hot or cold with a slice of lemon.','https://www.themealdb.com/images/media/meals/nv5lf31628771380.jpg','Fresh');
INSERT INTO "meal" VALUES(53062,'Walnut Roll Gužvara',3,5,75,'Mix all the ingredients for the dough together and knead well. Cover the dough and put to rise until doubled in size which should take about 2 hours. Knock back the dough and knead lightly.

Divide the dough into two equal pieces; roll each piece into an oblong about 12 inches by 8 inches. Mix the filling ingredients together and divide between the dough, spreading over each piece. Roll up the oblongs as tightly as possible to give two 12 inch sausages. Place these side by side, touching each other, on a greased baking sheet. Cover and leave to rise for about 40 minutes. Heat oven to 200ºC (425ºF). Bake for 30-35 minutes until well risen and golden brown. Bread should sound hollow when the base is tapped.

Remove from oven and brush the hot bread top with milk. Sift with a generous covering of icing sugar.','https://www.themealdb.com/images/media/meals/u9l7k81628771647.jpg','Nutty');
INSERT INTO "meal" VALUES(53063,'Chivito uruguayo',1,28,10,'Crush the meat so that it is finite and we put it on a griddle to brown. Put the eggs, bacon and ham to fry.
Cut the bread in half, put the beef brisket, the fried eggs, the bacon, the ham, the mozzarella, the tomato and the lettuce. Cover with the other half of the bread and serve.','https://www.themealdb.com/images/media/meals/n7qnkb1630444129.jpg',NULL);
INSERT INTO "meal" VALUES(53064,'Fettuccine Alfredo',6,13,10,'Cook pasta according to package instructions in a large pot of boiling water and salt. Add heavy cream and butter to a large skillet over medium heat until the cream bubbles and the butter melts. Whisk in parmesan and add seasoning (salt and black pepper). Let the sauce thicken slightly and then add the pasta and toss until coated in sauce. Garnish with parsley, and it''s ready.','https://www.themealdb.com/images/media/meals/0jv5gx1661040802.jpg',NULL);
INSERT INTO "meal" VALUES(53065,'Sushi',8,15,10,'STEP 1
TO MAKE SUSHI ROLLS: Pat out some rice. Lay a nori sheet on the mat, shiny-side down. Dip your hands in the vinegared water, then pat handfuls of rice on top in a 1cm thick layer, leaving the furthest edge from you clear.

STEP 2
Spread over some Japanese mayonnaise. Use a spoon to spread out a thin layer of mayonnaise down the middle of the rice.

STEP 3
Add the filling. Get your child to top the mayonnaise with a line of their favourite fillings – here we’ve used tuna and cucumber.

STEP 4
Roll it up. Lift the edge of the mat over the rice, applying a little pressure to keep everything in a tight roll.

STEP 5
Stick down the sides like a stamp. When you get to the edge without any rice, brush with a little water and continue to roll into a tight roll.

STEP 6
Wrap in cling film. Remove the mat and roll tightly in cling film before a grown-up cuts the sushi into thick slices, then unravel the cling film.

STEP 7
TO MAKE PRESSED SUSHI: Layer over some smoked salmon. Line a loaf tin with cling film, then place a thin layer of smoked salmon inside on top of the cling film.

STEP 8
Cover with rice and press down. Press about 3cm of rice over the fish, fold the cling film over and press down as much as you can, using another tin if you have one.

STEP 9
Tip it out like a sandcastle. Turn block of sushi onto a chopping board. Get a grown-up to cut into fingers, then remove the cling film.

STEP 10
TO MAKE SUSHI BALLS: Choose your topping. Get a small square of cling film and place a topping, like half a prawn or a small piece of smoked salmon, on it. Use damp hands to roll walnut-sized balls of rice and place on the topping.

STEP 11
Make into tight balls. Bring the corners of the cling film together and tighten into balls by twisting it up, then unwrap and serve.','https://www.themealdb.com/images/media/meals/g046bb1663960946.jpg',NULL);
INSERT INTO "meal" VALUES(53067,'Stuffed Bell Peppers with Quinoa and Black Beans',12,18,57,'1. Preheat your oven to 375°F (190°C). Lightly grease a 9x13-inch baking dish or a similar-sized casserole dish.
2. Place the bell pepper halves in the prepared baking dish, cut side up. Bake for 15-20 minutes, or until slightly softened.
3. While the bell peppers are baking, prepare the filling. In a large skillet, heat the olive oil over medium heat. Add the chopped onion, and cook for 3-4 minutes, until softened. Add the garlic, and cook for another 1 minute, until fragrant.
4. Stir in the cooked quinoa, black beans, corn, diced tomatoes, ground cumin, chili powder, smoked paprika, salt, and pepper. Cook for 5-7 minutes, until heated through. Remove the skillet from heat, and stir in 1 cup of the shredded cheese, if using.
5. Remove the bell peppers from the oven, and carefully stuff each pepper half with the quinoa and black bean mixture. Top the stuffed peppers with the remaining 1/2 cup of shredded cheese, if using.
6. Return the stuffed peppers to the oven, and bake for another 15-20 minutes, until the cheese is melted and the peppers are tender.
7. Remove from the oven, and allow the stuffed peppers to cool for 5 minutes before serving. Garnish with fresh chopped cilantro.','https://www.themealdb.com/images/media/meals/b66myb1683207208.jpg',NULL);
INSERT INTO "meal" VALUES(53068,'Beef Mechado',1,8,10,'0.	Make the beef tenderloin marinade by combining soy sauce, vinegar, ginger, garlic, sesame oil, olive oil, sugar, salt, and ground black pepper in a large bowl. Mix well.
1.	Add the cubed beef tenderloin to the bowl with the beef tenderloin marinade. Gently toss to coat the beef. Let it stay for 1 hour.
2.	Using a metal or bamboo skewer, assemble the beef kebob by skewering the vegetables and marinated beef tenderloin.
3.	Heat-up the grill and start grilling the beef kebobs for 3 minutes per side. This will give you a medium beef that is juicy and tender on the inside. Add more time if you want your beef well done, but it will be less tender.
4.	Transfer to a serving plate. Serve with Saffron rice.
5.	Share and enjoy!
','https://www.themealdb.com/images/media/meals/cgl60b1683206581.jpg','Stew, Warming');
INSERT INTO "meal" VALUES(53069,'Bistek',1,8,10,'0.	Marinate beef in soy sauce, lemon (or calamansi), and ground black pepper for at least 1 hour. Note: marinate overnight for best result
1.	Heat the cooking oil in a pan then pan-fry half of the onions until the texture becomes soft. Set aside
2.	Drain the marinade from the beef. Set it aside. Pan-fry the beef on the same pan where the onions were fried for 1 minute per side. Remove from the pan. Set aside
3.	Add more oil if needed. Saute garlic and remaining raw onions until onion softens.
4.	Pour the remaining marinade and water. Bring to a boil.
5.	Add beef. Cover the pan and simmer until the meat is tender. Note: Add water as needed.
6.	Season with ground black pepper and salt as needed. Top with pan-fried onions.
7.	Transfer to a serving plate. Serve hot. Share and Enjoy!
','https://www.themealdb.com/images/media/meals/4pqimk1683207418.jpg',NULL);
INSERT INTO "meal" VALUES(53070,'Beef Caldereta',1,8,37,'0.	Heat oil in a cooking pot. Saute onion and garlic until onion softens
1.	Add beef. Saute until the outer part turns light brown.
2.	Add soy sauce. Pour tomato sauce and water. Let boil.
3.	Add Knorr Beef Cube. Cover the pressure cooker. Cook for 30 minutes.
4.	Pan-fry carrot and potato until it browns. Set aside.
5.	Add chili pepper, liver spread and peanut butter. Stir.
6.	Add bell peppers, fried potato and carrot. Cover the pot. Continue cooking for 5 to 7 minutes.
7.	Season with salt and ground black pepper. Serve.
','https://www.themealdb.com/images/media/meals/41cxjh1683207682.jpg',NULL);
INSERT INTO "meal" VALUES(53071,'Beef Asado',1,8,72,'0.	Combine beef, crushed peppercorn, soy sauce, vinegar, dried bay leaves, lemon, and tomato sauce. Mix well. Marinate beef for at least 30 minutes.
1.	Put the marinated beef in a cooking pot along with remaining marinade. Add water. Let boil.
2.	Add Knorr Beef Cube. Stir. Cover the pot and cook for 40 minutes in low heat.
3.	Turn the beef over. Add tomato paste. Continue cooking until beef tenderizes. Set aside.
4.	Heat oil in a pan. Fry the potato until it browns. Turn over and continue frying the opposite side. Remove from the pan and place on a clean plate. Do the same with the carrots.
5.	Save 3 tablespoons of cooking oil from the pan where the potato was fried. Saute onion and garlic until onion softens.
6.	Pour-in the sauce from the beef stew. Let boil. Add the beef. Cook for 2 minutes.
7.	Add butter and let it melt. Continue cooking until the sauce reduces to half.','https://www.themealdb.com/images/media/meals/pkopc31683207947.jpg',NULL);
INSERT INTO "meal" VALUES(53072,'Crispy Eggplant',12,8,63,'Slice eggplant into 1 cm (0.4-inch) slices. Place them in a bowl and sprinkle them with salt. allow them to sit for 30 minutes to render some of their liquid and bitterness.
2. After 30 minutes wash eggplant slices from salt and pat dry with a kitchen towel.
3. In a large bowl/plate place breadcrumbs and sesame seeds. In another bowl beat 2 eggs with pinch salt and pepper.
4. Heal oil in a large skillet over high heat.
5. Dip eggplant slices in egg, then in crumbs, and place in hot oil. Fry 2 to 3 minutes on each side, or until golden brown. Drain on a paper towel. 
','https://www.themealdb.com/images/media/meals/c7lzrl1683208757.jpg',NULL);
INSERT INTO "meal" VALUES(53073,'Eggplant Adobo',12,8,58,'1.	Slice 1 lb. small Japanese or Italian eggplant (about 3) into quarters lengthwise, then cut crosswise into 2"-wide pieces. Place in a medium bowl. Add 1 Tbsp. sugar, 1 tsp. Diamond Crystal or ½ tsp. Morton kosher salt, and ½ tsp. freshly ground black pepper. Toss to evenly coat eggplant and let sit at room temperature at least 20 minutes and up to 2 hours.
2.	Peel and thinly slice 8 garlic cloves. Add 3 Tbsp. vegetable oil and half of garlic to a medium Dutch oven or other heavy pot. Cook over medium-high heat, stirring constantly with a wooden spoon, until light golden and crisp, about 5 minutes. Using a slotted spoon, transfer garlic chips to a plate; season lightly with salt.
3. Place 4 oz. ground pork in same pot and break up into small pieces with wooden spoon. Season with ¼ tsp. Diamond Crystal or Morton kosher salt and cook, undisturbed, until deeply browned underneath, about 5 minutes. Using a slotted spoon, transfer to another plate, leaving fat behind in the pot.
4. Place eggplant on a clean kitchen towel and blot away any moisture the salt has drawn out.
5. Working in batches and adding more oil if needed, cook eggplant in the same pot until lightly browned, about 3 minutes per side. Transfer to a plate with pork.
6. Pour 1½ cups of water into the pot and scrape up browned bits from the bottom with a wooden spoon. Add remaining garlic, 3 Tbsp. coconut vinegar or unseasoned rice vinegar, 2 Tbsp. soy sauce, 2 bay leaves, 1 tsp. freshly ground black pepper, and remaining 1 Tbsp. sugar. Bring to a simmer, then return pork and eggplant to pot. Reduce heat to medium-low, partially cover, and simmer until eggplant is tender and silky and sauce is reduced by half, 20–25 minutes. Taste and season with more salt and pepper and add a little more sugar if needed.
7. Top with garlic chips and serve with cooked white rice.
','https://www.themealdb.com/images/media/meals/y7h0lq1683208991.jpg',NULL);
INSERT INTO "meal" VALUES(53074,'Grilled eggplant with coconut milk',12,8,10,'.  Prepare the eggplants for grilling by pricking them all over with a fork.  This is so it won’t burst during the grilling process as the natural water in it heats up.
2.  Grill the eggplants, turning them over frequently to ensure even cooking.  Grill until the skins are dark brown, even black and the eggplant is soft when you touch it.
3.  Soak the grilled eggplant in a bowl of water to cool it down.  Peel the skin off the eggplant.  Place the whole eggplants in a shallow dish (my mom actually cuts the eggplant into small, bite-sized pieces).
 4.  In a small mixing bowl, mix together the coconut milk or cream, lemon powder, salt and hot pepper.  Mix until the lemon powder and salt dissolve.  Taste, then adjust the amount of lemon powder, salt and hot pepper to your liking.  Pour the mixture over the eggplant.  Sprinkle the green onions over the eggplant and coconut milk.  Stir gently to combine. 
','https://www.themealdb.com/images/media/meals/bopa2i1683209167.jpg',NULL);
INSERT INTO "meal" VALUES(53075,'Tortang Talong',12,8,10,'0.	Grill the eggplant until the color of skin turns almost black
1.	Let the eggplant cool for a while then peel off the skin. Set aside.
2.	Crack the eggs and place in a bowl
3.	Add salt and beat
4.	Place the eggplant on a flat surface and flatten using a fork.
5.	Dip the flattened eggplant in the beaten egg mixture
6.	Heat the pan and pour the cooking oil
7.	Fry the eggplant (that was dipped in the beaten mixture). Make sure that both sides are cooked. Frying time will take you about 3 to 4 minutes per side on medium heat. 
','https://www.themealdb.com/images/media/meals/va668f1683209318.jpg',NULL);
INSERT INTO "meal" VALUES(53076,'Bread omelette',13,11,10,'Make and enjoy','https://www.themealdb.com/images/media/meals/hqaejl1695738653.jpg',NULL);
INSERT INTO "meal" VALUES(53077,'Cabbage Soup (Shchi)',12,22,33,'Add the butter to a large Dutch oven or other heavy-duty pot over medium heat. When the butter has melted, add the onion and sauté until translucent.
Add the cabbage, carrot, and celery. Sauté until the vegetables begin to soften, stirring frequently, about 3 minutes.
Add the bay leaf and vegetable stock and bring to a boil over high heat. Reduce the heat to low and simmer, covered, until the vegetables are crisp-tender, about 15 minutes.
Add the potatoes and bring it back to a boil over high heat. Reduce the heat to low and simmer, covered, until the potatoes are tender, about 10 minutes.
Add the tomatoes (or undrained canned tomatoes) and bring the soup back to a boil over high heat. Reduce the heat to low and simmer, uncovered, for 5 minutes. Season to taste with salt and pepper.
emove and discard the bay leaf from the pot.
Serve topped with fresh sour cream and fresh dill.','https://www.themealdb.com/images/media/meals/60oc3k1699009846.jpg','soup');
INSERT INTO "meal" VALUES(53078,'Beetroot Soup (Borscht)',12,27,20,'Chop the beetroot, add water and stock cube and cook for 15mins. Add the other ingredients and boil until soft. Finally add the beans and cook for 5mins. Serve in the soup pot.','https://www.themealdb.com/images/media/meals/zadvgb1699012544.jpg','soup');
INSERT INTO "meal" VALUES(53079,'Fish Soup (Ukha)',8,22,10,'In a medium pot, heat the olive oil over medium-high heat. Add the onions and cook, stirring occasionally until the onions start to caramelize. Add the carrots and cook until the carrots start to soften, about 4 more minutes.
Add the stock, water, potatoes, bay leaves, and black peppercorns. Season with salt and bring to a boil. Reduce heat, cover and cook for 10 minutes. Add the millet and cook for 15 more minutes until millet and potatoes are cooked.
Gently add the fish cubes. Stir and bring the soup to a simmer. The fish will cook through very fast, so make sure to not overcook them. They are done when the flesh is opaque and flakes easily.
Garnish the soup with chopped fresh dill or parsley before serving.','https://www.themealdb.com/images/media/meals/7n8su21699013057.jpg','soup');
INSERT INTO "meal" VALUES(53080,'Blini Pancakes',9,22,21,'In a large bowl, whisk together 1/2 cup buckwheat flour, 2/3 cup all-purpose flour, 1/2 teaspoon salt, and 1 teaspoon yeast.

Make a well in the center and pour in 1 cup warm milk, whisking until the batter is smooth.

Cover the bowl and let the batter rise until doubled, about 1 hour.

Enrich and Rest the Batter
Stir 2 tablespoons melted butter and 1 egg yolk into the batter.

In a separate bowl, whisk 1 egg white until stiff, but not dry.

Fold the whisked egg white into the batter.

Cover the bowl and let the batter stand 20 minutes.

Pan-Fry the Blini
Heat butter in a large nonstick skillet over medium heat.

Drop quarter-sized dollops of batter into the pan, being careful not to overcrowd the pan. Cook for about 1 minute or until bubbles form.

Turn and cook for about 30 additional seconds.

Remove the finished blini onto a plate and cover them with a clean kitchen towel to keep warm. Add more butter to the pan and repeat the frying process with the remaining batter.','https://www.themealdb.com/images/media/meals/0206h11699013358.jpg','pancake');
INSERT INTO "meal" VALUES(53081,'Potato Salad (Olivier Salad)',12,22,15,'Cut the potatoes and carrots into small uniform cubes.
Place them in a large pot and fill with water.
Add salt and vinegar. Bring it to a boil over medium high heat, and then reduce the heat to medium and continue to cook until the potatoes are cooked through, about 15 minutes. Drain the potatoes and let it cool to room temperature.
Meanwhile, cut the sausage and pickles into small cubes, and chop the green onions.
Cut the hard-boiled eggs into small cubes as well.
If using fresh dill, chop them as well.
In a large bowl, combine potatoes, carrots, sausage, pickles, peas and green onions.
Add mayo and dill and mix until well combined.
Salt and pepper to taste. Cover with a plastic wrap and refrigerate for at least 1 hour before serving.','https://www.themealdb.com/images/media/meals/ebvuir1699013665.jpg','salad');
INSERT INTO "meal" VALUES(53082,'Strawberries Romanoff',3,22,10,'In a medium bowl, combine hulled and quartered strawberries, 4 Tbsp sugar and 4 Tbsp liqueur, stir to combine then cover and refrigerate at least 1 hour and up to 2 hours, stirring once or twice.

Two photos of cut strawberries in a bowl with one having sugar being added to the bowl Two photos of cut up strawberries for Strawberry Romanoff 

Just before serving, in a large mixing bowl, combine 1 cup cold heavy cream and 1/4 cup powdered sugar, and beat with an electric mixer until stiff peaks form. Using a spatula, fold in 1/4 cup sour cream just until well blended.

To serve, stir strawberries then divide between 6 serving glasses or bowls. You can spoon a little syrup over the berries if you like. You can also use this syrup to soak a cake. Spoon cream over strawberries, dividing evenly. You can also use an ice cream scoop with trigger release for a nice rounded puff of cream. Serve right away or chill and enjoy within 2 hours of assembly.

','https://www.themealdb.com/images/media/meals/oe8rg51699014028.jpg','fruity');
INSERT INTO "meal" VALUES(53083,'Lamb Pilaf (Plov)',4,22,25,'Place the raisins and prunes into a small bowl and pour over enough water to cover. Add lemon juice and let soak for at least 1 hour. Drain. Roughly chop the prunes.

Meanwhile, heat the butter in a large pan, add the onion, and cook for 5 minutes. Add cubed lamb, ground lamb, and crushed garlic cloves. Fry for 5 minutes, stirring constantly until browned.

Pour 2/3 cup (150 milliliters) of stock into the pan. Bring to a boil, then lower the heat, cover, and simmer for 1 hour, or until the lamb is tender.

Add the remaining stock and bring to a boil. Add rinsed long-grain white rice and a large pinch of saffron. Stir, then cover, and simmer for 15 minutes, or until the rice is tender.

Add the drained raisins, drained chopped prunes, and salt and pepper to taste. Heat through for a few minutes, then turn out onto a warmed serving dish and garnish with sprigs of flat-leaf parsley.','https://www.themealdb.com/images/media/meals/kos9av1699014767.jpg','rice');
CREATE TABLE meal_allergen (
	meal_id INTEGER NOT NULL, 
	allergen_id INTEGER NOT NULL, 
	PRIMARY KEY (meal_id, allergen_id), 
	FOREIGN KEY(meal_id) REFERENCES meal (id), 
	FOREIGN KEY(allergen_id) REFERENCES allergen (id)
);
CREATE TABLE meal_ingredient (
	meal_id INTEGER NOT NULL, 
	ingredient_id INTEGER NOT NULL, 
	measure VARCHAR(50), 
	PRIMARY KEY (meal_id, ingredient_id), 
	FOREIGN KEY(meal_id) REFERENCES meal (id), 
	FOREIGN KEY(ingredient_id) REFERENCES ingredient (id)
);
INSERT INTO "meal_ingredient" VALUES(52768,576,'175g/6oz');
INSERT INTO "meal_ingredient" VALUES(52768,577,'75g/3oz');
INSERT INTO "meal_ingredient" VALUES(52768,578,'200g/7oz');
INSERT INTO "meal_ingredient" VALUES(52768,579,'75g/3oz');
INSERT INTO "meal_ingredient" VALUES(52768,580,'75g/3oz');
INSERT INTO "meal_ingredient" VALUES(52768,581,'2');
INSERT INTO "meal_ingredient" VALUES(52768,582,'75g/3oz');
INSERT INTO "meal_ingredient" VALUES(52768,583,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52768,584,'50g/1¾oz');
INSERT INTO "meal_ingredient" VALUES(52893,233,'120g');
INSERT INTO "meal_ingredient" VALUES(52893,45,'60g');
INSERT INTO "meal_ingredient" VALUES(52893,36,'60g');
INSERT INTO "meal_ingredient" VALUES(52893,435,'300g');
INSERT INTO "meal_ingredient" VALUES(52893,100,'30g');
INSERT INTO "meal_ingredient" VALUES(52893,585,'120g');
INSERT INTO "meal_ingredient" VALUES(52893,75,'¼ teaspoon');
INSERT INTO "meal_ingredient" VALUES(52893,167,'to serve');
INSERT INTO "meal_ingredient" VALUES(53049,197,'200ml');
INSERT INTO "meal_ingredient" VALUES(53049,209,'60ml');
INSERT INTO "meal_ingredient" VALUES(53049,112,'2');
INSERT INTO "meal_ingredient" VALUES(53049,125,'1600g');
INSERT INTO "meal_ingredient" VALUES(53049,11,'3 tsp');
INSERT INTO "meal_ingredient" VALUES(53049,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53049,462,'25g');
INSERT INTO "meal_ingredient" VALUES(53049,282,'45g');
INSERT INTO "meal_ingredient" VALUES(53049,223,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53050,61,'6');
INSERT INTO "meal_ingredient" VALUES(53050,50,'16');
INSERT INTO "meal_ingredient" VALUES(53050,142,'1 1/2 ');
INSERT INTO "meal_ingredient" VALUES(53050,138,'6');
INSERT INTO "meal_ingredient" VALUES(53050,46,'8');
INSERT INTO "meal_ingredient" VALUES(53050,296,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53050,94,'1 1/2 ');
INSERT INTO "meal_ingredient" VALUES(53050,85,'1 1/2 ');
INSERT INTO "meal_ingredient" VALUES(53050,366,'1 1/2 ');
INSERT INTO "meal_ingredient" VALUES(53050,286,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53050,81,'1 can ');
INSERT INTO "meal_ingredient" VALUES(53050,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53050,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52767,586,'175g/6oz');
INSERT INTO "meal_ingredient" VALUES(52767,587,'75g/2½oz');
INSERT INTO "meal_ingredient" VALUES(52767,588,'2-3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52767,589,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52767,577,'125g/4½oz');
INSERT INTO "meal_ingredient" VALUES(52767,580,'125g/4½oz');
INSERT INTO "meal_ingredient" VALUES(52767,582,'125g/4½oz');
INSERT INTO "meal_ingredient" VALUES(52767,590,'1');
INSERT INTO "meal_ingredient" VALUES(52767,583,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52767,584,'50g/1¾oz');
INSERT INTO "meal_ingredient" VALUES(52792,577,'25g/1oz');
INSERT INTO "meal_ingredient" VALUES(52792,591,'8 thin slices');
INSERT INTO "meal_ingredient" VALUES(52792,592,'50g/2oz');
INSERT INTO "meal_ingredient" VALUES(52792,593,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52792,594,'350ml/12fl');
INSERT INTO "meal_ingredient" VALUES(52792,595,'50ml/2fl oz');
INSERT INTO "meal_ingredient" VALUES(52792,596,'2 free-range');
INSERT INTO "meal_ingredient" VALUES(52792,597,'25g/1oz');
INSERT INTO "meal_ingredient" VALUES(52792,598,'grated, to taste');
INSERT INTO "meal_ingredient" VALUES(52803,599,'400g');
INSERT INTO "meal_ingredient" VALUES(52803,114,'1-2tbsp');
INSERT INTO "meal_ingredient" VALUES(52803,210,'Dash');
INSERT INTO "meal_ingredient" VALUES(52803,19,'750g piece');
INSERT INTO "meal_ingredient" VALUES(52803,600,'6-8 slices');
INSERT INTO "meal_ingredient" VALUES(52803,238,'500g');
INSERT INTO "meal_ingredient" VALUES(52803,125,'Dusting');
INSERT INTO "meal_ingredient" VALUES(52803,111,'2 Beaten ');
INSERT INTO "meal_ingredient" VALUES(52807,8,'1 large');
INSERT INTO "meal_ingredient" VALUES(52807,340,'½ cup ');
INSERT INTO "meal_ingredient" VALUES(52807,293,'1 cup');
INSERT INTO "meal_ingredient" VALUES(52807,137,'6 cloves');
INSERT INTO "meal_ingredient" VALUES(52807,152,'1');
INSERT INTO "meal_ingredient" VALUES(52807,243,'¼ teaspoon');
INSERT INTO "meal_ingredient" VALUES(52807,209,'1.5 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52807,86,'1 tablespoon chopped');
INSERT INTO "meal_ingredient" VALUES(52807,601,'as required');
INSERT INTO "meal_ingredient" VALUES(52812,18,'4-5 pound');
INSERT INTO "meal_ingredient" VALUES(52812,260,'Dash');
INSERT INTO "meal_ingredient" VALUES(52812,340,'3');
INSERT INTO "meal_ingredient" VALUES(52812,137,'5 cloves');
INSERT INTO "meal_ingredient" VALUES(52812,290,'1 Sprig');
INSERT INTO "meal_ingredient" VALUES(52812,369,'1 sprig ');
INSERT INTO "meal_ingredient" VALUES(52812,17,'4');
INSERT INTO "meal_ingredient" VALUES(52812,602,'2 cups');
INSERT INTO "meal_ingredient" VALUES(52812,42,'3 Large');
INSERT INTO "meal_ingredient" VALUES(52812,205,'1 Tbsp');
INSERT INTO "meal_ingredient" VALUES(52812,236,'4 Mashed');
INSERT INTO "meal_ingredient" VALUES(52824,3,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52824,32,'12 florets');
INSERT INTO "meal_ingredient" VALUES(52824,236,'1 Packet');
INSERT INTO "meal_ingredient" VALUES(52824,42,'1 Packet');
INSERT INTO "meal_ingredient" VALUES(52824,586,'140g');
INSERT INTO "meal_ingredient" VALUES(52824,112,'4');
INSERT INTO "meal_ingredient" VALUES(52824,594,'200ml');
INSERT INTO "meal_ingredient" VALUES(52824,603,'drizzle (for cooking)');
INSERT INTO "meal_ingredient" VALUES(52826,3,'1kg');
INSERT INTO "meal_ingredient" VALUES(52826,212,'3');
INSERT INTO "meal_ingredient" VALUES(52826,137,'4 cloves');
INSERT INTO "meal_ingredient" VALUES(52826,604,'Dash');
INSERT INTO "meal_ingredient" VALUES(52826,72,'300g');
INSERT INTO "meal_ingredient" VALUES(52826,94,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52826,605,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52826,77,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52826,606,'1 large');
INSERT INTO "meal_ingredient" VALUES(52826,17,'3');
INSERT INTO "meal_ingredient" VALUES(52826,215,'2 tsp dried');
INSERT INTO "meal_ingredient" VALUES(52826,516,'2 ancho');
INSERT INTO "meal_ingredient" VALUES(52826,12,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52826,234,'2 x 400g');
INSERT INTO "meal_ingredient" VALUES(52826,291,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52826,97,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52826,26,'2 x 400g tins');
INSERT INTO "meal_ingredient" VALUES(52834,210,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52834,212,'1');
INSERT INTO "meal_ingredient" VALUES(52834,137,'1 clove');
INSERT INTO "meal_ingredient" VALUES(52834,36,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52834,204,'250g');
INSERT INTO "meal_ingredient" VALUES(52834,19,'500g');
INSERT INTO "meal_ingredient" VALUES(52834,233,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(52834,91,'150g');
INSERT INTO "meal_ingredient" VALUES(52834,114,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52834,21,'100ml');
INSERT INTO "meal_ingredient" VALUES(52834,222,'Topping');
INSERT INTO "meal_ingredient" VALUES(52842,353,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52842,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52842,48,'1');
INSERT INTO "meal_ingredient" VALUES(52842,182,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52842,236,'1 medium');
INSERT INTO "meal_ingredient" VALUES(52842,36,'1 knob');
INSERT INTO "meal_ingredient" VALUES(52842,304,'1 litre hot');
INSERT INTO "meal_ingredient" VALUES(52842,32,'1 Head chopped');
INSERT INTO "meal_ingredient" VALUES(52842,354,'140g');
INSERT INTO "meal_ingredient" VALUES(52848,262,'8 large');
INSERT INTO "meal_ingredient" VALUES(52848,372,'1 Jar');
INSERT INTO "meal_ingredient" VALUES(52848,370,'1200g');
INSERT INTO "meal_ingredient" VALUES(52848,25,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52848,114,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52855,378,'1 large');
INSERT INTO "meal_ingredient" VALUES(52855,112,'2 medium');
INSERT INTO "meal_ingredient" VALUES(52855,11,'pinch');
INSERT INTO "meal_ingredient" VALUES(52855,300,'spinkling');
INSERT INTO "meal_ingredient" VALUES(52855,209,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52855,382,'25g');
INSERT INTO "meal_ingredient" VALUES(52855,379,'125g');
INSERT INTO "meal_ingredient" VALUES(52873,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52873,36,'25g');
INSERT INTO "meal_ingredient" VALUES(52873,3,'750g');
INSERT INTO "meal_ingredient" VALUES(52873,233,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52873,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52873,212,'175g');
INSERT INTO "meal_ingredient" VALUES(52873,48,'150g');
INSERT INTO "meal_ingredient" VALUES(52873,42,'150g');
INSERT INTO "meal_ingredient" VALUES(52873,182,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52873,418,'200g');
INSERT INTO "meal_ingredient" VALUES(52873,247,'150ml');
INSERT INTO "meal_ingredient" VALUES(52873,21,'500g');
INSERT INTO "meal_ingredient" VALUES(52873,16,'2');
INSERT INTO "meal_ingredient" VALUES(52873,290,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52873,222,'3 tblsp chopped');
INSERT INTO "meal_ingredient" VALUES(52873,11,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52873,417,'60g');
INSERT INTO "meal_ingredient" VALUES(52873,309,'Splash');
INSERT INTO "meal_ingredient" VALUES(52874,3,'1kg');
INSERT INTO "meal_ingredient" VALUES(52874,233,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52874,353,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52874,247,'200ml');
INSERT INTO "meal_ingredient" VALUES(52874,21,'400ml');
INSERT INTO "meal_ingredient" VALUES(52874,340,'1 finely sliced');
INSERT INTO "meal_ingredient" VALUES(52874,42,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52874,290,'3 sprigs');
INSERT INTO "meal_ingredient" VALUES(52874,205,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52874,111,'2 free-range');
INSERT INTO "meal_ingredient" VALUES(52874,238,'400g');
INSERT INTO "meal_ingredient" VALUES(52874,151,'300g');
INSERT INTO "meal_ingredient" VALUES(52874,36,'25g');
INSERT INTO "meal_ingredient" VALUES(52874,260,'pinch');
INSERT INTO "meal_ingredient" VALUES(52874,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52878,3,'900g');
INSERT INTO "meal_ingredient" VALUES(52878,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52878,267,'3');
INSERT INTO "meal_ingredient" VALUES(52878,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52878,10,'125g');
INSERT INTO "meal_ingredient" VALUES(52878,290,'1 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(52878,16,'2');
INSERT INTO "meal_ingredient" VALUES(52878,421,'330ml');
INSERT INTO "meal_ingredient" VALUES(52878,21,'400ml');
INSERT INTO "meal_ingredient" VALUES(52878,330,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52878,420,'8');
INSERT INTO "meal_ingredient" VALUES(52878,233,'400g');
INSERT INTO "meal_ingredient" VALUES(52878,260,'pinch');
INSERT INTO "meal_ingredient" VALUES(52878,36,'250g');
INSERT INTO "meal_ingredient" VALUES(52878,112,'To Glaze');
INSERT INTO "meal_ingredient" VALUES(52891,434,'50g');
INSERT INTO "meal_ingredient" VALUES(52891,36,'125g');
INSERT INTO "meal_ingredient" VALUES(52891,45,'150g');
INSERT INTO "meal_ingredient" VALUES(52891,183,'Grated');
INSERT INTO "meal_ingredient" VALUES(52891,233,'150g');
INSERT INTO "meal_ingredient" VALUES(52891,11,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52891,585,'600g');
INSERT INTO "meal_ingredient" VALUES(52891,282,'75g');
INSERT INTO "meal_ingredient" VALUES(52891,184,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52891,105,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52891,319,'100ml');
INSERT INTO "meal_ingredient" VALUES(52891,200,'Garnish with');
INSERT INTO "meal_ingredient" VALUES(52894,36,'175g');
INSERT INTO "meal_ingredient" VALUES(52894,45,'175g');
INSERT INTO "meal_ingredient" VALUES(52894,264,'140g');
INSERT INTO "meal_ingredient" VALUES(52894,442,'50g');
INSERT INTO "meal_ingredient" VALUES(52894,11,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52894,112,'3 Medium');
INSERT INTO "meal_ingredient" VALUES(52894,300,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52894,519,'¼ teaspoon');
INSERT INTO "meal_ingredient" VALUES(52894,437,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52894,357,'200g');
INSERT INTO "meal_ingredient" VALUES(52894,441,'1kg');
INSERT INTO "meal_ingredient" VALUES(52894,323,'Dusting');
INSERT INTO "meal_ingredient" VALUES(52904,364,'3 tsp');
INSERT INTO "meal_ingredient" VALUES(52904,455,'600g');
INSERT INTO "meal_ingredient" VALUES(52904,10,'100g ');
INSERT INTO "meal_ingredient" VALUES(52904,50,'350g');
INSERT INTO "meal_ingredient" VALUES(52904,56,'250g');
INSERT INTO "meal_ingredient" VALUES(52904,138,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52904,456,'1');
INSERT INTO "meal_ingredient" VALUES(52904,292,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52904,247,'750 ml ');
INSERT INTO "meal_ingredient" VALUES(52904,47,'600g');
INSERT INTO "meal_ingredient" VALUES(52904,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52904,290,'sprigs of fresh');
INSERT INTO "meal_ingredient" VALUES(52904,369,'sprigs of fresh');
INSERT INTO "meal_ingredient" VALUES(52904,16,'2');
INSERT INTO "meal_ingredient" VALUES(52904,41,'4');
INSERT INTO "meal_ingredient" VALUES(52913,233,'375g');
INSERT INTO "meal_ingredient" VALUES(52913,45,'50g');
INSERT INTO "meal_ingredient" VALUES(52913,446,'7g');
INSERT INTO "meal_ingredient" VALUES(52913,197,'75g');
INSERT INTO "meal_ingredient" VALUES(52913,112,'3 Large');
INSERT INTO "meal_ingredient" VALUES(52913,36,'180g');
INSERT INTO "meal_ingredient" VALUES(52913,463,'250g');
INSERT INTO "meal_ingredient" VALUES(52913,461,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52914,212,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52914,290,'sprigs of fresh');
INSERT INTO "meal_ingredient" VALUES(52914,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52914,236,'1.5kg');
INSERT INTO "meal_ingredient" VALUES(52914,304,'425g');
INSERT INTO "meal_ingredient" VALUES(52928,309,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52928,446,'2 parts ');
INSERT INTO "meal_ingredient" VALUES(52928,282,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52928,197,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52928,36,'6 tblsp');
INSERT INTO "meal_ingredient" VALUES(52928,112,'2');
INSERT INTO "meal_ingredient" VALUES(52928,260,'1 ½ tsp');
INSERT INTO "meal_ingredient" VALUES(52928,125,'2-1/2 cups');
INSERT INTO "meal_ingredient" VALUES(52928,209,'for frying');
INSERT INTO "meal_ingredient" VALUES(52928,183,'garnish');
INSERT INTO "meal_ingredient" VALUES(52928,75,'garnish');
INSERT INTO "meal_ingredient" VALUES(52940,1,'1 whole');
INSERT INTO "meal_ingredient" VALUES(52940,341,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52940,212,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52940,138,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52940,245,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52940,42,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52940,188,'1');
INSERT INTO "meal_ingredient" VALUES(52940,290,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52940,518,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52940,274,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52940,89,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52940,81,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(52940,303,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52952,3,'1/2 lb');
INSERT INTO "meal_ingredient" VALUES(52952,260,'pinch');
INSERT INTO "meal_ingredient" VALUES(52952,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52952,414,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52952,454,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(52952,499,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52952,209,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(52952,505,'1/4 lb');
INSERT INTO "meal_ingredient" VALUES(52952,340,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52952,198,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52952,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52952,504,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52952,204,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52952,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52952,216,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52952,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52952,274,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52959,366,'2 medium');
INSERT INTO "meal_ingredient" VALUES(52959,222,'2 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(52959,183,'Juice of 1');
INSERT INTO "meal_ingredient" VALUES(52959,55,'175g');
INSERT INTO "meal_ingredient" VALUES(52959,210,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52959,2,'350g');
INSERT INTO "meal_ingredient" VALUES(52959,339,'to serve');
INSERT INTO "meal_ingredient" VALUES(52961,375,'500g');
INSERT INTO "meal_ingredient" VALUES(52961,112,'4 large');
INSERT INTO "meal_ingredient" VALUES(52961,125,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52961,282,'250g');
INSERT INTO "meal_ingredient" VALUES(52961,75,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52961,186,'Grated Zest of 2');
INSERT INTO "meal_ingredient" VALUES(52961,507,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(52961,323,'sprinking');
INSERT INTO "meal_ingredient" VALUES(52965,236,'3 Medium');
INSERT INTO "meal_ingredient" VALUES(52965,210,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52965,10,'2 strips');
INSERT INTO "meal_ingredient" VALUES(52965,138,'Minced');
INSERT INTO "meal_ingredient" VALUES(52965,383,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52965,222,'Garnish');
INSERT INTO "meal_ingredient" VALUES(52965,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52965,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52965,518,'To taste');
INSERT INTO "meal_ingredient" VALUES(52979,36,'100g ');
INSERT INTO "meal_ingredient" VALUES(52979,125,'150g');
INSERT INTO "meal_ingredient" VALUES(52979,21,'700ml');
INSERT INTO "meal_ingredient" VALUES(52979,340,'30g');
INSERT INTO "meal_ingredient" VALUES(52979,222,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52979,3,'400g');
INSERT INTO "meal_ingredient" VALUES(52979,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52979,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52979,208,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52979,112,'2 Beaten ');
INSERT INTO "meal_ingredient" VALUES(52979,31,'50g');
INSERT INTO "meal_ingredient" VALUES(52995,236,'2');
INSERT INTO "meal_ingredient" VALUES(52995,244,'1');
INSERT INTO "meal_ingredient" VALUES(52995,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(52995,188,'1');
INSERT INTO "meal_ingredient" VALUES(52995,30,'2');
INSERT INTO "meal_ingredient" VALUES(52995,4,'1 lb');
INSERT INTO "meal_ingredient" VALUES(52995,362,' ');
INSERT INTO "meal_ingredient" VALUES(52995,166,' ');
INSERT INTO "meal_ingredient" VALUES(52995,291,' ');
INSERT INTO "meal_ingredient" VALUES(52995,282,' ');
INSERT INTO "meal_ingredient" VALUES(52995,303,' ');
INSERT INTO "meal_ingredient" VALUES(52995,260,' ');
INSERT INTO "meal_ingredient" VALUES(52995,229,' ');
INSERT INTO "meal_ingredient" VALUES(52997,249,'White');
INSERT INTO "meal_ingredient" VALUES(52997,340,'1');
INSERT INTO "meal_ingredient" VALUES(52997,188,'1');
INSERT INTO "meal_ingredient" VALUES(52997,138,'3');
INSERT INTO "meal_ingredient" VALUES(52997,93,'1');
INSERT INTO "meal_ingredient" VALUES(52997,42,'3 oz ');
INSERT INTO "meal_ingredient" VALUES(52997,483,'1 lb');
INSERT INTO "meal_ingredient" VALUES(52997,274,'2 oz ');
INSERT INTO "meal_ingredient" VALUES(53013,360,'400g');
INSERT INTO "meal_ingredient" VALUES(53013,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53013,551,'2');
INSERT INTO "meal_ingredient" VALUES(53013,340,'Chopped');
INSERT INTO "meal_ingredient" VALUES(53013,553,'1/4 ');
INSERT INTO "meal_ingredient" VALUES(53013,53,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(53013,550,'2 large');
INSERT INTO "meal_ingredient" VALUES(53013,544,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53013,512,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(53013,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53013,205,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(53013,211,'1 1/2 tsp ');
INSERT INTO "meal_ingredient" VALUES(53013,139,'1 1/2 tsp ');
INSERT INTO "meal_ingredient" VALUES(53013,217,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53018,10,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(53018,561,'1 lb');
INSERT INTO "meal_ingredient" VALUES(53018,4,'1 lb');
INSERT INTO "meal_ingredient" VALUES(53018,125,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53018,137,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(53018,340,'1 Diced');
INSERT INTO "meal_ingredient" VALUES(53018,204,'1 1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53018,411,'4 cups ');
INSERT INTO "meal_ingredient" VALUES(53018,563,'1 Jar');
INSERT INTO "meal_ingredient" VALUES(53018,247,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53018,16,'1');
INSERT INTO "meal_ingredient" VALUES(53018,13,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53018,193,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53018,217,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53018,564,'1/8 teaspoon');
INSERT INTO "meal_ingredient" VALUES(53018,166,'1 dash');
INSERT INTO "meal_ingredient" VALUES(53018,21,'5 Cups');
INSERT INTO "meal_ingredient" VALUES(53018,292,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53018,101,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53018,318,'1 dash');
INSERT INTO "meal_ingredient" VALUES(53036,236,'4 large');
INSERT INTO "meal_ingredient" VALUES(53036,278,'1  bunch');
INSERT INTO "meal_ingredient" VALUES(53036,233,'100g ');
INSERT INTO "meal_ingredient" VALUES(53036,110,'1');
INSERT INTO "meal_ingredient" VALUES(53036,197,'150ml');
INSERT INTO "meal_ingredient" VALUES(53036,22,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53036,36,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53036,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53036,55,'6');
INSERT INTO "meal_ingredient" VALUES(53036,10,'12');
INSERT INTO "meal_ingredient" VALUES(53036,454,'6');
INSERT INTO "meal_ingredient" VALUES(53053,3,'1lb');
INSERT INTO "meal_ingredient" VALUES(53053,303,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(53053,76,'1');
INSERT INTO "meal_ingredient" VALUES(53053,77,'3');
INSERT INTO "meal_ingredient" VALUES(53053,468,'3');
INSERT INTO "meal_ingredient" VALUES(53053,41,'3');
INSERT INTO "meal_ingredient" VALUES(53053,80,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53053,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53053,286,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53053,188,'6');
INSERT INTO "meal_ingredient" VALUES(53053,282,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53053,50,'5');
INSERT INTO "meal_ingredient" VALUES(53060,525,'1 Packet');
INSERT INTO "meal_ingredient" VALUES(53060,360,'150g');
INSERT INTO "meal_ingredient" VALUES(53060,340,'150g');
INSERT INTO "meal_ingredient" VALUES(53060,209,'40g');
INSERT INTO "meal_ingredient" VALUES(53060,260,'Dash');
INSERT INTO "meal_ingredient" VALUES(53060,229,'Dash');
INSERT INTO "meal_ingredient" VALUES(53068,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(53068,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53068,3,'2 Lbs');
INSERT INTO "meal_ingredient" VALUES(53068,292,'8 ounces');
INSERT INTO "meal_ingredient" VALUES(53068,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53068,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53068,183,'1 Slice');
INSERT INTO "meal_ingredient" VALUES(53068,236,'1 large');
INSERT INTO "meal_ingredient" VALUES(53068,274,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53068,24,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53068,17,'2');
INSERT INTO "meal_ingredient" VALUES(53068,260,'To taste');
INSERT INTO "meal_ingredient" VALUES(53069,3,'1 lb');
INSERT INTO "meal_ingredient" VALUES(53069,274,'5 tablespoons');
INSERT INTO "meal_ingredient" VALUES(53069,183,'1');
INSERT INTO "meal_ingredient" VALUES(53069,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(53069,340,'3 parts ');
INSERT INTO "meal_ingredient" VALUES(53069,210,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53069,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53069,260,'1 pinch');
INSERT INTO "meal_ingredient" VALUES(53070,3,'2kg cut cubes');
INSERT INTO "meal_ingredient" VALUES(53070,21,'1');
INSERT INTO "meal_ingredient" VALUES(53070,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53070,309,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53070,396,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53070,245,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53070,236,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53070,42,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53070,292,'8 ounces');
INSERT INTO "meal_ingredient" VALUES(53070,223,'3  tablespoons');
INSERT INTO "meal_ingredient" VALUES(53070,66,'5');
INSERT INTO "meal_ingredient" VALUES(53070,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53070,137,'5 cloves');
INSERT INTO "meal_ingredient" VALUES(53070,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53071,3,'1.5kg');
INSERT INTO "meal_ingredient" VALUES(53071,541,'1');
INSERT INTO "meal_ingredient" VALUES(53071,292,'8 ounces');
INSERT INTO "meal_ingredient" VALUES(53071,309,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(53071,274,'6 tablespoons');
INSERT INTO "meal_ingredient" VALUES(53071,512,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53071,229,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53071,16,'4');
INSERT INTO "meal_ingredient" VALUES(53071,183,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(53071,372,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53071,36,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53071,210,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53071,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53071,137,'4 cloves');
INSERT INTO "meal_ingredient" VALUES(53076,30,'2');
INSERT INTO "meal_ingredient" VALUES(53076,454,'2');
INSERT INTO "meal_ingredient" VALUES(53076,260,'0.5');
INSERT INTO "meal_ingredient" VALUES(53078,571,'3');
INSERT INTO "meal_ingredient" VALUES(53078,210,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53078,344,'1');
INSERT INTO "meal_ingredient" VALUES(53078,309,'6 cups ');
INSERT INTO "meal_ingredient" VALUES(53078,236,'3');
INSERT INTO "meal_ingredient" VALUES(53078,40,'1 can ');
INSERT INTO "meal_ingredient" VALUES(53078,103,'Garnish');
INSERT INTO "meal_ingredient" VALUES(53080,574,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53080,125,'2/3 Cup');
INSERT INTO "meal_ingredient" VALUES(53080,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53080,446,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53080,197,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53080,36,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53080,454,'1 Seperated');
INSERT INTO "meal_ingredient" VALUES(52765,607,'14 oz jar');
INSERT INTO "meal_ingredient" VALUES(52765,608,'3 Cups');
INSERT INTO "meal_ingredient" VALUES(52765,609,'6');
INSERT INTO "meal_ingredient" VALUES(52765,610,'2');
INSERT INTO "meal_ingredient" VALUES(52776,611,'250g');
INSERT INTO "meal_ingredient" VALUES(52776,36,'175g');
INSERT INTO "meal_ingredient" VALUES(52776,197,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52776,112,'5');
INSERT INTO "meal_ingredient" VALUES(52776,148,'175g');
INSERT INTO "meal_ingredient" VALUES(52776,125,'125g');
INSERT INTO "meal_ingredient" VALUES(52779,125,'250g');
INSERT INTO "meal_ingredient" VALUES(52779,36,'125g');
INSERT INTO "meal_ingredient" VALUES(52779,454,'1');
INSERT INTO "meal_ingredient" VALUES(52779,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52779,53,'300g');
INSERT INTO "meal_ingredient" VALUES(52779,197,'100ml milk');
INSERT INTO "meal_ingredient" VALUES(52779,112,'3');
INSERT INTO "meal_ingredient" VALUES(52779,220,'100g');
INSERT INTO "meal_ingredient" VALUES(52779,612,'350g');
INSERT INTO "meal_ingredient" VALUES(52779,313,'3tbsp');
INSERT INTO "meal_ingredient" VALUES(52779,163,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52779,13,'Topping');
INSERT INTO "meal_ingredient" VALUES(52788,613,'250g');
INSERT INTO "meal_ingredient" VALUES(52788,614,'225g');
INSERT INTO "meal_ingredient" VALUES(52788,615,'150g');
INSERT INTO "meal_ingredient" VALUES(52788,616,'Zest of 1');
INSERT INTO "meal_ingredient" VALUES(52788,617,'500g');
INSERT INTO "meal_ingredient" VALUES(52788,618,'250g');
INSERT INTO "meal_ingredient" VALUES(52795,1,'1.2 kg');
INSERT INTO "meal_ingredient" VALUES(52795,340,'5 thinly sliced');
INSERT INTO "meal_ingredient" VALUES(52795,293,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52795,137,'8 cloves chopped');
INSERT INTO "meal_ingredient" VALUES(52795,619,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52795,620,'¼ cup');
INSERT INTO "meal_ingredient" VALUES(52795,621,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52795,622,'3 tsp');
INSERT INTO "meal_ingredient" VALUES(52795,623,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52795,624,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52795,625,'2');
INSERT INTO "meal_ingredient" VALUES(52795,319,'1 cup');
INSERT INTO "meal_ingredient" VALUES(52795,90,'¾ cup');
INSERT INTO "meal_ingredient" VALUES(52795,626,'3 tsp Dried');
INSERT INTO "meal_ingredient" VALUES(52795,627,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52795,260,'To taste');
INSERT INTO "meal_ingredient" VALUES(52796,36,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52796,210,'3 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52796,1,'5 boneless');
INSERT INTO "meal_ingredient" VALUES(52796,260,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52796,279,'1 cut into 1/2-inch cubes');
INSERT INTO "meal_ingredient" VALUES(52796,32,'1 Head chopped');
INSERT INTO "meal_ingredient" VALUES(52796,599,'8-ounce sliced');
INSERT INTO "meal_ingredient" VALUES(52796,229,'1 red');
INSERT INTO "meal_ingredient" VALUES(52796,628,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52796,629,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52796,630,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52796,631,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(52796,594,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(52796,632,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(52796,633,'1 cup grated');
INSERT INTO "meal_ingredient" VALUES(52796,634,'16 ounces');
INSERT INTO "meal_ingredient" VALUES(52796,222,'chopped');
INSERT INTO "meal_ingredient" VALUES(52818,635,'500g');
INSERT INTO "meal_ingredient" VALUES(52818,636,'2 cups');
INSERT INTO "meal_ingredient" VALUES(52818,632,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(52818,637,'1 packet');
INSERT INTO "meal_ingredient" VALUES(52818,601,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52818,638,'3 diced');
INSERT INTO "meal_ingredient" VALUES(52818,639,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52818,628,'1 small finely diced');
INSERT INTO "meal_ingredient" VALUES(52818,640,'2 finely diced');
INSERT INTO "meal_ingredient" VALUES(52818,629,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52818,641,'1 cup');
INSERT INTO "meal_ingredient" VALUES(52818,642,'garnish chopped');
INSERT INTO "meal_ingredient" VALUES(52819,643,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52819,644,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52819,645,'4 fillets');
INSERT INTO "meal_ingredient" VALUES(52819,646,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52819,647,'8');
INSERT INTO "meal_ingredient" VALUES(52819,648,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52819,649,'2 shredded');
INSERT INTO "meal_ingredient" VALUES(52819,650,'4 shredded');
INSERT INTO "meal_ingredient" VALUES(52819,651,'1 x 300ml');
INSERT INTO "meal_ingredient" VALUES(52819,652,'1 pot');
INSERT INTO "meal_ingredient" VALUES(52819,653,'1');
INSERT INTO "meal_ingredient" VALUES(52819,629,'1 clove finely chopped');
INSERT INTO "meal_ingredient" VALUES(52830,58,'4 - 6');
INSERT INTO "meal_ingredient" VALUES(52830,306,'1 bottle');
INSERT INTO "meal_ingredient" VALUES(52830,94,'1½ tablespoon');
INSERT INTO "meal_ingredient" VALUES(52830,271,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52830,137,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52830,248,'1 can');
INSERT INTO "meal_ingredient" VALUES(52830,160,'12');
INSERT INTO "meal_ingredient" VALUES(52830,268,'2 cups');
INSERT INTO "meal_ingredient" VALUES(52830,149,'Halved');
INSERT INTO "meal_ingredient" VALUES(52830,170,'Sliced and Seeded');
INSERT INTO "meal_ingredient" VALUES(52830,5,'Peeled and Sliced');
INSERT INTO "meal_ingredient" VALUES(52830,155,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52830,273,'3 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52830,197,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52831,654,'450 grams Boneless skin');
INSERT INTO "meal_ingredient" VALUES(52831,142,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52831,137,'1 clove');
INSERT INTO "meal_ingredient" VALUES(52831,655,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52831,258,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52831,656,'2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52831,657,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52831,620,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52831,183,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52832,210,'1½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52832,10,'3 rashers (100g) chopped dry-cured');
INSERT INTO "meal_ingredient" VALUES(52832,267,'12 small');
INSERT INTO "meal_ingredient" VALUES(52832,59,'2 (460g)');
INSERT INTO "meal_ingredient" VALUES(52832,61,'4 (650g)');
INSERT INTO "meal_ingredient" VALUES(52832,58,'2 (280g)');
INSERT INTO "meal_ingredient" VALUES(52832,137,'3 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52832,29,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52832,247,'600ml');
INSERT INTO "meal_ingredient" VALUES(52832,60,'150ml');
INSERT INTO "meal_ingredient" VALUES(52832,658,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52832,659,'3 sprigs');
INSERT INTO "meal_ingredient" VALUES(52832,369,'2 sprigs');
INSERT INTO "meal_ingredient" VALUES(52832,660,'2');
INSERT INTO "meal_ingredient" VALUES(52832,642,'garnish');
INSERT INTO "meal_ingredient" VALUES(52832,661,'250g');
INSERT INTO "meal_ingredient" VALUES(52832,586,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52832,577,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52839,347,'280g');
INSERT INTO "meal_ingredient" VALUES(52839,348,'200g');
INSERT INTO "meal_ingredient" VALUES(52839,210,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52839,138,'2 cloves chopped');
INSERT INTO "meal_ingredient" VALUES(52839,242,'1 large');
INSERT INTO "meal_ingredient" VALUES(52839,175,'24 Skinned');
INSERT INTO "meal_ingredient" VALUES(52839,55,'12');
INSERT INTO "meal_ingredient" VALUES(52839,14,'Handful');
INSERT INTO "meal_ingredient" VALUES(52839,187,'Leaves');
INSERT INTO "meal_ingredient" VALUES(52839,30,'to serve');
INSERT INTO "meal_ingredient" VALUES(52839,350,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52839,188,'Grated Zest of 2');
INSERT INTO "meal_ingredient" VALUES(52839,45,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52840,351,'1½ kg');
INSERT INTO "meal_ingredient" VALUES(52840,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52840,10,'150g');
INSERT INTO "meal_ingredient" VALUES(52840,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52840,290,'sprigs of fresh');
INSERT INTO "meal_ingredient" VALUES(52840,16,'1');
INSERT INTO "meal_ingredient" VALUES(52840,233,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52840,197,'150ml');
INSERT INTO "meal_ingredient" VALUES(52840,105,'150ml');
INSERT INTO "meal_ingredient" VALUES(52840,236,'2 medium');
INSERT INTO "meal_ingredient" VALUES(52840,222,'Chopped');
INSERT INTO "meal_ingredient" VALUES(52841,210,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52841,212,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52841,48,'2 sticks');
INSERT INTO "meal_ingredient" VALUES(52841,42,'300g');
INSERT INTO "meal_ingredient" VALUES(52841,236,'500g');
INSERT INTO "meal_ingredient" VALUES(52841,16,'4');
INSERT INTO "meal_ingredient" VALUES(52841,292,'5 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52841,282,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52841,313,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52841,71,'1½ kg');
INSERT INTO "meal_ingredient" VALUES(52841,352,'500g');
INSERT INTO "meal_ingredient" VALUES(52841,305,'3');
INSERT INTO "meal_ingredient" VALUES(52841,315,'400ml');
INSERT INTO "meal_ingredient" VALUES(52846,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52846,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52846,204,'100g ');
INSERT INTO "meal_ingredient" VALUES(52846,233,'40g');
INSERT INTO "meal_ingredient" VALUES(52846,344,'1');
INSERT INTO "meal_ingredient" VALUES(52846,208,'pinch');
INSERT INTO "meal_ingredient" VALUES(52846,206,'pinch');
INSERT INTO "meal_ingredient" VALUES(52846,1,'250g');
INSERT INTO "meal_ingredient" VALUES(52846,363,'2 Handfuls');
INSERT INTO "meal_ingredient" VALUES(52846,236,'2 large');
INSERT INTO "meal_ingredient" VALUES(52850,210,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52850,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52850,57,'200g');
INSERT INTO "meal_ingredient" VALUES(52850,142,'pinch');
INSERT INTO "meal_ingredient" VALUES(52850,161,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52850,376,'10');
INSERT INTO "meal_ingredient" VALUES(52850,62,'220g');
INSERT INTO "meal_ingredient" VALUES(52850,359,'200g');
INSERT INTO "meal_ingredient" VALUES(52850,60,'200ml');
INSERT INTO "meal_ingredient" VALUES(52850,85,'Handful');
INSERT INTO "meal_ingredient" VALUES(52853,378,'1');
INSERT INTO "meal_ingredient" VALUES(52853,37,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52853,5,'1');
INSERT INTO "meal_ingredient" VALUES(52853,163,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52853,184,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52853,299,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52853,309,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52853,263,'pinch');
INSERT INTO "meal_ingredient" VALUES(52856,233,'300g');
INSERT INTO "meal_ingredient" VALUES(52856,36,'75g');
INSERT INTO "meal_ingredient" VALUES(52856,322,'100g ');
INSERT INTO "meal_ingredient" VALUES(52856,323,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52856,383,'200ml');
INSERT INTO "meal_ingredient" VALUES(52856,384,'250g');
INSERT INTO "meal_ingredient" VALUES(52856,385,'100g ');
INSERT INTO "meal_ingredient" VALUES(52856,112,'4');
INSERT INTO "meal_ingredient" VALUES(52856,300,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52856,382,'400g');
INSERT INTO "meal_ingredient" VALUES(52856,386,'200g');
INSERT INTO "meal_ingredient" VALUES(52860,388,'200g');
INSERT INTO "meal_ingredient" VALUES(52860,387,'100g ');
INSERT INTO "meal_ingredient" VALUES(52860,261,'250g');
INSERT INTO "meal_ingredient" VALUES(52860,384,'400g');
INSERT INTO "meal_ingredient" VALUES(52860,112,'4 large');
INSERT INTO "meal_ingredient" VALUES(52860,233,'140g');
INSERT INTO "meal_ingredient" VALUES(52860,79,'50g');
INSERT INTO "meal_ingredient" VALUES(52860,379,'200g');
INSERT INTO "meal_ingredient" VALUES(52870,62,'400g');
INSERT INTO "meal_ingredient" VALUES(52870,210,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52870,217,'pinch');
INSERT INTO "meal_ingredient" VALUES(52870,293,'2 small cut chunks');
INSERT INTO "meal_ingredient" VALUES(52870,244,'1 finely sliced');
INSERT INTO "meal_ingredient" VALUES(52870,367,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52870,5,'1');
INSERT INTO "meal_ingredient" VALUES(52870,188,'Juice of 1');
INSERT INTO "meal_ingredient" VALUES(52870,273,'100g ');
INSERT INTO "meal_ingredient" VALUES(52870,161,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52870,88,'4');
INSERT INTO "meal_ingredient" VALUES(52870,85,'to serve');
INSERT INTO "meal_ingredient" VALUES(52875,60,'450ml');
INSERT INTO "meal_ingredient" VALUES(52875,57,'3');
INSERT INTO "meal_ingredient" VALUES(52875,36,'75g');
INSERT INTO "meal_ingredient" VALUES(52875,182,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52875,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52875,233,'50g');
INSERT INTO "meal_ingredient" VALUES(52875,197,'200ml');
INSERT INTO "meal_ingredient" VALUES(52875,314,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52875,105,'150ml');
INSERT INTO "meal_ingredient" VALUES(52875,419,'150g');
INSERT INTO "meal_ingredient" VALUES(52875,263,'spinkling');
INSERT INTO "meal_ingredient" VALUES(52875,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52875,128,'1');
INSERT INTO "meal_ingredient" VALUES(52875,83,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52879,236,'1.5kg');
INSERT INTO "meal_ingredient" VALUES(52879,36,'30g');
INSERT INTO "meal_ingredient" VALUES(52879,105,'5 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52879,111,'2');
INSERT INTO "meal_ingredient" VALUES(52879,267,'7');
INSERT INTO "meal_ingredient" VALUES(52879,42,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(52879,48,'2 sticks');
INSERT INTO "meal_ingredient" VALUES(52879,138,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52879,314,'4 tbsp');
INSERT INTO "meal_ingredient" VALUES(52879,292,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52879,398,'400g');
INSERT INTO "meal_ingredient" VALUES(52879,60,'350ml');
INSERT INTO "meal_ingredient" VALUES(52879,1,'600g');
INSERT INTO "meal_ingredient" VALUES(52879,339,'16');
INSERT INTO "meal_ingredient" VALUES(52879,222,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52879,662,'50g');
INSERT INTO "meal_ingredient" VALUES(52897,303,'450ml');
INSERT INTO "meal_ingredient" VALUES(52897,233,'400g');
INSERT INTO "meal_ingredient" VALUES(52897,22,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52897,282,'550ml');
INSERT INTO "meal_ingredient" VALUES(52897,112,'5');
INSERT INTO "meal_ingredient" VALUES(52897,260,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52897,75,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52897,42,'500g grated');
INSERT INTO "meal_ingredient" VALUES(52897,381,'150g');
INSERT INTO "meal_ingredient" VALUES(52897,322,'200g');
INSERT INTO "meal_ingredient" VALUES(52897,45,'150g');
INSERT INTO "meal_ingredient" VALUES(52897,36,'100g ');
INSERT INTO "meal_ingredient" VALUES(52898,445,'500g');
INSERT INTO "meal_ingredient" VALUES(52898,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52898,446,'7g');
INSERT INTO "meal_ingredient" VALUES(52898,197,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52898,36,'40g');
INSERT INTO "meal_ingredient" VALUES(52898,112,'1');
INSERT INTO "meal_ingredient" VALUES(52898,303,'Dash');
INSERT INTO "meal_ingredient" VALUES(52898,35,'75g');
INSERT INTO "meal_ingredient" VALUES(52898,75,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52898,448,'150g');
INSERT INTO "meal_ingredient" VALUES(52898,45,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52905,457,'142ml');
INSERT INTO "meal_ingredient" VALUES(52905,45,'25g');
INSERT INTO "meal_ingredient" VALUES(52905,388,'100g ');
INSERT INTO "meal_ingredient" VALUES(52905,36,'25g');
INSERT INTO "meal_ingredient" VALUES(52905,105,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52905,111,'4');
INSERT INTO "meal_ingredient" VALUES(52905,110,'5');
INSERT INTO "meal_ingredient" VALUES(52905,323,'to serve');
INSERT INTO "meal_ingredient" VALUES(52910,238,'320g');
INSERT INTO "meal_ingredient" VALUES(52910,385,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52910,435,'3');
INSERT INTO "meal_ingredient" VALUES(52910,458,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52910,91,'100ml');
INSERT INTO "meal_ingredient" VALUES(52910,323,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52910,41,'3');
INSERT INTO "meal_ingredient" VALUES(52920,210,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52920,204,'300g');
INSERT INTO "meal_ingredient" VALUES(52920,59,'4');
INSERT INTO "meal_ingredient" VALUES(52920,352,'500g');
INSERT INTO "meal_ingredient" VALUES(52920,344,'1');
INSERT INTO "meal_ingredient" VALUES(52920,339,'100g ');
INSERT INTO "meal_ingredient" VALUES(52920,222,'Chopped');
INSERT INTO "meal_ingredient" VALUES(52923,390,'375g');
INSERT INTO "meal_ingredient" VALUES(52923,112,'2 large');
INSERT INTO "meal_ingredient" VALUES(52923,203,'175g');
INSERT INTO "meal_ingredient" VALUES(52923,428,'100g ');
INSERT INTO "meal_ingredient" VALUES(52923,300,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52923,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52923,457,'4 tsp');
INSERT INTO "meal_ingredient" VALUES(52923,381,'50g');
INSERT INTO "meal_ingredient" VALUES(52934,1,'1.5kg');
INSERT INTO "meal_ingredient" VALUES(52934,36,'25g');
INSERT INTO "meal_ingredient" VALUES(52934,210,'6 tblsp');
INSERT INTO "meal_ingredient" VALUES(52934,244,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52934,245,'3 Large');
INSERT INTO "meal_ingredient" VALUES(52934,72,'130g');
INSERT INTO "meal_ingredient" VALUES(52934,475,'8');
INSERT INTO "meal_ingredient" VALUES(52934,137,'6 cloves sliced');
INSERT INTO "meal_ingredient" VALUES(52934,15,'300g');
INSERT INTO "meal_ingredient" VALUES(52934,292,'drizzle');
INSERT INTO "meal_ingredient" VALUES(52934,217,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52934,17,'4');
INSERT INTO "meal_ingredient" VALUES(52934,290,'Handful');
INSERT INTO "meal_ingredient" VALUES(52934,60,'350ml');
INSERT INTO "meal_ingredient" VALUES(52934,107,'180g');
INSERT INTO "meal_ingredient" VALUES(52934,186,'2');
INSERT INTO "meal_ingredient" VALUES(52934,339,'100g ');
INSERT INTO "meal_ingredient" VALUES(52934,260,'to serve');
INSERT INTO "meal_ingredient" VALUES(52934,229,'to serve');
INSERT INTO "meal_ingredient" VALUES(52939,173,'1  bunch');
INSERT INTO "meal_ingredient" VALUES(52939,10,'2 strips');
INSERT INTO "meal_ingredient" VALUES(52939,137,'3 cloves Chopped');
INSERT INTO "meal_ingredient" VALUES(52939,340,'1 medium');
INSERT INTO "meal_ingredient" VALUES(52939,217,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52939,290,'1 Sprig');
INSERT INTO "meal_ingredient" VALUES(52939,341,'1');
INSERT INTO "meal_ingredient" VALUES(52939,245,'1');
INSERT INTO "meal_ingredient" VALUES(52939,378,'4');
INSERT INTO "meal_ingredient" VALUES(52939,303,'Splash');
INSERT INTO "meal_ingredient" VALUES(52956,1,'8 oz ');
INSERT INTO "meal_ingredient" VALUES(52956,260,'pinch');
INSERT INTO "meal_ingredient" VALUES(52956,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52956,143,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52956,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52956,278,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52956,249,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52956,309,'8 cups ');
INSERT INTO "meal_ingredient" VALUES(52956,85,'2 oz ');
INSERT INTO "meal_ingredient" VALUES(52966,514,'6 chopped');
INSERT INTO "meal_ingredient" VALUES(52966,36,'150g');
INSERT INTO "meal_ingredient" VALUES(52966,515,'120g');
INSERT INTO "meal_ingredient" VALUES(52966,387,'150g');
INSERT INTO "meal_ingredient" VALUES(52969,293,'4');
INSERT INTO "meal_ingredient" VALUES(52969,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52969,340,'1 Diced');
INSERT INTO "meal_ingredient" VALUES(52969,245,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52969,396,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52969,137,'3 Cloves Crushed');
INSERT INTO "meal_ingredient" VALUES(52969,94,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52969,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52969,260,'3/4 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52969,63,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52969,112,'4');
INSERT INTO "meal_ingredient" VALUES(52976,43,'250g');
INSERT INTO "meal_ingredient" VALUES(52976,323,'100g ');
INSERT INTO "meal_ingredient" VALUES(52976,111,'2');
INSERT INTO "meal_ingredient" VALUES(52976,526,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52976,442,'100g ');
INSERT INTO "meal_ingredient" VALUES(52977,404,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52977,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(52977,42,'1 large');
INSERT INTO "meal_ingredient" VALUES(52977,292,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52977,94,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52977,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52977,200,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52977,290,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52977,24,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52977,246,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52977,304,'4 cups ');
INSERT INTO "meal_ingredient" VALUES(52977,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52977,263,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52988,442,'50g');
INSERT INTO "meal_ingredient" VALUES(52988,28,'2 large');
INSERT INTO "meal_ingredient" VALUES(52988,527,'200g');
INSERT INTO "meal_ingredient" VALUES(52988,208,'1 whole');
INSERT INTO "meal_ingredient" VALUES(52988,428,'1kg');
INSERT INTO "meal_ingredient" VALUES(52988,233,'140g');
INSERT INTO "meal_ingredient" VALUES(52988,31,'100g ');
INSERT INTO "meal_ingredient" VALUES(52988,203,'100g ');
INSERT INTO "meal_ingredient" VALUES(52988,112,'3 Large');
INSERT INTO "meal_ingredient" VALUES(52988,29,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52988,36,'250g');
INSERT INTO "meal_ingredient" VALUES(52989,213,'3');
INSERT INTO "meal_ingredient" VALUES(52989,100,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52989,528,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52989,73,'300g');
INSERT INTO "meal_ingredient" VALUES(52989,430,'500g');
INSERT INTO "meal_ingredient" VALUES(52989,373,'250g');
INSERT INTO "meal_ingredient" VALUES(52989,105,'284ml');
INSERT INTO "meal_ingredient" VALUES(52989,123,'Handful');
INSERT INTO "meal_ingredient" VALUES(52989,388,'Grated');
INSERT INTO "meal_ingredient" VALUES(52990,36,'200g');
INSERT INTO "meal_ingredient" VALUES(52990,203,'200g');
INSERT INTO "meal_ingredient" VALUES(52990,233,'200g');
INSERT INTO "meal_ingredient" VALUES(52990,112,'4 Beaten');
INSERT INTO "meal_ingredient" VALUES(52990,156,'50g');
INSERT INTO "meal_ingredient" VALUES(52990,529,'100ml');
INSERT INTO "meal_ingredient" VALUES(52990,527,'85g');
INSERT INTO "meal_ingredient" VALUES(52990,450,'85g');
INSERT INTO "meal_ingredient" VALUES(52990,428,'250g');
INSERT INTO "meal_ingredient" VALUES(52990,429,'250g');
INSERT INTO "meal_ingredient" VALUES(52990,382,'100g ');
INSERT INTO "meal_ingredient" VALUES(52990,183,'Grated zest of 1');
INSERT INTO "meal_ingredient" VALUES(52990,531,'1 ½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52990,530,'1 ½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52990,300,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52990,11,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52998,18,'3 Lbs');
INSERT INTO "meal_ingredient" VALUES(52998,270,'10');
INSERT INTO "meal_ingredient" VALUES(52998,42,'5');
INSERT INTO "meal_ingredient" VALUES(52998,411,'1 head');
INSERT INTO "meal_ingredient" VALUES(52999,173,'1  bunch');
INSERT INTO "meal_ingredient" VALUES(52999,168,'8');
INSERT INTO "meal_ingredient" VALUES(52999,411,'1 Head chopped');
INSERT INTO "meal_ingredient" VALUES(52999,138,'8');
INSERT INTO "meal_ingredient" VALUES(52999,340,'Sliced');
INSERT INTO "meal_ingredient" VALUES(52999,412,'Sliced');
INSERT INTO "meal_ingredient" VALUES(52999,60,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52999,260,' ');
INSERT INTO "meal_ingredient" VALUES(52999,229,' ');
INSERT INTO "meal_ingredient" VALUES(53011,549,'225g');
INSERT INTO "meal_ingredient" VALUES(53011,36,'25g');
INSERT INTO "meal_ingredient" VALUES(53011,242,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53011,137,'1 clove finely chopped');
INSERT INTO "meal_ingredient" VALUES(53011,57,'400g');
INSERT INTO "meal_ingredient" VALUES(53011,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53011,339,'Handful');
INSERT INTO "meal_ingredient" VALUES(53011,244,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53011,121,'100g ');
INSERT INTO "meal_ingredient" VALUES(53011,200,'Chopped');
INSERT INTO "meal_ingredient" VALUES(53011,183,'Juice of 1/2');
INSERT INTO "meal_ingredient" VALUES(53016,57,'1');
INSERT INTO "meal_ingredient" VALUES(53016,559,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53016,454,'1');
INSERT INTO "meal_ingredient" VALUES(53016,197,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53016,125,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53016,323,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53016,217,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53016,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53016,24,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53016,139,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53016,49,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53016,46,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53016,210,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53016,551,'1');
INSERT INTO "meal_ingredient" VALUES(53037,36,'Knob');
INSERT INTO "meal_ingredient" VALUES(53037,538,'2');
INSERT INTO "meal_ingredient" VALUES(53037,10,'4');
INSERT INTO "meal_ingredient" VALUES(53037,236,'2');
INSERT INTO "meal_ingredient" VALUES(53037,42,'1');
INSERT INTO "meal_ingredient" VALUES(53037,418,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(53037,411,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(53037,16,'1');
INSERT INTO "meal_ingredient" VALUES(53037,570,'100ml');
INSERT INTO "meal_ingredient" VALUES(53037,60,'100g ');
INSERT INTO "meal_ingredient" VALUES(53055,360,'500g');
INSERT INTO "meal_ingredient" VALUES(53055,473,'250g');
INSERT INTO "meal_ingredient" VALUES(53055,340,'1');
INSERT INTO "meal_ingredient" VALUES(53055,137,'4 cloves');
INSERT INTO "meal_ingredient" VALUES(53055,222,'3 tblsp chopped');
INSERT INTO "meal_ingredient" VALUES(53055,217,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53055,11,'3/4 teaspoon');
INSERT INTO "meal_ingredient" VALUES(53055,31,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53055,309,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53055,305,'1');
INSERT INTO "meal_ingredient" VALUES(53055,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53055,229,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53056,236,'600g');
INSERT INTO "meal_ingredient" VALUES(53056,397,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53056,42,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53056,396,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53056,8,'1 small');
INSERT INTO "meal_ingredient" VALUES(53056,340,'1 Large Chopped');
INSERT INTO "meal_ingredient" VALUES(53056,356,'800g');
INSERT INTO "meal_ingredient" VALUES(53056,140,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53056,292,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53056,210,'80 ml ');
INSERT INTO "meal_ingredient" VALUES(53056,290,'Sprinking');
INSERT INTO "meal_ingredient" VALUES(53056,314,'250ml');
INSERT INTO "meal_ingredient" VALUES(53056,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53058,40,'2 cans');
INSERT INTO "meal_ingredient" VALUES(53058,303,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53058,293,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53058,50,'5');
INSERT INTO "meal_ingredient" VALUES(53058,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(53058,222,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53058,72,'1/2 kg chopped ');
INSERT INTO "meal_ingredient" VALUES(53063,18,'2');
INSERT INTO "meal_ingredient" VALUES(53063,30,'2');
INSERT INTO "meal_ingredient" VALUES(53063,187,'1');
INSERT INTO "meal_ingredient" VALUES(53063,341,'1');
INSERT INTO "meal_ingredient" VALUES(53063,419,'100g ');
INSERT INTO "meal_ingredient" VALUES(53063,374,'100g ');
INSERT INTO "meal_ingredient" VALUES(53063,10,'100g ');
INSERT INTO "meal_ingredient" VALUES(53063,454,'1');
INSERT INTO "meal_ingredient" VALUES(53063,340,'1');
INSERT INTO "meal_ingredient" VALUES(53063,229,'1');
INSERT INTO "meal_ingredient" VALUES(53072,108,'1 large');
INSERT INTO "meal_ingredient" VALUES(53072,31,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53072,266,'50g');
INSERT INTO "meal_ingredient" VALUES(53072,112,'2');
INSERT INTO "meal_ingredient" VALUES(53072,260,'To taste');
INSERT INTO "meal_ingredient" VALUES(53072,229,'To taste');
INSERT INTO "meal_ingredient" VALUES(53072,303,'For frying');
INSERT INTO "meal_ingredient" VALUES(53077,462,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53077,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(53077,411,'1 medium');
INSERT INTO "meal_ingredient" VALUES(53077,42,'1');
INSERT INTO "meal_ingredient" VALUES(53077,48,'1');
INSERT INTO "meal_ingredient" VALUES(53077,16,'1');
INSERT INTO "meal_ingredient" VALUES(53077,304,'8 cups ');
INSERT INTO "meal_ingredient" VALUES(53077,236,'2 large');
INSERT INTO "meal_ingredient" VALUES(53077,293,'2 large');
INSERT INTO "meal_ingredient" VALUES(53077,273,'Garnish');
INSERT INTO "meal_ingredient" VALUES(53077,103,'Garnish');
INSERT INTO "meal_ingredient" VALUES(52785,663,'1 cup');
INSERT INTO "meal_ingredient" VALUES(52785,309,'2-1/2 cups');
INSERT INTO "meal_ingredient" VALUES(52785,260,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52785,296,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52785,141,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52785,664,'1 cup');
INSERT INTO "meal_ingredient" VALUES(52785,621,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52785,207,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52785,16,'2');
INSERT INTO "meal_ingredient" VALUES(52785,665,'1 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(52785,142,'2 tsp shredded');
INSERT INTO "meal_ingredient" VALUES(52785,74,'2 tbs ');
INSERT INTO "meal_ingredient" VALUES(52785,245,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52785,282,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52785,136,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52899,442,'100g ');
INSERT INTO "meal_ingredient" VALUES(52899,36,'180g');
INSERT INTO "meal_ingredient" VALUES(52899,203,'180g');
INSERT INTO "meal_ingredient" VALUES(52899,213,'Zest of 1');
INSERT INTO "meal_ingredient" VALUES(52899,440,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52899,233,'225g');
INSERT INTO "meal_ingredient" VALUES(52899,11,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52899,112,'3 Large');
INSERT INTO "meal_ingredient" VALUES(52899,156,'100g ');
INSERT INTO "meal_ingredient" VALUES(52899,197,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52899,448,'500g');
INSERT INTO "meal_ingredient" VALUES(52899,450,'100g ');
INSERT INTO "meal_ingredient" VALUES(52899,45,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52907,263,'Handful');
INSERT INTO "meal_ingredient" VALUES(52907,16,'4');
INSERT INTO "meal_ingredient" VALUES(52907,137,'4 cloves');
INSERT INTO "meal_ingredient" VALUES(52907,290,'Handful');
INSERT INTO "meal_ingredient" VALUES(52907,343,'4');
INSERT INTO "meal_ingredient" VALUES(52907,314,'100ml');
INSERT INTO "meal_ingredient" VALUES(52791,666,'500g');
INSERT INTO "meal_ingredient" VALUES(52791,595,'400ml');
INSERT INTO "meal_ingredient" VALUES(52791,667,'3 x 7.5cm');
INSERT INTO "meal_ingredient" VALUES(52791,668,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52791,200,'sprigs of fresh');
INSERT INTO "meal_ingredient" VALUES(52888,36,'250g');
INSERT INTO "meal_ingredient" VALUES(52888,233,'350g');
INSERT INTO "meal_ingredient" VALUES(52888,183,'Juice of 1/2');
INSERT INTO "meal_ingredient" VALUES(52888,429,'200g');
INSERT INTO "meal_ingredient" VALUES(52888,431,'50g');
INSERT INTO "meal_ingredient" VALUES(52888,203,'100g ');
INSERT INTO "meal_ingredient" VALUES(52888,75,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52888,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52888,518,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52888,112,'1 beaten');
INSERT INTO "meal_ingredient" VALUES(52888,282,'spinkling');
INSERT INTO "meal_ingredient" VALUES(52895,262,'2');
INSERT INTO "meal_ingredient" VALUES(52895,10,'3');
INSERT INTO "meal_ingredient" VALUES(52895,204,'2');
INSERT INTO "meal_ingredient" VALUES(52895,293,'2');
INSERT INTO "meal_ingredient" VALUES(52895,443,'1 Slice');
INSERT INTO "meal_ingredient" VALUES(52895,112,'2');
INSERT INTO "meal_ingredient" VALUES(52895,30,'1 Slice');
INSERT INTO "meal_ingredient" VALUES(52944,489,'2 Pounds');
INSERT INTO "meal_ingredient" VALUES(52944,303,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52944,137,'1 clove peeled crushed');
INSERT INTO "meal_ingredient" VALUES(52944,142,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52944,290,'2 sprigs');
INSERT INTO "meal_ingredient" VALUES(52944,16,'1');
INSERT INTO "meal_ingredient" VALUES(52944,245,'0.5');
INSERT INTO "meal_ingredient" VALUES(52944,395,'0.5');
INSERT INTO "meal_ingredient" VALUES(52944,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52944,42,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52944,282,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52944,518,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52944,318,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52944,486,'1');
INSERT INTO "meal_ingredient" VALUES(52944,188,'1');
INSERT INTO "meal_ingredient" VALUES(52944,490,'3/4 cup ');
INSERT INTO "meal_ingredient" VALUES(52944,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52955,60,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(52955,260,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52955,282,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52955,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52955,414,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52955,226,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52955,204,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52955,89,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52955,309,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52955,278,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53031,3,'1lb');
INSERT INTO "meal_ingredient" VALUES(53031,340,'1');
INSERT INTO "meal_ingredient" VALUES(53031,344,'1');
INSERT INTO "meal_ingredient" VALUES(53031,293,'2');
INSERT INTO "meal_ingredient" VALUES(53031,138,'4');
INSERT INTO "meal_ingredient" VALUES(53031,292,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53031,249,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53031,505,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53031,36,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53031,210,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53031,547,'1');
INSERT INTO "meal_ingredient" VALUES(53031,94,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53031,512,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53031,260,'To taste');
INSERT INTO "meal_ingredient" VALUES(53031,229,'To taste');
INSERT INTO "meal_ingredient" VALUES(53073,108,'1 lb');
INSERT INTO "meal_ingredient" VALUES(53073,282,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53073,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53073,229,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53073,137,'1 whole');
INSERT INTO "meal_ingredient" VALUES(53073,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53073,537,'4 oz ');
INSERT INTO "meal_ingredient" VALUES(53073,491,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53073,274,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53073,16,'2');
INSERT INTO "meal_ingredient" VALUES(52802,127,'900g');
INSERT INTO "meal_ingredient" VALUES(52802,210,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52802,265,'600ml');
INSERT INTO "meal_ingredient" VALUES(52802,312,'800g');
INSERT INTO "meal_ingredient" VALUES(52802,669,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52802,208,'Grating');
INSERT INTO "meal_ingredient" VALUES(52802,105,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52802,172,'200g');
INSERT INTO "meal_ingredient" VALUES(52802,182,'1 finely sliced');
INSERT INTO "meal_ingredient" VALUES(52802,237,'200g peeled raw');
INSERT INTO "meal_ingredient" VALUES(52802,222,'Large handful');
INSERT INTO "meal_ingredient" VALUES(52802,103,'Handful');
INSERT INTO "meal_ingredient" VALUES(52802,183,'Grated zest of 1');
INSERT INTO "meal_ingredient" VALUES(52802,159,'25g grated');
INSERT INTO "meal_ingredient" VALUES(52815,210,'3 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52815,340,'1');
INSERT INTO "meal_ingredient" VALUES(52815,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(52815,670,'1');
INSERT INTO "meal_ingredient" VALUES(52815,130,'2 1/4 cups');
INSERT INTO "meal_ingredient" VALUES(52815,290,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52815,16,'3');
INSERT INTO "meal_ingredient" VALUES(52815,260,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52815,48,'2 sticks');
INSERT INTO "meal_ingredient" VALUES(52835,329,'227g');
INSERT INTO "meal_ingredient" VALUES(52835,36,'25g');
INSERT INTO "meal_ingredient" VALUES(52835,330,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52835,220,'100g ');
INSERT INTO "meal_ingredient" VALUES(52835,208,'Grated');
INSERT INTO "meal_ingredient" VALUES(52835,328,'250g');
INSERT INTO "meal_ingredient" VALUES(52835,222,'Chopped');
INSERT INTO "meal_ingredient" VALUES(52896,262,'4');
INSERT INTO "meal_ingredient" VALUES(52896,10,'4');
INSERT INTO "meal_ingredient" VALUES(52896,204,'4');
INSERT INTO "meal_ingredient" VALUES(52896,293,'3');
INSERT INTO "meal_ingredient" VALUES(52896,443,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52896,112,'2');
INSERT INTO "meal_ingredient" VALUES(52896,30,'1 Slice');
INSERT INTO "meal_ingredient" VALUES(52896,444,'100g ');
INSERT INTO "meal_ingredient" VALUES(52903,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52903,210,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52903,340,'1 kg');
INSERT INTO "meal_ingredient" VALUES(52903,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52903,138,'4 sliced');
INSERT INTO "meal_ingredient" VALUES(52903,233,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52903,107,'250ml');
INSERT INTO "meal_ingredient" VALUES(52903,21,'1L');
INSERT INTO "meal_ingredient" VALUES(52903,30,'4 sliced');
INSERT INTO "meal_ingredient" VALUES(52903,159,'140g');
INSERT INTO "meal_ingredient" VALUES(52906,36,'75g');
INSERT INTO "meal_ingredient" VALUES(52906,182,'1kg');
INSERT INTO "meal_ingredient" VALUES(52906,260,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52906,91,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52906,454,'1');
INSERT INTO "meal_ingredient" VALUES(52906,111,'3');
INSERT INTO "meal_ingredient" VALUES(52906,208,'¼ teaspoon');
INSERT INTO "meal_ingredient" VALUES(52906,233,'225g');
INSERT INTO "meal_ingredient" VALUES(52906,422,'60g');
INSERT INTO "meal_ingredient" VALUES(52906,52,'50g');
INSERT INTO "meal_ingredient" VALUES(52906,309,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52915,112,'3');
INSERT INTO "meal_ingredient" VALUES(52915,36,'2 knobs');
INSERT INTO "meal_ingredient" VALUES(52915,219,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52915,671,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(52915,222,'1 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(52915,465,'1 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(52915,159,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52918,237,'6 large');
INSERT INTO "meal_ingredient" VALUES(52918,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52918,107,'150ml');
INSERT INTO "meal_ingredient" VALUES(52918,337,'200ml');
INSERT INTO "meal_ingredient" VALUES(52918,366,'1 small finely diced');
INSERT INTO "meal_ingredient" VALUES(52918,340,'1 small finely diced');
INSERT INTO "meal_ingredient" VALUES(52918,137,'3 cloves Chopped');
INSERT INTO "meal_ingredient" VALUES(52918,236,'1 large');
INSERT INTO "meal_ingredient" VALUES(52918,213,'1');
INSERT INTO "meal_ingredient" VALUES(52918,468,'1');
INSERT INTO "meal_ingredient" VALUES(52918,16,'1');
INSERT INTO "meal_ingredient" VALUES(52918,161,'1 1/2 tsp ');
INSERT INTO "meal_ingredient" VALUES(52918,292,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52918,71,'400g');
INSERT INTO "meal_ingredient" VALUES(52918,331,'Handful');
INSERT INTO "meal_ingredient" VALUES(52918,311,'200g');
INSERT INTO "meal_ingredient" VALUES(52918,290,'2');
INSERT INTO "meal_ingredient" VALUES(52918,30,'to serve');
INSERT INTO "meal_ingredient" VALUES(52919,236,'225g');
INSERT INTO "meal_ingredient" VALUES(52919,366,'1 small');
INSERT INTO "meal_ingredient" VALUES(52919,137,'1 clove finely chopped');
INSERT INTO "meal_ingredient" VALUES(52919,197,'75 ml ');
INSERT INTO "meal_ingredient" VALUES(52919,105,'100ml');
INSERT INTO "meal_ingredient" VALUES(52919,36,'For Greasing');
INSERT INTO "meal_ingredient" VALUES(52919,220,'to serve');
INSERT INTO "meal_ingredient" VALUES(52957,322,'1 1/4 oz ');
INSERT INTO "meal_ingredient" VALUES(52957,282,'1 1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52957,300,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52957,125,'');
INSERT INTO "meal_ingredient" VALUES(52957,238,'2');
INSERT INTO "meal_ingredient" VALUES(52957,281,'');
INSERT INTO "meal_ingredient" VALUES(52957,379,'');
INSERT INTO "meal_ingredient" VALUES(52957,433,'');
INSERT INTO "meal_ingredient" VALUES(52996,58,'2');
INSERT INTO "meal_ingredient" VALUES(52996,42,'12 ounces');
INSERT INTO "meal_ingredient" VALUES(52996,270,'5');
INSERT INTO "meal_ingredient" VALUES(52996,340,'1');
INSERT INTO "meal_ingredient" VALUES(52996,21,'1');
INSERT INTO "meal_ingredient" VALUES(52996,374,'1 1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52996,273,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52996,36,' ');
INSERT INTO "meal_ingredient" VALUES(52996,282,' ');
INSERT INTO "meal_ingredient" VALUES(52996,303,' ');
INSERT INTO "meal_ingredient" VALUES(52996,260,' ');
INSERT INTO "meal_ingredient" VALUES(52996,229,' ');
INSERT INTO "meal_ingredient" VALUES(53025,488,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53025,222,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(53025,210,'Dash');
INSERT INTO "meal_ingredient" VALUES(53025,186,'3');
INSERT INTO "meal_ingredient" VALUES(53025,138,'4');
INSERT INTO "meal_ingredient" VALUES(53025,94,'Sprinking');
INSERT INTO "meal_ingredient" VALUES(53030,125,'4 cups ');
INSERT INTO "meal_ingredient" VALUES(53030,309,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(53030,260,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53030,462,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53030,210,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53043,425,'600g');
INSERT INTO "meal_ingredient" VALUES(53043,236,'300g');
INSERT INTO "meal_ingredient" VALUES(53043,152,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53043,85,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53043,95,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53043,229,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53043,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(53043,142,'2 pieces ');
INSERT INTO "meal_ingredient" VALUES(53043,125,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53043,112,'3');
INSERT INTO "meal_ingredient" VALUES(53043,31,'75g');
INSERT INTO "meal_ingredient" VALUES(53043,303,'For frying');
INSERT INTO "meal_ingredient" VALUES(53061,572,'500g');
INSERT INTO "meal_ingredient" VALUES(53061,303,'Dash');
INSERT INTO "meal_ingredient" VALUES(53061,125,'To Glaze');
INSERT INTO "meal_ingredient" VALUES(53061,260,'Dash');
INSERT INTO "meal_ingredient" VALUES(53064,328,'1 lb');
INSERT INTO "meal_ingredient" VALUES(53064,162,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53064,36,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53064,219,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53064,222,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(53064,24,' ');
INSERT INTO "meal_ingredient" VALUES(53079,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53079,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53079,42,'2 medium');
INSERT INTO "meal_ingredient" VALUES(53079,337,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(53079,309,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(53079,236,'4 large');
INSERT INTO "meal_ingredient" VALUES(53079,16,'3');
INSERT INTO "meal_ingredient" VALUES(53079,479,'1');
INSERT INTO "meal_ingredient" VALUES(53079,2,'1');
INSERT INTO "meal_ingredient" VALUES(52764,672,'500g');
INSERT INTO "meal_ingredient" VALUES(52764,604,'3 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52764,673,'1');
INSERT INTO "meal_ingredient" VALUES(52764,674,'pinch');
INSERT INTO "meal_ingredient" VALUES(52764,675,'250ml');
INSERT INTO "meal_ingredient" VALUES(52764,664,'1 (400g) tin');
INSERT INTO "meal_ingredient" VALUES(52764,676,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52764,677,'1 (200g) pack');
INSERT INTO "meal_ingredient" VALUES(52829,190,'8 ounces (230 grams)');
INSERT INTO "meal_ingredient" VALUES(52829,233,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52829,206,'3/4 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52829,678,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52829,679,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52829,680,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52829,681,'1/8 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52829,36,'6 tablespoons (85 grams)');
INSERT INTO "meal_ingredient" VALUES(52829,315,'1 1/2 cups (360 milliliters)');
INSERT INTO "meal_ingredient" VALUES(52829,162,'1 cup (240 milliliters)');
INSERT INTO "meal_ingredient" VALUES(52829,201,'1 pound (455 grams) ');
INSERT INTO "meal_ingredient" VALUES(52829,682,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52829,30,'16 slices square');
INSERT INTO "meal_ingredient" VALUES(52829,52,'8 slices mild');
INSERT INTO "meal_ingredient" VALUES(52829,82,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52951,57,'1 1/2 ');
INSERT INTO "meal_ingredient" VALUES(52951,233,'3/4 cup ');
INSERT INTO "meal_ingredient" VALUES(52951,454,'1');
INSERT INTO "meal_ingredient" VALUES(52951,499,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52951,11,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52951,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52951,211,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52951,139,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52951,309,'3/4 cup ');
INSERT INTO "meal_ingredient" VALUES(52951,60,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52951,502,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52951,274,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52951,163,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52951,491,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52951,414,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52951,503,'1/2 tbs');
INSERT INTO "meal_ingredient" VALUES(52951,137,'1 clove');
INSERT INTO "meal_ingredient" VALUES(52951,278,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52951,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53012,370,'400g');
INSERT INTO "meal_ingredient" VALUES(53012,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53012,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53012,138,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(53012,292,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53012,293,'800g');
INSERT INTO "meal_ingredient" VALUES(53012,282,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53012,106,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53012,75,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53012,70,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53021,411,'1');
INSERT INTO "meal_ingredient" VALUES(53021,36,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53021,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53021,483,'1 lb');
INSERT INTO "meal_ingredient" VALUES(53021,537,'1/2 lb');
INSERT INTO "meal_ingredient" VALUES(53021,249,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(53021,137,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53021,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53021,24,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53021,292,'3 cans');
INSERT INTO "meal_ingredient" VALUES(53041,572,'8');
INSERT INTO "meal_ingredient" VALUES(53041,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53041,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(53041,217,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53041,183,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(53041,369,'4 sprigs');
INSERT INTO "meal_ingredient" VALUES(53041,242,'1');
INSERT INTO "meal_ingredient" VALUES(53074,108,'6');
INSERT INTO "meal_ingredient" VALUES(53074,81,'1 can ');
INSERT INTO "meal_ingredient" VALUES(53074,184,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53074,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53074,246,'To taste');
INSERT INTO "meal_ingredient" VALUES(53074,212,'4 Sticks');
INSERT INTO "meal_ingredient" VALUES(52773,2,'1 lb');
INSERT INTO "meal_ingredient" VALUES(52773,604,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52773,274,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52773,258,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52773,266,'4 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52787,68,'2 cups');
INSERT INTO "meal_ingredient" VALUES(52787,162,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52787,84,'1 – 14-ounce can');
INSERT INTO "meal_ingredient" VALUES(52787,300,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52787,310,'1-⅓ cups');
INSERT INTO "meal_ingredient" VALUES(52787,199,'1-½ cups');
INSERT INTO "meal_ingredient" VALUES(52954,204,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52954,506,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52954,493,'2/3 Cup');
INSERT INTO "meal_ingredient" VALUES(52954,4,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52954,60,'2-1/2 cups');
INSERT INTO "meal_ingredient" VALUES(52954,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52954,282,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52954,414,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52954,229,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52954,166,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52954,308,'1-½ cups');
INSERT INTO "meal_ingredient" VALUES(52954,274,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52954,89,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52954,309,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52954,278,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52967,264,'750g');
INSERT INTO "meal_ingredient" VALUES(52967,282,'6 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52967,112,'2');
INSERT INTO "meal_ingredient" VALUES(52967,197,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52993,236,'5');
INSERT INTO "meal_ingredient" VALUES(52993,32,'1');
INSERT INTO "meal_ingredient" VALUES(52993,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(52993,57,'2');
INSERT INTO "meal_ingredient" VALUES(52993,12,' ');
INSERT INTO "meal_ingredient" VALUES(52993,163,' ');
INSERT INTO "meal_ingredient" VALUES(52993,60,' ');
INSERT INTO "meal_ingredient" VALUES(52993,36,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52993,303,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52993,210,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(53007,102,'100g ');
INSERT INTO "meal_ingredient" VALUES(53007,442,'85g');
INSERT INTO "meal_ingredient" VALUES(53007,36,'85g');
INSERT INTO "meal_ingredient" VALUES(53007,150,'250ml');
INSERT INTO "meal_ingredient" VALUES(53007,373,'750g');
INSERT INTO "meal_ingredient" VALUES(53007,112,'2');
INSERT INTO "meal_ingredient" VALUES(53007,183,'Zest of 1');
INSERT INTO "meal_ingredient" VALUES(53007,213,'Zest of 1');
INSERT INTO "meal_ingredient" VALUES(53007,163,'250ml');
INSERT INTO "meal_ingredient" VALUES(53007,447,'To serve');
INSERT INTO "meal_ingredient" VALUES(53035,127,'800g');
INSERT INTO "meal_ingredient" VALUES(53035,36,'50g');
INSERT INTO "meal_ingredient" VALUES(53035,138,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(53035,411,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53035,278,'8');
INSERT INTO "meal_ingredient" VALUES(53035,105,'100ml');
INSERT INTO "meal_ingredient" VALUES(53035,205,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53035,419,'180g');
INSERT INTO "meal_ingredient" VALUES(53035,112,'4');
INSERT INTO "meal_ingredient" VALUES(52781,683,'300g soaked overnight in water');
INSERT INTO "meal_ingredient" VALUES(52781,684,'2kg cut into 3cm cubes');
INSERT INTO "meal_ingredient" VALUES(52781,639,'120ml');
INSERT INTO "meal_ingredient" VALUES(52781,685,'24 Skinned');
INSERT INTO "meal_ingredient" VALUES(52781,686,'4 large');
INSERT INTO "meal_ingredient" VALUES(52781,687,'2');
INSERT INTO "meal_ingredient" VALUES(52781,688,'1');
INSERT INTO "meal_ingredient" VALUES(52781,689,'350g');
INSERT INTO "meal_ingredient" VALUES(52781,631,'150ml');
INSERT INTO "meal_ingredient" VALUES(52781,580,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52781,690,'4 sprigs');
INSERT INTO "meal_ingredient" VALUES(52781,691,'4 sprigs');
INSERT INTO "meal_ingredient" VALUES(52781,636,'450ml');
INSERT INTO "meal_ingredient" VALUES(52890,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52890,264,'250g');
INSERT INTO "meal_ingredient" VALUES(52890,299,'1 small');
INSERT INTO "meal_ingredient" VALUES(52890,417,'50g');
INSERT INTO "meal_ingredient" VALUES(52890,197,'150ml');
INSERT INTO "meal_ingredient" VALUES(52890,239,'100g ');
INSERT INTO "meal_ingredient" VALUES(52890,430,'to serve');
INSERT INTO "meal_ingredient" VALUES(52937,61,'12');
INSERT INTO "meal_ingredient" VALUES(52937,188,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(52937,278,'1  bunch');
INSERT INTO "meal_ingredient" VALUES(52937,142,'1 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(52937,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52937,340,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(52937,242,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(52937,290,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52937,274,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52937,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52937,35,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52937,518,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52937,15,'200g');
INSERT INTO "meal_ingredient" VALUES(52937,81,'400g');
INSERT INTO "meal_ingredient" VALUES(52937,406,'800g');
INSERT INTO "meal_ingredient" VALUES(52938,233,'4 cups ');
INSERT INTO "meal_ingredient" VALUES(52938,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52938,96,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52938,36,'250g');
INSERT INTO "meal_ingredient" VALUES(52938,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52938,360,'900g');
INSERT INTO "meal_ingredient" VALUES(52938,518,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52938,24,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52938,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52938,212,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52938,245,'Ground');
INSERT INTO "meal_ingredient" VALUES(52938,137,'2 tsp ground');
INSERT INTO "meal_ingredient" VALUES(52938,290,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52938,291,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52938,454,'1 beaten');
INSERT INTO "meal_ingredient" VALUES(53033,568,'300g');
INSERT INTO "meal_ingredient" VALUES(53033,413,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53033,559,'Garnish');
INSERT INTO "meal_ingredient" VALUES(53033,278,'Garnish');
INSERT INTO "meal_ingredient" VALUES(53034,303,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53034,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(53034,4,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53034,304,'150ml');
INSERT INTO "meal_ingredient" VALUES(53034,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53034,413,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53034,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53034,112,'2 Beaten ');
INSERT INTO "meal_ingredient" VALUES(53034,568,'200g');
INSERT INTO "meal_ingredient" VALUES(53034,465,'Chopped');
INSERT INTO "meal_ingredient" VALUES(52769,134,'250 Grams');
INSERT INTO "meal_ingredient" VALUES(52769,104,'500 Grams');
INSERT INTO "meal_ingredient" VALUES(52769,692,'Topping');
INSERT INTO "meal_ingredient" VALUES(52769,166,'Topping');
INSERT INTO "meal_ingredient" VALUES(52769,187,'1 Bulb');
INSERT INTO "meal_ingredient" VALUES(52769,341,'1');
INSERT INTO "meal_ingredient" VALUES(52769,93,'3rd');
INSERT INTO "meal_ingredient" VALUES(52769,693,'100 Grams');
INSERT INTO "meal_ingredient" VALUES(52813,1,'1 whole');
INSERT INTO "meal_ingredient" VALUES(52813,209,'2 quarts neutral frying');
INSERT INTO "meal_ingredient" VALUES(52813,110,'1');
INSERT INTO "meal_ingredient" VALUES(52813,125,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(52813,35,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52813,260,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52813,694,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52813,695,'2 teaspoons');
INSERT INTO "meal_ingredient" VALUES(52813,696,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,697,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,698,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,699,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,682,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,700,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,691,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,701,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52813,702,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52820,638,'4 pounded to 1cm thickness');
INSERT INTO "meal_ingredient" VALUES(52820,586,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52820,703,'1 beaten');
INSERT INTO "meal_ingredient" VALUES(52820,704,'100g fine');
INSERT INTO "meal_ingredient" VALUES(52820,646,'230ml frying');
INSERT INTO "meal_ingredient" VALUES(52820,603,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52820,705,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52820,629,'5 chopped cloves');
INSERT INTO "meal_ingredient" VALUES(52820,706,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52820,707,'4 teaspoons');
INSERT INTO "meal_ingredient" VALUES(52820,636,'600ml');
INSERT INTO "meal_ingredient" VALUES(52820,708,'2 teaspoons');
INSERT INTO "meal_ingredient" VALUES(52820,709,'4 teaspoons');
INSERT INTO "meal_ingredient" VALUES(52820,710,'1');
INSERT INTO "meal_ingredient" VALUES(52820,711,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52859,102,'300g');
INSERT INTO "meal_ingredient" VALUES(52859,36,'150g');
INSERT INTO "meal_ingredient" VALUES(52859,84,'400g');
INSERT INTO "meal_ingredient" VALUES(52859,111,'3');
INSERT INTO "meal_ingredient" VALUES(52859,188,'4');
INSERT INTO "meal_ingredient" VALUES(52859,105,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52859,323,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52868,303,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52868,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52868,137,'2 cloves chopped');
INSERT INTO "meal_ingredient" VALUES(52868,142,'1 part ');
INSERT INTO "meal_ingredient" VALUES(52868,85,'1 Packet');
INSERT INTO "meal_ingredient" VALUES(52868,94,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52868,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52868,136,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52868,71,'400g');
INSERT INTO "meal_ingredient" VALUES(52868,406,'400g');
INSERT INTO "meal_ingredient" VALUES(52868,15,'to serve');
INSERT INTO "meal_ingredient" VALUES(52887,426,'300g');
INSERT INTO "meal_ingredient" VALUES(52887,17,'2');
INSERT INTO "meal_ingredient" VALUES(52887,197,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52887,112,'4');
INSERT INTO "meal_ingredient" VALUES(52887,222,'Handful');
INSERT INTO "meal_ingredient" VALUES(52887,85,'Handful');
INSERT INTO "meal_ingredient" VALUES(52887,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52887,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52887,96,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52887,249,'300g');
INSERT INTO "meal_ingredient" VALUES(52945,258,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52945,274,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52945,414,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52945,330,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52945,309,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52945,1,'500g');
INSERT INTO "meal_ingredient" VALUES(52945,66,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52945,491,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52945,35,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52945,278,'4 Chopped');
INSERT INTO "meal_ingredient" VALUES(52945,138,'6 cloves');
INSERT INTO "meal_ingredient" VALUES(52945,492,'220g');
INSERT INTO "meal_ingredient" VALUES(52945,225,'100g ');
INSERT INTO "meal_ingredient" VALUES(52946,237,'400g');
INSERT INTO "meal_ingredient" VALUES(52946,274,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52946,292,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52946,330,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52946,45,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52946,284,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52946,225,'85g');
INSERT INTO "meal_ingredient" VALUES(52946,65,'3 Large');
INSERT INTO "meal_ingredient" VALUES(52946,35,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52946,138,'6 cloves');
INSERT INTO "meal_ingredient" VALUES(52946,492,'450g');
INSERT INTO "meal_ingredient" VALUES(52946,142,'to taste');
INSERT INTO "meal_ingredient" VALUES(52971,236,'5 Large');
INSERT INTO "meal_ingredient" VALUES(52971,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52971,396,'1');
INSERT INTO "meal_ingredient" VALUES(52971,212,'5');
INSERT INTO "meal_ingredient" VALUES(52971,524,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52971,389,'500g');
INSERT INTO "meal_ingredient" VALUES(52971,112,'24 Skinned');
INSERT INTO "meal_ingredient" VALUES(52971,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52971,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52974,210,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52974,177,'750g');
INSERT INTO "meal_ingredient" VALUES(52974,256,'1 1/2 tsp ');
INSERT INTO "meal_ingredient" VALUES(52974,340,'1 Large Chopped');
INSERT INTO "meal_ingredient" VALUES(52974,309,'25 ml');
INSERT INTO "meal_ingredient" VALUES(52974,222,'30g');
INSERT INTO "meal_ingredient" VALUES(52974,36,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52974,183,'1');
INSERT INTO "meal_ingredient" VALUES(52978,236,'2 large');
INSERT INTO "meal_ingredient" VALUES(52978,36,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52978,53,'150g');
INSERT INTO "meal_ingredient" VALUES(52978,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(52978,245,'1 large');
INSERT INTO "meal_ingredient" VALUES(52978,241,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53015,446,'1/4 ounce');
INSERT INTO "meal_ingredient" VALUES(53015,309,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53015,282,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53015,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53015,112,'2');
INSERT INTO "meal_ingredient" VALUES(53015,556,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(53015,125,'5 drops');
INSERT INTO "meal_ingredient" VALUES(53015,478,'Sprinking');
INSERT INTO "meal_ingredient" VALUES(53015,197,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(53015,299,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(53015,558,'6 tablespoons');
INSERT INTO "meal_ingredient" VALUES(53015,36,' 1/3 cup');
INSERT INTO "meal_ingredient" VALUES(53027,33,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(53027,249,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(53027,85,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53027,190,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53027,62,'Can');
INSERT INTO "meal_ingredient" VALUES(53027,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(53027,260,'Sprinking');
INSERT INTO "meal_ingredient" VALUES(53027,303,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52782,639,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52782,712,'4cm piece finely chopped');
INSERT INTO "meal_ingredient" VALUES(52782,629,'2 cloves peeled and chopped');
INSERT INTO "meal_ingredient" VALUES(52782,713,'800g peeled and chopped ');
INSERT INTO "meal_ingredient" VALUES(52782,714,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52782,580,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52782,715,'50');
INSERT INTO "meal_ingredient" VALUES(52782,716,'1 large');
INSERT INTO "meal_ingredient" VALUES(52782,717,'400g');
INSERT INTO "meal_ingredient" VALUES(52782,628,'1 medium');
INSERT INTO "meal_ingredient" VALUES(52782,718,'1 small peeled and coarsely grated');
INSERT INTO "meal_ingredient" VALUES(52782,719,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52782,720,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52782,721,'2 tbsp chopped');
INSERT INTO "meal_ingredient" VALUES(52782,722,'½ tsp ground');
INSERT INTO "meal_ingredient" VALUES(52782,593,'½ tsp ground ');
INSERT INTO "meal_ingredient" VALUES(52805,723,'12');
INSERT INTO "meal_ingredient" VALUES(52805,724,'½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52805,621,'½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52805,212,'3 sliced thinly');
INSERT INTO "meal_ingredient" VALUES(52805,725,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52805,137,'4 whole');
INSERT INTO "meal_ingredient" VALUES(52805,200,'Leaves');
INSERT INTO "meal_ingredient" VALUES(52805,74,'Leaves');
INSERT INTO "meal_ingredient" VALUES(52805,256,'½ tsp dissolved in ½ cup warm milk');
INSERT INTO "meal_ingredient" VALUES(52805,141,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52805,726,'2 Cups');
INSERT INTO "meal_ingredient" VALUES(52805,727,'½ cup');
INSERT INTO "meal_ingredient" VALUES(52805,95,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52805,728,'½');
INSERT INTO "meal_ingredient" VALUES(52805,75,'1 thin piece');
INSERT INTO "meal_ingredient" VALUES(52805,77,'3');
INSERT INTO "meal_ingredient" VALUES(52805,41,'2');
INSERT INTO "meal_ingredient" VALUES(52805,177,'1 lb');
INSERT INTO "meal_ingredient" VALUES(52805,729,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52805,730,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52808,340,'2 quartered');
INSERT INTO "meal_ingredient" VALUES(52808,284,'4 tbsp');
INSERT INTO "meal_ingredient" VALUES(52808,137,'4 cloves');
INSERT INTO "meal_ingredient" VALUES(52808,142,'Thumb sized peeled and very finely grated');
INSERT INTO "meal_ingredient" VALUES(52808,192,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52808,217,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52808,731,'1');
INSERT INTO "meal_ingredient" VALUES(52808,41,'6 bashed to break shells');
INSERT INTO "meal_ingredient" VALUES(52808,732,'4');
INSERT INTO "meal_ingredient" VALUES(52808,16,'2');
INSERT INTO "meal_ingredient" VALUES(52808,733,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52808,177,'1kg cubed');
INSERT INTO "meal_ingredient" VALUES(52808,734,'150ml');
INSERT INTO "meal_ingredient" VALUES(52808,85,'Garnish chopped ');
INSERT INTO "meal_ingredient" VALUES(52821,210,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52821,735,'1 finely sliced');
INSERT INTO "meal_ingredient" VALUES(52821,736,'2 ½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52821,737,'1');
INSERT INTO "meal_ingredient" VALUES(52821,738,'400ml can');
INSERT INTO "meal_ingredient" VALUES(52821,739,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52821,740,'100g');
INSERT INTO "meal_ingredient" VALUES(52821,741,'2 juice of 1, the other halved');
INSERT INTO "meal_ingredient" VALUES(52821,742,'150g');
INSERT INTO "meal_ingredient" VALUES(52821,721,'½ small pack');
INSERT INTO "meal_ingredient" VALUES(52843,210,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52843,340,'1 finely sliced');
INSERT INTO "meal_ingredient" VALUES(52843,42,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52843,355,'500g');
INSERT INTO "meal_ingredient" VALUES(52843,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52843,94,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52843,142,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52843,256,'¼ tsp');
INSERT INTO "meal_ingredient" VALUES(52843,75,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52843,163,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52843,357,'100g ');
INSERT INTO "meal_ingredient" VALUES(52843,305,'1');
INSERT INTO "meal_ingredient" VALUES(52843,358,'1 medium chopped');
INSERT INTO "meal_ingredient" VALUES(52843,359,'Steamed');
INSERT INTO "meal_ingredient" VALUES(52843,222,'Chopped');
INSERT INTO "meal_ingredient" VALUES(52844,210,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52844,10,'2');
INSERT INTO "meal_ingredient" VALUES(52844,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52844,48,'1 Stick');
INSERT INTO "meal_ingredient" VALUES(52844,42,'1 medium');
INSERT INTO "meal_ingredient" VALUES(52844,137,'2 cloves chopped');
INSERT INTO "meal_ingredient" VALUES(52844,360,'500g');
INSERT INTO "meal_ingredient" VALUES(52844,292,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52844,71,'800g');
INSERT INTO "meal_ingredient" VALUES(52844,163,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52844,180,'500g');
INSERT INTO "meal_ingredient" VALUES(52844,91,'400ml');
INSERT INTO "meal_ingredient" VALUES(52844,202,'125g');
INSERT INTO "meal_ingredient" VALUES(52844,220,'50g');
INSERT INTO "meal_ingredient" VALUES(52844,14,'Topping');
INSERT INTO "meal_ingredient" VALUES(52877,356,'500g');
INSERT INTO "meal_ingredient" VALUES(52877,125,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52877,303,'Dash');
INSERT INTO "meal_ingredient" VALUES(52877,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52877,42,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52877,304,'350ml/12fl');
INSERT INTO "meal_ingredient" VALUES(52877,236,'500g');
INSERT INTO "meal_ingredient" VALUES(52877,390,'450g');
INSERT INTO "meal_ingredient" VALUES(52877,112,'To Glaze');
INSERT INTO "meal_ingredient" VALUES(52884,36,'100g ');
INSERT INTO "meal_ingredient" VALUES(52884,177,'900g');
INSERT INTO "meal_ingredient" VALUES(52884,423,'3');
INSERT INTO "meal_ingredient" VALUES(52884,212,'2 medium');
INSERT INTO "meal_ingredient" VALUES(52884,42,'4 sliced');
INSERT INTO "meal_ingredient" VALUES(52884,233,'25g');
INSERT INTO "meal_ingredient" VALUES(52884,318,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52884,60,'500ml');
INSERT INTO "meal_ingredient" VALUES(52884,17,'2');
INSERT INTO "meal_ingredient" VALUES(52884,236,'900g');
INSERT INTO "meal_ingredient" VALUES(52973,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52973,340,'1 medium finely diced');
INSERT INTO "meal_ingredient" VALUES(52973,62,'250g');
INSERT INTO "meal_ingredient" VALUES(52973,304,'1.5L');
INSERT INTO "meal_ingredient" VALUES(52973,94,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52973,137,'5 cloves');
INSERT INTO "meal_ingredient" VALUES(52973,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52973,161,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52973,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52973,188,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(52987,273,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52987,69,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52987,106,'1/2 tbs');
INSERT INTO "meal_ingredient" VALUES(52987,260,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52987,30,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52987,10,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52987,341,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52987,374,'4 slices');
INSERT INTO "meal_ingredient" VALUES(52987,36,'2 1/2 Tbs');
INSERT INTO "meal_ingredient" VALUES(53009,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(53009,263,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(53009,210,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53009,183,'Zest and juice of 1');
INSERT INTO "meal_ingredient" VALUES(53009,103,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53009,355,'750g');
INSERT INTO "meal_ingredient" VALUES(53009,547,'To serve');
INSERT INTO "meal_ingredient" VALUES(53010,548,'25g');
INSERT INTO "meal_ingredient" VALUES(53010,179,'500g');
INSERT INTO "meal_ingredient" VALUES(53010,94,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53010,85,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53010,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53010,137,'1 clove finely chopped');
INSERT INTO "meal_ingredient" VALUES(53010,210,'For frying');
INSERT INTO "meal_ingredient" VALUES(53010,535,'4');
INSERT INTO "meal_ingredient" VALUES(53010,93,'Grated');
INSERT INTO "meal_ingredient" VALUES(53010,150,'200g');
INSERT INTO "meal_ingredient" VALUES(53010,200,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53083,177,'50g');
INSERT INTO "meal_ingredient" VALUES(53083,575,'120g');
INSERT INTO "meal_ingredient" VALUES(53083,184,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53083,36,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53083,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53083,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(53083,304,'600ml');
INSERT INTO "meal_ingredient" VALUES(53083,249,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53083,256,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53083,222,'Garnish');
INSERT INTO "meal_ingredient" VALUES(52777,743,'200 g');
INSERT INTO "meal_ingredient" VALUES(52777,744,'250 g');
INSERT INTO "meal_ingredient" VALUES(52777,745,'1  bunch');
INSERT INTO "meal_ingredient" VALUES(52777,746,'350 g');
INSERT INTO "meal_ingredient" VALUES(52777,747,'3  tablespoons');
INSERT INTO "meal_ingredient" VALUES(52777,153,'40 g');
INSERT INTO "meal_ingredient" VALUES(52777,748,'200 g');
INSERT INTO "meal_ingredient" VALUES(52777,601,'to taste');
INSERT INTO "meal_ingredient" VALUES(52777,749,'to taste');
INSERT INTO "meal_ingredient" VALUES(52827,225,'85g');
INSERT INTO "meal_ingredient" VALUES(52827,750,'400ml can');
INSERT INTO "meal_ingredient" VALUES(52827,751,'4 tbsp');
INSERT INTO "meal_ingredient" VALUES(52827,3,'600g stewing cut into strips');
INSERT INTO "meal_ingredient" VALUES(52827,236,'450g waxy');
INSERT INTO "meal_ingredient" VALUES(52827,340,'1 cut thin wedges');
INSERT INTO "meal_ingredient" VALUES(52827,188,'4 leaves');
INSERT INTO "meal_ingredient" VALUES(52827,606,'1');
INSERT INTO "meal_ingredient" VALUES(52827,752,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52827,753,'1 tbsp palm or soft light');
INSERT INTO "meal_ingredient" VALUES(52827,122,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52827,754,'1 red deseeded and finely sliced, to serve');
INSERT INTO "meal_ingredient" VALUES(52827,171,'to serve');
INSERT INTO "meal_ingredient" VALUES(52864,204,'30g');
INSERT INTO "meal_ingredient" VALUES(52864,399,'240g');
INSERT INTO "meal_ingredient" VALUES(52864,50,'3');
INSERT INTO "meal_ingredient" VALUES(52864,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52864,369,'3 sprigs');
INSERT INTO "meal_ingredient" VALUES(52864,400,'500g');
INSERT INTO "meal_ingredient" VALUES(52864,274,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52864,314,'125ml ');
INSERT INTO "meal_ingredient" VALUES(52864,180,'350g');
INSERT INTO "meal_ingredient" VALUES(52864,31,'4 tbsp');
INSERT INTO "meal_ingredient" VALUES(52864,257,'1/2 handful ');
INSERT INTO "meal_ingredient" VALUES(52864,401,'to serve');
INSERT INTO "meal_ingredient" VALUES(52865,284,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52865,402,'225g');
INSERT INTO "meal_ingredient" VALUES(52865,142,'2');
INSERT INTO "meal_ingredient" VALUES(52865,94,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52865,296,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52865,85,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52865,152,'1');
INSERT INTO "meal_ingredient" VALUES(52865,341,'4 large');
INSERT INTO "meal_ingredient" VALUES(52865,226,'150g');
INSERT INTO "meal_ingredient" VALUES(52865,136,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52865,403,'to serve');
INSERT INTO "meal_ingredient" VALUES(52876,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52876,360,'500g');
INSERT INTO "meal_ingredient" VALUES(52876,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52876,292,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52876,233,'1 ½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52876,204,'75g');
INSERT INTO "meal_ingredient" VALUES(52876,21,'250ml');
INSERT INTO "meal_ingredient" VALUES(52876,318,'Dash');
INSERT INTO "meal_ingredient" VALUES(52876,390,'400g');
INSERT INTO "meal_ingredient" VALUES(52876,111,'1');
INSERT INTO "meal_ingredient" VALUES(52880,94,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52880,353,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52880,244,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52880,138,'6');
INSERT INTO "meal_ingredient" VALUES(52880,152,'3 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52880,245,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52880,208,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52880,85,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52880,179,'1kg');
INSERT INTO "meal_ingredient" VALUES(52880,229,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52880,233,'340g');
INSERT INTO "meal_ingredient" VALUES(52880,260,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52880,197,'90 ml ');
INSERT INTO "meal_ingredient" VALUES(52880,422,'150g');
INSERT INTO "meal_ingredient" VALUES(52880,111,'Beaten');
INSERT INTO "meal_ingredient" VALUES(52900,36,'175g');
INSERT INTO "meal_ingredient" VALUES(52900,45,'175g');
INSERT INTO "meal_ingredient" VALUES(52900,112,'3');
INSERT INTO "meal_ingredient" VALUES(52900,264,'250g');
INSERT INTO "meal_ingredient" VALUES(52900,197,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52900,183,'Zest of 1');
INSERT INTO "meal_ingredient" VALUES(52900,431,'To Glaze');
INSERT INTO "meal_ingredient" VALUES(52927,18,'1');
INSERT INTO "meal_ingredient" VALUES(52927,260,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,24,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,85,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,282,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,16,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52927,77,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52927,217,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,137,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,340,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,103,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,114,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52927,49,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52927,246,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52947,493,'450g');
INSERT INTO "meal_ingredient" VALUES(52947,360,'100g ');
INSERT INTO "meal_ingredient" VALUES(52947,414,'1/2 tbs');
INSERT INTO "meal_ingredient" VALUES(52947,494,'1 1/2 tsp ');
INSERT INTO "meal_ingredient" VALUES(52947,495,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52947,229,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52947,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52947,755,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52947,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52947,309,'400ml');
INSERT INTO "meal_ingredient" VALUES(52947,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52947,496,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52947,278,'4');
INSERT INTO "meal_ingredient" VALUES(52947,137,'2 cloves chopped');
INSERT INTO "meal_ingredient" VALUES(52947,142,'4 sliced');
INSERT INTO "meal_ingredient" VALUES(52947,89,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52968,521,'1 kg');
INSERT INTO "meal_ingredient" VALUES(52968,330,'1 kg');
INSERT INTO "meal_ingredient" VALUES(52968,293,'2');
INSERT INTO "meal_ingredient" VALUES(52968,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52968,340,'1');
INSERT INTO "meal_ingredient" VALUES(52968,152,'1');
INSERT INTO "meal_ingredient" VALUES(52968,86,'1  bunch');
INSERT INTO "meal_ingredient" VALUES(52991,36,'225g');
INSERT INTO "meal_ingredient" VALUES(52991,233,'350g');
INSERT INTO "meal_ingredient" VALUES(52991,45,'100g ');
INSERT INTO "meal_ingredient" VALUES(52991,532,'280g');
INSERT INTO "meal_ingredient" VALUES(52991,454,'1 small');
INSERT INTO "meal_ingredient" VALUES(52991,323,'Topping');
INSERT INTO "meal_ingredient" VALUES(53006,3,'500g');
INSERT INTO "meal_ingredient" VALUES(53006,8,'1 large');
INSERT INTO "meal_ingredient" VALUES(53006,150,'150g');
INSERT INTO "meal_ingredient" VALUES(53006,454,'1 beaten');
INSERT INTO "meal_ingredient" VALUES(53006,219,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53006,341,'400g');
INSERT INTO "meal_ingredient" VALUES(53006,292,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53006,236,'350g');
INSERT INTO "meal_ingredient" VALUES(53029,567,'800g');
INSERT INTO "meal_ingredient" VALUES(53029,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53029,3,'300g');
INSERT INTO "meal_ingredient" VALUES(53029,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53029,309,'1 Litre');
INSERT INTO "meal_ingredient" VALUES(53029,138,'1');
INSERT INTO "meal_ingredient" VALUES(53029,210,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53038,236,'1kg');
INSERT INTO "meal_ingredient" VALUES(53038,197,'200ml');
INSERT INTO "meal_ingredient" VALUES(53038,36,'50g');
INSERT INTO "meal_ingredient" VALUES(53038,205,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53038,278,'Bunch');
INSERT INTO "meal_ingredient" VALUES(53047,42,'6 chopped');
INSERT INTO "meal_ingredient" VALUES(53047,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53047,138,'4');
INSERT INTO "meal_ingredient" VALUES(53047,94,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53047,85,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53047,210,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53047,136,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53047,184,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53048,225,'50g');
INSERT INTO "meal_ingredient" VALUES(53048,65,'15g');
INSERT INTO "meal_ingredient" VALUES(53048,237,'10g');
INSERT INTO "meal_ingredient" VALUES(53048,209,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(53048,309,'750 ml ');
INSERT INTO "meal_ingredient" VALUES(53048,286,'1/2 tbs');
INSERT INTO "meal_ingredient" VALUES(53048,236,'250g');
INSERT INTO "meal_ingredient" VALUES(53048,244,'2');
INSERT INTO "meal_ingredient" VALUES(53048,138,'4');
INSERT INTO "meal_ingredient" VALUES(53048,411,'30g');
INSERT INTO "meal_ingredient" VALUES(53048,67,'30g');
INSERT INTO "meal_ingredient" VALUES(53048,493,'1');
INSERT INTO "meal_ingredient" VALUES(53048,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53048,505,'4');
INSERT INTO "meal_ingredient" VALUES(53048,454,'1');
INSERT INTO "meal_ingredient" VALUES(53059,204,'150g');
INSERT INTO "meal_ingredient" VALUES(53059,574,'50g');
INSERT INTO "meal_ingredient" VALUES(53059,303,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53059,340,'40g');
INSERT INTO "meal_ingredient" VALUES(53059,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(53059,16,'1');
INSERT INTO "meal_ingredient" VALUES(53059,305,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(53059,273,'50 ml ');
INSERT INTO "meal_ingredient" VALUES(53059,512,'Dash');
INSERT INTO "meal_ingredient" VALUES(53059,222,'Top');
INSERT INTO "meal_ingredient" VALUES(52851,242,'1 large');
INSERT INTO "meal_ingredient" VALUES(52851,142,'0.5');
INSERT INTO "meal_ingredient" VALUES(52851,137,'1 large');
INSERT INTO "meal_ingredient" VALUES(52851,85,'Bunch');
INSERT INTO "meal_ingredient" VALUES(52851,284,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52851,58,'4');
INSERT INTO "meal_ingredient" VALUES(52851,223,'5 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52851,60,'150ml');
INSERT INTO "meal_ingredient" VALUES(52851,150,'200g');
INSERT INTO "meal_ingredient" VALUES(52858,36,'85g');
INSERT INTO "meal_ingredient" VALUES(52858,273,'140g');
INSERT INTO "meal_ingredient" VALUES(52858,282,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(52858,322,'900g');
INSERT INTO "meal_ingredient" VALUES(52858,45,'250g');
INSERT INTO "meal_ingredient" VALUES(52858,233,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52858,184,'1 ½ teaspoons');
INSERT INTO "meal_ingredient" VALUES(52858,112,'3 Large');
INSERT INTO "meal_ingredient" VALUES(52924,430,'125g');
INSERT INTO "meal_ingredient" VALUES(52924,45,'50g');
INSERT INTO "meal_ingredient" VALUES(52924,79,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(52924,454,'1 beaten');
INSERT INTO "meal_ingredient" VALUES(52924,102,'200g shredded');
INSERT INTO "meal_ingredient" VALUES(52924,471,'100g ');
INSERT INTO "meal_ingredient" VALUES(52924,442,'50g');
INSERT INTO "meal_ingredient" VALUES(52924,36,'100g ');
INSERT INTO "meal_ingredient" VALUES(52924,105,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52924,470,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52924,323,'250g');
INSERT INTO "meal_ingredient" VALUES(52924,388,'150g');
INSERT INTO "meal_ingredient" VALUES(53051,81,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53051,309,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53051,145,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53051,142,'1');
INSERT INTO "meal_ingredient" VALUES(53051,16,'1');
INSERT INTO "meal_ingredient" VALUES(53051,249,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53051,112,'4');
INSERT INTO "meal_ingredient" VALUES(53051,93,'1');
INSERT INTO "meal_ingredient" VALUES(53051,225,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53051,523,'4 oz ');
INSERT INTO "meal_ingredient" VALUES(53051,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53051,340,'1');
INSERT INTO "meal_ingredient" VALUES(53051,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(53051,267,'3');
INSERT INTO "meal_ingredient" VALUES(53051,66,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(53051,282,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53051,286,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52810,301,'4 meaty shanks');
INSERT INTO "meal_ingredient" VALUES(52810,125,'½ cup');
INSERT INTO "meal_ingredient" VALUES(52810,210,'2 tablespoons ');
INSERT INTO "meal_ingredient" VALUES(52810,36,'3 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52810,340,'1 medium chopped into ½-inch pieces');
INSERT INTO "meal_ingredient" VALUES(52810,670,'1 chopped into ½-inch pieces');
INSERT INTO "meal_ingredient" VALUES(52810,48,'1 chopped into ½-inch pieces');
INSERT INTO "meal_ingredient" VALUES(52810,366,'1 bulb chopped into ½-inch pieces');
INSERT INTO "meal_ingredient" VALUES(52810,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52810,214,'2 strips');
INSERT INTO "meal_ingredient" VALUES(52810,193,'1 ½ teaspoons');
INSERT INTO "meal_ingredient" VALUES(52810,16,'1');
INSERT INTO "meal_ingredient" VALUES(52810,107,'1 cup');
INSERT INTO "meal_ingredient" VALUES(52810,60,'½ cup ');
INSERT INTO "meal_ingredient" VALUES(52810,293,'1 cup chopped with juice');
INSERT INTO "meal_ingredient" VALUES(52810,222,'2 tablespoons chopped');
INSERT INTO "meal_ingredient" VALUES(52810,185,'1 teaspoon grated ');
INSERT INTO "meal_ingredient" VALUES(52943,487,'450g');
INSERT INTO "meal_ingredient" VALUES(52943,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52943,278,'1');
INSERT INTO "meal_ingredient" VALUES(52943,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52943,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52943,486,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52943,274,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52943,132,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52943,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52943,309,'350ml');
INSERT INTO "meal_ingredient" VALUES(52943,488,'200g');
INSERT INTO "meal_ingredient" VALUES(52943,330,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52774,756,'6oz/180g');
INSERT INTO "meal_ingredient" VALUES(52774,757,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52774,758,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52774,709,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52774,759,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52774,597,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52774,760,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52774,761,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52774,629,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(52774,1,'1 cup');
INSERT INTO "meal_ingredient" VALUES(52774,454,'1');
INSERT INTO "meal_ingredient" VALUES(52774,762,'4 cups');
INSERT INTO "meal_ingredient" VALUES(52780,236,'800g');
INSERT INTO "meal_ingredient" VALUES(52780,212,'3');
INSERT INTO "meal_ingredient" VALUES(52780,210,'2 tblsp');
INSERT INTO "meal_ingredient" VALUES(52780,60,'100ml');
INSERT INTO "meal_ingredient" VALUES(52780,91,'1 pot');
INSERT INTO "meal_ingredient" VALUES(52780,219,'Topping');
INSERT INTO "meal_ingredient" VALUES(52780,58,'4');
INSERT INTO "meal_ingredient" VALUES(52780,10,'4');
INSERT INTO "meal_ingredient" VALUES(52780,277,'Topping');
INSERT INTO "meal_ingredient" VALUES(52780,226,'Topping');
INSERT INTO "meal_ingredient" VALUES(52804,303,'Dash');
INSERT INTO "meal_ingredient" VALUES(52804,20,'1 Can');
INSERT INTO "meal_ingredient" VALUES(52804,236,'5 thin cut');
INSERT INTO "meal_ingredient" VALUES(52804,54,'2 cups');
INSERT INTO "meal_ingredient" VALUES(52837,276,'300g');
INSERT INTO "meal_ingredient" VALUES(52837,210,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52837,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52837,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52837,242,'1');
INSERT INTO "meal_ingredient" VALUES(52837,292,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52837,338,'425g');
INSERT INTO "meal_ingredient" VALUES(52837,339,'70g');
INSERT INTO "meal_ingredient" VALUES(52837,219,'Shaved');
INSERT INTO "meal_ingredient" VALUES(52847,364,'4 tbsp');
INSERT INTO "meal_ingredient" VALUES(52847,4,'350g');
INSERT INTO "meal_ingredient" VALUES(52847,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(52847,137,'10');
INSERT INTO "meal_ingredient" VALUES(52847,42,'1 thinly sliced');
INSERT INTO "meal_ingredient" VALUES(52847,119,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52847,367,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52847,304,'600ml');
INSERT INTO "meal_ingredient" VALUES(52847,292,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52847,369,'2 sticks');
INSERT INTO "meal_ingredient" VALUES(52847,222,'Handful');
INSERT INTO "meal_ingredient" VALUES(52847,368,'400g');
INSERT INTO "meal_ingredient" VALUES(52847,31,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52847,209,'drizzle');
INSERT INTO "meal_ingredient" VALUES(52847,30,'to serve');
INSERT INTO "meal_ingredient" VALUES(52847,32,'to serve');
INSERT INTO "meal_ingredient" VALUES(52854,125,'100g ');
INSERT INTO "meal_ingredient" VALUES(52854,112,'2 large');
INSERT INTO "meal_ingredient" VALUES(52854,197,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52854,284,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52854,282,'to serve');
INSERT INTO "meal_ingredient" VALUES(52854,379,'to serve');
INSERT INTO "meal_ingredient" VALUES(52854,380,'to serve');
INSERT INTO "meal_ingredient" VALUES(52857,389,'750g');
INSERT INTO "meal_ingredient" VALUES(52857,390,'350g');
INSERT INTO "meal_ingredient" VALUES(52857,233,'Dusting');
INSERT INTO "meal_ingredient" VALUES(52857,45,'140g');
INSERT INTO "meal_ingredient" VALUES(52857,260,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52857,208,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52857,75,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52857,112,'2 Beaten ');
INSERT INTO "meal_ingredient" VALUES(52857,36,'25g');
INSERT INTO "meal_ingredient" VALUES(52857,197,'175g');
INSERT INTO "meal_ingredient" VALUES(52857,323,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52861,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52861,391,'175g');
INSERT INTO "meal_ingredient" VALUES(52861,392,'5');
INSERT INTO "meal_ingredient" VALUES(52861,375,'500g');
INSERT INTO "meal_ingredient" VALUES(52861,223,'175g');
INSERT INTO "meal_ingredient" VALUES(52861,146,'175g');
INSERT INTO "meal_ingredient" VALUES(52861,197,'150ml');
INSERT INTO "meal_ingredient" VALUES(52861,105,'275ml');
INSERT INTO "meal_ingredient" VALUES(52861,384,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52861,393,'Crushed');
INSERT INTO "meal_ingredient" VALUES(52862,330,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52862,213,'Juice of 2');
INSERT INTO "meal_ingredient" VALUES(52862,45,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52862,394,'6');
INSERT INTO "meal_ingredient" VALUES(52862,380,'250g');
INSERT INTO "meal_ingredient" VALUES(52862,264,'200g');
INSERT INTO "meal_ingredient" VALUES(52862,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52862,203,'100g ');
INSERT INTO "meal_ingredient" VALUES(52862,75,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52862,197,'6 tblsp');
INSERT INTO "meal_ingredient" VALUES(52902,36,'200g');
INSERT INTO "meal_ingredient" VALUES(52902,454,'1 large');
INSERT INTO "meal_ingredient" VALUES(52902,197,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52902,146,'200g');
INSERT INTO "meal_ingredient" VALUES(52902,25,'85g');
INSERT INTO "meal_ingredient" VALUES(52902,35,'85g');
INSERT INTO "meal_ingredient" VALUES(52902,452,'100g ');
INSERT INTO "meal_ingredient" VALUES(52902,264,'250g');
INSERT INTO "meal_ingredient" VALUES(52902,158,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52916,466,'8');
INSERT INTO "meal_ingredient" VALUES(52916,45,'100g ');
INSERT INTO "meal_ingredient" VALUES(52916,36,'100g ');
INSERT INTO "meal_ingredient" VALUES(52916,468,'2');
INSERT INTO "meal_ingredient" VALUES(52916,41,'3 Pods');
INSERT INTO "meal_ingredient" VALUES(52916,75,'1 large');
INSERT INTO "meal_ingredient" VALUES(52916,29,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52916,238,'500g');
INSERT INTO "meal_ingredient" VALUES(52921,112,'10');
INSERT INTO "meal_ingredient" VALUES(52921,210,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52921,397,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52921,278,'3 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52921,245,'4');
INSERT INTO "meal_ingredient" VALUES(52921,138,'1 clove peeled crushed');
INSERT INTO "meal_ingredient" VALUES(52921,242,'1');
INSERT INTO "meal_ingredient" VALUES(52921,322,'300g');
INSERT INTO "meal_ingredient" VALUES(52921,197,'6 tblsp');
INSERT INTO "meal_ingredient" VALUES(52921,465,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52921,13,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52921,254,'to serve');
INSERT INTO "meal_ingredient" VALUES(52921,219,'to serve');
INSERT INTO "meal_ingredient" VALUES(52922,469,'450g');
INSERT INTO "meal_ingredient" VALUES(52922,210,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52922,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(52922,366,'1 large');
INSERT INTO "meal_ingredient" VALUES(52922,42,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52922,107,'150ml');
INSERT INTO "meal_ingredient" VALUES(52922,29,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52922,71,'400g');
INSERT INTO "meal_ingredient" VALUES(52922,337,'1L');
INSERT INTO "meal_ingredient" VALUES(52922,217,'2 pinches');
INSERT INTO "meal_ingredient" VALUES(52922,105,'150ml');
INSERT INTO "meal_ingredient" VALUES(52922,237,'8');
INSERT INTO "meal_ingredient" VALUES(52930,236,'4 cups ');
INSERT INTO "meal_ingredient" VALUES(52930,36,'60ml');
INSERT INTO "meal_ingredient" VALUES(52930,197,'½ cup ');
INSERT INTO "meal_ingredient" VALUES(52930,360,'450g');
INSERT INTO "meal_ingredient" VALUES(52930,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52930,474,'500ml');
INSERT INTO "meal_ingredient" VALUES(52930,217,'to taste');
INSERT INTO "meal_ingredient" VALUES(52930,222,'to taste');
INSERT INTO "meal_ingredient" VALUES(52930,260,'Dash');
INSERT INTO "meal_ingredient" VALUES(52930,229,'Dash');
INSERT INTO "meal_ingredient" VALUES(52932,36,'½ cup ');
INSERT INTO "meal_ingredient" VALUES(52932,282,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52932,112,'2');
INSERT INTO "meal_ingredient" VALUES(52932,300,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52932,125,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(52932,11,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52932,197,'1 1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52932,383,'1 1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52932,35,'1 1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52932,457,'1 1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52958,223,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52958,282,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52958,454,'1');
INSERT INTO "meal_ingredient" VALUES(53014,309,'150ml');
INSERT INTO "meal_ingredient" VALUES(53014,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53014,446,'15g');
INSERT INTO "meal_ingredient" VALUES(53014,233,'225g');
INSERT INTO "meal_ingredient" VALUES(53014,260,'1 1/2 tsp ');
INSERT INTO "meal_ingredient" VALUES(53014,210,'Drizzle');
INSERT INTO "meal_ingredient" VALUES(53014,352,'80g');
INSERT INTO "meal_ingredient" VALUES(53014,374,'70g');
INSERT INTO "meal_ingredient" VALUES(53014,215,'Peeled and Sliced');
INSERT INTO "meal_ingredient" VALUES(53014,13,'Leaves');
INSERT INTO "meal_ingredient" VALUES(53014,24,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53017,125,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53017,260,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53017,454,'1 Yolk');
INSERT INTO "meal_ingredient" VALUES(53017,36,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(53017,340,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(53017,418,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53017,18,'1/2 lb');
INSERT INTO "meal_ingredient" VALUES(53017,112,'2 Beaten ');
INSERT INTO "meal_ingredient" VALUES(53017,229,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53019,36,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53019,69,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(53019,563,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(53019,236,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53019,112,'3');
INSERT INTO "meal_ingredient" VALUES(53019,273,'1 pot');
INSERT INTO "meal_ingredient" VALUES(53019,125,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(53019,260,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53019,11,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53022,125,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53022,112,'2');
INSERT INTO "meal_ingredient" VALUES(53022,197,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53022,309,'3/4 cup ');
INSERT INTO "meal_ingredient" VALUES(53022,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53022,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53022,36,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53039,1,'1.5kg');
INSERT INTO "meal_ingredient" VALUES(53039,242,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(53039,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(53039,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53039,106,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53039,85,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53039,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53039,367,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53039,209,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53039,244,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53039,42,'2');
INSERT INTO "meal_ingredient" VALUES(53039,571,'1');
INSERT INTO "meal_ingredient" VALUES(53039,411,'4 leaves');
INSERT INTO "meal_ingredient" VALUES(53039,544,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53039,150,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53039,95,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53042,137,'1 clove');
INSERT INTO "meal_ingredient" VALUES(53042,19,'2 small');
INSERT INTO "meal_ingredient" VALUES(53042,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53042,308,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53042,222,'Leaves');
INSERT INTO "meal_ingredient" VALUES(53042,573,'2');
INSERT INTO "meal_ingredient" VALUES(53042,254,'2 handfulls');
INSERT INTO "meal_ingredient" VALUES(53042,14,'Small bunch');
INSERT INTO "meal_ingredient" VALUES(53042,170,'1');
INSERT INTO "meal_ingredient" VALUES(53042,278,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(53042,45,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53044,4,'2');
INSERT INTO "meal_ingredient" VALUES(53044,314,'200ml');
INSERT INTO "meal_ingredient" VALUES(53044,217,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53044,183,'2');
INSERT INTO "meal_ingredient" VALUES(53044,184,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(53044,210,'Dash');
INSERT INTO "meal_ingredient" VALUES(53044,544,'To serve');
INSERT INTO "meal_ingredient" VALUES(53044,236,'1 kg');
INSERT INTO "meal_ingredient" VALUES(53044,303,'For frying');
INSERT INTO "meal_ingredient" VALUES(53045,212,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(53045,245,'1 Diced');
INSERT INTO "meal_ingredient" VALUES(53045,85,'Small bunch');
INSERT INTO "meal_ingredient" VALUES(53045,242,'1 small');
INSERT INTO "meal_ingredient" VALUES(53045,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(53045,107,'400ml');
INSERT INTO "meal_ingredient" VALUES(53045,256,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53045,16,'1');
INSERT INTO "meal_ingredient" VALUES(53045,236,'300g');
INSERT INTO "meal_ingredient" VALUES(53045,234,'400g');
INSERT INTO "meal_ingredient" VALUES(53045,479,'600g');
INSERT INTO "meal_ingredient" VALUES(53045,336,'300g');
INSERT INTO "meal_ingredient" VALUES(53045,469,'8');
INSERT INTO "meal_ingredient" VALUES(53045,351,'500g');
INSERT INTO "meal_ingredient" VALUES(53045,331,'500g');
INSERT INTO "meal_ingredient" VALUES(53045,415,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53046,233,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53046,323,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53046,238,'375g');
INSERT INTO "meal_ingredient" VALUES(53046,45,'250g');
INSERT INTO "meal_ingredient" VALUES(53046,185,'2 strips');
INSERT INTO "meal_ingredient" VALUES(53046,75,'1 Stick');
INSERT INTO "meal_ingredient" VALUES(53046,112,'2');
INSERT INTO "meal_ingredient" VALUES(53046,111,'4');
INSERT INTO "meal_ingredient" VALUES(53046,330,'50g');
INSERT INTO "meal_ingredient" VALUES(53046,315,'500ml');
INSERT INTO "meal_ingredient" VALUES(53046,299,'Pod of');
INSERT INTO "meal_ingredient" VALUES(53081,236,'4');
INSERT INTO "meal_ingredient" VALUES(53081,42,'3');
INSERT INTO "meal_ingredient" VALUES(53081,260,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53081,512,'1/2 tbs');
INSERT INTO "meal_ingredient" VALUES(53081,112,'4');
INSERT INTO "meal_ingredient" VALUES(53081,262,'7 oz ');
INSERT INTO "meal_ingredient" VALUES(53081,103,'4 oz ');
INSERT INTO "meal_ingredient" VALUES(53081,226,'1 can ');
INSERT INTO "meal_ingredient" VALUES(53081,212,'4');
INSERT INTO "meal_ingredient" VALUES(53081,544,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52783,639,'2½ tbsp');
INSERT INTO "meal_ingredient" VALUES(52783,763,'6 cut into 1.5cm-thick slices');
INSERT INTO "meal_ingredient" VALUES(52783,628,'1 large peeled and chopped');
INSERT INTO "meal_ingredient" VALUES(52783,716,'1 trimmed and roughly chopped; reserve any fronds to garnish');
INSERT INTO "meal_ingredient" VALUES(52783,764,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52783,629,'1 clove, peeled and sliced');
INSERT INTO "meal_ingredient" VALUES(52783,765,'2 tsp lightly toasted and then gently crushed');
INSERT INTO "meal_ingredient" VALUES(52783,766,'100ml');
INSERT INTO "meal_ingredient" VALUES(52783,767,'400g tinned');
INSERT INTO "meal_ingredient" VALUES(52783,580,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52783,768,'50g cut in half lengthways');
INSERT INTO "meal_ingredient" VALUES(52783,769,'500g');
INSERT INTO "meal_ingredient" VALUES(52783,770,'30g roughly crumbled into 0.5cm pieces');
INSERT INTO "meal_ingredient" VALUES(52783,771,'1  rinsed and patted dry');
INSERT INTO "meal_ingredient" VALUES(52783,772,'50g torn');
INSERT INTO "meal_ingredient" VALUES(52786,199,'2 cups');
INSERT INTO "meal_ingredient" VALUES(52786,68,'3 cups');
INSERT INTO "meal_ingredient" VALUES(52786,223,'½ cup');
INSERT INTO "meal_ingredient" VALUES(52786,300,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52786,225,'1 ¼ cups');
INSERT INTO "meal_ingredient" VALUES(52809,191,'4');
INSERT INTO "meal_ingredient" VALUES(52809,773,'18 dried');
INSERT INTO "meal_ingredient" VALUES(52809,142,'1 inch');
INSERT INTO "meal_ingredient" VALUES(52809,137,'8 cloves');
INSERT INTO "meal_ingredient" VALUES(52809,229,'1.5 tsp');
INSERT INTO "meal_ingredient" VALUES(52809,94,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52809,296,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52809,606,'');
INSERT INTO "meal_ingredient" VALUES(52809,732,'4');
INSERT INTO "meal_ingredient" VALUES(52809,41,'2');
INSERT INTO "meal_ingredient" VALUES(52809,282,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52809,774,'2 marble sized');
INSERT INTO "meal_ingredient" VALUES(52809,308,'2.5 tbsp');
INSERT INTO "meal_ingredient" VALUES(52809,209,'for frying');
INSERT INTO "meal_ingredient" VALUES(52811,210,'5 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52811,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52811,670,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52811,48,'1 stalk chopped');
INSERT INTO "meal_ingredient" VALUES(52811,137,'1 tablespoon minced');
INSERT INTO "meal_ingredient" VALUES(52811,40,'2 cups');
INSERT INTO "meal_ingredient" VALUES(52811,775,'1');
INSERT INTO "meal_ingredient" VALUES(52811,309,'4 cups');
INSERT INTO "meal_ingredient" VALUES(52811,369,'1 fresh sprig');
INSERT INTO "meal_ingredient" VALUES(52811,290,'1 fresh sprig');
INSERT INTO "meal_ingredient" VALUES(52811,173,'1 pound chopped');
INSERT INTO "meal_ingredient" VALUES(52811,317,'4 thick slices');
INSERT INTO "meal_ingredient" VALUES(52811,776,'1 thinly sliced');
INSERT INTO "meal_ingredient" VALUES(52811,219,'½ cup freshly grated');
INSERT INTO "meal_ingredient" VALUES(52816,210,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52816,42,'2 small cut into chunks');
INSERT INTO "meal_ingredient" VALUES(52816,48,'2 small stalks');
INSERT INTO "meal_ingredient" VALUES(52816,340,'1 medium finely diced');
INSERT INTO "meal_ingredient" VALUES(52816,137,'6 medium cloves sliced');
INSERT INTO "meal_ingredient" VALUES(52816,33,'12 ounces (340g)');
INSERT INTO "meal_ingredient" VALUES(52816,17,'2');
INSERT INTO "meal_ingredient" VALUES(52816,309,'4 cups');
INSERT INTO "meal_ingredient" VALUES(52816,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52816,6,'2 teaspoons (10ml)');
INSERT INTO "meal_ingredient" VALUES(52816,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52816,108,'2 large');
INSERT INTO "meal_ingredient" VALUES(52816,369,'4 sprigs');
INSERT INTO "meal_ingredient" VALUES(52816,777,'1/4 cup ');
INSERT INTO "meal_ingredient" VALUES(52816,222,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52901,264,'225g');
INSERT INTO "meal_ingredient" VALUES(52901,45,'75g');
INSERT INTO "meal_ingredient" VALUES(52901,11,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52901,36,'125g');
INSERT INTO "meal_ingredient" VALUES(52901,448,'150g');
INSERT INTO "meal_ingredient" VALUES(52901,112,'1');
INSERT INTO "meal_ingredient" VALUES(52901,197,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52901,300,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52908,8,'2 large');
INSERT INTO "meal_ingredient" VALUES(52908,397,'4');
INSERT INTO "meal_ingredient" VALUES(52908,395,'2');
INSERT INTO "meal_ingredient" VALUES(52908,341,'4 large');
INSERT INTO "meal_ingredient" VALUES(52908,210,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(52908,13,'Bunch');
INSERT INTO "meal_ingredient" VALUES(52908,340,'1 medium');
INSERT INTO "meal_ingredient" VALUES(52908,138,'3 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52908,367,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52908,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52933,36,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52933,212,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52933,60,'4 qt ');
INSERT INTO "meal_ingredient" VALUES(52933,57,'1.5kg');
INSERT INTO "meal_ingredient" VALUES(52933,236,'4kg');
INSERT INTO "meal_ingredient" VALUES(52933,260,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52933,24,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(52941,406,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(52941,42,'1 large');
INSERT INTO "meal_ingredient" VALUES(52941,278,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52941,290,'4 sprigs');
INSERT INTO "meal_ingredient" VALUES(52941,340,'1 Diced');
INSERT INTO "meal_ingredient" VALUES(52941,24,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52941,245,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52941,138,'4 Mashed');
INSERT INTO "meal_ingredient" VALUES(52941,518,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52941,3,'2 Lbs');
INSERT INTO "meal_ingredient" VALUES(52941,309,'2L');
INSERT INTO "meal_ingredient" VALUES(52941,236,'4');
INSERT INTO "meal_ingredient" VALUES(52941,233,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52941,81,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52942,484,'6 small');
INSERT INTO "meal_ingredient" VALUES(52942,366,'4 small');
INSERT INTO "meal_ingredient" VALUES(52942,245,'1 thinly sliced');
INSERT INTO "meal_ingredient" VALUES(52942,397,'1 medium');
INSERT INTO "meal_ingredient" VALUES(52942,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52942,485,'300g');
INSERT INTO "meal_ingredient" VALUES(52942,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52942,256,'pinch');
INSERT INTO "meal_ingredient" VALUES(52942,314,'200ml');
INSERT INTO "meal_ingredient" VALUES(52942,304,'700ml');
INSERT INTO "meal_ingredient" VALUES(52942,472,'100g ');
INSERT INTO "meal_ingredient" VALUES(52942,183,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52942,222,'Handful');
INSERT INTO "meal_ingredient" VALUES(52942,260,'pinch');
INSERT INTO "meal_ingredient" VALUES(52942,24,'pinch');
INSERT INTO "meal_ingredient" VALUES(53020,59,'4 Chopped');
INSERT INTO "meal_ingredient" VALUES(53020,212,'2 large');
INSERT INTO "meal_ingredient" VALUES(53020,42,'5 chopped');
INSERT INTO "meal_ingredient" VALUES(53020,182,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53020,48,'1 small');
INSERT INTO "meal_ingredient" VALUES(53020,411,'1/4 ');
INSERT INTO "meal_ingredient" VALUES(53020,77,'1 whole');
INSERT INTO "meal_ingredient" VALUES(53020,518,'1tsp');
INSERT INTO "meal_ingredient" VALUES(53020,16,'2');
INSERT INTO "meal_ingredient" VALUES(53020,222,'4 sprigs');
INSERT INTO "meal_ingredient" VALUES(53020,103,'4 sprigs');
INSERT INTO "meal_ingredient" VALUES(53020,229,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53020,260,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53024,36,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53024,111,'3');
INSERT INTO "meal_ingredient" VALUES(53024,322,'8 oz ');
INSERT INTO "meal_ingredient" VALUES(53024,11,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53024,125,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(53024,566,'1 Jar');
INSERT INTO "meal_ingredient" VALUES(53052,360,'1/4 lb');
INSERT INTO "meal_ingredient" VALUES(53052,340,'1');
INSERT INTO "meal_ingredient" VALUES(53052,112,'3');
INSERT INTO "meal_ingredient" VALUES(53052,65,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53052,415,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(53052,260,'To taste');
INSERT INTO "meal_ingredient" VALUES(53052,229,'To taste');
INSERT INTO "meal_ingredient" VALUES(53052,544,'Top');
INSERT INTO "meal_ingredient" VALUES(52770,705,'2');
INSERT INTO "meal_ingredient" VALUES(52770,639,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(52770,629,'1 clove');
INSERT INTO "meal_ingredient" VALUES(52770,778,'500g');
INSERT INTO "meal_ingredient" VALUES(52770,599,'90g');
INSERT INTO "meal_ingredient" VALUES(52770,779,'1tsp');
INSERT INTO "meal_ingredient" VALUES(52770,713,'400g can');
INSERT INTO "meal_ingredient" VALUES(52770,780,'300ml');
INSERT INTO "meal_ingredient" VALUES(52770,658,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(52770,781,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(52770,782,'350g');
INSERT INTO "meal_ingredient" VALUES(52770,783,'Topping');
INSERT INTO "meal_ingredient" VALUES(52771,784,'1 pound');
INSERT INTO "meal_ingredient" VALUES(52771,639,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52771,629,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52771,767,'1 tin ');
INSERT INTO "meal_ingredient" VALUES(52771,785,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52771,786,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52771,701,'6 leaves');
INSERT INTO "meal_ingredient" VALUES(52771,787,'sprinkling');
INSERT INTO "meal_ingredient" VALUES(52784,210,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52784,340,'1');
INSERT INTO "meal_ingredient" VALUES(52784,182,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52784,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52784,94,'4 tsp ground ');
INSERT INTO "meal_ingredient" VALUES(52784,85,'2 tsp ground');
INSERT INTO "meal_ingredient" VALUES(52784,271,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52784,75,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52784,63,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52784,79,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52784,106,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52784,101,'1 can');
INSERT INTO "meal_ingredient" VALUES(52784,309,'3 cups');
INSERT INTO "meal_ingredient" VALUES(52784,42,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(52784,33,'1 1/2 cups');
INSERT INTO "meal_ingredient" VALUES(52784,263,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52784,279,'1 Small');
INSERT INTO "meal_ingredient" VALUES(52784,44,'1 Cup');
INSERT INTO "meal_ingredient" VALUES(52784,6,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52793,788,'225g');
INSERT INTO "meal_ingredient" VALUES(52793,760,'175ml Boiling');
INSERT INTO "meal_ingredient" VALUES(52793,789,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52793,790,'175g');
INSERT INTO "meal_ingredient" VALUES(52793,791,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52793,596,'2');
INSERT INTO "meal_ingredient" VALUES(52793,577,'85g');
INSERT INTO "meal_ingredient" VALUES(52793,792,'140g');
INSERT INTO "meal_ingredient" VALUES(52793,793,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52793,594,'100ml');
INSERT INTO "meal_ingredient" VALUES(52793,794,'1 scoop');
INSERT INTO "meal_ingredient" VALUES(52793,795,'175g');
INSERT INTO "meal_ingredient" VALUES(52793,595,'225ml');
INSERT INTO "meal_ingredient" VALUES(52797,270,'650g/1lb 8 oz');
INSERT INTO "meal_ingredient" VALUES(52797,161,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52797,639,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52797,183,'juice of half');
INSERT INTO "meal_ingredient" VALUES(52797,796,'4');
INSERT INTO "meal_ingredient" VALUES(52797,254,'150g/6oz');
INSERT INTO "meal_ingredient" VALUES(52797,121,'80g/3oz');
INSERT INTO "meal_ingredient" VALUES(52797,200,'20 chopped');
INSERT INTO "meal_ingredient" VALUES(52797,777,'2 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52797,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52797,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52817,210,'4 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52817,108,'6 small');
INSERT INTO "meal_ingredient" VALUES(52817,797,'½ tablespoon');
INSERT INTO "meal_ingredient" VALUES(52817,62,'1 can');
INSERT INTO "meal_ingredient" VALUES(52817,55,'2 cups halved');
INSERT INTO "meal_ingredient" VALUES(52817,734,'1 1/2 cups');
INSERT INTO "meal_ingredient" VALUES(52817,798,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52817,222,'½ cup ');
INSERT INTO "meal_ingredient" VALUES(52823,577,'50g/2oz');
INSERT INTO "meal_ingredient" VALUES(52823,628,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52823,799,'150g');
INSERT INTO "meal_ingredient" VALUES(52823,631,'125ml ');
INSERT INTO "meal_ingredient" VALUES(52823,800,'1 litre hot');
INSERT INTO "meal_ingredient" VALUES(52823,653,'The juice and zest of one');
INSERT INTO "meal_ingredient" VALUES(52823,175,'240g large');
INSERT INTO "meal_ingredient" VALUES(52823,801,'150g');
INSERT INTO "meal_ingredient" VALUES(52823,802,'100g tips blanched briefly in boiling water');
INSERT INTO "meal_ingredient" VALUES(52823,697,'ground');
INSERT INTO "meal_ingredient" VALUES(52823,219,'50g shavings');
INSERT INTO "meal_ingredient" VALUES(52833,102,'250g');
INSERT INTO "meal_ingredient" VALUES(52833,321,'75g');
INSERT INTO "meal_ingredient" VALUES(52833,36,'135g');
INSERT INTO "meal_ingredient" VALUES(52833,322,'450g');
INSERT INTO "meal_ingredient" VALUES(52833,300,'1tsp');
INSERT INTO "meal_ingredient" VALUES(52833,323,'100g ');
INSERT INTO "meal_ingredient" VALUES(52833,325,'150g');
INSERT INTO "meal_ingredient" VALUES(52833,263,'1tsp');
INSERT INTO "meal_ingredient" VALUES(52833,105,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52833,326,'drizzle');
INSERT INTO "meal_ingredient" VALUES(52833,324,'Top');
INSERT INTO "meal_ingredient" VALUES(52836,331,'400g');
INSERT INTO "meal_ingredient" VALUES(52836,237,'8');
INSERT INTO "meal_ingredient" VALUES(52836,256,'2 pinches');
INSERT INTO "meal_ingredient" VALUES(52836,803,'350g');
INSERT INTO "meal_ingredient" VALUES(52836,210,'5 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52836,212,'1 large');
INSERT INTO "meal_ingredient" VALUES(52836,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52836,217,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52836,333,'1 tail');
INSERT INTO "meal_ingredient" VALUES(52836,335,'4');
INSERT INTO "meal_ingredient" VALUES(52836,337,'650ml');
INSERT INTO "meal_ingredient" VALUES(52836,293,'2 large');
INSERT INTO "meal_ingredient" VALUES(52836,183,'Juice of 1');
INSERT INTO "meal_ingredient" VALUES(52836,222,'Topping');
INSERT INTO "meal_ingredient" VALUES(52849,210,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52849,137,'8 cloves chopped');
INSERT INTO "meal_ingredient" VALUES(52849,45,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52849,367,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52849,71,'3 400g Cans');
INSERT INTO "meal_ingredient" VALUES(52849,14,'Bunch');
INSERT INTO "meal_ingredient" VALUES(52849,373,'2 tubs');
INSERT INTO "meal_ingredient" VALUES(52849,197,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52849,219,'85g');
INSERT INTO "meal_ingredient" VALUES(52849,374,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52849,277,'1kg');
INSERT INTO "meal_ingredient" VALUES(52849,375,'3 tubs');
INSERT INTO "meal_ingredient" VALUES(52849,208,'pinch');
INSERT INTO "meal_ingredient" VALUES(52849,40,'400g');
INSERT INTO "meal_ingredient" VALUES(52866,358,'350g');
INSERT INTO "meal_ingredient" VALUES(52866,137,'3 parts ');
INSERT INTO "meal_ingredient" VALUES(52866,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52866,347,'350g');
INSERT INTO "meal_ingredient" VALUES(52866,257,'Small bunch');
INSERT INTO "meal_ingredient" VALUES(52872,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52872,210,'4 tbsp');
INSERT INTO "meal_ingredient" VALUES(52872,36,'25g');
INSERT INTO "meal_ingredient" VALUES(52872,236,'400g');
INSERT INTO "meal_ingredient" VALUES(52872,137,'6 cloves');
INSERT INTO "meal_ingredient" VALUES(52872,112,'8');
INSERT INTO "meal_ingredient" VALUES(52872,222,'Handful');
INSERT INTO "meal_ingredient" VALUES(52872,415,'1');
INSERT INTO "meal_ingredient" VALUES(52872,416,'4');
INSERT INTO "meal_ingredient" VALUES(52881,238,'300g');
INSERT INTO "meal_ingredient" VALUES(52881,110,'Beaten');
INSERT INTO "meal_ingredient" VALUES(52881,111,'Beaten');
INSERT INTO "meal_ingredient" VALUES(52881,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52881,3,'70 ml ');
INSERT INTO "meal_ingredient" VALUES(52881,423,'200g');
INSERT INTO "meal_ingredient" VALUES(52881,212,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52881,233,'30g');
INSERT INTO "meal_ingredient" VALUES(52881,21,'85 ml ');
INSERT INTO "meal_ingredient" VALUES(52881,260,'pinch');
INSERT INTO "meal_ingredient" VALUES(52881,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52881,318,'Dash');
INSERT INTO "meal_ingredient" VALUES(52883,36,'100g ');
INSERT INTO "meal_ingredient" VALUES(52883,203,'175g');
INSERT INTO "meal_ingredient" VALUES(52883,112,'2 large');
INSERT INTO "meal_ingredient" VALUES(52883,264,'225g');
INSERT INTO "meal_ingredient" VALUES(52883,11,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52883,22,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52883,25,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52883,197,'275ml');
INSERT INTO "meal_ingredient" VALUES(52883,105,'to serve');
INSERT INTO "meal_ingredient" VALUES(52883,300,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52886,264,'250g');
INSERT INTO "meal_ingredient" VALUES(52886,260,'pinch');
INSERT INTO "meal_ingredient" VALUES(52886,417,'125g');
INSERT INTO "meal_ingredient" VALUES(52886,429,'175g');
INSERT INTO "meal_ingredient" VALUES(52886,45,'80g');
INSERT INTO "meal_ingredient" VALUES(52886,183,'Zest of 1');
INSERT INTO "meal_ingredient" VALUES(52886,213,'Zest of 1');
INSERT INTO "meal_ingredient" VALUES(52886,197,'150ml');
INSERT INTO "meal_ingredient" VALUES(52886,430,'to serve');
INSERT INTO "meal_ingredient" VALUES(52889,281,'300g');
INSERT INTO "meal_ingredient" VALUES(52889,433,'250g');
INSERT INTO "meal_ingredient" VALUES(52889,432,'100g ');
INSERT INTO "meal_ingredient" VALUES(52889,379,'500g');
INSERT INTO "meal_ingredient" VALUES(52889,45,'175g');
INSERT INTO "meal_ingredient" VALUES(52889,30,'7 Slices');
INSERT INTO "meal_ingredient" VALUES(52911,353,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52911,182,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52911,397,'1 large');
INSERT INTO "meal_ingredient" VALUES(52911,304,'1L');
INSERT INTO "meal_ingredient" VALUES(52911,40,'400g');
INSERT INTO "meal_ingredient" VALUES(52911,151,'200g');
INSERT INTO "meal_ingredient" VALUES(52911,293,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(52911,138,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(52911,13,'Small pack');
INSERT INTO "meal_ingredient" VALUES(52911,219,'40g');
INSERT INTO "meal_ingredient" VALUES(52925,419,'1kg');
INSERT INTO "meal_ingredient" VALUES(52925,226,'200g (soaked overnight)');
INSERT INTO "meal_ingredient" VALUES(52925,212,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52925,42,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52925,17,'2');
INSERT INTO "meal_ingredient" VALUES(52925,48,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52925,472,'300g');
INSERT INTO "meal_ingredient" VALUES(52925,30,'to serve');
INSERT INTO "meal_ingredient" VALUES(52931,35,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(52931,36,'¼ cup');
INSERT INTO "meal_ingredient" VALUES(52931,112,'2');
INSERT INTO "meal_ingredient" VALUES(52931,300,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52931,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52931,233,'½ cup ');
INSERT INTO "meal_ingredient" VALUES(52931,197,'1 1/2 cups ');
INSERT INTO "meal_ingredient" VALUES(52935,478,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52935,19,'4');
INSERT INTO "meal_ingredient" VALUES(52935,21,'1 1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52935,36,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52935,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52935,50,'1 medium finely diced');
INSERT INTO "meal_ingredient" VALUES(52935,204,'4 oz ');
INSERT INTO "meal_ingredient" VALUES(52935,29,'¼ cup');
INSERT INTO "meal_ingredient" VALUES(52935,162,'¼ cup');
INSERT INTO "meal_ingredient" VALUES(52935,476,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52935,318,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52935,477,'Dash');
INSERT INTO "meal_ingredient" VALUES(52935,222,'1 tbs minced');
INSERT INTO "meal_ingredient" VALUES(52935,465,'1 tbs minced');
INSERT INTO "meal_ingredient" VALUES(52935,260,'to taste');
INSERT INTO "meal_ingredient" VALUES(52935,229,'to taste');
INSERT INTO "meal_ingredient" VALUES(52936,480,'450g');
INSERT INTO "meal_ingredient" VALUES(52936,481,'400g');
INSERT INTO "meal_ingredient" VALUES(52936,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52936,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52936,96,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52936,172,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52936,166,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52936,245,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52936,395,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52936,293,'200g');
INSERT INTO "meal_ingredient" VALUES(52936,260,'to taste');
INSERT INTO "meal_ingredient" VALUES(52936,229,'to taste');
INSERT INTO "meal_ingredient" VALUES(52936,264,'250g');
INSERT INTO "meal_ingredient" VALUES(52936,417,'30g');
INSERT INTO "meal_ingredient" VALUES(52936,210,'for frying');
INSERT INTO "meal_ingredient" VALUES(52949,4,'200g');
INSERT INTO "meal_ingredient" VALUES(52949,454,'1');
INSERT INTO "meal_ingredient" VALUES(52949,309,'Dash');
INSERT INTO "meal_ingredient" VALUES(52949,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52949,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52949,274,'10g');
INSERT INTO "meal_ingredient" VALUES(52949,499,'10g');
INSERT INTO "meal_ingredient" VALUES(52949,292,'30g');
INSERT INTO "meal_ingredient" VALUES(52949,308,'10g');
INSERT INTO "meal_ingredient" VALUES(52949,85,'Dash');
INSERT INTO "meal_ingredient" VALUES(52950,3,'1/2 lb');
INSERT INTO "meal_ingredient" VALUES(52950,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52950,414,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52950,229,'1 pinch');
INSERT INTO "meal_ingredient" VALUES(52950,110,'1');
INSERT INTO "meal_ingredient" VALUES(52950,499,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52950,209,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52950,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52950,137,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52950,340,'3/4 cup ');
INSERT INTO "meal_ingredient" VALUES(52950,42,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52950,396,'3/4 cup ');
INSERT INTO "meal_ingredient" VALUES(52950,48,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52950,204,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52950,501,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52950,309,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52950,216,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52950,166,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(52950,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52950,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52953,251,'1/2 bag');
INSERT INTO "meal_ingredient" VALUES(52953,237,'8 oz ');
INSERT INTO "meal_ingredient" VALUES(52953,454,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(52953,229,'pinch');
INSERT INTO "meal_ingredient" VALUES(52953,414,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52953,89,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52953,209,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52953,198,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52953,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52953,340,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52953,504,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52953,278,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(52953,501,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52953,216,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52953,282,'1/2 tbs');
INSERT INTO "meal_ingredient" VALUES(52953,308,'1/2 tbs');
INSERT INTO "meal_ingredient" VALUES(52953,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52960,2,'400g');
INSERT INTO "meal_ingredient" VALUES(52960,5,'3');
INSERT INTO "meal_ingredient" VALUES(52960,93,'1');
INSERT INTO "meal_ingredient" VALUES(52960,277,'400g');
INSERT INTO "meal_ingredient" VALUES(52960,200,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(52960,188,'zest and juice of 1');
INSERT INTO "meal_ingredient" VALUES(52960,163,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52960,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52962,112,'4');
INSERT INTO "meal_ingredient" VALUES(52962,512,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52962,510,'2');
INSERT INTO "meal_ingredient" VALUES(52962,36,'To serve');
INSERT INTO "meal_ingredient" VALUES(52962,513,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52962,184,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52962,454,'3 Yolkes');
INSERT INTO "meal_ingredient" VALUES(52962,462,'125g');
INSERT INTO "meal_ingredient" VALUES(52963,210,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52963,244,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(52963,242,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52963,137,'1 clove');
INSERT INTO "meal_ingredient" VALUES(52963,85,'Chopped');
INSERT INTO "meal_ingredient" VALUES(52963,55,'800g');
INSERT INTO "meal_ingredient" VALUES(52963,45,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52963,112,'4');
INSERT INTO "meal_ingredient" VALUES(52963,121,'Spinkling');
INSERT INTO "meal_ingredient" VALUES(52964,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52964,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52964,41,'3 Pods');
INSERT INTO "meal_ingredient" VALUES(52964,296,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(52964,76,'1 small');
INSERT INTO "meal_ingredient" VALUES(52964,16,'Sprigs of fresh');
INSERT INTO "meal_ingredient" VALUES(52964,15,'450g');
INSERT INTO "meal_ingredient" VALUES(52964,60,'1 Litre');
INSERT INTO "meal_ingredient" VALUES(52964,426,'750g');
INSERT INTO "meal_ingredient" VALUES(52964,112,'3');
INSERT INTO "meal_ingredient" VALUES(52964,222,'3 tblsp chopped');
INSERT INTO "meal_ingredient" VALUES(52964,183,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52980,236,'1.5kg');
INSERT INTO "meal_ingredient" VALUES(52980,16,'2 leaves');
INSERT INTO "meal_ingredient" VALUES(52980,267,'2');
INSERT INTO "meal_ingredient" VALUES(52980,36,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52980,173,'750g');
INSERT INTO "meal_ingredient" VALUES(52980,262,'2');
INSERT INTO "meal_ingredient" VALUES(52980,197,'500ml');
INSERT INTO "meal_ingredient" VALUES(52980,208,'Grated');
INSERT INTO "meal_ingredient" VALUES(52980,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52980,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52981,309,'2L');
INSERT INTO "meal_ingredient" VALUES(52981,226,'300g');
INSERT INTO "meal_ingredient" VALUES(52981,4,'100g ');
INSERT INTO "meal_ingredient" VALUES(52981,305,'1');
INSERT INTO "meal_ingredient" VALUES(52981,48,'2');
INSERT INTO "meal_ingredient" VALUES(52981,42,'2');
INSERT INTO "meal_ingredient" VALUES(52981,236,'1 large');
INSERT INTO "meal_ingredient" VALUES(52981,340,'1 small');
INSERT INTO "meal_ingredient" VALUES(52981,182,'1 small');
INSERT INTO "meal_ingredient" VALUES(52981,47,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(52981,262,'1 pound');
INSERT INTO "meal_ingredient" VALUES(52982,276,'320g');
INSERT INTO "meal_ingredient" VALUES(52982,111,'6');
INSERT INTO "meal_ingredient" VALUES(52982,260,'As required');
INSERT INTO "meal_ingredient" VALUES(52982,10,'150g');
INSERT INTO "meal_ingredient" VALUES(52982,227,'50g');
INSERT INTO "meal_ingredient" VALUES(52982,24,'As required');
INSERT INTO "meal_ingredient" VALUES(52992,236,'5');
INSERT INTO "meal_ingredient" VALUES(52992,42,'12 ounces');
INSERT INTO "meal_ingredient" VALUES(52992,496,'1');
INSERT INTO "meal_ingredient" VALUES(52992,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(52992,30,'1 Slice');
INSERT INTO "meal_ingredient" VALUES(52992,139,'1');
INSERT INTO "meal_ingredient" VALUES(52992,274,'2');
INSERT INTO "meal_ingredient" VALUES(52992,483,'1');
INSERT INTO "meal_ingredient" VALUES(52992,303,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52992,282,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52992,36,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(52994,236,'2');
INSERT INTO "meal_ingredient" VALUES(52994,459,'1');
INSERT INTO "meal_ingredient" VALUES(52994,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(52994,183,'1');
INSERT INTO "meal_ingredient" VALUES(52994,4,'2');
INSERT INTO "meal_ingredient" VALUES(52994,320,'1');
INSERT INTO "meal_ingredient" VALUES(52994,60,'1');
INSERT INTO "meal_ingredient" VALUES(52994,303,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52994,282,'1 1/2 tsp ');
INSERT INTO "meal_ingredient" VALUES(52994,36,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(53005,125,'350g');
INSERT INTO "meal_ingredient" VALUES(53005,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53005,282,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53005,36,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53005,309,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53005,546,'450g');
INSERT INTO "meal_ingredient" VALUES(53005,281,'450g');
INSERT INTO "meal_ingredient" VALUES(53005,89,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53005,75,'1/4 tsp');
INSERT INTO "meal_ingredient" VALUES(53005,184,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53005,462,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53005,197,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53008,293,'4 large');
INSERT INTO "meal_ingredient" VALUES(53008,282,'Pinch');
INSERT INTO "meal_ingredient" VALUES(53008,210,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53008,340,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(53008,138,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(53008,177,'200g');
INSERT INTO "meal_ingredient" VALUES(53008,75,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53008,292,'2 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(53008,249,'50g');
INSERT INTO "meal_ingredient" VALUES(53008,60,'100ml');
INSERT INTO "meal_ingredient" VALUES(53008,103,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53008,70,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53008,200,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53023,565,'8');
INSERT INTO "meal_ingredient" VALUES(53023,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(53023,210,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53023,518,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53023,229,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53023,16,'1');
INSERT INTO "meal_ingredient" VALUES(53028,61,'1 kg');
INSERT INTO "meal_ingredient" VALUES(53028,85,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53028,94,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53028,41,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53028,46,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53028,217,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(53028,184,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53028,210,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53028,150,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53028,138,'1');
INSERT INTO "meal_ingredient" VALUES(53028,187,'Sliced');
INSERT INTO "meal_ingredient" VALUES(53028,341,'Sliced');
INSERT INTO "meal_ingredient" VALUES(53028,547,'6');
INSERT INTO "meal_ingredient" VALUES(53040,278,'1  bunch');
INSERT INTO "meal_ingredient" VALUES(53040,210,'Dash');
INSERT INTO "meal_ingredient" VALUES(53040,242,'1 finely sliced');
INSERT INTO "meal_ingredient" VALUES(53040,137,'1 clove');
INSERT INTO "meal_ingredient" VALUES(53040,237,'350g');
INSERT INTO "meal_ingredient" VALUES(53040,121,'75g');
INSERT INTO "meal_ingredient" VALUES(53040,36,'15g');
INSERT INTO "meal_ingredient" VALUES(53040,233,'250g');
INSERT INTO "meal_ingredient" VALUES(53040,454,'1 Seperated');
INSERT INTO "meal_ingredient" VALUES(53040,512,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53054,249,'400g');
INSERT INTO "meal_ingredient" VALUES(53054,81,'150ml');
INSERT INTO "meal_ingredient" VALUES(53054,309,'100ml');
INSERT INTO "meal_ingredient" VALUES(53054,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53054,330,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(53054,125,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53054,112,'3');
INSERT INTO "meal_ingredient" VALUES(53054,80,'200ml');
INSERT INTO "meal_ingredient" VALUES(53054,282,'140g');
INSERT INTO "meal_ingredient" VALUES(53065,568,'300ml ');
INSERT INTO "meal_ingredient" VALUES(53065,500,'100ml');
INSERT INTO "meal_ingredient" VALUES(53065,45,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53065,544,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53065,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53065,93,'1');
INSERT INTO "meal_ingredient" VALUES(53067,396,'4 whole');
INSERT INTO "meal_ingredient" VALUES(53067,210,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(53067,340,'1 small finely diced');
INSERT INTO "meal_ingredient" VALUES(53067,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(53067,549,'1 cups');
INSERT INTO "meal_ingredient" VALUES(53067,522,'1 can ');
INSERT INTO "meal_ingredient" VALUES(53067,363,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53067,101,'1 can ');
INSERT INTO "meal_ingredient" VALUES(53067,94,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(53067,63,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(53067,271,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(53067,260,'To taste');
INSERT INTO "meal_ingredient" VALUES(53067,229,'To taste');
INSERT INTO "meal_ingredient" VALUES(53067,268,'1 1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53067,74,'Chopped');
INSERT INTO "meal_ingredient" VALUES(53082,281,'2 pint ');
INSERT INTO "meal_ingredient" VALUES(53082,282,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53082,528,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53082,90,'1 cup ');
INSERT INTO "meal_ingredient" VALUES(53082,273,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52772,709,'3/4 cup');
INSERT INTO "meal_ingredient" VALUES(52772,760,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(52772,804,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52772,805,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52772,806,'1/2 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52772,807,'4 Tablespoons');
INSERT INTO "meal_ingredient" VALUES(52772,610,'2');
INSERT INTO "meal_ingredient" VALUES(52772,808,'1 (12 oz.)');
INSERT INTO "meal_ingredient" VALUES(52772,809,'3 cups');
INSERT INTO "meal_ingredient" VALUES(52806,810,'2 Juice');
INSERT INTO "meal_ingredient" VALUES(52806,694,'4 tsp');
INSERT INTO "meal_ingredient" VALUES(52806,811,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52806,812,'16 skinnless');
INSERT INTO "meal_ingredient" VALUES(52806,646,'For brushing');
INSERT INTO "meal_ingredient" VALUES(52806,734,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52806,712,'large piece');
INSERT INTO "meal_ingredient" VALUES(52806,813,'4');
INSERT INTO "meal_ingredient" VALUES(52806,711,'¾ tsp');
INSERT INTO "meal_ingredient" VALUES(52806,814,'¾ tsp');
INSERT INTO "meal_ingredient" VALUES(52806,815,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52806,816,'¼ tsp');
INSERT INTO "meal_ingredient" VALUES(52814,817,'225g new');
INSERT INTO "meal_ingredient" VALUES(52814,818,'100g ');
INSERT INTO "meal_ingredient" VALUES(52814,603,'1 tbsp');
INSERT INTO "meal_ingredient" VALUES(52814,629,'1 clove');
INSERT INTO "meal_ingredient" VALUES(52814,819,'4 tsp ');
INSERT INTO "meal_ingredient" VALUES(52814,738,'400ml');
INSERT INTO "meal_ingredient" VALUES(52814,820,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52814,282,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52814,1,'450g boneless');
INSERT INTO "meal_ingredient" VALUES(52814,741,'2 fresh kaffir leaves');
INSERT INTO "meal_ingredient" VALUES(52814,701,'handfull');
INSERT INTO "meal_ingredient" VALUES(52814,249,'Boiled');
INSERT INTO "meal_ingredient" VALUES(52822,821,'8');
INSERT INTO "meal_ingredient" VALUES(52822,646,'3 tbsp');
INSERT INTO "meal_ingredient" VALUES(52822,586,'100g');
INSERT INTO "meal_ingredient" VALUES(52822,596,'2 medium');
INSERT INTO "meal_ingredient" VALUES(52822,822,'1 tbsp grated');
INSERT INTO "meal_ingredient" VALUES(52822,594,'225ml');
INSERT INTO "meal_ingredient" VALUES(52822,823,'200g');
INSERT INTO "meal_ingredient" VALUES(52845,210,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52845,340,'1 large');
INSERT INTO "meal_ingredient" VALUES(52845,137,'1 clove peeled crushed');
INSERT INTO "meal_ingredient" VALUES(52845,318,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52845,292,'3 tsp');
INSERT INTO "meal_ingredient" VALUES(52845,361,'500g');
INSERT INTO "meal_ingredient" VALUES(52845,112,'1 large');
INSERT INTO "meal_ingredient" VALUES(52845,31,'85g');
INSERT INTO "meal_ingredient" VALUES(52845,362,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52845,40,'800g');
INSERT INTO "meal_ingredient" VALUES(52845,222,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52852,236,'450g');
INSERT INTO "meal_ingredient" VALUES(52852,210,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52852,112,'4');
INSERT INTO "meal_ingredient" VALUES(52852,367,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52852,377,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52852,284,'50g');
INSERT INTO "meal_ingredient" VALUES(52852,244,'½');
INSERT INTO "meal_ingredient" VALUES(52852,277,'100g ');
INSERT INTO "meal_ingredient" VALUES(52852,295,'400g');
INSERT INTO "meal_ingredient" VALUES(52869,408,'50g');
INSERT INTO "meal_ingredient" VALUES(52869,183,'zest and juice of 1');
INSERT INTO "meal_ingredient" VALUES(52869,210,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52869,244,'1 chopped');
INSERT INTO "meal_ingredient" VALUES(52869,137,'1 clove peeled crushed');
INSERT INTO "meal_ingredient" VALUES(52869,395,'1 thinly sliced');
INSERT INTO "meal_ingredient" VALUES(52869,151,'200g');
INSERT INTO "meal_ingredient" VALUES(52869,397,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52869,173,'100g shredded');
INSERT INTO "meal_ingredient" VALUES(52869,404,'250g pack');
INSERT INTO "meal_ingredient" VALUES(52882,236,'1kg');
INSERT INTO "meal_ingredient" VALUES(52882,36,'Knob');
INSERT INTO "meal_ingredient" VALUES(52882,197,'Dash');
INSERT INTO "meal_ingredient" VALUES(52882,159,'50g');
INSERT INTO "meal_ingredient" VALUES(52882,182,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52882,233,'75g');
INSERT INTO "meal_ingredient" VALUES(52882,314,'150ml');
INSERT INTO "meal_ingredient" VALUES(52882,222,'2 tbs chopped');
INSERT INTO "meal_ingredient" VALUES(52882,2,'250g');
INSERT INTO "meal_ingredient" VALUES(52882,425,'250g');
INSERT INTO "meal_ingredient" VALUES(52882,426,'250g');
INSERT INTO "meal_ingredient" VALUES(52882,112,'6');
INSERT INTO "meal_ingredient" VALUES(52892,233,'250g');
INSERT INTO "meal_ingredient" VALUES(52892,36,'135g');
INSERT INTO "meal_ingredient" VALUES(52892,146,'400g');
INSERT INTO "meal_ingredient" VALUES(52892,31,'150g');
INSERT INTO "meal_ingredient" VALUES(52892,186,'Zest of 2');
INSERT INTO "meal_ingredient" VALUES(52892,112,'1 beaten');
INSERT INTO "meal_ingredient" VALUES(52909,238,'300g');
INSERT INTO "meal_ingredient" VALUES(52909,233,'Dusting');
INSERT INTO "meal_ingredient" VALUES(52909,435,'6');
INSERT INTO "meal_ingredient" VALUES(52909,45,'100g ');
INSERT INTO "meal_ingredient" VALUES(52909,36,'85g');
INSERT INTO "meal_ingredient" VALUES(52909,91,'to serve');
INSERT INTO "meal_ingredient" VALUES(52912,36,'50g');
INSERT INTO "meal_ingredient" VALUES(52912,219,'25g');
INSERT INTO "meal_ingredient" VALUES(52912,197,'300ml ');
INSERT INTO "meal_ingredient" VALUES(52912,17,'2');
INSERT INTO "meal_ingredient" VALUES(52912,233,'5 tbs');
INSERT INTO "meal_ingredient" VALUES(52912,114,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52912,46,'Pod of');
INSERT INTO "meal_ingredient" VALUES(52912,159,'140g');
INSERT INTO "meal_ingredient" VALUES(52912,112,'3');
INSERT INTO "meal_ingredient" VALUES(52912,460,'8 slices');
INSERT INTO "meal_ingredient" VALUES(52912,105,'150ml');
INSERT INTO "meal_ingredient" VALUES(52912,277,'to serve');
INSERT INTO "meal_ingredient" VALUES(52926,236,'1 medium');
INSERT INTO "meal_ingredient" VALUES(52926,284,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52926,473,'500g');
INSERT INTO "meal_ingredient" VALUES(52926,340,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52926,138,'1 finely chopped ');
INSERT INTO "meal_ingredient" VALUES(52926,75,'¼ tsp');
INSERT INTO "meal_ingredient" VALUES(52926,518,'¼ tsp');
INSERT INTO "meal_ingredient" VALUES(52926,208,'¼ tsp');
INSERT INTO "meal_ingredient" VALUES(52926,304,'100ml');
INSERT INTO "meal_ingredient" VALUES(52926,390,'400g');
INSERT INTO "meal_ingredient" VALUES(52926,454,'To Glaze');
INSERT INTO "meal_ingredient" VALUES(52929,125,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(52929,282,'1/3 cup');
INSERT INTO "meal_ingredient" VALUES(52929,11,'3 tsp');
INSERT INTO "meal_ingredient" VALUES(52929,260,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52929,454,'1 beaten');
INSERT INTO "meal_ingredient" VALUES(52929,197,'¾ cup');
INSERT INTO "meal_ingredient" VALUES(52929,209,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52929,323,'garnish');
INSERT INTO "meal_ingredient" VALUES(52970,213,'1 large');
INSERT INTO "meal_ingredient" VALUES(52970,45,'300g');
INSERT INTO "meal_ingredient" VALUES(52970,210,'75 ml ');
INSERT INTO "meal_ingredient" VALUES(52970,125,'280g');
INSERT INTO "meal_ingredient" VALUES(52970,11,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52970,112,'4 large');
INSERT INTO "meal_ingredient" VALUES(52970,300,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52972,179,'500g');
INSERT INTO "meal_ingredient" VALUES(52972,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52972,340,'1');
INSERT INTO "meal_ingredient" VALUES(52972,277,'300g');
INSERT INTO "meal_ingredient" VALUES(52972,292,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(52972,94,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52972,60,'1 Litre');
INSERT INTO "meal_ingredient" VALUES(52972,161,'3 tsp');
INSERT INTO "meal_ingredient" VALUES(52972,62,'400g');
INSERT INTO "meal_ingredient" VALUES(52972,184,'1/2 ');
INSERT INTO "meal_ingredient" VALUES(52972,190,'150g');
INSERT INTO "meal_ingredient" VALUES(52972,260,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52972,229,'Pinch');
INSERT INTO "meal_ingredient" VALUES(52975,210,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52975,278,'8');
INSERT INTO "meal_ingredient" VALUES(52975,277,'200g');
INSERT INTO "meal_ingredient" VALUES(52975,525,'4');
INSERT INTO "meal_ingredient" VALUES(52975,295,'1 can ');
INSERT INTO "meal_ingredient" VALUES(52975,112,'2');
INSERT INTO "meal_ingredient" VALUES(52975,166,'Dash');
INSERT INTO "meal_ingredient" VALUES(52975,293,'4 Chopped');
INSERT INTO "meal_ingredient" VALUES(52975,93,'1/4 ');
INSERT INTO "meal_ingredient" VALUES(52975,184,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52975,440,'4 tbs');
INSERT INTO "meal_ingredient" VALUES(53026,488,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(53026,278,'6');
INSERT INTO "meal_ingredient" VALUES(53026,138,'4');
INSERT INTO "meal_ingredient" VALUES(53026,222,'1/4 cup');
INSERT INTO "meal_ingredient" VALUES(53026,94,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(53026,11,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53026,46,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53026,125,'Spinkling');
INSERT INTO "meal_ingredient" VALUES(53026,303,'As required');
INSERT INTO "meal_ingredient" VALUES(53032,538,'4');
INSERT INTO "meal_ingredient" VALUES(53032,125,'100g ');
INSERT INTO "meal_ingredient" VALUES(53032,112,'2 Beaten ');
INSERT INTO "meal_ingredient" VALUES(53032,31,'100g ');
INSERT INTO "meal_ingredient" VALUES(53032,303,'Fry');
INSERT INTO "meal_ingredient" VALUES(53032,291,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53032,318,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53032,216,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(53032,45,'2 tblsp ');
INSERT INTO "meal_ingredient" VALUES(53057,3,'500g');
INSERT INTO "meal_ingredient" VALUES(53057,212,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(53057,42,'2 chopped');
INSERT INTO "meal_ingredient" VALUES(53057,137,'2 cloves');
INSERT INTO "meal_ingredient" VALUES(53057,16,'2');
INSERT INTO "meal_ingredient" VALUES(53057,247,'200ml');
INSERT INTO "meal_ingredient" VALUES(53057,309,'2 Litres');
INSERT INTO "meal_ingredient" VALUES(53057,205,'3 tbs');
INSERT INTO "meal_ingredient" VALUES(53057,260,'1tbsp');
INSERT INTO "meal_ingredient" VALUES(53057,229,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53057,217,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53057,303,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(53075,108,'4');
INSERT INTO "meal_ingredient" VALUES(53075,112,'2');
INSERT INTO "meal_ingredient" VALUES(53075,260,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53075,210,'4 tsp');
INSERT INTO "meal_ingredient" VALUES(52775,824,'1 cups');
INSERT INTO "meal_ingredient" VALUES(52775,706,'1');
INSERT INTO "meal_ingredient" VALUES(52775,628,'1');
INSERT INTO "meal_ingredient" VALUES(52775,825,'1 small');
INSERT INTO "meal_ingredient" VALUES(52775,721,'sprinking');
INSERT INTO "meal_ingredient" VALUES(52775,826,'150g');
INSERT INTO "meal_ingredient" VALUES(52775,827,'10');
INSERT INTO "meal_ingredient" VALUES(52775,828,'35g');
INSERT INTO "meal_ingredient" VALUES(52775,829,'4 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52775,830,'300ml');
INSERT INTO "meal_ingredient" VALUES(52775,831,'1.5 teaspoons');
INSERT INTO "meal_ingredient" VALUES(52775,832,'1 teaspoon');
INSERT INTO "meal_ingredient" VALUES(52794,833,'1 1/4 cup');
INSERT INTO "meal_ingredient" VALUES(52794,834,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(52794,835,'1/3 cup raw');
INSERT INTO "meal_ingredient" VALUES(52794,836,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52794,837,'2');
INSERT INTO "meal_ingredient" VALUES(52794,838,'1/2 cup');
INSERT INTO "meal_ingredient" VALUES(52794,839,'1 tsp');
INSERT INTO "meal_ingredient" VALUES(52794,760,'1/2 cup boiling');
INSERT INTO "meal_ingredient" VALUES(52828,4,'1.5 pounds sliced');
INSERT INTO "meal_ingredient" VALUES(52828,252,'1 package thin');
INSERT INTO "meal_ingredient" VALUES(52828,109,'4-6');
INSERT INTO "meal_ingredient" VALUES(52828,50,'3 tablespoons minced');
INSERT INTO "meal_ingredient" VALUES(52828,137,'1.5 tablespoons minced garlic');
INSERT INTO "meal_ingredient" VALUES(52828,282,'¼ cup');
INSERT INTO "meal_ingredient" VALUES(52828,122,'1 tablespoon');
INSERT INTO "meal_ingredient" VALUES(52828,655,'½ tablespoon thick');
INSERT INTO "meal_ingredient" VALUES(52828,229,'½ tablespoon');
INSERT INTO "meal_ingredient" VALUES(52828,210,'3 tablespoons');
INSERT INTO "meal_ingredient" VALUES(52828,93,'Sliced');
INSERT INTO "meal_ingredient" VALUES(52828,200,'Leaves');
INSERT INTO "meal_ingredient" VALUES(52828,225,'Crushed');
INSERT INTO "meal_ingredient" VALUES(52838,210,'1 tbls');
INSERT INTO "meal_ingredient" VALUES(52838,343,'4');
INSERT INTO "meal_ingredient" VALUES(52838,212,'2 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52838,137,'2 cloves minced');
INSERT INTO "meal_ingredient" VALUES(52838,75,'2 tsp ground');
INSERT INTO "meal_ingredient" VALUES(52838,233,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(52838,247,'250ml');
INSERT INTO "meal_ingredient" VALUES(52838,71,'800g');
INSERT INTO "meal_ingredient" VALUES(52838,344,'1');
INSERT INTO "meal_ingredient" VALUES(52838,369,'3 sprigs');
INSERT INTO "meal_ingredient" VALUES(52838,17,'2');
INSERT INTO "meal_ingredient" VALUES(52838,282,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52838,197,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52838,346,'600g');
INSERT INTO "meal_ingredient" VALUES(52838,220,'Grated');
INSERT INTO "meal_ingredient" VALUES(52863,353,'1');
INSERT INTO "meal_ingredient" VALUES(52863,340,'1');
INSERT INTO "meal_ingredient" VALUES(52863,137,'3 cloves');
INSERT INTO "meal_ingredient" VALUES(52863,217,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52863,94,'½ tsp');
INSERT INTO "meal_ingredient" VALUES(52863,290,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52863,42,'3 Medium');
INSERT INTO "meal_ingredient" VALUES(52863,48,'2 small stalks');
INSERT INTO "meal_ingredient" VALUES(52863,245,'1');
INSERT INTO "meal_ingredient" VALUES(52863,395,'1');
INSERT INTO "meal_ingredient" VALUES(52863,341,'2 x 400g tins');
INSERT INTO "meal_ingredient" VALUES(52863,305,'250ml');
INSERT INTO "meal_ingredient" VALUES(52863,397,'2 sliced');
INSERT INTO "meal_ingredient" VALUES(52863,404,'250g');
INSERT INTO "meal_ingredient" VALUES(52867,405,'400g');
INSERT INTO "meal_ingredient" VALUES(52867,406,'1 can ');
INSERT INTO "meal_ingredient" VALUES(52867,71,'1 can ');
INSERT INTO "meal_ingredient" VALUES(52867,407,'1 Packet');
INSERT INTO "meal_ingredient" VALUES(53000,236,'3 Lbs');
INSERT INTO "meal_ingredient" VALUES(53000,270,'3 Lbs');
INSERT INTO "meal_ingredient" VALUES(53000,261,'1/2 cup ');
INSERT INTO "meal_ingredient" VALUES(53000,204,'1 oz ');
INSERT INTO "meal_ingredient" VALUES(53000,33,'3/4 cup ');
INSERT INTO "meal_ingredient" VALUES(53000,137,'6 cloves');
INSERT INTO "meal_ingredient" VALUES(53000,176,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53000,340,'3 cups ');
INSERT INTO "meal_ingredient" VALUES(53000,292,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(53000,17,' ');
INSERT INTO "meal_ingredient" VALUES(53000,210,' ');
INSERT INTO "meal_ingredient" VALUES(53000,107,'2 cups ');
INSERT INTO "meal_ingredient" VALUES(53000,304,'8 cups ');
INSERT INTO "meal_ingredient" VALUES(53000,89,'2 tbsp');
INSERT INTO "meal_ingredient" VALUES(53000,274,'2 tsp');
INSERT INTO "meal_ingredient" VALUES(53000,369,'2 sprigs');
INSERT INTO "meal_ingredient" VALUES(53000,222,' ');
INSERT INTO "meal_ingredient" VALUES(53000,257,' ');
INSERT INTO "meal_ingredient" VALUES(53000,465,' ');
INSERT INTO "meal_ingredient" VALUES(52917,105,'568ml');
INSERT INTO "meal_ingredient" VALUES(52917,310,'100g ');
INSERT INTO "meal_ingredient" VALUES(52917,299,'Pod of');
INSERT INTO "meal_ingredient" VALUES(52917,111,'6');
INSERT INTO "meal_ingredient" VALUES(52917,45,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52948,4,'1lb');
INSERT INTO "meal_ingredient" VALUES(52948,138,'3 chopped');
INSERT INTO "meal_ingredient" VALUES(52948,142,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52948,274,'1 tbs');
INSERT INTO "meal_ingredient" VALUES(52948,414,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(52948,42,'3 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52948,48,'3 finely chopped');
INSERT INTO "meal_ingredient" VALUES(52948,278,'6 chopped');
INSERT INTO "meal_ingredient" VALUES(52948,498,'1 Packet');
INSERT INTO "meal_ingredient" VALUES(52948,209,'Fry');
INSERT INTO "meal_ingredient" VALUES(52948,309,'Bottle');
INSERT INTO "meal_ingredient" VALUES(53062,125,'450g');
INSERT INTO "meal_ingredient" VALUES(53062,45,'55g');
INSERT INTO "meal_ingredient" VALUES(53062,446,'2 parts ');
INSERT INTO "meal_ingredient" VALUES(53062,260,'1/2 tsp');
INSERT INTO "meal_ingredient" VALUES(53062,197,'6 oz ');
INSERT INTO "meal_ingredient" VALUES(53062,112,'2 Beaten ');
INSERT INTO "meal_ingredient" VALUES(53062,36,'30g');
INSERT INTO "meal_ingredient" VALUES(53062,381,'140g');
INSERT INTO "meal_ingredient" VALUES(53062,35,'85g');
INSERT INTO "meal_ingredient" VALUES(53062,75,'1 tsp ');
INSERT INTO "meal_ingredient" VALUES(53062,323,'To Glaze');
INSERT INTO "meal_ingredient" VALUES(52871,410,'250g');
INSERT INTO "meal_ingredient" VALUES(52871,414,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52871,340,'1 sliced');
INSERT INTO "meal_ingredient" VALUES(52871,411,'0.25');
INSERT INTO "meal_ingredient" VALUES(52871,412,'10');
INSERT INTO "meal_ingredient" VALUES(52871,278,'4');
INSERT INTO "meal_ingredient" VALUES(52871,413,'4 tbsp');
INSERT INTO "meal_ingredient" VALUES(52871,274,'2 tbs');
INSERT INTO "meal_ingredient" VALUES(52871,45,'1 tblsp ');
INSERT INTO "meal_ingredient" VALUES(52871,318,'1 tblsp ');
CREATE TABLE user (
	id INTEGER NOT NULL, 
	email VARCHAR(255) NOT NULL, 
	password VARCHAR(255) NOT NULL, 
	created_at DATETIME NOT NULL, 
	name VARCHAR(255) NOT NULL, 
	streak_count INTEGER NOT NULL, 
	streak_date DATE NOT NULL, 
	diet VARCHAR(10) NOT NULL, 
	allergies VARCHAR(255) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (email)
);
COMMIT;
