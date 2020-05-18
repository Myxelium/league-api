-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Värd: s686.loopia.se
-- Tid vid skapande: 18 maj 2020 kl 16:28
-- Serverversion: 10.2.31-MariaDB-log
-- PHP-version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `api_heaven_com`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `assets`
--

CREATE TABLE `assets` (
  `id` int(6) NOT NULL,
  `slot` int(6) NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `assets`
--

INSERT INTO `assets` (`id`, `slot`, `name`, `url`) VALUES
(1, 1, 'electrocute', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/electrocute/electrocute.png'),
(2, 1, 'predator', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/predator/predator.png'),
(3, 1, 'dark harvest', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/darkharvest/darkharvest.png'),
(4, 1, 'hail of blades', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/hailofblades/hailofblades.png'),
(5, 1, 'press the attack', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/presstheattack/presstheattack.png'),
(6, 1, 'lethal tempo', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/lethaltempo/lethaltempotemp.png'),
(7, 1, 'fleet footwork', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/fleetfootwork/fleetfootwork.png'),
(8, 1, 'conqueror', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/conqueror/conqueror.png'),
(9, 1, 'summon aery', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/summonaery/summonaery.png'),
(10, 1, 'arcane comet', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/arcanecomet/arcanecomet.png'),
(11, 1, 'phase rush', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/phaserush/phaserush.png'),
(12, 1, 'grasp of the undying', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/graspoftheundying/graspoftheundying.png'),
(13, 1, 'aftershock', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/veteranaftershock/veteranaftershock.png'),
(14, 1, 'guardian', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/guardian/guardian.png'),
(15, 1, 'glacial augment', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/glacialaugment/glacialaugment.png'),
(16, 1, 'unsealed spellbook', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/unsealedspellbook/unsealedspellbook.png'),
(17, 1, 'prototype: omnistone', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/masterkey/masterkey.png'),
(18, 2, 'cheap shot', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/cheapshot/cheapshot.png'),
(19, 2, 'taste of blood', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/tasteofblood/greenterror_tasteofblood.png'),
(20, 2, 'sudden impact', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/suddenimpact/suddenimpact.png'),
(21, 2, 'overheal', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/overheal.png'),
(22, 2, 'triumph', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/triumph.png'),
(23, 2, 'presence of mind', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/presenceofmind/presenceofmind.png'),
(24, 2, 'nullifying orb', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/nullifyingorb/pokeshield.png'),
(25, 2, 'manaflow band', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/manaflowband/manaflowband.png'),
(26, 2, 'nimbus cloak', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/nimbuscloak/6361.png'),
(27, 2, 'grasp of the undying', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/graspoftheundying/graspoftheundying.png'),
(28, 2, 'aftershock', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/veteranaftershock/veteranaftershock.png'),
(29, 2, 'guardian', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/guardian/guardian.png'),
(30, 2, 'hextech flashtraption', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/hextechflashtraption/hextechflashtraption.png'),
(31, 2, 'magical footwear', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/magicalfootwear/magicalfootwear.png'),
(32, 2, 'perfect timing', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/perfecttiming/perfecttiming.png'),
(33, 3, 'futures market', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/futuresmarket/futuresmarket.png'),
(34, 3, 'minion dematerializer', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/miniondematerializer/miniondematerializer.png'),
(35, 3, 'biscuit delivery', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/biscuitdelivery/biscuitdelivery.png'),
(36, 3, 'demolish', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/demolish/demolish.png'),
(37, 3, 'font of life', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/fontoflife/fontoflife.png'),
(38, 3, 'shield bash', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/mirrorshell/mirrorshell.png'),
(39, 3, 'transcendence', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/transcendence/transcendence.png'),
(40, 3, 'celerity', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/celerity/celeritytemp.png'),
(41, 3, 'absolute focus', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/absolutefocus/absolutefocus.png'),
(42, 3, 'zombie ward', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/zombieward/zombieward.png'),
(43, 3, 'ghost poro', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/ghostporo/ghostporo.png'),
(44, 3, 'eyeball collection', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/eyeballcollection/eyeballcollection.png'),
(45, 3, 'legend: bloodline', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/legendbloodline/legendbloodline.png'),
(46, 4, 'coup de grace', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/coupdegrace/coupdegrace.png'),
(47, 4, 'cut down', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/cutdown/cutdown.png'),
(48, 4, 'last stand', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/laststand/laststand.png'),
(49, 4, 'ravenous hunter', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/ravenoushunter/ravenoushunter.png'),
(50, 4, 'ingenious hunter', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/ingenioushunter/ingenioushunter.png'),
(51, 4, 'relentless hunter', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/relentlesshunter/relentlesshunter.png'),
(52, 4, 'ultimate hunter', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/ultimatehunter/ultimatehunter.png'),
(53, 4, 'waterwalking', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/waterwalking/waterwalking.png'),
(54, 4, 'gathering storm', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/gatheringstorm/gatheringstorm.png'),
(55, 4, 'overgrowth', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/overgrowth/overgrowth.png'),
(56, 4, 'revitalize', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/revitalize/revitalize.png'),
(57, 4, 'unflinching', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/unflinching/unflinching.png'),
(58, 4, 'cosmic insight', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/cosmicinsight/cosmicinsight.png'),
(59, 4, 'approach velocity', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/approachvelocity/approachvelocity.png'),
(60, 3, 'legend: alacrity', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/legendalacrity/legendalacrity.png'),
(61, 3, 'legend: tenacity', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/legendtenacity/legendtenacity.png'),
(62, 3, 'second wind', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/secondwind/secondwind.png'),
(63, 4, 'scorch', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/scorch/scorch.png'),
(64, 3, 'bone plating', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/boneplating/boneplating.png'),
(65, 0, 'sorcery', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/7202_sorcery.png'),
(66, 0, 'domination', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/7200_domination.png'),
(67, 0, 'precision', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/7201_precision.png'),
(68, 0, 'inspiration', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/7203_whimsy.png'),
(69, 0, 'resolve', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/7204_resolve.png'),
(70, 0, 'precision', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/runesicon.png'),
(71, 3, 'conditioning', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/conditioning/conditioning.png'),
(72, 4, 'time warp tonic', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/timewarptonic/timewarptonic.png'),
(73, 5, 'adaptive', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/statmods/statmodsadaptiveforceicon.png'),
(74, 5, 'magic resist', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/statmods/statmodsmagicresicon.png'),
(75, 5, 'hp', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/statmods/statmodshealthscalingicon.png'),
(76, 5, 'armor', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/statmods/statmodsarmoricon.png'),
(77, 5, 'attack speed', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/statmods/statmodsattackspeedicon.png'),
(78, 5, 'cdr', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/statmods/statmodscdrscalingicon.png'),
(79, 6, 'sorcerybg', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/sorcery/p8200_s8400_k8230.jpg'),
(80, 6, 'precisionbg', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/precision/p8000_s8400_k8021.jpg'),
(81, 6, 'dominationbg', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/domination/p8100_s8400_k9923.jpg'),
(82, 6, 'inspirationbg', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/inspiration/p8300_s8400_k8360.jpg'),
(83, 6, 'resolvebg', 'http://raw.communitydragon.org/latest/plugins/rcp-be-lol-game-data/global/default/v1/perk-images/styles/resolve/p8400_s8300_k8465.jpg');

-- --------------------------------------------------------

--
-- Tabellstruktur `league`
--

CREATE TABLE `league` (
  `id` int(6) NOT NULL,
  `champ` text CHARACTER SET utf32 COLLATE utf32_swedish_ci DEFAULT NULL,
  `nickname` text DEFAULT NULL,
  `nickname2` text DEFAULT NULL,
  `nickname3` text DEFAULT NULL,
  `main` text CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `main_rune1` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `main_rune2` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `main_rune3` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `main_rune4` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `secondary` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `secondary_rune1` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `secondary_rune2` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `bonus1` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `bonus2` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `bonus3` text CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `league`
--

INSERT INTO `league` (`id`, `champ`, `nickname`, `nickname2`, `nickname3`, `main`, `main_rune1`, `main_rune2`, `main_rune3`, `main_rune4`, `secondary`, `secondary_rune1`, `secondary_rune2`, `bonus1`, `bonus2`, `bonus3`) VALUES
(1, 'aatrox', 'atrox', 'aat', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'domination', 'taste of blood', 'ravenous hunter', 'adaptive', 'adaptive', 'armor'),
(2, 'ahri', 'fox', '', '', 'domination', 'electrocute', 'sudden impact', 'eyeball collection', 'ultimate hunter', 'sorcery', 'manaflow band', 'transcendence', 'adaptive', 'adaptive', 'magic resist'),
(3, 'akali', '', '', '', 'precision', 'conqueror', 'presence of mind', 'legend: tenacity', 'coup de grace', 'domination', 'taste of blood', 'ravenous hunter', 'adaptive', 'adaptive', 'hp'),
(4, 'alistar', 'ali', '', '', 'resolve', 'aftershock', 'demolish', 'bone plating', 'unflinching', 'inspiration', 'hextech flashtraption', 'cosmic insight', 'cdr', 'armor', 'armor'),
(5, 'amumu', '', '', '', 'resolve', 'aftershock', 'font of life', 'conditioning', 'overgrowth', 'domination', 'cheap shot', 'ultimate hunter', 'adaptive', 'armor', 'armor'),
(6, 'anivia', 'ani', '', '', 'domination', 'electrocute', 'cheap shot', 'eyeball collection', 'relentless hunter', 'precision', 'presence of mind', 'coup de grace', 'adaptive', 'adaptive', 'magic resist'),
(7, 'annie', 'tibbers', '', '', 'domination', 'dark harvest', 'cheap shot', 'eyeball collection', 'ravenous hunter', 'sorcery', 'transcendence', 'gathering storm', 'adaptive', 'adaptive', 'magic resist'),
(8, 'aphelios', 'aph', '', '', 'precision', 'conqueror', 'presence of mind', 'legend: alacrity', 'coup de grace', 'sorcery', 'nimbus cloak', 'absolute focus', 'attack speed', 'adaptive', 'armor'),
(9, 'ashe', 'ass', '', '', 'precision', 'lethal tempo', 'presence of mind', 'legend: alacrity', 'coup de grace', 'inspiration', 'magical footwear', 'approach velocity', 'attack speed', 'adaptive', 'armor'),
(10, 'aurelionsol', 'aurelion sol', '', '', 'domination', 'electrocute', 'taste of blood', 'eyeball collection', 'relentless hunter', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'magic resist'),
(11, 'azir', '', '', '', 'precision', 'lethal tempo', 'presence of mind', 'legend: alacrity', 'coup de grace', 'sorcery', 'manaflow band', 'transcendence', 'attack speed', 'adaptive', 'magic resist'),
(12, 'bard', '', '', '', 'domination', 'electrocute', 'cheap shot', 'zombie ward', 'relentless hunter', 'precision', 'presence of mind', 'legend: alacrity', 'attack speed', 'adaptive', 'armor'),
(13, 'blitzcrank', 'blitz', '', '', 'resolve', 'aftershock', 'demolish', 'bone plating', 'unflinching', 'inspiration', 'hextech flashtraption', 'biscuit delivery', 'cdr', 'adaptive', 'armor'),
(14, 'brand', '', '', '', 'domination', 'dark harvest', 'cheap shot', 'eyeball collection', 'ultimate hunter', 'sorcery', 'manaflow band', 'absolute focus', 'adaptive', 'adaptive', 'hp'),
(15, 'braum', '', '', '', 'resolve', 'guardian', 'font of life', 'bone plating', 'unflinching', 'inspiration', 'biscuit delivery', 'cosmic insight', 'attack speed', 'armor', 'magic resist'),
(16, 'caitlyn', 'cait', '', '', 'precision', 'fleet footwork', 'triumph', 'legend: bloodline', 'coup de grace', 'inspiration', 'magical footwear', 'biscuit delivery', 'attack speed', 'adaptive', 'armor'),
(17, 'camille', 'cam', '', '', 'precision', 'press the attack', 'triumph', 'legend: alacrity', 'coup de grace', 'resolve', 'bone plating', 'demolish', 'adaptive', 'adaptive', 'armor'),
(18, 'cassiopeia', 'cass', '', '', 'precision', 'conqueror', 'presence of mind', 'legend: tenacity', 'coup de grace', 'domination', 'taste of blood', 'ravenous hunter', 'cdr', 'adaptive', 'magic resist'),
(19, 'chogath', 'cho', 'cho\'gath', '', 'inspiration', 'glacial augment', 'magical footwear', 'biscuit delivery', 'approach velocity', 'domination', 'cheap shot', 'ingenious hunter', 'adaptive', 'adaptive', 'magic resist'),
(20, 'corki', '', '', '', 'precision', 'fleet footwork', 'presence of mind', 'legend: bloodline', 'coup de grace', 'inspiration', 'magical footwear', 'biscuit delivery', 'attack speed', 'adaptive', 'magic resist'),
(21, 'darius', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'last stand', 'resolve', 'second wind', 'demolish', 'attack speed', 'adaptive', 'armor'),
(22, 'diana', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'resolve', 'shield bash', 'second wind', 'adaptive', 'adaptive', 'hp'),
(23, 'drmundo', 'mundo', 'dr. mundo', 'Dr mundo', 'resolve', 'grasp of the undying', 'demolish', 'second wind', 'overgrowth', 'inspiration', 'magical footwear', 'approach velocity', 'cdr', 'magic resist', 'hp'),
(24, 'draven', '', '', '', 'precision', 'press the attack', 'presence of mind', 'legend: alacrity', 'coup de grace', 'sorcery', 'nimbus cloak', 'gathering storm', 'attack speed', 'adaptive', 'armor'),
(25, 'ekko', '', '', '', 'domination', 'dark harvest', 'sudden impact', 'eyeball collection', 'ravenous hunter', 'inspiration', 'magical footwear', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(26, 'elise', '', '', '', 'domination', 'electrocute', 'cheap shot', 'eyeball collection', 'relentless hunter', 'sorcery', 'nimbus cloak', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(27, 'evelynn', 'eve', '', '', 'domination', 'electrocute', 'sudden impact', 'eyeball collection', 'relentless hunter', 'sorcery', 'gathering storm', 'absolute focus', 'adaptive', 'adaptive', 'armor'),
(28, 'ezreal', 'ez', '', '', 'precision', 'conqueror', 'presence of mind', 'legend: bloodline', 'coup de grace', 'sorcery', 'transcendence', 'manaflow band', 'attack speed', 'adaptive', 'magic resist'),
(30, 'fiddlesticks', 'fiddle', '', '', 'domination', 'dark harvest', 'cheap shot', 'eyeball collection', 'ultimate hunter', 'sorcery', 'nimbus cloak', 'gathering storm', 'adaptive', 'adaptive', 'armor'),
(31, 'fiora', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'resolve', 'bone plating', 'demolish', 'attack speed', 'adaptive', 'armor'),
(32, 'fizz', '', '', '', 'domination', 'electrocute', 'sudden impact', 'eyeball collection', 'ravenous hunter', 'precision', 'triumph', 'coup de grace', 'adaptive', 'adaptive', 'armor'),
(33, 'galio', '', '', '', 'resolve', 'aftershock', 'shield bash', 'bone plating', 'overgrowth', 'sorcery', 'nimbus cloak', 'transcendence', 'adaptive', 'adaptive', 'armor'),
(34, 'gangplank', 'gp', 'gang', '', 'resolve', 'grasp of the undying', 'demolish', 'bone plating', 'revitalize', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'armor'),
(35, 'garen', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'sorcery', 'nimbus cloak', 'celerity', 'adaptive', 'adaptive', 'armor'),
(36, 'gnar', '', '', '', 'precision', 'fleet footwork', 'triumph', 'legend: alacrity', 'coup de grace', 'resolve', 'bone plating', 'overgrowth', 'attack speed', 'adaptive', 'armor'),
(37, 'gragas', 'grag', 'gra', '', 'domination', 'predator', 'sudden impact', 'zombie ward', 'ingenious hunter', 'inspiration', 'perfect timing', 'cosmic insight', 'attack speed', 'adaptive', 'armor'),
(38, 'graves', 'sigar', '', '', 'sorcery', 'phase rush', 'nimbus cloak', 'celerity', 'waterwalking', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'adaptive', 'hp'),
(39, 'hecarim', 'heca', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'sorcery', 'celerity', 'nimbus cloak', 'attack speed', 'adaptive', 'armor'),
(40, 'heimerdinger', 'heim', 'heimer', '', 'domination', 'electrocute', 'cheap shot', 'eyeball collection', 'ravenous hunter', 'sorcery', 'nullifying orb', 'scorch', 'adaptive', 'adaptive', 'armor'),
(41, 'Illaoi', '', '', '', 'precision', 'conqueror', 'presence of mind', 'legend: tenacity', 'last stand', 'domination', 'taste of blood', 'ravenous hunter', 'adaptive', 'adaptive', 'armor'),
(42, 'irelia', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'inspiration', 'biscuit delivery', 'time warp tonic', 'attack speed', 'adaptive', 'armor'),
(43, 'ivern', '', '', '', 'resolve', 'guardian', 'font of life', 'conditioning', 'revitalize', 'inspiration', 'future\'s market', 'cosmic insight', 'cdr', 'magic resist', 'magic resist'),
(44, 'janna', '', '', '', 'sorcery', 'arcane comet', 'manaflow band', 'celerity', 'scorch', 'domination', 'relentless hunter', 'taste of blood', 'adaptive', 'adaptive', 'armor'),
(45, 'jarvaniv', 'jarvan', 'jarvan iv', 'iv', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'inspiration', 'perfect timing', 'cosmic insight', 'attack speed', 'adaptive', 'armor'),
(46, 'jax', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'inspiration', 'time warp tonic', 'magical footwear', 'attack speed', 'adaptive', 'armor'),
(47, 'jayce', '', '', '', 'sorcery', 'phase rush', 'manaflow band', 'absolute focus', 'gathering storm', 'inspiration', 'magical footwear', 'biscuit delivery', 'adaptive', 'adaptive', 'armor'),
(48, 'jhin', 'jihn', '', '', 'precision', 'fleet footwork', 'triumph', 'legend: bloodline', 'coup de grace', 'sorcer', 'nimbus cloak', 'celerity', 'adaptive', 'adaptive', 'armor'),
(49, 'jinx', '', '', '', 'precision', 'lethal tempo', 'triumph', 'legend: bloodline', 'coup de grace', 'sorcery', 'absolute focus', 'gathering storm', 'attack speed', 'adaptive', 'armor'),
(50, 'kaisa', 'kai\'sa', '', '', 'precision', 'press the attack', 'overheal', 'legend: bloodline', 'coup de grace', 'sorcery', 'nimbus cloak', 'gathering storm', 'attack speed', 'adaptive', 'armor'),
(51, 'kalista', 'kali', '', '', 'domination', 'hail of blades', 'taste of blood', 'eyeball collection', 'ravenous hunter', 'precision', 'legend: alacrity', 'overheal', 'attack speed', 'adaptive', 'armor'),
(52, 'karma', 'karm', '', '', 'sorcery', 'summon aery', 'manaflow band', 'celerity', 'scorch', 'inspiration', 'biscuit delivery', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(53, 'karthus', 'kart', '', '', 'domination', 'dark harvest', 'cheap shot', 'eyeball collection', 'ravenous hunter', 'precision', 'presence of mind', 'last stand', 'adaptive', 'adaptive', 'armor'),
(54, 'kassadin', '', '', '', 'domination', 'electrocute', 'taste of blood', 'eyeball collection', 'ravenous hunter', 'precision', 'presence of mind', 'coup de grace', 'adaptive', 'adaptive', 'magic resist'),
(55, 'katarina', 'kata', '', '', 'domination', 'electrocute', 'sudden impact', 'eyeball collection', 'ravenous hunter', 'precision', 'triumph', 'coup de grace', 'adaptive', 'adaptive', 'magic resist'),
(56, 'kayle', '', '', '', 'precision', 'fleet footwork', 'overheal', 'legend: alacrity', 'coup de grace', 'inspiration', 'biscuit delivery', 'time warp tonic', 'attack speed', 'adaptive', 'armor'),
(57, 'kayn', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'domination', 'sudden impact', 'ravenous hunter', 'attack speed', 'adaptive', 'armor'),
(58, 'kennen', 'ken', '', '', 'precision', 'conqueror', 'presence of mind', 'legend: alacrity', 'coup de grace', 'domination', 'taste of blood', 'ravenous hunter', 'attack speed', 'adaptive', 'armor'),
(59, 'khazix', 'kha', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'coup de grace', 'domination', 'sudden impact', 'ravenous hunter', 'adaptive', 'adaptive', 'armor'),
(60, 'kindred', 'kind', '', '', 'precision', 'press the attack', 'triumph', 'legend: alacrity', 'coup de grace', 'domination', 'sudden impact', 'relentless hunter', 'attack speed', 'adaptive', 'armor'),
(61, 'kled', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'resolve', 'demolish', 'bone plating', 'attack speed', 'adaptive', 'armor'),
(62, 'kogmaw', 'kog', '', '', 'precision', 'lethal tempo', 'triumph', 'legend: alacrity', 'coup de grace', 'domination', 'taste of blood', 'ravenous hunter', 'attack speed', 'adaptive', 'armor'),
(63, 'leblanc', 'le blanc', 'blanc', '', 'domination', 'electrocute', 'sudden impact', 'eyeball collection', 'ravenous hunter', 'sorcery', 'manaflow band', 'transcendence', 'adaptive', 'adaptive', 'armor'),
(64, 'leesin', 'lee sin', 'lee', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'coup de grace', 'sorcery', 'nimbus cloak', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(66, 'leona', 'leo', '', '', 'resolve', 'aftershock', 'font of life', 'bone plating', 'overgrowth', 'inspiration', 'cosmic insight', 'biscuit delivery', 'cdr', 'armor', 'armor'),
(67, 'lissandra', 'liss', '', '', 'resolve', 'aftershock', 'demolish', 'bone plating', 'overgrowth', 'sorcery', 'manaflow band', 'transcendence', 'adaptive', 'adaptive', 'magic resist'),
(68, 'lucian', '', '', '', 'precision', 'press the attack', 'triumph', 'legend: alacrity', 'coup de grace', 'inspiration', 'biscuit delivery', 'magical footwear', 'attack speed', 'adaptive', 'armor'),
(69, 'lulu', '', '', '', 'sorcery', 'summon aery', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'magical footwear', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(70, 'lux', '', '', '', 'sorcery', 'arcane comet', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'magical footwear', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(71, 'malphite', 'malp', 'malph', '', 'sorcery', 'arcane comet', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'armor'),
(72, 'malzahar', 'malz', '', '', 'sorcery', 'summon aery', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'magical footwear', 'cosmic insight', 'adaptive', 'adaptive', 'magic resist'),
(73, 'maokai', 'mao', '', '', 'resolve', 'aftershock', 'demolish', 'conditioning', 'overgrowth', 'sorcery', 'manaflow band', 'transcendence', 'attack speed', 'armor', 'hp'),
(74, 'masteryi', 'master yi', 'yi', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'coup de grace', 'domination', 'ravenous hunter', 'eyeball collection', 'attack speed', 'adaptive', 'armor'),
(75, 'missfortune', 'mf', 'miss fortune', '', 'precision', 'press the attack', 'overheal', 'legend: bloodline', 'coup de grace', 'sorcery', 'absolute focus', 'gathering storm', 'attack speed', 'adaptive', 'armor'),
(76, 'mordekaiser', 'morde', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'domination', 'taste of blood', 'ravenous hunter', 'attack speed', 'adaptive', 'armor'),
(77, 'morgana', 'morg', '', '', 'sorcery', 'summon aery', 'manaflow band', 'celerity', 'scorch', 'inspiration', 'perfect timing', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(78, 'nami', '', '', '', 'sorcery', 'summon aery', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'biscuit delivery', 'cosmic insight', 'adaptive', 'adaptive', 'hp'),
(79, 'nasus', 'susan', '', '', 'inspiration', 'unsealed spellbook', 'magical footwear', 'biscuit delivery', 'cosmic insight', 'sorcery', 'nimbus cloak', 'transcendence', 'cdr', 'magic resist', 'magic resist'),
(80, 'nautilus', 'naut', '', '', 'resolve', 'aftershock', 'shield bash', 'bone plating', 'overgrowth', 'inspiration', 'biscuit delivery', 'cosmic insight', 'cdr', 'armor', 'armor'),
(81, 'neeko', '', '', '', 'inspiration', 'glacial augment', 'magical footwear', 'biscuit delivery', 'cosmic insight', 'domination', 'taste of blood', 'ingenious hunter', 'adaptive', 'adaptive', 'magic resist'),
(82, 'nidalee', 'nida', '', '', 'domination', 'dark harvest', 'sudden impact', 'eyeball collection', 'relentless hunter', 'sorcery', 'nimbus cloak', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(83, 'nocturne', 'noc', '', '', 'precision', 'lethal tempo', 'triumph', 'legend: alacrity', 'coup de grace', 'domination', 'cheap shot', 'ultimate hunter', 'attack speed', 'adaptive', 'armor'),
(84, 'nunu', '', '', '', 'resolve', 'aftershock', 'font of life', 'conditioning', 'revitalize', 'sorcery', 'celerity', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(85, 'olaf', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'last stand', 'sorcery', 'nimbus cloak', 'waterwalking', 'adaptive', 'adaptive', 'armor'),
(86, 'orianna', 'ori', '', '', 'inspiration', 'unsealed spellbook', 'magical footwear', 'biscuit delivery', 'time warp tonic', 'sorcery', 'manaflow band', 'scorch', 'adaptive', 'adaptive', 'magic resist'),
(87, 'ornn', 'orn', '', '', 'resolve', 'grasp of the undying', 'demolish', 'bone plating', 'overgrowth', 'inspiration', 'biscuit delivery', 'cosmic insight', 'cdr', 'armor', 'hp'),
(88, 'pantheon', 'panth', 'pant', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'coup de grace', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'magic resist'),
(89, 'poppy', '', '', '', 'resolve', 'grasp of the undying', 'shield bash', 'bone plating', 'revitalize', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'armor'),
(90, 'pyke', '', '', '', 'resolve', 'aftershock', 'demolish', 'bone plating', 'unflinching', 'domination', 'zombie ward', 'ultimate hunter', 'cdr', 'adaptive', 'armor'),
(91, 'qiyana', 'qi', '', '', 'domination', 'electrocute', 'sudden impact', 'eyeball collection', 'ravenous hunter', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'armor'),
(92, 'quinn', 'quin', 'bird', '', 'precision', 'fleet footwork', 'triumph', 'legend: bloodline', 'coup de grace', 'sorcery', 'celerity', 'nimbus cloak', 'attack speed', 'adaptive', 'armor'),
(93, 'rakan', '', '', '', 'resolve', 'guardian', 'demolish', 'bone plating', 'revitalize', 'sorcery', 'nimbus cloak', 'celerity', 'adaptive', 'adaptive', 'armor'),
(94, 'rammus', 'ram', '', '', 'resolve', 'aftershock', 'demolish', 'conditioning', 'unflinching', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'armor', 'armor'),
(95, 'reksai', 'rek\'sai', '', '', 'domination', 'hail of blades', 'cheap shot', 'eyeball collection', 'relentless hunter', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'adaptive', 'armor'),
(96, 'renekton', 'ren', 'rene', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'last stand', 'resolve', 'demolish', 'bone plating', 'adaptive', 'adaptive', 'armor'),
(97, 'rengar', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: bloodline', 'coup de grace', 'domination', 'sudden impact', 'relentless hunter', 'attack speed', 'adaptive', 'armor'),
(98, 'riven', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'inspiration', 'magical footwear', 'cosmic insight', 'cdr', 'adaptive', 'armor'),
(99, 'rumble', '', '', '', 'sorcery', 'arcane comet', 'nimbus cloak', 'celerity', 'scorch', 'domination', 'taste of blood', 'ravenous hunter', 'adaptive', 'adaptive', 'magic resist'),
(100, 'ryze', '', '', '', 'sorcery', 'phase rush', 'manaflow band', 'transcendence', 'gathering storm', 'domination', 'taste of blood', 'ravenous hunter', 'adaptive', 'adaptive', 'magic resist'),
(101, 'sejuani', 'sej', 'seju', '', 'resolve', 'aftershock', 'font of life', 'conditioning', 'overgrowth', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'armor', 'armor'),
(102, 'senna', '', '', '', 'inspiration', 'glacial augment', 'perfect timing', 'biscuit delivery', 'approach velocity', 'precision', 'presence of mind', 'coup de grace', 'adaptive', 'adaptive', 'armor'),
(103, 'sett', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'resolve', 'second wind', 'overgrowth', 'attack speed', 'adaptive', 'armor'),
(104, 'shaco', 'shac', '', '', 'domination', 'hail of blades', 'sudden impact', 'eyeball collection', 'relentless hunter', 'inspiration', 'future\'s market', 'approach velocity', 'attack speed', 'adaptive', 'armor'),
(105, 'shen', '', '', '', 'resolve', 'grasp of the undying', 'shield bash', 'bone plating', 'overgrowth', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'adaptive', 'armor'),
(106, 'shyvana', 'shyv', '', '', 'domination', 'dark harvest', 'cheap shot', 'eyeball collection', 'ravenous hunter', 'inspiration', 'magical footwear', 'cosmic insight', 'attack speed', 'adaptive', 'armor'),
(107, 'singed', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'domination', 'taste of blood', 'ravenous hunter', 'adaptive', 'adaptive', 'magic resist'),
(108, 'sion', '', '', '', 'resolve', 'grasp of the undying', 'shield bash', 'conditioning', 'overgrowth', 'domination', 'cheap shot', 'ingenious hunter', 'attack speed', 'adaptive', 'armor'),
(109, 'sivir', '', '', '', 'precision', 'lethal tempo', 'presence of mind', 'legend: bloodline', 'coup de grace', 'sorcery', 'nimbus cloak', 'gathering storm', 'attack speed', 'adaptive', 'armor'),
(110, 'skarner', '', '', '', 'domination', 'predator', 'cheap shot', 'zombie ward', 'ingenious hunter', 'sorcery', 'nimbus cloak', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(111, 'sona', '', '', '', 'sorcery', 'summon aery', 'manaflow band', 'transcendence', 'scorch', 'precision', 'presence of mind', 'cut down', 'adaptive', 'adaptive', 'armor'),
(112, 'soraka', 'banana', '', '', 'sorcery', 'summon aery', 'manaflow band', 'celerity', 'scorch', 'resolve', 'bone plating', 'revitalize', 'adaptive', 'adaptive', 'armor'),
(113, 'swain', '', '', '', 'domination', 'electrocute', 'cheap shot', 'eyeball collection', 'ultimate hunter', 'inspiration', 'perfect timing', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(114, 'sylas', '', '', '', 'precision', 'conqueror', 'presence of mind', 'legend: tenacity', 'last stand', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'armor'),
(115, 'syndra', '', '', '', 'domination', 'electrocute', 'taste of blood', 'eyeball collection', 'ravenous hunter', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'magic resist'),
(116, 'tahmkench', 'tahm', 'kench', 'tahm kench', 'resolve', 'guardian', 'shield bash', 'bone plating', 'overgrowth', 'inspiration', 'magical footwear', 'approach velocity', 'attack speed', 'armor', 'hp'),
(117, 'taliyah', 'tali', 'yah', 'tali yah', 'domination', 'dark harvest', 'cheap shot', 'eyeball collection', 'ravenous hunter', 'sorcery', 'nimbus cloak', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(118, 'talon', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'coup de grace', 'domination', 'taste of blood', 'ravenous hunter', 'adaptive', 'adaptive', 'magic resist'),
(119, 'taric', '', '', '', 'resolve', 'guardian', 'font of life', 'bone plating', 'revitalize', 'precision', 'presence of mind', 'legend: tenacity', 'attack speed', 'armor', 'armor'),
(120, 'teemo', 'devil', '', '', 'resolve', 'grasp of the undying', 'demolish', 'bone plating', 'overgrowth', 'domination', 'cheap shot', 'ravenous hunter', 'attack speed', 'adaptive', 'armor'),
(121, 'thresh', 'trash', '', '', 'resolve', 'aftershock', 'demolish', 'bone plating', 'overgrowth', 'inspiration', 'perfect timing', 'biscuit delivery', 'adaptive', 'armor', 'armor'),
(122, 'tristana', 'trist', '', '', 'precision', 'press the attack', 'triumph', 'legend: bloodline', 'coup de grace', 'sorcery', 'gathering storm', 'nimbus cloak', 'attack speed', 'adaptive', 'armor'),
(123, 'trundle', 'troll', 'tru', '', 'precision', 'press the attack', 'triumph', 'legend: tenacity', 'last stand', 'sorcery', 'nimbus cloak', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(124, 'tryndamere', 'trynda', '', '', 'precision', 'lethal tempo', 'triumph', 'legend: tenacity', 'last stand', 'sorcery', 'nimbus cloak', 'transcendence', 'attack speed', 'adaptive', 'armor'),
(125, 'twistedfate', 'tf', 'twisted', 'twisted fate', 'inspiration', 'unsealed spellbook', 'perfect timing', 'minion dematerializer', 'time warp tonic', 'resolve', 'demolish', 'bone plating', 'adaptive', 'adaptive', 'magic resist'),
(126, 'twitch', 'rat', '', '', 'precision', 'press the attack', 'triumph', 'legend: alacrity', 'coup de grace', 'inspiration', 'magical footwear', 'biscuit delivery', 'attack speed', 'adaptive', 'armor'),
(127, 'udyr', '', '', '', 'precision', 'press the attack', 'triumph', 'legend: alacrity', 'coup de grace', 'sorcery', 'celerity', 'waterwalking', 'attack speed', 'adaptive', 'armor'),
(128, 'urgot', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'resolve', 'conditioning', 'overgrowth', 'adaptive', 'adaptive', 'armor'),
(129, 'varus', '', '', '', 'sorcery', 'arcane comet', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'biscuit delivery', 'time warp tonic', 'adaptive', 'adaptive', 'armor'),
(130, 'vayne', '', '', '', 'precision', 'press the attack', 'triumph', 'legend: alacrity', 'coup de grace', 'inspiration', 'biscuit delivery', 'magical footwear', 'attack speed', 'adaptive', 'armor'),
(131, 'veigar', 'veig', '', '', 'inspiration', 'glacial augment', 'magical footwear', 'biscuit delivery', 'cosmic insight', 'domination', 'taste of blood', 'ingenious hunter', 'adaptive', 'adaptive', 'magic resist'),
(132, 'velkoz', 'vel', '', '', 'sorcery', 'arcane comet', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'biscuit delivery', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(133, 'vi', '4', '', '', 'domination', 'hail of blades', 'sudden impact', 'eyeball collection', 'relentless hunter', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'adaptive', 'armor'),
(134, 'viktor', 'victor', '', '', 'domination', 'electrocute', 'taste of blood', 'eyeball collection', 'ravenous hunter', 'sorcery', 'manaflow band', 'transcendence', 'adaptive', 'adaptive', 'magic resist'),
(135, 'vladimir', 'vlad', '', '', 'sorcery', 'phase rush', 'nimbus cloak', 'transcendence', 'gathering storm', 'inspiration', 'cosmic insight', 'magical footwear', 'cdr', 'adaptive', 'armor'),
(136, 'volibear', 'voli', '', '', 'resolve', 'aftershock', 'font of life', 'conditioning', 'revitalize', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'adaptive', 'armor'),
(137, 'warwick', '', '', '', 'precision', 'press the attack', 'triumph', 'legend: alacrity', 'coup de grace', 'sorcery', 'waterwalking', 'celerity', 'attack speed', 'adaptive', 'armor'),
(138, 'wukong', 'wuk', 'monkey king', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'coup de grace', 'domination', 'relentless hunter', 'sudden impact', 'attack speed', 'adaptive', 'armor'),
(139, 'xayah', 'xaya', '', '', 'precision', 'lethal tempo', 'presence of mind', 'legend: bloodline', 'coup de grace', 'sorcery', 'nimbus cloak', 'gathering storm', 'attack speed', 'adaptive', 'armor'),
(140, 'xerath', 'xera', '', '', 'sorcery', 'arcane comet', 'manaflow band', 'transcendence', 'scorch', 'inspiration', 'magical footwear', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(141, 'xinzhao', 'xin', 'xin xhao', '', 'domination', 'hail of blades', 'sudden impact', 'zombie ward', 'relentless hunter', 'precision', 'triumph', 'legend: alacrity', 'attack speed', 'adaptive', 'armor'),
(142, 'yasuo', 'yas', '', '', 'precision', 'conqueror', 'triumph', 'legend: alacrity', 'last stand', 'domination', 'taste of blood', 'ravenous hunter', 'attack speed', 'adaptive', 'magic resist'),
(143, 'yorick', '', '', '', 'precision', 'conqueror', 'triumph', 'legend: tenacity', 'last stand', 'resolve', 'demolish', 'bone plating', 'adaptive', 'adaptive', 'armor'),
(144, 'yuumi', 'cat', 'yumi', 'yum', 'sorcery', 'summon aery', 'manaflow band', 'transcendence', 'scorch', 'precision', 'presence of mind', 'cut down', 'cdr', 'adaptive', 'magic resist'),
(145, 'zac', '', '', '', 'resolve', 'aftershock', 'font of life', 'conditioning', 'revitalize', 'inspiration', 'cosmic insight', 'magical footwear', 'cdr', 'armor', 'hp'),
(146, 'zed', '', '', '', 'domination', 'electrocute', 'taste of blood', 'eyeball collection', 'ultimate hunter', 'inspiration', 'magical footwear', 'cosmic insight', 'adaptive', 'adaptive', 'armor'),
(147, 'ziggs', 'zig', '', '', 'sorcery', 'arcane comet', 'manaflow band', 'absolute focus', 'gathering storm', 'inspiration', 'magical footwear', 'cosmic insight', 'cdr', 'adaptive', 'hp'),
(148, 'zilean', 'hippie', '', '', 'sorcery', 'summon aery', 'manaflow band', 'celerity', 'waterwalking', 'domination', 'cheap shot', 'relentless hunter', 'adaptive', 'adaptive', 'armor'),
(149, 'zoe', '', '', '', 'domination', 'electrocute', 'taste of blood', 'eyeball collection', 'ravenous hunter', 'sorcery', 'nimbus cloak', 'transcendence', 'adaptive', 'adaptive', 'magic resist'),
(150, 'zyra', '', '', '', 'sorcery', 'arcane comet', 'manaflow band', 'absolute focus', 'scorch', 'domination', 'taste of blood', 'relentless hunter', 'adaptive', 'adaptive', 'armor');

-- --------------------------------------------------------

--
-- Tabellstruktur `simple_login`
--

CREATE TABLE `simple_login` (
  `id` int(9) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `simple_login`
--

INSERT INTO `simple_login` (`id`, `username`, `email`, `password`, `date`) VALUES
(6, 'admin', 'ludvig_olausson@hotmail.com', '$2y$10$hQ9X9ucykK4VBHbAP8DIUOic/l3G3md.KkR8QbU4mjyaAwo20RtcC', '2020-05-15'),
(11, 'wfwfeqfwfq', 'asdsad@sds', '$2y$10$F/hAIhRzMK6lnkftLKsQxOaKd9e4cgP4PgfAci9.ic14ZDioxKg1S', '2020-05-18'),
(12, 'cmeducations', 'cmeducations@cmeducations.se', '$2y$10$79I4JV0IV0NqBUKVDuO9LOl6HTtmlXs1.8/ZfgY2nEpg9Qq0HTW82', '2020-05-18');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `simple_login`
--
ALTER TABLE `simple_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT för tabell `league`
--
ALTER TABLE `league`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT för tabell `simple_login`
--
ALTER TABLE `simple_login`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
