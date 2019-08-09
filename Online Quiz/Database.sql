-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2019 at 11:10 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reception1`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `cnum` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `profile` varchar(50) NOT NULL,
  `experience` int(5) NOT NULL,
  `ca` varchar(10) NOT NULL,
  `source` varchar(30) NOT NULL,
  `subsource` varchar(30) NOT NULL,
  `consultancy` varchar(30) NOT NULL,
  `other_source` varchar(30) NOT NULL,
  `q_set` varchar(20) NOT NULL,
  `register_date` date NOT NULL,
  `register_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`cnum`, `name`, `department`, `profile`, `experience`, `ca`, `source`, `subsource`, `consultancy`, `other_source`, `q_set`, `register_date`, `register_time`) VALUES
('', 'Suman Das', 'Tech', 'Digital Marketing', 29, 'NO', 'Others', '', '', 'instagram.com', '', '0000-00-00', '00:00:00'),
('2019-07-000', 'xyz', 'xyz', 'xyz', 5, 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', '0000-00-00', '00:00:00'),
('2019-07-001', 'Sona Shaw', 'Accounting', 'Accountant', 2, 'NO', 'Reference', 'Internal', '', '', 'Basic', '0000-00-00', '00:00:00'),
('2019-07-002', 'Sumanjit kuity', 'Accounting', 'Associate Accountant', 2, 'YES', 'Others', '', '', 'facebook.com', 'Advanced', '0000-00-00', '00:00:00'),
('2019-07-003', 'purbasha', 'Admin', 'Admin Head', 3, 'NO', 'Online', 'Indeed.com', '', '', '', '0000-00-00', '00:00:00'),
('2019-07-004', 'Rohan Dinda', 'Accounting', 'Assistant Accountant', 5, 'YES', 'Online', 'Others', '', 'facebook.com', '', '0000-00-00', '00:00:00'),
('2019-07-005', 'fffwefwef68', 'Admin', 'Admin Head', 4, 'NO', 'Reference', 'Internal', '', 'jjgyuf', '', '0000-00-00', '00:00:00'),
('2019-07-006', 'effewc utyf', 'Accounting', 'Junior Accountant', 2, 'YES', 'Others', '', '', 'dff', '', '0000-00-00', '00:00:00'),
('2019-07-007', 'Riya Sen', 'HR', 'HR Head', 4, 'YES', 'Online', 'Naukri.com', '', '', '', '0000-00-00', '00:00:00'),
('2019-07-008', 'gupi', 'Admin', 'Admin Head', 3, 'NO', 'Others', '', '', 'facebook.com', '', '0000-00-00', '00:00:00'),
('2019-07-009', 'jeevan', 'Accounting', 'Accountant', 5, 'NO', 'Online', 'Naukri.com', '', '', 'Basic', '0000-00-00', '00:00:00'),
('2019-07-010', 'Ravi  Mishra', 'Accounting', 'Accountant', 3, 'NO', 'Online', 'Naukri.com', '', '', 'Basic', '2019-07-29', '19:13:46'),
('2019-07-011', 'Dilip Sen', 'Admin', 'Admin Head', 4, 'YES', 'Consultancy', 'Free', 'B', '', 'Professional', '2019-07-30', '16:01:16'),
('2019-07-012', 'Riya Jha', 'HR', 'HR Head', 3, 'NO', 'Consultancy', 'Paid', 'C', '', 'Basic', '2019-07-30', '18:00:22'),
('2019-07-013', 'Sourav Sairo', 'Accounting', 'Junior Accountant', 3, 'YES', 'Reference', 'Internal', '', 'Dilip Sir', 'Professional', '2019-07-30', '18:00:52'),
('2019-08-014', 'Arnab Mondal', 'Accounting', 'Associate Accountant', 6, 'NO', 'Online', 'Naukri.com', '', '', 'Basic', '2019-08-01', '03:41:19'),
('2019-08-015', 'Srijit Ganguli', 'Tech', 'IT Manager', 8, 'YES', 'Online', 'Indeed.com', '', '', 'Professional', '2019-08-01', '03:41:45'),
('2019-08-016', 'dfv ogfkj', 'Accounting', 'Accountant', 9, 'NO', 'Reference', 'Internal', '', 'xyz', 'Basic', '2019-08-01', '11:15:01'),
('2019-08-017', 'Sourav Dhara', 'Admin', 'Admin Head', 2, 'NO', 'Online', 'Naukri.com', '', '', 'Basic', '2019-08-01', '12:13:57'),
('2019-08-018', 'Vipul Kumar', 'HR', 'HR Head', 5, 'YES', 'Consultancy', 'Free', 'A', '', 'Professional', '2019-08-01', '12:14:22'),
('2019-08-019', 'Pekhom', 'Accounting', 'Assistant Accountant', 3, 'NO', 'Consultancy', 'Free', 'B', '', 'Basic', '2019-08-02', '00:09:02'),
('2019-08-020', 'Sourav Sairo', 'HR', 'HR Head', 7, 'NO', 'Online', 'LinkedIn.com', '', '', 'Basic', '2019-08-03', '23:57:48'),
('2019-08-021', 'Subhojit Gupta', 'Admin', 'Admin Head', 6, 'NO', 'Reference', 'Internal', '', 'Anushree', 'Basic', '2019-08-03', '23:58:21'),
('2019-08-022', 'Nishat Jha', 'Accounting', 'Assistant Accountant', 13, 'NO', 'Online', 'Indeed.com', '', '', 'Intermediate', '2019-08-03', '23:59:30'),
('2019-08-023', 'Kashif Ahmed', 'Accounting', 'Accountant', 3, 'NO', 'Online', 'Naukri.com', '', '', 'Basic', '2019-08-04', '00:01:04'),
('2019-08-024', 'Amir Sohel', 'Accounting', 'Accountant', 4, 'NO', 'Online', 'Indeed.com', '', '', 'Basic', '2019-08-04', '00:01:46'),
('2019-08-025', 'Arvind Kumar', 'Accounting', 'Team Lead', 6, 'YES', 'Others', '', '', 'Dilip Sir', 'Professional', '2019-08-05', '01:06:28'),
('2019-08-026', 'Vivek Kumar', 'Accounting', 'Junior Accountant', 3, 'NO', 'Online', 'Naukri.com', '', '', 'Basic', '2019-08-05', '01:08:12'),
('2019-08-027', 'Guru Randhawa', 'Accounting', 'Associate Accountant', 4, 'NO', 'Online', 'Indeed.com', '', '', 'Basic', '2019-08-05', '13:21:31'),
('2019-08-028', 'Anamika Guha', 'Accounting', 'Team Lead', 5, 'NO', 'Consultancy', 'Free', 'B', '', 'Basic', '2019-08-06', '11:03:34'),
('2019-08-029', 'Subhajit Gupta', 'Admin', 'Admin Head', 5, 'NO', 'Online', 'LinkedIn.com', '', '', 'Basic', '2019-08-06', '11:04:03'),
('2019-08-030', 'Arkadeep Bakshi', 'HR', 'HR Head', 5, 'NO', 'Others', '', '', 'facebook.com', 'Basic', '2019-08-06', '11:05:57'),
('2019-08-031', 'Dhiraj Pani', 'Accounting', 'Assistant Accountant', 14, 'NO', 'Online', 'LinkedIn.com', '', '', 'Intermediate', '2019-08-06', '13:58:48'),
('2019-08-032', 'Rohan Sarkar', 'Accounting', 'Assistant Accountant', 6, 'NO', 'Online', 'Indeed.com', '', '', 'Basic', '2019-08-07', '02:16:30'),
('2019-08-033', 'Biswajit Pramanik', 'Accounting', 'Junior Accountant', 14, 'NO', 'Reference', 'Internal', '', 'instagram.com', 'Intermediate', '2019-08-07', '02:17:08'),
('2019-08-034', 'Jassi Gill', '', 'Client Supervisor', 7, 'YES', 'Online', 'LinkedIn.com', '', '', 'Professional', '2019-08-08', '01:51:52'),
('2019-08-035', 'Jass Manak', 'Accounting', 'Senior Accountant', 30, 'NO', 'Online', 'Indeed.com', '', '', 'Advanced', '2019-08-08', '02:03:42'),
('2019-08-036', 'Allu Arjun', 'Accounting', 'Associate Accountant', 16, 'NO', 'Consultancy', 'Free', 'B', '', 'Intermediate', '2019-08-08', '02:05:14'),
('2019-08-037', 'Kamal Raja', 'Accounting', 'Junior Accountant', 7, 'NO', 'Reference', 'Internal', '', 'instagram.com', 'Basic', '2019-08-08', '02:06:09'),
('2019-08-038', 'Micky Singh', '', 'Manager', 15, 'YES', 'Online', 'Indeed.com', '', '', 'Professional', '2019-08-08', '11:56:10'),
('2019-08-039', 'Astha Gill', '', 'Manager', 22, 'YES', 'Online', 'LinkedIn.com', '', '', 'Professional', '2019-08-08', '12:01:55'),
('2019-08-040', 'Amrit Raj', 'Accounting', 'Manager', 25, 'YES', 'Online', 'LinkedIn.com', '', '', 'Professional', '2019-08-08', '12:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_login`
--

CREATE TABLE `candidate_login` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_login`
--

INSERT INTO `candidate_login` (`name`, `email`, `password`, `role`) VALUES
('Juhi Kothari', 'candidate@cloudinfosolutions.com', 'Candidate@123', 'user'),
('Adhiraj Didwania', 'hr@cloudinfosolutions.com', 'hr@123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE `question_bank` (
  `qid` int(11) NOT NULL,
  `statement` varchar(1024) NOT NULL,
  `answer1` varchar(512) NOT NULL,
  `answer2` varchar(512) NOT NULL,
  `answer3` varchar(512) NOT NULL,
  `answer4` varchar(512) NOT NULL,
  `correctanswer` tinyint(4) NOT NULL,
  `cat_id` int(4) DEFAULT NULL,
  `level_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`qid`, `statement`, `answer1`, `answer2`, `answer3`, `answer4`, `correctanswer`, `cat_id`, `level_id`) VALUES
(1, 'When a customer returns goods, the account to be debited is:', 'Revenue Account', 'Cash Account', 'Return Inward Account', 'Return Outward Account', 3, 1, 1),
(2, 'The document sent to a customer when s/he returns the goods sold to her/him is called a:', 'Credit note', 'Debit note', 'Invoice', 'Promissory note', 1, 1, 1),
(3, 'Which of the following statement is most appropriate?', 'Adjusting entries affect the balance sheet only', 'Adjusting entries affect the income statement only', 'Adjusting entries affect both the balance sheet and the income statement', 'Adjusting entries may affect two or more accounts within the balance sheet or two or more accounts within the income statement but the adjustment(s) cannot affect both the balance sheet and the income statement simultaneously', 3, 1, 1),
(4, 'Rs. 1,500 spent on repairs before using a second-hand car purchased recently is a:', 'Capital expenditure', 'Revenue expenditure', 'Prepaid revenue expenditure', 'None of the above', 1, 1, 1),
(5, 'Adjusting entry for outstanding rent is:', 'Outstanding Rent Account ………. Dr.\r\nTo Rent Account\r\n', 'Outstanding Rent Account ………. Dr.\r\nTo Cash Account\r\n', 'Rent Account ………. Dr.\r\nTo Accounts Payable Account\r\n', 'Rent Account ………. Dr.\r\nTo Outstanding Rent Account\r\n', 4, 1, 1),
(6, 'The owner of the business takes Rs. 100 in cash and goods costing Rs. 200 for his family. The journal entry for this transaction is:', 'Drawings Account ………. Dr. \r\nTo Cash Account\r\nTo Purchase Account\r\n', 'Drawings Account\r\nTo Cash Account\r\nTo Goods Account\r\n', 'Drawings Account ………. Dr.\r\nTo Cash Account\r\n		To Sales Account', 'Cash Account ………. Dr.\r\nPurchase Account ………. Dr.\r\nTo Drawings Account\r\n', 1, 1, 1),
(7, 'Commission received in advance is a:', 'Personal Account ', 'Nominal Account', 'Real Account', 'None of the above', 1, 1, 1),
(8, 'The correct entry for the sale of goods on credit is:', 'Accounts receivable ………. Dr.\r\nTo Profit & Loss Account\r\n', 'Cash Account ………. Dr.\r\nTo Sales Account\r\n', 'Accounts Receivable ………. Dr.\r\nTo Asset Account\r\n', 'Accounts Receivable ………. Dr. \r\nTo Sales Account\r\n', 4, 1, 1),
(9, 'Brown Glory Co. has:\r\na. Sales revenue – Rs. 1,50,000 \r\nb. Sales discount – Rs. 12,000 \r\nc. Sales return – Rs. 24,000\r\nd. Cost of goods sold – Rs. 60,000\r\nWhat is the net sales revenue of Brown Glory Co.?', 'Rs. 1,02,000', 'Rs. 54,000', 'Rs. 90,000', 'Rs. 1,14,000', 4, 1, 1),
(10, 'Merchandise stolen by someone should be debited to:', 'Loss on transit Account', 'Sales Account', 'Loss by Theft Account', 'No entry should be passed', 3, 1, 1),
(11, 'All the acceptances received from debtors are recorded in the:', 'Cash Account', 'Debtors Account', 'Accounts Receivable', 'Accounts Payable', 3, 1, 1),
(12, 'Credit purchase of machinery is recorded in the:', 'Cash Account', 'Purchase Account ', 'Sales Account', 'Journal Proper', 4, 1, 1),
(13, 'Which one of the following is a correct adjusting entry to record depreciation on furniture?', 'Depreciation Account – Furniture ………. Dr.\r\nTo Accumulated Depreciation – Furniture\r\n', 'Depreciation Account – Furniture ………. Dr.\r\nTo Fixed Assets Account\r\n', 'Depreciation Account – Furniture ………. Dr.\r\nTo Capital Account\r\n', 'Accumulated Depreciation – Furniture ………. Dr.\r\nTo Depreciation Account – Furniture\r\n', 1, 1, 1),
(14, 'An account having a credit balance in the general ledger will be classified as:', 'An Asset Account', 'An Expense Account', 'A Liability Account', 'None of the above', 1, 1, 1),
(15, 'Cost of goods sold – Rs. 1,50,000\nClosing inventory – Rs. 40,000\nOpening inventory – Rs. 60,000\nFind the amount of purchases:', 'Rs. 1,30,000', 'Rs. 1,70,000', 'Rs. 50,000', 'None of the above', 1, 1, 1),
(16, 'The correct entry for purchase of goods on credit is:', 'Purchase Account ………. Dr. \r\nTo Cash Account', 'Purchase Account ………. Dr. \r\nTo Accounts Payable', 'Purchase Account ………. Dr. \r\nTo Liability Account', 'Accounts Payable ………. Dr. \r\nTo Purchase Account', 2, 1, 1),
(17, 'When a customer returns goods, the account to be debited is the:', 'Revenue Account', 'Cash Account', 'Return Inwards Account', 'Return Outwards Account', 3, 1, 1),
(18, 'The correct journal entry for return of goods purchased from Mr. John on credit is:', 'Cash Account ………. Dr.\r\nTo Purchase Account', 'Mr. John’s Account ………. Dr.\r\nTo Goods Account', 'Mr. John’s Account ………. Dr.\r\nTo Purchase Returns & Allowances Account', 'None of the above', 3, 1, 1),
(19, 'When a customer returns goods, the account to be debited is:', 'Revenue Account', 'Cash Account', 'Return Inward Account', 'Return Outward Account', 3, 1, 1),
(20, 'What is meant by accounts receivable?', 'Money owed to a company by its debtors', 'Money owed by a company to its creditors', 'Money owed to a company by its employees', 'Money owed by a company to its vendors', 1, 1, 1),
(21, 'Find the odd one out: 3, 5, 11, 14, 17, 21', '5', '3', '17', '14', 4, 2, 1),
(22, 'What number should come last in the pattern: 9, 16, 23, 30, ___', '33', '36', '37', '43', 3, 2, 1),
(23, 'Solve: 0.9 X 0.007 = _________', '0.063', '0.0063', '0.63', '0.00063', 2, 2, 1),
(24, 'One-fifth of John’s expenditure is equal to one-half of his savings. If his monthly income is Rs.6300 how much amount does he save?', 'Rs. 1,550', 'Rs. 1,800', 'Rs. 2,000', 'Rs. 2,350', 2, 2, 1),
(25, 'The profit obtained by selling an article for Rs. 56 is the same as the loss obtained by selling it for Rs. 42. What is the cost price of the article?', 'Rs. 40', 'Rs. 50', 'Rs. 49', 'None of the above', 3, 2, 1),
(26, 'What number should fill the blank in the given series: \r\nV, VIII, XI, XIV, __, XX', 'IX', 'XXIII', 'XV', 'XVII', 4, 2, 1),
(27, 'What is 75% of 5?', '4', '5.4', '8', '1', 1, 2, 1),
(28, 'Your mother\'s brother\'s only brother-in-law is asleep on your couch. Who is asleep on your couch?', 'Your Uncle', 'Your Father', 'Your Grandfather', 'Your Cousin', 2, 2, 1),
(29, 'Bob\'s father has 4 children. Momo, Meme, and Mumu are three of them. Who\'s the fourth?', 'Mama', 'Mimi', 'Moeu', 'None of the above', 4, 2, 1),
(30, 'Which of the following is a prime number?', '99', '49', '51', '97', 4, 2, 1),
(31, 'Find the odd one out: 10, 14, 16, 18, 21, 24, 26', '14', '18', '21', '24', 3, 2, 1),
(32, 'Which of the following is not a prime number?', '31', '61', '71', '91', 4, 2, 1),
(33, 'What number comes next in the pattern: 14, 26, 38, 50, ___', '62', '64', '56', '78', 1, 2, 1),
(34, 'A fruit-seller sells 40% of his apples and still has 420 apples left. When he started selling, he had:', '588 apples', '600 apples', '700 apples', '672 apples', 1, 2, 1),
(35, 'If 20% of a = b, then b% of 20 is the same as:', '5% of a', '4% of a', '20% of a', 'None of the above', 2, 2, 1),
(36, 'Alfred buys an old scooter for Rs. 4,700 and spends Rs. 800 on its repairs. If he sells the scooter for Rs. 5,800, his gain percent is:', '4.54%', '5.45%', '5%', '4%', 2, 2, 1),
(37, 'Solve: 0.009/ ___ = 0.01', '0.009', '0.09', '0.9', '9', 3, 2, 1),
(38, 'Ajay said, \"This girl’s mother\'s brother is the only son of my mother\'s father.\" How is the girl\'s mother related to Ajay?', 'Ajay’s aunt', 'Ajay’s mother', 'Ajay’s cousin', 'None of the above', 1, 2, 1),
(39, 'Larry’s father has five sons named Ten, Twenty, Thirty, Forty, ___. Guess what would be the name of the fifth?', 'Fifty', 'Zero', 'Twenty-five', 'None of the above', 4, 2, 1),
(40, 'Solve: ½ ÷ ?', '1/3', '0.6', '3', 'None of the above', 3, 2, 1),
(41, 'Find the odd one out: 3, 5, 7, 12, 17, 19', '19', '17', '5', '12', 4, 2, 1),
(42, 'Identify the correct sentence:', 'The students was jumping and falling all over the place.', 'The students were jumping and fell all over the place.', 'The students were jumping and falling all over the place.', 'The students jumped and were falling all over the place.', 3, 3, 1),
(43, 'Fill in the blanks: The boy is ____ the class.', 'in', 'into', 'by', 'within', 1, 3, 1),
(44, 'Fill in the blanks: In some countries, ______very hot all the time.', 'there is', 'is', 'it is', 'it were', 3, 3, 1),
(45, 'Fill in the blanks: You have no authority _____ say so.', 'for', 'over', 'upon', 'to', 4, 3, 1),
(46, 'Fill in the blanks: Who is ____________, Marina or Sachiko?', 'tallest', 'more taller', 'taller', 'more tall', 3, 3, 1),
(47, 'Fill in the blanks: The concert will begin ________ fifteen minutes.', 'in', 'about', 'by', 'into', 1, 3, 1),
(48, 'Fill in the blanks: Eli\'s hobbies include jogging, swimming, and __________.', 'to climb mountains', 'climb mountains', 'to climb', 'climbing mountains', 4, 3, 1),
(49, 'Fill in the blanks: The majority of the news ______ about violence or scandal.', 'is', 'am', 'are', 'were', 1, 3, 1),
(50, 'Choose the correct sentence:', 'Each day after school, Jerome run five miles.', 'Each day after school, Jerome runs five miles.', 'Each day after school Jerome run five mile.', 'Each days after school Jerome run five miles.', 2, 3, 1),
(51, 'Fill in the blanks: He is addicted _____ gambling.', 'to', 'for', 'within', 'as', 1, 3, 1),
(52, 'The following will have debit balance:', 'Loan to other party', 'Capital account', 'Outstanding salary account', 'Revenue for doubtful debts', 1, 1, 2),
(53, 'Following figures have been taken from trial balance of a trader:\r\na. Cost of goods sold – Rs. 45,000\r\nb. Sales – Rs. 60,000\r\nc.Closing inventory – Rs. 10,000\r\nThe amount of gross profit will be:', 'Rs. 15,000', 'Rs. 25,000', 'Rs. 5,000', 'None of the above', 1, 1, 2),
(54, 'Journal entry for wages paid for installation of plant will be: ', 'Plant Account ………. Dr.\r\n         To Cash Account', 'Wages Account ………. Dr.\r\n         To Cash Account', 'Plant Repairs Account ………. Dr.\r\n         To Cash Account', 'None of the above', 1, 1, 2),
(55, 'Rs. 1,500 spent on repairs before using a second-hand car purchased recently is a:', 'Capital expenditure', 'Revenue expenditure', 'Prepaid revenue expenditure', 'None of the above', 1, 1, 2),
(56, 'Net salary paid to employees Rs. 45,000 in cash after deducting income tax Rs. 1,000, professional tax Rs. 200, employees provident fund Rs. 2,000, staff welfare fund Rs. 100 and recovery of loan Rs. 1,700. Salary account will be debited with:', 'Rs. 50,000', 'Rs. 45,000', 'Rs. 48,000', 'None of the above', 1, 1, 2),
(57, 'A manager gets 5% commission on sales. Cost price of goods sold is Rs. 40,000 which he sells at a margin of 20% on sale. Commission will be:', 'Rs. 2,500', 'Rs. 2,400', 'Rs. 2,000', 'None of the above', 1, 1, 2),
(58, 'The correct entry for the sale of goods on credit is:', 'Accounts Receivable ………. Dr.\r\n           To Profit & Loss Account', 'Cash Account ………. Dr.\r\n          To Sales Account', 'Accounts Receivable ………. Dr.\r\n          To Asset Account', 'Accounts Receivable ………. Dr.\r\n          To Sales Account', 4, 1, 2),
(59, 'Which of the following documents authorizes the purchase transaction?', 'Credit memo from supplier', 'Invoice or bill from supplier', 'Purchase order', 'Purchase requisition', 3, 1, 2),
(60, 'Unexpired portion of capital expenditure is shown in:', 'Trading account', 'Profit and loss account', 'Balance sheet', 'None of the above', 3, 1, 2),
(63, 'When a customer returns goods, the account to be debited is:', 'Revenue Account', 'Cash Account', 'Return Inward Account', 'Return Outward Account', 3, 1, 2),
(64, 'After preparing the trial balance the accountant finds that the total of the credit side is short by Rs. 2,000. This difference will be:', 'Debited to Suspense Account', 'Credited to Suspense Account', 'Adjusted to any of the credit balance account', 'djusted to any of the debit balance account', 2, 1, 2),
(65, 'Commission Received in Advance is a:', 'Personal Account', 'Nominal Account', 'Real Account', 'None of the above', 1, 1, 2),
(66, 'A second-hand car is purchased for Rs. 15,000, the amount of Rs. 1,000 is spent on its repairs, Rs. 500 is incurred to get the car registered in owner’s name and Rs. 1,200 is paid as dealer’s commission. The amount debited to Car Account will be:', 'Rs. 17,700', 'Rs. 16,000', 'Rs. 16,500', 'Rs. 17,000', 1, 1, 2),
(67, 'Rings and pistols of an engine were charged at accost of Rs. 5,000 to increase fuel efficiency is:', 'Capital Expenditure', 'Revenue Expenditure', 'Prepaid Revenue Expenditure', 'None of the above', 1, 1, 2),
(68, 'a. Cost of goods sold – Rs. 1,50,000\r\nb. Closing inventory – Rs. 40,000\r\nc. Opening inventory – Rs. 60,000\r\nFind the amount of purchases:', 'Rs. 1,30,000', 'Rs. 1,70,000', 'Rs. 50,000', 'None of the above', 1, 1, 2),
(69, 'The owner of the business takes Rs. 100 in cash and goods costing Rs. 200 for his family. The journal entry for this transaction is:', 'Drawings Account ………. Dr.\r\n             To Cash Account\r\n             To Purchase Account', 'Drawings Account ………. Dr.\r\n      To Cash Account\r\n      To Goods Account', 'Drawings Account ………. Dr.\r\n      To Cash Account\r\n      To Sales Account', 'Cash Account ………. Dr.\r\n	  Purchase Account ………. Dr.\r\n            To Drawings Account', 1, 1, 2),
(70, 'What is meant by Accounts Receivable?', 'Money owed to a company by its debtors', 'Money owed by a company to its creditors', 'Money owed by a company to its creditors', 'Money owed by a company to its vendors', 1, 1, 2),
(71, 'Closing entry for transfer of net profit Rs 6300 to capital account will be:', 'Trading Account ………. Dr.\r\n                    To Balance Sheet', 'Trading Account ………. Dr.\r\n                    To Profit and Loss Account', 'Profit and Loss Account ………. Dr.\r\n                      To Capital Account', 'Capital Account ………. Dr.\r\n                     To Profit and Loss Account', 3, 1, 2),
(72, 'Which of phrases given below each sentence should replace the underlined phrase to make the grammatically correct? \r\nHad you been told me about your problem, I would have helped you.', 'If you would have told', 'Had you have told', 'Had you told', 'If you have told', 3, 3, 2),
(73, 'Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nAyesha always _____ the permission of her father before going for movies.\r\n', 'seeking', 'sought', 'seeker', 'seeks', 4, 3, 2),
(74, 'Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\r\nIn high school many of us never realized the importance that grammar would ______in later life.\r\n', 'exercise', 'figure', 'play', 'portray', 3, 3, 2),
(75, 'Find the correctly spelt words.', 'Foreign', 'Foreine', 'Foreing', 'None of the above', 1, 3, 2),
(76, 'In the question given below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\n        “When he ___________________”\r\n         P:did not know\r\n         Q:he was nervous and\r\n         R:heard the hue and cry at midnight\r\n         S:what to do\r\n          The Proper sequence should be:\r\n', 'RQPS', 'PQRS', 'SRQP', 'RPQS', 1, 3, 2),
(77, 'Which of phrases given below each sentence should replace the underlined phrase to make the grammatically correct?\r\n  ‘The man to who I sold my house was a cheat.’', 'to whom I sell', 'to who I sell', 'who was sold to', 'to whom I sold', 4, 3, 2),
(78, 'Fill in the blanks with correct option: \r\n     His conduct is bad, and his honesty is not ____ suspicion.\r\n', 'beyond', 'above', 'under', 'in', 2, 3, 2),
(79, 'Which of phrases given below each sentence should replace the underlined phrase to make the grammatically correct? \r\nHe never has and ever will take such strong measures.', 'had taken nor will ever take', 'had taken and will ever take', 'has and never will take', 'had and ever will take', 1, 3, 2),
(80, 'Fill in the blanks:\r\nMany ___decisions were taken at the meeting.\r\n', 'historic', 'hectic', 'historical', 'histrionic', 1, 3, 2),
(81, 'Pick out the most effective word from the given words to fill in the blank to make the sentence meaningfully complete.\r\nThe robbers were arrested and ____prison yesterday.\r\n', 'taken to', 'brought into', 'taken into', 'brought to', 1, 3, 2),
(82, 'In the question below five words are given. Find out that word, the spelling of which is wrong.', 'Filled', 'Skilled', 'Fulfilled', 'All correct', 3, 3, 2),
(83, 'In the question below, there is a sentence of which some parts have been jumbled up. Rearrange these parts which are labelled P, Q, R and S to produce the correct sentence. Choose the proper sequence.\r\n“It was to be_________”\r\nP: before their school examination \r\nQ: which was due to start \r\nR: the last expedition \r\nS: in a month’s\r\nThe proper sequence should be:', 'RPQS', 'PQRS', 'SRQP', 'RQPS', 1, 3, 2),
(84, 'Select the grammatically correct sentence.', 'You need not come unless you want to.', 'You don\'t need to come unless you want to.', 'You come only when you want to.', 'You come unless you don\'t want to.', 2, 3, 2),
(85, 'Fill in the blank with appropriate word:\r\nThe ruling party will have to put its own house _____ order.\r\n', 'in', 'on', 'through', 'to', 1, 3, 2),
(86, 'Which of the following is largest fraction amongst: 5/8, 3/7, 2/9, 4/5?', '3/7', '5/8', '4/5', 'All are equal', 3, 2, 2),
(87, 'If a shopkeeper gives 20% discount and then 10% discount on a pen, which has the marked price of Rs. 500, how much would be the selling price of the pen?', 'Rs.350', 'Rs.150', 'Rs.320', 'Rs.360', 4, 2, 2),
(88, 'Tea is to Leave as Coffee is to ________.', 'Plant', 'Leave', 'Beverage', 'Seeds', 4, 2, 2),
(89, 'What will be value of:]\r\n74.6 - 38.9 - 5.7', '30', '29.5', '28', '30.5', 1, 2, 2),
(90, 'Find the odd one out:\r\n10, 25, 45, 54, 60, 75, 80', '10', '45', '54', '75', 3, 2, 2),
(91, '3/4 part of tank is full of water. When 30 litres of water is taken out it becomes empty. The capacity of the tank is?', '36 litres', '42 litres', '40 litres', '38 litres', 3, 2, 2),
(92, 'The average weight of 8 people increases by 2.5 kg when a new person comes in place of one of them weighing 65 kg. What might be the weight of the new person?', '76 kg', '76.5 kg', '85 kg', 'None of these', 3, 2, 2),
(93, 'Look carefully for the pattern, and then choose which number should be filled in the blank:\n34, 43, __, 54, 56, 65', '45', '53', '48', '47', 1, 2, 2),
(94, 'Pointing to a photograph Lata says,\"He is the son of the only son of my grandfather.\" How is the man in the photograph related to Lata?', 'Brother', 'Uncle', 'Cousin', 'Step-father', 1, 2, 2),
(95, 'A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is:', '1/4', '1/10', '7/10', '8/15', 4, 2, 2),
(96, 'There is a 10% discount on a dozen pairs of trousers marked at Rs. 8,000. How many pair of trousers can be bought with Rs.2,400?', '4', '5', '8', '2', 1, 2, 2),
(97, 'What is increasing order of the fractions: 6/7, 8/9, 7/8, 9/10?', '8/9, 7/8, 9/10', '9/10, 7/8, 8/9', '7/8, 8/9, 9/10', '9/10, 8/9, 7/8', 3, 2, 2),
(98, 'Find the odd one: 8, 27, 64, 100, 125, 216, 343', '27', '100', '125', '343', 2, 2, 2),
(99, 'The average age of Ram and Shyam is 65 years. The average age of Ram, Shyam and John is 53 years. What is the age of John?', '29 years', '31 years', '59 years', '45 years', 1, 2, 2),
(100, 'A number is multiplied by its one-third to get 192. Find the number.', '16', '20', '24', '28', 3, 2, 2),
(101, 'Look carefully for the pattern, and then choose which number should be filled in the blank: 42 41 39 __32', '38', '36', '35', '34', 2, 2, 2),
(102, 'Introducing a boy, a girl said, \"He is the son of the daughter of the father of my uncle.\" How is the boy related to the girl?', 'Brother', 'Nephew', 'Uncle', 'Son in law', 1, 2, 2),
(103, 'Steve\'s father has four children. If the first three are named Sam, Sem, and Sim, what is the fourth\'s name?', 'Sum', 'Som', 'Son', 'None of the above', 4, 2, 2),
(104, 'Which is heavier of the two:\r\na. a pound of feather or\r\nb. a pound of gold\r\n', 'Feather', 'Gold', 'Neither', 'Can’t say', 3, 2, 2),
(105, 'A can lay railway track between two given stations in 16 days and B can do the same job in 12 days. With help of C, they did the job in 4 days only. Then, how much work did C do in a day when working with A and C:', '4/58', '5/48', '4/48', '5/58', 2, 2, 2),
(106, 'When closing inventory is understated, net income for the accounting period will be:', 'Overstated', 'Understated', 'Will not be affected', 'None of the above', 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `email`, `password`) VALUES
('Adhiraj Sir', 'frontdesk@cloudinfosolutions.com', 'Frontdesk@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`cnum`);

--
-- Indexes for table `candidate_login`
--
ALTER TABLE `candidate_login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
