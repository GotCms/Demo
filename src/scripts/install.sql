-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 29, 2013 at 11:19 AM
-- Server version: 5.5.31
-- PHP Version: 5.4.4-14+deb7u4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gotcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_email` smallint(6) NOT NULL DEFAULT '0',
  `is_active` smallint(6) NOT NULL DEFAULT '0',
  `message` text COLLATE utf8_unicode_ci,
  `document_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_blog_comment_document` (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE IF NOT EXISTS `core_config_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`id`, `identifier`, `value`) VALUES
(1, 'site_name', 'GotCms'),
(2, 'site_is_offline', NULL),
(3, 'cookie_domain', 'gotcms'),
(4, 'session_lifetime', '3600'),
(5, 'locale', 'en_GB'),
(6, 'mail_from', 'myemail@myserver.com'),
(7, 'mail_from_name', 'Firstname Lastname'),
(8, 'dashboard_widgets', ''),
(9, 'debug_is_active', NULL),
(10, 'cache_is_active', NULL),
(11, 'cache_handler', 'filesystem'),
(12, 'cache_lifetime', '600'),
(13, 'session_path', ''),
(14, 'session_handler', '0'),
(15, 'site_offline_document', ''),
(16, 'site_404_layout', ''),
(17, 'site_exception_layout', ''),
(18, 'cookie_path', '/'),
(19, 'unsecure_frontend_base_path', ''),
(20, 'secure_frontend_base_path', ''),
(21, 'unsecure_backend_base_path', ''),
(22, 'secure_backend_base_path', ''),
(23, 'unsecure_cdn_base_path', ''),
(24, 'secure_cdn_base_path', ''),
(25, 'force_backend_ssl', ''),
(26, 'force_frontend_ssl', ''),
(27, 'stream_wrapper_is_active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_session`
--

CREATE TABLE IF NOT EXISTS `core_session` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_translate`
--

CREATE TABLE IF NOT EXISTS `core_translate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=381 ;

--
-- Dumping data for table `core_translate`
--

INSERT INTO `core_translate` (`id`, `source`) VALUES
(166, '-- Select --'),
(247, '''%hostname%'' does not appear to have any valid MX or A records for the email address'),
(246, '''%hostname%'' is not a valid hostname for the email address'),
(248, '''%hostname%'' is not in a routable network segment. The email address should not be resolved from public network'),
(249, '''%localPart%'' can not be matched against dot-atom format'),
(250, '''%localPart%'' can not be matched against quoted-string format'),
(251, '''%localPart%'' is not a valid local part for the email address'),
(174, '%d active comment(s)'),
(175, '%d unactive comment(s)'),
(123, '%s is writable'),
(256, 'A crc32 hash could not be evaluated for the given file'),
(264, 'A hash could not be evaluated for the given file'),
(274, 'A md5 hash could not be evaluated for the given file'),
(297, 'A PHP extension returned an error while uploading the file'),
(287, 'A PHP extension returned an error while uploading the file ''%value%'''),
(244, 'A record matching the input was found'),
(278, 'A sha1 hash could not be evaluated for the given file'),
(163, 'About'),
(126, 'Actual'),
(1, 'Add'),
(2, 'Add property'),
(3, 'Add Tab'),
(4, 'Add translation'),
(5, 'Add view'),
(153, 'Admin panel'),
(211, 'Admin password'),
(6, 'Administration Panel'),
(7, 'Administrator'),
(132, 'all'),
(260, 'All files in sum should have a maximum size of ''%max%'' but ''%size%'' were detected'),
(261, 'All files in sum should have a minimum size of ''%min%'' but ''%size%'' were detected'),
(127, 'All parameters must be set to "Yes"'),
(143, 'All the time'),
(225, 'An exception has been raised while validating the input'),
(232, 'An exception has been raised within the callback'),
(359, 'Author'),
(8, 'Available children'),
(341, 'Cache'),
(25, 'Cache handler'),
(24, 'Cache is active'),
(26, 'Cache lifetime'),
(181, 'Care'),
(183, 'Click to logout'),
(155, 'Configuration'),
(190, 'Configuration saved'),
(354, 'Configure your website'),
(212, 'Confirm admin password'),
(379, 'Contact'),
(9, 'Content'),
(116, 'Continue'),
(10, 'Cookie domain'),
(11, 'Cookie path'),
(12, 'Copy'),
(317, 'Countries outside the Single Euro Payments Area (SEPA) are not supported'),
(13, 'Create'),
(368, 'Create configuration file'),
(364, 'Create database'),
(14, 'Create document'),
(366, 'Create users and roles'),
(17, 'Create your own website'),
(15, 'Create, edit, and delete users.'),
(16, 'Create, edit, and delete views.'),
(18, 'Cut'),
(19, 'Dashboard'),
(20, 'Data can be stored in. Create your own datatype, edit configuration and insert it in document type.'),
(177, 'Data only'),
(114, 'Database'),
(209, 'Database configuration'),
(21, 'Datatype'),
(203, 'Datatype does not exists'),
(22, 'Datatypes'),
(353, 'Db Name'),
(340, 'Debug'),
(23, 'Debug is active'),
(213, 'Default template'),
(27, 'Default view'),
(28, 'Define the data to be used for the website such as the locale, sessions, name...'),
(29, 'Delete'),
(161, 'Description'),
(157, 'Destination'),
(30, 'Development'),
(31, 'Developper'),
(32, 'Disconnect'),
(151, 'Do you really want to update GotCms?'),
(374, 'document'),
(204, 'Document type does not exists'),
(33, 'Document types'),
(138, 'document-type'),
(180, 'Download'),
(169, 'Download all files'),
(173, 'Download file'),
(351, 'Driver'),
(34, 'Edit'),
(35, 'Edit translation for frontend and backend.'),
(36, 'elFinder is an open-source file manager for web. And with you can manage your files, folders and others data of this website.'),
(37, 'Fast links'),
(286, 'File ''%value%'' can''t be written'),
(259, 'File ''%value%'' does not exist'),
(255, 'File ''%value%'' does not match the given crc32 hashes'),
(263, 'File ''%value%'' does not match the given hashes'),
(273, 'File ''%value%'' does not match the given md5 hashes'),
(277, 'File ''%value%'' does not match the given sha1 hashes'),
(282, 'File ''%value%'' exceeds the defined form size'),
(281, 'File ''%value%'' exceeds the defined ini size'),
(276, 'File ''%value%'' exists'),
(258, 'File ''%value%'' has a false extension'),
(275, 'File ''%value%'' has a false mimetype of ''%type%'''),
(272, 'File ''%value%'' is no image, ''%type%'' detected'),
(270, 'File ''%value%'' is not compressed, ''%type%'' detected'),
(257, 'File ''%value%'' is not readable or does not exist'),
(288, 'File ''%value%'' was illegally uploaded. This could be a possible attack'),
(289, 'File ''%value%'' was not found'),
(284, 'File ''%value%'' was not uploaded'),
(283, 'File ''%value%'' was only partially uploaded'),
(296, 'File can''t be written'),
(292, 'File exceeds the defined form size'),
(291, 'File exceeds the defined ini size'),
(38, 'File manager'),
(298, 'File was illegally uploaded. This could be a possible attack'),
(299, 'File was not found'),
(294, 'File was not uploaded'),
(293, 'File was only partially uploaded'),
(39, 'Files'),
(171, 'Files as: identifier.phtml'),
(40, 'Firstname'),
(343, 'Force backend SSL'),
(344, 'Force frontend SSL'),
(41, 'Forgot your password?'),
(42, 'From E-mail'),
(43, 'From name'),
(44, 'General'),
(45, 'General configuration'),
(176, 'Generate'),
(208, 'Git project has been found, make sure you clone with apache user.'),
(46, 'He has many options like an window explorer. Be careful when deleting data, it is not reversible.'),
(378, 'Home'),
(352, 'Hostname'),
(162, 'Icon'),
(47, 'Identifier'),
(48, 'Import tab'),
(159, 'Infos'),
(365, 'Insert data'),
(49, 'Insert in document types, if you want to get and use property write: $this->propertyIdentifier'),
(380, 'Install'),
(367, 'Install template'),
(371, 'Installation'),
(215, 'Installation complete. Please refresh or go to /admin page to manage your website.'),
(363, 'Installation currently finish'),
(335, 'Invalid type given. Numeric string, integer or float expected'),
(219, 'Invalid type given. String expected'),
(222, 'Invalid type given. String or integer expected'),
(216, 'Invalid type given. String, integer or float expected'),
(239, 'Invalid type given. String, integer, array or DateTime expected'),
(328, 'Invalid type given. String, integer, float, boolean or array expected'),
(336, 'Invalid value given. Scalar expected'),
(50, 'Is active'),
(51, 'Is offline'),
(111, 'Language'),
(52, 'Lastname'),
(137, 'layout'),
(206, 'Layout does not exists'),
(53, 'Layouts'),
(112, 'License'),
(54, 'Limit users access with roles and permissions'),
(55, 'List'),
(160, 'Locale'),
(56, 'Log In'),
(210, 'Login'),
(182, 'Logout'),
(57, 'Make the M.V.C be with you'),
(58, 'Manage content'),
(59, 'Manage documents'),
(60, 'Manage modules'),
(61, 'Managing configuration'),
(62, 'Managing Datatypes'),
(64, 'Managing Document types'),
(63, 'Managing documents'),
(65, 'Managing Layouts'),
(66, 'Managing resources'),
(67, 'Managing Roles'),
(68, 'Managing Scripts'),
(69, 'Managing translation'),
(70, 'Managing Users'),
(71, 'Managing Views'),
(267, 'Maximum allowed height for image ''%value%'' should be ''%maxheight%'' but ''%height%'' detected'),
(279, 'Maximum allowed size for file ''%value%'' is ''%max%'' but ''%size%'' detected'),
(265, 'Maximum allowed width for image ''%value%'' should be ''%maxwidth%'' but ''%width%'' detected'),
(134, 'media'),
(268, 'Minimum expected height for image ''%value%'' should be ''%minheight%'' but ''%height%'' detected'),
(280, 'Minimum expected size for file ''%value%'' is ''%min%'' but ''%size%'' detected'),
(266, 'Minimum expected width for image ''%value%'' should be ''%minwidth%'' but ''%width%'' detected'),
(72, 'Model'),
(375, 'Module'),
(154, 'Modules'),
(146, 'Most urls views'),
(73, 'Name'),
(74, 'New'),
(75, 'Next'),
(373, 'No'),
(243, 'No record matching the input was found'),
(295, 'No temporary directory was found for file'),
(285, 'No temporary directory was found for file ''%value%'''),
(321, 'No token was provided to match against'),
(121, 'Off'),
(76, 'Offline document'),
(120, 'On'),
(262, 'One or more files can not be read'),
(77, 'Online documents'),
(144, 'Pages views'),
(78, 'Password'),
(79, 'Password Confirm'),
(80, 'Paste'),
(118, 'Please make sure all parameters are set to "Yes" before continue installation'),
(372, 'Please select language'),
(113, 'Pre-configuration'),
(117, 'Pre-installation check for GotCms %s'),
(81, 'Properties'),
(82, 'Quit'),
(122, 'Recommended'),
(124, 'Recommended settings:'),
(147, 'Referers'),
(83, 'Required'),
(362, 'Required modules'),
(84, 'Role'),
(202, 'Role does not exists'),
(201, 'Role has been deleted'),
(355, 'Roles'),
(85, 'Save'),
(86, 'Save and publish'),
(377, 'script'),
(207, 'Script does not exists'),
(158, 'Scripts'),
(347, 'Secure backend base path'),
(350, 'Secure cdn base path'),
(348, 'Secure frontend base path'),
(376, 'Select an option'),
(356, 'Select document'),
(358, 'Select template'),
(87, 'Server'),
(88, 'Server locale'),
(369, 'Session'),
(89, 'Session handler'),
(90, 'Session lifetime'),
(370, 'Session path'),
(167, 'Show / Hide form create datatype'),
(91, 'Site name'),
(156, 'Source'),
(92, 'Staffer'),
(164, 'Statistics'),
(128, 'Stats'),
(110, 'Steps:'),
(179, 'Structure and data'),
(178, 'Structure only'),
(93, 'System'),
(94, 'System configuration'),
(168, 'Tab'),
(95, 'Tabs'),
(238, 'The form submitted did not originate from the expected site'),
(314, 'The input appears to be a DNS hostname but cannot extract TLD part'),
(309, 'The input appears to be a DNS hostname but cannot match against hostname schema for TLD ''%tld%'''),
(315, 'The input appears to be a DNS hostname but cannot match TLD against known list'),
(307, 'The input appears to be a DNS hostname but contains a dash in an invalid position'),
(306, 'The input appears to be a DNS hostname but the given punycode notation cannot be decoded'),
(313, 'The input appears to be a local network name but local network names are not allowed'),
(312, 'The input appears to be an IP address, but IP addresses are not allowed'),
(235, 'The input contains an invalid amount of digits'),
(217, 'The input contains characters which are non alphabetic and no digits'),
(227, 'The input contains invalid characters'),
(220, 'The input contains non alphabetic characters'),
(305, 'The input contains non-hexadecimal characters'),
(221, 'The input does not appear to be a float'),
(224, 'The input does not appear to be a postal code'),
(240, 'The input does not appear to be a valid date'),
(323, 'The input does not appear to be a valid IP address'),
(310, 'The input does not appear to be a valid local network name'),
(339, 'The input does not appear to be a valid Uri'),
(311, 'The input does not appear to be a valid URI hostname'),
(223, 'The input does not appear to be an integer'),
(241, 'The input does not fit the date format ''%format%'''),
(329, 'The input does not match against pattern ''%pattern%'''),
(308, 'The input does not match the expected structure for a DNS hostname'),
(252, 'The input exceeds the allowed length'),
(226, 'The input failed checksum validation'),
(318, 'The input has a false IBAN format'),
(319, 'The input has failed the IBAN check'),
(218, 'The input is an empty string'),
(337, 'The input is less than %min% characters long'),
(338, 'The input is more than %max% characters long'),
(245, 'The input is not a valid email address. Use the basic format local-part@hostname'),
(324, 'The input is not a valid ISBN number'),
(331, 'The input is not a valid sitemap changefreq'),
(332, 'The input is not a valid sitemap lastmod'),
(333, 'The input is not a valid sitemap location'),
(334, 'The input is not a valid sitemap priority'),
(242, 'The input is not a valid step'),
(229, 'The input is not between ''%min%'' and ''%max%'', inclusively'),
(236, 'The input is not from an allowed institute'),
(304, 'The input is not greater or equal than ''%min%'''),
(303, 'The input is not greater than ''%min%'''),
(326, 'The input is not less or equal than ''%max%'''),
(325, 'The input is not less than ''%max%'''),
(230, 'The input is not strictly between ''%min%'' and ''%max%'''),
(231, 'The input is not valid'),
(234, 'The input must contain only digits'),
(237, 'The input seems to be an invalid creditcard number'),
(233, 'The input seems to contain an invalid checksum'),
(228, 'The input should have a length of %length% characters'),
(322, 'The input was not found in the haystack'),
(271, 'The mimetype of file ''%value%'' could not be detected'),
(214, 'The request has been stopped, please refresh the page'),
(269, 'The size of image ''%value%'' could not be detected'),
(320, 'The two given tokens do not match'),
(193, 'The user has been deleted'),
(330, 'There was an internal error while using the pattern ''%pattern%'''),
(96, 'There''s lot of Helper you can use. Those Zend Framework and GotCms, refer to documentation if you want more information.'),
(149, 'These datatypes may have problems:'),
(97, 'These items will be permanently deleted and cannot be recovered. Are you sure?'),
(148, 'These modules may have problems:'),
(125, 'These settings are recommended for PHP in order to ensure full compatibility.'),
(194, 'This datatype has been deleted'),
(188, 'This datatype has been saved'),
(140, 'This day'),
(195, 'This document type has been deleted'),
(189, 'This document type has been saved'),
(98, 'This is a document pattern. Sort by tabs, insert datatypes and specify availables views.'),
(198, 'This layout has been deleted'),
(185, 'This layout has been saved'),
(141, 'This month'),
(197, 'This property has been deleted'),
(199, 'This script has been deleted'),
(184, 'This script has been saved'),
(196, 'This tab has been deleted'),
(187, 'This user has been saved'),
(200, 'This view has been deleted'),
(186, 'This view has been saved'),
(142, 'This year'),
(254, 'Too few files, minimum ''%min%'' are expected but ''%count%'' are given'),
(302, 'Too few words, minimum ''%min%'' are expected but ''%count%'' were counted'),
(253, 'Too many files, maximum ''%max%'' are allowed but ''%count%'' are given'),
(301, 'Too much words, maximum ''%max%'' are allowed but ''%count%'' were counted'),
(99, 'Total documents'),
(130, 'Total page views'),
(129, 'Total visitors'),
(135, 'translation'),
(100, 'Translations'),
(165, 'Uninstall'),
(316, 'Unknown country within the IBAN'),
(300, 'Unknown error while uploading file'),
(290, 'Unknown error while uploading file ''%value%'''),
(345, 'Unsecure backend base path'),
(349, 'Unsecure cdn base path'),
(346, 'Unsecure frontend base path'),
(131, 'Update'),
(172, 'Upload'),
(170, 'Upload file'),
(133, 'user'),
(191, 'User can not be saved'),
(192, 'User does not exists'),
(101, 'User list'),
(357, 'Username'),
(102, 'Users'),
(327, 'Value is required and can''t be empty'),
(150, 'Version %s has been released, please upgrade for security issues.'),
(136, 'view'),
(205, 'View does not exists'),
(103, 'Views'),
(145, 'Visitors'),
(342, 'Web'),
(361, 'website'),
(104, 'Website statistics'),
(360, 'Website url'),
(105, 'Welcome %s'),
(106, 'Work like views, you can get properties, use helpers, and if you want to integrate children (view) write: $this->content.'),
(107, 'Work like Zend Framework controllers, you can get the request, response and controller plugins.'),
(119, 'Yes'),
(139, 'You already have the latest version'),
(108, 'You can create, edit, copy, cut and paste document by right-clicking on Website or children documents.'),
(152, 'You can follow this project on github:'),
(115, 'You must accept this license for continue to install this software.'),
(109, 'You use GotCms %s');

-- --------------------------------------------------------

--
-- Table structure for table `core_translate_locale`
--

CREATE TABLE IF NOT EXISTS `core_translate_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination` text COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `core_translate_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_core_translate_locale_core_translate` (`core_translate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=728 ;

--
-- Dumping data for table `core_translate_locale`
--

INSERT INTO `core_translate_locale` (`id`, `destination`, `locale`, `core_translate_id`) VALUES
(1, 'Ajouter', 'fr_FR', 1),
(2, 'Ajouter la propriÃ©tÃ©', 'fr_FR', 2),
(3, 'Ajouter un onglet', 'fr_FR', 3),
(4, 'Ajouter des traductions', 'fr_FR', 4),
(5, 'Ajouter une vue', 'fr_FR', 5),
(6, 'Panneau d''administration', 'fr_FR', 6),
(7, 'Administrateur', 'fr_FR', 7),
(8, 'Enfants autorisÃ©s', 'fr_FR', 8),
(9, 'Contenu', 'fr_FR', 9),
(10, 'Domaine du cookie', 'fr_FR', 10),
(11, 'Chemin du cookie', 'fr_FR', 11),
(12, 'Copier', 'fr_FR', 12),
(13, 'CrÃ©er', 'fr_FR', 13),
(14, 'CrÃ©er un document', 'fr_FR', 14),
(15, 'CrÃ©ez,  Ã©ditez et supprimez des utilisateurs.', 'fr_FR', 15),
(16, 'CrÃ©er, Ã©diter et supprimer des vues.', 'fr_FR', 16),
(17, 'CrÃ©er votre propre site web', 'fr_FR', 17),
(18, 'Couper', 'fr_FR', 18),
(19, 'Tableau de bord', 'fr_FR', 19),
(20, 'Les donnÃ©es peuvent Ãªtre stockÃ©s dedans. CrÃ©ez votre propre type de donnÃ©es, Ã©ditez la configuration et insÃ©rez le dans un type de document.', 'fr_FR', 20),
(21, 'Type de donnÃ©es', 'fr_FR', 21),
(22, 'Types de donnÃ©es', 'fr_FR', 22),
(23, 'DÃ©bogage activÃ©', 'fr_FR', 23),
(24, 'Cache activÃ©', 'fr_FR', 24),
(25, 'Gestionnaire de cache', 'fr_FR', 25),
(26, 'DurÃ©e de vie du cache', 'fr_FR', 26),
(27, 'Vue par dÃ©faut', 'fr_FR', 27),
(28, 'DÃ©finissez les donnÃ©es Ã  utiliser pour le site tels que la localisation, les sessions, le nom ...', 'fr_FR', 28),
(29, 'Supprimer', 'fr_FR', 29),
(30, 'DÃ©veloppement', 'fr_FR', 30),
(31, 'DÃ©veloppeur', 'fr_FR', 31),
(32, 'DÃ©connexion', 'fr_FR', 32),
(33, 'Types de documents', 'fr_FR', 33),
(34, 'Modifier', 'fr_FR', 34),
(35, 'Ã‰diter les traductions du "frontend" et du "backend".', 'fr_FR', 35),
(36, 'elFinder est un gestionnaire de fichiers open-source pour le web. Et avec vous pourrez gÃ©rer vos fichiers, dossiers et autres donnÃ©es pour le site.', 'fr_FR', 36),
(37, 'Liens rapides', 'fr_FR', 37),
(38, 'Gestionnaire de fichiers', 'fr_FR', 38),
(39, 'Fichiers', 'fr_FR', 39),
(40, 'PrÃ©nom', 'fr_FR', 40),
(41, 'Mot de passe oubliÃ© ?', 'fr_FR', 41),
(42, 'E-mail de', 'fr_FR', 42),
(43, 'De nom', 'fr_FR', 43),
(44, 'GÃ©nÃ©rale', 'fr_FR', 44),
(45, 'Configuration gÃ©nÃ©rale', 'fr_FR', 45),
(46, 'Il a beaucoup identiques au gestionnaiers de fenÃªtres. Faites attention lors de la suppression, ce n''est pas rÃ©verssible.', 'fr_FR', 46),
(47, 'Identifiant', 'fr_FR', 47),
(48, 'Importer l''onglet', 'fr_FR', 48),
(49, 'Ã€ insÃ©rer dans les types de documents. Si vous voulez rÃ©cupÃ©rer et utiliser les propriÃ©tÃ©s Ã©crivez : $this->propertyIdentifier', 'fr_FR', 49),
(50, 'Est activÃ©', 'fr_FR', 50),
(51, 'Est dÃ©sactivÃ©', 'fr_FR', 51),
(52, 'Nom', 'fr_FR', 52),
(53, 'Gabarits', 'fr_FR', 53),
(54, 'Limitez les accÃ¨s utilisateurs grÃ¢ce Ã  des rÃ´les et des permissions', 'fr_FR', 54),
(55, 'Liste', 'fr_FR', 55),
(56, 'Connexion', 'fr_FR', 56),
(57, 'Que le M.V.C soit avec vous', 'fr_FR', 57),
(58, 'Gestion du contenu', 'fr_FR', 58),
(59, 'Gestion des documents', 'fr_FR', 59),
(60, 'Gestion des modules', 'fr_FR', 60),
(61, 'Configuration', 'fr_FR', 61),
(62, 'Types de donnÃ©es', 'fr_FR', 62),
(63, 'Gestion des documents', 'fr_FR', 63),
(64, 'Types de documents', 'fr_FR', 64),
(65, 'Gestions des gabarits', 'fr_FR', 65),
(66, 'Gestion des ressources', 'fr_FR', 66),
(67, 'Gestion des rÃ´les', 'fr_FR', 67),
(68, 'Gestion des scripts', 'fr_FR', 68),
(69, 'Gestion des traductions', 'fr_FR', 69),
(70, 'Utilisateurs', 'fr_FR', 70),
(71, 'Gestion des vues', 'fr_FR', 71),
(72, 'ModÃ¨le', 'fr_FR', 72),
(73, 'Nom', 'fr_FR', 73),
(74, 'Nouveau', 'fr_FR', 74),
(75, 'Suivant', 'fr_FR', 75),
(76, 'Document hors ligne', 'fr_FR', 76),
(77, 'Documents en ligne', 'fr_FR', 77),
(78, 'Mot de passe', 'fr_FR', 78),
(79, 'Confirmation du mot de passe', 'fr_FR', 79),
(80, 'Coller', 'fr_FR', 80),
(81, 'PropriÃ©tÃ©s', 'fr_FR', 81),
(82, 'Quitter', 'fr_FR', 82),
(83, 'Requis', 'fr_FR', 83),
(84, 'RÃ´le', 'fr_FR', 84),
(85, 'Sauvegarder', 'fr_FR', 85),
(86, 'Savegarder et publier', 'fr_FR', 86),
(87, 'Serveur', 'fr_FR', 87),
(88, 'Locale serveur', 'fr_FR', 88),
(89, 'Gestionnaire de session', 'fr_FR', 89),
(90, 'DurÃ©e de vie de la session', 'fr_FR', 90),
(91, 'Nom du site', 'fr_FR', 91),
(92, 'RÃ©dacteur', 'fr_FR', 92),
(93, 'SystÃ¨me', 'fr_FR', 93),
(94, 'Configuration systÃ¨me', 'fr_FR', 94),
(95, 'Onglets', 'fr_FR', 95),
(96, 'Il y a beaucoup d''aides de vues que vous pouvez utiliser. Ceux de Zend Framework et ceux de GotCms. RÃ©fÃ©rez vous Ã  la documentation si vous voulez plus d''informations.', 'fr_FR', 96),
(97, 'Ces Ã©lÃ©ments vont Ãªtre dÃ©finitevement supprimÃ©s et ne pourront pas Ãªtre restaurÃ©s. ÃŠtes-vous sÃ»r ?', 'fr_FR', 97),
(98, 'Il s''agit d''un modÃ¨le de document. TriÃ© par onglets, insÃ©rer des types de donnÃ©es et spÃ©cifiez les vues disponibles.', 'fr_FR', 98),
(99, 'Documents au total', 'fr_FR', 99),
(100, 'Traductions', 'fr_FR', 100),
(101, 'Liste utilisateurs', 'fr_FR', 101),
(102, 'Utilisateurs', 'fr_FR', 102),
(103, 'Vues', 'fr_FR', 103),
(104, 'Stats du site web', 'fr_FR', 104),
(105, 'Bienvenue %s', 'fr_FR', 105),
(106, 'Fonctionnent comme les vues, vous pouvez rÃ©cupÃ©rer les propriÃ©tÃ©s, use helpers et si vous voulez intÃ©grer l''enfant (vue) Ã©crivez : $this->content.', 'fr_FR', 106),
(107, 'Fonctionnent comme les contrÃ´leurs Zend Framework, vous pouvez rÃ©cupÃ©rer la requÃªte (Request), la rÃ©ponse (Response) et utiliser les plugins de contrÃ´leurs.', 'fr_FR', 107),
(108, 'Vous pouvez crÃ©er, Ã©diter, copier, couper et coller des documents en faisant un clic droit sur Website ou les documents enfants.', 'fr_FR', 108),
(109, 'Vous utilisez GotCms %s', 'fr_FR', 109),
(110, 'Ã‰tapes :', 'fr_FR', 110),
(111, 'Langage', 'fr_FR', 111),
(112, 'Licence', 'fr_FR', 112),
(113, 'PrÃ©configuration', 'fr_FR', 113),
(114, 'Base de donnÃ©es', 'fr_FR', 114),
(115, 'Vous devez accepter la licence pour continuer l''installation', 'fr_FR', 115),
(116, 'Continuer', 'fr_FR', 116),
(117, 'VÃ©rification de la configuration pour GotCms %s', 'fr_FR', 117),
(118, 'Merci de vÃ©rifier que tous les paramÃ¨tres soit Ã  "Oui" avant de continuer l''installation', 'fr_FR', 118),
(119, 'Oui', 'fr_FR', 119),
(120, 'ActivÃ©', 'fr_FR', 120),
(121, 'DÃ©sactivÃ©', 'fr_FR', 121),
(122, 'RecommandÃ©', 'fr_FR', 122),
(123, '%s est accessible en Ã©criture', 'fr_FR', 123),
(124, 'ParamÃ¨tres recommandÃ©s', 'fr_FR', 124),
(125, 'Ces paramÃ¨tres sont recommandÃ©s pour PHP afin d''assurer une compatibilitÃ© totale.', 'fr_FR', 125),
(126, 'Actuel', 'fr_FR', 126),
(127, 'Tous les paramÃ¨tres doivent Ãªtre dÃ©finis Ã  "Oui"', 'fr_FR', 127),
(128, 'Statistiques', 'fr_FR', 128),
(129, 'Total de visiteurs', 'fr_FR', 129),
(130, 'Total de page vues', 'fr_FR', 130),
(131, 'Mise Ã  jour', 'fr_FR', 131),
(132, 'tous', 'fr_FR', 132),
(133, 'utilisateur', 'fr_FR', 133),
(134, 'systÃ¨me', 'fr_FR', 93),
(135, 'rÃ´le', 'fr_FR', 84),
(136, 'mÃ©dia', 'fr_FR', 134),
(137, 'traduction', 'fr_FR', 135),
(138, 'vue', 'fr_FR', 136),
(139, 'gabarit', 'fr_FR', 137),
(140, 'type de donnÃ©es', 'fr_FR', 21),
(141, 'type de document', 'fr_FR', 138),
(142, 'Vous avez dÃ©jÃ  la derniÃ¨re version', 'fr_FR', 139),
(143, 'Aujourd''hui', 'fr_FR', 140),
(144, 'Ce mois-ci', 'fr_FR', 141),
(145, 'Cet annÃ©e', 'fr_FR', 142),
(146, 'Tout le temps', 'fr_FR', 143),
(147, 'Pages vues', 'fr_FR', 144),
(148, 'Visiteurs', 'fr_FR', 145),
(149, 'Les liens les plus visitÃ©s', 'fr_FR', 146),
(150, 'RÃ©fÃ©rants', 'fr_FR', 147),
(151, 'Ces modules peuvent avoir des problÃ¨mes :', 'fr_FR', 148),
(152, 'Ces types de donnÃ©es peuvent avoir des problÃ¨mes :', 'fr_FR', 149),
(153, 'Version %s a Ã©tÃ© publiÃ©e, merci de mettre Ã  jour pour des raisons de sÃ©curitÃ©.', 'fr_FR', 150),
(154, 'Voulez-vous vraiment mettre Ã  jour GotCms ?', 'fr_FR', 151),
(155, 'Vous pouvez suivre ce projet sur github :', 'fr_FR', 152),
(156, 'Panneau d''administration', 'fr_FR', 153),
(157, 'Modules', 'fr_FR', 154),
(158, 'Configuration', 'fr_FR', 155),
(159, 'Source', 'fr_FR', 156),
(160, 'Destination', 'fr_FR', 157),
(161, 'Scripts', 'fr_FR', 158),
(162, 'Infos', 'fr_FR', 159),
(163, 'Locale', 'fr_FR', 160),
(164, 'Description', 'fr_FR', 161),
(165, 'IcÃ´ne', 'fr_FR', 162),
(166, 'Ã€ propos', 'fr_FR', 163),
(167, 'Statistiques', 'fr_FR', 164),
(168, 'DÃ©sinstaller', 'fr_FR', 165),
(169, '-- SÃ©lectionner --', 'fr_FR', 166),
(170, 'Afficher / Cacher le formulaire', 'fr_FR', 167),
(171, 'Onglets', 'fr_FR', 168),
(172, 'TÃ©lÃ©charger tous les fichiers', 'fr_FR', 169),
(173, 'Envoyer un fichier', 'fr_FR', 170),
(174, 'Fichier au format : identifiant.phtml', 'fr_FR', 171),
(175, 'Envoyer', 'fr_FR', 172),
(176, 'TÃ©lÃ©charger le fichier', 'fr_FR', 173),
(177, '%d commentaire(s) actif(s)', 'fr_FR', 174),
(178, '%d commentaire(s) inactif(s)', 'fr_FR', 175),
(179, 'GÃ©nÃ©rer', 'fr_FR', 176),
(180, 'DonnÃ©es seulement', 'fr_FR', 177),
(181, 'Structure seulement', 'fr_FR', 178),
(182, 'Structure et donnÃ©es', 'fr_FR', 179),
(183, 'TÃ©lÃ©charger', 'fr_FR', 180),
(184, 'Attention', 'fr_FR', 181),
(185, 'DÃ©connexion', 'fr_FR', 182),
(186, 'Cliquez pour vous dÃ©connecter', 'fr_FR', 183),
(187, 'Le script a Ã©tÃ© sauvegardÃ©', 'fr_FR', 184),
(188, 'Le gabarit a Ã©tÃ© sauvegardÃ©', 'fr_FR', 185),
(189, 'La vue a Ã©tÃ© sauvegardÃ©e', 'fr_FR', 186),
(190, 'L''utilisateur a Ã©tÃ© sauvegardÃ©', 'fr_FR', 187),
(191, 'Le type de donnÃ©e a Ã©tÃ© sauvegardÃ©', 'fr_FR', 188),
(192, 'Type de document a Ã©tÃ© sauvegardÃ©', 'fr_FR', 189),
(193, 'Configuration sauvegardÃ©e', 'fr_FR', 190),
(194, 'L''utilisateur ne peut Ãªtre sauvegardÃ©', 'fr_FR', 191),
(195, 'L''utilisateur n''existe pas', 'fr_FR', 192),
(196, 'L''utilisatuer a Ã©tÃ© supprimÃ©', 'fr_FR', 193),
(197, 'Le type de donnÃ©es a Ã©tÃ© supprimÃ©', 'fr_FR', 194),
(198, 'Le type de document a Ã©tÃ© supprimÃ©', 'fr_FR', 195),
(199, 'L''onglet a Ã©tÃ© supprimÃ©', 'fr_FR', 196),
(200, 'La propriÃ©tÃ© a Ã©tÃ© supprimÃ©e', 'fr_FR', 197),
(201, 'Le gabarit a Ã©tÃ© supprimÃ©', 'fr_FR', 198),
(202, 'Le script a Ã©tÃ© supprimÃ©', 'fr_FR', 199),
(203, 'La vue a Ã©tÃ© supprimÃ©e', 'fr_FR', 200),
(204, 'Le rÃ´le a Ã©tÃ© supprimÃ©', 'fr_FR', 201),
(205, 'Le rÃ´le n\\existe pas', 'fr_FR', 202),
(206, 'Le type de donnÃ©es n''existe pas', 'fr_FR', 203),
(207, 'Le type de document n''existe pas', 'fr_FR', 204),
(208, 'La vue n''existe pas', 'fr_FR', 205),
(209, 'Le gabarit n''existe pas', 'fr_FR', 206),
(210, 'Le script n''existe pas', 'fr_FR', 207),
(211, 'Un projet Git a Ã©tÃ© trouvÃ©, attention Ã  bien le cloner avec l''utilisateur apache.', 'fr_FR', 208),
(212, 'Configuration de la base de donnÃ©es', 'fr_FR', 209),
(213, 'Identifiant de connexion', 'fr_FR', 210),
(214, 'Mot de passe administrateur', 'fr_FR', 211),
(215, 'Confirmation du mot de passe', 'fr_FR', 212),
(216, 'Design par dÃ©faut', 'fr_FR', 213),
(217, 'La requÃªte a Ã©tÃ© stoppÃ©e, merci de rafraÃ®chir la page', 'fr_FR', 214),
(218, 'Installation terminÃ©e. Merci de rafraÃ®chir la page ou d''aller sur la page /admin afin de gÃ©rer votre site internet.', 'fr_FR', 215),
(219, 'Type invalide. ChaÃ®ne, entier ou flottant attendu', 'fr_FR', 216),
(220, 'L''entrÃ©e contient des caractÃ¨res non alphabÃ©tiques et non numÃ©riques', 'fr_FR', 217),
(221, 'L''entrÃ©e est une chaÃ®ne vide', 'fr_FR', 218),
(222, 'Type invalide. ChaÃ®ne attendue', 'fr_FR', 219),
(223, 'L''entrÃ©e contient des caractÃ¨res non alphabÃ©tiques', 'fr_FR', 220),
(224, 'L''entrÃ©e n''est pas un nombre flottant', 'fr_FR', 221),
(225, 'Type invalide. ChaÃ®ne ou entier attendu', 'fr_FR', 222),
(226, 'L''entrÃ©e n''est pas un entier', 'fr_FR', 223),
(227, 'L''entrÃ©e ne semble pas Ãªtre un code postal valide', 'fr_FR', 224),
(228, 'Une exception a Ã©tÃ© levÃ©e lors de la validation de l''entrÃ©e', 'fr_FR', 225),
(229, 'L''entrÃ©e n''a pas passÃ© la validation de la somme de contrÃ´le', 'fr_FR', 226),
(230, 'L''entrÃ©e contient des caractÃ¨res invalides', 'fr_FR', 227),
(231, 'L''entrÃ©e devrait contenir %length% caractÃ¨res', 'fr_FR', 228),
(232, 'L''entrÃ©e n''est pas comprise entre ''%min%'' et ''%max%'', inclusivement', 'fr_FR', 229),
(233, 'L''entrÃ©e n''est pas strictement comprise entre ''%min%'' et ''%max%''', 'fr_FR', 230),
(234, 'L''entrÃ©e n''est pas valide', 'fr_FR', 231),
(235, 'Une exception a Ã©tÃ© levÃ©e dans la fonction de rappel', 'fr_FR', 232),
(236, 'L''entrÃ©e semble contenir une somme de contrÃ´le invalide', 'fr_FR', 233),
(237, 'L''entrÃ©e ne doit contenir que des chiffres', 'fr_FR', 234),
(238, 'L''entrÃ©e contient un nombre invalide de chiffres', 'fr_FR', 235),
(239, 'L''entrÃ©e ne provient pas d''une institution autorisÃ©e', 'fr_FR', 236),
(240, 'L''entrÃ©e semble Ãªtre un numÃ©ro de carte bancaire invalide', 'fr_FR', 237),
(241, 'Le formulaire ne provient pas du site attendu', 'fr_FR', 238),
(242, 'EntrÃ©e invalide. ChaÃ®ne, entier, tableau ou DateTime attendu', 'fr_FR', 239),
(243, 'L''entrÃ©e ne semble pas Ãªtre une date valide', 'fr_FR', 240),
(244, 'L''entrÃ©e ne correspond pas au format ''%format%''', 'fr_FR', 241),
(245, 'L''entrÃ©e n''est pas un multiple valide', 'fr_FR', 242),
(246, 'Aucun enregistrement trouvÃ©', 'fr_FR', 243),
(247, 'Un enregistrement a Ã©tÃ© trouvÃ©', 'fr_FR', 244),
(248, 'L''entrÃ©e n''est pas une adresse email valide. Utilisez le format local-part@hostname', 'fr_FR', 245),
(249, '''%hostname%'' n''est pas un nom d''hÃ´te valide pour l''adresse email', 'fr_FR', 246),
(250, '''%hostname%'' ne semble pas avoir d''enregistrement MX valide pour l''adresse email', 'fr_FR', 247),
(251, '''%hostname%'' n''est pas dans un segment rÃ©seau routable. L''adresse email ne devrait pas Ãªtre rÃ©solue depuis un rÃ©seau public.', 'fr_FR', 248),
(252, '''%localPart%'' ne correspond pas au format dot-atom', 'fr_FR', 249),
(253, '''%localPart%'' ne correspond pas au format quoted-string', 'fr_FR', 250),
(254, '''%localPart%'' n''est pas une partie locale valide pour l''adresse email', 'fr_FR', 251),
(255, 'L''entrÃ©e dÃ©passe la taille autorisÃ©e', 'fr_FR', 252),
(256, 'Trop de fichiers. ''%max%'' sont autorisÃ©s au maximum, mais ''%count%'' reÃ§u(s)', 'fr_FR', 253),
(257, 'Trop peu de fichiers. ''%min%'' sont attendus, mais ''%count%'' reÃ§u(s)', 'fr_FR', 254),
(258, 'Le fichier ''%value%'' ne correspond pas aux sommes de contrÃ´le CRC32 donnÃ©es', 'fr_FR', 255),
(259, 'Une somme de contrÃ´le CRC32 n''a pas pu Ãªtre calculÃ©e pour le fichier', 'fr_FR', 256),
(260, 'Le fichier ''%value%'' n''est pas lisible ou n''existe pas', 'fr_FR', 257),
(261, 'Le fichier ''%value%'' a une mauvaise extension', 'fr_FR', 258),
(262, 'Le fichier ''%value%'' n''existe pas', 'fr_FR', 259),
(263, 'Tous les fichiers devraient avoir une taille maximale de ''%max%'' mais une taille de ''%size%'' a Ã©tÃ© dÃ©tectÃ©e', 'fr_FR', 260),
(264, 'Tous les fichiers devraient avoir une taille minimale de ''%max%'' mais une taille de ''%size%'' a Ã©tÃ© dÃ©tectÃ©e', 'fr_FR', 261),
(265, 'Un ou plusieurs fichiers ne peut pas Ãªtre lu', 'fr_FR', 262),
(266, 'Le fichier ''%value%'' ne correspond pas aux sommes de contrÃ´le donnÃ©es', 'fr_FR', 263),
(267, 'Une somme de contrÃ´le n''a pas pu Ãªtre calculÃ©e pour le fichier', 'fr_FR', 264),
(268, 'La largeur maximale pour l''image ''%value%'' devrait Ãªtre ''%maxwidth%'', mais ''%width%'' dÃ©tectÃ©', 'fr_FR', 265),
(269, 'La largeur minimale pour l''image ''%value%'' devrait Ãªtre ''%minwidth%'', mais ''%width%'' dÃ©tectÃ©', 'fr_FR', 266),
(270, 'La hauteur maximale pour l''image ''%value%'' devrait Ãªtre ''%maxheight%'', mais ''%height%'' dÃ©tectÃ©', 'fr_FR', 267),
(271, 'La hauteur maximale pour l''image ''%value%'' devrait Ãªtre ''%minheight%'', mais ''%height%'' dÃ©tectÃ©', 'fr_FR', 268),
(272, 'La taille de l''image ''%value%'' n''a pas pu Ãªtre dÃ©tectÃ©e', 'fr_FR', 269),
(273, 'Le fichier ''%value%'' n''est pas compressÃ©, ''%type%'' dÃ©tectÃ©', 'fr_FR', 270),
(274, 'Le type MIME du fichier ''%value%'' n''a pas pu Ãªtre dÃ©tectÃ©', 'fr_FR', 271),
(275, 'Le fichier ''%value%'' n''est pas une image, ''%type%'' dÃ©tectÃ©', 'fr_FR', 272),
(276, 'Le fichier ''%value%'' ne correspond pas aux sommes de contrÃ´le MD5 donnÃ©es', 'fr_FR', 273),
(277, 'Une somme de contrÃ´le MD5 n''a pas pu Ãªtre calculÃ©e pour le fichier', 'fr_FR', 274),
(278, 'Le fichier ''%value%'' a un faux type MIME : ''%type%''', 'fr_FR', 275),
(279, 'Le fichier ''%value%'' existe', 'fr_FR', 276),
(280, 'Le fichier ''%value%'' ne correspond pas aux sommes de contrÃ´le SHA1 donnÃ©es', 'fr_FR', 277),
(281, 'Une somme de contrÃ´le SHA1 n''a pas pu Ãªtre calculÃ©e pour le fichier', 'fr_FR', 278),
(282, 'La taille de fichier maximale pour ''%value%'' est ''%max%'', mais ''%size%'' dÃ©tectÃ©e', 'fr_FR', 279),
(283, 'La taille de fichier minimale pour ''%value%'' est ''%min%'', mais ''%size%'' dÃ©tectÃ©e', 'fr_FR', 280),
(284, 'Le fichier ''%value%'' dÃ©passe la taille dÃ©finie dans le fichier INI', 'fr_FR', 281),
(285, 'Le fichier ''%value%'' dÃ©passe la taille dÃ©finie dans le formulaire', 'fr_FR', 282),
(286, 'Le fichier ''%value%'' n''a Ã©tÃ© que partiellement envoyÃ©', 'fr_FR', 283),
(287, 'Le fichier ''%value%'' n''a pas Ã©tÃ© envoyÃ©', 'fr_FR', 284),
(288, 'Le dossier temporaire n''a pas Ã©tÃ© trouvÃ© pour le fichier ''%value%''', 'fr_FR', 285),
(289, 'Impossible d''Ã©crire dans le fichier ''%value%''', 'fr_FR', 286),
(290, 'Une extension PHP a retournÃ© une erreur en envoyant le fichier ''%value%''', 'fr_FR', 287),
(291, 'Le fichier ''%value%'' a Ã©tÃ© envoyÃ© illÃ©galement. Il peut s''agir d''une attaque', 'fr_FR', 288),
(292, 'Le fichier ''%value%'' n''a pas Ã©tÃ© trouvÃ©', 'fr_FR', 289),
(293, 'Erreur inconnue lors de l''envoi du fichier ''%value%''', 'fr_FR', 290),
(294, 'Le fichier dÃ©passe la taille dÃ©finie dans le fichier INI', 'fr_FR', 291),
(295, 'Le fichier dÃ©passe la taille dÃ©finie dans le formulaire', 'fr_FR', 292),
(296, 'Le fichier n''a Ã©tÃ© que partiellement envoyÃ©', 'fr_FR', 293),
(297, 'Le fichier n''a pas Ã©tÃ© envoyÃ©', 'fr_FR', 294),
(298, 'Le dossier temporaire n''a pas Ã©tÃ© trouvÃ© pour le fichier', 'fr_FR', 295),
(299, 'Impossible d''Ã©crire dans le fichier', 'fr_FR', 296),
(300, 'Une extension PHP a retournÃ© une erreur en envoyant le fichier', 'fr_FR', 297),
(301, 'Le fichier a Ã©tÃ© envoyÃ© illÃ©galement. Il peut s''agir d''une attaque', 'fr_FR', 298),
(302, 'Le fichier n''a pas Ã©tÃ© trouvÃ©', 'fr_FR', 299),
(303, 'Erreur inconnue lors de l''envoi du fichier', 'fr_FR', 300),
(304, 'Trop de mots. ''%max%'' sont autorisÃ©s, ''%count%'' comptÃ©s', 'fr_FR', 301),
(305, 'Pas assez de mots. ''%min%'' sont attendus, ''%count%'' comptÃ©s', 'fr_FR', 302),
(306, 'L''entrÃ©e n''est pas supÃ©rieure Ã  ''%min%''', 'fr_FR', 303),
(307, 'L''entrÃ©e n''est pas supÃ©rieure ou Ã©gale Ã  ''%min%''', 'fr_FR', 304),
(308, 'L''entrÃ©e contient des caractÃ¨res non-hexadÃ©cimaux', 'fr_FR', 305),
(309, 'L''entrÃ©e semble Ãªtre un DNS valide mais le code n''a pu Ãªtre dÃ©codÃ©', 'fr_FR', 306),
(310, 'L''entrÃ©e semble Ãªtre un nom d''hÃ´te DNS mais il contient un tiret Ã  une position invalide', 'fr_FR', 307),
(311, 'L''entrÃ©e ne correspond pas Ã  la structure attendue d''un nom d''hÃ´te DNS', 'fr_FR', 308),
(312, 'L''entrÃ©e semble Ãªtre un nom d''hÃ´te DNS valide mais ne correspond pas au schÃ©ma de l''extension TLD ''%tld%''', 'fr_FR', 309),
(313, 'L''entrÃ©e ne semble pas Ãªtre un nom de rÃ©seau local valide', 'fr_FR', 310),
(314, 'L''entrÃ©e ne semble pas Ãªtre une URI de nom d''hÃ´te valide', 'fr_FR', 311),
(315, 'L''entrÃ©e semble Ãªtre une adresse IP valide, mais les adresses IP ne sont pas autorisÃ©es', 'fr_FR', 312),
(316, 'L''entrÃ©e semble Ãªtre un nom de rÃ©seau local, mais les rÃ©seaux locaux ne sont pas autorisÃ©s', 'fr_FR', 313),
(317, 'L''entrÃ©e semble Ãªtre un nom d''hÃ´te DNS mais l''extension TLD ne peut Ãªtre extraite', 'fr_FR', 314),
(318, 'L''entrÃ©e semble Ãªtre un nom d''hÃ´te DNS mais son extension TLD semble inconnue', 'fr_FR', 315),
(319, 'Pays inconnu pour l''IBAN', 'fr_FR', 316),
(320, 'Les pays en dehors du Single Euro Payments Area (SEPA) ne sont pas supportÃ©s', 'fr_FR', 317),
(321, 'L''entrÃ©e n''a pas un format IBAN valide', 'fr_FR', 318),
(322, 'L''entrÃ©e n''a pas passÃ© la validation IBAN', 'fr_FR', 319),
(323, 'Les deux jetons passÃ©s ne correspondent pas', 'fr_FR', 320),
(324, 'Aucun jeton de correspondance n''a Ã©tÃ© donnÃ©', 'fr_FR', 321),
(325, 'L''entrÃ©e ne fait pas partie des valeurs attendues', 'fr_FR', 322),
(326, 'L''entrÃ©e ne semble pas Ãªtre une adresse IP valide', 'fr_FR', 323),
(327, 'L''entrÃ©e n''est pas un nombre ISBN valide', 'fr_FR', 324),
(328, 'L''entrÃ©e n''est pas infÃ©rieure Ã  ''%max%''', 'fr_FR', 325),
(329, 'L''entrÃ©e n''est pas infÃ©rieure ou Ã©gale Ã  ''%max%''', 'fr_FR', 326),
(330, 'Une valeur est requise et ne peut Ãªtre vide', 'fr_FR', 327),
(331, 'Type invalide. ChaÃ®ne, entier, flottant, boolÃ©en ou tableau attendu', 'fr_FR', 328),
(332, 'L''entrÃ©e n''est pas valide avec l''expression ''%pattern%''', 'fr_FR', 329),
(333, 'Une erreur interne est survenue avec l''expression ''%pattern%''', 'fr_FR', 330),
(334, 'L''entrÃ©e n''est pas une valeur de frÃ©quence de sitemap valide', 'fr_FR', 331),
(335, 'L''entrÃ©e n''est pas une date de modification de sitemap valide', 'fr_FR', 332),
(336, 'L''entrÃ©e n''est pas un emplacement de sitemap valide', 'fr_FR', 333),
(337, 'L''entrÃ©e n''est pas une prioritÃ© de sitemap valide', 'fr_FR', 334),
(338, 'Type invalide. ChaÃ®ne numÃ©rique, entier ou flottant attendu', 'fr_FR', 335),
(339, 'Type invalide. Scalaire attendu', 'fr_FR', 336),
(340, 'L''entrÃ©e contient moins de %min% caractÃ¨res', 'fr_FR', 337),
(341, 'L''entrÃ©e contient plus de %max% caractÃ¨res', 'fr_FR', 338),
(342, 'L''entrÃ©e ne semble pas Ãªtre une URI valide', 'fr_FR', 339),
(343, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru_RU', 1),
(344, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÑÐ²Ð¾Ð¹ÑÑ‚Ð²Ð¾', 'ru_RU', 2),
(345, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð²ÐºÐ»Ð°Ð´ÐºÑƒ', 'ru_RU', 3),
(346, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¿ÐµÑ€ÐµÐ²Ð¾Ð´', 'ru_RU', 4),
(347, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð²Ð¸Ð´', 'ru_RU', 5),
(348, ' ', 'ru_RU', 6),
(349, 'ÐÐ´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€', 'ru_RU', 7),
(350, 'Ð”Ð¾Ð»Ñ‚ÑƒÐ¿Ð½Ñ‹Ðµ Ð¿Ð¾Ð´Ñ‡Ð¸Ð½ÐµÐ½Ð¸Ñ', 'ru_RU', 8),
(351, 'Ð¡Ð¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ', 'ru_RU', 9),
(352, 'ÐŸÐµÑ‡ÐµÐ½Ð¸Ðµ Ð´Ð¾Ð¼ÐµÐ½Ð°', 'ru_RU', 10),
(353, 'ÐŸÑƒÑ‚ÑŒ Ð¿ÐµÑ‡ÐµÐ½ÑŒÑ', 'ru_RU', 11),
(354, 'ÐšÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ru_RU', 12),
(355, 'Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ', 'ru_RU', 13),
(356, 'Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚', 'ru_RU', 14),
(357, 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¸ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹.', 'ru_RU', 15),
(358, 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¸ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ðµ Ð²Ð¸Ð´Ð¾Ð².', 'ru_RU', 16),
(359, 'Ð¡Ð¾Ð´Ð°Ð½Ð¸Ðµ ÑÐ¾Ð±ÑÑ‚Ð²ÐµÐ½Ð½Ð¾Ð³Ð¾ ÑÐ°Ð¹Ñ‚Ð°.', 'ru_RU', 17),
(360, 'Ð’Ñ‹Ñ€ÐµÐ·Ð°Ñ‚ÑŒ', 'ru_RU', 18),
(361, 'ÐŸÐ°Ð½ÐµÐ»ÑŒ Ð½Ð°ÑÑ‚Ñ€Ð¾ÐµÐº', 'ru_RU', 19),
(362, 'ÐœÐ¾Ð¶Ð½Ð¾ ÑÐ¾Ñ…Ñ€Ð°Ð½ÑÑ‚ÑŒ Ð»ÑŽÐ±Ñ‹Ðµ Ð´Ð°Ð½Ð½Ñ‹Ðµ. Ð¡Ð¾Ð·Ð´Ð°Ð¹Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ñ‚Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ…, Ð—Ð°Ð¹Ð´Ð¸Ñ‚Ðµ Ð² ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ, Ð¸ Ð²Ñ‹Ð±ÐµÑ€ÐµÑ‚Ðµ ÑÑ‚Ð¾Ñ‚ Ñ‚Ð¸Ð¿ Ð´Ð»Ñ ÑÐ²Ð¾ÐµÐ³Ð¾ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°.', 'ru_RU', 20),
(363, 'Ð¢Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 21),
(364, 'Ð¢Ð¸Ð¿Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 22),
(365, 'ÐžÑ‚Ð»Ð°Ð´ÐºÐ°', 'ru_RU', 340),
(366, 'ÐžÑ‚Ð»Ð°Ð´ÐºÐ° Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°', 'ru_RU', 23),
(367, 'ÐšÐµÑˆ', 'ru_RU', 341),
(368, 'ÐšÐµÑˆ Ð°ÐºÑ‚Ð¸Ð²ÐµÑ€Ð¾Ð²Ð°Ð½', 'ru_RU', 24),
(369, 'ÐžÐ±Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸Ðº ÐºÐµÑˆÐ°', 'ru_RU', 25),
(370, 'Ð’Ñ€ÐµÐ¼Ñ Ð¶Ð¸Ð·Ð½Ð¸ ÐºÐµÑˆÐ°', 'ru_RU', 26),
(371, 'Ð¡ÐµÑ‚ÑŒ', 'ru_RU', 342),
(372, 'ÐŸÑ€Ð¸Ð½ÑƒÐ´Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ SSL Ð´Ð»Ñ ÑÐµÑ€Ð²ÐµÑ€Ð°', 'ru_RU', 343),
(373, 'ÐŸÑ€Ð¸Ð½ÑƒÐ´Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ SSL Ð´Ð»Ñ Ð¸Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹ÑÐ°', 'ru_RU', 344),
(374, 'ÐžÐ±Ñ‹Ñ‡Ð½Ñ‹Ð¹ Ð¿ÑƒÑ‚ÑŒ ÑÐµÑ€Ð²ÐµÑ€Ð°', 'ru_RU', 345),
(375, 'ÐžÐ±Ñ‹Ñ‡Ð½Ñ‹Ð¹ Ð¿ÑƒÑ‚ÑŒ Ð¸Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹ÑÐ°', 'ru_RU', 346),
(376, 'Ð‘ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ñ‹Ð¹ Ð¿ÑƒÑ‚ÑŒ ÑÐµÑ€Ð²ÐµÑ€Ð°', 'ru_RU', 347),
(377, 'Ð‘ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ñ‹Ð¹ Ð¿ÑƒÑ‚ÑŒ Ð¸Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹ÑÐ°', 'ru_RU', 348),
(378, 'ÐžÐ±Ñ‹Ñ‡Ð½Ñ‹Ð¹ Ð¿ÑƒÑ‚ÑŒ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¹ cdn', 'ru_RU', 349),
(379, 'Ð‘ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ñ‹Ð¹ Ð¿ÑƒÑ‚ÑŒ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¹ cdn', 'ru_RU', 350),
(380, 'Ð’Ð¸Ð´ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ', 'ru_RU', 27),
(381, 'ÐžÐ¿Ñ€ÐµÐ´ÐµÐ»Ð¸Ñ‚Ðµ Ð´Ð°Ð½Ð½Ñ‹Ðµ, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð±ÑƒÐ´ÑƒÑ‚ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒÑÑ Ð´Ð»Ñ ÑÐ°Ð¹Ñ‚Ð°, Ñ‚Ð°ÐºÐ¸Ðµ ÐºÐ°Ðº ÑÐ·Ñ‹Ðº, ÑÐµÑÑÐ¸Ð¸, Ð¸Ð¼Ñ ...', 'ru_RU', 28),
(382, 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'ru_RU', 29),
(383, 'Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°', 'ru_RU', 30),
(384, 'Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸Ðº', 'ru_RU', 31),
(385, 'Ð Ð°Ð·ÐµÐ´ÐµÐ½Ð¸Ñ‚ÑŒ', 'ru_RU', 32),
(386, 'Ð¢Ð¸Ð¿ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°', 'ru_RU', 33),
(387, 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ru_RU', 34),
(388, 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿ÐµÑ€ÐµÐ²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ñ Ð´Ð»Ñ Ð¸Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹ÑÐ° Ð¸ ÑÐµÑ€Ð²ÐµÑ€Ð°".', 'ru_RU', 35),
(389, 'elFinder ÑÐ²Ð»ÑÐµÑ‚ÑÑ Ð¾Ñ‚ÐºÑ€Ñ‹Ñ‚Ñ‹Ð¼ Ð¸ÑÑ…Ð¾Ð´Ð½Ñ‹Ð¼ ÐºÐ¾Ð´Ð¾Ð¼ Ñ„Ð°Ð¹Ð»Ð¾Ð²Ð¾Ð³Ð¾ Ð¼ÐµÐ½ÐµÐ´Ð¶ÐµÑ€Ð° Ð´Ð»Ñ ÑÐ°Ð¹Ñ‚Ð°. Ð¡ ÐµÐ³Ð¾ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒÑŽ Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ ÑÐ²Ð¾Ð¸Ð¼Ð¸ Ñ„Ð°Ð¹Ð»Ð°Ð¼Ð¸, Ð¿Ð°Ð¿ÐºÐ°Ð¼Ð¸ Ð¸ Ð´Ñ€ÑƒÐ³Ð¸Ð¼Ð¸ Ð´Ð', 'ru_RU', 36),
(390, 'Ð‘Ð°ÑÑ‚Ñ€Ð°Ñ ÑÑÑ‹Ð»ÐºÐ°', 'ru_RU', 37),
(391, 'Ð¤Ð°Ð¹Ð»Ð¾Ð²Ð°Ð¹ Ð¼ÐµÐ½ÐµÐ´Ð¶ÐµÑ€', 'ru_RU', 38),
(392, 'Ð¤Ð°Ð¹Ð»Ñ‹', 'ru_RU', 39),
(393, 'Ð˜Ð¼Ñ', 'ru_RU', 40),
(394, 'ÐÐ°Ð¿Ð¾Ð¼Ð½Ð¸Ñ‚ÑŒ Ð’Ð°Ñˆ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?', 'ru_RU', 41),
(395, 'E-mail Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ Ð¾Ñ‚', 'ru_RU', 42),
(396, 'Ð˜Ð¼Ñ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÐµÐ»Ñ', 'ru_RU', 43),
(397, 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', 'ru_RU', 44),
(398, 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ', 'ru_RU', 45),
(399, 'Ð•ÑÑ‚ÑŒ Ð¼Ð½Ð¾Ð³Ð¾ Ð¾Ð¿Ñ†Ð¸Ð¹ ÐºÐ°Ðº Ñƒ Ð¾ÐºÐ½Ð° Ð¿Ñ€Ð¾Ð²Ð¾Ð´Ð½Ð¸ÐºÐ°. Ð‘ÑƒÐ´ÑŒÑ‚Ðµ Ð²Ð½Ð¸Ð¼Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹ Ð¿Ñ€Ð¸ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ð¸ Ð´Ð°Ð½Ð½Ñ‹Ñ…, Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ñ Ð½Ðµ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ð¼Ð°!', 'ru_RU', 46),
(400, 'Ð˜Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ñ€', 'ru_RU', 47),
(401, 'Ð˜Ð¼Ð¿Ð¾Ñ€Ñ‚ Ð²ÐºÐ»Ð°Ð´Ð¾Ðº', 'ru_RU', 48),
(402, 'Ð’ÑÑ‚Ð°Ð²Ñ‚Ðµ Ñ‚Ð¸Ð¿ Ð¾Ð±ÑŠÐµÐºÑ‚Ð° Ð² Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚, ÐµÑÐ»Ð¸ Ð²Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð¸ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐ²ÐµÐ´ÐµÐ½Ð¸Ñ Ð¾Ð± Ð¾Ð±ÑŠÐµÐºÑ‚Ðµ : $this->propertyIdentifier', 'ru_RU', 49),
(403, 'ÐÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¾', 'ru_RU', 50),
(404, 'ÐÐ²Ñ‚Ð¾Ð½Ð¾Ð½Ñ‹Ð¹ Ñ€ÐµÐ¶Ð¸Ð¼', 'ru_RU', 51),
(405, 'Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ', 'ru_RU', 52),
(406, 'Ð¨Ð°Ð±Ð»Ð¾Ð½', 'ru_RU', 53),
(407, 'ÐžÐ³Ñ€Ð°Ð½Ð¸Ñ‡ÐµÐ½Ð¸Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹  Ð´Ð»Ñ Ñ€Ð¾Ð»ÐµÐ¹', 'ru_RU', 54),
(408, 'Ð¡Ð¿Ð¸ÑÐ¾Ðº', 'ru_RU', 55),
(409, 'ÑÐ¿Ð¸ÑÐ¾Ðº', 'ru_RU', 55),
(410, 'Ð’Ñ…Ð¾Ð´', 'ru_RU', 56),
(411, 'M.V.C ÑÐ¾Ð·Ð´Ð°Ð½Ð¾ Ð´Ð»Ñ Ñ‚ÐµÐ±Ñ', 'ru_RU', 57),
(412, ' ', 'ru_RU', 58),
(413, ' ', 'ru_RU', 59),
(414, ' ', 'ru_RU', 60),
(415, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸ÐµÐ¹', 'ru_RU', 61),
(416, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ‚Ð¸Ð¿Ð°Ð¼Ð¸ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 62),
(417, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ð¼Ð¸', 'ru_RU', 63),
(418, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ‚Ð¸Ð¿Ð°Ð¼Ð¸ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð¾Ð²', 'ru_RU', 64),
(419, 'Ð£Ð¿Ñ€Ð°Ð»ÐµÐ½Ð¸Ðµ ÑˆÐ°Ð±Ð»Ð¾Ð½Ð°Ð¼Ð¸', 'ru_RU', 65),
(420, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€ÐµÑÑƒÑ€ÑÐ°Ð¼Ð¸', 'ru_RU', 66),
(421, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€Ð¾Ð»ÑÐ¼Ð¸', 'ru_RU', 67),
(422, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐºÑ€Ð¸Ð¿Ñ‚Ð°Ð¼Ð¸', 'ru_RU', 68),
(423, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿ÐµÑ€ÐµÐ²Ð¾Ð´Ð¾Ð¼', 'ru_RU', 69),
(424, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸', 'ru_RU', 70),
(425, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð²Ð¸Ð´Ð°Ð¼Ð¸', 'ru_RU', 71),
(426, 'ÐœÐ¾Ð´ÐµÐ»ÑŒ', 'ru_RU', 72),
(427, 'Ð˜Ð¼Ñ', 'ru_RU', 73),
(428, 'ÐÐ¾Ð²Ñ‹Ð¹', 'ru_RU', 74),
(429, 'Ð¡Ð»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹', 'ru_RU', 75),
(430, 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚ ÑÐ½ÑÑ‚ Ñ Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ°Ñ†Ð¸Ð¸', 'ru_RU', 76),
(431, 'Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½', 'ru_RU', 77),
(432, 'Ð”Ñ€Ð°Ð¹Ð²ÐµÑ€', 'ru_RU', 351),
(433, 'Ð¡ÐµÑ€Ð²ÐµÑ€ Ð±Ð°Ð·Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 352),
(434, 'Ð‘Ð°Ð·Ð° Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 353),
(435, 'ÐšÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ Ð’Ð°ÑˆÐµÐ³Ð¾ ÑÐ°Ð¹Ñ‚Ð°', 'ru_RU', 354),
(436, 'Ð Ð¾Ð»Ð¸', 'ru_RU', 355),
(437, 'Ð’Ñ‹Ð±ÐµÑ€ÐµÑ‚Ðµ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚', 'ru_RU', 356),
(438, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ', 'ru_RU', 357),
(439, 'ÐŸÐ°Ñ€Ð¾Ð»ÑŒ', 'ru_RU', 78),
(440, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€', 'ru_RU', 210),
(441, 'ÐŸÐ°Ñ€Ð¾Ð»ÑŒ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°', 'ru_RU', 211),
(442, 'ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð¿Ð°Ñ€Ð¾Ð»Ñ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°', 'ru_RU', 212),
(443, 'ÐžÑÐ½Ð¾Ð²Ð½Ð¾Ð¹ ÑˆÐ°Ð±Ð»Ð¾Ð½', 'ru_RU', 213),
(444, 'Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑˆÐ°Ð±Ð»Ð¾Ð½', 'ru_RU', 358),
(445, 'ÐÐ²Ñ‚Ð¾Ñ€', 'ru_RU', 359),
(446, 'URL ÑÐ°Ð¹Ñ‚Ð°', 'ru_RU', 360),
(447, 'ÑÑÑ‹Ð»ÐºÐ° Ð½Ð° ÑÐ°Ð¹Ñ‚', 'ru_RU', 361),
(448, 'ÐÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ñ‹Ðµ Ð¼Ð¾Ð´ÑƒÐ»Ð¸', 'ru_RU', 362),
(449, 'ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð¿Ð°Ñ€Ð¾Ð»Ñ', 'ru_RU', 79),
(450, 'Ð—Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð¸Ðµ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¸', 'ru_RU', 363),
(451, 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð±Ð°Ð·Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 364),
(452, 'Ð—Ð°Ð¿Ð¾Ð»Ð½ÐµÐ½Ðµ Ð±Ð°Ð·Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 365),
(453, 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹ Ð¸ Ñ€Ð¾Ð»ÐµÐ¹', 'ru_RU', 366),
(454, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° ÑˆÐ°Ð±Ð»Ð¾Ð½Ð°', 'ru_RU', 367),
(455, 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ñ„Ð°Ð¹Ð»Ð° ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸', 'ru_RU', 368),
(456, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð°. ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ Ð¸Ð»Ð¸ Ð¿ÐµÑ€ÐµÐ¹Ð´Ð¸Ñ‚Ðµ Ð½Ð° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ "Ð²Ð°Ñˆ ÑÐ°Ð¹Ñ‚"/admin Ð´Ð»Ñ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ ÑÐ°Ð¹Ñ‚Ð¾Ð¼', 'ru_RU', 215),
(457, 'Ð’ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru_RU', 80),
(458, 'Ð¡Ð²Ð¾Ð¹ÑÑ‚Ð²Ð°', 'ru_RU', 81),
(459, 'Ð’Ñ‹Ñ…Ð¾Ð´', 'ru_RU', 82),
(460, 'ÐžÐ¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 83),
(461, 'Ð Ð¾Ð»ÑŒ', 'ru_RU', 84),
(462, 'Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ', 'ru_RU', 85),
(463, 'Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ Ð¸ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ñ‚ÑŒ', 'ru_RU', 86),
(464, 'Ð¡ÐµÑ€Ð²ÐµÑ€', 'ru_RU', 87),
(465, 'Ð¯Ð·Ñ‹Ðº ÑÐµÑ€Ð²ÐµÑ€Ð°', 'ru_RU', 88),
(466, 'Ð¡ÐµÑÑÐ¸Ñ', 'ru_RU', 369),
(467, 'ÐŸÑƒÑ‚ÑŒ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð¸Ñ ÑÐµÑÑÐ¸Ð¹', 'ru_RU', 370),
(468, 'ÐžÐ±Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸Ðº ÑÐµÑÑÐ¸Ð¸', 'ru_RU', 89),
(469, 'Ð’Ñ€ÐµÐ¼Ñ Ð¶Ð¸Ð·Ð½Ð¸ ÑÐµÑÐ¸Ð¸', 'ru_RU', 90),
(470, 'Ð˜Ð¼Ñ ÑÐ°Ð¹Ñ‚Ð°', 'ru_RU', 91),
(471, 'Ð¡Ð¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸Ðº', 'ru_RU', 92),
(472, 'Ð¡Ð¸ÑÑ‚ÐµÐ¼Ð°', 'ru_RU', 93),
(473, ' ', 'ru_RU', 94),
(474, 'Ð’ÐºÐ»Ð°Ð´ÐºÐ¸', 'ru_RU', 95),
(475, 'Ð—Ð° Ð´Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ð¹ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÐµÐ¹ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ð¸, ÐµÑÐ»Ð¸ Ð²Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¸ Ð¾ Zend Framework Ð¸ GotCms.', 'ru_RU', 96),
(476, 'Ð­Ñ‚Ð¸ ÑÐ»ÐµÐ¼ÐµÐ½Ñ‚Ñ‹ Ð±ÑƒÐ´ÑƒÑ‚ ÑƒÐ´Ð°Ð»ÐµÐ½Ñ‹ Ð¸ Ð½Ðµ Ð¼Ð¾Ð³ÑƒÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð²Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹. Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, ?', 'ru_RU', 97),
(477, 'Ð­Ñ‚Ð¾ ÑˆÐ°Ð±Ð»Ð¾Ð½ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð° . Ð¡Ð¾Ñ€Ñ‚Ð¸Ñ€Ð¾Ð²ÐºÐ° Ð¿Ð¾ Ð²ÐºÐ»Ð°Ð´ÐºÐ°Ð¼, Ñ‚Ð¸Ð¿Ð°Ð¼ Ð´Ð°Ð½Ð½Ñ‹Ñ… Ð¸ Ð²Ð¸Ð´Ð°Ð¼.', 'ru_RU', 98),
(478, 'Ð”ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð¾Ð² Ð²ÑÐµÐ³Ð¾', 'ru_RU', 99),
(479, 'ÐŸÐµÑ€ÐµÐ²Ð¾Ð´', 'ru_RU', 100),
(480, 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹', 'ru_RU', 101),
(481, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸', 'ru_RU', 102),
(482, 'Ð’Ð¸Ð´Ñ‹', 'ru_RU', 103),
(483, ' ', 'ru_RU', 104),
(484, 'Ð”Ð¾Ð±Ñ€Ð¾ Ð¿Ð¾Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒ %s', 'ru_RU', 105),
(485, 'Ð”Ð»Ñ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ñ Ð²Ð¸Ð´Ð° Ð’Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»Ð¸Ñ‚ÑŒ ÑÐ²Ð¾Ð¹ÑÑ‚Ð²Ð°, Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐ¹Ñ‚Ðµ Ð¿Ð¾Ð¼Ð¾ÑˆÐ½Ð¸ÐºÐ° Ð²Ð¸Ð´Ð° Ð´Ð»Ñ Ð²Ð½ÐµÐ´Ñ€ÐµÐ½Ð¸Ñ Ð¿Ð¾Ð´Ñ‡Ð¸Ð½ÐµÐ½Ñ‹Ñ… Ð²Ð¸Ð´Ð¾Ð²: $this->content.', 'ru_RU', 106),
(486, 'Ð Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ ÐºÐ°Ðº ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»Ð»ÐµÑ€Ñ‹ Zend Framework, Ð¸Ð¼ÐµÐµÑ‚ÑÑ Ð´Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð·Ð°Ð¿Ñ€Ð¾ÑÑƒ, Ð¾Ñ‚Ð²ÐµÑ‚Ñƒ Ð¸ Ð¿Ð»Ð°Ð³Ð¸Ð½Ð°Ð¼ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»Ð»ÐµÑ€Ð°.', 'ru_RU', 107),
(487, 'Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ ÑÐ¾Ð·Ð´Ð°Ð²Ð°Ñ‚ÑŒ, Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ, ÐºÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ, Ð²Ñ‹Ñ€ÐµÐ·Ð°Ñ‚ÑŒ Ð¸ Ð²ÑÑ‚Ð°Ð²Ð»ÑÑ‚ÑŒ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚ Ñ‰ÐµÐ»ÐºÐ½ÑƒÐ² Ð¿Ñ€Ð°Ð²Ð¾Ð¹ ÐºÐ½Ð¾Ð¿ÐºÐ¾Ð¹ Ð¼Ñ‹ÑˆÐ¸ Ð½Ð° Ð²ÐµÐ±-ÑÐ°Ð¹Ñ‚Ðµ Ð¸Ð»Ð¸ Ð¿Ð¾Ð´Ñ‡ÐµÐ½ÐµÐ½Ð½Ð¾Ð¼ Ð´Ð¾Ðº', 'ru_RU', 108),
(488, 'Ð’Ñ‹ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚Ðµ GotCms %s', 'ru_RU', 109),
(489, 'Ð¨Ð°Ð³ :', 'ru_RU', 110),
(490, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ°', 'ru_RU', 371),
(491, 'Ð’Ñ‹Ð±ÐµÑ€ÐµÑ‚Ðµ ÑÐ·Ñ‹Ðº', 'ru_RU', 372),
(492, 'Ð¯Ð·Ñ‹Ðº', 'ru_RU', 111),
(493, 'Ð›Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ', 'ru_RU', 112),
(494, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸', 'ru_RU', 113),
(495, 'Ð‘Ð°Ð·Ð° Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 114),
(496, 'Ð’Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¿Ñ€Ð¸Ð½ÑÑ‚ÑŒ ÑƒÑÐ»Ð¾Ð²Ð¸Ñ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ð¸ Ð´Ð»Ñ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶ÐµÐ½Ð¸Ñ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¸ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð½Ð¾Ð³Ð¾ Ð¾Ð±ÐµÑÐ¿ÐµÑ‡ÐµÐ½Ð¸Ñ.', 'ru_RU', 115),
(497, 'ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ', 'ru_RU', 116),
(498, 'ÐŸÑ€Ð¾Ð²ÐµÑ€ÐºÐ° Ð¿ÐµÑ€ÐµÐ´ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¾Ð¹ GotCms %s', 'ru_RU', 117),
(499, 'Ð”Ð»Ñ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾Ð¹ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¸ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹, Ð¿Ð°Ñ€Ð°Ð¼ÐµÑ‚Ñ€Ñ‹ ÐÐ• Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¸Ð¼ÐµÑ‚ÑŒ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ  "ÐÐµÑ‚".', 'ru_RU', 118),
(500, 'Ð”Ð°', 'ru_RU', 119),
(501, 'ÐÐµÑ‚', 'ru_RU', 373),
(502, 'Ð’ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¾', 'ru_RU', 120),
(503, 'ÐžÑ‚ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¾', 'ru_RU', 121),
(504, 'Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´Ð¾Ð²Ð°Ð½Ð¾', 'ru_RU', 122),
(505, '%s Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¾ Ð½Ð° Ð·Ð°Ð¿Ð¸ÑÑŒ', 'ru_RU', 123),
(506, 'Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼Ñ‹Ðµ Ð¿Ð°Ñ€Ð°Ð¼ÐµÑ‚Ñ€Ñ‹', 'ru_RU', 124),
(507, 'Ð”Ð»Ñ Ð¾Ð±ÐµÑÐ¿ÐµÑ‡ÐµÐ½Ð¸ Ð¿Ð¾Ð»Ð½Ð¾Ð¹ ÑÐ¾Ð²Ð¼ÐµÑÑ‚Ð¸Ð¼Ð¾ÑÑ‚Ð¸, ÑÑ‚Ð¸ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ñ€ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÑ‚ÑÑ Ð´Ð»Ñ PHP.', 'ru_RU', 125),
(508, 'ÐžÐ¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾', 'ru_RU', 126),
(509, 'Ð’ÑÐµ Ð¿Ð°Ñ€Ð°Ð¼ÐµÑ‚Ñ€Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð±Ñ‹Ñ‚ÑŒ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹ Ð½Ð° Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ \\"Ð”Ð°\\"', 'ru_RU', 127),
(510, 'Ð¡Ñ‚Ð°Ñ‚ÑƒÑ', 'ru_RU', 128),
(511, 'ÐŸÐ¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»ÐµÐ¹ Ð²ÑÐµÐ³Ð¾', 'ru_RU', 129),
(512, 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ð¾Ð² ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ† Ð²ÑÐµÐ³Ð¾', 'ru_RU', 130),
(513, 'ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ', 'ru_RU', 131),
(514, 'Ð²ÑÐµ', 'ru_RU', 132),
(515, 'Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ', 'ru_RU', 133),
(516, 'ÑÐ¸ÑÑ‚ÐµÐ¼Ð°', 'ru_RU', 93),
(517, 'Ñ€Ð¾Ð»ÑŒ', 'ru_RU', 84),
(518, 'Ð¼ÐµÐ´Ð¸Ð°', 'ru_RU', 134),
(519, 'ÑÐ·Ñ‹Ðº', 'ru_RU', 135),
(520, 'Ð²Ð¸Ð´', 'ru_RU', 136),
(521, 'ÑˆÐ°Ð±Ð»Ð¾Ð½', 'ru_RU', 137),
(522, 'Ñ‚Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 21),
(523, 'Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚', 'ru_RU', 374),
(524, 'Ñ‚Ð¸Ð¿ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°', 'ru_RU', 138),
(525, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð° Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÑÑ Ð²ÐµÑ€ÑÐ¸Ñ', 'ru_RU', 139),
(526, 'Ð¢ÐµÐºÑƒÑ‰Ð¸Ð¹ Ð´ÐµÐ½ÑŒ', 'ru_RU', 140),
(527, 'ÐœÐµÑÑÑ†', 'ru_RU', 141),
(528, 'Ð“Ð¾Ð´', 'ru_RU', 142),
(529, 'Ð’ÑÐµ Ð²Ñ€ÐµÐ¼Ñ', 'ru_RU', 143),
(530, 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹', 'ru_RU', 144),
(531, 'ÐŸÐ¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»ÑŒ', 'ru_RU', 145),
(532, 'ÐÐ´Ñ€ÐµÑÐ°, Ð½Ð°Ð±Ð¾Ð»ÑŒÑˆÐ¸Ðµ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ñ‹ ', 'ru_RU', 146),
(533, 'Ð¡ÑÑ‹Ð»ÐºÐ¸', 'ru_RU', 147),
(534, 'Ð­Ñ‚Ð¾Ñ‚ Ð¼Ð¾Ð´ÑƒÐ»ÑŒ Ð¸Ð¼ÐµÐµ Ñ‚Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ :', 'ru_RU', 148),
(535, 'Ð­Ñ‚Ð¾Ñ‚ Ñ‚Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ… Ð¸Ð¼ÐµÐµÑ‚ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ :', 'ru_RU', 149),
(536, 'Ð¡ÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚ Ð½Ð¾Ð²Ð°Ñ Ð²ÐµÑ€ÑÐ¸Ñ %s , Ð¿Ð¾Ð¶Ð°Ð»ÑƒÑÑ‚Ð° Ð¾Ð±Ð½Ð¾Ð²Ð¸Ñ‚Ðµ Ð´Ð»Ñ Ð¾Ð±ÐµÑÐ¿ÐµÑ‡ÐµÐ½Ð¸Ñ Ð±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾ÑÑ‚Ð¸.', 'ru_RU', 150),
(537, 'Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð¾Ð±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ GotCms ?', 'ru_RU', 151),
(538, 'Ð¡ÑÑ‹Ð»ÐºÐ° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð° Ð½Ð°  github :', 'ru_RU', 152),
(539, 'Panneau d''administration', 'ru_RU', 153),
(540, 'ÐœÐ¾Ð´ÑƒÐ»Ð¸', 'ru_RU', 154),
(541, 'ÐœÐ¾Ð´ÑƒÐ»ÑŒ', 'ru_RU', 375),
(542, 'Ð’Ñ‹Ð±ÐµÑ€ÐµÑ‚Ðµ ...', 'ru_RU', 376),
(543, 'ÐšÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ', 'ru_RU', 155),
(544, 'Ð˜ÑÑ‚Ð¾Ñ‡Ð½Ð¸Ðº', 'ru_RU', 156),
(545, 'ÐÐ°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', 'ru_RU', 157),
(546, 'Ð¡ÐºÑ€Ð¸Ð¿Ñ‚', 'ru_RU', 158),
(547, 'Ð¡ÐºÑ€Ð¸Ð¿Ñ‚', 'ru_RU', 377),
(548, 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ', 'ru_RU', 159),
(549, 'Ð¯Ð·Ñ‹Ðº', 'ru_RU', 160),
(550, 'ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ', 'ru_RU', 161),
(551, 'Ð˜ÐºÐ¾Ð½ÐºÐ°', 'ru_RU', 162),
(552, 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ', 'ru_RU', 163),
(553, 'Ð”Ð¾Ð¼Ð¾Ð¹', 'ru_RU', 378),
(554, 'Ð¡Ð²ÑÐ·ÑŒ', 'ru_RU', 379),
(555, 'Ð¡Ñ‚Ð°Ñ‚Ð¸ÑÑ‚Ð¸ÐºÐ°', 'ru_RU', 164),
(556, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ°', 'ru_RU', 380),
(557, 'ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ°', 'ru_RU', 380),
(558, 'Ð”ÐµÐ¸Ð½ÑÑ‚Ð°Ð»ÑÑ†Ð¸Ñ', 'ru_RU', 165),
(559, 'Ð´ÐµÐ¸Ð½ÑÑ‚Ð°Ð»ÑÑ†Ð¸Ñ', 'ru_RU', 165),
(560, '-- Ð’Ñ‹Ð±Ð¾Ñ€ --', 'ru_RU', 166),
(561, 'ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ / Ð¡ÐºÑ€Ñ‹Ñ‚ÑŒ Ñ‚Ð¸Ð¿Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 167),
(562, 'Ð’ÐºÐ»Ð°Ð´ÐºÐ°', 'ru_RU', 168),
(563, 'Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð²ÑÐµ Ñ„Ð°Ð¹Ð»Ñ‹', 'ru_RU', 169),
(564, 'Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ° Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 170),
(565, 'Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ð° : .phtml', 'ru_RU', 171),
(566, 'Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ°', 'ru_RU', 172),
(567, 'Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ° Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 173),
(568, '%d Ð²ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸', 'ru_RU', 174),
(569, '%d Ð¾Ñ‚ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸', 'ru_RU', 175),
(570, 'Ð“ÐµÐ½ÐµÑ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ru_RU', 176),
(571, 'Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð´Ð°Ð½Ñ‹Ðµ', 'ru_RU', 177),
(572, 'Ð¢Ð¾Ð»ÑŒÐºÐ¾ ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð°', 'ru_RU', 178),
(573, 'Ð¡Ñ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð° Ð¸ Ð´Ð°Ð½Ð½Ñ‹Ðµ', 'ru_RU', 179),
(574, 'Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ°', 'ru_RU', 180),
(575, 'Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ', 'ru_RU', 181),
(576, 'Ð’Ñ‹Ñ…Ð¾Ð´', 'ru_RU', 182),
(577, 'ÐÐ°Ð¶Ð¼Ð¸Ñ‚Ðµ Ð´Ð»Ñ Ð²Ñ‹Ñ…Ð¾Ð´Ð°', 'ru_RU', 183),
(578, 'Ð¡ÐºÑ€Ð¸Ð¿Ñ‚ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½', 'ru_RU', 184),
(579, 'Ð¨Ð°Ð±Ð»Ð¾Ð½ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½', 'ru_RU', 185),
(580, 'Ð’Ð¸Ð´ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½', 'ru_RU', 186),
(581, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½', 'ru_RU', 187),
(582, 'Ð¢Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ… ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½', 'ru_RU', 188),
(583, 'Ð¢Ð¸Ð¿ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð° ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½', 'ru_RU', 189),
(584, 'ÐšÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð°', 'ru_RU', 190),
(585, 'ÐÐµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ ÑÐ¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'ru_RU', 191),
(586, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 192),
(587, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ ÑƒÐ´Ð°Ð»ÐµÐ½', 'ru_RU', 193),
(588, 'Ð¢Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ… ÑƒÐ´Ð°Ð»ÐµÐ½', 'ru_RU', 194),
(589, 'Ð¢Ð¸Ð¿ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð° ÑƒÐ´Ð°Ð»ÐµÐ½', 'ru_RU', 195),
(590, 'Ð’ÐºÐ»Ð°Ð´ÐºÐ° ÑƒÐ´Ð°Ð»ÐµÐ½Ð°', 'ru_RU', 196),
(591, 'Ð¡Ð²Ð¾Ð¹ÑÑ‚Ð²Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¾', 'ru_RU', 197),
(592, 'Ð¨Ð°Ð±Ð»Ð¾Ð½ ÑƒÐ´Ð°Ð»ÐµÐ½', 'ru_RU', 198),
(593, 'Ð¡ÐºÑ€Ð¸Ð¿Ñ‚ ÑƒÐ´Ð°Ð»ÐµÐ½ ', 'ru_RU', 199),
(594, 'Ð’Ð¸Ð´ ÑƒÐ´Ð°Ð»ÐµÐ½', 'ru_RU', 200),
(595, 'Ð Ð¾Ð»ÑŒ ÑƒÐ´Ð°Ð»ÐµÐ½Ð°', 'ru_RU', 201),
(596, 'Ð Ð¾Ð»ÑŒ Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ»ÐµÐ½Ð°', 'ru_RU', 202),
(597, 'Ð¢Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ… Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 203),
(598, 'Ð¢Ð¸Ð¿ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð° Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 204),
(599, 'Ð’Ð¸Ð´ Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 205),
(600, 'Ð¨Ð°Ð±Ð»Ð¾Ð½ Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 206),
(601, 'Ð¡ÐºÑ€Ð¸Ð¿Ñ‚ Ð½Ðµ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 207),
(602, 'ÐŸÑ€Ð¾ÐµÐºÑ‚ git Ð½Ð°Ð¹Ð´ÐµÐ½, Ð¿Ñ€Ð¾Ð²ÐµÑ€Ñ‚Ðµ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ ÑÐµÑ€Ð²ÐµÑ€Ð° apache.', 'ru_RU', 208),
(603, 'ÐšÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ Ð±Ð°Ð·Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 209),
(604, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ…, Ð¾Ð¶Ð¸Ð´Ð°ÐµÑ‚ÑÑ ÑÑ‚Ñ€Ð¾ÐºÐ°, Ñ†ÐµÐ»Ð¾Ðµ Ñ‡Ð¸ÑÐ»Ð¾ Ð¸Ð»Ð¸ Ñ‡Ð¸ÑÐ»Ð¾ Ñ Ð¿Ð»Ð°Ð²Ð°ÑŽÑ‰ÐµÐ¹ Ñ‚Ð¾Ñ‡ÐºÐ¾Ð¹', 'ru_RU', 216),
(605, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ ÑÐ¸Ð²Ð¾Ð»Ñ‹ Ð¾Ñ‚Ð»Ð¸Ñ‡Ð°ÑŽÑ‰Ð¸ÐµÑÑ Ð¾Ñ‚ Ñ‚ÐµÐºÑÑ‚Ð¾Ð²Ð¾Ð¹ Ð¸ Ñ†Ð¸Ñ„Ñ€Ð¾Ð²Ð¾Ð¹ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¸', 'ru_RU', 217),
(606, 'Ð’Ð²ÐµÐ´ÐµÐ½Ð° Ð¿ÑƒÑÑ‚Ð°Ñ ÑÑ‚Ñ€Ð¾ÐºÐ°', 'ru_RU', 218),
(607, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿, Ð¾Ð¶Ð¸Ð´Ð°ÐµÑ‚ÑÑ ÑÑ‚Ñ€Ð¾ÐºÐ°', 'ru_RU', 219),
(608, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»ÑŒÐ½ÑƒÑŽ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÑŽ', 'ru_RU', 220),
(609, 'Ð’Ð²Ð¾Ð´ Ð½Ðµ Ð¿Ñ€Ð¸Ð½Ð°Ð´Ð»ÐµÐ¶Ð¸Ñ‚ Ñ‡Ð¸ÑÐ»Ñƒ Ñ Ð¿Ð»Ð°Ð²Ð°ÑŽÑ‰ÐµÐ¹ Ñ‚Ð¾Ñ‡ÐºÐ¾Ð¹', 'ru_RU', 221),
(610, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿ Ð´Ð°Ð½Ð½Ñ‹Ñ…, Ð¾Ð¶Ð¸Ð´Ð°ÐµÑ‚ÑÑ ÑÑ‚Ñ€Ð¾ÐºÐ° Ð¸Ð»Ð¸ Ñ†ÐµÐ»Ð¾Ðµ Ñ‡Ð¸ÑÐ»Ð¾', 'ru_RU', 222),
(611, 'Ð’Ð²Ð¾Ð´ Ð½Ðµ Ð¿Ñ€Ð¸Ð½Ð°Ð´Ð»ÐµÐ¶Ð¸Ñ‚ Ñ†ÐµÐ»Ð¾Ð¼Ñƒ Ñ‡Ð¸ÑÐ»Ñƒ', 'ru_RU', 223),
(612, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½Ðµ Ð¿Ð¾Ñ‡Ñ‚Ð¾Ð²Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ', 'ru_RU', 224),
(613, 'Ð’Ñ‹Ð·Ð²Ð°Ð½Ð¾ Ð¸ÑÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐµ Ð²Ð²ÐµÐ´ÐµÐ½Ð½Ñ‹Ñ… Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru_RU', 225),
(614, 'ÐžÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ¸ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð¾Ð¹ ÑÑƒÐ¼Ð¼Ñ‹', 'ru_RU', 226),
(615, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ²ÐµÑ€Ð½Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹', 'ru_RU', 227),
(616, 'Ð”Ð»Ð¸Ð½Ð½Ð° ÑÑ‚Ñ€Ð¾ÐºÐ¸ Ð´Ð¾Ð»Ð¶Ð½Ð° Ð±Ñ‹Ñ‚ÑŒ %length% ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð²', 'ru_RU', 228);
INSERT INTO `core_translate_locale` (`id`, `destination`, `locale`, `core_translate_id`) VALUES
(617, 'Ð’Ð²Ð¾Ð´ Ð½Ðµ Ð²Ñ…Ð¾Ð´Ð¸Ñ‚ Ð´Ð¸Ð°Ð¿Ð°Ð·Ð¾Ð½ Ð¾Ñ‚ ''%min%'' Ð´Ð¾ ''%max%''', 'ru_RU', 229),
(618, 'Ð’Ð²Ð¾Ð´ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ ÑÑ‚Ñ€Ð¾Ð³Ð¾ Ð² Ð´Ð¸Ð°Ð¿Ð°Ð·Ð¾Ð½Ðµ Ð¾Ñ‚ ''%min%'' Ð´Ð¾ ''%max%''', 'ru_RU', 230),
(619, 'ÐÐµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð²Ð²Ð¾Ð´Ð°', 'ru_RU', 231),
(620, 'Ð’Ñ‹Ð·Ð²Ð°Ð½Ð¾ Ð¸ÑÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ Ð² Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¸ Ð¾Ð±Ñ€Ð°Ñ‚Ð½Ð¾Ð³Ð¾ Ð²Ñ‹Ð·Ð¾Ð²Ð°', 'ru_RU', 232),
(621, 'Ð’Ð²Ð¾Ð´ Ð½Ð°Ð²ÐµÑ€Ð½Ð¾Ðµ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½Ðµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð¾Ð¹ ÑÑƒÐ¼Ð¼Ñ‹', 'ru_RU', 233),
(622, 'Ð’Ð²Ð¾Ð´ Ð´Ð¾Ð»Ð¶ÐµÐ½ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ñ†Ð¸Ñ„Ñ€Ñ‹', 'ru_RU', 234),
(623, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð¾Ðµ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ Ñ†Ð¸Ñ„Ñ€', 'ru_RU', 235),
(624, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð¾Ðµ Ð²Ñ‹Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ', 'ru_RU', 236),
(625, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½Ðµ Ð²ÐµÑ€Ð½Ñ‹Ð¹ Ð½Ð¾Ð¼ÐµÑ€ ÐºÑ€ÐµÐ´Ð¸Ñ‚Ð½Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ñ‹', 'ru_RU', 237),
(626, 'Ð¤Ð°Ñ€Ð¼Ð° Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð½Ðµ Ð¿Ñ€ÐµÐ½Ð°Ð´Ð»ÐµÐ¶Ð¸Ñ‚ Ð¾Ð¶Ð¸Ð´Ð°ÐµÐ¼Ð¾Ð¼Ñƒ ÑÐ°Ð¹Ñ‚Ñƒ', 'ru_RU', 238),
(627, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿. ÐžÐ¶Ð¸Ð´Ð°ÐµÑ‚ÑÑ ÑÑ‚Ñ€Ð¾ÐºÐ°, Ñ†ÐµÐ»Ð¾Ðµ Ñ‡Ð¸ÑÐ»Ð¾ Ð¸Ð»Ð¸ Ð´Ð°Ñ‚Ð° Ð¸ Ð²Ñ€ÐµÐ¼Ñ', 'ru_RU', 239),
(628, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½Ðµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð´Ð°Ñ‚Ñ‹', 'ru_RU', 240),
(629, 'ÐÐµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ñƒ ''%format%''', 'ru_RU', 241),
(630, 'ÐÐµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¿ÐµÑ€Ð¸Ð¾Ð´Ð°', 'ru_RU', 242),
(631, 'ÐÐµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ð½Ð¸ Ð¾Ð´Ð½Ð¾Ð¹ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽÑ‰ÐµÐ¹ Ð·Ð°Ð¿Ð¸ÑÐ¸', 'ru_RU', 243),
(632, 'Ð¡Ð¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÐ²Ð¸Ðµ Ð·Ð°Ð¿Ð¸ÑÐ¸ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾', 'ru_RU', 244),
(633, 'ÐÐµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð°Ð´Ñ€ÐµÑÐ° email. Ð˜ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐ¹Ñ‚Ðµ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚: local-part@hostname', 'ru_RU', 245),
(634, 'ÐÐµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ñ…Ð¾ÑÑ‚Ð° ''%hostname%'' Ð´Ð»Ñ Ð°Ð´Ñ€ÐµÑÐ° email', 'ru_RU', 246),
(635, '''%hostname%'' - ÐÐµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ MX Ð¸Ð»Ð¸ Ð·Ð°Ð¿Ð¸ÑÐ¸ A Ð´Ð»Ñ Ð°Ð´Ñ€ÐµÑÐ° email', 'ru_RU', 247),
(636, '''%hostname%'' - ÐÐ´Ñ€ÐµÑ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½ Ð² Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ð°Ñ… ÑÐµÐ³Ð¼ÐµÐ½Ñ‚Ð° ÑÐµÑ‚Ð¸. ÐÐµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»Ð¸Ñ‚ÑŒ email Ð°Ð´Ñ€ÐµÑ Ð² ÑÐµÑ‚Ð¸ Ð¿ÑƒÐ±Ð»Ð¸Ñ‡Ð½Ð¾Ð³Ð¾ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð°.', 'ru_RU', 248),
(637, '''%localPart%'' Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ dot-atom Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ñƒ', 'ru_RU', 249),
(638, '''%localPart%'' ÑÑ‚Ñ€Ð¾ÐºÐ° Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ñƒ ÐºÐ°Ð²Ñ‹Ñ‡ÐµÐº', 'ru_RU', 250),
(639, '''%localPart%'' Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ local Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ñƒ Ð² Ð°Ð´Ñ€ÐµÑÐµ email', 'ru_RU', 251),
(640, 'ÐŸÑ€ÐµÐ²Ñ‹ÑˆÐµÐ½Ð¸Ðµ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð¾Ð¹ Ð´Ð»Ð¸Ð½Ñ‹', 'ru_RU', 252),
(641, 'Ð¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð¼Ð½Ð¾Ð³Ð¾ Ñ„Ð°Ð¹Ð»Ð¾Ð². ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð¾Ðµ  ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ''%max%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ''%count%''', 'ru_RU', 253),
(642, 'Ð¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð¼Ð°Ð»Ð¾ Ñ„Ð°Ð¹Ð»Ð¾Ð². ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð¾Ðµ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ''%min%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ''%count%''', 'ru_RU', 254),
(643, 'Ð¤Ð°Ð¹Ð»Ð° ''%value%'' Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð¾Ð¹ ÑÑƒÐ¼Ð¼Ðµ CRC32', 'ru_RU', 255),
(644, 'ÐšÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð°Ñ ÑÑƒÐ¼Ð¼Ð° CRC32 Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð²Ñ‹Ñ‡ÐµÑÐ»ÐµÐ½Ð° Ð´Ð»Ñ Ð´Ð°Ð½Ð½Ð¾Ð³Ð¾ Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 256),
(645, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½ Ð´Ð»Ñ Ñ‡Ñ‚ÐµÐ½Ð¸Ñ Ð¸Ð»Ð¸ Ð½Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚', 'ru_RU', 257),
(646, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð¸Ð¼ÐµÐµÑ‚ Ð½Ðµ Ð²ÐµÑ€Ð½Ð¾Ðµ Ñ€Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ðµ', 'ru_RU', 258),
(647, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚', 'ru_RU', 259),
(648, 'Ð’ÑÐµ Ñ„Ð°Ð¹Ð»Ñ‹ Ð² ÑÑƒÐ¼Ð¼Ðµ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¸Ð¼ÐµÑ‚ÑŒ Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ ''%max%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½ Ñ€Ð°Ð·Ð¼ÐµÑ€ ''%size%''', 'ru_RU', 260),
(649, 'Ð’ÑÐµ Ñ„Ð°Ð¹Ð»Ñ‹ Ð² ÑÑƒÐ¼Ð¼Ðµ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¸Ð¼ÐµÑ‚ÑŒ Ð¼Ð¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ ''%min%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½ Ñ€Ð°Ð·Ð¼ÐµÑ€ ''%size%''', 'ru_RU', 261),
(650, 'ÐžÐ´Ð¸Ð½ Ð¸Ð»Ð¸ Ð±Ð¾Ð»ÐµÐµ Ñ„Ð°Ð¹Ð»Ð¾Ð² Ð½Ðµ Ð¼Ð¾Ð³ÑƒÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð¿Ñ€Ð¾Ñ‡Ð¸Ñ‚Ð°Ð½Ñ‹', 'ru_RU', 262),
(651, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð¾Ð¹ ÑÑƒÐ¼Ð¼Ðµ', 'ru_RU', 263),
(652, 'ÐšÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð°Ñ ÑÑƒÐ¼Ð¼Ð° Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð²Ñ‹Ñ‡ÐµÑÐ»ÐµÐ½Ð° Ð´Ð»Ñ Ð´Ð°Ð½Ð½Ð¾Ð³Ð¾ Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 264),
(653, 'ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð°Ñ ÑˆÐ¸Ñ€Ð¸Ð½Ð° Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð´Ð»Ñ ''%value%'' Ð½Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð° Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°Ñ‚ÑŒ ''%maxwidth%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾''%width%''', 'ru_RU', 265),
(654, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð°Ñ ÑˆÐ¸Ñ€Ð¸Ð½Ð° Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð´Ð»Ñ ''%value%'' Ð½Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð° Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ½ÑŒÑˆÐµ ''%minwidth%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%width%''', 'ru_RU', 266),
(655, 'ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð°Ñ Ð²Ñ‹ÑÐ¾Ñ‚Ð° Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð´Ð»Ñ ''%value%'' Ð½Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð° Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°Ñ‚ÑŒ ''%maxheight%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%height%''', 'ru_RU', 267),
(656, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð°Ñ Ð²Ñ‹ÑÐ¾Ñ‚Ð° Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð´Ð»Ñ ''%value%'' Ð½Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð° Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ½ÑŒÑˆÐµ ''%minheight%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%height%''', 'ru_RU', 268),
(657, 'ÐÐµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»Ð¸Ñ‚ÑŒ Ñ€Ð°Ð·Ð¼ÐµÑ€ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ ''%value%''', 'ru_RU', 269),
(658, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ ÑÐ¶Ð°Ñ‚, Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%type%''', 'ru_RU', 270),
(659, 'Ð¢Ð¸Ð¿ MIME Ñ„Ð°Ð¹Ð»Ð° ''%value%'' Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½', 'ru_RU', 271),
(660, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ ÑÐ²Ð»ÑÐµÑ‚ÑÑ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸ÐµÐ¼, Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%type%''', 'ru_RU', 272),
(661, 'Ð¤Ð°Ð¹Ð»Ð° ''%value%'' Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð¾Ð¹ ÑÑƒÐ¼Ð¼Ðµ MD5', 'ru_RU', 273),
(662, 'ÐšÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð°Ñ ÑÑƒÐ¼Ð¼Ð° MD5 Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð²Ñ‹Ñ‡ÐµÑÐ»ÐµÐ½Ð° Ð´Ð»Ñ Ð´Ð°Ð½Ð½Ð¾Ð³Ð¾ Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 274),
(663, 'Ð¤Ð°Ð¹Ð» ''%value%'' ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿ MIME ''%type%''', 'ru_RU', 275),
(664, 'Ð¤Ð°Ð¹Ð» ''%value%'' ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru_RU', 276),
(665, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð¾Ð¹ ÑÑƒÐ¼Ð¼Ðµ SHA1', 'ru_RU', 277),
(666, 'ÐšÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒÐ½Ð°Ñ ÑÑƒÐ¼Ð¼Ð° SHA1 Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð²Ñ‹Ñ‡ÐµÑÐ»ÐµÐ½Ð° Ð´Ð»Ñ Ð´Ð°Ð½Ð½Ð¾Ð³Ð¾ Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 278),
(667, 'ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ Ñ„Ð°Ð¹Ð»Ð° ''%value%'' Ð½Ðµ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°Ñ‚ÑŒ ''%max%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%size%''', 'ru_RU', 279),
(668, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ Ñ„Ð°Ð¹Ð»Ð° ''%value%'' Ð½Ðµ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ½ÑŒÑˆÐµ ''%min%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%size%''', 'ru_RU', 280),
(669, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°ÐµÑ‚ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ INI Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸', 'ru_RU', 281),
(670, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°ÐµÑ‚ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ form Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸', 'ru_RU', 282),
(671, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ñ‡Ð°ÑÑ‚Ð¸Ñ‡Ð½Ð°Ñ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ°', 'ru_RU', 283),
(672, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½', 'ru_RU', 284),
(673, 'Ð’Ñ€ÐµÐ¼ÐµÐ½Ð½Ð°Ñ Ð´Ð¸Ñ€ÐµÐºÑ‚Ð¾Ñ€Ð¸Ñ Ð´Ð»Ñ Ñ„Ð°Ð¹Ð»Ð° ''%value%'' Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð°', 'ru_RU', 285),
(674, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð·Ð°Ð¿Ð¸ÑÐ°Ð½', 'ru_RU', 286),
(675, 'Ð Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ðµ PHP Ð²ÐµÑ€Ð½ÑƒÐ»Ð¾ Ð¾ÑˆÐ¸Ð±ÐºÑƒ Ð¿Ñ€Ð¸ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐµ Ñ„Ð°Ð¹Ð»Ð° ''%value%''', 'ru_RU', 287),
(676, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð±Ñ‹Ð» Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½ Ð½ÐµÐ»ÐµÐ³Ð°Ð»ÑŒÐ½Ð¾. Ð’Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ ÑÑ‚Ð¾ Ð°Ñ‚Ð°ÐºÐ°', 'ru_RU', 288),
(677, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½', 'ru_RU', 289),
(678, 'ÐÐµÐ¸Ð·Ð²ÐµÑÑ‚Ð½Ð°Ñ Ð¾ÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐµ Ñ„Ð°Ð¹Ð»Ð° ''%value%''', 'ru_RU', 290),
(679, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°ÐµÑ‚ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ INI Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸', 'ru_RU', 291),
(680, 'Ð¤Ð°Ð¹Ð» ''%value%'' Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°ÐµÑ‚ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ form Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸', 'ru_RU', 292),
(681, 'Ð¤Ð°Ð¹Ð» Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ñ‡Ð°ÑÑ‚Ð¸Ñ‡Ð½Ð°Ñ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ°', 'ru_RU', 293),
(682, 'Ð¤Ð°Ð¹Ð» Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½', 'ru_RU', 294),
(683, 'Ð’Ñ€ÐµÐ¼ÐµÐ½Ð½Ð°Ñ Ð´Ð¸Ñ€ÐµÐºÑ‚Ð¾Ñ€Ð¸Ñ Ð´Ð»Ñ Ñ„Ð°Ð¹Ð»Ð° Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð°', 'ru_RU', 295),
(684, 'Ð¤Ð°Ð¹Ð» Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð·Ð°Ð¿Ð¸ÑÐ°Ð½', 'ru_RU', 296),
(685, 'Ð Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ðµ PHP Ð²ÐµÑ€Ð½ÑƒÐ»Ð¾ Ð¾ÑˆÐ¸Ð±ÐºÑƒ Ð¿Ñ€Ð¸ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐµ Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 297),
(686, 'Ð¤Ð°Ð¹Ð» Ð±Ñ‹Ð» Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½ Ð½ÐµÐ»ÐµÐ³Ð°Ð»ÑŒÐ½Ð¾. Ð’Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ ÑÑ‚Ð¾ Ð°Ñ‚Ð°ÐºÐ°', 'ru_RU', 298),
(687, 'Ð¤Ð°Ð¹Ð» Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½', 'ru_RU', 299),
(688, 'ÐÐµÐ¸Ð·Ð²ÐµÑÑ‚Ð½Ð°Ñ Ð¾ÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐµ Ñ„Ð°Ð¹Ð»Ð°', 'ru_RU', 300),
(689, 'Ð¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð¼Ð½Ð¾Ð³Ð¾ ÑÐ»Ð¾Ð², Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ''%max%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%count%''', 'ru_RU', 301),
(690, 'Ð¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð¼Ð°Ð»Ð¾ ÑÐ»Ð¾Ð², Ð¼Ð¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ''%min%'', Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¾ ''%count%''', 'ru_RU', 302),
(691, 'Ð’ÐµÐ´ÐµÐ½Ð¾ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð±Ð¾Ð»ÑŒÑˆÐµÐµ Ñ‡ÐµÐ¼ ''%min%''', 'ru_RU', 303),
(692, 'Ð’Ð²ÐµÐ´ÐµÐ½Ð¾ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð±Ð¾Ð»ÑŒÑˆÐµÐµ Ð¸Ð»Ð¸ Ñ€Ð°Ð²Ð½Ð¾Ðµ ''%min%''', 'ru_RU', 304),
(693, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½Ðµ ÑˆÐµÑÑ‚Ð½Ð°Ñ†Ð°Ñ‚ÐµÑ€Ð¸Ñ‡Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', 'ru_RU', 305),
(694, 'Ð’Ð²Ð¾Ð´ ÑÐ²Ð»ÑÐµÑ‚ÑÑ DNS Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ñ…Ð¾ÑÑ‚Ð° Ð½Ð¾ Ð´Ð°Ð½Ð½Ñ‹Ðµ Punycode Ð¾Ð±Ð¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ Ð½Ðµ Ð¼Ð¾Ð³ÑƒÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ñ€Ð°ÑÑˆÐ¸Ñ„Ñ€Ð¾Ð²Ð°Ð½Ñ‹', 'ru_RU', 306),
(695, 'Ð’Ð²Ð¾Ð´ ÑÐ²Ð»ÑÐµÑ‚ÑÑ DNS Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ñ…Ð¾ÑÑ‚Ð° Ð½Ð¾ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ñ‚Ð¸Ñ€Ðµ Ð² Ð½ÐµÐ²ÐµÑ€Ð½Ð¾Ð¼ Ð¼ÐµÑÑ‚Ðµ', 'ru_RU', 307),
(696, 'ÐÐµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ Ð¾Ð¶Ð¸Ð´Ð°ÐµÐ¼Ð¾Ð¹ ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ðµ DNS Ñ…Ð¾ÑÑ‚Ð°', 'ru_RU', 308),
(697, 'Ð’Ð²Ð¾Ð´ ÑÐ²Ð»ÑÐµÑ‚ÑÑ DNS Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ñ…Ð¾ÑÑ‚Ð° Ð½Ð¾ Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ ÑÑ…ÐµÐ¼Ðµ TLD ''%tld%''', 'ru_RU', 309),
(698, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð¸Ð¼Ñ Ð»Ð¾ÐºÐ°Ð»ÑŒÐ½Ð¾Ð¹ ÑÐµÑ‚Ð¸', 'ru_RU', 310),
(699, 'Ð’Ð¾Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ²ÐµÑ€Ð½Ð¾Ðµ URI Ð¸Ð¼Ñ Ñ…Ð¾ÑÑ‚Ð°', 'ru_RU', 311),
(700, 'Ð’Ð²Ð¾Ð´ ÑÐ²Ð»ÑÐµÑ‚ÑÑ IP Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ Ñ…Ð¾ÑÑ‚Ð°, Ð½Ð¾ ÑÑ‚Ð¾Ñ‚ IP Ð°Ð´Ñ€ÐµÑ Ð½Ðµ Ð´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½', 'ru_RU', 312),
(701, 'Ð’Ð²Ð¾Ð´ ÑÐ²Ð»ÑÐµÑ‚ÑÑ Ð»Ð¾ÐºÐ°Ð»ÑŒÐ½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ ÑÐµÑ‚Ð¸, Ð½Ð¾ ÑÑ‚Ð¾Ñ‚ Ð»Ð¾ÐºÐ°Ð»ÑŒÐ½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ Ð½Ðµ Ð´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½', 'ru_RU', 313),
(702, 'Ð’Ð²Ð¾Ð´ ÑÐ²Ð»ÑÐµÑ‚ÑÑ DNS Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ñ…Ð¾ÑÑ‚Ð° Ð½Ð¾ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð¸Ð·Ð²Ð»ÐµÑ‡ÐµÐ½Ð° TLD Ñ‡Ð°ÑÑ‚ÑŒ', 'ru_RU', 314),
(703, 'Ð’Ð²Ð¾Ð´ ÑÐ²Ð»ÑÐµÑ‚ÑÑ DNS Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ñ…Ð¾ÑÑ‚Ð° Ð½Ð¾ Ð½Ðµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ ÑÑ€Ð°Ð²Ð½Ð¸Ñ‚ÑŒ TLD Ñ Ð¸Ð·Ð²ÐµÑÑ‚Ð½Ñ‹Ð¼ ÑÐ¿Ð¸ÑÐºÐ¾Ð¼', 'ru_RU', 315),
(704, 'ÐÐµÐ¸Ð·Ð²ÐµÑÑ‚Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð° Ð² IBAN', 'ru_RU', 316),
(705, 'Ð¡Ñ‚Ñ€Ð°Ð½Ñ‹, Ð½Ðµ Ð²Ñ…Ð¾Ð´ÑÑ‰Ð¸Ðµ Ð² Ð•Ð´Ð¸Ð½Ð¾Ðµ Ð•Ð²Ñ€Ð¾Ð¿ÐµÐ¹ÑÐºÐ¾Ðµ ÐŸÐ»Ð°Ñ‚ÐµÐ¶Ð½Ð¾Ðµ Ð¿Ñ€Ð¾ÑÑ‚Ñ€Ð°Ð½ÑÑ‚Ð²Ð¾ (SEPA) Ð½Ðµ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÑŽÑ‚ÑÑ', 'ru_RU', 317),
(706, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½Ðµ Ð²ÐµÑ€Ð½Ñ‹Ð¹ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚ IBAN', 'ru_RU', 318),
(707, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð¾ÑˆÐ¸Ð±ÐºÑƒ Ð² IBAN', 'ru_RU', 319),
(708, 'Ð”Ð²Ð° Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ Ð½Ðµ ÑÐ¾Ð²Ð¿Ð°Ð´Ð°ÑŽÑ‚', 'ru_RU', 320),
(709, 'ÐÐµ Ð¿Ñ€ÐµÐ´Ð¾ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ Ð´Ð»Ñ ÑÑ€Ð°Ð²Ð½ÐµÐ½Ð¸Ñ', 'ru_RU', 321),
(710, 'Ð’Ð²Ð¾Ð´ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½ Ð² Ð¼Ð°ÑÑÐ¸Ð²Ðµ', 'ru_RU', 322),
(711, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ IP Ð°Ð´Ñ€ÐµÑ', 'ru_RU', 323),
(712, 'Ð’Ð²Ð¾Ð´ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ ISBN Ð¼Ð¾Ð¼ÐµÑ€', 'ru_RU', 324),
(713, 'Ð’Ð²ÐµÐ´ÐµÐ½Ð¾ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð¼ÐµÐ½ÑŒÑˆÐµÐµ ''%max%''', 'ru_RU', 325),
(714, 'Ð’Ð²ÐµÐ´ÐµÐ½Ð¾ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð¼ÐµÐ½ÑŒÑˆÐµÐµ Ð¸Ð»Ð¸ Ñ€Ð°Ð²Ð½Ð¾Ðµ ''%max%''', 'ru_RU', 326),
(715, 'Ð—Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð¿ÑƒÑÑ‚Ñ‹Ð¼', 'ru_RU', 327),
(716, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿.ÐžÐ¶Ð¸Ð´Ð°ÐµÑ‚ÑÑ ÑÑ‚Ñ€Ð¾ÐºÐ°, Ñ†ÐµÐ»Ð¾Ðµ Ñ‡Ð¸ÑÐ»Ð¾, Ñ‡Ð¸ÑÐ»Ð¾ Ñ Ð¿Ð»Ð°Ð²Ð°ÑŽÑ‰ÐµÐ¹ Ñ‚Ð¾Ñ‡ÐºÐ¾Ð¹, Ð»Ð¾Ð³Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¸Ð»Ð¸ Ð¼Ð°ÑÑÐ¸Ð²', 'ru_RU', 328),
(717, 'Ð’Ð²Ð¾Ð´ Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ ÑÑ…ÐµÐ¼Ðµ Ñ€ÐµÐ³ÑƒÐ»ÑÑ€Ð½Ñ‹Ñ… Ð²Ñ‹Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¹ ''%pattern%''', 'ru_RU', 329),
(718, 'ÐŸÑ€Ð¾Ð¸Ð·Ð¾ÑˆÐ»Ð° Ð²Ð½ÑƒÑ‚Ñ€ÐµÐ½Ð½Ñ Ð¾ÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ð¸ ÑÑ…ÐµÐ¼Ñ‹ Ñ€ÐµÐ³ÑƒÐ»ÑÑ€Ð½Ð¾Ð³Ð¾ Ð²Ñ‹Ñ€Ð¾Ð¶ÐµÐ½Ð¸Ñ ''%pattern%''', 'ru_RU', 330),
(719, 'ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ€Ñ‚Ñ‹ ÑÐ°Ð¹Ñ‚Ð° changefreq', 'ru_RU', 331),
(720, 'ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ€Ñ‚Ñ‹ ÑÐ°Ð¹Ñ‚Ð° lastmod', 'ru_RU', 332),
(721, 'ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ€Ñ‚Ñ‹ ÑÐ°Ð¹Ñ‚Ð° location', 'ru_RU', 333),
(722, 'ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÐºÐ°Ñ€Ñ‚Ñ‹ ÑÐ°Ð¹Ñ‚Ð° priority', 'ru_RU', 334),
(723, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿. ÐžÐ¶Ð¸Ð´Ð°ÐµÑ‚ÑÑ ÑÑ‚Ñ€Ð¾ÐºÐ°, Ñ†ÐµÐ»Ð¾Ðµ Ñ‡Ð¸ÑÐ»Ð¾ Ð¸Ð»Ð¸ Ñ‡Ð¸ÑÐ»Ð¾ Ñ Ð¿Ð»Ð°Ð²Ð°ÑŽÑ‰ÐµÐ¹ Ñ‚Ð¾Ñ‡ÐºÐ¾Ð¹', 'ru_RU', 335),
(724, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ñ‚Ð¸Ð¿. ÐžÐ¶Ð¸Ð´Ð°ÐµÑ‚ÑÑ ÑÐºÐ°Ð»ÑÑ€Ð½Ð¾Ðµ Ð²Ñ‹Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ', 'ru_RU', 336),
(725, 'Ð’Ð²ÐµÐ´ÐµÐ½Ð¾ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¼ÐµÐ½ÑŒÑˆÐµÐµ %min% ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð²', 'ru_RU', 337),
(726, 'Ð’Ð²ÐµÐ´ÐµÐ½Ð¾ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð±Ð¾Ð»ÑŒÑˆÐµÐµ %max% ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð²', 'ru_RU', 338),
(727, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ URI', 'ru_RU', 339);

-- --------------------------------------------------------

--
-- Table structure for table `datatype`
--

CREATE TABLE IF NOT EXISTS `datatype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prevalue_value` text COLLATE utf8_unicode_ci,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `datatype`
--

INSERT INTO `datatype` (`id`, `name`, `prevalue_value`, `model`) VALUES
(1, 'Text field', 'N;', 'Textstring'),
(2, 'Rich text', 'a:1:{s:13:"toolbar-items";a:67:{s:6:"Source";s:1:"1";s:4:"Save";s:1:"1";s:7:"NewPage";s:1:"1";s:8:"DocProps";s:1:"1";s:7:"Preview";s:1:"1";s:5:"Print";s:1:"1";s:9:"Templates";s:1:"1";s:3:"Cut";s:1:"1";s:4:"Copy";s:1:"1";s:5:"Paste";s:1:"1";s:9:"PasteText";s:1:"1";s:13:"PasteFromWord";s:1:"1";s:4:"Undo";s:1:"1";s:4:"Redo";s:1:"1";s:4:"Find";s:1:"1";s:7:"Replace";s:1:"1";s:9:"SelectAll";s:1:"1";s:12:"SpellChecker";s:1:"1";s:5:"Scayt";s:1:"1";s:4:"Form";s:1:"1";s:8:"Checkbox";s:1:"1";s:5:"Radio";s:1:"1";s:9:"TextField";s:1:"1";s:8:"Textarea";s:1:"1";s:6:"Select";s:1:"1";s:6:"Button";s:1:"1";s:11:"ImageButton";s:1:"1";s:11:"HiddenField";s:1:"1";s:4:"Bold";s:1:"1";s:6:"Italic";s:1:"1";s:9:"Underline";s:1:"1";s:6:"Strike";s:1:"1";s:9:"Subscript";s:1:"1";s:11:"Superscript";s:1:"1";s:12:"RemoveFormat";s:1:"1";s:12:"NumberedList";s:1:"1";s:12:"BulletedList";s:1:"1";s:7:"Outdent";s:1:"1";s:6:"Indent";s:1:"1";s:10:"Blockquote";s:1:"1";s:9:"CreateDiv";s:1:"1";s:11:"JustifyLeft";s:1:"1";s:13:"JustifyCenter";s:1:"1";s:12:"JustifyRight";s:1:"1";s:12:"JustifyBlock";s:1:"1";s:7:"BidiLtr";s:1:"1";s:7:"BidiRtl";s:1:"1";s:4:"Link";s:1:"1";s:6:"Unlink";s:1:"1";s:6:"Anchor";s:1:"1";s:5:"Image";s:1:"1";s:5:"Flash";s:1:"1";s:5:"Table";s:1:"1";s:14:"HorizontalRule";s:1:"1";s:6:"Smiley";s:1:"1";s:11:"SpecialChar";s:1:"1";s:9:"PageBreak";s:1:"1";s:6:"Iframe";s:1:"1";s:6:"Styles";s:1:"1";s:6:"Format";s:1:"1";s:4:"Font";s:1:"1";s:8:"FontSize";s:1:"1";s:9:"TextColor";s:1:"1";s:7:"BGColor";s:1:"1";s:8:"Maximize";s:1:"1";s:10:"ShowBlocks";s:1:"1";s:5:"About";s:1:"1";}}', 'Textrich'),
(3, 'Text area', 'a:3:{s:4:"cols";s:2:"50";s:4:"rows";s:2:"30";s:4:"wrap";s:4:"hard";}', 'Textarea'),
(4, 'Simple Image', 'a:2:{s:9:"mime_list";a:3:{i:0;s:9:"image/gif";i:1;s:10:"image/jpeg";i:2;s:9:"image/png";}s:11:"is_multiple";b:0;}', 'Upload'),
(6, 'Datepicker', 'N;', 'DatePicker'),
(7, 'ImageCropperRelay', 'a:4:{s:10:"background";s:7:"#FFFFFF";s:13:"resize_option";s:4:"auto";s:9:"mime_list";a:3:{i:0;s:9:"image/gif";i:1;s:10:"image/jpeg";i:2;s:9:"image/png";}s:4:"size";a:1:{i:0;a:3:{s:4:"name";s:7:"570x150";s:5:"width";s:3:"570";s:6:"height";s:3:"150";}}}', 'ImageCropper'),
(8, 'Sidebar text', 'a:1:{s:9:"datatypes";a:2:{i:0;a:3:{s:4:"name";s:10:"Textstring";s:5:"label";s:5:"Title";s:6:"config";a:1:{s:6:"length";s:0:"";}}i:1;a:3:{s:4:"name";s:8:"Textrich";s:5:"label";s:7:"Content";s:6:"config";a:1:{s:13:"toolbar-items";a:67:{s:6:"Source";s:1:"1";s:4:"Save";s:1:"1";s:7:"NewPage";s:1:"1";s:8:"DocProps";s:1:"1";s:7:"Preview";s:1:"1";s:5:"Print";s:1:"1";s:9:"Templates";s:1:"1";s:3:"Cut";s:1:"1";s:4:"Copy";s:1:"1";s:5:"Paste";s:1:"1";s:9:"PasteText";s:1:"1";s:13:"PasteFromWord";s:1:"1";s:4:"Undo";s:1:"1";s:4:"Redo";s:1:"1";s:4:"Find";s:1:"1";s:7:"Replace";s:1:"1";s:9:"SelectAll";s:1:"1";s:12:"SpellChecker";s:1:"1";s:5:"Scayt";s:1:"1";s:4:"Form";s:1:"1";s:8:"Checkbox";s:1:"1";s:5:"Radio";s:1:"1";s:9:"TextField";s:1:"1";s:8:"Textarea";s:1:"1";s:6:"Select";s:1:"1";s:6:"Button";s:1:"1";s:11:"ImageButton";s:1:"1";s:11:"HiddenField";s:1:"1";s:4:"Bold";s:1:"1";s:6:"Italic";s:1:"1";s:9:"Underline";s:1:"1";s:6:"Strike";s:1:"1";s:9:"Subscript";s:1:"1";s:11:"Superscript";s:1:"1";s:12:"RemoveFormat";s:1:"1";s:12:"NumberedList";s:1:"1";s:12:"BulletedList";s:1:"1";s:7:"Outdent";s:1:"1";s:6:"Indent";s:1:"1";s:10:"Blockquote";s:1:"1";s:9:"CreateDiv";s:1:"1";s:11:"JustifyLeft";s:1:"1";s:13:"JustifyCenter";s:1:"1";s:12:"JustifyRight";s:1:"1";s:12:"JustifyBlock";s:1:"1";s:7:"BidiLtr";s:1:"1";s:7:"BidiRtl";s:1:"1";s:4:"Link";s:1:"1";s:6:"Unlink";s:1:"1";s:6:"Anchor";s:1:"1";s:5:"Image";s:1:"1";s:5:"Flash";s:1:"1";s:5:"Table";s:1:"1";s:14:"HorizontalRule";s:1:"1";s:6:"Smiley";s:1:"1";s:11:"SpecialChar";s:1:"1";s:9:"PageBreak";s:1:"1";s:6:"Iframe";s:1:"1";s:6:"Styles";s:1:"1";s:6:"Format";s:1:"1";s:4:"Font";s:1:"1";s:8:"FontSize";s:1:"1";s:9:"TextColor";s:1:"1";s:7:"BGColor";s:1:"1";s:8:"Maximize";s:1:"1";s:10:"ShowBlocks";s:1:"1";s:5:"About";s:1:"1";}}}}}', 'Mixed'),
(9, 'Upload', 'a:2:{s:9:"mime_list";a:3:{i:0;s:9:"image/gif";i:1;s:10:"image/jpeg";i:2;s:9:"image/png";}s:11:"is_multiple";b:0;}', 'Upload');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `show_in_nav` tinyint(1) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `document_type_id` int(11) DEFAULT NULL,
  `view_id` int(11) DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_document_layout` (`layout_id`),
  KEY `fk_document_document` (`parent_id`),
  KEY `fk_documents_view` (`view_id`),
  KEY `fk_document_document_type` (`document_type_id`),
  KEY `fk_document_user` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `created_at`, `updated_at`, `name`, `url_key`, `status`, `sort_order`, `show_in_nav`, `user_id`, `document_type_id`, `view_id`, `layout_id`, `parent_id`) VALUES
(2, '2012-09-20 22:09:06', '2013-06-02 12:00:33', 'About', 'about', 1, 2, 1, 1, 3, 4, 1, NULL),
(3, '2012-09-20 22:09:29', '2013-05-25 13:58:10', 'Contact', 'contact', 1, 3, 1, 1, 2, 3, 1, NULL),
(4, '2013-05-25 13:57:47', '2013-06-02 12:07:47', 'Home', '', 1, 1, 1, 1, 6, 1, 1, NULL),
(5, '2013-05-25 13:58:49', '2013-05-27 08:53:50', 'First category', 'first-category', 1, 0, 1, 1, 5, 1, 1, 4),
(6, '2013-05-25 13:59:05', '2013-05-27 08:53:53', 'Second category', 'second-category', 1, 0, 1, 1, 5, 1, 1, 4),
(7, '2013-05-25 14:00:54', '2013-05-26 13:32:18', 'Article 1', 'article-about-something', 1, 0, 0, 1, 4, 11, 1, 5),
(8, '2013-05-25 14:01:26', '2013-05-26 13:32:27', 'Article 2', 'article-about-something', 1, 0, 0, 1, 4, 11, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE IF NOT EXISTS `document_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `icon_id` int(11) DEFAULT NULL,
  `default_view_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_document_type_view` (`default_view_id`),
  KEY `fk_document_type_icon` (`icon_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`id`, `created_at`, `updated_at`, `name`, `description`, `icon_id`, `default_view_id`, `user_id`) VALUES
(2, '2012-09-20 22:05:53', '2013-06-02 11:29:45', 'Contact', 'Contact form', 11, 3, 1),
(3, '2012-09-20 22:06:37', '2013-06-02 11:58:48', 'About', 'About this website', 13, 4, 1),
(4, '2013-05-24 08:49:53', '2013-06-02 11:29:27', 'Blog ticket', 'Ticket blog', 6, 11, 1),
(5, '2013-05-24 08:56:17', '2013-06-02 11:28:48', 'Blog category', 'Blog category', 8, 1, 1),
(6, '2013-05-24 08:57:15', '2013-06-02 12:06:43', 'Blog', 'Blog', 24, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `document_type_dependency`
--

CREATE TABLE IF NOT EXISTS `document_type_dependency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `children_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_document_type_dependency_parent_id` (`parent_id`),
  KEY `fk_document_type_dependency_children_id` (`children_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `document_type_dependency`
--

INSERT INTO `document_type_dependency` (`id`, `parent_id`, `children_id`) VALUES
(8, 5, 4),
(10, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `document_type_view`
--

CREATE TABLE IF NOT EXISTS `document_type_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `view_id` int(11) NOT NULL,
  `document_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_document_type_views_views` (`view_id`),
  KEY `fk_document_type_view_document_type` (`document_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `icon`
--

CREATE TABLE IF NOT EXISTS `icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `icon`
--

INSERT INTO `icon` (`id`, `name`, `url`) VALUES
(1, 'Home', '/media/icons/home.png'),
(2, 'Camera', '/media/icons/camera.png'),
(3, 'Box', '/media/icons/box.png'),
(4, 'Calendar', '/media/icons/calendar.png'),
(5, 'Configuration', '/media/icons/configuration.png'),
(6, 'File', '/media/icons/file.gif'),
(7, 'Film', '/media/icons/film.png'),
(8, 'Folder', '/media/icons/folder.gif'),
(9, 'Folder closed', '/media/icons/folder-closed.gif'),
(10, 'Image', '/media/icons/image.png'),
(11, 'Letter blue', '/media/icons/letter-blue.png'),
(12, 'Letter red', '/media/icons/letter-red.png'),
(13, 'Pen green', '/media/icons/pen-green.png'),
(14, 'Pen yellow', '/media/icons/pen-yellow.png'),
(15, 'Printer', '/media/icons/printer.png'),
(16, 'Rss', '/media/icons/rss.png'),
(17, 'Save', '/media/icons/save-black.png'),
(18, 'Save blue', '/media/icons/save-blue.png'),
(19, 'Shell', '/media/icons/shell.png'),
(20, 'Tool', '/media/icons/tool.png'),
(21, 'Trash', '/media/icons/trash.png'),
(22, 'Trash empty', '/media/icons/trash-empty.png'),
(23, 'TV', '/media/icons/tv.png'),
(24, 'Write', '/media/icons/write.png');

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE IF NOT EXISTS `layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`id`, `created_at`, `updated_at`, `name`, `identifier`, `content`, `description`) VALUES
(1, '2012-09-19 19:28:34', '2013-06-02 12:26:50', 'Main', 'main', '<!doctype html>\n\n<html lang="en-US">\n<head>\n<meta charset="UTF-8" />\n<title><?php echo $this->escapeHtml($this->pageTitle); ?> - <?php echo $this->escapeHtml($this->config()->get(''site_name'')); ?></title>\n<link href="<?php echo $this->cdn(''/frontend/css/style.css''); ?>" rel="stylesheet" type="text/css">\n<!--[if IE]>\n<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>\n<![endif]-->\n<!--[if IE 6]>\n<script src="<?php echo $this->cdn(''/frontend/js/belatedPNG.js''); ?>"></script>\n<script>\n    DD_belatedPNG.fix(''*'');\n</script>\n<![endif]-->\n<script src="<?php echo $this->cdn(''/frontend/js/jquery-1.4.min.js''); ?>" type="text/javascript" charset="utf-8"></script>\n</head>\n<body>\n<div id="bodywrap">\n    <section id="pagetop">\n        <nav id="sitenav">\n            <?php\n                $component = new \\Gc\\Component\\Navigation();\n                $container = new \\Zend\\Navigation\\Navigation($component->render());\n                $this->navigation($container);\n                $document = $this->layout()->currentDocument;\n\n                echo $this->navigation()->menu()->setMaxDepth(0)->setUlClass(''sf-menu navigation'');\n            ?>\n        </nav>\n    </section>\n\n    <header id="pageheader">\n        <h1><a href="<?php echo $this->document()->getUrl(); ?>"><?php echo $this->escapeHtml($this->config()->get(''site_name'')); ?></a></h1>\n    </header>\n    <div id="contents">\n        <section id="main">\n            <?php echo $this->content; ?>\n        </section>\n        <section id="sidebar">\n            <?php echo $this->partial(''sidebar'', array(''currentDocument'' => $this->currentDocument)); ?>\n        </section>\n        <div class="clear"></div>\n    </div>\n</div>\n<footer id="pagefooter">\n    <div id="footerwrap">\n        <div class="copyright">\n            <?php echo date(''Y''); ?> &copy; <?php echo $this->escapeHtml($this->config()->get(''site_name'')); ?>\n        </div>\n        <div class="credit">\n            <a href="http://cssheaven.org" title="Downlaod Free CSS Templates">Website Template</a> by CSSHeaven.org\n        </div>\n    </div>\n</footer>\n<script>\n    (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\n    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n    })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\n    ga(\'create\', \'UA-44629676-1\', \'got-cms.com\');\n    ga(\'send\', \'pageview\');\n</script>\n</body>\n</html>', 'Main layout');

-- --------------------------------------------------------

--
-- Table structure for table `log_url`
--

CREATE TABLE IF NOT EXISTS `log_url` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visit_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_url_info_id` bigint(20) unsigned DEFAULT NULL,
  `log_visitor_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_url_log_visitor` (`log_visitor_id`),
  KEY `fk_log_url_log_url_info` (`log_url_info_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `log_url`
--

INSERT INTO `log_url` (`id`, `visit_at`, `log_url_info_id`, `log_visitor_id`) VALUES
(1, '2013-09-29 11:17:24', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log_url_info`
--

CREATE TABLE IF NOT EXISTS `log_url_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `referer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `log_url_info`
--

INSERT INTO `log_url_info` (`id`, `url`, `referer`) VALUES
(1, '/backend/css/bootstrap-theme.min.css', 'https://gotcms/admin/config/user/login/L2FkbWluL21vZHVsZQ==');

-- --------------------------------------------------------

--
-- Table structure for table `log_visitor`
--

CREATE TABLE IF NOT EXISTS `log_visitor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` char(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `http_user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `http_accept_CHARset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `http_accept_language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server_addr` bigint(20) DEFAULT NULL,
  `remote_addr` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `log_visitor`
--

INSERT INTO `log_visitor` (`id`, `session_id`, `http_user_agent`, `http_accept_CHARset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, '9e9ljr9q0dp3kjb9qpod97ick5', 'Mozilla/5.0 (X11; Linux x86_64; rv:17.0) Gecko/20130917 Firefox/17.0 Iceweasel/17.0.9', NULL, 'en-US,en;q=0.5', 3232262917, 3232262913);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `created_at`) VALUES
(1, 'Blog', '2013-09-29 01:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE IF NOT EXISTS `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT '0',
  `tab_id` int(11) NOT NULL,
  `datatype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`identifier`,`tab_id`),
  KEY `fk_property_datatype` (`datatype_id`),
  KEY `fk_property_tab` (`tab_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name`, `identifier`, `description`, `required`, `sort_order`, `tab_id`, `datatype_id`) VALUES
(5, 'Content', 'content', 'content', 0, 2, 4, 2),
(6, 'Meta description', 'metaDescription', 'Description', 0, 1, 7, 1),
(7, 'Keywords', 'metaKeywords', 'Keywords', 0, 2, 7, 1),
(8, 'Title', 'pageTitle', 'Title', 0, 3, 7, 1),
(9, 'Main Title', 'mainTitle', 'Title', 0, 4, 7, 1),
(10, 'Meta description', 'metaDescription', 'Description', 0, 3, 8, 1),
(11, 'Keywords', 'metaKeywords', 'Keywords', 0, 4, 8, 1),
(12, 'Title', 'pageTitle', 'Title', 0, 5, 8, 1),
(13, 'Main Title', 'mainTitle', 'Title', 0, 6, 8, 1),
(15, 'Title', 'title', 'Title', 0, 1, 4, 1),
(26, 'Short content', 'shortContent', '', 0, 5, 12, 2),
(27, 'Image', 'image', '', 0, 6, 12, 7),
(28, 'Meta description', 'metaDescription', 'Description', 0, 7, 13, 1),
(29, 'Keywords', 'metaKeywords', 'Keywords', 0, 8, 13, 1),
(30, 'Title', 'pageTitle', 'Title', 0, 9, 13, 1),
(31, 'Main Title', 'mainTitle', 'Title', 0, 10, 13, 1),
(32, 'Title', 'title', '', 0, 1, 11, 1),
(33, 'Publication date', 'published_at', '', 0, 3, 11, 6),
(34, 'Content', 'content', '', 0, 4, 11, 2),
(35, 'Meta description', 'metaDescription', 'Description', 0, 1, 14, 1),
(36, 'Keywords', 'metaKeywords', 'Keywords', 0, 2, 14, 1),
(37, 'Title', 'pageTitle', 'Title', 0, 3, 14, 1),
(38, 'Main Title', 'mainTitle', 'Title', 0, 4, 14, 1),
(39, 'Meta description', 'metaDescription', 'Description', 0, 4, 15, 1),
(40, 'Keywords', 'metaKeywords', 'Keywords', 0, 5, 15, 1),
(41, 'Title', 'pageTitle', 'Title', 0, 6, 15, 1),
(42, 'Main Title', 'mainTitle', 'Title', 0, 7, 15, 1),
(43, 'Author name', 'authorName', '', 0, 2, 11, 1),
(44, 'Elements', 'sidebarElements', '', 0, 3, 16, 8),
(45, 'Elements', 'sidebarElements', '', 0, 5, 17, 8),
(46, 'Elements', 'sidebarElements', '', 0, 11, 18, 8),
(47, 'Elements', 'sidebarElements', '', 0, 5, 19, 8),
(48, 'Elements', 'sidebarElements', '', 0, 7, 20, 8),
(49, 'Image', 'image', '', 0, 1, 21, 9),
(50, 'Content', 'content', '', 0, 2, 21, 2);

-- --------------------------------------------------------

--
-- Table structure for table `property_value`
--

CREATE TABLE IF NOT EXISTS `property_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value` longblob,
  PRIMARY KEY (`id`),
  KEY `fk_property_value_document` (`document_id`),
  KEY `fk_property_value_property` (`property_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Dumping data for table `property_value`
--

INSERT INTO `property_value` (`id`, `document_id`, `property_id`, `value`) VALUES
(6, 2, 5, 0x3c703e0a2020202053757370656e64697373652066617563696275732064696374756d2074656c6c757320696420706f73756572652e204372617320717569732065726f732074656c6c75732c20696420706f7375657265206c616375732e205072616573656e74206163206573742065726f732e20416c697175616d20656c656966656e64206e756e63207574206e6571756520636f6e736571756174207175697320737573636970697420656c69742074696e636964756e742e20467573636520696e74657264756d20677261766964612074696e636964756e742e2053656420657420616e7465206e6563206c6967756c61206672696e67696c6c6120636f6e64696d656e74756d2e204d61757269732076656c2073656d206163206c6967756c6120736564206c6f72656d20766573746962756c756d206f726e6172652076656c20736564206e6962682e2046757363652072686f6e6375732074696e636964756e7420616e74652c206e6f6e2068656e647265726974206d61676e6120766573746962756c756d20717569732e20496e74656765722076656c20656e696d2073656d2070686173656c6c75732074656d707573206c6f72656d2e3c2f703e0a3c703e0a202020204d616563656e61732076656c206d61757269732073697420616d657420617567756520616363756d73616e2074656d706f72206e6f6e20696e2073617069656e2e204e756c6c6120666163696c6973692e20416c697175616d20696d706572646965742073656d206574206f7263692061646970697363696e67207665686963756c61207361676974746973206d6574757320636f6e73656374657475722e204d617572697320612064756920646f6c6f72206d61676e612074726973746971756520636f6e64696d656e74756d206e6563207574206c6967756c612e20536564206575206172637520696e206e6571756520706f72746120696163756c69732e204d6175726973206665726d656e74756d2076656c69742073697420616d6574206c656f20636f6e76616c6c697320636f6e73656374657475722e2055742076656c206c696265726f206475692c206575207665686963756c612076656c69742e204d616563656e6173206574206a7573746f207669746165206c616375732076656e656e61746973207665686963756c612e205574206567657420706f7375657265206172637520646f6c6f726520626c616e6469742e3c2f703e0a3c703e0a2020202041656e65616e206e656320747572706973206163206c6967756c6120706f737565726520656c656966656e642073656420612065726f732e20496e7465676572206e6563206e69626820696e74657264756d206e756c6c61206672696e67696c6c6120756c747269636965732e20496e74656765722073656d7065722066656c697320657520616e746520636f6e677565206469676e697373696d2e205072616573656e742072686f6e637573206e756c6c61207365642066656c69732072686f6e63757320657420696163756c6973207269737573206d61747469732e204e616d20736564207075727573206475692c2061206567657374617320656e696d2e20446f6e656320666163696c697369732c20656e696d206964206665726d656e74756d206d61747469732c2074656c6c7573206c696265726f20756c74726963696573206d617373612c20657520626962656e64756d20617567756520697073756d2073697420616d6574206c6967756c612e2050726f696e20706f72746120736167697474697320657261742061632070686172657472612e2041656e65616e20756c7472696369657320656e696d206964206d69206c6163696e69612072686f6e6375732e204e756e6320766f6c75747061742c207475727069732076656c20706f7274612074696e636964756e742c206c6563747573206d65747573206665726d656e74756d206c65637475732c2073656420736f64616c65732065726174206e697369206e6f6e20646f6c6f722e2050656c6c656e7465737175652076697461652066656c69732065676574207475727069732072757472756d206d616c65737561646120696e206e6f6e207175616d2e204d6175726973206174206c6f72656d2076656c206e756e6320747269737469717565207363656c657269737175652073697420616d6574206964206e69736c2e20446f6e6563206174206e697369206d61676e612c20696e207072657469756d206c6967756c612e20536564206c616375732061756775652c207361676974746973206574206772617669646120766976657272612c20696d70657264696574206567657420656c69742e204d6f726269206d616c657375616461206c6967756c612e2050726f696e20706f72746120736167697474697320657261742061632070686172657472612e2041656e65616e20756c7472696369657320656e696d206964206d69206c6163696e69612072686f6e6375732e204e756e6320766f6c75747061742c207475727069732076656c20706f7274612074696e636964756e742c206c6563747573206d65747573206665726d656e74756d206c65637475732c2073656420736f64616c6573206572617420696d706572646965742073656d206574206f7263692061646970697363696e67207665686963756c61207361676974746973206d6574757320636f6e73656374657475722e204d617572697320612064756920646f6c6f72206d61676e612074726973746971756520636f6e64696d656e74756d206e6563207574206c6967756c612e20536564206575206172637520696e206e6571756520706f72746120696163756c69732e204d6175726973206665726d656e74756d2076656c69742073697420616d6574206c656f20636f6e76616c6c697320636f6e73656374657475722e2055742076656c206c696265726f206475692c206575207665686963756c612076656c69742e204d616563656e6173206574206a7573746f206e697369206e6f6e20646f6c6f722e2050656c6c656e7465737175652076697461652066656c69732065676574207475727069732072757472756d206d616c65737561646120696e206e6f6e207175616d2e204d6175726973206174206c6f72656d2076656c206e756e6320747269737469717565207363656c657269737175652073697420616d6574206964206e69736c2e20446f6e6563206174206e697369206d61676e612c20696e207072657469756d206c6967756c612e20536564206c616375732061756775652c207361676974746973206574206772617669646120766976657272612c20696d70657264696574206567657420656c69742e204d6f726269206d616c657375616461206d61757269732065752065726f732072757472756d20626c616e6469742e2043726173206d616c6573756164612072757472756d2073656d2c206163207665686963756c61206469616d20766f6c75747061742061632e20566573746962756c756d2073656420746f72746f722070757275732e2050686173656c6c757320696e206c6563747573206672696e67696c6c612074656c6c757320706f72747469746f72207665686963756c61207574206665726d656e74756d206d65747573206c6f72656d20697073756d20646f6c6f722073697420616d6574206c6f72656d20697073756d20646f6c6f722073697420616d6574206e756c6c616d20636f6e736571756174206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736571756174207665726f65726f7320657469616d2e3c2f703e0a),
(7, 2, 10, 0x41626f7574),
(8, 2, 11, ''),
(9, 2, 12, 0x41626f7574),
(10, 2, 13, 0x41626f7574),
(11, 3, 6, 0x436f6e74616374),
(12, 3, 7, 0x436f6e74616374),
(13, 3, 8, 0x436f6e74616374),
(14, 3, 9, 0x436f6e74616374),
(15, 2, 15, 0x41626f7574),
(26, 4, 39, 0x426c6f67),
(27, 4, 40, ''),
(28, 4, 41, 0x426c6f67),
(29, 4, 42, 0x426c6f67),
(30, 5, 35, 0x46697273742063617465676f7279202d20426c6f67),
(31, 5, 36, ''),
(32, 5, 37, 0x46697273742063617465676f7279202d20426c6f67),
(33, 5, 38, 0x46697273742063617465676f7279202d20426c6f67),
(34, 6, 35, 0x5365636f6e642063617465676f7279202d20426c6f67),
(35, 6, 36, ''),
(36, 6, 37, 0x5365636f6e642063617465676f7279202d20426c6f67),
(37, 6, 38, 0x5365636f6e642063617465676f7279202d20426c6f67),
(38, 7, 32, 0x54776f20436f6c756d6e20233220286c6566742d68616e64207369646562617229),
(39, 7, 33, 0x323031332f30352f32352030323a33323a3137),
(40, 7, 34, 0x3c703e0a2020202053757370656e64697373652066617563696275732064696374756d2074656c6c757320696420706f73756572652e204372617320717569732065726f732074656c6c75732c20696420706f7375657265206c616375732e205072616573656e74206163206573742065726f732e20416c697175616d20656c656966656e64206e756e63207574206e6571756520636f6e736571756174207175697320737573636970697420656c69742074696e636964756e742e20467573636520696e74657264756d20677261766964612074696e636964756e742e2053656420657420616e7465206e6563206c6967756c61206672696e67696c6c6120636f6e64696d656e74756d2e204d61757269732076656c2073656d206163206c6967756c6120736564206c6f72656d20766573746962756c756d206f726e6172652076656c20736564206e6962682e2046757363652072686f6e6375732074696e636964756e7420616e74652c206e6f6e2068656e647265726974206d61676e6120766573746962756c756d20717569732e20496e74656765722076656c20656e696d2073656d2070686173656c6c75732074656d707573206c6f72656d2e3c2f703e0a3c703e0a202020204d616563656e61732076656c206d61757269732073697420616d657420617567756520616363756d73616e2074656d706f72206e6f6e20696e2073617069656e2e204e756c6c6120666163696c6973692e20416c697175616d20696d706572646965742073656d206574206f7263692061646970697363696e67207665686963756c61207361676974746973206d6574757320636f6e73656374657475722e204d617572697320612064756920646f6c6f72206d61676e612074726973746971756520636f6e64696d656e74756d206e6563207574206c6967756c612e20536564206575206172637520696e206e6571756520706f72746120696163756c69732e204d6175726973206665726d656e74756d2076656c69742073697420616d6574206c656f20636f6e76616c6c697320636f6e73656374657475722e2055742076656c206c696265726f206475692c206575207665686963756c612076656c69742e204d616563656e6173206574206a7573746f207669746165206c616375732076656e656e61746973207665686963756c612e205574206567657420706f7375657265206172637520646f6c6f726520626c616e6469742e3c2f703e0a3c703e0a2020202041656e65616e206e656320747572706973206163206c6967756c6120706f737565726520656c656966656e642073656420612065726f732e20496e7465676572206e6563206e69626820696e74657264756d206e756c6c61206672696e67696c6c6120756c747269636965732e20496e74656765722073656d7065722066656c697320657520616e746520636f6e677565206469676e697373696d2e205072616573656e742072686f6e637573206e756c6c61207365642066656c69732072686f6e63757320657420696163756c6973207269737573206d61747469732e204e616d20736564207075727573206475692c2061206567657374617320656e696d2e20446f6e656320666163696c697369732c20656e696d206964206665726d656e74756d206d61747469732c2074656c6c7573206c696265726f20756c74726963696573206d617373612c20657520626962656e64756d20617567756520697073756d2073697420616d6574206c6967756c612e2050726f696e20706f72746120736167697474697320657261742061632070686172657472612e2041656e65616e20756c7472696369657320656e696d206964206d69206c6163696e69612072686f6e6375732e204e756e6320766f6c75747061742c207475727069732076656c20706f7274612074696e636964756e742c206c6563747573206d65747573206665726d656e74756d206c65637475732c2073656420736f64616c65732065726174206e697369206e6f6e20646f6c6f722e2050656c6c656e7465737175652076697461652066656c69732065676574207475727069732072757472756d206d616c65737561646120696e206e6f6e207175616d2e204d6175726973206174206c6f72656d2076656c206e756e6320747269737469717565207363656c657269737175652073697420616d6574206964206e69736c2e20446f6e6563206174206e697369206d61676e612c20696e207072657469756d206c6967756c612e20536564206c616375732061756775652c207361676974746973206574206772617669646120766976657272612c20696d70657264696574206567657420656c69742e204d6f726269206d616c657375616461206c6967756c612e2050726f696e20706f72746120736167697474697320657261742061632070686172657472612e2041656e65616e20756c7472696369657320656e696d206964206d69206c6163696e69612072686f6e6375732e204e756e6320766f6c75747061742c207475727069732076656c20706f7274612074696e636964756e742c206c6563747573206d65747573206665726d656e74756d206c65637475732c2073656420736f64616c6573206572617420696d706572646965742073656d206574206f7263692061646970697363696e67207665686963756c61207361676974746973206d6574757320636f6e73656374657475722e204d617572697320612064756920646f6c6f72206d61676e612074726973746971756520636f6e64696d656e74756d206e6563207574206c6967756c612e20536564206575206172637520696e206e6571756520706f72746120696163756c69732e204d6175726973206665726d656e74756d2076656c69742073697420616d6574206c656f20636f6e76616c6c697320636f6e73656374657475722e2055742076656c206c696265726f206475692c206575207665686963756c612076656c69742e204d616563656e6173206574206a7573746f206e697369206e6f6e20646f6c6f722e2050656c6c656e7465737175652076697461652066656c69732065676574207475727069732072757472756d206d616c65737561646120696e206e6f6e207175616d2e204d6175726973206174206c6f72656d2076656c206e756e6320747269737469717565207363656c657269737175652073697420616d6574206964206e69736c2e20446f6e6563206174206e697369206d61676e612c20696e207072657469756d206c6967756c612e20536564206c616375732061756775652c207361676974746973206574206772617669646120766976657272612c20696d70657264696574206567657420656c69742e204d6f726269206d616c657375616461206d61757269732065752065726f732072757472756d20626c616e6469742e2043726173206d616c6573756164612072757472756d2073656d2c206163207665686963756c61206469616d20766f6c75747061742061632e20566573746962756c756d2073656420746f72746f722070757275732e2050686173656c6c757320696e206c6563747573206672696e67696c6c612074656c6c757320706f72747469746f72207665686963756c61207574206665726d656e74756d206d65747573206c6f72656d20697073756d20646f6c6f722073697420616d6574206c6f72656d20697073756d20646f6c6f722073697420616d6574206e756c6c616d20636f6e736571756174206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736571756174207665726f65726f7320657469616d2e3c2f703e0a),
(41, 7, 26, 0x3c703e0a2020202053757370656e64697373652066617563696275732064696374756d2074656c6c757320696420706f73756572652e204372617320717569732065726f732074656c6c75732c20696420706f7375657265206c616375732e205072616573656e74206163206573742065726f732e20416c697175616d20656c656966656e64206e756e63207574206e6571756520636f6e736571756174207175697320737573636970697420656c69742074696e636964756e742e20467573636520696e74657264756d20677261766964612074696e636964756e742e2053656420657420616e7465206e6563206c6967756c61206672696e67696c6c6120636f6e64696d656e74756d2e204d61757269732076656c2073656d206163206c6967756c6120736564206c6f72656d20766573746962756c756d206f726e6172652076656c20736564206e6962682e2046757363652072686f6e6375732074696e636964756e7420616e74652c206e6f6e2068656e647265726974206d61676e6120766573746962756c756d20717569732e20496e74656765722076656c20656e696d2073656d2070686173656c6c75732074656d707573206c6f72656d2e3c2f703e0a),
(42, 7, 27, 0x623a303b),
(43, 7, 28, 0x54776f20436f6c756d6e202332),
(44, 7, 29, ''),
(45, 7, 30, 0x54776f20436f6c756d6e202332),
(46, 7, 31, 0x54776f20436f6c756d6e202332),
(47, 8, 32, 0x54776f20436f6c756d6e20233220286c6566742d68616e64207369646562617229),
(48, 8, 33, 0x323031332f30352f32352030323a33333a3039),
(49, 8, 34, 0x3c703e0a2020202053757370656e64697373652066617563696275732064696374756d2074656c6c757320696420706f73756572652e204372617320717569732065726f732074656c6c75732c20696420706f7375657265206c616375732e205072616573656e74206163206573742065726f732e20416c697175616d20656c656966656e64206e756e63207574206e6571756520636f6e736571756174207175697320737573636970697420656c69742074696e636964756e742e20467573636520696e74657264756d20677261766964612074696e636964756e742e2053656420657420616e7465206e6563206c6967756c61206672696e67696c6c6120636f6e64696d656e74756d2e204d61757269732076656c2073656d206163206c6967756c6120736564206c6f72656d20766573746962756c756d206f726e6172652076656c20736564206e6962682e2046757363652072686f6e6375732074696e636964756e7420616e74652c206e6f6e2068656e647265726974206d61676e6120766573746962756c756d20717569732e20496e74656765722076656c20656e696d2073656d2070686173656c6c75732074656d707573206c6f72656d2e3c2f703e0a3c703e0a202020204d616563656e61732076656c206d61757269732073697420616d657420617567756520616363756d73616e2074656d706f72206e6f6e20696e2073617069656e2e204e756c6c6120666163696c6973692e20416c697175616d20696d706572646965742073656d206574206f7263692061646970697363696e67207665686963756c61207361676974746973206d6574757320636f6e73656374657475722e204d617572697320612064756920646f6c6f72206d61676e612074726973746971756520636f6e64696d656e74756d206e6563207574206c6967756c612e20536564206575206172637520696e206e6571756520706f72746120696163756c69732e204d6175726973206665726d656e74756d2076656c69742073697420616d6574206c656f20636f6e76616c6c697320636f6e73656374657475722e2055742076656c206c696265726f206475692c206575207665686963756c612076656c69742e204d616563656e6173206574206a7573746f207669746165206c616375732076656e656e61746973207665686963756c612e205574206567657420706f7375657265206172637520646f6c6f726520626c616e6469742e3c2f703e0a3c703e0a2020202041656e65616e206e656320747572706973206163206c6967756c6120706f737565726520656c656966656e642073656420612065726f732e20496e7465676572206e6563206e69626820696e74657264756d206e756c6c61206672696e67696c6c6120756c747269636965732e20496e74656765722073656d7065722066656c697320657520616e746520636f6e677565206469676e697373696d2e205072616573656e742072686f6e637573206e756c6c61207365642066656c69732072686f6e63757320657420696163756c6973207269737573206d61747469732e204e616d20736564207075727573206475692c2061206567657374617320656e696d2e20446f6e656320666163696c697369732c20656e696d206964206665726d656e74756d206d61747469732c2074656c6c7573206c696265726f20756c74726963696573206d617373612c20657520626962656e64756d20617567756520697073756d2073697420616d6574206c6967756c612e2050726f696e20706f72746120736167697474697320657261742061632070686172657472612e2041656e65616e20756c7472696369657320656e696d206964206d69206c6163696e69612072686f6e6375732e204e756e6320766f6c75747061742c207475727069732076656c20706f7274612074696e636964756e742c206c6563747573206d65747573206665726d656e74756d206c65637475732c2073656420736f64616c65732065726174206e697369206e6f6e20646f6c6f722e2050656c6c656e7465737175652076697461652066656c69732065676574207475727069732072757472756d206d616c65737561646120696e206e6f6e207175616d2e204d6175726973206174206c6f72656d2076656c206e756e6320747269737469717565207363656c657269737175652073697420616d6574206964206e69736c2e20446f6e6563206174206e697369206d61676e612c20696e207072657469756d206c6967756c612e20536564206c616375732061756775652c207361676974746973206574206772617669646120766976657272612c20696d70657264696574206567657420656c69742e204d6f726269206d616c657375616461206c6967756c612e2050726f696e20706f72746120736167697474697320657261742061632070686172657472612e2041656e65616e20756c7472696369657320656e696d206964206d69206c6163696e69612072686f6e6375732e204e756e6320766f6c75747061742c207475727069732076656c20706f7274612074696e636964756e742c206c6563747573206d65747573206665726d656e74756d206c65637475732c2073656420736f64616c6573206572617420696d706572646965742073656d206574206f7263692061646970697363696e67207665686963756c61207361676974746973206d6574757320636f6e73656374657475722e204d617572697320612064756920646f6c6f72206d61676e612074726973746971756520636f6e64696d656e74756d206e6563207574206c6967756c612e20536564206575206172637520696e206e6571756520706f72746120696163756c69732e204d6175726973206665726d656e74756d2076656c69742073697420616d6574206c656f20636f6e76616c6c697320636f6e73656374657475722e2055742076656c206c696265726f206475692c206575207665686963756c612076656c69742e204d616563656e6173206574206a7573746f206e697369206e6f6e20646f6c6f722e2050656c6c656e7465737175652076697461652066656c69732065676574207475727069732072757472756d206d616c65737561646120696e206e6f6e207175616d2e204d6175726973206174206c6f72656d2076656c206e756e6320747269737469717565207363656c657269737175652073697420616d6574206964206e69736c2e20446f6e6563206174206e697369206d61676e612c20696e207072657469756d206c6967756c612e20536564206c616375732061756775652c207361676974746973206574206772617669646120766976657272612c20696d70657264696574206567657420656c69742e204d6f726269206d616c657375616461206d61757269732065752065726f732072757472756d20626c616e6469742e2043726173206d616c6573756164612072757472756d2073656d2c206163207665686963756c61206469616d20766f6c75747061742061632e20566573746962756c756d2073656420746f72746f722070757275732e2050686173656c6c757320696e206c6563747573206672696e67696c6c612074656c6c757320706f72747469746f72207665686963756c61207574206665726d656e74756d206d65747573206c6f72656d20697073756d20646f6c6f722073697420616d6574206c6f72656d20697073756d20646f6c6f722073697420616d6574206e756c6c616d20636f6e736571756174206c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736571756174207665726f65726f7320657469616d2e3c2f703e0a),
(50, 8, 26, 0x3c703e0a2020202053757370656e64697373652066617563696275732064696374756d2074656c6c757320696420706f73756572652e204372617320717569732065726f732074656c6c75732c20696420706f7375657265206c616375732e205072616573656e74206163206573742065726f732e20416c697175616d20656c656966656e64206e756e63207574206e6571756520636f6e736571756174207175697320737573636970697420656c69742074696e636964756e742e20467573636520696e74657264756d20677261766964612074696e636964756e742e2053656420657420616e7465206e6563206c6967756c61206672696e67696c6c6120636f6e64696d656e74756d2e204d61757269732076656c2073656d206163206c6967756c6120736564206c6f72656d20766573746962756c756d206f726e6172652076656c20736564206e6962682e2046757363652072686f6e6375732074696e636964756e7420616e74652c206e6f6e2068656e647265726974206d61676e6120766573746962756c756d20717569732e20496e74656765722076656c20656e696d2073656d2070686173656c6c75732074656d707573206c6f72656d2e3c2f703e0a),
(51, 8, 27, 0x623a303b),
(52, 8, 28, 0x54776f20436f6c756d6e202332),
(53, 8, 29, ''),
(54, 8, 30, 0x54776f20436f6c756d6e202332),
(55, 8, 31, 0x54776f20436f6c756d6e202332),
(56, 4, 44, 0x613a313a7b693a303b613a323a7b693a303b613a313a7b733a353a2276616c7565223b733a31363a2241626f75742053696c766572426c6f67223b7d693a313b613a313a7b733a353a2276616c7565223b733a3231313a223c703e0a0d0953696c766572426c6f6720697320612066726565204353532054656d706c6174652072656c656173656420756e64657220474e552047504c206c6963656e73652e20596f7520617265206672656520746f20757365202f206d6f6469667920697420696e20616e792077617920796f752077616e7420776974686f757420616e79207265737472696374696f6e732e2041206c696e6b206261636b20746f207468697320776562736974652077696c6c20616c776179732062652061707072656369617465642e3c2f703e0a0d223b7d7d7d),
(57, 2, 48, 0x4e3b),
(58, 4, 49, 0x613a353a7b733a353a2276616c7565223b733a33353a222f6d656469612f66696c65732f342f34392f353161623139373335646164322e6a7067223b733a353a227769647468223b693a3230343b733a363a22686569676874223b693a3132383b733a343a2268746d6c223b693a323b733a343a226d696d65223b733a31303a22696d6167652f6a706567223b7d),
(59, 4, 50, 0x3c68333e0a20202020466561747572656420436f6e74656e743c2f68333e0a3c703e0a202020204c6f72656d61207073756d20646f6c6f722073697420616d65742c20636f6e73656374657475722061646970697363696e6720656c69742e20496e7465676572206567657374617320707572757320626962656e64756d206e6571756520616c697175616d20757420706f737565726520656c69742073656d7065722e2046757363652073616769747469732070686172657472612065726f732c2073697420616d657420636f6e7365717561742073656d206d6f6c6c69732076697461652e3c2f703e0a);

-- --------------------------------------------------------

--
-- Table structure for table `script`
--

CREATE TABLE IF NOT EXISTS `script` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `script`
--

INSERT INTO `script` (`id`, `created_at`, `updated_at`, `name`, `identifier`, `content`, `description`) VALUES
(1, '2012-09-20 22:26:23', '2012-09-20 22:26:23', 'Contact', 'contact', '<?php\n$request = $this->getRequest();\nif($request->isPost())\n{\n    $post = $request->getPost();\n    $name = $post->get(''name'');\n    $email = $post->get(''email'');\n    $message = $post->get(''message'');\n    $answer_hash = $post->get(''answer_hash'');\n    $answer = substr(sha1($post->get(''answer'')), 5, 10);\n\n    if($answer != $answer_hash or empty($name) or empty($email) or empty($message))\n    {\n        return array(''name'' => $name, ''email'' => $email, ''message'' => $message, ''error_message'' => ''Please fill all fields'');\n    }\n    else\n    {\n        $mail = new \\Gc\\Mail(''utf-8'', $message);\n        $mail->setFrom($email, $name);\n        $mail->addTo($this->getServiceLocator()->get(''CoreConfig'')->getValue(''mail_from''));\n        $mail->send();\n        $this->flashMessenger()->addSuccessMessage(''Message sent'');\n        $this->redirect()->toUrl(''/contact'');\n        return TRUE;\n    }\n}\n', 'Contact ');

-- --------------------------------------------------------

--
-- Table structure for table `tab`
--

CREATE TABLE IF NOT EXISTS `tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `document_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tab`
--

INSERT INTO `tab` (`id`, `name`, `description`, `sort_order`, `document_type_id`) VALUES
(4, 'Content', 'Content', 1, 3),
(7, 'Title and meta', 'Meta description', 1, 2),
(8, 'Title and meta', 'Meta description', 3, 3),
(11, 'Content', 'Content', 2, 4),
(12, 'Relay', 'Relay', 3, 4),
(13, 'Title and meta', 'Meta description', 4, 4),
(14, 'Title and meta', 'Meta description', 2, 5),
(15, 'Title and meta', 'Meta description', 3, 6),
(16, 'Sidebar', 'Sidebar text', 2, 6),
(17, 'Sidebar', 'Sidebar text', 1, 5),
(18, 'Sidebar', 'Sidebar text', 1, 4),
(19, 'Sidebar', 'Sidebar text', 2, 2),
(20, 'Sidebar', 'Sidebar text', 2, 3),
(21, 'Featured', 'Featured content', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `retrieve_password_key` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `retrieve_updated_at` datetime DEFAULT NULL,
  `active` BOOLEAN DEFAULT true,
  `user_acl_role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`email`),
  KEY `fk_user_user_acl_role` (`user_acl_role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `created_at`, `updated_at`, `lastname`, `firstname`, `email`, `login`, `password`, `retrieve_password_key`, `retrieve_updated_at`, `user_acl_role_id`) VALUES
(1, '2013-09-29 01:46:41', '2013-09-29 01:46:41', 'Lastname', 'Firstname', 'myemail@myserver.com', 'demo', '89e495e7941cf9e40e6980d14a16bf023ccd4c91', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_acl`
--

CREATE TABLE IF NOT EXISTS `user_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_acl_permission_id` int(11) NOT NULL,
  `user_acl_role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_acl_permission_user_acl_role` (`user_acl_role_id`),
  KEY `fk_user_acl_user_acl_permission` (`user_acl_permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_acl`
--

INSERT INTO `user_acl` (`id`, `user_acl_permission_id`, `user_acl_role_id`) VALUES
(1, 13, 2),
(2, 14, 2),
(3, 15, 2),
(4, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_acl_permission`
--

CREATE TABLE IF NOT EXISTS `user_acl_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_acl_resource_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_acl_permission_user_acl_resource` (`user_acl_resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `user_acl_permission`
--

INSERT INTO `user_acl_permission` (`id`, `permission`, `user_acl_resource_id`) VALUES
(1, 'user/list', 1),
(2, 'user/create', 1),
(3, 'user/edit', 1),
(4, 'user/delete', 1),
(5, 'config/system', 1),
(6, 'config/general', 1),
(7, 'config/server', 1),
(8, 'config/update', 1),
(9, 'role/list', 1),
(10, 'role/create', 1),
(11, 'role/edit', 1),
(12, 'role/delete', 1),
(13, 'media', 2),
(14, 'document', 2),
(15, 'translation', 2),
(16, 'view/list', 3),
(17, 'view/create', 3),
(18, 'view/edit', 3),
(19, 'view/delete', 3),
(20, 'layout/list', 3),
(21, 'layout/create', 3),
(22, 'layout/edit', 3),
(23, 'layout/delete', 3),
(24, 'datatype/list', 3),
(25, 'datatype/create', 3),
(26, 'datatype/edit', 3),
(27, 'datatype/delete', 3),
(28, 'document-type/list', 3),
(29, 'document-type/create', 3),
(30, 'document-type/edit', 3),
(31, 'document-type/delete', 3),
(32, 'script/list', 3),
(33, 'script/create', 3),
(34, 'script/edit', 3),
(35, 'script/delete', 3),
(36, 'list', 4),
(37, 'install', 4),
(38, 'uninstall', 4),
(39, 'all', 5),
(40, 'Blog', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_acl_resource`
--

CREATE TABLE IF NOT EXISTS `user_acl_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_acl_resource`
--

INSERT INTO `user_acl_resource` (`id`, `resource`) VALUES
(1, 'settings'),
(2, 'content'),
(3, 'development'),
(4, 'modules'),
(5, 'stats');

-- --------------------------------------------------------

--
-- Table structure for table `user_acl_role`
--

CREATE TABLE IF NOT EXISTS `user_acl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_acl_role`
--

INSERT INTO `user_acl_role` (`id`, `name`, `description`) VALUES
(1, 'Administrator', NULL),
(2, 'Writer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE IF NOT EXISTS `view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`id`, `created_at`, `updated_at`, `name`, `identifier`, `content`, `description`) VALUES
(1, '2012-09-19 19:29:04', '2013-06-02 12:22:18', 'Home page', 'home', '<?php if (!empty($this->image)): ?>\n    <section id="featured">\n        <h2 class="ftheading">Featured</h2>\n        <div class="ftwrap">\n            <div class="ftimg">\n                <img src="<?php echo $this->image[''value'']; ?>" width="<?php echo $this->image[''width'']; ?>" height="<?php echo $this->image[''height'']; ?>" alt="">\n            </div>\n            <div class="fttxt"><?php echo $this->content; ?></div>\n        </div>\n    </section>\n<?php endif; ?>\n<div id="leftcontainer">\n    <h2 class="mainheading">Latest from the blog</h2>\n    <?php\n    $comment_table = new \\Blog\\Model\\Comment();\n    $posts = $this->currentDocument->getAvailableChildren();\n    foreach ($posts as $child) {\n        $children = $child->getChildren();\n        if(!empty($children)) {\n            foreach($children as $child) {\n                $posts[] = $child;\n            }\n        }\n    }\n\n    foreach($posts as $idx => $child) {\n        if($child->getView()->getIdentifier() != ''blog-ticket'') {\n            unset($posts[$idx]);\n        }\n    }\n\n    function sortObjects($a, $b) {\n        $aPublishedAt = $a->getProperty(''published_at'')->getValue();\n        $bPublishedAt = $b->getProperty(''published_at'')->getValue();\n        if ($aPublishedAt == $bPublishedAt) {\n            return 0;\n        }\n\n        return ($aPublishedAt > $bPublishedAt) ? -1 : 1;\n    }\n\n    usort($posts, ''sortObjects'');\n\n    $paginator = new \\Zend\\Paginator\\Paginator(new \\Zend\\Paginator\\Adapter\\ArrayAdapter($posts));\n    $paginator->setItemCountPerPage(5);\n    $paginator->setCurrentPageNumber(empty($_GET[''page'']) ? 1 : (int)$_GET[''page'']);\n    ?>\n\n    <?php if(!empty($posts)): ?>\n        <?php foreach($paginator as $post): ?>\n            <article class="post">\n                <header>\n                    <h3><a href="<?php echo $this->escapeHtml($post->getUrl()); ?>"><?php echo $this->escapeHtml($post->getProperty(''title'')->getValue()); ?></a></h3>\n                    <p class="postinfo">\n                        <?php $parent = $post->getParent(); ?>\n                        Published on <time><?php echo $this->escapeHtml(date(''Y-m-d'', strtotime($post->getProperty(''published_at'')->getValue()))); ?></time> under <a href="<?php echo $this->escapeHtml($parent->getUrl()); ?>"><?php echo $this->escapeHtml($parent->getName()); ?></a>\n                    </p>\n                </header>\n\n                <?php echo $post->getProperty(''shortContent'')->getValue(); ?>\n\n                <footer>\n                    <span class="author"><?php echo $this->escapeHtml($post->getProperty(''authorName'')->getValue()); ?></span>\n                    <span class="permalink"><a href="<?php echo $this->escapeHtml($post->getUrl()); ?>">Read Full</a></span>\n                    <?php $comments = $comment_table->getList($post->getId()); ?>\n                    <?php $nb_comments = count($comments); ?>\n                    <?php if(!empty($nb_comments)): ?>\n                        <span class="comments">\n                             &bull; <a href="<?php echo $this->escapeHtml($post->getUrl()); ?>#comments_list">\n                                <?php if($nb_comments == 1): ?>\n                                    1 Comment\n                                <?php else: ?>\n                                    <?php echo $nb_comments; ?> Comments\n                                <?php endif; ?>\n                            </a>\n                        </span>\n                    <?php endif; ?>\n                </footer>\n            </article>\n        <?php endforeach; ?>\n    <?php endif; ?>\n\n    <?php echo $this->paginationControl($paginator, ''sliding'', ''paginator'', array(''path'' => $this->currentDocument->getUrl()));?>\n    <div class="clear"></div>\n</div>\n', 'Home page content'),
(3, '2012-09-19 19:32:56', '2013-06-02 12:22:18', 'Contact', 'contact', '<div id="contents">\n    <section id="main">\n        <div id="leftcontainer">\n            <h2>Contact Me</h2>\n                <?php echo $this->partial(''flash-messages''); ?>\n                <?php\n                    $return = $this->script(''contact'');\n                    $number_1 = mt_rand(1, 9);\n                    $number_2 = mt_rand(1, 9);\n                    $answer = substr(sha1($number_1+$number_2),5,10);\n                ?>\n\n                <form id="contact" action="<?php echo $this->escapeHtml($this->document(''contact'')->getUrl()); ?>" method="post">\n                    <?php if(!empty($return[''error_message''])): ?>\n                        <div class="notification error"><span><?php echo $this->escapeHtml($return[''error_message'']); ?><span></div>\n                    <?php endif; ?>\n\n                    <div class="form_settings">\n                        <div>\n                            <label>\n                                <span>Name</span>\n                                <input class="input-text" type="text" name="name" value="<?php echo $this->escapeHtml(!empty($return[''name'']) ? $return[''name''] : ''''); ?>">\n                            </label>\n                        </div>\n                        <div>\n                            <label>\n                                <span>Email Address</span>\n                                <input class="input-text" type="text" name="email" value="<?php echo $this->escapeHtml(!empty($return[''email'']) ? $return[''email''] : ''''); ?>">\n                            </label>\n                        </div>\n                        <div>\n                            <label>\n                                <span>Message</span>\n                                <textarea class="input-text" rows="5" cols="50" name="message"><?php echo $this->escapeHtml(!empty($return[''message'']) ? $return[''message''] : ''''); ?></textarea>\n                            </label>\n                        </div>\n                        <div>\n                            <p style="line-height: 1.7em;">\n                                To help prevent spam, please enter the answer to this question:\n                                <span><?php echo $number_1; ?> + <?php echo $number_2; ?> = ?</span>\n                                <input type="text" name="answer" class="input-text"><input type="hidden" name="answer_hash" value="<?php echo $answer; ?>">\n                            </p>\n                        </div>\n                        <div>\n                            <p style="padding-top: 15px"><span>&nbsp;</span><input class="button" type="submit" name="contact_submitted" value="send"></label>\n                        </div>\n                    </div>\n                </form>\n            </article>\n        </div>\n    </section>\n</div>\n', 'Contact form'),
(4, '2012-09-19 19:33:51', '2013-06-02 12:22:18', 'One column', 'one-column', '<div id="leftcontainer">\n    <h2 class="mainheading"><?php echo $this->escapeHtml($this->title); ?></h2>\n    <article class="post">\n        <?php echo $this->content; ?>\n    </article>\n</div>\n', 'One column page'),
(6, '2012-10-25 19:57:05', '2013-06-02 12:22:18', 'Flash messages', 'flash-messages', '<?php if(!empty($this->layout()->flashMessages)): ?>\n    <?php foreach($this->layout()->flashMessages as $type => $messages):?>\n        <?php foreach($messages as $message): ?>\n            <div class="notification <?php echo $type; ?>">\n             <?php echo $this->escapeHtml($this->translate($message)); ?>\n            </div>\n        <?php endforeach; ?>\n    <?php endforeach; ?>\n<?php endif; ?>', 'Flash messages displayer'),
(7, '2013-05-20 15:52:38', '2013-06-02 12:22:18', 'Paginator', 'paginator', '<div class="wp-pagenavi">\n    <?php if ($this->pageCount): ?>\n        <p class="clearfix">\n            <?php if (isset($this->previous)): ?>\n                <a class="float right" href="<?php echo $this->escapeHtml($this->path); ?>?page=<?php echo $this->previous; ?>">\n                    Newer\n                </a>\n            <?php endif; ?>\n\n            <?php foreach ($this->pagesInRange as $page): ?>\n                <?php if ($page != $this->current): ?>\n                    <a href="<?php echo $this->escapeHtml($this->path); ?>?page=<?php echo $page; ?>">\n                        <?php echo $page; ?>\n                    </a>\n                <?php else: ?>\n                    <span class="current"><?php echo $page; ?></span>\n                <?php endif; ?>\n            <?php endforeach; ?>\n\n            <?php if (isset($this->next)): ?>\n                <a class="float" href="<?php echo $this->escapeHtml($this->path); ?>?page=<?php echo $this->next; ?>">\n                    Previous\n                </a>\n            <?php endif; ?>\n        </p>\n    <?php endif; ?>\n</div>\n\n', 'Paginator control'),
(11, '2013-05-24 19:02:58', '2013-06-02 12:22:18', 'Blog ticket', 'blog-ticket', '<div class="subpage" id="main-wrapper">\n    <div class="container">\n        <div class="row">\n           <div id="leftcontainer">\n                <?php\n                $return = $this->script(''blog-comment'');\n                if ($return === true) {\n                    return;\n                }\n\n                $comment_table = new \\Blog\\Model\\Comment();\n                $comments = $comment_table->getList($this->currentDocument->getId());\n                $nb_comments = count($comments);\n                ?>\n\n                <?php echo $this->partial(''flash-messages''); ?>\n                    <h2 class="mainheading"><?php echo $this->escapeHtml($this->title); ?></h2>\n                    <article class="post">\n                        <div>\n                            <?php $parent = $this->currentDocument->getParent(); ?>\n                            <p class="sub">\n                                <a href="<?php echo $this->escapeHtml($parent->getUrl()); ?>"><?php echo $this->escapeHtml($parent->getName()); ?></a> &bull; <?php echo $this->escapeHtml(date(''Y-m-d'', strtotime($this->published_at))); ?>\n                                <?php if(!empty($nb_comments)): ?>\n                                    &bull; <a href="#comments_list">\n                                        <?php if($nb_comments == 1): ?>\n                                            1 Comment\n                                        <?php else: ?>\n                                            <?php echo $nb_comments; ?> Comments\n                                        <?php endif; ?>\n                                    </a>\n                                <?php endif; ?>\n                            </p>\n                            <div class="hr dotted clearfix">&nbsp;</div>\n                            <?php echo $this->content; ?>\n                        </div>\n                        <footer>\n                            <span class="author"><?php echo $this->escapeHtml($this->authorName); ?></span>\n                            <span class="permalink"><a href="<?php echo $this->escapeHtml($this->document('''')->getUrl()); ?>" class="float">Back to Blog</a></span>\n                            <span class="comments"><a href="#comment_form" class="float right">Discuss this post</a></span>\n                        </footer>\n                    </article>\n                <div class="hr clearfix">&nbsp;</div>\n\n                <?php echo $this->modulePlugin(''Blog'', ''comment-list''); ?>\n\n                <div class="hr clearfix">&nbsp;</div>\n\n                <?php echo $this->modulePlugin(''Blog'', ''comment-form''); ?>\n            </div>\n        </div>\n    </div>\n</div>\n', 'Simple blog ticket'),
(12, '2013-05-27 08:55:24', '2013-06-02 12:22:18', 'Sidebar', 'sidebar', '<div id="sidebarwrap">\n    <?php $sidebarElements = $this->tools(''unserialize'', $this->currentDocument->getProperty(''sidebarElements'')->getValue()); ?>\n    <?php if (empty($sidebarElements)): //Take home value if page does not have one ?>\n        <?php $sidebarElements = $this->tools(''unserialize'', $this->document()->getProperty(''sidebarElements'')->getValue()); ?>\n    <?php endif; ?>\n\n    <?php if (!empty($sidebarElements)): ?>\n        <?php foreach($sidebarElements as $element): ?>\n            <h2><?php echo $this->escapeHtml($element[0][''value'']); ?></h2>\n            <?php echo $element[1][''value'']; ?>\n        <?php endforeach; ?>\n    <?php endif; ?>\n\n    <?php $blogChildren = $this->document('''')->getAvailableChildren(); ?>\n    <h2>Categories</h2>\n    <ul>\n        <?php foreach($blogChildren as $child): ?>\n            <?php $nbPosts = count($child->getAvailableChildren()); ?>\n            <li><a href="<?php echo $this->escapeHtml($child->getUrl()); ?>"><?php echo $this->escapeHtml($child->getName()); ?></a>(<?php echo $nbPosts; ?>)</li>\n        <?php endforeach; ?>\n    </ul>\n\n    <?php\n    $posts = $blogChildren;\n    foreach ($posts as $child) {\n        $children = $child->getChildren();\n        if (!empty($children)) {\n            foreach ($children as $child) {\n                $posts[] = $child;\n            }\n        }\n    }\n\n    foreach ($posts as $idx => $child) {\n        if ($child->getView()->getIdentifier() != ''blog-ticket'') {\n            unset($posts[$idx]);\n        }\n    }\n\n    if (!function_exists(''sortObjects'')) {\n        function sortObjects($a, $b) {\n            $aPublishedAt = $a->getProperty(''published_at'')->getValue();\n            $bPublishedAt = $b->getProperty(''published_at'')->getValue();\n            if ($aPublishedAt == $bPublishedAt) {\n                return 0;\n            }\n\n            return ($aPublishedAt > $bPublishedAt) ? -1 : 1;\n        }\n    }\n\n    usort($posts, ''sortObjects'');\n    ?>\n    <h2>Latest Posts</h2>\n    <ul>\n        <?php foreach($posts as $idx => $post): ?>\n            <li><a href="<?php echo $this->escapeHtml($post->getUrl()); ?>"><?php echo $this->escapeHtml($post->getProperty(''title'')->getValue()); ?></a></li>\n            <?php if ($idx >= 8): ?>\n                <?php break; ?>\n            <?php endif; ?>\n        <?php endforeach; ?>\n    </ul>\n</div>\n', 'Sidebar');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `fk_blog_comment_document` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `core_translate_locale`
--
ALTER TABLE `core_translate_locale`
  ADD CONSTRAINT `fk_core_translate_locale_core_translate` FOREIGN KEY (`core_translate_id`) REFERENCES `core_translate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `fk_documents_view` FOREIGN KEY (`view_id`) REFERENCES `view` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_document_document` FOREIGN KEY (`parent_id`) REFERENCES `document` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_document_document_type` FOREIGN KEY (`document_type_id`) REFERENCES `document_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_document_layout` FOREIGN KEY (`layout_id`) REFERENCES `layout` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_document_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `document_type`
--
ALTER TABLE `document_type`
  ADD CONSTRAINT `fk_document_type_icon` FOREIGN KEY (`icon_id`) REFERENCES `icon` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_document_type_view` FOREIGN KEY (`default_view_id`) REFERENCES `view` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `document_type_dependency`
--
ALTER TABLE `document_type_dependency`
  ADD CONSTRAINT `fk_document_type_dependency_children_id` FOREIGN KEY (`children_id`) REFERENCES `document_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_document_type_dependency_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `document_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `document_type_view`
--
ALTER TABLE `document_type_view`
  ADD CONSTRAINT `fk_document_type_views_views` FOREIGN KEY (`view_id`) REFERENCES `view` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_document_type_view_document_type` FOREIGN KEY (`document_type_id`) REFERENCES `document_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log_url`
--
ALTER TABLE `log_url`
  ADD CONSTRAINT `fk_log_url_log_url_info` FOREIGN KEY (`log_url_info_id`) REFERENCES `log_url_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_log_url_log_visitor` FOREIGN KEY (`log_visitor_id`) REFERENCES `log_visitor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `fk_property_datatype` FOREIGN KEY (`datatype_id`) REFERENCES `datatype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_property_tab` FOREIGN KEY (`tab_id`) REFERENCES `tab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_value`
--
ALTER TABLE `property_value`
  ADD CONSTRAINT `fk_property_value_document` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_property_value_property` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_user_acl_role` FOREIGN KEY (`user_acl_role_id`) REFERENCES `user_acl_role` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_acl`
--
ALTER TABLE `user_acl`
  ADD CONSTRAINT `fk_user_acl_permission_user_acl_role` FOREIGN KEY (`user_acl_role_id`) REFERENCES `user_acl_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_acl_user_acl_permission` FOREIGN KEY (`user_acl_permission_id`) REFERENCES `user_acl_permission` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user_acl_permission`
--
ALTER TABLE `user_acl_permission`
  ADD CONSTRAINT `fk_user_acl_permission_user_acl_resource` FOREIGN KEY (`user_acl_resource_id`) REFERENCES `user_acl_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
