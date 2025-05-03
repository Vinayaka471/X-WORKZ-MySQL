CREATE TABLE KarnatakaDistricts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    district VARCHAR(50),
    population INT,
    literacy_rate DECIMAL(5,2),
    area_km2 DECIMAL(10,2)
);

INSERT INTO KarnatakaDistricts (district, population, literacy_rate, area_km2) VALUES
('Bagalkot', 1890826, 79.32, 6582),
('Ballari', 2451723, 67.85, 8447),
('Belagavi', 4778439, 75.42, 13415),
('Bengaluru Urban', 9621551, 88.56, 2196),
('Bengaluru Rural', 990923, 77.93, 2292),
('Bidar', 1703300, 74.13, 5448),
('Chamarajanagar', 1024323, 61.12, 5687),
('Chikkaballapur', 1253508, 70.63, 4244),
('Chikkamagaluru', 1137755, 79.25, 7201),
('Chitradurga', 1660378, 73.91, 8404),
('Dakshina Kannada', 2084706, 88.57, 4861),
('Davanagere', 1945492, 75.12, 5924),
('Dharwad', 1895008, 80.30, 4266),
('Gadag', 1065235, 75.25, 4656),
('Kalaburagi', 2564913, 71.66, 10954),
('Hassan', 1778981, 79.74, 6842),
('Haveri', 1597392, 76.37, 4848),
('Kodagu', 554762, 83.26, 4102),
('Kolar', 1540231, 74.65, 3969),
('Koppal', 1392872, 68.95, 7187),
('Mandya', 1805769, 70.40, 4961),
('Mysuru', 3001599, 72.56, 6307),
('Raichur', 1928812, 58.12, 6839),
('Ramanagara', 1082530, 76.95, 3561),
('Shivamogga', 1752754, 80.46, 8477),
('Tumakuru', 2678986, 74.63, 10600),
('Udupi', 1171464, 86.24, 3579),
('Uttara Kannada', 1457074, 81.73, 10291),
('Vijayapura', 2170712, 65.83, 10492),
('Yadgir', 1174271, 52.65, 5285),
('Chikkaballapur', 1295637, 72.30, 4245),
('Dharwad', 1938427, 79.88, 4270),
('Bagalkot', 1918562, 78.75, 6590),
('Ballari', 2507641, 68.15, 8451),
('Belagavi', 4809112, 76.21, 13422),
('Bengaluru Urban', 9750135, 89.50, 2201),
('Bidar', 1735256, 74.83, 5453),
('Chamarajanagar', 1042365, 62.45, 5691),
('Chikkamagaluru', 1163458, 80.12, 7207),
('Chitradurga', 1698945, 74.35, 8410),
('Davanagere', 1976502, 76.25, 5929),
('Hassan', 1817854, 80.30, 6847),
('Haveri', 1624637, 77.10, 4852);

SELECT * FROM KarnatakaDistricts;

UPDATE KarnatakaDistricts
SET population = 9700000
WHERE district = 'Bengaluru Urban';

DELETE FROM KarnatakaDistricts
WHERE district = 'Yadgir';

RENAME TABLE KarnatakaDistricts TO KarnatakaStateData;