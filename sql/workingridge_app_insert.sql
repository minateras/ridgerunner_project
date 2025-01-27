INSERT INTO date2(date) VALUES
(CURDATE());

INSERT INTO sport2(id, sport, parent) VALUES
(1, 'Agility', NULL),
(2, 'Freestyle', NULL),
(3, 'Heelwork to Music (HtM)', NULL),
-- (4, 'IGP', NULL),
(5, 'Lydnad', NULL),
(6, 'Bruks', NULL),
-- (7, 'Patrull', 6),
(8, 'Rapport', 6),
-- (9, 'Skydd', 6),
(10, 'Spår', 6),
(11, 'Sök', 6),
(12, 'Nose Work (NW)', NULL),
(13, 'Rallylydnad', NULL),
(14, 'Viltspår', NULL);

INSERT INTO klass2(id, klass, sport) VALUES
(1, 'Agilityklass 1', 1),
(2, 'Agilityklass 2', 1),
(3, 'Agilityklass 3', 1),
(4, 'Hoppklass 1', 1),
(5, 'Hoppklass 2', 1),
(6, 'Hoppklass 3', 1),
(7, 'Klass I', 2),
(8, 'Klass II', 2),
(9, 'Klass III', 2),
(10, 'Klass I', 3),
(11, 'Klass II', 3),
(12, 'Klass III', 3),
-- (13, 'IGP I', 4),
-- (14, 'IGP II', 4),
-- (15, 'IGP III', 4),
(16, 'Startklass', 5),
(17, 'Klass 1', 5),
(18, 'Klass 2', 5),
(19, 'Klass 3', 5),
-- (20, 'Appellklass', 7),
-- (21, 'Lägre klass', 7),
-- (22, 'Högre klass', 7),
-- (23, 'Elitklass', 7),
(24, 'Appellklass', 8),
(25, 'Lägre klass', 8),
(26, 'Högre klass', 8),
(27, 'Elitklass', 8),
-- (28, 'Lägre klass', 9),
-- (29, 'Högre klass', 9),
-- (30, 'Elitklass', 9),
(31, 'Appellklass', 10),
(32, 'Lägre klass', 10),
(33, 'Högre klass', 10),
(34, 'Elitklass', 10),
(35, 'Appellklass', 11),
(36, 'Lägre klass', 11),
(37, 'Högre klass', 11),
(38, 'Elitklass', 11),
(39, 'Klass 1', 12),
(40, 'Klass 2', 12),
(41, 'Klass 3', 12),
(42, 'Elitklass', 12),
(43, 'Nybörjarklass', 13),
(44, 'Fortsättningsklass', 13),
(45, 'Avancerad klass', 13),
(46, 'Mästarklass', 13),
(47, 'Anlagsklass', 14),
(48, 'Öppen klass', 14);

INSERT INTO title2(title, name, sport, klass) VALUES
-- AGILITY
('AgD I', 'Agilitydiplom klass 1', NULL, 1),
('AgD II', 'Agilitydiplom klass 2', NULL, 2),
('AgD III', 'Agilitydiplom klass 3', NULL, 3),
('AgHD I', 'Hoppdiplom klass 1', NULL, 4),
('AgHD II', 'Hoppdiplom klass 2', NULL, 5),
('AgHD III', 'Hoppdiplom klass 3', NULL, 6),
('SE AgCh', 'Svensk Agilitychampion', NULL, 3),
('SE Ag(Hopp)Ch', 'Svensk Hoppchampion', NULL, 6),
-- FREESTYLE
('FD I', 'Freestylediplom klass 1', NULL, 7),
('FD II', 'Freestylediplom klass 2', NULL, 8),
('FD III', 'Freestylediplom klass 3', NULL, 9),
('SE FreeCh', 'Svensk Freestylechampion', NULL, 9),
-- HTM
('HtM I', 'Heelwork to Music-diplom klass 1', NULL, 10),
('HtM II', 'Heelwork to Music-diplom klass 2', NULL, 11),
('HtM III', 'Heelwork to Music-diplom klass 3', NULL, 12),
('SE HtMCh', 'Svensk Heelwork to Music-champion', NULL, 12),
-- IGP
-- ('IGP 1', 'IGP-diplom klass 1', NULL, 13),
-- ('IGP 2', 'IGP-diplom klass 2', NULL, 14),
-- ('IGP 3', 'IGP-diplom klass 3', NULL, 15),
-- ('SE B(IGP)Ch', 'Svensk IGP-champion', NULL, 15),
-- LYDNAD
('LD STARTKLASS', 'Lydnadsdiplom startklass', NULL, 16),
('LD 1', 'Lydnadsdiplom klass 1', NULL, 17),
('LD 2', 'Lydnadsdiplom klass 2', NULL, 18),
('LD 3', 'Lydnadsdiplom klass 3', NULL, 19),
('LPI', 'Lydnadsdiplom gamla klass 1', NULL, 16), -- OLD
('LPII', 'Lydnadsdiplom gamla klass 2', NULL, 17), -- OLD
('LPIII', 'Lydnadsdiplom gamla klass 3', NULL, 18), -- OLD
('LPELIT', 'Lydnadsdiplom gamla elitklass', NULL, 19), -- OLD
('SE LCh', 'Svensk Lydnadschampion', NULL, 19),
-- BRUKS
('SE BCh', 'Svensk Brukschampion', 6, NULL),
-- PATRULL
-- ('Patrh I', 'Patrulldiplom lägre klass', NULL, 21),
-- ('Patrh II', 'Patrulldiplom högre klass', NULL, 22),
-- ('Patrh III', 'Patrulldiplom elitklass', NULL, 23),
-- ('SE PtrhCh', 'Svensk Patrullchampion', NULL, 23),
-- RAPPORT
('Rph I', 'Rapportdiplom lägre klass', NULL, 25),
('Rph II', 'Rapportdiplom högre klass', NULL, 26),
('Rph III', 'Rapportdiplom elitklass', NULL, 27),
('SE RpCh', 'Svensk Rapportchampion', NULL, 27),
-- SKYDD
-- ('Skh I', 'Skyddsdiplom lägre klass', NULL, 28),
-- ('Skh II', 'Skyddsdiplom högre klass', NULL, 29),
-- ('Skh III', 'Skyddsdiplom elitklass', NULL, 30),
-- ('SE SkCh', 'Svensk Skyddschampion', NULL, 30),
-- SPÅR
('Sph I', 'Spårdiplom lägre klass', NULL, 32),
('Sph II', 'Spårdiplom högre klass', NULL, 33),
('Sph III', 'Spårdiplom elitklass', NULL, 34),
('SE SpCh', 'Svensk Spårchampion', NULL, 34),
-- SÖK
('Sökh I', 'Sökdiplom lägre klass', NULL, 36),
('Sökh II', 'Sökdiplom högre klass', NULL, 37),
('Sökh III', 'Sökdiplom elitklass', NULL, 38),
('SE SöCh', 'Svensk Sökchampion', NULL, 38),
-- NW
('NW 1', 'Nose Work-diplom klass 1', NULL, 39),
('NW 2', 'Nose Work-diplom klass 2', NULL, 40),
('NW 3', 'Nose Work-diplom klass 3', NULL, 41),
('NW Elit', 'Nose Work-diplom elitklass', NULL, 42),
('SE NWCh', 'Svensk Nose Work-champion', NULL, 42),
-- RALLYLYDNAD
('RLD N', 'Rallylydnadsdiplom nybörjarklass', NULL, 43),
('RLD F', 'Rallylydnadsdiplom fortsättningsklass', NULL, 44),
('RLD A', 'Rallylydnadsdiplom avancerad klass', NULL, 45),
('RLD M', 'Rallylydnadsdiplom mästarklass', NULL, 46),
('SE RallyCh', 'Svensk Rallylydnadschampion', NULL, 46),
-- VILTSPÅR
('DK VCh', 'Dansk Viltspårschampion', NULL, 48),
('FI VCh', 'Finsk Viltspårschampion', NULL, 48),
('NO VCh', 'Norsk Viltspårschampion', NULL, 48),
('SE VCh', 'Svensk Viltspårschampion', NULL, 48),
('NORD VCh', 'Nordisk Viltspårschampion', NULL, 48);
