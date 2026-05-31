-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 26, 2026 at 09:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_info`
--

CREATE TABLE `car_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `modle` varchar(100) NOT NULL,
  `engine_type` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) NOT NULL,
  `sales` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_info`
--

INSERT INTO `car_info` (`id`, `name`, `modle`, `engine_type`, `category`, `color`, `brand`, `year`, `description`, `value`, `quantity`, `image`, `sales`) VALUES
(1, 'Ibiza', 'FR', 'Petrol', 'Hatchback', 'Desire Red', 'SEAT', 2023, 'Sporty hatchback with agile handling and modern infotainment features.', 21000, 4, 'seat_ibiza_fr.png', 16),
(2, 'Leon', 'Cupra', 'Petrol', 'Hatchback', 'Magnetic Grey', 'SEAT', 2024, 'High-performance hatchback offering sharp styling and a powerful turbocharged engine.', 35000, 2, 'seat_leon_cupra.png', 11),
(3, 'A3 Sedan', 'S-Line', 'Petrol', 'Sedan', 'Mythos Black', 'Audi', 2024, 'Premium compact sedan equipped with a virtual cockpit and sophisticated design.', 38000, 3, 'audi_a3_sline.png', 8),
(4, 'A4', 'Quattro', 'Diesel', 'Sedan', 'Ibis White', 'Audi', 2023, 'Reliable executive sedan featuring legendary all-wheel drive stability and comfort.', 44000, 5, 'audi_a4_quattro.png', 7),
(5, 'Q5', 'S-Line', 'Mild Hybrid', 'SUV', 'Navarra Blue', 'Audi', 2025, 'Luxury mid-size crossover showcasing advanced safety tech and premium leather interior.', 52000, 2, 'audi_q5_sline.png', 13),
(6, 'Golf 8', 'GTI', 'Petrol', 'Hatchback', 'Kings Red', 'Volkswagen', 2024, 'The hot hatch benchmark. Exciting performance combined with everyday practicality.', 36000, 3, 'vw_golf_gti.png', 45),
(7, 'Polo', 'R-Line', 'Petrol', 'Hatchback', 'Smoky Grey', 'Volkswagen', 2023, 'Compact, fuel-efficient city car packed with smart driver assistance features.', 22000, 6, 'vw_polo_rline.png', 33),
(8, 'Tiguan', 'Elegance', 'Diesel', 'SUV', 'Deep Black', 'Volkswagen', 2024, 'Spacious family SUV featuring a panoramic sunroof and smooth highway cruising.', 41000, 4, 'vw_tiguan_elegance.png', 30),
(9, 'Passat', 'Business', 'Diesel', 'Sedan', 'Reflex Silver', 'Volkswagen', 2022, 'Long-distance highway cruiser known for its massive cabin space and fuel efficiency.', 29000, 2, 'vw_passat_biz.png', 0),
(10, '208', 'GT Line', 'Petrol', 'Hatchback', 'Faro Yellow', 'Peugeot', 2024, 'Striking French hatchback utilizing the distinctive 3D i-Cockpit layout.', 19500, 7, 'peugeot_208_gt.png', 12),
(11, '308', 'Allure', 'Plug-in Hybrid', 'Hatchback', 'Olivine Green', 'Peugeot', 2025, 'Futuristic design boasting low emissions and a premium eco-friendly cabin.', 32000, 3, 'peugeot_308_allure.png', 10),
(12, '3008', 'GT', 'Diesel', 'SUV', 'Celebes Blue', 'Peugeot', 2024, 'Highly popular compact crossover blending aggressive styling with premium comfort.', 38500, 4, 'peugeot_3008_gt.png', 15),
(13, 'Clio 5', 'RS Line', 'Petrol', 'Hatchback', 'Iron Blue', 'Renault', 2023, 'Sporty looking city runabout with class-leading trunk capacity and smart tech.', 18000, 8, 'renault_clio5_rs.png', 47),
(14, 'Megane 4', 'Intens', 'Diesel', 'Sedan', 'Titanium Grey', 'Renault', 2022, 'Elegant sedan with smooth ride quality and practical modern conveniences.', 23000, 4, 'renault_megane_intens.png', 36),
(15, 'Megane E-Tech', 'EV60', 'Electric', 'Hatchback', 'Glacier White', 'Renault', 2025, 'Fully electric compact vehicle bringing instant torque and an advanced Android OS dashboard.', 42000, 2, 'renault_megane_etech.png', 39),
(16, 'Yaris', 'Icon', 'Hybrid', 'Hatchback', 'Pure White', 'Toyota', 2023, 'Unbeatable urban fuel economy backed by renowned mechanical reliability.', 21500, 6, 'toyota_yaris_hybrid.png', 35),
(17, 'Corolla', 'GR Sport', 'Hybrid', 'Sedan', 'Dynamic Grey', 'Toyota', 2024, 'Sharp visual upgrades applied to the worlds most reliable hybrid sedan.', 28000, 5, 'toyota_corolla_gr.png', 10),
(18, 'RAV4', 'Adventure', 'Hybrid', 'SUV', 'Urban Khaki', 'Toyota', 2024, 'Rugged hybrid mid-size SUV ready for weekend outdoor trips.', 43000, 1, 'toyota_rav4_adv.png', 49),
(19, 'Hilux', 'Invincible', 'Diesel', 'Pickup', 'Nebula Blue', 'Toyota', 2023, 'Legendary indestructible double-cabin pickup truck for heavy-duty work.', 47000, 2, 'toyota_hilux_inv.png', 8),
(20, 'C-Class', 'AMG Line', 'Mild Hybrid', 'Sedan', 'Selenite Grey', 'Mercedes-Benz', 2025, 'Mini S-Class executive luxury featuring high-end screens and dynamic ambient lighting.', 58000, 2, 'mercedes_c_amg.png', 47),
(21, 'E-Class', 'Exclusive', 'Diesel', 'Sedan', 'Obsidian Black', 'Mercedes-Benz', 2024, 'The pinnacle of business comfort, whisper-quiet highway cabin, air suspension.', 67000, 1, 'mercedes_e_class.png', 8),
(22, 'G-Class', 'G63 AMG', 'Petrol', 'SUV', 'Matte Monza Grey', 'Mercedes-Benz', 2024, 'Iconic boxy luxury off-roader driven by a monstrous twin-turbo V8 engine.', 185000, 1, 'mercedes_g63.png', 0),
(23, 'Series 1', 'M Sport', 'Petrol', 'Hatchback', 'Misano Blue', 'BMW', 2024, 'Premium hatchback with aggressive M-chassis tuning for sharp corners.', 34500, 3, 'bmw_1series_m.png', 30),
(24, 'Series 3', '320d', 'Diesel', 'Sedan', 'Mineral Grey', 'BMW', 2024, 'The ultimate driving machine balancing perfect weight distribution and long-range economy.', 46000, 4, 'bmw_320d.png', 49),
(25, 'Series 5', '530i', 'Petrol', 'Sedan', 'Alpine White', 'BMW', 2025, 'Spacious luxury sedan boasting high-tech semi-autonomous driving features.', 62000, 2, 'bmw_530i.png', 1),
(26, 'X5', 'xDrive40i', 'Mild Hybrid', 'SUV', 'Carbon Black', 'BMW', 2025, 'Power meets versatility in this premium high-end family SUV.', 75000, 2, 'bmw_x5_xdrive.png', 12),
(27, 'Tucson', 'N-Line', 'Petrol', 'SUV', 'Shadow Grey', 'Hyundai', 2024, 'Parametric hidden jewel lighting highlights this aggressive, geometric SUV layout.', 33000, 5, 'hyundai_tucson_nline.png', 6),
(28, 'i30', 'N', 'Petrol', 'Hatchback', 'Performance Blue', 'Hyundai', 2023, 'Track-ready hot hatchback delivering high performance tuning straight from the factory.', 39000, 2, 'hyundai_i30n.png', 47),
(29, 'Elantra', 'Luxury', 'Petrol', 'Sedan', 'Intense Blue', 'Hyundai', 2024, 'Futuristic sharp sedan offering comfortable commuting and high value for money.', 25000, 4, 'hyundai_elantra.png', 11),
(30, 'Sportage', 'GT-Line', 'Diesel', 'SUV', 'Experience Green', 'Kia', 2024, 'Striking boomerang LED headlamps frame a spacious, ultra-modern curved dual display cabin.', 34000, 4, 'kia_sportage_gt.png', 20),
(31, 'Rio', 'EX', 'Petrol', 'Hatchback', 'Silky Silver', 'Kia', 2022, 'Budget-friendly hatchback built for easy city parking and low-cost maintenance.', 16500, 6, 'kia_rio_ex.png', 13),
(32, 'Sorento', 'SX Pack', 'Plug-in Hybrid', 'SUV', 'Mineral Blue', 'Kia', 2025, 'Full-size 7-seater eco-friendly SUV loaded with family comfort configurations.', 49000, 2, 'kia_sorento_sx.png', 6),
(33, 'Civic', 'Type R', 'Petrol', 'Hatchback', 'Championship White', 'Honda', 2024, 'High-revving manual sports hatchback engineered with elite track performance genetics.', 45000, 1, 'honda_civic_typer.png', 45),
(34, 'Civic', 'Sport', 'Hybrid', 'Hatchback', 'Sonic Grey', 'Honda', 2024, 'Clever self-charging system that operates mostly on its smooth electric traction motor.', 31000, 3, 'honda_civic_hybrid.png', 2),
(35, 'CR-V', 'EX-L', 'Hybrid', 'SUV', 'Crystal Black', 'Honda', 2025, 'Renowned family vehicle focusing on premium interior visibility and massive storage.', 40000, 3, 'honda_crv_exl.png', 29),
(36, 'Model 3', ' Highland', 'Electric', 'Sedan', 'Ultra Red', 'Tesla', 2024, 'Streamlined modern electric vehicle offering minimalist cabin controls and superb range.', 41000, 4, 'tesla_model3_hl.png', 38),
(37, 'Model Y', 'Performance', 'Electric', 'SUV', 'Solid Black', 'Tesla', 2025, 'Blistering acceleration matched with expansive panoramic structural visibility.', 54000, 3, 'tesla_modely_perf.png', 50),
(38, 'Duster', 'Journey', 'LPG / Petrol', 'SUV', 'Arizona Orange', 'Dacia', 2024, 'Unbeatably priced robust SUV providing great ground clearance and eco-gas options.', 19500, 8, 'dacia_duster_jny.png', 37),
(39, 'Sandero Stepway', 'Extreme', 'Petrol', 'Hatchback', 'Cedar Green', 'Dacia', 2024, 'Cross-styled city hatchback equipped with modular clever roof bar elements.', 16000, 9, 'dacia_sandero_step.png', 34),
(40, 'Octavia', 'RS', 'Petrol', 'Sedan', 'Race Blue', 'Skoda', 2024, 'The ultimate value champion blending Golf GTI speed with massive executive trunk sizing.', 38000, 2, 'skoda_octavia_rs.png', 7),
(41, 'Superb', 'Laurin & Klement', 'Diesel', 'Sedan', 'Magnetic Brown', 'Skoda', 2025, 'Luxury flagship sedan delivering rear-seat legroom that rival premium tier classes.', 48000, 2, 'skoda_superb_lk.png', 39),
(42, 'Fabia', 'Monte Carlo', 'Petrol', 'Hatchback', 'Velvet Red', 'Skoda', 2023, 'Sleek dark trim accents add track character to a highly efficient compact footprint.', 21000, 4, 'skoda_fabia_mc.png', 20),
(43, 'CX-5', 'Homura', 'Petrol', 'SUV', 'Soul Red Crystal', 'Mazda', 2024, 'Gorgeous paint styling highlights premium dynamic steering responses.', 35500, 3, 'mazda_cx5_homura.png', 34),
(44, 'Mazda 3', 'Exclusive-Line', 'Mild Hybrid', 'Hatchback', 'Polymetal Grey', 'Mazda', 2024, 'Breathtaking minimalist interior craft matches quiet, sound-insulated highway cabins.', 27000, 4, 'mazda3_exclusive.png', 8),
(45, 'Swift', 'Sport', 'Mild Hybrid', 'Hatchback', 'Champion Yellow', 'Suzuki', 2023, 'Featherweight hot hatch dynamics delivering pure fun at low operating budgets.', 23000, 5, 'suzuki_swift_sport.png', 40),
(46, 'Vitara', 'Privilege', 'Hybrid', 'SUV', 'Galactic Grey', 'Suzuki', 2024, 'Compact, rugged all-wheel-drive system handling deep slippery terrain easily.', 26500, 4, 'suzuki_vitara_priv.png', 25),
(47, 'Focus', 'ST', 'Petrol', 'Hatchback', 'Mean Green', 'Ford', 2024, 'Raw mechanical feedback makes this manual sports hatchback deeply engaging.', 42000, 2, 'ford_focus_st.png', 6),
(48, 'Kuga', 'ST-Line', 'Plug-in Hybrid', 'SUV', 'Lucid Red', 'Ford', 2024, 'Highly efficient daily electric battery commuting capability for busy families.', 39500, 3, 'ford_kuga_stline.png', 7),
(49, 'Ranger', 'Wildtrak', 'Diesel', 'Pickup', 'Cyber Orange', 'Ford', 2024, 'Dominant truck design managing complex site jobs while ensuring high luxury comfort.', 51000, 2, 'ford_ranger_wild.png', 15),
(50, 'Mustang', 'Dark Horse', 'Petrol', 'Coupe', 'Blue Ember', 'Ford', 2024, 'Raw naturally aspirated V8 muscle tuned for ultimate track performance sound.', 65000, 1, 'ford_mustang_dh.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `done` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `car_id`, `quantity`, `done`) VALUES
(3, 2, 48, 0, 1),
(4, 2, 48, 0, 1),
(20, 2, 18, 1, 0),
(21, 2, 18, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_data`
--

CREATE TABLE `users_data` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birtheday` date NOT NULL,
  `country` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `credit` int(11) NOT NULL DEFAULT 250000,
  `register_data` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_data`
--

INSERT INTO `users_data` (`id`, `user_name`, `first_name`, `last_name`, `birtheday`, `country`, `email`, `password`, `role`, `credit`, `register_data`) VALUES
(2, 'admin', '--', '--', '2026-05-25', 'alg', 'admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 0, 0, '2026-05-25'),
(3, 'user1', 'user', 'user', '2026-05-07', 'alg', 'user1@gmail.com', '0a041b9462caa4a31bac3567e0b6e6fd9100787db2ab433d96f6d178cabfce90', 1, 250000, '2026-05-25'),
(4, 'user3', 'as', 'asas', '2026-05-05', 'alg', 'user3@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1, 250000, '2026-05-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_info`
--
ALTER TABLE `car_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`car_id`),
  ADD KEY `CAR_ID` (`car_id`);

--
-- Indexes for table `users_data`
--
ALTER TABLE `users_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_info`
--
ALTER TABLE `car_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_data`
--
ALTER TABLE `users_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `CAR_ID` FOREIGN KEY (`car_id`) REFERENCES `car_info` (`id`),
  ADD CONSTRAINT `USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
