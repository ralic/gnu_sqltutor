/* 
   This file is part of GNU Sqltutor
   Copyright (C) 2008  Ales Cepek <cepek@gnu.org>
 
   GNU Sqltutor is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   GNU Sqltutor is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with GNU Sqltutor.  If not, see <http://www.gnu.org/licenses/>.
 */


SET search_path TO sqltutor;

DROP TABLE premyslovci CASCADE;

CREATE TABLE premyslovci (
    id integer PRIMARY KEY,
    jmeno character varying(50) NOT NULL,
    narozeni integer,
    umrti integer,
    otec integer,
    matka integer,
    rod character varying(20)
);


INSERT INTO premyslovci VALUES (970, 'Přemysl', NULL, NULL, NULL, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (969, 'Nezamysl', NULL, NULL, 970, 966, 'Přemyslovci');
INSERT INTO premyslovci VALUES (967, 'Mnata', NULL, NULL, 969, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (975, 'Vojen', NULL, NULL, 967, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (973, 'Vlastislav', NULL, NULL, 975, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (974, 'Vnislav', NULL, NULL, 975, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (963, 'Křesomysl', NULL, NULL, 974, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (965, 'Leva', NULL, NULL, 973, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (972, 'Vladislav', NULL, NULL, 973, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (968, 'Neklan', NULL, NULL, 963, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (515, 'Hostivít', NULL, NULL, 968, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (961, 'Děpolt', NULL, NULL, 968, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (163, 'Bořivoj', NULL, 894, 515, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1041, 'Spytihněv', 875, 905, 163, 784, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1111, 'Vratislav I.', 888, 921, 163, 784, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1075, 'Václav', 911, 935, 1111, 1110, 'Přemyslovci');
INSERT INTO premyslovci VALUES (156, 'Boleslav I.', NULL, 973, 1111, 1110, 'Přemyslovci');
INSERT INTO premyslovci VALUES (158, 'Boleslav II.', NULL, 999, 156, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (245, 'Doubravka', NULL, NULL, 156, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (160, 'Boleslav III.', NULL, 1035, 158, 157, 'Přemyslovci');
INSERT INTO premyslovci VALUES (910, 'Oldřich', NULL, 1034, 158, 157, 'Přemyslovci');
INSERT INTO premyslovci VALUES (544, 'Jaromír', NULL, NULL, 158, 157, 'Přemyslovci');
INSERT INTO premyslovci VALUES (166, 'Břetislav I.', 1002, 1055, 910, 164, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1109, 'Vratislav II.', 1032, 1092, 166, 165, 'Přemyslovci');
INSERT INTO premyslovci VALUES (688, 'Konrád I. Brněnský', NULL, NULL, 166, 165, 'Přemyslovci');
INSERT INTO premyslovci VALUES (913, 'Ota I. Olomoucký', NULL, NULL, 166, 165, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1040, 'Spytihněv II.', NULL, NULL, 166, 165, 'Přemyslovci');
INSERT INTO premyslovci VALUES (162, 'Bořivoj II.', 1064, 1124, 1109, 1051, 'Přemyslovci');
INSERT INTO premyslovci VALUES (167, 'Břetislav II.', NULL, 1100, 1109, 16, 'Přemyslovci');
INSERT INTO premyslovci VALUES (637, 'Judita Přemyslovna', NULL, 1086, 1109, 16, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1092, 'Vladislav I.', NULL, 1125, 1109, 1051, 'Přemyslovci');
INSERT INTO premyslovci VALUES (723, 'Lítold Znojemský', NULL, NULL, 688, 1140, 'Přemyslovci');
INSERT INTO premyslovci VALUES (908, 'Oldřich Brněnský', NULL, NULL, 688, 1140, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1033, 'Soběslav I.', NULL, NULL, 1109, 1051, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1052, 'Svatopluk', NULL, NULL, 913, 329, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1034, 'Soběslav II.', 1128, 1180, 1033, 18, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1095, 'Vladislav II.', 1110, 1173, 1092, 995, 'Přemyslovci');
INSERT INTO premyslovci VALUES (572, 'Jindřich', NULL, NULL, 1092, 995, 'Přemyslovci');
INSERT INTO premyslovci VALUES (690, 'Konrád II. Znojemský', NULL, NULL, 723, 1063, 'Přemyslovci');
INSERT INTO premyslovci VALUES (838, 'Marie Přemyslovna', NULL, NULL, 1033, 18, 'Přemyslovci');
INSERT INTO premyslovci VALUES (909, 'Oldřich', NULL, NULL, 1033, 18, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1076, 'Václav II.', NULL, NULL, 1033, 18, 'Přemyslovci');
INSERT INTO premyslovci VALUES (957, 'Přemysl Otakar I.', 1155, 1230, 1095, 639, 'Přemyslovci');
INSERT INTO premyslovci VALUES (994, 'Richza Přemyslovna', NULL, 1182, 1095, 639, 'Přemyslovci');
INSERT INTO premyslovci VALUES (131, 'Bedřich', NULL, NULL, 1095, 437, 'Přemyslovci');
INSERT INTO premyslovci VALUES (570, 'Jindřich Břetislav', NULL, NULL, 572, 571, 'Přemyslovci');
INSERT INTO premyslovci VALUES (582, 'Jindřich Vladislav', NULL, NULL, 1095, 639, 'Přemyslovci');
INSERT INTO premyslovci VALUES (496, 'Helena Přemyslovna', NULL, NULL, 690, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (692, 'Konrád III. Ota', NULL, NULL, 690, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (109, 'Anna Přemyslovna', 1204, 1265, 957, 697, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1071, 'Václav I.', 1205, 1253, 957, 697, 'Přemyslovci');
INSERT INTO premyslovci VALUES (783, 'Ludmila', 1170, 1240, 131, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (958, 'Přemysl Otakar II.', 1233, 1278, 1071, 701, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1101, 'Vladislav Přemyslovec', NULL, 1247, 1071, 701, 'Přemyslovci');
INSERT INTO premyslovci VALUES (97, 'Anežka Česká', 1269, 1297, 958, 699, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1073, 'Václav II.', 1271, 1305, 958, 699, 'Přemyslovci');
INSERT INTO premyslovci VALUES (879, 'Mikuláš Opavský', NULL, NULL, 958, NULL, 'Přemyslovci');
INSERT INTO premyslovci VALUES (1074, 'Václav III.', 1289, 1306, 1073, 446, 'Přemyslovci');
INSERT INTO premyslovci VALUES (86, 'Anežka', 1305, NULL, 1073, 309, 'Přemyslovci');
INSERT INTO premyslovci VALUES (106, 'Anna', NULL, NULL, 1073, 446, 'Přemyslovci');
INSERT INTO premyslovci VALUES (307, 'Eliška Přemyslovna', NULL, NULL, 1073, 446, 'Přemyslovci');
INSERT INTO premyslovci VALUES (101, 'Anne Luxemburg', 1366, 1394, 652, 111, 'Lucemburkové');
INSERT INTO premyslovci VALUES (104, 'Anne Luxemburg', 1323, 1338, 540, 307, 'Lucemburkové');
INSERT INTO premyslovci VALUES (297, 'Elisabeth Luxemburg', 1358, 1373, 652, 118, 'Lucemburkové');
INSERT INTO premyslovci VALUES (583, 'Jan Jindřich Lucemburský', 1322, 1375, 540, 307, 'Lucemburkové');
INSERT INTO premyslovci VALUES (628, 'John Luxemburg', 1370, 1396, 652, 111, 'Lucemburkové');
INSERT INTO premyslovci VALUES (640, 'Jutta Luxemburg', 1315, 1349, 540, 307, 'Lucemburkové');
INSERT INTO premyslovci VALUES (652, 'Karel IV. Lucemburský', 1316, 1378, 540, 307, 'Lucemburkové');
INSERT INTO premyslovci VALUES (834, 'Margarete Luxemburg', 1313, 1341, 540, 307, 'Lucemburkové');
INSERT INTO premyslovci VALUES (1069, 'Václav IV. Lucemburský', 1361, 1419, 652, 118, 'Lucemburkové');
INSERT INTO premyslovci VALUES (1072, 'Václav Luxemburg', 1337, 1383, 540, 307, 'Lucemburkové');
INSERT INTO premyslovci VALUES (1158, 'Zikmund Lucemburský', 1368, 1437, 652, 111, 'Lucemburkové');
INSERT INTO premyslovci VALUES (677, 'Kateřina Luxemburg', 1342, NULL, 652, 149, 'Lucemburkové');
INSERT INTO premyslovci VALUES (88, 'Alžběta Lucemburská', NULL, NULL, 1158, 144, 'Lucemburkové');
INSERT INTO premyslovci VALUES (298, 'Elisabeth Luxemburg', 1390, 1451, 628, NULL, 'Lucemburkové');
INSERT INTO premyslovci VALUES (540, 'Jan of Luxemburg', 1296, 1346, 565, NULL, 'Lucemburkové');
INSERT INTO premyslovci VALUES (565, 'Jindřich VII. of Luxemburg', 1274, 1313, 474, NULL, 'Lucemburkové');
INSERT INTO premyslovci VALUES (816, 'Mary Luxemburg', NULL, NULL, 565, NULL, 'Lucemburkové');
INSERT INTO premyslovci VALUES (474, 'Henry III. Luxemburg', 1250, 1288, NULL, NULL, 'Lucemburkové');
INSERT INTO premyslovci VALUES (964, 'Krok', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (96, 'Anežka Česká', 1211, 1282, 957, 697, 'Přemyslovci');
INSERT INTO premyslovci VALUES (962, 'Kazi', NULL, NULL, 964, NULL, NULL);
INSERT INTO premyslovci VALUES (971, 'Teta', NULL, NULL, 964, NULL, NULL);
INSERT INTO premyslovci VALUES (966, 'Libuše', NULL, NULL, 964, NULL, NULL);
INSERT INTO premyslovci VALUES (329, 'Eufemie Arpad', NULL, 1111, 123, 1019, NULL);
INSERT INTO premyslovci VALUES (309, 'Eliška Rejčka', NULL, NULL, 929, 991, NULL);
INSERT INTO premyslovci VALUES (16, 'Adelaide Arpad', 1040, 1062, 92, NULL, NULL);
INSERT INTO premyslovci VALUES (18, 'Adelaide Arpad', 1106, 1140, 69, NULL, NULL);
INSERT INTO premyslovci VALUES (437, 'Gertrud Babenberg', 1120, 1150, 713, NULL, NULL);
INSERT INTO premyslovci VALUES (1051, 'Svatava Piast', 1048, 1126, 679, NULL, NULL);
INSERT INTO premyslovci VALUES (784, 'Ludmila ze Pšova', NULL, 921, 1032, NULL, NULL);
INSERT INTO premyslovci VALUES (1063, 'Uda Babenberg', NULL, 1115, 710, NULL, NULL);
INSERT INTO premyslovci VALUES (149, 'Blanka z Valois', NULL, NULL, 211, NULL, NULL);
INSERT INTO premyslovci VALUES (111, 'Alžběta Pomořanská', 1347, 1393, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (144, 'Barbora Cellská', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (1110, 'Drahomíra', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (118, 'Anna Svídnická', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (157, 'Emma', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (164, 'Božena', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (165, 'Jitka', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (571, 'Markéta', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (639, 'Judita Durynská', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (697, 'Konstancie Uherská', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (699, 'Kunhuta', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (701, 'Kunhuta Štaufská', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (995, 'Richenza z Bergu', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (1140, 'Wilpirk', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (69, 'Álmos Arpad', 1068, 1127, 430, NULL, NULL);
INSERT INTO premyslovci VALUES (92, 'András I. Arpad', 1014, 1060, 1070, NULL, NULL);
INSERT INTO premyslovci VALUES (123, 'Béla I. Arpad', 1016, 1063, 1070, NULL, NULL);
INSERT INTO premyslovci VALUES (679, 'Kazimierz I. Karol Piast', 1016, 1058, 873, NULL, NULL);
INSERT INTO premyslovci VALUES (713, 'Leopold III. Babenberg', 1073, 1136, 710, NULL, NULL);
INSERT INTO premyslovci VALUES (929, 'Přemysl II. Velkopolský', 1257, 1296, 960, NULL, NULL);
INSERT INTO premyslovci VALUES (1019, 'Ryksa Piast', 1015, 1052, 873, NULL, NULL);
INSERT INTO premyslovci VALUES (211, 'Charles Capet', NULL, 1325, 366, NULL, NULL);
INSERT INTO premyslovci VALUES (710, 'Leopold II. Babenberg', 1050, 1102, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (1032, 'Slavibor', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (428, 'Gertruda Anna z Hehenbergu', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (991, 'Richenza', NULL, NULL, NULL, NULL, NULL);
INSERT INTO premyslovci VALUES (151, 'Boleslav I. Chrabrý', 967, 1025, 871, 245, NULL);
INSERT INTO premyslovci VALUES (153, 'Boleslav III. Piast', 1085, 1138, 1094, 637, NULL);
INSERT INTO premyslovci VALUES (159, 'Boleslav II. Piast', 1224, 1278, 469, 109, NULL);
INSERT INTO premyslovci VALUES (430, 'Géza I. Arpad', 1044, 1077, 123, 1019, NULL);
INSERT INTO premyslovci VALUES (476, 'Henryk III. Piast', 1230, 1266, 469, 109, NULL);
INSERT INTO premyslovci VALUES (597, 'Johann I. Wittelsbach', 1329, 1340, 479, 834, NULL);
INSERT INTO premyslovci VALUES (657, 'Karel V. Valois', 1337, 1380, 538, 640, NULL);
INSERT INTO premyslovci VALUES (689, 'Konrad I. Piast', 1188, 1247, 649, 496, NULL);
INSERT INTO premyslovci VALUES (721, 'Leszek I. Piast', 1186, 1227, 649, 496, NULL);
INSERT INTO premyslovci VALUES (918, 'Otto II. Wittelsbach', 1206, 1253, 758, 783, NULL);
INSERT INTO premyslovci VALUES (951, 'Philip Valois', 1342, 1404, 538, 640, NULL);
INSERT INTO premyslovci VALUES (959, 'Ladislav Pohrobek', 1440, 1457, 59, 88, NULL);
INSERT INTO premyslovci VALUES (1103, 'Vladivoj', NULL, NULL, 871, 245, NULL);
INSERT INTO premyslovci VALUES (1150, 'Jan ze Svojanova', NULL, NULL, 1151, 699, NULL);
INSERT INTO premyslovci VALUES (30, 'Agnes Babenberg', 1108, 1160, 713, NULL, NULL);
INSERT INTO premyslovci VALUES (124, 'Béla II. Arpad', 1109, 1141, 69, NULL, NULL);
INSERT INTO premyslovci VALUES (152, 'Boleslav II. Piast', 1042, 1081, 679, NULL, NULL);
INSERT INTO premyslovci VALUES (369, 'Filip VI. Valois', 1293, 1350, 211, NULL, NULL);
INSERT INTO premyslovci VALUES (468, 'Heinrich II. Babenberg', 1112, 1177, 713, NULL, NULL);
INSERT INTO premyslovci VALUES (716, 'Leopold IV. Babenberg', 1108, 1141, 713, NULL, NULL);
INSERT INTO premyslovci VALUES (1094, 'Vladislav I. Herman Piast', 1043, 1102, 679, NULL, NULL);
INSERT INTO premyslovci VALUES (440, 'Gerberga Babenberg', NULL, 1142, 710, NULL, NULL);
INSERT INTO premyslovci VALUES (446, 'Guta Habsburská', 1271, NULL, 978, 428, 'Habsburkové');
INSERT INTO premyslovci VALUES (978, 'Rudolf I. Habsburg', 1218, 1291, 70, NULL, 'Habsburkové');
INSERT INTO premyslovci VALUES (42, 'Albrecht I. Habsburg', 1255, 1308, 978, 428, 'Habsburkové');
INSERT INTO premyslovci VALUES (102, 'Anna Habsburg', 1432, 1462, 59, 88, 'Habsburkové');
INSERT INTO premyslovci VALUES (295, 'Elisabeth Habsburg', 1435, 1505, 59, 88, 'Habsburkové');
INSERT INTO premyslovci VALUES (850, 'Matylda Habsburg', 1251, 1304, 978, 428, 'Habsburkové');
INSERT INTO premyslovci VALUES (1015, 'Rudolf II. Habsburg', 1270, 1290, 978, 428, 'Habsburkové');
INSERT INTO premyslovci VALUES (674, 'Kateřina Habsburg', NULL, 1282, 978, 428, 'Habsburkové');
INSERT INTO premyslovci VALUES (543, 'Jan Posthumus', 1291, 1312, 1015, 97, 'Habsburkové');

