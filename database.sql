-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           10.4.19-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour bottega
CREATE DATABASE IF NOT EXISTS `bottega` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bottega`;

-- Listage de la structure de la table bottega. articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomarticle` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `imagechemin` text DEFAULT NULL,
  `prix` float NOT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  `idmarque` int(11) NOT NULL,
  `idutilisateur` int(11) NOT NULL,
  `idtaille` int(11) NOT NULL,
  `idgenre` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idgenre` (`idgenre`),
  KEY `idtaille` (`idtaille`),
  KEY `idutilisateur` (`idutilisateur`),
  KEY `idmarque` (`idmarque`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`idgenre`) REFERENCES `genres` (`id`),
  CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`idtaille`) REFERENCES `tailles` (`id`),
  CONSTRAINT `articles_ibfk_3` FOREIGN KEY (`idutilisateur`) REFERENCES `utilisateurs` (`id`),
  CONSTRAINT `articles_ibfk_4` FOREIGN KEY (`idmarque`) REFERENCES `marques` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.articles : ~42 rows (environ)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `nomarticle`, `description`, `imagechemin`, `prix`, `datecreation`, `datemodification`, `idmarque`, `idutilisateur`, `idtaille`, `idgenre`) VALUES
	(1, 'J\'ADORE', 'Si J’Adore est devenu très rapidement un énorme bestseller de la parfumerie, c’est bien sûr grâce à l’universalité de sa composition lumineuse mais aussi grâce à l’extraordinaire qualité des ingrédients utilisés par Calice Becker. Le cœur fleuri de J’adore fut écrit tel une ode aux jardins fleuris de Christian Dior tant les fleurs se font stars de la fragrance et choisies avec soin dans ce but précis : « l’ylang-ylang des Comores pour sa douceur exotique, la rose damascena turque pour sa vivacité exubérante et sensuelle, et le jasmin sambac d’Inde, fruité avec une pointe de fleur d’oranger, auquel répond le jasmin de Grasse. » Dior pour J’adore Eau de Parfum.', '/bottega/public/uploads/articles/images/1629190090_52937809jadore.jpg', 47, '2021-08-17 10:48:10', NULL, 1, 2, 1, 2),
	(2, 'J\'ADORE', 'Si J’Adore est devenu très rapidement un énorme bestseller de la parfumerie, c’est bien sûr grâce à l’universalité de sa composition lumineuse mais aussi grâce à l’extraordinaire qualité des ingrédients utilisés par Calice Becker. Le cœur fleuri de J’adore fut écrit tel une ode aux jardins fleuris de Christian Dior tant les fleurs se font stars de la fragrance et choisies avec soin dans ce but précis : « l’ylang-ylang des Comores pour sa douceur exotique, la rose damascena turque pour sa vivacité exubérante et sensuelle, et le jasmin sambac d’Inde, fruité avec une pointe de fleur d’oranger, auquel répond le jasmin de Grasse. » Dior pour J’adore Eau de Parfum.', '/bottega/public/uploads/articles/images/1629190128_32417067jadore.jpg', 50, '2021-08-17 10:48:48', NULL, 1, 2, 2, 2),
	(3, 'J\'ADORE', 'Si J’Adore est devenu très rapidement un énorme bestseller de la parfumerie, c’est bien sûr grâce à l’universalité de sa composition lumineuse mais aussi grâce à l’extraordinaire qualité des ingrédients utilisés par Calice Becker. Le cœur fleuri de J’adore fut écrit tel une ode aux jardins fleuris de Christian Dior tant les fleurs se font stars de la fragrance et choisies avec soin dans ce but précis : « l’ylang-ylang des Comores pour sa douceur exotique, la rose damascena turque pour sa vivacité exubérante et sensuelle, et le jasmin sambac d’Inde, fruité avec une pointe de fleur d’oranger, auquel répond le jasmin de Grasse. » Dior pour J’adore Eau de Parfum.', '/bottega/public/uploads/articles/images/1629190192_70504370jadore.jpg', 130, '2021-08-17 10:49:52', NULL, 1, 2, 5, 2),
	(4, 'MISS DIOR CHERIE', 'Jugé trop éloigné des racines de la maison Dior et de celles de miss Dior, Miss Dior Chérie a été de nouveau travaillé par François Demachy pour le rapprocher du jus originel plus racé mais aussi plus frais. Ainsi Miss Dior ex Chérie se voient ajouter des notes de bergamote et de citron en ses notes de tête mais aussi d’autres fleurs précieuses en son cœur telles les fleurs de néroli ou bien encore de gardénia. Enfin, François Demachy accentue le caractère fort de cette Miss Dior ex Chérie en surdosant le labdanum ce qui accentue avec beauté son effet chypré.', '/bottega/public/uploads/articles/images/1629190242_46318880missdiorcherie.jpg', 70, '2021-08-17 10:50:42', NULL, 1, 2, 2, 2),
	(5, 'MISS DIOR CHERIE', 'Jugé trop éloigné des racines de la maison Dior et de celles de miss Dior, Miss Dior Chérie a été de nouveau travaillé par François Demachy pour le rapprocher du jus originel plus racé mais aussi plus frais. Ainsi Miss Dior ex Chérie se voient ajouter des notes de bergamote et de citron en ses notes de tête mais aussi d’autres fleurs précieuses en son cœur telles les fleurs de néroli ou bien encore de gardénia. Enfin, François Demachy accentue le caractère fort de cette Miss Dior ex Chérie en surdosant le labdanum ce qui accentue avec beauté son effet chypré.', '/bottega/public/uploads/articles/images/1629190364_46507922missdiorcherie.jpg', 126, '2021-08-17 10:52:44', NULL, 1, 2, 3, 2),
	(6, 'MISS DIOR CHERIE', 'Jugé trop éloigné des racines de la maison Dior et de celles de miss Dior, Miss Dior Chérie a été de nouveau travaillé par François Demachy pour le rapprocher du jus originel plus racé mais aussi plus frais. Ainsi Miss Dior ex Chérie se voient ajouter des notes de bergamote et de citron en ses notes de tête mais aussi d’autres fleurs précieuses en son cœur telles les fleurs de néroli ou bien encore de gardénia. Enfin, François Demachy accentue le caractère fort de cette Miss Dior ex Chérie en surdosant le labdanum ce qui accentue avec beauté son effet chypré.', '/bottega/public/uploads/articles/images/1629190417_70437136missdiorcherie.jpg', 196, '2021-08-17 10:53:37', NULL, 1, 2, 6, 2),
	(7, 'LONDON', 'Burberry London For Men est une fragrance résolument élégante. Celle-ci nous livre plusieurs facettes de la masculinité. En outre, ce jus commence par une envolée très fraîche, un souffle dynamique généralement très apprécié des hommes. Pour ce faire, Burberry London For Men associe de la bergamote et du poivre noir tout en y ajoutant des accents aromatiques de lavande et de feuilles de cannelier. Ce quatuor inattendu et audacieux laisse ensuite place à un cœur plus séducteur. Celui-ci tourne majoritairement autour de la senteur du cuir. Ce dernier est travaillé de manière subtile et s\'ajoute à l\'aspect ensoleillé de la fleur de mimosa ainsi qu\'à un arôme enivrant de vin de Porto.', '/bottega/public/uploads/articles/images/1629191747_23692592londonhomme.jpg', 64, '2021-08-17 11:15:47', NULL, 6, 2, 3, 1),
	(8, 'LONDON', 'Burberry London For Men est une fragrance résolument élégante. Celle-ci nous livre plusieurs facettes de la masculinité. En outre, ce jus commence par une envolée très fraîche, un souffle dynamique généralement très apprécié des hommes. Pour ce faire, Burberry London For Men associe de la bergamote et du poivre noir tout en y ajoutant des accents aromatiques de lavande et de feuilles de cannelier. Ce quatuor inattendu et audacieux laisse ensuite place à un cœur plus séducteur. Celui-ci tourne majoritairement autour de la senteur du cuir. Ce dernier est travaillé de manière subtile et s\'ajoute à l\'aspect ensoleillé de la fleur de mimosa ainsi qu\'à un arôme enivrant de vin de Porto.', '/bottega/public/uploads/articles/images/1629191849_58680581londonhomme.jpg', 147, '2021-08-17 11:17:29', NULL, 6, 2, 4, 1),
	(9, 'MR BURBERRY', 'Mr Burberry débute par une association audacieuse de pamplemousse et d\'estragon. Qui plus est, la cardamome donne à ce démarrage fusant une dimension plus épicée. Elle contribue dans le même temps à renforcer la virilité de ce jus. Puis, c\'est une authentique odeur de fougère qui apparaît en son cœur. Celle-ci se dote néanmoins d\'un esprit résolument contemporain. Elle est associée à des feuilles de bouleau qui ne font qu\'augmenter son côté suave. De même, le bois de cèdre et la noix de muscade rendent l’ensemble plus charmeur et racé. Dans la continuité de cette sensation boisée, le vétiver et le bois de gaïac s\'invitent dans son sillage. Ils apparaissent légèrement fumés et sont accompagnés par la chaleur du bois de santal. ', '/bottega/public/uploads/articles/images/1629191917_18885421mrburberry.jpg', 53, '2021-08-17 11:18:37', NULL, 6, 2, 2, 1),
	(10, 'MR BURBERRY', 'Mr Burberry débute par une association audacieuse de pamplemousse et d\'estragon. Qui plus est, la cardamome donne à ce démarrage fusant une dimension plus épicée. Elle contribue dans le même temps à renforcer la virilité de ce jus. Puis, c\'est une authentique odeur de fougère qui apparaît en son cœur. Celle-ci se dote néanmoins d\'un esprit résolument contemporain. Elle est associée à des feuilles de bouleau qui ne font qu\'augmenter son côté suave. De même, le bois de cèdre et la noix de muscade rendent l’ensemble plus charmeur et racé. Dans la continuité de cette sensation boisée, le vétiver et le bois de gaïac s\'invitent dans son sillage. Ils apparaissent légèrement fumés et sont accompagnés par la chaleur du bois de santal. ', '/bottega/public/uploads/articles/images/1629191973_72968082mrburberry.jpg', 96, '2021-08-17 11:19:33', NULL, 6, 2, 3, 1),
	(11, 'SAUVAGE', 'Sauvage Eau de Parfum est un jus très inspiré de son prédécesseur. Cependant, il affiche une odeur plus chaleureuse qu\'autrefois. Ainsi, Sauvage Eau de Parfum conserve plusieurs notes olfactives déjà présentes dans sa version originale. Des épices s\'y ajoutent et le tout forme une parfaite association de fraîcheur, d\'audace et d\'incandescence. Sauvage Eau de Parfum s\'ouvre sur la vivacité de la bergamote. Puis, son cœur s\'embrase au contact des épices. Une lavande méditerranéenne s\'entoure d\'un trio de poivre de Sichuan, de muscade et d\'anis étoilé. La base de Sauvage Eau de Parfum, quant à elle, a rassemblé une vanille liquoreuse et exotique, et un ambroxan plus noble mais tout aussi ensorcelant.', '/bottega/public/uploads/articles/images/1629192207_45635559sauvage.jpg', 108, '2021-08-17 11:23:27', NULL, 1, 2, 5, 1),
	(12, 'SAUVAGE', 'Sauvage Eau de Parfum est un jus très inspiré de son prédécesseur. Cependant, il affiche une odeur plus chaleureuse qu\'autrefois. Ainsi, Sauvage Eau de Parfum conserve plusieurs notes olfactives déjà présentes dans sa version originale. Des épices s\'y ajoutent et le tout forme une parfaite association de fraîcheur, d\'audace et d\'incandescence. Sauvage Eau de Parfum s\'ouvre sur la vivacité de la bergamote. Puis, son cœur s\'embrase au contact des épices. Une lavande méditerranéenne s\'entoure d\'un trio de poivre de Sichuan, de muscade et d\'anis étoilé. La base de Sauvage Eau de Parfum, quant à elle, a rassemblé une vanille liquoreuse et exotique, et un ambroxan plus noble mais tout aussi ensorcelant.', '/bottega/public/uploads/articles/images/1629192252_2830726sauvage.jpg', 168, '2021-08-17 11:24:12', NULL, 1, 2, 6, 1),
	(13, 'BOIS D\'ARGENT', 'Quoi qu’il en soit Bois d’Argent n’hésite pas à se proposer comme un parfum masculin à l’élégance raffinée tant par son absolu d’iris luxueux et poudré que par ses essences mystérieuses et délicatement enfumées nous emmenant en promenade dans un bois oriental et enveloppant. Bois d’Argent peut aussi, par son raffinement extrême s’afficher comme un joli parfum féminin où la fleur vient rencontrer l’ombre pour mieux faire naître la sensualité de notes orientales.', '/bottega/public/uploads/articles/images/1629192388_85856774boisdargent.jpg', 200, '2021-08-17 11:26:28', NULL, 1, 2, 5, 1),
	(14, 'BOIS D\'ARGENT', 'Quoi qu’il en soit Bois d’Argent n’hésite pas à se proposer comme un parfum masculin à l’élégance raffinée tant par son absolu d’iris luxueux et poudré que par ses essences mystérieuses et délicatement enfumées nous emmenant en promenade dans un bois oriental et enveloppant. Bois d’Argent peut aussi, par son raffinement extrême s’afficher comme un joli parfum féminin où la fleur vient rencontrer l’ombre pour mieux faire naître la sensualité de notes orientales.', '/bottega/public/uploads/articles/images/1629192426_56658746boisdargent.jpg', 180, '2021-08-17 11:27:06', NULL, 1, 2, 4, 1),
	(15, 'CHANCE', 'Les notes de tête de bergamote et de citron joliment épicées de baies roses, proposent une entrée tonique, fraîche et étonnante. Puis les cœurs de jacinthe, de jasmin et rose nous rappelleront à quel point Chanel s’aime à utiliser des matières premières luxueuses et raffinées pour envoyer des bouquets de fleurs puissants aux femmes que la styliste comme la maison vénèrent. En revanche l’association de ces notes fleuries étonne, là aussi, par son mariage avec la fragrance exotique, sucrée et totalement inédite de l’ananas. Enfin les sillages profonds de cette si belle onde de « chance » s’ancreront dans des notes chyprés de patchouli, vétiver et, petite nouveauté, de muscs blancs légers et aériens tout en offrant quelques brises poudrées d’iris délicat et de vanille gourmande.', '/bottega/public/uploads/articles/images/1629192477_36692467chance.jpg', 178, '2021-08-17 11:27:57', NULL, 2, 2, 5, 2),
	(16, 'COCO', 'Coco n\'en oublie pas ses prédécesseurs et reprend les principaux ingrédients du premier Coco Mademoiselle. Cependant, pour nous offrir plus de tendresse, il estompe sa saveur boisée et puissante au profit de ses autres ingrédients. Ainsi, la fraîcheur de la mandarine domine avant d\'être relayée par un accord plus floral et féminin en son cœur. Là, Coco Mademoiselle l’Eau Privée dégage un souffle romantique de rose et de jasmin. Peu à peu, il se révèle plus épuré et laisse flotter derrière lui un sillage de musc blanc. Autrement dit, il préserve sa facette orientale tout en se révélant plus apaisant.', '/bottega/public/uploads/articles/images/1629192515_23904576coco.jpg', 158, '2021-08-17 11:28:35', NULL, 2, 2, 5, 2),
	(17, 'BLEU DE CHANEL', 'Comme une ode à la liberté et à l’amour, « Bleu » de Chanel offre des fragrances aromatiques et boisées toutes en finesses et en élégances. Le parfum s’ouvre sur un cocktail pétillant de notes hespéridées de citron, épicées de baies roses et aromatiques de menthe verte et fraîche. Le cœur se balancera entre les notes boisées de vétiver et de cèdre et des envolées épicées et florales de gingembre et de jasmin. Afin d’offrir un sillage puissant et racé à l’Homme « Bleu », la fragrance s’achèvera sur des notes de fond plus classiques de patchouli, de santal et d’encens tout en offrant les puissances du labdanum et du vétiver plongées dans une douceur florale fraîche de muscs blancs.', '/bottega/public/uploads/articles/images/1629192556_70582104bleudechanel.jpg', 118, '2021-08-17 11:29:16', NULL, 2, 2, 5, 1),
	(18, 'PARIS-EDIMBOURG', 'Une eau vive, à la puissance végétale aromatique et boisée, inspirée de la lande écossaise, où Gabrielle Chanel aimait se ressourcer. Un parfum mystérieux, caractérisé par sa tension entre fraîcheur et obscurité.S’ouvrant sur la fraîcheur du citron et de la bergamote, soulignée par les notes aromatiques de la baie de genièvre et du cyprès, la fragrance se prolonge dans un accord cédré sec. Les effets fumés, légèrement tourbés du vétiver tracent un sillage réconfortant.', '/bottega/public/uploads/articles/images/1629192598_65251809parisedimbourg.jpg', 107, '2021-08-17 11:29:58', NULL, 2, 2, 5, 1),
	(19, 'MON GUERLAIN', 'Mon Guerlain met en avant un ingrédient pourtant réservé d\'ordinaire à la parfumerie pour homme : la lavande. Cette plante méditerranéenne est ici travaillée avec audace. Elle nous livre tous ses paradoxes et s\'accompagne de vanille, autre ingrédient très apprécié de la maison Guerlain. Il en résulte un parfum qui réconcilie les genres, à mi-chemin entre puissance et modernité. Le jasmin sambac, quant à lui, déploie ici sa saveur féminine et opulente. Le tout s\'enveloppe d\'un bois de santal plus onctueux. Plus que jamais, Mon Guerlain est un concentré de fougue et de mystère. Il est le symbole même de l\'éternel féminin.', '/bottega/public/uploads/articles/images/1629192645_33872992monguerlain.jpg', 67, '2021-08-17 11:30:45', NULL, 3, 2, 2, 2),
	(20, 'LA PETITE ROBE NOIRE', 'Cette belle robe orientale fruitée découverte en transparence grâce à son flacon œuvre d’art, nous propose en notes de tête une fraicheur citronnée. Puis le cœur de la composition va s’ouvrir vers des effluves gourmandes de réglisse et fruitées de framboise et de cerise noire tout en proposant une note florale poudrée et typée de violette et de rose délicatement relevée par la badiane. Afin d’achever son sillage gourmand, « La Petite Robe Noire » signe sa coquetterie sucrée de notes de fond vanille et amande amère tout en s’exhalant de muscs blancs et de patchouli traditionnellement liés à la fameuse « guerlinade ».', '/bottega/public/uploads/articles/images/1629192685_38192223lapetiterobenoire.jpg', 92, '2021-08-17 11:31:25', NULL, 3, 2, 3, 2),
	(21, 'SANTAL ROYAL', 'Santal Royal est un jus qui rappelle à s\'y méprendre l\'odeur de l\'encens. Sa saveur est très orientale, boisée et épicée. Il débute par une envolée solaire émanant du néroli et du jasmin étoilé. Cette plante est un autre trésor emblématique de l\'Inde. Elle apporte ici une sensation de rayonnement aérien. La chaleur vibrante de la cannelle vient néanmoins donner plus d\'impertinence à ce démarrage. Puis, Santal Royal puise toute son élégance au travers de l\'essence de rose. C\'est également à cet instant qu\'apparaît le bois de santal dans un nuage velouté et fruité à base de pêche. Peu à peu, il évolue vers des notes plus ambrées et cuirées tandis que le bois de oud ne fait qu\'accroître son aspect luxueux.', '/bottega/public/uploads/articles/images/1629192735_75830490santalroyal.jpg', 145, '2021-08-17 11:32:15', NULL, 3, 2, 5, 1),
	(22, 'L\'HOMME IDEAL', ' « L’Homme Idéal » ou l’homme idéal se doit d’être beau, fort et intelligent donc ces trois facettes seront présentées dans son parfum. L’intelligence sera mise en valeur par des notes de têtes de bergamote, de nouvelle fraîcheur et de menthe provoquant des senteurs fusantes et inspirantes très représentatives de la vivacité d’esprit. Puis la beauté se verra liée aux notes de cœur à la fois gourmandes (d’amaretto conjuguée au masculin et de cerise) et délicatement épicées (de coriandre, romarin et de cardamome). Enfin la force sera bien sûr représentée par les sillages profonds de « L’Homme Idéal » construits sur des accords boisés et cuir de bois ambrés et patchouli mariés à des notes poudrées et gourmandes de fève tonka, de réglisse et de vanille.', '/bottega/public/uploads/articles/images/1629192820_37605052lhommeideal.jpg', 72, '2021-08-17 11:33:40', NULL, 3, 2, 5, 1),
	(23, 'LIBRE', 'Libre d\'Yves Saint-Laurent possède en lui « la tension entre la sensualité brûlante de la fleur d\'oranger du Maroc et l\'audace d\'une lavande de France revisitée au féminin ». Ce parfum surprenant est conçu pour toutes les femmes libres et passionnées de notre époque. Il est un symbole de force et d’audace, imaginé pour toutes celles qui souhaitent défier les interdits et vivre passionnément. Plus concrètement, sur le plan purement olfactif, Libre d\'Yves Saint-Laurent est lié de ces notes de tête à ses notes de fond par la lavande. Cette fleur méditerranéenne est d\'abord associée à des fruits lumineux et pétillants. Libre éveille nos papilles par un duo de mandarine et de cassis. Puis, il s\'illumine de petitgrain et de fleur d\'oranger. Sa féminité est encore accentuée par la présence de jasmin, fleur culte de la parfumerie féminine. Peu à peu, son sillage s\'adoucit de vanille de Madagascar, tout en amplifiant sa sensualité de musc et d\'ambre gris. Le cèdre vient clore sa composition d\'une touche plus tenace et boisée.', '/bottega/public/uploads/articles/images/1629192859_3430616libre.jpg', 63, '2021-08-17 11:34:19', NULL, 4, 2, 2, 2),
	(24, 'OPIUM', ' «Opium» est un parfum devenu mythique, dont l’histoire ne ressemble à aucune autre. C’est en 2012, qu’YSL décide de réinterpréter sa fragrance star en proposant « Opium vapeurs de parfum ». L’esprit du parfum mythique se ressent ici,  mais à pas de velours. « Opium vapeurs de parfum » est une invitation à la sensualité, à un moment précieux, qui sera à coup sûr chargé d’émotions et de sentiments. Aérien, léger et ultra sensuel, la revisite d’Opium semble beaucoup plus intimiste. « Opium vapeurs de parfum » est une essence tout en douceur, veloutée et voluptueuse, mais ultra fascinante, dévoilant ainsi une facette de la femme jusqu’alors inconnue.', '/bottega/public/uploads/articles/images/1629192891_11507000opium.jpg', 79, '2021-08-17 11:34:51', NULL, 4, 2, 2, 2),
	(25, 'Y', 'Un parfum boisé au sillage intense pour un homme accompli Sûr de lui, audacieux, il a fait de ses rêves une réalité.La puissance audacieuse d\'une Lavande boisée au sillage envoûtant.En tête, l’intensité aromatique de la Lavande de France éclairée par la fraîcheur du Géranium.En fond, la force absolue du Bois de Cèdre noir américain (exclusivement récolté pour Yves Saint Laurent Beauté) enveloppée d\'un accord d\'Encens brûlant.', '/bottega/public/uploads/articles/images/1629192925_60798699y.jpg', 71, '2021-08-17 11:35:25', NULL, 4, 2, 3, 1),
	(26, 'RIVE GAUCHE', 'Légèrement tombées en désuétude, les molécules synthétiques aldéhydes, confèrent néanmoins un côté démodé à «Rive Gauche». La composition de cette dernière débute sur des notes ultras fraiches et vivifiantes, celle de la bergamote, du citron associé à un accord aldéhydé. Ultra féminin, le cœur assiste au mariage du jasmin et de la rose. Ces notes sont rejointes par le chèvrefeuille et le gardénia. Le fond de «Rive Gauche» se veut boisé et chypré, car composé de vétiver, de muscs, de myrrhe et de mousse de chêne.', '/bottega/public/uploads/articles/images/1629192966_12161401rivegauche.jpg', 111, '2021-08-17 11:36:06', NULL, 4, 2, 5, 1),
	(27, 'OLYMPEA', 'Olympea Aqua s\'ouvre sur un savant mélange de bergamote, de citron, d\'orange et de pamplemousse. Ainsi, il s\'agit d\'un parfum très appréciable au quotidien tant il est dynamisant. Puis, cette légèreté se poursuit en son cœur. Celui-ci contient de la fleur d\'oranger, une plante typique du bassin méditerranéen qui apporte ici un puissant rayonnement solaire. La pêche donne à l’ensemble un côté plus velouté et juteux. L\'élégance d’Olympea Aqua, quant à elle, se fait sentir dans un savant mélange de rose et de jasmin. La féminité de ce parfum est omniprésente et a su conserver tout son raffinement initial. Puis, l\'ensemble devient peu à peu plus gourmand. Olympea Aqua se charge de caramel et de vanille. Le cashmeran et le bois de santal viennent encore en rehausser la douceur tandis que le benjoin enveloppe le tout d\'onctuosité moelleuse.', '/bottega/public/uploads/articles/images/1629193019_64757826olympea.jpg', 58, '2021-08-17 11:36:59', NULL, 5, 2, 2, 2),
	(28, 'LADY MILLION', 'Un jus fleuri et fruité surprenant et chic, effrontée et glamour. En notes de tête la néroli et l’orange provoquent fraîcheurs acidulées et douceurs exotiques et fleuries. Puis le cœur de fleurs blanches de gardénia, de jasmin et de fleur d’oranger s’associe aux saveurs sucrées et fruitées de la framboise. Enfin les puissances animales et sensuelles du patchouli associées à des notes suaves de miel créeront un sillage glamour et terriblement sexy à la femme « Lady Million ».\r\n', '/bottega/public/uploads/articles/images/1629193055_28814623ladymillion.jpg', 57, '2021-08-17 11:37:35', NULL, 5, 2, 2, 2),
	(29, 'ONE MILLION', 'Ce concentré de séduction se traduit par un parfum assez épicé. « 1 Million Intense » débute par la fraicheur hespéridée de la mandarine. Celle-ci se mélange rapidement à un cocktail d’épices, comme la noix de muscade, le safran, le poivre noir, la cardamome et du cumin. Le cœur se compose de rose absolue. Celle-ci est rejointe par la cannelle et le néroli. Le fond se veut ultra sexy et addictive grâce à l’iris qui s’associe au cuir blond, au santal et au patchouli. Le flacon reprend, bien évidemment, les codes de ses ainés. Il gagne cependant en opacité comme pour renforcer son intensité. Le lingot est par ailleurs laqué d’un somptueux dégradé doré.', '/bottega/public/uploads/articles/images/1629193087_57164648onemillion.jpg', 64, '2021-08-17 11:38:07', NULL, 5, 2, 3, 1),
	(30, 'INVICTUS', 'on retrouve dans la senteur d’Invictus Aqua. Ce jus est à la fois viril et très boisé tout en conservant une fraîcheur intense. Il joue sur les contrastes et débute par un souffle amer et givré de pamplemousse. Puis, Invictus Aqua est inondé d\'une vague iodée qui rappelle l\'odeur de l\'océan. Il dégage un sentiment immense de dynamisme et gagne peu à peu en puissance grâce à la présence de bois ambrés joués ici en overdose. Pour rappeler encore les courants marins, Paco Rabanne a ajouté de l\'ambre gris salé à l\'ensemble. Il en résulte un parfum semblable à une eau salée dégoulinant sur la peau de ce bel athlète.', '/bottega/public/uploads/articles/images/1629193136_79491735invictus.jpg', 64, '2021-08-17 11:38:56', NULL, 5, 2, 3, 1),
	(39, 'MR BURBERRY', 'Mr Burberry débute par une association audacieuse de pamplemousse et d\'estragon. Qui plus est, la cardamome donne à ce démarrage fusant une dimension plus épicée. Elle contribue dans le même temps à renforcer la virilité de ce jus. Puis, c\'est une authentique odeur de fougère qui apparaît en son cœur. Celle-ci se dote néanmoins d\'un esprit résolument contemporain. Elle est associée à des feuilles de bouleau qui ne font qu\'augmenter son côté suave. De même, le bois de cèdre et la noix de muscade rendent l’ensemble plus charmeur et racé. Dans la continuité de cette sensation boisée, le vétiver et le bois de gaïac s\'invitent dans son sillage. Ils apparaissent légèrement fumés et sont accompagnés par la chaleur du bois de santal. ', '/bottega/public/uploads/articles/images/1629275926_41987844mrburberry.jpg', 98, '2021-08-18 10:38:46', NULL, 6, 2, 5, 1),
	(40, 'LONDON', 'Burberry London For Men est une fragrance résolument élégante. Celle-ci nous livre plusieurs facettes de la masculinité. En outre, ce jus commence par une envolée très fraîche, un souffle dynamique généralement très apprécié des hommes. Pour ce faire, Burberry London For Men associe de la bergamote et du poivre noir tout en y ajoutant des accents aromatiques de lavande et de feuilles de cannelier. Ce quatuor inattendu et audacieux laisse ensuite place à un cœur plus séducteur. Celui-ci tourne majoritairement autour de la senteur du cuir. Ce dernier est travaillé de manière subtile et s\'ajoute à l\'aspect ensoleillé de la fleur de mimosa ainsi qu\'à un arôme enivrant de vin de Porto.', '/bottega/public/uploads/articles/images/1629275970_13315989londonhomme.jpg', 140, '2021-08-18 10:39:30', NULL, 6, 2, 5, 1),
	(41, 'MY BURBERRY', 'Côté senteur, My Burberry est un bouquet floral à la signature très contemporaine. Dans un premier temps, My Burberry misait sur la fraîcheur. Il associe la bergamote de Calabre à une senteur plus florale et humide de pois de senteur. Son cœur, en revanche, s\'épice et se réchauffe. Il contient du géranium et du freesia, pour un mélange floral et poudré. Le coing y apporte un soupçon de gourmandise fruitée et de douceur. Les roses amplifient encore la féminité de l\'ensemble. My Burberry se clôt sur une touche plus sombre et boisée de patchouli pour un rendu ténébreux, charismatique et tenace.', '/bottega/public/uploads/articles/images/1629276053_17082375myburberry.jpg', 130, '2021-08-18 10:40:53', NULL, 6, 2, 5, 2),
	(42, 'LONDON', 'Burberry London est un parfum qui a été conçu par Dominique Ropion. Celui-ci a alors choisi de mettre en avant la féminité via un énorme bouquet de fleurs blanches associées à de multiples éléments tous plus diversifiés les uns que les autres. Ainsi, Burberry London affiche d\'emblée sa vitalité par la présence acidulée et fraîche de clémentine. Cet agrume est ici associé à de la rose et a du chèvrefeuille. Le rendu en devient immédiatement évocateur d\'un jardin anglais par un matin lumineux de printemps. ', '/bottega/public/uploads/articles/images/1629276107_94041066londonfemme.jpg', 124, '2021-08-18 10:41:47', NULL, 6, 2, 5, 2),
	(43, 'MISS DIOR CHERIE', 'Jugé trop éloigné des racines de la maison Dior et de celles de miss Dior, Miss Dior Chérie a été de nouveau travaillé par François Demachy pour le rapprocher du jus originel plus racé mais aussi plus frais. Ainsi Miss Dior ex Chérie se voient ajouter des notes de bergamote et de citron en ses notes de tête mais aussi d’autres fleurs précieuses en son cœur telles les fleurs de néroli ou bien encore de gardénia. Enfin, François Demachy accentue le caractère fort de cette Miss Dior ex Chérie en surdosant le labdanum ce qui accentue avec beauté son effet chypré.', '/bottega/public/uploads/articles/images/1629276147_1029254missdiorcherie.jpg', 182, '2021-08-18 10:42:27', NULL, 1, 2, 5, 2),
	(44, 'LIBRE', ' Libre d\'Yves Saint-Laurent possède en lui « la tension entre la sensualité brûlante de la fleur d\'oranger du Maroc et l\'audace d\'une lavande de France revisitée au féminin ». Ce parfum surprenant est conçu pour toutes les femmes libres et passionnées de notre époque. Il est un symbole de force et d’audace, imaginé pour toutes celles qui souhaitent défier les interdits et vivre passionnément. Plus concrètement, sur le plan purement olfactif, Libre d\'Yves Saint-Laurent est lié de ces notes de tête à ses notes de fond par la lavande. Cette fleur méditerranéenne est d\'abord associée à des fruits lumineux et pétillants. Libre éveille nos papilles par un duo de mandarine et de cassis. Puis, il s\'illumine de petitgrain et de fleur d\'oranger. Sa féminité est encore accentuée par la présence de jasmin, fleur culte de la parfumerie féminine. Peu à peu, son sillage s\'adoucit de vanille de Madagascar, tout en amplifiant sa sensualité de musc et d\'ambre gris. Le cèdre vient clore sa composition d\'une touche plus tenace et boisée.', '/bottega/public/uploads/articles/images/1629276218_87971380libre.jpg', 163, '2021-08-18 10:43:38', NULL, 4, 2, 5, 2),
	(45, 'OPIUM', '«Opium» est un parfum devenu mythique, dont l’histoire ne ressemble à aucune autre. C’est en 2012, qu’YSL décide de réinterpréter sa fragrance star en proposant «Opium vapeurs de parfum». L’esprit du parfum mythique se ressent ici,  mais à pas de velours. « Opium vapeurs de parfum » est une invitation à la sensualité, à un moment précieux, qui sera à coup sûr chargé d’émotions et de sentiments. Aérien, léger et ultra sensuel, la revisite d’Opium semble beaucoup plus intimiste. « Opium vapeurs de parfum » est une essence tout en douceur, veloutée et voluptueuse, mais ultra fascinante, dévoilant ainsi une facette de la femme jusqu’alors inconnue.', '/bottega/public/uploads/articles/images/1629276263_85951364opium.jpg', 205, '2021-08-18 10:44:23', NULL, 4, 2, 5, 2),
	(46, 'Y', 'Un parfum boisé au sillage intense pour un homme accompli Sûr de lui, audacieux, il a fait de ses rêves une réalité.La puissance audacieuse d\'une Lavande boisée au sillage envoûtant.En tête, l’intensité aromatique de la Lavande de France éclairée par la fraîcheur du Géranium.En fond, la force absolue du Bois de Cèdre noir américain (exclusivement récolté pour Yves Saint Laurent Beauté) enveloppée d\'un accord d\'Encens brûlant.', '/bottega/public/uploads/articles/images/1629276294_12080046y.jpg', 104, '2021-08-18 10:44:54', NULL, 4, 2, 5, 1),
	(47, 'OLYMPEA', 'Olympea Aqua s\'ouvre sur un savant mélange de bergamote, de citron, d\'orange et de pamplemousse. Ainsi, il s\'agit d\'un parfum très appréciable au quotidien tant il est dynamisant. Puis, cette légèreté se poursuit en son cœur. Celui-ci contient de la fleur d\'oranger, une plante typique du bassin méditerranéen qui apporte ici un puissant rayonnement solaire. La pêche donne à l’ensemble un côté plus velouté et juteux. L\'élégance d’Olympea Aqua, quant à elle, se fait sentir dans un savant mélange de rose et de jasmin. La féminité de ce parfum est omniprésente et a su conserver tout son raffinement initial. Puis, l\'ensemble devient peu à peu plus gourmand. Olympea Aqua se charge de caramel et de vanille. Le cashmeran et le bois de santal viennent encore en rehausser la douceur tandis que le benjoin enveloppe le tout d\'onctuosité moelleuse.', '/bottega/public/uploads/articles/images/1629276373_41158277olympea.jpg', 150, '2021-08-18 10:46:13', NULL, 5, 2, 5, 2),
	(48, 'LADY MILLION', 'Un jus fleuri et fruité surprenant et chic, effrontée et glamour. En notes de tête la néroli et l’orange provoquent fraîcheurs acidulées et douceurs exotiques et fleuries. Puis le cœur de fleurs blanches de gardénia, de jasmin et de fleur d’oranger s’associe aux saveurs sucrées et fruitées de la framboise. Enfin les puissances animales et sensuelles du patchouli associées à des notes suaves de miel créeront un sillage glamour et terriblement sexy à la femme « Lady Million ».', '/bottega/public/uploads/articles/images/1629276421_67514620ladymillion.jpg', 148, '2021-08-18 10:47:01', NULL, 5, 2, 5, 2),
	(49, 'ONE MILLION', 'Ce concentré de séduction se traduit par un parfum assez épicé. «1 Million Intense» débute par la fraicheur hespéridée de la mandarine. Celle-ci se mélange rapidement à un cocktail d’épices, comme la noix de muscade, le safran, le poivre noir, la cardamome et du cumin. Le cœur se compose de rose absolue. Celle-ci est rejointe par la cannelle et le néroli. Le fond se veut ultra sexy et addictive grâce à l’iris qui s’associe au cuir blond, au santal et au patchouli. Le flacon reprend, bien évidemment, les codes de ses ainés. Il gagne cependant en opacité comme pour renforcer son intensité. Le lingot est par ailleurs laqué d’un somptueux dégradé doré.', '/bottega/public/uploads/articles/images/1629276456_49017996onemillion.jpg', 91, '2021-08-18 10:47:36', NULL, 5, 2, 5, 1),
	(50, 'INVICTUS', 'On retrouve dans la senteur d’Invictus Aqua, ce jus est à la fois viril et très boisé tout en conservant une fraîcheur intense. Il joue sur les contrastes et débute par un souffle amer et givré de pamplemousse. Puis, Invictus Aqua est inondé d\'une vague iodée qui rappelle l\'odeur de l\'océan. Il dégage un sentiment immense de dynamisme et gagne peu à peu en puissance grâce à la présence de bois ambrés joués ici en overdose. Pour rappeler encore les courants marins, Paco Rabanne a ajouté de l\'ambre gris salé à l\'ensemble. Il en résulte un parfum semblable à une eau salée dégoulinant sur la peau de ce bel athlète.\r\n', '/bottega/public/uploads/articles/images/1629991042_24055321invictus.jpg', 100, '2021-08-18 10:48:11', NULL, 5, 2, 5, 1);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Listage de la structure de la table bottega. commandes
CREATE TABLE IF NOT EXISTS `commandes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libellecommande` varchar(255) NOT NULL,
  `adresselivraison` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  `idutilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idutilisateur` (`idutilisateur`),
  CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`idutilisateur`) REFERENCES `utilisateurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.commandes : ~0 rows (environ)
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
INSERT INTO `commandes` (`id`, `libellecommande`, `adresselivraison`, `status`, `datecreation`, `datemodification`, `idutilisateur`) VALUES
	(1, 'Achat parfum(s)', '220 AVENUE DU MARECHAL LECLERC NEUILLY SUR MARNE 93330', 2, '2021-10-12 11:47:53', '2021-10-12 11:47:53', 3),
	(2, 'Achat parfum(s)', 'Inexistante pour le moment', 1, '2021-10-19 13:46:39', '2021-10-19 13:46:39', 13),
	(3, 'Achat parfum(s)', 'Inexistante pour le moment', 1, '2021-10-25 10:48:57', '2021-10-25 10:48:57', 6);
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;

-- Listage de la structure de la table bottega. genres
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libellegenre` varchar(100) DEFAULT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libellegenre` (`libellegenre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.genres : ~2 rows (environ)
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` (`id`, `libellegenre`, `datecreation`, `datemodification`) VALUES
	(1, 'Homme', '2021-08-17 10:12:09', NULL),
	(2, 'Femme', '2021-08-17 10:12:09', NULL);
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;

-- Listage de la structure de la table bottega. lignecommande
CREATE TABLE IF NOT EXISTS `lignecommande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qtecommandee` int(11) NOT NULL,
  `prixunitvente` float NOT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  `idarticle` int(11) NOT NULL,
  `idcommande` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcommande` (`idcommande`),
  KEY `idarticle` (`idarticle`),
  CONSTRAINT `lignecommande_ibfk_1` FOREIGN KEY (`idcommande`) REFERENCES `commandes` (`id`),
  CONSTRAINT `lignecommande_ibfk_2` FOREIGN KEY (`idarticle`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.lignecommande : ~2 rows (environ)
/*!40000 ALTER TABLE `lignecommande` DISABLE KEYS */;
INSERT INTO `lignecommande` (`id`, `qtecommandee`, `prixunitvente`, `datecreation`, `datemodification`, `idarticle`, `idcommande`) VALUES
	(1, 1, 100, '2021-10-19 13:49:48', '2021-10-19 13:49:48', 50, 2),
	(2, 2, 91, '2021-10-19 13:49:54', '2021-10-19 13:49:54', 49, 2),
	(9, 1, 100, '2021-10-25 20:36:10', '2021-10-25 20:36:10', 50, 3);
/*!40000 ALTER TABLE `lignecommande` ENABLE KEYS */;

-- Listage de la structure de la table bottega. marques
CREATE TABLE IF NOT EXISTS `marques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nommarque` varchar(100) NOT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nommarque` (`nommarque`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.marques : ~6 rows (environ)
/*!40000 ALTER TABLE `marques` DISABLE KEYS */;
INSERT INTO `marques` (`id`, `nommarque`, `datecreation`, `datemodification`) VALUES
	(1, 'DIOR', '2021-08-17 10:12:09', NULL),
	(2, 'CHANEL', '2021-08-17 10:12:09', NULL),
	(3, 'GUERLAIN', '2021-08-17 10:12:09', NULL),
	(4, 'YVES SAINT-LAURENT', '2021-08-17 10:12:09', NULL),
	(5, 'PACO RABANNE', '2021-08-17 10:12:09', NULL),
	(6, 'BURBERRY', '2021-08-17 10:12:09', NULL);
/*!40000 ALTER TABLE `marques` ENABLE KEYS */;

-- Listage de la structure de la table bottega. roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libellerole` varchar(255) NOT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `libellerole` (`libellerole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.roles : ~3 rows (environ)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `libellerole`, `datecreation`, `datemodification`) VALUES
	(1, 'Admin', '2021-08-17 10:12:09', NULL),
	(2, 'Commercial', '2021-08-17 10:12:09', NULL),
	(3, 'Client', '2021-08-17 10:12:09', NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Listage de la structure de la table bottega. stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qtestockee` int(11) NOT NULL,
  `qtemin` int(11) NOT NULL,
  `qtemax` int(11) NOT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  `idarticle` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idarticle` (`idarticle`),
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`idarticle`) REFERENCES `articles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.stocks : ~0 rows (environ)
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;

-- Listage de la structure de la table bottega. tailles
CREATE TABLE IF NOT EXISTS `tailles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volumeflacon` varchar(255) DEFAULT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `volumeflacon` (`volumeflacon`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.tailles : ~6 rows (environ)
/*!40000 ALTER TABLE `tailles` DISABLE KEYS */;
INSERT INTO `tailles` (`id`, `volumeflacon`, `datecreation`, `datemodification`) VALUES
	(1, '20ml', '2021-08-17 10:12:09', NULL),
	(2, '30ml', '2021-08-17 10:12:09', NULL),
	(3, '50ml', '2021-08-17 10:12:09', NULL),
	(4, '75ml', '2021-08-17 10:12:09', NULL),
	(5, '100ml', '2021-08-17 10:12:09', NULL),
	(6, '150ml', '2021-08-17 10:12:09', NULL);
/*!40000 ALTER TABLE `tailles` ENABLE KEYS */;

-- Listage de la structure de la table bottega. utilisateurs
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `datecreation` datetime DEFAULT current_timestamp(),
  `datemodification` datetime DEFAULT NULL,
  `idutilisateur` int(11) NOT NULL,
  `idrole` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idutilisateur` (`idutilisateur`),
  KEY `idrole` (`idrole`),
  CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`idutilisateur`) REFERENCES `utilisateurs` (`id`),
  CONSTRAINT `utilisateurs_ibfk_2` FOREIGN KEY (`idrole`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Listage des données de la table bottega.utilisateurs : ~11 rows (environ)
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `adresse`, `tel`, `email`, `motdepasse`, `type`, `datecreation`, `datemodification`, `idutilisateur`, `idrole`) VALUES
	(1, 'GHRIB', 'CHAIMA', '1 AV MARECHAL LECLERC NEUILLY SUR MARNE 93330', '0601010101', 'admin@gmail.com', '$2y$10$rd8W3UbaaasXN1StTDYjA.Xq10QPiJW9/oF69qYRNw/d.TyoitoYe', 'utilisateur', '2021-08-17 10:12:09', NULL, 1, 1),
	(2, 'DHAOUADI', 'YOUSSEF', '133 AV DEGAULLES Paris 75000', '0601050000', 'commercial@gmail.com', '$2y$10$bhWKZNj1jjfkh0qNQ9xlsOyK9CDdNSUAyrDLsOE1N.57V45iBL/vO', 'utilisateur', '2021-08-17 10:12:09', NULL, 1, 2),
	(3, 'AMINATA', 'AMINATA', '5 AV ALBERT CAMUS Nanterre 92000', '06010880000', 'aminata@gmail.com', '$2y$10$d/YMZmGD65zPA/3H.U4WDOqxRlQl0EnLEmBNeC6FzZFWe75TI8Sg2', 'client', '2021-08-17 10:12:09', NULL, 1, 3),
	(4, 'SONIA', 'SONIA', '120 AV CHARLES DE GAULLES NEUILLY SUR MARNE 93330', '0601839999', 'sonia@gmail.com', '$2y$10$FnzTfDMfGvPiY2ZsxqTBb.7wSdVZE6vjkYO7kXBDdg3eQhxElvcEe\r\n', 'client', '2021-08-18 18:04:40', NULL, 1, 3),
	(5, 'OMAR', 'OMAR', '150 AVENUE LA LIBERTE PARIS LA DEFENSE 92400', '0687804380', 'omar@gmail.com', '$2y$10$1deb/h3v8A/ZPp36kSeSB.7r81jN4jO6NDykrpWWEwKOhWV0508Wm', 'client', '2021-08-19 11:07:18', NULL, 1, 3),
	(6, 'SAFA', 'SAFA', '129 AV CHARLES DE GAULLES CHELLES 77500', '0687800000', 'safa@gmail.com', '$2y$10$1auxKUfUoWMoftBjA/Fg9O3upQXpDThW8P6GeCzGQDawpv54muIYm', 'client', '2021-08-19 11:16:45', NULL, 1, 3),
	(8, 'chouchou', 'chouchou', '13 RUE DES ARBRES 77500 CHELLES', '0697804389', 'chouchou@gmail.com', '$2y$10$z1lWgg/t.dIuzyPhx9zIvO.tCaPv3KoB3OZTEYTNxqOkzcv5P855C', 'client', '2021-08-19 11:31:43', NULL, 1, 3),
	(9, 'YOUYOU', 'YOUYOU', '100 AV CHARLES DE GAULLES 93330 NEUILLY SUR MARNE', '0601830200', 'youyou@gmail.com', '$2y$10$RdM6sGlfbZzwT.QA4xslsu1JyLoLmlG8ipXHMbW7EYiQFAUH3i5LC', 'client', '2021-08-19 11:42:26', NULL, 1, 3),
	(12, 'HELLO', 'HELLO', '200, Avenue du Maréchal Leclerc', '0601838000', 'hello@gmail.com', '$2y$10$Cppam9GYyg.PfBG/D4lg4O1alDFPBehFuaj59cPi.8JLkZHRI6OlC', 'client', '2021-08-19 14:19:22', NULL, 1, 3),
	(13, 'ok', 'ok', '120 AV CHARLES DE GAULLES', '0601830182', 'ok@gmail.com', '$2y$10$YtXt6rGb9NgLl1NkSvY.CeT3IzaluMYu8zJmKMEacHsVj.tYcBFqC', 'client', '2021-08-20 10:46:43', NULL, 1, 3),
	(14, 'hi', 'hi', '23 AV MARECHAL 92000 PARIS LA DEFENSE', '0607080921', 'hi@gmail.com', '$2y$10$wi1bD.c8B1dMW6B3RChtLegcFFJ4wuy9WrK4ewGhCyqnCJlsSxrkK', 'client', '2021-08-24 20:01:08', NULL, 1, 3),
	(16, 'ta', 'ta', '223 AV MARECHAL 92000 PARIS LA DEFENSE', '0607080955', 'ta@gmail.com', '$2y$10$Xk4H5J6d3.TmnGU1a/4cpe53OFTux7dkXLDG71oG3yLgB..pJDWkS', 'client', '2021-08-24 20:02:54', NULL, 1, 3),
	(18, 'titi', 'toutou', '440 Avenue Maréchal Leclerc', '0603030307', 'toutou@gmail.com', '$2y$10$iqL.dYQ0p350.TY31tLJe.aPvPPbcnI5y8G5YwL9kab0CrWuu8HrC', 'client', '2021-10-11 17:42:14', NULL, 1, 3);
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
