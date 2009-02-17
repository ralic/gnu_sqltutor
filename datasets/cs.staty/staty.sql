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

DROP TABLE staty CASCADE;

CREATE TABLE staty (
    stat     VARCHAR(40),
    region   VARCHAR(20),
    populace BIGINT,
    hdp      BIGINT
);

BEGIN;
INSERT INTO staty VALUES ('Afghanistan', 'Southern Asia', 29863000, 4987121000);
INSERT INTO staty VALUES ('Albania', 'Southern Europe', 3130000, 5993950000);
INSERT INTO staty VALUES ('Algeria', 'Northern Africa', 32854000, 67317846000);
INSERT INTO staty VALUES ('Andorra', 'Southern Europe', 70000, 1429680000);
INSERT INTO staty VALUES ('Angola', 'Middle Africa', 15941000, 11557225000);
INSERT INTO staty VALUES ('Antigua and Barbuda', 'Caribbean', 77000, 695772000);
INSERT INTO staty VALUES ('Azerbaijan', 'Western Asia', 8411000, 7174583000);
INSERT INTO staty VALUES ('Argentina', 'South America', 38747000, 130771125000);
INSERT INTO staty VALUES ('Austria', 'Western Europe', 8189000, 255390343000);
INSERT INTO staty VALUES ('Bahamas', 'Caribbean', 323000, 4671226000);
INSERT INTO staty VALUES ('Bahrain', 'Western Asia', 727000, 9118034000);
INSERT INTO staty VALUES ('Bangladesh', 'Southern Asia', 141822000, 54601470000);
INSERT INTO staty VALUES ('Armenia', 'Western Asia', 3016000, 2729480000);
INSERT INTO staty VALUES ('Barbados', 'Caribbean', 270000, 2664090000);
INSERT INTO staty VALUES ('Belgium', 'Western Europe', 10419000, 304828683000);
INSERT INTO staty VALUES ('Bhutan', 'Southern Asia', 2163000, 655389000);
INSERT INTO staty VALUES ('Bolivia', 'South America', 9182000, 8061796000);
INSERT INTO staty VALUES ('Bosnia and Herzegovina', 'Southern Europe', 3907000, 6301991000);
INSERT INTO staty VALUES ('Botswana', 'Southern Africa', 1765000, 7029995000);
INSERT INTO staty VALUES ('Brazil', 'South America', 186405000, 503293500000);
INSERT INTO staty VALUES ('Belize', 'Central America', 270000, 908010000);
INSERT INTO staty VALUES ('Solomon Islands', 'Melanesia', 478000, 271504000);
INSERT INTO staty VALUES ('Bulgaria', 'Eastern Europe', 7726000, 19569958000);
INSERT INTO staty VALUES ('Burundi', 'Eastern Africa', 7548000, 649128000);
INSERT INTO staty VALUES ('Belarus', 'Eastern Europe', 9755000, 17246840000);
INSERT INTO staty VALUES ('Cameroon', 'Middle Africa', 16322000, 13106566000);
INSERT INTO staty VALUES ('Canada', 'Northern America', 32268000, 874365996000);
INSERT INTO staty VALUES ('Cape Verde', 'Western Africa', 507000, 894855000);
INSERT INTO staty VALUES ('Sri Lanka', 'Southern Asia', 20743000, 18938359000);
INSERT INTO staty VALUES ('Chad', 'Middle Africa', 9749000, 2827210000);
INSERT INTO staty VALUES ('Chile', 'South America', 16295000, 73702285000);
INSERT INTO staty VALUES ('China', 'Eastern Asia', 1315844000, 1447428400000);
INSERT INTO staty VALUES ('Colombia', 'South America', 45600000, 79526400000);
INSERT INTO staty VALUES ('Comoros', 'Eastern Africa', 798000, 294462000);
INSERT INTO staty VALUES ('Congo', 'Middle Africa', 3999000, 4198950000);
INSERT INTO staty VALUES ('Costa Rica', 'Central America', 4327000, 18125803000);
INSERT INTO staty VALUES ('Croatia', 'Southern Europe', 4551000, 29117298000);
INSERT INTO staty VALUES ('Cuba', 'Caribbean', 11269000, 31124978000);
INSERT INTO staty VALUES ('Cyprus', 'Western Asia', 835000, 13391730000);
INSERT INTO staty VALUES ('Czech Republic', 'Eastern Europe', 10220000, 90283480000);
INSERT INTO staty VALUES ('Benin', 'Western Africa', 8439000, 4396719000);
INSERT INTO staty VALUES ('Denmark', 'Northern Europe', 5431000, 214508207000);
INSERT INTO staty VALUES ('Dominica', 'Caribbean', 71000, 232809000);
INSERT INTO staty VALUES ('Dominican Republic', 'Caribbean', 8895000, 21419160000);
INSERT INTO staty VALUES ('Ecuador', 'South America', 13228000, 27884624000);
INSERT INTO staty VALUES ('El Salvador', 'Central America', 6881000, 15840062000);
INSERT INTO staty VALUES ('Equatorial Guinea', 'Middle Africa', 504000, 2981160000);
INSERT INTO staty VALUES ('Ethiopia', 'Eastern Africa', 77431000, 7046221000);
INSERT INTO staty VALUES ('Eritrea', 'Eastern Africa', 4401000, 1342305000);
INSERT INTO staty VALUES ('Estonia', 'Northern Europe', 1330000, 8288560000);
INSERT INTO staty VALUES ('Fiji', 'Melanesia', 848000, 2341328000);
INSERT INTO staty VALUES ('Finland', 'Northern Europe', 5249000, 163081181000);
INSERT INTO staty VALUES ('France', 'Western Europe', 60496000, 1767814112000);
INSERT INTO staty VALUES ('French Guiana', 'South America', 187000, 1814835000);
INSERT INTO staty VALUES ('French Polynesia', 'Polynesia', 257000, 4604926000);
INSERT INTO staty VALUES ('Djibouti', 'Eastern Africa', 793000, 702598000);
INSERT INTO staty VALUES ('Gabon', 'Middle Africa', 1384000, 5750520000);
INSERT INTO staty VALUES ('Georgia', 'Western Asia', 4474000, 3444980000);
INSERT INTO staty VALUES ('Gambia', 'Western Africa', 1517000, 339808000);
INSERT INTO staty VALUES ('Germany', 'Western Europe', 82689000, 2409309393000);
INSERT INTO staty VALUES ('Ghana', 'Western Africa', 22113000, 7828002000);
INSERT INTO staty VALUES ('Kiribati', 'Micronesia', 84000, 65604000);
INSERT INTO staty VALUES ('Greece', 'Southern Europe', 11120000, 174472800000);
INSERT INTO staty VALUES ('Grenada', 'Caribbean', 103000, 438986000);
INSERT INTO staty VALUES ('Guadeloupe', 'Caribbean', 448000, 6504064000);
INSERT INTO staty VALUES ('Guatemala', 'Central America', 12599000, 24731837000);
INSERT INTO staty VALUES ('Guinea', 'Western Africa', 9402000, 3986448000);
INSERT INTO staty VALUES ('Guyana', 'South America', 751000, 758510000);
INSERT INTO staty VALUES ('Haiti', 'Caribbean', 8528000, 2558400000);
INSERT INTO staty VALUES ('Honduras', 'Central America', 7205000, 7060900000);
INSERT INTO staty VALUES ('China, Hong Kong SAR', 'Eastern Asia', 7041000, 159253338000);
INSERT INTO staty VALUES ('Hungary', 'Eastern Europe', 10098000, 84661632000);
INSERT INTO staty VALUES ('Iceland', 'Northern Europe', 295000, 10716760000);
INSERT INTO staty VALUES ('India', 'Southern Asia', 1103371000, 612370905000);
INSERT INTO staty VALUES ('Iraq', 'Western Asia', 28807000, 17111358000);
INSERT INTO staty VALUES ('Ireland', 'Northern Europe', 4148000, 161207872000);
INSERT INTO staty VALUES ('Israel', 'Western Asia', 6725000, 121729225000);
INSERT INTO staty VALUES ('Italy', 'Southern Europe', 58093000, 1482940011000);
INSERT INTO staty VALUES ('Côte d''Ivoire', 'Western Africa', 18154000, 16084444000);
INSERT INTO staty VALUES ('Jamaica', 'Caribbean', 2651000, 7428102000);
INSERT INTO staty VALUES ('Japan', 'Eastern Asia', 128085000, 4331706615000);
INSERT INTO staty VALUES ('Kazakhstan', 'Central Asia', 14825000, 26462625000);
INSERT INTO staty VALUES ('Jordan', 'Western Asia', 5703000, 10282509000);
INSERT INTO staty VALUES ('Kenya', 'Eastern Africa', 34256000, 15209664000);
INSERT INTO staty VALUES ('Kuwait', 'Western Asia', 2687000, 36653367000);
INSERT INTO staty VALUES ('Kyrgyzstan', 'Central Asia', 5264000, 1958208000);
INSERT INTO staty VALUES ('Lebanon', 'Western Asia', 3577000, 17967271000);
INSERT INTO staty VALUES ('Lesotho', 'Southern Africa', 1795000, 1066230000);
INSERT INTO staty VALUES ('Latvia', 'Northern Europe', 2307000, 10273071000);
INSERT INTO staty VALUES ('Liberia', 'Western Africa', 3283000, 594223000);
INSERT INTO staty VALUES ('Liechtenstein', 'Western Europe', 35000, 1522010000);
INSERT INTO staty VALUES ('Lithuania', 'Northern Europe', 3431000, 17851493000);
INSERT INTO staty VALUES ('Luxembourg', 'Western Europe', 465000, 26681235000);
INSERT INTO staty VALUES ('China, Macao SAR', 'Eastern Asia', 460000, 7823220000);
INSERT INTO staty VALUES ('Madagascar', 'Eastern Africa', 18606000, 5916708000);
INSERT INTO staty VALUES ('Malawi', 'Eastern Africa', 12884000, 2035672000);
INSERT INTO staty VALUES ('Maldives', 'Southern Asia', 329000, 743540000);
INSERT INTO staty VALUES ('Mali', 'Western Africa', 13518000, 4028364000);
INSERT INTO staty VALUES ('Malta', 'Southern Europe', 402000, 4739580000);
INSERT INTO staty VALUES ('Martinique', 'Caribbean', 396000, 5743584000);
INSERT INTO staty VALUES ('Mauritania', 'Western Africa', 3069000, 1169289000);
INSERT INTO staty VALUES ('Mauritius', 'Eastern Africa', 1245000, 5719530000);
INSERT INTO staty VALUES ('Mexico', 'Central America', 107029000, 636287405000);
INSERT INTO staty VALUES ('Monaco', 'Western Europe', 33000, 967725000);
INSERT INTO staty VALUES ('Mongolia', 'Eastern Asia', 2646000, 1222452000);
INSERT INTO staty VALUES ('Republic of Moldova', 'Eastern Europe', 4206000, 1930554000);
INSERT INTO staty VALUES ('Morocco', 'Northern Africa', 31478000, 46052314000);
INSERT INTO staty VALUES ('Mozambique', 'Eastern Africa', 19792000, 4393824000);
INSERT INTO staty VALUES ('Oman', 'Western Asia', 2567000, 18967563000);
INSERT INTO staty VALUES ('Namibia', 'Southern Africa', 2031000, 4685517000);
INSERT INTO staty VALUES ('Nauru', 'Micronesia', 10000, 34650000);
INSERT INTO staty VALUES ('Nepal', 'Southern Asia', 27133000, 6321989000);
INSERT INTO staty VALUES ('Netherlands', 'Western Europe', 16299000, 517639941000);
INSERT INTO staty VALUES ('Netherlands Antilles', 'Caribbean', 183000, 2426763000);
INSERT INTO staty VALUES ('New Caledonia', 'Melanesia', 237000, 3969987000);
INSERT INTO staty VALUES ('Vanuatu', 'Melanesia', 211000, 240540000);
INSERT INTO staty VALUES ('Nicaragua', 'Central America', 5487000, 4115250000);
INSERT INTO staty VALUES ('Niger', 'Western Africa', 13957000, 3168239000);
INSERT INTO staty VALUES ('Nigeria', 'Western Africa', 131530000, 51296700000);
INSERT INTO staty VALUES ('Norway', 'Northern Europe', 4620000, 225830220000);
INSERT INTO staty VALUES ('Marshall Islands', 'Micronesia', 57000, 120156000);
INSERT INTO staty VALUES ('Palau', 'Micronesia', 20000, 123480000);
INSERT INTO staty VALUES ('Pakistan', 'Southern Asia', 157935000, 78651630000);
INSERT INTO staty VALUES ('Panama', 'Central America', 3232000, 10988800000);
INSERT INTO staty VALUES ('Papua New Guinea', 'Melanesia', 5887000, 3396799000);
INSERT INTO staty VALUES ('Paraguay', 'South America', 6158000, 6164158000);
INSERT INTO staty VALUES ('Peru', 'South America', 27968000, 62592384000);
INSERT INTO staty VALUES ('Poland', 'Eastern Europe', 38530000, 206328150000);
INSERT INTO staty VALUES ('Portugal', 'Southern Europe', 10495000, 153699275000);
INSERT INTO staty VALUES ('Guinea-Bissau', 'Western Africa', 1586000, 329888000);
INSERT INTO staty VALUES ('Puerto Rico', 'Caribbean', 3955000, 82311460000);
INSERT INTO staty VALUES ('Qatar', 'Western Asia', 813000, 28198905000);
INSERT INTO staty VALUES ('Romania', 'Eastern Europe', 21711000, 55363050000);
INSERT INTO staty VALUES ('Russian Federation', 'Eastern Europe', 143202000, 433329252000);
INSERT INTO staty VALUES ('Rwanda', 'Eastern Africa', 9038000, 1672030000);
INSERT INTO staty VALUES ('Saint Kitts and Nevis', 'Caribbean', 46000, 410642000);
INSERT INTO staty VALUES ('Saint Lucia', 'Caribbean', 161000, 742371000);
INSERT INTO staty VALUES ('San Marino', 'Southern Europe', 27000, 1036719000);
INSERT INTO staty VALUES ('Sao Tome and Principe', 'Middle Africa', 157000, 57148000);
INSERT INTO staty VALUES ('Saudi Arabia', 'Western Asia', 24573000, 210369453000);
INSERT INTO staty VALUES ('Senegal', 'Western Africa', 11658000, 7472778000);
INSERT INTO staty VALUES ('Serbia', 'Southern Europe', 10503000, 19357029000);
INSERT INTO staty VALUES ('Seychelles', 'Eastern Africa', 81000, 713934000);
INSERT INTO staty VALUES ('Sierra Leone', 'Western Africa', 5525000, 1088425000);
INSERT INTO staty VALUES ('Slovakia', 'Eastern Europe', 5401000, 32508619000);
INSERT INTO staty VALUES ('Slovenia', 'Southern Europe', 1967000, 27205577000);
INSERT INTO staty VALUES ('Somalia', 'Eastern Africa', 8228000, 1275340000);
INSERT INTO staty VALUES ('South Africa', 'Southern Africa', 47432000, 168431032000);
INSERT INTO staty VALUES ('Zimbabwe', 'Eastern Africa', 13010000, 2471900000);
INSERT INTO staty VALUES ('Spain', 'Southern Europe', 43064000, 879539136000);
INSERT INTO staty VALUES ('Sudan', 'Northern Africa', 36233000, 16630947000);
INSERT INTO staty VALUES ('Suriname', 'South America', 449000, 1005760000);
INSERT INTO staty VALUES ('Swaziland', 'Southern Africa', 1032000, 1705896000);
INSERT INTO staty VALUES ('Sweden', 'Northern Europe', 9041000, 306715925000);
INSERT INTO staty VALUES ('Switzerland', 'Western Europe', 7252000, 315360472000);
INSERT INTO staty VALUES ('Syrian Arab Republic', 'Western Asia', 19043000, 28507371000);
INSERT INTO staty VALUES ('Tajikistan', 'Central Asia', 6507000, 1620243000);
INSERT INTO staty VALUES ('Togo', 'Western Africa', 6145000, 2316665000);
INSERT INTO staty VALUES ('Tonga', 'Polynesia', 102000, 165852000);
INSERT INTO staty VALUES ('Trinidad and Tobago', 'Caribbean', 1305000, 9927135000);
INSERT INTO staty VALUES ('United Arab Emirates', 'Western Asia', 4496000, 99496480000);
INSERT INTO staty VALUES ('Tunisia', 'Northern Africa', 10102000, 25871222000);
INSERT INTO staty VALUES ('Turkey', 'Western Asia', 73193000, 250173674000);
INSERT INTO staty VALUES ('Turkmenistan', 'Central Asia', 4833000, 14875974000);
INSERT INTO staty VALUES ('Tuvalu', 'Polynesia', 10000, 22850000);
INSERT INTO staty VALUES ('Uganda', 'Eastern Africa', 28816000, 6973472000);
INSERT INTO staty VALUES ('Ukraine', 'Eastern Europe', 46481000, 45318975000);
INSERT INTO staty VALUES ('Egypt', 'Northern Africa', 74033000, 78623046000);
INSERT INTO staty VALUES ('United Kingdom', 'Northern Europe', 59668000, 1811222140000);
INSERT INTO staty VALUES ('United States', 'Northern America', 298213000, 11011216812000);
INSERT INTO staty VALUES ('Burkina Faso', 'Western Africa', 13228000, 3889032000);
INSERT INTO staty VALUES ('Uruguay', 'South America', 3463000, 11337862000);
INSERT INTO staty VALUES ('Uzbekistan', 'Central Asia', 26593000, 8988434000);
INSERT INTO staty VALUES ('Venezuela', 'South America', 26749000, 80086506000);
INSERT INTO staty VALUES ('Samoa', 'Polynesia', 185000, 334295000);
INSERT INTO staty VALUES ('Yemen', 'Western Asia', 20975000, 10151900000);
INSERT INTO staty VALUES ('Zambia', 'Eastern Africa', 11668000, 4643864000);
INSERT INTO staty VALUES ('Micronesia', 'Micronesia', 110000, 250910000);
INSERT INTO staty VALUES ('Macedonia', 'Southern Europe', 2034000, 4525650000);
INSERT INTO staty VALUES ('Palestinian Territory', 'Western Asia', 3702000, NULL);
INSERT INTO staty VALUES ('Korea', 'Eastern Asia', 22488000, 11109072000);
INSERT INTO staty VALUES ('Korea', 'Eastern Asia', 47817000, 528808203000);
INSERT INTO staty VALUES ('Iran', 'Southern Asia', 69515000, 144521685000);
INSERT INTO staty VALUES ('St. Vincent/Grenadines', 'Caribbean', 119000, 373303000);
INSERT INTO staty VALUES ('Central African Rep.', 'Middle Africa', 4038000, 1312350000);
INSERT INTO staty VALUES ('Tanzania', 'Eastern Africa', 38329000, 10387159000);
INSERT INTO staty VALUES ('Congo', 'Middle Africa', 57549000, 6157743000);
INSERT INTO staty VALUES ('Libya', 'Northern Africa', 5853000, 21304920000);
COMMIT;

