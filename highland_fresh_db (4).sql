-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2025 at 02:52 AM
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
-- Database: `highland_fresh_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `region` varchar(100) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1,
  `postal_code_pattern` varchar(20) DEFAULT NULL COMMENT 'Common postal code pattern for this city',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `region`, `country_id`, `postal_code_pattern`, `is_active`, `created_at`) VALUES
(1, 'Manila', 'NCR', 1, '1000-1099', 1, '2025-08-01 18:01:04'),
(2, 'Quezon City', 'NCR', 1, '1100-1199', 1, '2025-08-01 18:01:04'),
(3, 'Makati City', 'NCR', 1, '1200-1299', 1, '2025-08-01 18:01:04'),
(4, 'Pasig City', 'NCR', 1, '1600-1699', 1, '2025-08-01 18:01:04'),
(5, 'Taguig City', 'NCR', 1, '1630-1639', 1, '2025-08-01 18:01:04'),
(6, 'Marikina City', 'NCR', 1, '1800-1899', 1, '2025-08-01 18:01:04'),
(7, 'Las Piñas City', 'NCR', 1, '1740-1749', 1, '2025-08-01 18:01:04'),
(8, 'Muntinlupa City', 'NCR', 1, '1770-1789', 1, '2025-08-01 18:01:04'),
(9, 'Parañaque City', 'NCR', 1, '1700-1719', 1, '2025-08-01 18:01:04'),
(10, 'Pasay City', 'NCR', 1, '1300-1309', 1, '2025-08-01 18:01:04'),
(11, 'Caloocan City', 'NCR', 1, '1400-1499', 1, '2025-08-01 18:01:04'),
(12, 'Malabon City', 'NCR', 1, '1470-1479', 1, '2025-08-01 18:01:04'),
(13, 'Navotas City', 'NCR', 1, '1485', 1, '2025-08-01 18:01:04'),
(14, 'Valenzuela City', 'NCR', 1, '1440-1449', 1, '2025-08-01 18:01:04'),
(15, 'San Juan City', 'NCR', 1, '1500-1509', 1, '2025-08-01 18:01:04'),
(16, 'Mandaluyong City', 'NCR', 1, '1550-1559', 1, '2025-08-01 18:01:04'),
(17, 'Cebu City', 'Central Visayas', 1, '6000', 1, '2025-08-01 18:01:04'),
(18, 'Davao City', 'Davao Region', 1, '8000', 1, '2025-08-01 18:01:04'),
(19, 'Antipolo City', 'CALABARZON', 1, '1870', 1, '2025-08-01 18:01:04'),
(20, 'Cagayan de Oro', 'Northern Mindanao', 1, '9000', 1, '2025-08-01 18:01:04'),
(21, 'Zamboanga City', 'Zamboanga Peninsula', 1, '7000', 1, '2025-08-01 18:01:04'),
(22, 'Iloilo City', 'Western Visayas', 1, '5000', 1, '2025-08-01 18:01:04'),
(23, 'Bacolod City', 'Western Visayas', 1, '6100', 1, '2025-08-01 18:01:04'),
(24, 'General Santos', 'SOCCSKSARGEN', 1, '9500', 1, '2025-08-01 18:01:04'),
(25, 'Baguio City', 'Cordillera Administrative Region', 1, '2600', 1, '2025-08-01 18:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_code` varchar(3) NOT NULL COMMENT 'ISO 3166-1 alpha-3 code',
  `country_name` varchar(100) NOT NULL,
  `phone_prefix` varchar(10) NOT NULL COMMENT 'International dialing code',
  `currency_code` varchar(3) NOT NULL COMMENT 'ISO 4217 currency code',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_code`, `country_name`, `phone_prefix`, `currency_code`, `is_active`, `created_at`) VALUES
(1, 'PHL', 'Philippines', '+63', 'PHP', 1, '2025-08-01 18:01:03'),
(2, 'USA', 'United States', '+1', 'USD', 1, '2025-08-01 18:01:03'),
(3, 'CAN', 'Canada', '+1', 'CAD', 1, '2025-08-01 18:01:03'),
(4, 'JPN', 'Japan', '+81', 'JPY', 1, '2025-08-01 18:01:03'),
(5, 'SGP', 'Singapore', '+65', 'SGD', 1, '2025-08-01 18:01:03'),
(6, 'HKG', 'Hong Kong', '+852', 'HKD', 1, '2025-08-01 18:01:03'),
(7, 'TWN', 'Taiwan', '+886', 'TWD', 1, '2025-08-01 18:01:03'),
(8, 'KOR', 'South Korea', '+82', 'KRW', 1, '2025-08-01 18:01:03'),
(9, 'CHN', 'China', '+86', 'CNY', 1, '2025-08-01 18:01:03'),
(10, 'THA', 'Thailand', '+66', 'THB', 1, '2025-08-01 18:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `highland_fresh_branches`
--

CREATE TABLE `highland_fresh_branches` (
  `branch_id` int(11) NOT NULL,
  `branch_code` varchar(10) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `branch_type` enum('Processing Plant','Milk Bar','Retail Outlet','Distribution Center','Cooperative Office') NOT NULL DEFAULT 'Milk Bar',
  `address` text DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `manager_user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `operating_hours` varchar(100) DEFAULT NULL,
  `cold_storage_capacity` decimal(10,2) DEFAULT NULL COMMENT 'Liters capacity for dairy products',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highland_fresh_branches`
--

INSERT INTO `highland_fresh_branches` (`branch_id`, `branch_code`, `branch_name`, `branch_type`, `address`, `city_name`, `phone_number`, `manager_user_id`, `is_active`, `operating_hours`, `cold_storage_capacity`, `created_at`, `updated_at`) VALUES
(1, 'HF-PLANT', 'Highland Fresh Processing Plant', 'Processing Plant', 'El Salvador City, Misamis Oriental', 'El Salvador', '+63-88-123-4567', NULL, 1, '24/7 Operations', 5000.00, '2025-08-01 18:01:03', '2025-08-01 18:01:03'),
(2, 'HF-CDO01', 'Highland Fresh Milk Bar - Gusa', 'Milk Bar', 'Gusa, Cagayan de Oro City', 'Cagayan de Oro', '+63-88-234-5678', NULL, 1, '6:00 AM - 10:00 PM', 200.00, '2025-08-01 18:01:03', '2025-08-01 18:01:03'),
(3, 'HF-CDO02', 'Highland Fresh Milk Bar - Divisoria', 'Milk Bar', 'Divisoria, Cagayan de Oro City', 'Cagayan de Oro', '+63-88-345-6789', NULL, 1, '6:00 AM - 9:00 PM', 150.00, '2025-08-01 18:01:03', '2025-08-01 18:01:03'),
(4, 'HF-BUK01', 'Highland Fresh Retail - Malaybalay', 'Retail Outlet', 'Malaybalay City, Bukidnon', 'Malaybalay', '+63-88-456-7890', NULL, 1, '7:00 AM - 7:00 PM', 100.00, '2025-08-01 18:01:03', '2025-08-01 18:01:03'),
(5, 'HF-COOP', 'NMFDC Cooperative Office', 'Cooperative Office', 'Cagayan de Oro City', 'Cagayan de Oro', '+63-88-567-8901', NULL, 1, '8:00 AM - 5:00 PM', 0.00, '2025-08-01 18:01:03', '2025-08-01 18:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_adjustments`
--

CREATE TABLE `inventory_adjustments` (
  `adjustment_id` int(11) NOT NULL,
  `adjustment_number` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `adjustment_type` enum('Manual','Sale','Return','Purchase','Damage','Expiry','Theft','Count') NOT NULL,
  `quantity_before` int(11) NOT NULL,
  `quantity_change` int(11) NOT NULL COMMENT 'Positive for increase, negative for decrease',
  `quantity_after` int(11) NOT NULL,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `total_value_change` decimal(10,2) GENERATED ALWAYS AS (`quantity_change` * `unit_cost`) STORED,
  `reason` varchar(255) NOT NULL,
  `reference_id` int(11) DEFAULT NULL COMMENT 'Reference to sale_id, return_id, po_id, etc.',
  `reference_type` enum('Sale','Return','Purchase','Manual') DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL COMMENT 'Manager/Admin who approved the adjustment',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_adjustments`
--

INSERT INTO `inventory_adjustments` (`adjustment_id`, `adjustment_number`, `product_id`, `user_id`, `adjustment_type`, `quantity_before`, `quantity_change`, `quantity_after`, `unit_cost`, `reason`, `reference_id`, `reference_type`, `notes`, `approved_by`, `created_at`) VALUES
(1, 'ADJ20250001', 3, 1, 'Return', 50, 1, 51, 23.00, 'Customer Return - Highland Fresh Milk 1L', 2, 'Return', NULL, 1, '2025-08-16 04:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `milk_deliveries`
--

CREATE TABLE `milk_deliveries` (
  `delivery_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_time` time NOT NULL,
  `quantity_liters` decimal(10,2) NOT NULL,
  `quality_grade` enum('Grade A','Grade B','Grade C') NOT NULL DEFAULT 'Grade A',
  `temperature_celsius` decimal(4,1) DEFAULT NULL COMMENT 'Temperature at delivery',
  `fat_content_percentage` decimal(4,2) DEFAULT NULL,
  `protein_content_percentage` decimal(4,2) DEFAULT NULL,
  `bacterial_count` int(11) DEFAULT NULL COMMENT 'Bacterial count per ml',
  `ph_level` decimal(3,2) DEFAULT NULL,
  `specific_gravity` decimal(5,4) DEFAULT NULL,
  `delivery_truck_plate` varchar(20) DEFAULT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `received_by_user_id` int(11) DEFAULT NULL,
  `quality_check_passed` tinyint(1) DEFAULT 1,
  `quality_notes` text DEFAULT NULL,
  `batch_number` varchar(50) DEFAULT NULL,
  `storage_tank_assigned` varchar(20) DEFAULT NULL,
  `unit_price_per_liter` decimal(8,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `payment_status` enum('Pending','Paid','Partially Paid','Disputed') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `milk_deliveries`
--

INSERT INTO `milk_deliveries` (`delivery_id`, `supplier_id`, `delivery_date`, `delivery_time`, `quantity_liters`, `quality_grade`, `temperature_celsius`, `fat_content_percentage`, `protein_content_percentage`, `bacterial_count`, `ph_level`, `specific_gravity`, `delivery_truck_plate`, `driver_name`, `received_by_user_id`, `quality_check_passed`, `quality_notes`, `batch_number`, `storage_tank_assigned`, `unit_price_per_liter`, `total_amount`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-08-16', '06:30:00', 800.00, 'Grade A', 4.2, 3.25, 3.10, 15000, 6.70, 1.0310, 'ABC-1234', 'Miguel Santos', 18, 1, 'Excellent quality milk from DDC morning collection', 'DDC-20250816-001', 'Tank-A1', 22.50, 18000.00, 'Pending', '2025-08-16 06:45:00', '2025-08-16 06:45:00'),
(2, 2, '2025-08-16', '07:15:00', 600.00, 'Grade A', 4.5, 3.30, 3.15, 12000, 6.65, 1.0315, 'DEF-5678', 'Rosa Dela Cruz', 18, 1, 'Good quality Holstein-Sahiwal milk', 'MODC-20250816-001', 'Tank-A2', 22.50, 13500.00, 'Pending', '2025-08-16 07:30:00', '2025-08-16 07:30:00'),
(3, 3, '2025-08-16', '08:00:00', 450.00, 'Grade A', 4.1, 3.20, 3.05, 18000, 6.75, 1.0305, 'GHI-9012', 'Carlos Reyes', 18, 1, 'Fresh morning collection from CDO area', 'CDFA-20250816-001', 'Tank-B1', 22.50, 10125.00, 'Pending', '2025-08-16 08:15:00', '2025-08-16 08:15:00'),
(4, 4, '2025-08-16', '09:30:00', 120.00, 'Grade A', 4.3, 3.35, 3.20, 10000, 6.68, 1.0320, 'JKL-3456', 'Pedro Santos Jr.', 18, 1, 'Small farm direct delivery - premium Holstein-Jersey milk', 'SDF-20250816-001', 'Tank-B2', 25.00, 3000.00, 'Pending', '2025-08-16 09:45:00', '2025-08-16 09:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `method_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `requires_change` tinyint(1) DEFAULT 0 COMMENT 'Whether this payment method can provide change',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `method_name`, `description`, `is_active`, `requires_change`, `created_at`) VALUES
(1, 'Cash', 'Cash payment', 1, 1, '2025-08-01 17:58:26'),
(2, 'Credit Card', 'Credit card payment', 1, 0, '2025-08-01 17:58:26'),
(3, 'Debit Card', 'Debit card payment', 1, 0, '2025-08-01 17:58:26'),
(4, 'GCash', 'GCash mobile payment', 1, 0, '2025-08-01 17:58:26'),
(5, 'Maya', 'Maya (formerly PayMaya) payment', 1, 0, '2025-08-01 17:58:26'),
(6, 'Bank Transfer', 'Bank transfer payment', 1, 0, '2025-08-01 17:58:26'),
(7, 'Check', 'Check payment', 1, 0, '2025-08-01 17:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `payment_term_id` int(11) NOT NULL,
  `term_code` varchar(20) NOT NULL COMMENT 'Short code like NET30, NET15, COD',
  `term_name` varchar(100) NOT NULL,
  `days_to_pay` int(11) NOT NULL DEFAULT 0 COMMENT 'Number of days to pay, 0 for immediate',
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`payment_term_id`, `term_code`, `term_name`, `days_to_pay`, `description`, `is_active`, `created_at`) VALUES
(1, 'COD', 'Cash on Delivery', 0, 'Payment due upon delivery', 1, '2025-08-01 18:01:04'),
(2, 'NET7', 'Net 7 Days', 7, 'Payment due within 7 days of invoice', 1, '2025-08-01 18:01:04'),
(3, 'NET15', 'Net 15 Days', 15, 'Payment due within 15 days of invoice', 1, '2025-08-01 18:01:04'),
(4, 'NET21', 'Net 21 Days', 21, 'Payment due within 21 days of invoice', 1, '2025-08-01 18:01:04'),
(5, 'NET30', 'Net 30 Days', 30, 'Payment due within 30 days of invoice', 1, '2025-08-01 18:01:04'),
(6, 'NET45', 'Net 45 Days', 45, 'Payment due within 45 days of invoice', 1, '2025-08-01 18:01:04'),
(7, 'NET60', 'Net 60 Days', 60, 'Payment due within 60 days of invoice', 1, '2025-08-01 18:01:04'),
(8, 'PREPAID', 'Prepaid', -1, 'Payment required before delivery', 1, '2025-08-01 18:01:04'),
(9, '2/10-NET30', '2% 10 Days, Net 30', 30, '2% discount if paid within 10 days, otherwise due in 30 days', 1, '2025-08-01 18:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL DEFAULT 1,
  `supplier_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL CHECK (`price` > 0),
  `cost` decimal(10,2) DEFAULT 0.00 CHECK (`cost` >= 0),
  `quantity_on_hand` decimal(10,3) NOT NULL DEFAULT 0.000 CHECK (`quantity_on_hand` >= 0),
  `reorder_level` decimal(10,3) NOT NULL DEFAULT 0.000 CHECK (`reorder_level` >= 0),
  `max_stock_level` decimal(10,3) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `milk_source_cooperative` varchar(100) DEFAULT NULL COMMENT 'Which dairy cooperative/farm the milk came from',
  `batch_lot_number` varchar(50) DEFAULT NULL COMMENT 'Production batch/lot number for traceability',
  `production_date` date DEFAULT NULL COMMENT 'Date when product was processed',
  `cold_chain_temp_min` decimal(4,1) DEFAULT NULL COMMENT 'Minimum storage temperature in Celsius',
  `cold_chain_temp_max` decimal(4,1) DEFAULT NULL COMMENT 'Maximum storage temperature in Celsius',
  `seasonal_availability` varchar(100) DEFAULT NULL COMMENT 'Seasonal availability info (e.g., Year-round, Summer only)',
  `milk_bar_size_category` enum('Small','Regular','Large','Family','Bulk') DEFAULT NULL COMMENT 'Size category for milk bar beverages',
  `institutional_packaging` tinyint(1) DEFAULT 0 COMMENT 'Whether this is bulk/institutional packaging',
  `volume_ml` int(11) DEFAULT NULL COMMENT 'Volume in milliliters for beverages',
  `weight_grams` decimal(8,2) DEFAULT NULL COMMENT 'Weight in grams for solid products',
  `processing_method` varchar(100) DEFAULT NULL COMMENT 'How the product was processed (e.g., Pasteurized, Fermented, Aged)',
  `quality_grade` enum('Premium','Standard','Economy') DEFAULT 'Standard' COMMENT 'Quality grade of the product',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `sku`, `category_id`, `unit_id`, `supplier_id`, `price`, `cost`, `quantity_on_hand`, `reorder_level`, `max_stock_level`, `barcode`, `description`, `expiry_date`, `is_active`, `milk_source_cooperative`, `batch_lot_number`, `production_date`, `cold_chain_temp_min`, `cold_chain_temp_max`, `seasonal_availability`, `milk_bar_size_category`, `institutional_packaging`, `volume_ml`, `weight_grams`, `processing_method`, `quality_grade`, `created_at`, `updated_at`) VALUES
(1, 'Highland Fresh Milk 250ml', 'HF-MILK-250', 11, 1, 1, 25.00, 18.00, 122.000, 20.000, 200.000, '4806504950001', 'Highland Fresh 100% pure cow milk, 250ml bottle', '2025-08-20', 1, 'Dalwangan Dairy Cooperative', 'HF-20250816-001', '2025-08-16', 2.0, 6.0, 'Year-round', 'Small', 0, 250, NULL, 'Pasteurized', 'Standard', '2025-08-01 17:58:26', '2025-08-16 04:53:27'),
(2, 'Highland Fresh Milk 500ml', 'HF-MILK-500', 11, 1, 1, 45.00, 32.00, 80.000, 15.000, 150.000, '4806504950002', 'Highland Fresh 100% pure cow milk, 500ml bottle', '2025-08-20', 1, 'Dalwangan Dairy Cooperative', 'HF-20250816-001', '2025-08-16', 2.0, 6.0, 'Year-round', 'Regular', 0, 500, NULL, 'Pasteurized', 'Standard', '2025-08-01 17:58:26', '2025-08-16 00:00:00'),
(3, 'Highland Fresh Milk 1L', 'HF-MILK-1000', 11, 1, 1, 85.00, 65.00, 48.000, 10.000, 100.000, '4806504950003', 'Highland Fresh 100% pure cow milk, 1 liter bottle', '2025-08-20', 1, 'Dalwangan Dairy Cooperative', 'HF-20250816-001', '2025-08-16', 2.0, 6.0, 'Year-round', 'Large', 0, 1000, NULL, 'Pasteurized', 'Standard', '2025-08-01 17:58:26', '2025-08-16 04:17:16'),
(4, 'Highland Fresh Family Milk 2L', 'HF-MILK-2000', 12, 1, 1, 160.00, 120.00, 30.000, 8.000, 60.000, '4806504950011', 'Highland Fresh 100% pure cow milk, 2 liter family bottle', '2025-08-20', 1, 'Dalwangan Dairy Cooperative', 'HF-20250816-001', '2025-08-16', 2.0, 6.0, 'Year-round', 'Family', 0, 2000, NULL, 'Pasteurized', 'Standard', '2025-08-16 10:00:00', '2025-08-16 05:00:58'),
(5, 'Highland Fresh Chocolate Milk 250ml', 'HF-CHOC-250', 2, 1, 1, 30.00, 22.00, 98.000, 15.000, 150.000, '4806504950004', 'Highland Fresh chocolate flavored milk, 250ml', '2025-08-18', 1, 'Dalwangan Dairy Cooperative', 'HF-20250816-002', '2025-08-16', 2.0, 6.0, 'Year-round', 'Small', 0, 250, NULL, 'Pasteurized, Flavored', 'Standard', '2025-08-01 17:58:26', '2025-08-16 04:39:47'),
(6, 'Highland Fresh Strawberry Milk 250ml', 'HF-STRAW-250', 2, 1, 1, 30.00, 22.00, 85.000, 15.000, 150.000, '4806504950005', 'Highland Fresh strawberry flavored milk, 250ml', '2025-08-18', 1, 'Dalwangan Dairy Cooperative', 'HF-20250816-002', '2025-08-16', 2.0, 6.0, 'Year-round', 'Small', 0, 250, NULL, 'Pasteurized, Flavored', 'Standard', '2025-08-01 17:58:26', '2025-08-16 00:00:00'),
(7, 'Highland Fresh Milk Shake Chocolate 300ml', 'HF-SHAKE-CHOC-300', 31, 1, 1, 45.00, 32.00, 59.000, 10.000, 100.000, '4806504950012', 'Thick chocolate milk shake for milk bar', '2025-08-18', 1, 'Misamis Oriental Dairy Coop', 'HF-20250816-003', '2025-08-16', 0.0, 4.0, 'Year-round', 'Regular', 0, 300, NULL, 'Blended, Chilled', 'Premium', '2025-08-16 10:00:00', '2025-08-16 04:17:16'),
(8, 'Highland Fresh Milk Shake Strawberry 300ml', 'HF-SHAKE-STRAW-300', 31, 1, 1, 45.00, 32.00, 60.000, 10.000, 100.000, '4806504950013', 'Thick strawberry milk shake for milk bar', '2025-08-18', 1, 'Misamis Oriental Dairy Coop', 'HF-20250816-003', '2025-08-16', 0.0, 4.0, 'Year-round', 'Regular', 0, 300, NULL, 'Blended, Chilled', 'Premium', '2025-08-16 10:00:00', '2025-08-16 10:00:00'),
(9, 'Highland Fresh Milk Shake Vanilla 300ml', 'HF-SHAKE-VAN-300', 31, 1, 1, 45.00, 32.00, 60.000, 10.000, 100.000, '4806504950014', 'Thick vanilla milk shake for milk bar', '2025-08-18', 1, 'Misamis Oriental Dairy Coop', 'HF-20250816-003', '2025-08-16', 0.0, 4.0, 'Year-round', 'Regular', 0, 300, NULL, 'Blended, Chilled', 'Premium', '2025-08-16 10:00:00', '2025-08-16 10:00:00'),
(10, 'Highland Fresh Milk Shake Large Chocolate 500ml', 'HF-SHAKE-CHOC-500', 31, 1, 1, 65.00, 45.00, 39.000, 8.000, 70.000, '4806504950015', 'Large chocolate milk shake for milk bar', '2025-08-18', 1, 'Misamis Oriental Dairy Coop', 'HF-20250816-003', '2025-08-16', 0.0, 4.0, 'Year-round', 'Large', 0, 500, NULL, 'Blended, Chilled', 'Premium', '2025-08-16 10:00:00', '2025-08-16 04:17:16'),
(11, 'Highland Fresh Hot Chocolate 250ml', 'HF-HOT-CHOC-250', 32, 1, 1, 35.00, 25.00, 48.000, 10.000, 80.000, '4806504950016', 'Hot chocolate drink for milk bar', '2025-08-18', 1, 'Bukidnon Dairy Cooperative', 'HF-20250816-004', '2025-08-16', 60.0, 80.0, 'Year-round', 'Regular', 0, 250, NULL, 'Hot Prepared', 'Standard', '2025-08-16 10:00:00', '2025-08-16 05:42:55'),
(12, 'Highland Fresh Cafe Latte 300ml', 'HF-LATTE-300', 32, 1, 1, 55.00, 38.00, 38.000, 8.000, 60.000, '4806504950017', 'Coffee latte with Highland Fresh milk', '2025-08-18', 1, 'Bukidnon Dairy Cooperative', 'HF-20250816-004', '2025-08-16', 60.0, 80.0, 'Year-round', 'Regular', 0, 300, NULL, 'Hot Prepared', 'Premium', '2025-08-16 10:00:00', '2025-08-16 05:42:55'),
(13, 'Highland Fresh Ube Milk Shake 300ml', 'HF-SHAKE-UBE-300', 33, 1, 1, 50.00, 35.00, 30.000, 5.000, 50.000, '4806504950018', 'Special ube flavored milk shake', '2025-08-18', 1, 'Cagayan de Oro Dairy Alliance', 'HF-20250816-005', '2025-08-16', 0.0, 4.0, 'Available during harvest season', 'Regular', 0, 300, NULL, 'Blended, Chilled', 'Premium', '2025-08-16 10:00:00', '2025-08-16 10:00:00'),
(14, 'Highland Fresh Mango Milk Shake 300ml', 'HF-SHAKE-MANGO-300', 33, 1, 1, 50.00, 35.00, 23.000, 5.000, 40.000, '4806504950019', 'Seasonal mango milk shake', '2025-08-18', 1, 'Cagayan de Oro Dairy Alliance', 'HF-20250816-005', '2025-08-16', 0.0, 4.0, 'Summer season only', 'Regular', 0, 300, NULL, 'Blended, Chilled', 'Premium', '2025-08-16 10:00:00', '2025-08-16 05:02:03'),
(15, 'Queso de Oro (Highland Fresh Gouda) 200g', 'HF-GOUDA-200', 4, 2, 2, 180.00, 140.00, 25.000, 5.000, 50.000, '4806504950006', 'Highland Fresh artisanal Gouda cheese (Queso de Oro), 200g', '2025-09-15', 1, 'Malaybalay Cheese Artisans', 'HF-20250815-001', '2025-08-15', 4.0, 8.0, 'Year-round', NULL, 0, NULL, 200.00, 'Aged 6 months', 'Premium', '2025-08-01 17:58:26', '2025-08-16 00:00:00'),
(16, 'Highland Fresh White Cheese 150g', 'HF-WHITE-150', 4, 2, 2, 120.00, 95.00, 30.000, 8.000, 60.000, '4806504950007', 'Highland Fresh white cheese, 150g', '2025-09-10', 1, 'Malaybalay Cheese Artisans', 'HF-20250815-002', '2025-08-15', 4.0, 8.0, 'Year-round', NULL, 0, NULL, 150.00, 'Fresh processed', 'Standard', '2025-08-01 17:58:26', '2025-08-16 00:00:00'),
(17, 'Highland Fresh Yogurt Plain 150ml', 'HF-YOG-PLAIN', 5, 1, 1, 45.00, 32.00, 60.000, 12.000, 80.000, '4806504950008', 'Highland Fresh plain yogurt, 150ml cup', '2025-08-25', 1, 'Iligan Dairy Cooperative', 'HF-20250816-006', '2025-08-16', 2.0, 6.0, 'Year-round', NULL, 0, 150, NULL, 'Fermented', 'Standard', '2025-08-01 17:58:26', '2025-08-16 00:00:00'),
(18, 'Highland Fresh Yogurt Strawberry 150ml', 'HF-YOG-STRAW', 5, 1, 1, 50.00, 35.00, 45.000, 10.000, 80.000, '4806504950009', 'Highland Fresh strawberry yogurt, 150ml cup', '2025-08-25', 1, 'Iligan Dairy Cooperative', 'HF-20250816-006', '2025-08-16', 2.0, 6.0, 'Year-round', NULL, 0, 150, NULL, 'Fermented', 'Standard', '2025-08-01 17:58:26', '2025-08-16 00:00:00'),
(19, 'Highland Fresh Butter 200g', 'HF-BUTTER-200', 6, 2, 1, 95.00, 75.00, 40.000, 8.000, 50.000, '4806504950010', 'Highland Fresh dairy butter, 200g pack', '2025-09-30', 1, 'Dalwangan Dairy Cooperative', 'HF-20250815-003', '2025-08-15', 4.0, 8.0, 'Year-round', NULL, 0, NULL, 200.00, 'Churned', 'Standard', '2025-08-01 17:58:26', '2025-08-16 05:42:55'),
(20, 'Highland Fresh School Milk 5L Container', 'HF-SCHOOL-5000', 71, 1, 1, 380.00, 280.00, 15.000, 3.000, 30.000, '4806504950020', 'Bulk milk container for school feeding programs', '2025-08-19', 1, 'Dalwangan Dairy Cooperative', 'HF-20250816-007', '2025-08-16', 2.0, 6.0, 'Year-round', 'Bulk', 1, 5000, NULL, 'Pasteurized', 'Standard', '2025-08-16 10:00:00', '2025-08-16 10:00:00'),
(21, 'Highland Fresh Hotel Milk 10L Container', 'HF-HOTEL-10000', 72, 1, 1, 720.00, 520.00, 7.000, 2.000, 20.000, '4806504950021', 'Large container for hotels and restaurants', '2025-08-19', 1, 'Misamis Oriental Dairy Coop', 'HF-20250816-008', '2025-08-16', 2.0, 6.0, 'Year-round', 'Bulk', 1, 10000, NULL, 'Pasteurized', 'Standard', '2025-08-16 10:00:00', '2025-08-16 05:02:03'),
(22, 'Highland Fresh Wholesale Milk 20L Container', 'HF-WHOLESALE-20000', 73, 1, 1, 1380.00, 980.00, 5.000, 1.000, 15.000, '4806504950022', 'Wholesale container for distributors', '2025-08-19', 1, 'Bukidnon Dairy Cooperative', 'HF-20250816-009', '2025-08-16', 2.0, 6.0, 'Year-round', 'Bulk', 1, 20000, NULL, 'Pasteurized', 'Standard', '2025-08-16 10:00:00', '2025-08-16 10:00:00'),
(148, 'Pakang1', NULL, 161, 12, 3, 90.00, 0.00, 100.000, 10.000, NULL, '9000', 'Testing', '2025-08-22', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Standard', '2025-08-16 04:50:38', '2025-08-16 04:50:38'),
(149, 'Direct Test Product', NULL, 7, 11, NULL, 19.99, 9.50, 102.000, 20.000, 500.000, 'DIRECT-1755319871', 'Direct test of insertProduct method', '2025-12-31', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Standard', '2025-08-16 04:51:11', '2025-08-16 05:41:40'),
(150, 'Paldo', NULL, 162, 1, 4, 10.00, 0.00, 10.000, 5.000, NULL, '2930283028492', 'Testing', '2025-08-29', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Standard', '2025-08-16 04:52:03', '2025-08-16 04:52:03'),
(151, 'Ihopethisworks', NULL, 2, 2, 2, 30.00, 0.00, 10.000, 5.000, NULL, '2324049304', 'This is ANother Testomg', '2025-08-22', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Standard', '2025-08-16 05:57:15', '2025-08-16 05:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `attribute_id` int(11) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `attribute_type` enum('Text','Number','Date','Boolean','List') NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'NULL means applies to all categories',
  `is_required` tinyint(1) DEFAULT 0,
  `default_value` text DEFAULT NULL,
  `allowed_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'For List type attributes' CHECK (json_valid(`allowed_values`)),
  `display_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`attribute_id`, `attribute_name`, `attribute_type`, `category_id`, `is_required`, `default_value`, `allowed_values`, `display_order`, `is_active`, `created_at`) VALUES
(1, 'Highland Fresh Brand', 'Text', NULL, 1, 'Highland Fresh', NULL, 1, 1, '2025-08-01 18:01:04'),
(2, 'Expiry Date', 'Date', NULL, 1, NULL, NULL, 2, 1, '2025-08-01 18:01:04'),
(3, 'Milk Fat Content', 'List', 1, 0, 'Whole Milk', '[\"Whole Milk\", \"Low Fat\", \"Skim\"]', 3, 1, '2025-08-01 18:01:04'),
(4, 'Flavor', 'List', 2, 1, NULL, '[\"Chocolate\", \"Strawberry\", \"Vanilla\", \"Mango\", \"Ube\"]', 4, 1, '2025-08-01 18:01:04'),
(5, 'Cheese Type', 'List', 3, 1, NULL, '[\"Gouda\", \"White Cheese\", \"Cheddar\", \"Mozzarella\"]', 5, 1, '2025-08-01 18:01:04'),
(6, 'Storage Temperature', 'List', NULL, 1, 'Refrigerated', '[\"Refrigerated (2-8°C)\", \"Frozen (-18°C)\"]', 6, 1, '2025-08-01 18:01:04'),
(7, 'Package Size', 'Text', NULL, 0, NULL, NULL, 7, 1, '2025-08-01 18:01:04'),
(8, 'Batch Number', 'Text', NULL, 0, NULL, NULL, 8, 1, '2025-08-01 18:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `value_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`category_id`, `category_name`, `description`, `parent_category_id`, `is_active`, `created_at`) VALUES
(1, 'Liquid Milk', 'Plain fresh cow milk in various bottle sizes (250ml, 500ml, 1L)', NULL, 1, '2025-08-01 17:58:26'),
(2, 'Flavored Milk', 'Sweet and fruit flavored milk drinks and milk bar beverages', NULL, 1, '2025-08-01 17:58:26'),
(3, 'Milk Bar Beverages', 'Specialty drinks served at Highland Fresh Milk Bar outlets', NULL, 1, '2025-08-16 10:00:00'),
(4, 'Cheese', 'Artisanal cheeses including Gouda (Queso de Oro) and white cheese', NULL, 1, '2025-08-01 17:58:26'),
(5, 'Dairy Desserts', 'Yogurt, cultured milk products and dairy-based desserts', NULL, 1, '2025-08-01 17:58:26'),
(6, 'Butter & By-products', 'Butter and other dairy creamery by-products', NULL, 1, '2025-08-01 17:58:26'),
(7, 'Bulk/Institutional', 'Large quantity packaging for schools, hotels, and restaurants', NULL, 1, '2025-08-16 10:00:00'),
(11, 'Retail Bottles', 'Individual consumer bottles (250ml, 500ml, 1L)', 1, 1, '2025-08-16 10:00:00'),
(12, 'Family Size', 'Larger bottles for family consumption (2L, 3L)', 1, 1, '2025-08-16 10:00:00'),
(31, 'Cold Beverages', 'Chilled milk bar drinks and shakes', 3, 1, '2025-08-16 10:00:00'),
(32, 'Hot Beverages', 'Hot milk-based drinks for milk bar', 3, 1, '2025-08-16 10:00:00'),
(33, 'Specialty Drinks', 'Premium and seasonal milk bar beverages', 3, 1, '2025-08-16 10:00:00'),
(71, 'School Packages', 'Bulk packaging for school canteens and feeding programs', 7, 1, '2025-08-16 10:00:00'),
(72, 'Hotel/Restaurant', 'Large containers for commercial food establishments', 7, 1, '2025-08-16 10:00:00'),
(73, 'Wholesale Containers', 'Large volume containers for distributors', 7, 1, '2025-08-16 10:00:00'),
(161, 'ThisIsNewCategory', 'CategorySha', NULL, 1, '2025-08-16 04:44:48'),
(162, 'Yehey2', 'Yehey2', NULL, 1, '2025-08-16 04:51:24'),
(163, 'Skibidi', 'Boom!', NULL, 1, '2025-08-16 05:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `po_id` int(11) NOT NULL,
  `po_number` varchar(20) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User who created the PO',
  `total_amount` decimal(10,2) NOT NULL CHECK (`total_amount` >= 0),
  `status_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expected_delivery_date` date DEFAULT NULL,
  `received_date` timestamp NULL DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`po_id`, `po_number`, `supplier_id`, `user_id`, `total_amount`, `status_id`, `order_date`, `expected_delivery_date`, `received_date`, `notes`, `created_at`, `updated_at`) VALUES
(25, 'PO20250025', 2, 18, 233.00, 11, '2025-08-13 15:12:43', '2025-08-20', NULL, NULL, '2025-08-13 15:12:43', '2025-08-16 03:35:52'),
(50, 'PO20250050', 2, 18, 233.00, 14, '2025-08-13 15:15:53', '2025-08-14', '2025-08-16 03:40:31', NULL, '2025-08-13 15:15:53', '2025-08-16 03:40:31'),
(51, 'PO20250051', 1, 18, 466.00, 11, '2025-08-13 15:19:49', '2025-08-14', NULL, 'Yummu', '2025-08-13 15:19:49', '2025-08-16 03:35:52'),
(52, 'PO20250052', 1, 18, 233.00, 14, '2025-08-13 15:20:59', '2025-08-19', '2025-08-13 16:08:54', NULL, '2025-08-13 15:20:59', '2025-08-16 03:35:52'),
(53, 'PO20250053', 1, 18, 233.00, 14, '2025-08-14 00:38:37', '2025-08-15', '2025-08-14 00:39:46', NULL, '2025-08-14 00:38:37', '2025-08-16 03:35:52'),
(54, 'PO20250054', 1, 18, 1165.00, 13, '2025-08-14 00:40:08', '2025-08-26', '2025-08-16 04:53:27', NULL, '2025-08-14 00:40:08', '2025-08-16 04:53:27'),
(55, 'PO20250055', 52, 1, 179.99, 14, '2025-08-16 05:00:40', '2025-08-23', '2025-08-16 05:00:58', 'LetsGo!', '2025-08-16 05:00:40', '2025-08-16 05:00:58'),
(56, 'PO20250056', 52, 1, 114.99, 14, '2025-08-16 05:41:30', '2025-08-20', '2025-08-16 05:41:48', 'Ngek!', '2025-08-16 05:41:30', '2025-08-16 05:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

CREATE TABLE `purchase_order_items` (
  `po_item_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordered_quantity` decimal(10,3) NOT NULL CHECK (`ordered_quantity` > 0),
  `received_quantity` decimal(10,3) DEFAULT 0.000 CHECK (`received_quantity` >= 0),
  `unit_cost` decimal(10,2) NOT NULL CHECK (`unit_cost` > 0),
  `line_total` decimal(10,2) NOT NULL CHECK (`line_total` >= 0),
  `expiry_date` date DEFAULT NULL,
  `lot_number` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`po_item_id`, `po_id`, `product_id`, `ordered_quantity`, `received_quantity`, `unit_cost`, `line_total`, `expiry_date`, `lot_number`, `created_at`) VALUES
(25, 25, 1, 1.000, 0.000, 233.00, 233.00, NULL, NULL, '2025-08-13 15:12:43'),
(50, 50, 1, 1.000, 1.000, 233.00, 233.00, NULL, NULL, '2025-08-13 15:15:53'),
(51, 51, 1, 2.000, 0.000, 233.00, 466.00, NULL, NULL, '2025-08-13 15:19:49'),
(52, 52, 1, 1.000, 1.000, 233.00, 233.00, NULL, NULL, '2025-08-13 15:20:59'),
(53, 53, 1, 1.000, 1.000, 233.00, 233.00, NULL, NULL, '2025-08-14 00:38:37'),
(54, 54, 1, 5.000, 2.000, 233.00, 1165.00, NULL, NULL, '2025-08-14 00:40:08'),
(55, 55, 149, 1.000, 1.000, 19.99, 19.99, NULL, NULL, '2025-08-16 05:00:40'),
(56, 55, 4, 1.000, 1.000, 160.00, 160.00, NULL, NULL, '2025-08-16 05:00:40'),
(57, 56, 149, 1.000, 1.000, 19.99, 19.99, NULL, NULL, '2025-08-16 05:41:30'),
(58, 56, 19, 1.000, 1.000, 95.00, 95.00, NULL, NULL, '2025-08-16 05:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `return_id` int(11) NOT NULL,
  `return_number` varchar(20) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User processing the return',
  `total_return_amount` decimal(10,2) NOT NULL CHECK (`total_return_amount` >= 0),
  `reason` varchar(500) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `approved_by` int(11) DEFAULT NULL COMMENT 'Manager/Admin who approved the return',
  `return_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`return_id`, `return_number`, `sale_id`, `user_id`, `total_return_amount`, `reason`, `status_id`, `approved_by`, `return_date`, `created_at`) VALUES
(2, 'RET20250001', 7, 1, 23.00, 'Price Discrepancy', 7, NULL, '2025-08-16 04:08:52', '2025-08-16 04:08:52'),
(3, 'RET20250002', 9, 1, 330.00, 'Defective Product', 6, NULL, '2025-08-16 05:44:41', '2025-08-16 05:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `return_items`
--

CREATE TABLE `return_items` (
  `return_item_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `sale_item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `returned_quantity` decimal(10,3) NOT NULL CHECK (`returned_quantity` > 0),
  `unit_price` decimal(10,2) NOT NULL CHECK (`unit_price` > 0),
  `return_amount` decimal(10,2) NOT NULL CHECK (`return_amount` >= 0),
  `condition_type` enum('Good','Damaged','Expired') DEFAULT 'Good',
  `restock_eligible` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_items`
--

INSERT INTO `return_items` (`return_item_id`, `return_id`, `sale_item_id`, `product_id`, `returned_quantity`, `unit_price`, `return_amount`, `condition_type`, `restock_eligible`, `created_at`) VALUES
(2, 2, 7, 3, 1.000, 23.00, 23.00, 'Good', 1, '2025-08-16 04:08:52'),
(3, 3, 9, 12, 1.000, 55.00, 55.00, 'Damaged', 0, '2025-08-16 05:44:41'),
(4, 3, 10, 5, 1.000, 30.00, 30.00, 'Damaged', 0, '2025-08-16 05:44:41'),
(5, 3, 11, 3, 1.000, 85.00, 85.00, 'Good', 1, '2025-08-16 05:44:41'),
(6, 3, 12, 14, 1.000, 50.00, 50.00, 'Damaged', 0, '2025-08-16 05:44:41'),
(7, 3, 13, 10, 1.000, 65.00, 65.00, 'Expired', 0, '2025-08-16 05:44:41'),
(8, 3, 14, 7, 1.000, 45.00, 45.00, 'Damaged', 0, '2025-08-16 05:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `sale_number` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL CHECK (`subtotal` >= 0),
  `tax_rate` decimal(5,4) DEFAULT 0.1200,
  `tax_amount` decimal(10,2) NOT NULL DEFAULT 0.00 CHECK (`tax_amount` >= 0),
  `discount_amount` decimal(10,2) DEFAULT 0.00 CHECK (`discount_amount` >= 0),
  `total_amount` decimal(10,2) NOT NULL CHECK (`total_amount` >= 0),
  `payment_method_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `payment_received` decimal(10,2) DEFAULT 0.00,
  `change_amount` decimal(10,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `sale_number`, `user_id`, `customer_name`, `customer_phone`, `subtotal`, `tax_rate`, `tax_amount`, `discount_amount`, `total_amount`, `payment_method_id`, `status_id`, `payment_received`, `change_amount`, `notes`, `sale_date`, `created_at`, `updated_at`) VALUES
(1, 'SALE20250001', 19, NULL, NULL, 699.00, 0.1200, 83.88, 0.00, 782.88, 1, 2, 800.00, 17.12, NULL, '2025-08-14 01:36:20', '2025-08-14 01:36:20', '2025-08-14 01:36:20'),
(2, 'SALE20250002', 19, NULL, NULL, 699.00, 0.1200, 83.88, 0.00, 782.88, 1, 2, 800.00, 17.12, NULL, '2025-08-14 01:36:45', '2025-08-14 01:36:45', '2025-08-14 01:36:45'),
(3, 'SALE20250003', 19, NULL, NULL, 233.00, 0.1200, 27.96, 0.00, 260.96, 1, 2, 233.00, -27.96, NULL, '2025-08-14 01:36:50', '2025-08-14 01:36:50', '2025-08-14 01:36:50'),
(4, 'SALE20250004', 19, NULL, NULL, 1165.00, 0.1200, 139.80, 0.00, 1304.80, 1, 2, 5000.00, 3695.20, NULL, '2025-08-14 01:38:08', '2025-08-14 01:38:08', '2025-08-14 01:38:08'),
(5, 'SALE20250005', 19, NULL, NULL, 233.00, 0.1200, 27.96, 0.00, 260.96, 1, 2, 260.96, 0.00, NULL, '2025-08-14 01:39:10', '2025-08-14 01:39:10', '2025-08-14 01:39:10'),
(6, 'SALE20250006', 19, NULL, NULL, 85.00, 0.1200, 10.20, 0.00, 95.20, 1, 2, 100.00, 4.80, NULL, '2025-08-14 02:43:28', '2025-08-14 02:43:28', '2025-08-14 02:43:28'),
(7, 'SALE20250007', 19, NULL, NULL, 23.00, 0.1200, 2.76, 0.00, 25.76, 1, 2, 500.00, 474.24, NULL, '2025-08-14 14:38:55', '2025-08-14 14:38:55', '2025-08-14 14:38:55'),
(8, 'SALE20250008', 19, NULL, NULL, 90.00, 0.1200, 10.80, 0.00, 100.80, 1, 2, 200.00, 99.20, NULL, '2025-08-15 04:39:15', '2025-08-15 04:39:15', '2025-08-15 04:39:15'),
(9, 'SALE20250009', 1, NULL, NULL, 500.00, 0.1200, 60.00, 0.00, 560.00, 1, 2, 560.00, 0.00, 'Highland Fresh POS Sale', '2025-08-16 04:17:16', '2025-08-16 04:17:16', '2025-08-16 04:17:16'),
(10, 'SALE20250010', 1, NULL, NULL, 190.00, 0.1200, 22.80, 0.00, 212.80, 1, 2, 212.80, 0.00, 'Highland Fresh POS Sale', '2025-08-16 04:39:47', '2025-08-16 04:39:47', '2025-08-16 04:39:47'),
(11, 'SALE20250011', 1, NULL, NULL, 805.00, 0.1200, 96.60, 0.00, 901.60, 1, 2, 901.60, 0.00, 'Highland Fresh POS Sale', '2025-08-16 05:02:03', '2025-08-16 05:02:03', '2025-08-16 05:02:03'),
(12, 'SALE20250012', 1, NULL, NULL, 185.00, 0.1200, 22.20, 0.00, 207.20, 1, 2, 207.20, 0.00, 'Highland Fresh POS Sale', '2025-08-16 05:42:55', '2025-08-16 05:42:55', '2025-08-16 05:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` decimal(10,3) NOT NULL CHECK (`quantity` > 0),
  `unit_price` decimal(10,2) NOT NULL CHECK (`unit_price` > 0),
  `discount_percent` decimal(5,2) DEFAULT 0.00 CHECK (`discount_percent` >= 0 and `discount_percent` <= 100),
  `discount_amount` decimal(10,2) DEFAULT 0.00 CHECK (`discount_amount` >= 0),
  `line_total` decimal(10,2) NOT NULL CHECK (`line_total` >= 0),
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`sale_item_id`, `sale_id`, `product_id`, `quantity`, `unit_price`, `discount_percent`, `discount_amount`, `line_total`, `status_id`, `created_at`) VALUES
(1, 1, 1, 3.000, 233.00, 0.00, 0.00, 699.00, 2, '2025-08-14 01:36:20'),
(2, 2, 1, 3.000, 233.00, 0.00, 0.00, 699.00, 2, '2025-08-14 01:36:45'),
(3, 3, 1, 1.000, 233.00, 0.00, 0.00, 233.00, 2, '2025-08-14 01:36:50'),
(4, 4, 1, 5.000, 233.00, 0.00, 0.00, 1165.00, 2, '2025-08-14 01:38:08'),
(5, 5, 1, 1.000, 233.00, 0.00, 0.00, 233.00, 2, '2025-08-14 01:39:10'),
(6, 6, 2, 1.000, 85.00, 0.00, 0.00, 85.00, 2, '2025-08-14 02:43:28'),
(7, 7, 3, 1.000, 23.00, 0.00, 0.00, 23.00, 2, '2025-08-14 14:38:55'),
(8, 8, 4, 1.000, 90.00, 0.00, 0.00, 90.00, 2, '2025-08-15 04:39:15'),
(9, 9, 12, 1.000, 55.00, 0.00, 0.00, 55.00, 2, '2025-08-16 04:17:16'),
(10, 9, 5, 1.000, 30.00, 0.00, 0.00, 30.00, 2, '2025-08-16 04:17:16'),
(11, 9, 3, 3.000, 85.00, 0.00, 0.00, 255.00, 2, '2025-08-16 04:17:16'),
(12, 9, 14, 1.000, 50.00, 0.00, 0.00, 50.00, 2, '2025-08-16 04:17:16'),
(13, 9, 10, 1.000, 65.00, 0.00, 0.00, 65.00, 2, '2025-08-16 04:17:16'),
(14, 9, 7, 1.000, 45.00, 0.00, 0.00, 45.00, 2, '2025-08-16 04:17:16'),
(15, 10, 5, 1.000, 30.00, 0.00, 0.00, 30.00, 2, '2025-08-16 04:39:47'),
(16, 10, 4, 1.000, 160.00, 0.00, 0.00, 160.00, 2, '2025-08-16 04:39:47'),
(17, 11, 14, 1.000, 50.00, 0.00, 0.00, 50.00, 2, '2025-08-16 05:02:03'),
(18, 11, 21, 1.000, 720.00, 0.00, 0.00, 720.00, 2, '2025-08-16 05:02:03'),
(19, 11, 11, 1.000, 35.00, 0.00, 0.00, 35.00, 2, '2025-08-16 05:02:03'),
(20, 12, 19, 1.000, 95.00, 0.00, 0.00, 95.00, 2, '2025-08-16 05:42:55'),
(21, 12, 12, 1.000, 55.00, 0.00, 0.00, 55.00, 2, '2025-08-16 05:42:55'),
(22, 12, 11, 1.000, 35.00, 0.00, 0.00, 35.00, 2, '2025-08-16 05:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `supplier_type` enum('Dairy Cooperative','Individual Farm','Packaging Supplier','Ingredient Supplier','Equipment Supplier') NOT NULL DEFAULT 'Dairy Cooperative',
  `cooperative_code` varchar(20) DEFAULT NULL COMMENT 'For dairy cooperatives - unique identifier',
  `contact_person` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `region` varchar(100) DEFAULT 'Northern Mindanao',
  `country` varchar(100) DEFAULT 'Philippines',
  `country_id` int(11) DEFAULT NULL,
  `tax_id` varchar(50) DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT 'Net 30',
  `payment_term_id` int(11) NOT NULL,
  `credit_limit` decimal(12,2) DEFAULT 0.00,
  `daily_milk_capacity_liters` decimal(10,2) DEFAULT NULL COMMENT 'For dairy suppliers - daily milk production capacity',
  `delivery_schedule` enum('Daily','Weekly','Bi-weekly','Monthly','On-demand') DEFAULT 'Daily' COMMENT 'Delivery frequency for dairy suppliers',
  `milk_quality_grade` enum('Grade A','Grade B','Grade C') DEFAULT 'Grade A' COMMENT 'Standard milk quality grade',
  `collection_station_address` text DEFAULT NULL COMMENT 'Address of milk collection/chilling station',
  `number_of_cows` int(11) DEFAULT NULL COMMENT 'For farms/cooperatives - total number of dairy cows',
  `established_year` year(4) DEFAULT NULL,
  `is_nmfdc_member` tinyint(1) DEFAULT 0 COMMENT 'Whether supplier is NMFDC member cooperative',
  `is_active` tinyint(1) DEFAULT 1,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `name`, `supplier_type`, `cooperative_code`, `contact_person`, `email`, `phone_number`, `mobile_number`, `address`, `city`, `city_id`, `postal_code`, `region`, `country`, `country_id`, `tax_id`, `payment_terms`, `payment_term_id`, `credit_limit`, `daily_milk_capacity_liters`, `delivery_schedule`, `milk_quality_grade`, `collection_station_address`, `number_of_cows`, `established_year`, `is_nmfdc_member`, `is_active`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Dalwangan Dairy Cooperative', 'Dairy Cooperative', 'DDC-001', 'Roberto Santos', 'info@dalwangandairy.coop', '+63-88-123-4567', '+63-917-123-4567', 'Dalwangan, Malaybalay', 'Malaybalay', 25, '8700', 'Northern Mindanao', 'Philippines', 1, '123-456-789-000', 'Net 15', 3, 50000.00, 800.00, 'Daily', 'Grade A', 'Dalwangan Cold Storage Station, Malaybalay, Bukidnon', 88, '1995', 1, 1, 'Primary NMFDC member cooperative - delivers 800L daily', '2025-08-16 00:00:00', '2025-08-16 00:00:00'),
(2, 'Misamis Oriental Dairy Cooperative', 'Dairy Cooperative', 'MODC-002', 'Maria dela Cruz', 'contact@modairy.coop', '+63-88-234-5678', '+63-918-234-5678', 'Claveria, Misamis Oriental', 'Claveria', 22, '9004', 'Northern Mindanao', 'Philippines', 1, '234-567-890-000', 'Net 15', 3, 30000.00, 600.00, 'Daily', 'Grade A', 'Claveria Milk Collection Center', 65, '1998', 1, 1, 'NMFDC member cooperative specializing in Holstein-Sahiwal crossbred', '2025-08-16 00:00:00', '2025-08-16 00:00:00'),
(3, 'CDO Dairy Farmers Association', 'Dairy Cooperative', 'CDFA-003', 'Juan Reyes', 'admin@cdodairy.org', '+63-88-345-6789', '+63-919-345-6789', 'Upper Carmen, Cagayan de Oro', 'Cagayan de Oro', 20, '9000', 'Northern Mindanao', 'Philippines', 1, '345-678-901-000', 'Net 15', 3, 25000.00, 450.00, 'Daily', 'Grade A', 'Carmen Milk Chilling Station', 52, '2001', 1, 1, 'Local CDO area dairy collective serving El Salvador processing plant', '2025-08-16 00:00:00', '2025-08-16 00:00:00'),
(4, 'Santos Family Dairy Farm', 'Individual Farm', 'SDF-004', 'Pedro Santos', 'pedro.santos@email.com', '+63-88-456-7890', '+63-920-456-7890', 'Barangay Lumbia, Cagayan de Oro', 'Cagayan de Oro', 20, '9000', 'Northern Mindanao', 'Philippines', 1, NULL, 'Net 30', 1, 15000.00, 120.00, 'Daily', 'Grade A', 'On-farm milk collection point', 15, '2005', 0, 1, 'Independent dairy farm with Holstein-Jersey crossbred cattle', '2025-08-16 00:00:00', '2025-08-16 00:00:00'),
(5, 'Northern Mindanao Packaging Corp', 'Packaging Supplier', NULL, 'Lisa Gonzales', 'sales@nmpac.com.ph', '+63-88-567-8901', '+63-921-567-8901', 'Kauswagan Industrial Area, Cagayan de Oro', 'Cagayan de Oro', 20, '9000', 'Northern Mindanao', 'Philippines', 1, '567-890-123-000', 'Net 30', 1, 0.00, NULL, 'Weekly', NULL, NULL, NULL, '1992', 0, 1, 'Supplier of milk bottles, caps, and dairy packaging materials', '2025-08-16 00:00:00', '2025-08-16 00:00:00'),
(6, 'CDO Labels & Printing', 'Packaging Supplier', NULL, 'Mark Torres', 'orders@cdolabels.ph', '+63-88-678-9012', '+63-922-678-9012', 'Cogon Market Area, Cagayan de Oro', 'Cagayan de Oro', 20, '9000', 'Northern Mindanao', 'Philippines', 1, '678-901-234-000', 'Net 30', 1, 0.00, NULL, 'Monthly', NULL, NULL, NULL, '1988', 0, 1, 'Highland Fresh product labels and promotional materials', '2025-08-16 00:00:00', '2025-08-16 00:00:00'),
(52, 'Bag.o', 'Dairy Cooperative', 'DDC-01201-2', '09078734040', 'ragasibrian2@gmail.com', '02930230', NULL, 'phase 1 baby', NULL, 12, '1432940', 'Northern Mindanao', 'Philippines', 1, '49309403', 'Net 30', 2, 0.00, 20.00, 'Weekly', 'Grade B', 'Basta', 60, '2003', 1, 1, NULL, '2025-08-16 04:59:56', '2025-08-16 05:07:42'),
(53, 'Test Cooperative', 'Dairy Cooperative', NULL, 'Jane Smith', 'test@cooperative.com', '1234567890', NULL, NULL, NULL, NULL, NULL, 'Northern Mindanao', 'Philippines', NULL, NULL, 'Net 30', 5, 0.00, NULL, 'Daily', 'Grade A', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 05:03:06', '2025-08-16 05:03:06'),
(54, 'Test Cooperative', 'Dairy Cooperative', NULL, 'Jane Smith', 'test@cooperative.com', '1234567890', NULL, NULL, NULL, NULL, NULL, 'Northern Mindanao', 'Philippines', NULL, NULL, 'Net 30', 5, 0.00, NULL, 'Daily', 'Grade A', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 05:05:04', '2025-08-16 05:05:04'),
(55, 'Boom', 'Dairy Cooperative', 'DDC-01201-2', '09078734040', 'ragasibrian2@gmail.com', '09078734040', NULL, 'Phase2', NULL, 11, '1432940', 'Northern Mindanao', 'Philippines', 1, '9000', 'Net 30', 2, 0.00, 20.00, 'Daily', 'Grade B', 'BastaikawBhaal', 200, NULL, 1, 1, NULL, '2025-08-16 05:07:05', '2025-08-16 05:07:05'),
(59, 'ThisIsAnotherTesting', 'Dairy Cooperative', 'DDC-001', '09078734040', 'ragasibrian2@gmail.com', '09078734040', NULL, 'ThisIsTiringAddressMan', NULL, 22, '5000', 'Northern Mindanao', 'Philippines', 1, '992039203', 'Net 30', 5, 0.00, 5.00, 'Daily', 'Grade A', 'Basta', 5, '2003', 1, 1, NULL, '2025-08-16 05:40:55', '2025-08-16 05:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contacts`
--

CREATE TABLE `supplier_contacts` (
  `contact_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `contact_type` enum('Primary','Billing','Ordering','Emergency','Other') DEFAULT 'Primary',
  `contact_name` varchar(255) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplier_info_view`
-- (See below for the actual view)
--
CREATE TABLE `supplier_info_view` (
`supplier_id` int(11)
,`name` varchar(255)
,`contact_person` varchar(255)
,`email` varchar(255)
,`phone_number` varchar(20)
,`address` text
,`city_name` varchar(100)
,`country_name` varchar(100)
,`payment_terms` varchar(100)
,`days_to_pay` int(11)
,`credit_limit` decimal(12,2)
,`is_active` tinyint(1)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_products`
--

CREATE TABLE `supplier_products` (
  `supplier_product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_sku` varchar(50) DEFAULT NULL,
  `lead_time_days` int(11) DEFAULT 7,
  `minimum_order_quantity` decimal(10,3) DEFAULT 1.000,
  `unit_cost` decimal(10,2) NOT NULL,
  `is_preferred` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rate_id` int(11) NOT NULL,
  `rate_code` varchar(20) NOT NULL,
  `rate_name` varchar(100) NOT NULL,
  `rate_percentage` decimal(5,4) NOT NULL COMMENT 'Tax rate as decimal (0.12 for 12%)',
  `applicable_to` enum('Sale','Purchase','Both') DEFAULT 'Both',
  `city_id` int(11) DEFAULT NULL COMMENT 'Specific to a city, NULL for national',
  `category_id` int(11) DEFAULT NULL COMMENT 'Specific to product category, NULL for all',
  `effective_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL COMMENT 'NULL for indefinite',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rate_id`, `rate_code`, `rate_name`, `rate_percentage`, `applicable_to`, `city_id`, `category_id`, `effective_date`, `expiry_date`, `is_active`, `created_at`) VALUES
(1, 'VAT_STD', 'Standard VAT Rate', 0.1200, 'Both', NULL, NULL, '2020-01-01', NULL, 1, '2025-08-01 18:01:04'),
(2, 'VAT_ZERO', 'Zero-Rated VAT', 0.0000, 'Both', NULL, NULL, '2020-01-01', NULL, 1, '2025-08-01 18:01:04'),
(3, 'VAT_EXEMPT', 'VAT Exempt', 0.0000, 'Both', NULL, NULL, '2020-01-01', NULL, 1, '2025-08-01 18:01:04'),
(4, 'WT_COR', 'Withholding Tax - Corporation', 0.0200, 'Purchase', NULL, NULL, '2020-01-01', NULL, 1, '2025-08-01 18:01:04'),
(5, 'WT_IND', 'Withholding Tax - Individual', 0.0100, 'Purchase', NULL, NULL, '2020-01-01', NULL, 1, '2025-08-01 18:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_statuses`
--

CREATE TABLE `transaction_statuses` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status_type` enum('Sale','Return','Purchase','General') DEFAULT 'General',
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_statuses`
--

INSERT INTO `transaction_statuses` (`status_id`, `status_name`, `description`, `status_type`, `is_active`, `created_at`) VALUES
(1, 'Pending', 'Transaction is pending completion', 'Sale', 1, '2025-08-01 17:58:26'),
(2, 'Completed', 'Transaction completed successfully', 'Sale', 1, '2025-08-01 17:58:26'),
(3, 'Cancelled', 'Transaction was cancelled', 'Sale', 1, '2025-08-01 17:58:26'),
(4, 'Refunded', 'Transaction was refunded', 'Sale', 1, '2025-08-01 17:58:26'),
(5, 'Partially Refunded', 'Transaction was partially refunded', 'Sale', 1, '2025-08-01 17:58:26'),
(6, 'Return Pending', 'Return is pending approval', 'Return', 1, '2025-08-01 17:58:26'),
(7, 'Return Approved', 'Return has been approved', 'Return', 1, '2025-08-01 17:58:26'),
(8, 'Return Rejected', 'Return has been rejected', 'Return', 1, '2025-08-01 17:58:26'),
(9, 'Return Completed', 'Return has been completed', 'Return', 1, '2025-08-01 17:58:26'),
(10, 'PO Draft', 'Purchase order is in draft status', 'Purchase', 1, '2025-08-01 17:58:26'),
(11, 'PO Sent', 'Purchase order sent to supplier', 'Purchase', 1, '2025-08-01 17:58:26'),
(12, 'PO Confirmed', 'Purchase order confirmed by supplier', 'Purchase', 1, '2025-08-01 17:58:26'),
(13, 'PO Partially Received', 'Purchase order partially received', 'Purchase', 1, '2025-08-01 17:58:26'),
(14, 'PO Received', 'Purchase order fully received', 'Purchase', 1, '2025-08-01 17:58:26'),
(15, 'PO Cancelled', 'Purchase order cancelled', 'Purchase', 1, '2025-08-01 17:58:26'),
(16, 'Active', 'Record is active', 'General', 1, '2025-08-01 17:58:26'),
(17, 'Inactive', 'Record is inactive', 'General', 1, '2025-08-01 17:58:26'),
(18, 'Deleted', 'Record is marked as deleted', 'General', 1, '2025-08-01 17:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `units_of_measure`
--

CREATE TABLE `units_of_measure` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(20) NOT NULL,
  `unit_abbreviation` varchar(10) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `unit_type` enum('Weight','Volume','Count','Length') NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_of_measure`
--

INSERT INTO `units_of_measure` (`unit_id`, `unit_name`, `unit_abbreviation`, `description`, `unit_type`, `is_active`, `created_at`) VALUES
(1, 'Kilogram', 'kg', 'Kilogram weight measurement', 'Weight', 1, '2025-08-01 17:58:26'),
(2, 'Gram', 'g', 'Gram weight measurement', 'Weight', 1, '2025-08-01 17:58:26'),
(3, 'Pound', 'lb', 'Pound weight measurement', 'Weight', 1, '2025-08-01 17:58:26'),
(4, 'Ounce', 'oz', 'Ounce weight measurement', 'Weight', 1, '2025-08-01 17:58:26'),
(5, 'Liter', 'L', 'Liter volume measurement', 'Volume', 1, '2025-08-01 17:58:26'),
(6, 'Milliliter', 'mL', 'Milliliter volume measurement', 'Volume', 1, '2025-08-01 17:58:26'),
(7, 'Gallon', 'gal', 'Gallon volume measurement', 'Volume', 1, '2025-08-01 17:58:26'),
(8, 'Piece', 'pc', 'Individual piece or item', 'Count', 1, '2025-08-01 17:58:26'),
(9, 'Dozen', 'doz', 'Twelve pieces', 'Count', 1, '2025-08-01 17:58:26'),
(10, 'Pack', 'pk', 'Package or pack', 'Count', 1, '2025-08-01 17:58:26'),
(11, 'Box', 'box', 'Box container', 'Count', 1, '2025-08-01 17:58:26'),
(12, 'Case', 'case', 'Case container', 'Count', 1, '2025-08-01 17:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `branch_id` int(11) DEFAULT NULL COMMENT 'Highland Fresh branch assignment',
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `role_id`, `branch_id`, `first_name`, `last_name`, `email`, `phone`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$jqhwP2qWBaWU9YPvdI24oeVYkh9ykAdQE6VosigEGf0ObA/n6DH/q', 1, NULL, 'System', 'Administrator', 'admin@highlandfresh.com', NULL, 1, '2025-08-16 05:50:26', '2025-08-01 17:58:26', '2025-08-16 05:50:26'),
(21, 'cashier', '$2y$10$kd0ICLJdq9DM7Gxjlmbg..4bxRPYdIgHCMC0xx/htCa3jxteka1ka', 3, NULL, 'brian', 'ragasi', 'ragasibrian2@gmail.com', NULL, 1, '2025-08-16 04:43:21', '2025-08-16 04:42:49', '2025-08-16 04:43:21'),
(22, 'brendo', '$2y$10$ayAMta8LZuQaX.pgdy2ljuACO.zTeKUpsfP2Th.BnTpyyQIJFF.R.', 4, NULL, 'brian', 'ragasi', 'ragasibrian2@gmail.com', NULL, 1, NULL, '2025-08-16 05:38:45', '2025-08-16 05:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'JSON object storing role permissions' CHECK (json_valid(`permissions`)),
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `description`, `permissions`, `is_active`, `created_at`) VALUES
(1, 'Admin', 'System administrator with full access to all modules including user management', '{\"users\": \"full\", \"products\": \"full\", \"suppliers\": \"full\", \"inventory\": \"full\", \"sales\": \"full\", \"reports\": \"full\", \"settings\": \"full\", \"quality\": \"full\", \"cooperatives\": \"full\"}', 1, '2025-08-01 17:58:26'),
(3, 'Cashier', 'Highland Fresh milk bar cashier for POS operations and customer service', '{\"users\": \"none\", \"products\": \"read\", \"suppliers\": \"none\", \"inventory\": \"read\", \"sales\": \"create\", \"reports\": \"limited\", \"settings\": \"none\", \"quality\": \"none\", \"cooperatives\": \"none\"}', 1, '2025-08-01 17:58:26'),
(4, 'Inventory', 'Inventory management specialist with full access to stock and product management', '{\"users\": \"none\", \"products\": \"full\", \"suppliers\": \"read\", \"inventory\": \"full\", \"sales\": \"read\", \"reports\": \"limited\", \"settings\": \"none\", \"quality\": \"read\", \"cooperatives\": \"none\"}', 1, '2025-08-01 17:58:26'),
(5, 'Plant Manager', 'Highland Fresh El Salvador processing plant manager with full operational control', '{\"users\": \"limited\", \"products\": \"full\", \"suppliers\": \"full\", \"inventory\": \"full\", \"sales\": \"read\", \"reports\": \"full\", \"settings\": \"limited\", \"quality\": \"full\", \"cooperatives\": \"read\"}', 1, '2025-08-01 17:58:26'),
(6, 'Cooperative Coordinator', 'NMFDC liaison with dairy cooperatives and raw milk suppliers', '{\"users\": \"none\", \"products\": \"read\", \"suppliers\": \"full\", \"inventory\": \"read\", \"sales\": \"none\", \"reports\": \"limited\", \"settings\": \"none\", \"quality\": \"read\", \"cooperatives\": \"full\"}', 1, '2025-08-01 17:58:26'),
(7, 'Quality Control', 'Highland Fresh dairy quality assurance and compliance specialist', '{\"users\": \"none\", \"products\": \"read\", \"suppliers\": \"read\", \"inventory\": \"read\", \"sales\": \"none\", \"reports\": \"limited\", \"settings\": \"none\", \"quality\": \"full\", \"cooperatives\": \"none\"}', 1, '2025-08-01 17:58:26'),
(8, 'Branch Manager', 'Highland Fresh outlet/milk bar branch manager', '{\"users\": \"branch\", \"products\": \"read\", \"suppliers\": \"none\", \"inventory\": \"branch\", \"sales\": \"full\", \"reports\": \"branch\", \"settings\": \"none\", \"quality\": \"none\", \"cooperatives\": \"none\"}', 1, '2025-08-01 17:58:26');

-- --------------------------------------------------------

--
-- Structure for view `supplier_info_view`
--
DROP TABLE IF EXISTS `supplier_info_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplier_info_view`  AS SELECT `s`.`supplier_id` AS `supplier_id`, `s`.`name` AS `name`, `s`.`contact_person` AS `contact_person`, `s`.`email` AS `email`, `s`.`phone_number` AS `phone_number`, `s`.`address` AS `address`, `c`.`city_name` AS `city_name`, `co`.`country_name` AS `country_name`, `pt`.`term_name` AS `payment_terms`, `pt`.`days_to_pay` AS `days_to_pay`, `s`.`credit_limit` AS `credit_limit`, `s`.`is_active` AS `is_active`, `s`.`created_at` AS `created_at`, `s`.`updated_at` AS `updated_at` FROM (((`suppliers` `s` left join `cities` `c` on(`s`.`city` = `c`.`city_name`)) left join `countries` `co` on(`c`.`country_id` = `co`.`country_id`)) left join `payment_terms` `pt` on(`s`.`payment_terms` = `pt`.`term_code`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `idx_city_name` (`city_name`),
  ADD KEY `idx_region` (`region`),
  ADD KEY `idx_country_id` (`country_id`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_code` (`country_code`),
  ADD UNIQUE KEY `country_name` (`country_name`),
  ADD KEY `idx_country_code` (`country_code`),
  ADD KEY `idx_country_name` (`country_name`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `highland_fresh_branches`
--
ALTER TABLE `highland_fresh_branches`
  ADD PRIMARY KEY (`branch_id`),
  ADD UNIQUE KEY `branch_code` (`branch_code`),
  ADD KEY `idx_branch_type` (`branch_type`),
  ADD KEY `idx_city_name` (`city_name`),
  ADD KEY `idx_is_active` (`is_active`),
  ADD KEY `idx_manager` (`manager_user_id`);

--
-- Indexes for table `inventory_adjustments`
--
ALTER TABLE `inventory_adjustments`
  ADD PRIMARY KEY (`adjustment_id`),
  ADD UNIQUE KEY `adjustment_number` (`adjustment_number`),
  ADD KEY `approved_by` (`approved_by`),
  ADD KEY `idx_adjustment_number` (`adjustment_number`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_adjustment_type` (`adjustment_type`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_reference` (`reference_type`,`reference_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD UNIQUE KEY `method_name` (`method_name`),
  ADD KEY `idx_method_name` (`method_name`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`payment_term_id`),
  ADD UNIQUE KEY `term_code` (`term_code`),
  ADD KEY `idx_term_code` (`term_code`),
  ADD KEY `idx_term_name` (`term_name`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `idx_sku` (`sku`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_unit_id` (`unit_id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_barcode` (`barcode`),
  ADD KEY `idx_is_active` (`is_active`),
  ADD KEY `idx_quantity_reorder` (`quantity_on_hand`,`reorder_level`),
  ADD KEY `idx_supplier_id` (`supplier_id`),
  ADD KEY `idx_expiry_date` (`expiry_date`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `attribute_name` (`attribute_name`),
  ADD KEY `idx_attribute_name` (`attribute_name`),
  ADD KEY `idx_attribute_type` (`attribute_type`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `unique_product_attribute` (`product_id`,`attribute_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_attribute_id` (`attribute_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD KEY `idx_category_name` (`category_name`),
  ADD KEY `idx_parent_category` (`parent_category_id`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`po_id`),
  ADD UNIQUE KEY `po_number` (`po_number`),
  ADD KEY `idx_po_number` (`po_number`),
  ADD KEY `idx_supplier_id` (`supplier_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status_id` (`status_id`),
  ADD KEY `idx_order_date` (`order_date`),
  ADD KEY `idx_expected_delivery_date` (`expected_delivery_date`);

--
-- Indexes for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  ADD PRIMARY KEY (`po_item_id`),
  ADD KEY `idx_po_id` (`po_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_expiry_date` (`expiry_date`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`return_id`),
  ADD UNIQUE KEY `return_number` (`return_number`),
  ADD KEY `idx_return_number` (`return_number`),
  ADD KEY `idx_sale_id` (`sale_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status_id` (`status_id`),
  ADD KEY `idx_return_date` (`return_date`),
  ADD KEY `idx_approved_by` (`approved_by`);

--
-- Indexes for table `return_items`
--
ALTER TABLE `return_items`
  ADD PRIMARY KEY (`return_item_id`),
  ADD KEY `idx_return_id` (`return_id`),
  ADD KEY `idx_sale_item_id` (`sale_item_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_condition` (`condition_type`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `sale_number` (`sale_number`),
  ADD KEY `idx_sale_number` (`sale_number`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_payment_method_id` (`payment_method_id`),
  ADD KEY `idx_status_id` (`status_id`),
  ADD KEY `idx_sale_date` (`sale_date`),
  ADD KEY `idx_customer_phone` (`customer_phone`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`sale_item_id`),
  ADD KEY `idx_sale_id` (`sale_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_status_id` (`status_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_contact_person` (`contact_person`),
  ADD KEY `idx_is_active` (`is_active`),
  ADD KEY `idx_payment_term_id` (`payment_term_id`),
  ADD KEY `idx_country_id` (`country_id`),
  ADD KEY `idx_city_id` (`city_id`);

--
-- Indexes for table `supplier_contacts`
--
ALTER TABLE `supplier_contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `idx_supplier_id` (`supplier_id`),
  ADD KEY `idx_contact_type` (`contact_type`),
  ADD KEY `idx_is_primary` (`is_primary`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `supplier_products`
--
ALTER TABLE `supplier_products`
  ADD PRIMARY KEY (`supplier_product_id`),
  ADD UNIQUE KEY `unique_supplier_product` (`supplier_id`,`product_id`),
  ADD KEY `idx_supplier_id` (`supplier_id`),
  ADD KEY `idx_product_id` (`product_id`),
  ADD KEY `idx_is_preferred` (`is_preferred`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD UNIQUE KEY `rate_code` (`rate_code`),
  ADD KEY `idx_rate_code` (`rate_code`),
  ADD KEY `idx_applicable_to` (`applicable_to`),
  ADD KEY `idx_city_id` (`city_id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_effective_date` (`effective_date`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `transaction_statuses`
--
ALTER TABLE `transaction_statuses`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`),
  ADD KEY `idx_status_name` (`status_name`),
  ADD KEY `idx_status_type` (`status_type`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `units_of_measure`
--
ALTER TABLE `units_of_measure`
  ADD PRIMARY KEY (`unit_id`),
  ADD UNIQUE KEY `unit_name` (`unit_name`),
  ADD UNIQUE KEY `unit_abbreviation` (`unit_abbreviation`),
  ADD KEY `idx_unit_name` (`unit_name`),
  ADD KEY `idx_unit_abbreviation` (`unit_abbreviation`),
  ADD KEY `idx_unit_type` (`unit_type`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idx_username` (`username`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_branch_id` (`branch_id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`),
  ADD KEY `idx_role_name` (`role_name`),
  ADD KEY `idx_is_active` (`is_active`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `highland_fresh_branches`
--
ALTER TABLE `highland_fresh_branches`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory_adjustments`
--
ALTER TABLE `inventory_adjustments`
  MODIFY `adjustment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `payment_term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `purchase_order_items`
--
ALTER TABLE `purchase_order_items`
  MODIFY `po_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `return_items`
--
ALTER TABLE `return_items`
  MODIFY `return_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `supplier_contacts`
--
ALTER TABLE `supplier_contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_products`
--
ALTER TABLE `supplier_products`
  MODIFY `supplier_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction_statuses`
--
ALTER TABLE `transaction_statuses`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `units_of_measure`
--
ALTER TABLE `units_of_measure`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON UPDATE CASCADE;

--
-- Constraints for table `inventory_adjustments`
--
ALTER TABLE `inventory_adjustments`
  ADD CONSTRAINT `inventory_adjustments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inventory_adjustments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `inventory_adjustments_ibfk_3` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units_of_measure` (`unit_id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_attribute_values_ibfk_2` FOREIGN KEY (`attribute_id`) REFERENCES `product_attributes` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `product_categories` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
