-- ALTER DATABASE ridgerunner CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

INSERT INTO language(language_code) VALUES
('en'),
('sv');

INSERT INTO country(country_code) VALUES
('NO'),
('PL'),
('SE');

INSERT INTO hip_joints(result) VALUES
('A/A'),
('A/B'),
('A/C'),
('A/D'),
('A/E'),
('B/B'),
('B/C'),
('B/D'),
('B/E'),
('C/C'),
('C/D'),
('C/E'),
('D/D'),
('D/E'),
('E/E');

INSERT INTO elbows(result) VALUES
('0/0'),
('0/1'),
('0/2'),
('0/3'),
('1/1'),
('1/2'),
('1/3'),
('2/2'),
('2/3'),
('3/3');

INSERT INTO degenerative_myelopathy(result) VALUES
('N/N'),
('N/DM'),
('DM/DM');

INSERT INTO early_onset_adult_deafness(result) VALUES
('N/N'),
('N/n'),
('n/n');

INSERT INTO juvenile_myoclonic_epilepsy(result) VALUES
('N/N'),
('N/JME'),
('JME/JME');

INSERT INTO ridge(result) VALUES
('r/r'),
('R/r'),
('R/R');

INSERT INTO dog(
    id,
    image,
    first_name,
    kennel_name,
    official_titles,
    country_of_origin,
    date_of_birth,
    registration_number,
    father,
    mother,
    inbreeding_coefficient,
    gender,
    height,
    weight,
    mentality_index,
    bph,
    bph_age,
    mh,
    mh_age,
    owner,
    correct_ridge,
    correct_ridge_comment,
    correct_tail,
    correct_tail_comment,
    scissor_bite,
    scissor_bite_comment,
    dermoid_sinus,
    cryptorchid,
    hip_joints,
    elbows,
    degenerative_myelopathy,
    early_onset_adult_deafness,
    juvenile_myoclonic_epilepsy,
    ridge
) VALUES
-- Khan's grandfather (father)
(
    1,
    NULL, NULL,
    'Heshima Ya Kimba Energy Of Red',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Khan's grandmother (father)
(
    2,
    NULL, NULL,
    'Lionesque Clementine',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Khan's grandfather (mother)
(
    3,
    NULL, NULL,
    'Globe''s Roving Red Regent',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Khan's grandmother (mother)
(
    4,
    NULL, NULL,
    'Kamba Anatulinda''s E''Zena',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),

-- Segra's grandfather (father)
(
    5,
    NULL, NULL,
    'Mankoya''s Great Gambo',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Segra's grandmother (father)
(
    6,
    NULL, NULL,
    'Kangelani''s Impressive Inka',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Segra's grandfather (mother)
(
    7,
    NULL, NULL,
    'Lionsbane He''s The Boss',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Segra's grandmother (mother)
(
    8,
    NULL, NULL,
    'Hamnuddens Fischer', '["LP1", "RLD N&F", "SE VCH"]',
    NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),

-- Khan's father
(
    9,
    NULL, NULL,
    'Inanda Mellberg Edelrood', '["SE VCH"]',
    NULL, NULL, NULL,
    1, 2,
    NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Khan's mother
(
    10,
    NULL, NULL,
    'Kangelani''s Gentle Loba By Clay',
    NULL, NULL, NULL, NULL,
    3, 4,
    NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Segra's father
(
    11,
    NULL, NULL,
    'Mankoya''s Incredible Idde By Gambo', '["SE VCH"]',
    NULL, NULL, NULL,
    5, 6,
    NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Segra's mother
(
    12,
    NULL, NULL,
    'Kadamo Bringin'' It Back', '["LP1", "RLD N&F", "SE VCH"]',
    NULL, NULL, NULL,
    7, 8,
    NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),

-- Heera's father
(
    13,
    NULL,
    'Khan', 'Ulwazi''s Adjua Khan By Edelrood',
    NULL,
    'NO',
    NULL, NULL,
    9, 10,
    NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Heera's mother
(
    14,
    NULL,
    'Segra', 'Kadamo Give Me A High Five', '["SE VCH"]',
    'SE',
    NULL, NULL,
    11, 12,
    NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
(
    15,
    'ridgerunner_app/assets/images/heera/Heera.jpg',
    'Heera',
    'Kadamo I Am Bagheera',
    '["LD STARTKLASS"]',
    'SE',
    '2018-03-06',
    'SE23818/2018',
    13,
    14,
    0.8,
    '1',
    63,
    31,
    NULL, -- '[[99.35, 0.74], [107.11, 0.61], [115.57, 0.72], [111.62, 0.72], [93.19, 0.73]]',
    'ridgerunner_app/assets/images/heera/BPH.png',
    '[2.5, 30.0, 14.0]',
    'ridgerunner_app/assets/images/heera/MH.png',
    '[1.0, 13.0, 21.0]',
    '["Mina Teräs"]',
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0',
    '0',
    'A/A',
    '0/0',
    'N/N',
    NULL,
    'N/N',
    NULL
),



-- Heera's boyfriend
(
    16,
    NULL,
    'Dexter', 'Kadamo Rob Roy', '["SE VCH"]', 'SE', '2012-02-26', 'SE21152/2012',
    NULL, NULL,
    0.0, '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'B/B', '0/0',
    NULL, NULL, NULL, NULL
),

-- Heera's offspring
(
    17,
    NULL,
    'Iroh', 'Kadamo Qashqai',
    NULL,
    'SE', '2021-07-21', 'SE57484/2021', 16, 15, 3.3, '0',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 25.0]',
    NULL,
    NULL,
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '1',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    18,
    NULL,
    'Nelson', 'Kadamo Juke', '["SE VCH"]',
    'SE', '2021-07-21', 'SE57485/2021', 16, 15, 3.3, '0',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 25.0]',
    NULL,
    NULL,
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    19,
    NULL,
    'Morris', 'Kadamo Navara',
    NULL,
    'SE', '2021-07-21', 'SE57486/2021', 16, 15, 3.3, '0',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 26.0]',
    NULL,
    NULL,
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '1',
    'C/C', '0/0',
    NULL, NULL, NULL, NULL
),
(
    20,
    NULL,
    'Enzo', 'Kadamo Terrano',
    NULL,
    'SE', '2021-07-21', 'SE57487/2021', 16, 15, 3.3, '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    21,
    NULL,
    'Henry', 'Kadamo Pathfinder',
    NULL,
    'SE', '2021-07-21', 'SE57488/2021', 16, 15, 3.3, '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0',
    'Overbite',
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    22,
    NULL,
    'Lexie', 'Kadamo Almera',
    NULL,
    'SE', '2021-07-21', 'SE57489/2021', 16, 15, 3.3, '1',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 23.0, 20.0]',
    NULL,
    NULL,
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    23,
    NULL,
    'Leia', 'Kadamo Ariya', '["SE VCH"]',
    'SE', '2021-07-21', 'SE57490/2021', 16, 15, 3.3, '1',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 26.0]',
    NULL,
    NULL,
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/B', '0/0',
    NULL, NULL, NULL, NULL
),
(
    24,
    NULL,
    'Nova', 'Kadamo Stanza', '["SE VCH"]',
    'SE', '2021-07-21', 'SE57491/2021', 16, 15, 3.3, '1',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 26.0]',
    NULL,
    NULL,
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    25,
    NULL,
    'Luna', 'Kadamo Sentra', '["SE VCH"]',
    'SE', '2021-07-21', 'SE57492/2021', 16, 15, 3.3, '1',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 25.0]',
    NULL,
    NULL,
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    26,
    NULL,
    'Bisa', 'Kadamo Micra',
    NULL,
    'SE', '2021-07-21', 'SE57493/2021', 16, 15, 3.3, '1',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 25.0]',
    NULL,
    NULL,
    NULL,
    '0',
    'Single-crown',
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),
(
    27,
    NULL,
    'Nangi', 'Kadamo Teana',
    NULL,
    'SE', '2021-07-21', 'SE57494/2021', 16, 15, 3.3, '1',
    NULL, NULL, NULL,
    'ridgerunner_app/assets/images/ideal/BPH.png',
    '[1.0, 19.0, 26.0]',
    NULL,
    NULL,
    NULL,
    '0',
    'Multi-crown',
    '1',
    NULL,
    '1',
    NULL,
    '0', '0',
    'A/A', '0/0',
    NULL, NULL, NULL, NULL
),



-- Chase's grandfather (father)
(
    28,
    NULL, NULL,
    'Aresvuma Zan Zait',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Chase's grandmother (father)
(
    29,
    NULL, NULL,
    'Nahishut Amnon Berezin',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Chase's grandfather (mother)
(
    30,
    NULL, NULL,
    'Thokoza Ngumo',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Chase's grandmother (mother)
(
    31,
    NULL, NULL,
    'Tajemnica Tkwi W Ogonku Sangoma',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),

-- Nala's grandfather (father)
(
    32,
    NULL, NULL,
    'Ultra Aslans You Rock My World', '["SE VCH"]',
    NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Nala's grandmother (father)
(
    33,
    NULL, NULL,
    'Lejonessa Taste Of Saffron', '["SE VCH"]',
    NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Nala's grandfather (mother)
(
    34,
    NULL, NULL,
    'Usakose Air Of Success Of Gondwana',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Nala's grandmother (mother)
(
    35,
    NULL, NULL,
    'Roseridge Red Rosetta', '["SE VCH"]',
    NULL, NULL, NULL, NULL, NULL, NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),

-- Chase's father
(
    36,
    NULL, NULL,
    'Leopold Amnon Berezin Rich-Rach',
    NULL, NULL, NULL, NULL,
    28, 29,
    NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Chase's mother
(
    37,
    NULL, NULL,
    'Wesola Lapka Sangoma',
    NULL, NULL, NULL, NULL,
    30, 31,
    NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Nala's father
(
    38,
    NULL, NULL,
    'Lejonessa Sound Of Echo', '["SE VCH"]',
    NULL, NULL, NULL,
    32, 33,
    NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Nala's mother
(
    39,
    NULL, NULL,
    'Mohaget''s Miss Monroe', '["SE VCH"]',
    NULL, NULL, NULL,
    34, 35,
    NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),

-- Happy's father
(
    40,
    NULL,
    'Chase', 'Chase Wild Goos Sangoma',
    NULL,
    'PL',
    NULL, NULL,
    36, 37,
    NULL,
    '0',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
-- Happy's mother
(
    41,
    NULL,
    'Nala', 'Leo Tino''s Welcome To The Show',
    NULL,
    'SE',
    NULL, NULL,
    38, 39,
    NULL,
    '1',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
),
(
    42,
    'ridgerunner_app/assets/images/happy/Happy.jpg',
    'Happy',
    'Lejonessa Air Of Happiness',
    '["LD STARTKLASS"]',
    'SE',
    '2023-03-01',
    'SE20129/2023',
    40,
    41,
    0.0,
    '1',
    63,
    31,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '["Mina Teräs"]',
    '1',
    NULL,
    '1',
    NULL,
    '1',
    NULL,
    '0',
    '0',
    'A/A',
    '0/0',
    NULL,
    NULL,
    NULL,
    NULL
);

INSERT INTO localized_dog(dog, language_code, presentation, mentality) VALUES
(
    15,
    'en',
    '<p>Heera was born on March 6, 2018 in a litter of 9 puppies (3 males & 6 females). Her dad Khan was born at kennel Ulwazi in Norway and is a compact, smaller male. Her mom Segra is an athletic, smaller bitch. A common thread in the litter is the smaller size. Heera''s breeder is Karin Wolgast Fürst at kennel Kadamo. Moa, Karin''s foundation bitch, is Heera''s great-grandmother. Both great-grandmother Moa and grandmother Mira have merits in obedience, just like Heera.</p><p>Heera is my first dog and when I got her as a 17-year-old I had no plans for dog sports. However, my mom trained and competed with dogs when I was growing up and it rubbed off. When Heera was 4 months old I started watching Youtube clips on how to teach a heel and since then I''ve been hooked. I''ve an eye for details and that''s why I initially fell in love with obedience. Eventually we also started training messaging. The sport originates from World War I (google "Messenger Dog") and is part of the Scandinavian Working Dog Trials. Every year since Heera became eligible to compete, she has placed in the top 5 on the breed club''s obedience list (with the exception of 2020 due to the pandemic).</p><div class=''quote''><q>I''ve never seen a ridgeback perform an obedience program with this level of control and precision before.</q><cite>- A participant at one of the competitions we''ve entered.</cite></div><p>In 2022 Heera won both the obedience list and the working dog list. She was thus crowned Dog of the Year in both sports we train and compete in. For her achievements in 2022, she was also awarded: Working Dog Rookie of the Year and Best All-Round Working Ridgeback of the Year. The following year she also became Obedience Dog of the Year at our local club.</p><p>In addition to obedience and working dog trials, we''ve sporadically trained blood tracking. Heera passed the aptitude test gallantly despite minimal training.</p><p>Heera has been exhibited sparingly: 3 times in junior class and 1 time in intermediate class. She has been awarded excellent and has at best placed as 2nd best intermediate bitch at Stora Stockholm 2019.</p>',
    '[
        "<p></p>",
        "<p></p>",
        "<p></p>"
    ]'
),
(
    15,
    'sv',
    '<p>Heera föddes den 6 mars 2018 i en kull om 9 valpar (3 hanar & 6 tikar). Pappa Khan är född hos kennel Ulwazi i Norge och är en kompakt, mindre hane. Mamma Segra är en atletisk, mindre tik. En röd tråd i kullen är den mindre storleken. Heeras uppfödare är Karin Wolgast Fürst på kennel Kadamo. Moa, Karins stamtik, är Heeras gammelmormor. Både gammelmormor Moa och mormor Mira är meriterade i lydnad, precis som Heera.</p><p>Heera är min första hund och när jag skaffade henne som 17-åring hade jag inga planer på hundsport. Min mamma har dock tränat och tävlat med hundar under min uppväxt och det smittade av sig. När Heera var 4 månader gammal började jag titta på Youtube-klipp om hur man lär in ett fritt följ och sen dess har jag varit fast. Jag är en detaljnörd och därför fastnade jag för lydnaden i första hand. Så småningom började vi också träna bruksgrenen rapport. Det är dock först under 2022 som vi tränat brukset mer regelbundet. Varje år sedan Heera blev tävlingsmyndig har hon placerat sig i topp 5 på rasklubbens lydnadslista (med undantag för 2020 pga pandemin).</p><div class=''quote''><q>Jag har aldrig tidigare sett en ridgeback gå ett så kontrollerat och detaljmedvetet lydnadsprogram.</q><cite>- Medtävlande.</cite></div><p>År 2022 vann Heera både lydnadslistan och brukslistan. Hon korades därmed till Årets Hund i båda sporterna vi tränar och tävlar i. För sina prestationer under 2022 tilldelades hon också två vandringspris: Årets Bruksrookie och Årets Bästa Allroundarbetande Ridgeback. Nästkommande år blev hon även Årets Lydnadshund på vår hemmaklubb.</p><p>Utöver lydnaden och brukset har vi tränat viltspår sporadiskt. Heera klarade anlagsprovet galant trots minimal träning.</p><p>Heera har ställts ut sparsamt: 3 gånger i juniorklass och 1 gång i unghundsklass. Hon har tilldelats excellent och har som bäst placerat sig som 2:a bästa unghundstik på Stora Stockholm 2019.</p>',
    '[
        "<p>I vardagen är Heera en lugn hund som kan ligga och slappa under en filt i timtal. Hon älskar dock minst lika mycket att gå långpromenader och få undersöka skog och mark. Heera är inte vaktig av sig och stressar aldrig upp sig i onödan. Hon har alltid varit trygg i sig själv och varit snäll mot allt och alla - människor som hundar, men är överlag ointresserad av personer och hundar utanför flocken. Heera är skottfast och sover sig igenom nyårsafton.</p>",
        "<p>Jag upplever att Heera är lågtempererad, men att hon har ett stort spann i sin aktivitetsnivå. Beroende på hur jag för mig och leverar mina belöningar kan jag med ganska enkla medel skifta hennes aktivitetsnivå. Det tycker jag är värdefullt i och med att olika moment fungerar bäst i olika aktivitetsnivå.</p><p>Heera är relativt lättbelönad. Hon älskar mat och uppskattar både lek och sociala belöningar. Leken och de sociala belöningarna har vi dock fått jobba en del med. Lek i form av jaktdrift har Heera naturligt. Däremot har jag behövt lära in kampleken. Tack vare diverse lekövningar uppskattar hon nu även kamplek. Som unghund upplevde jag att Heera brydde sig föga om jag berömde henne eller inte. Nu för tiden tar hon det bra och jag kan relativt lätt byta ut godis eller lek till en social belöning. Dels tror jag det beror på att Heera har mognat, dels att vår relation är starkare och att jag därigenom förstår vad som får igång henne.</p>",
        "<p>Heera har känd mentalstatus både i SKK och SBK i och med att hon genomfört både BPH och MH. Hon gick MHt vid 1 års ålder (13 månader & 21 dagar gammal) och BPHt vid 2,5 års ålder (30 månader & 14 dagar gammal).</p><p>Trots att Heera genomförde MHt i väldigt ung ålder så visar hon på betydligt mycket högre nyfikenhet/orädsla och lekfullhet än den genomsnittliga ridgebacken. Även jaktintresset är över genomsnittet medan socialiteten och aggressiviteten stämmer överens med snittet. Enligt mina preferenser är det här ett optimalt resultat. Jag vill ha en hund med lagom socialitet och skärpa, som är nyfiken och orädd, samt är lekfull och har ett jaktintresse (det är viktigt för mig i leken). Heera var lätt att få igång i lek under provet. I överraskningsmomenten reagerade hon starkt, men lika snabbt avreagerade hon - hon hade aldrig några kvarvarande misstänksamheter. I skrammlet var hennes reaktion att hoppa på prylen.</p><div class=''quote''><q>Bästa ridgebacken jag sett!</q><cite>- Provledaren efter Heeras MH.</cite></div><p>Heera genomförde BPHt vid 2,5 års ålder, drygt 1,5 år efter MHt. Hon löpte under provet men det syns inte alls i resultaten - hon var sitt vanliga glada jag. Min bedömning är att hon hade mognat en del. Man ser dock samma tendenser som i MHt. Hennes socialitet hade minskat. Hon reagerar inte på hanteringen och är totalt obrydd när figuranten går iväg med henne. Lekfullheten är mycket stark. Det som brister är dragkampsintresset, Heera leker hellre själv. Nyfikenheten är också mycket stark. I övrigt har hon knappt några reaktioner. Det finns inga tendenser till osäkerhet, flykt eller oro och hon bedöms som trygg i alla moment.</p>"
    ]'
),
(42, 'en', '<p>Happy was born on March 1, 2023 in a litter of 10 puppies (5 males & 5 females). Her dad Chase was born in Poland at kennel Sangoma and is a compact male. Her mom Nala is a medium sized bitch. Happy''s breeder is Susanna Martell at kennel Lejonessa.</p><p>Since the day I brought Happy home, we''ve trained in a structured manner with the goal of getting as far as possible in obedience and messaging. Happy made her competition debut at 12 months old and in 3 trials, in the space of 2 weeks, she took 3 qualifying results - all with podium places - and thus her first obedience title! She is not only the youngest ridgeback ever to take that title, but also the only one to take it in 3 shots (not least with 3 straight podiums). A month later she was also promoted from the beginner''s class in messaging - the first ridgeback in 8 years!</p>',
    '[
        "<p></p>",
        "<p></p>",
        "<p></p>"
    ]'
),
(
    42,
    'sv',
    '<p>Happy föddes den 1 mars 2023 i en kull om 10 valpar (5 hanar & 5 tikar). Pappa Chase är född i Polen hos kennel Sangoma och är en kompakt hane. Mamma Nala är en mellanstor tik. Happys uppfödare är Susanna Martell på kennel Lejonessa.</p><p>Sedan dagen jag fick hem Happy har vi tränat strukturerat med målet att ta oss så långt som möjligt inom lydnaden och bruksgrenen rapport. Happy gjorde sin tävlingsdebut som 12 månader gammal och på 3 starter, inom loppet av 2 veckor, tog hon 3 uppflytt - alla med pallplats - och därmed sin första lydnadstitel. Hon är inte bara den yngsta ridgebacken någonsin att ta den titeln, utan också den enda som tagit den på 3 starter (inte minst med 3 raka pallplatser). En månad senare blev hon också uppflyttad från appellklass till lägre klass i rapporten - den första ridgebacken på 8 år!</p>',
    '[
        "<p>I vardagen är Happy en energisk hund. Om inte ytan är begränsad så har hon svårt för att vara still och slappna av. Hon är väldigt social och lekfull och bjuder därmed in både människor och hundar till lek så fort hon får chansen. Sin glada natur till trots så har Happy en del vakt i sig, hon saknar däremot aggressivitet. För att Happy inte ska fara runt så har jag infört en hel del regler när det kommer till allmänlydnad. Men för att det ska hålla över tid gäller det att vara som en nagel i ögat, jag skulle därför påstå att hon kräver en förare med både disciplin och tålamod.</p>",
        "<p>Happys intensitet kan vara påfrestande ibland i vardagen, men i träningen är det värt varje sekund. Happy är väldigt lättbelönad: hon älskar mat och gillar all form av lek samt sociala belöningar. Hennes höga aktivitetsnivå bidrar med ett högt fokus. Sammanfattningsvis är hon en glad hund som mer än gärna engagerar sig i vad som än erbjuds!</p>",
        "<p>TBA</p>"
    ]'
);

INSERT INTO club(id) VALUES
(1),
(2);

INSERT INTO localized_club(club, language_code, name) VALUES
(1, 'en', 'THE SWEDISH RHODESIAN RIDGEBACK CLUB (SRRS)'),
(1, 'sv', 'SPECIALKLUBBEN RHODESIAN RIDGEBACK SVERIGE (SRRS)'),
(2, 'en', 'GNESTA-TROSA BK (GTBK)'),
(2, 'sv', 'GNESTA-TROSA BK (GTBK)');

INSERT INTO unofficial_title(id, dog, club) VALUES
(1, 15, 1),
(2, 15, 2);

INSERT INTO localized_unofficial_title(unofficial_title, language_code, unofficial_titles) VALUES
(1, 'en', '[
    "5th Obedience Dog of the Year 2019",
    "5th Obedience Dog of the Year 2021",
    "1st Obedience Dog of the Year 2022",
    "1st Working Dog of the Year 2019",
    "2nd Obedience Dog of the Year 2023",
    "3rd Working Dog of the Year 2023"
]'),
(1, 'sv', '[
    "5:a Årets Lydnadshund 2019",
    "5:a Årets Lydnadshund 2021",
    "1:a Årets Lydnadshund 2022",
    "1:a Årets Brukshund 2022",
    "2:a Årets Lydnadshund 2023",
    "3:a Årets Brukshund 2023"
]'),
(2, 'en', '[
    "3rd Obedience Dog of the Year 2022",
    "1st Obedience Dog of the Year 2023"
]'),
(2, 'sv', '[
    "3:a Årets Lydnadshund 2022",
    "1:a Årets Lydnadshund 2023"
]');

INSERT INTO award(id, dog, club) VALUES
(1, 15, 1);

INSERT INTO localized_award(award, language_code, awards) VALUES
(1, 'en', '[
    "Working Dog Rookie of the Year 2022",
    "Best All-Round Working Ridgeback 2022"
]'),
(1, 'sv', '[
    "Årets Bruksrookie 2022",
    "Årets Bästa Allroundarbetande Ridgeback 2022"
]');

INSERT INTO sport(id) VALUES
(1),
(2),
(3),
(4);

INSERT INTO localized_sport(sport, language_code, name) VALUES
(1, 'en', 'OBEDIENCE'),
(1, 'sv', 'LYDNAD'),
(2, 'en', 'WORKING DOG TRIALS'),
(2, 'sv', 'BRUKS'),
(3, 'en', 'BLOOD TRACKING'),
(3, 'sv', 'VILTSPÅR'),
(4, 'en', 'SHOWS'),
(4, 'sv', 'UTSTÄLLNINGAR');

INSERT INTO klass(id, sport) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4);

INSERT INTO localized_klass(klass, language_code, name) VALUES
(1, 'en', 'BEGINNER''S CLASS'),
(1, 'sv', 'STARTKLASS'),
(2, 'en', 'CLASS 1'),
(2, 'sv', 'KLASS 1'),
(3, 'en', 'NOVICE CLASS (MESSAGING)'),
(3, 'sv', 'APPELLKLASS (RAPPORT)'),
(4, 'en', NULL),
(4, 'sv', NULL),
(5, 'en', NULL),
(5, 'sv', NULL);

INSERT INTO competition_result(dog, sport, klass, results) VALUES
(15, 1, 1, '[
    "6 starter, varav...",
    "143,5 poäng (godkänd)",
    "177,5 poäng (uppflytt)",
    "177 poäng (uppflytt)",
    "145 poäng (godkänd)",
    "178 poäng (uppflytt)",
    "LD STARTKLASS"
]'),
(15, 1, 2, '[
    "9 starter, varav...",
    "222,5 poäng (tredjepris)",
    "216,5 poäng (tredjepris)",
    "202 poäng (tredjepris)",
    "225 poäng (andrapris)",
    "244,5 poäng (andrapris)"
]'),
(15, 2, 3, '[
    "3 starter, varav...",
    "153,5 poäng (godkänd)",
    "165 poäng (godkänd)",
    "153,25 poäng (godkänd)"
]'),
(15, 3, 4, '[
    "1 start, varav...",
    "Godkänt anlagsprov"
]'),
(15, 4, 5, '[
    "4 starter, varav...",
    "3 excellent",
    "1 very good"
]'),
(42, 1, 1, '[
    "3 starter, varav...",
    "166,5 poäng (1:a pris)",
    "180,5 poäng (1:a pris)",
    "164,5 poäng (1:a pris)",
    "LD STARTKLASS"
]'),
(42, 2, 3, '[
    "2 starter, varav...",
    "186,5 poäng (uppflyttad)"
]'),
(42, 4, 5, '[
    "1 start, varav...",
    "1 excellent"
]');

INSERT INTO litter(id, father, mother, letter, kennel_name, date_of_birth, inbreeding_coefficient, number_of_males, number_of_females, mentality_index, bph, mh) VALUES
(
    1,
    16,
    15,
    'N',
    'Kadamo',
    '2021-07-21',
    3.3,
    5,
    6,
    NULL, NULL, NULL
),
(
    2,
    NULL,
    15,
    'A',
    NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
);

INSERT INTO localized_litter(litter, language_code, presentation, mentality) VALUES
(1, 'en', '<p>TBA</p>', '<p>TBA</p>'),
(1, 'sv', '<p>TBA</p>', '<p>TBA</p>'),
(2, 'en', '<p>Male has not yet been decided.</p>', '<p>TBA</p>'),
(2, 'sv', '<p>Hane är ännu inte bestämt.</p>', '<p>TBA</p>');

INSERT INTO link(id, dog, litter, url) VALUES
(1, 15, NULL, 'https://hundar.skk.se/hunddata/Hund.aspx?hundid=3282608'),
(2, 15, NULL, 'https://hundar.skk.se/avelsdata/Flikar.aspx?sida=Hund_info&id=3282608'),
(3, 15, NULL, 'https://srrs.org/srrs/rasen/hundar/kadamo-i-am-bagheera'),
(4, 42, NULL, 'https://hundar.skk.se/hunddata/Hund.aspx?hundid=3675416'),
(5, 42, NULL, 'https://hundar.skk.se/avelsdata/Flikar.aspx?sida=Hund_info&id=3675416'),
(6, 42, NULL, 'https://srrs.org/srrs/rasen/hundar/lejonessa-air-happiness');
-- TODO Link to combination (SKK Avelsdata & SRRS).

INSERT INTO localized_link(link, language_code, name) VALUES
(1, 'en', 'SKK Dog Info'),
(1, 'sv', 'SKK Hunddata'),
(2, 'en', 'SKK Breeding Info'),
(2, 'sv', 'SKK Avelsdata'),
(3, 'en', 'SRRS'),
(3, 'sv', 'SRRS'),
(4, 'en', 'SKK Dog Info'),
(4, 'sv', 'SKK Hunddata'),
(5, 'en', 'SKK Breeding Info'),
(5, 'sv', 'SKK Avelsdata'),
(6, 'en', 'SRRS'),
(6, 'sv', 'SRRS');

INSERT INTO offspring(litter_id, dog_id) VALUES
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27);

INSERT INTO post(id, publication_date, pinned) VALUES
(1, '2023-01-01', '0'),
(2, '2023-05-02', '0'),
(3, '2024-05-31', '0'),
(4, '2024-05-31', '1');

INSERT INTO localized_post(post, language_code, caption, content) VALUES
(1, 'en', 'READ ABOUT HEERA', '<p>On May 2, 2018, I brought home my first dog: Kadamo I Am Bagheera. Her name is Heera and my ambition is to compete with her in obedience and working dog trials (mainly messaging).</p><p>If she stays healthy and proves to have a good mentality, we hope to use her in our breeding program in the future.</p><p>Read more about Heera on her own <a href=''./dogs/kadamo_i_am_bagheera''>page</a>.</p>'),
(1, 'sv', 'LÄS OM HEERA', '<p>Den 2 maj 2018 hämtade jag hem min första hund: Kadamo I Am Bagheera. Hon heter Heera och min ambition är att tävla med henne i lydnad och bruks (främst grenen rapport).</p><p>Om hon tillåts vara frisk och visar sig ha en god mentalitet så hoppas vi använda henne i vårt avelsprogram i framtiden.</p><p>Läs mer om Heera på hennes egna <a href=''./dogs/kadamo_i_am_bagheera''>sida</a>.</p>'),
(2, 'en', 'READ ABOUT HAPPY', 'Today - exactly 5 years since I got Heera - I brought home my second RR: Lejonessa Air Of Happiness. Her name is Happy and my ambition is to compete with her in the same sports as Heera, but with an additional focus on messaging.</p><p>If she stays healthy and proves to have a good mentality, we hope to use her in our breeding program in the future.</p><p>Read more about Happy on her own <a href=''./dogs/lejonessa_air_of_happiness''>page</a>.</p>'),
(2, 'sv', 'LÄS OM HAPPY', '<p>Idag - exakt 5 år sedan jag skaffade Heera - hämtade jag hem min andra RR: Lejonessa Air Of Happiness. Hon heter Happy och min ambition är att tävla med henne i samma sporter som Heera, men med ytterligare fokus på bruksgrenen rapport.</p><p>Om hon tillåts vara frisk och visar sig ha en god mentalitet så hoppas vi använda henne i vårt avelsprogram i framtiden.</p><p>Läs mer om Happy på hennes egna <a href=''./dogs/lejonessa_air_of_happiness''>sida</a>.</p>'),
(3, 'en', 'APPROVED KENNEL NAME', '<p>Today - May 31, 2024 - our kennel name Messenger Dog was registered!</p><p>The name is inspired by my favorite sport: messaging! The sport originates from the First World War and the dogs that ran between the bases to deliver messages [1].</p><p>We are looking forward to the kennel''s first litter of puppies! Together we hope to fulfill the dream of working ridgebacks suitable for dog sports. Read more about our breeding goals <a href=''./about_us''>here</a>.</p><cite>[1] <a href=''https://americacomesalive.com/national-mutts -day-july-31-a-brave-and-remarkable-messenger-dog/'' target=''_blank''>World War I and a Remarkable Messenger Dog</a></cite>'),
(3, 'sv', 'GODKÄNT KENNELNAMN', '<p>Idag - 31 maj 2024 - blev vårt kennelnamn Messenger Dog registrerat!</p><p>Namnet är inspirerat efter min favoritgren: bruksgrenen rapport! Messenger Dog är nämligen det engelska ordet för rapporthund. Rapporten härstammar från första världskriget och de hundar som sprang bud mellan baserna [1].</p><p>Vi ser fram emot efter kennelns första valpkull! Tillsammans hoppas vi uppfylla drömmen om arbetande ridgebacks passande för hundsport. Läs mer om våra avelsmål <a href=''./about_us''>här</a>.</p><cite>[1] <a href=''https://americacomesalive.com/national-mutts-day-july-31-a-brave-and-remarkable-messenger-dog/'' target=''_blank''>World War I and a Remarkable Messenger Dog</a></cite>'),
(4, 'en', 'PLANNED LITTER', '<p>We are planning our first litter for spring 2025.</p><p>The plan is to mate Heera. It will be her second and last litter (she already has a litter at kennel Kadamo). Male is not determined but we have a list of interesting males that is still being added to. We are looking for a male with the following characteristics: strong food drive, natural desire to play, fearlessness, curiosity and social confidence. It is also important that the male is around 65 cm in height and weighs a maximum of about 40 kg. We appreciate if the male is qualified in dog sports or is closely related to dogs that are, but it is not a requirement. The mentality and how he matches up with Heera is the most important in our choice. You can read more about Heera on her own <a href=''./dogs/kadamo_i_am_bagheera''>page</a>.</p><p>If you have a male that you think might be interesting or if you are interested in a puppy after Heera, you are welcome to get in touch. If you are seriously interested, we can also set up a meeting.</p>'),
(4, 'sv', 'PLANERAD VALPKULL', '<p>Vi planerar vår första kull till våren 2025.</p><p>Planen är att para Heera. Det blir hennes andra och sista kull (hon har en kull hos kennel Kadamo sedan tidigare). Hane är inte bestämd men vi har en lista med intressanta hanar som fortfarande fylls på. Vi letar efter en hane med följande egenskaper: stark matdrift, naturlig lek- och kamplust, oräddhet, nyfikenhet och social självsäkerhet. Viktigt är också att hanen är ca 65 cm i mankhöjd och väger max ca 40 kg. Vi uppskattar om hanen är meriterad i hundsport eller är nära besläktad med hundar som är det, men det är inget krav. Mentaliteten och hur han matchar med Heera väger tyngst i vårt val. Du kan läsa mer om Heera på hennes egna <a href=''./dogs/kadamo_i_am_bagheera''>sida</a>.</p><p>Om du har en hane som du tror kan vara intressant eller om du är sugen på en valp efter Heera är du välkommen att höra av dig. Om du är seriöst intresserad kan vi också boka in ett tillfälle där du får träffa mig och Heera.</p>');

INSERT INTO congratulations(id, publication_date, dog) VALUES
(1, '2019-03-21', 15),
(2, '2019-04-27', 15),
(3, '2019-12-31', 15),
(4, '2020-09-20', 15),
(5, '2021-12-31', 15),
(6, '2022-05-28', 15),
(7, '2022-12-31', 15),
(8, '2023-12-31', 15),
(9, '2024-03-13', 42),
(10, '2024-04-06', 42),
(11, '2024-05-05', 42);

INSERT INTO localized_congratulations(congratulations, language_code, content) VALUES
(1, 'en', '["Heera has been x-rayed with HD A/A and ED 0/0."]'),
(1, 'sv', '["Heera har friröntgats med HD grad A och ED ua (0)."]'),
(2, 'en', '["Heera now have her mental status on record (mentality description)."]'),
(2, 'sv', '["Heera har numera känd mentalstatus."]'),
(3, 'en', '["Heera placed 5th on the breed club''s obedience ranking."]'),
(3, 'sv', '["Heera placerade sig på 5:e plats på rasklubbens lydnadslista."]'),
(4, 'en', '["Heera now have her mental status on record x 2 (behavior and personality assessment)."]'),
(4, 'sv', '["Heera har genomfört ett mycket väl godkänt BPH."]'),
(5, 'en', '["Heera placed 5th on the breed club''s obedience ranking."]'),
(5, 'sv', '["Heera placerade sig på 5:e plats på rasklubbens lydnadslista."]'),
(6, 'en', '["Heera has been awarded LD STARTKLASS (obedience diploma in the beginner''s class)"]'),
(6, 'sv', '["Heera har meriterats med LD STARTKLASS."]'),
(7, 'en', '[
    "Heera placed 1st on the breed club''s obedience ranking and thus became Obedience Dog of the Year.",
    "Heera placed 1st on the breed club''s working dog ranking and thus became Working Dog of the Year.",
    "Heera has been awarded Working Dog Rookie of the Year by the breed club.",
    "Heera has been awarded Best All-Round Working Ridgeback of the Year by the breed club.",
    "Heera placed 3rd on our local club''s obedience ranking."
]'),
(7, 'sv', '[
    "Heera placerade sig på 1:a plats på rasklubbens lydnadslista och blev därmed Årets Lydnadshund.",
    "Heera placerade sig på 1:a plats på rasklubbens brukslista och blev därmed Årets Brukshund.",
    "Heera har korats till Årets Bruksrookie av rasklubben.",
    "Heera har korats till Årets Bästa Allroundarbetande Ridgeback av rasklubben.",
    "Heera blev 3:e Bästa Lydnadshund på Gnesta-Trosa BK."
]'),
(8, 'en', '[
    "Heera placed 2nd on the breed club''s obedience ranking.",
    "Heera placed 3rd on the breed club''s working dog ranking.",
    "Heera placed 1st on our local club''s obedience ranking and thus became Obedience Dog of the Year."
]'),
(8, 'sv', '[
    "Heera placerade sig på 2:a plats på rasklubbens lydnadslista.",
    "Heera placerade sig på 3:e plats på rasklubbens brukslista.",
    "Heera blev Årets Lydnadshund på Gnesta-Trosa BK."
]'),
(9, 'en', '["Happy has been x-rayed with HD A/A and ED 0/0."]'),
(9, 'sv', '["Happy har friröntgats med HD grad A och ED ua (0)."]'),
(10, 'en', '["Happy has been awarded LD STARTKLASS (obedience diploma in the beginner''s class)."]'),
(10, 'sv', '["Happy har meriterats med LD STARTKLASS."]'),
(11, 'en', '["Happy has been promoted from the beginner''s class in messaging (Working Dog Trials)."]'),
(11, 'sv', '["Happy har blivit uppflyttad från appellklass (rapport) till lägre klass."]');
