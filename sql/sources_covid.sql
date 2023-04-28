-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2023 a las 05:18:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database-1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sources_covid`
--

CREATE TABLE `sources_covid` (
  `sha` text NOT NULL,
  `source_x` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `doi` text DEFAULT NULL,
  `pmcid` text DEFAULT NULL,
  `pubmed_id` text DEFAULT NULL,
  `license` text NOT NULL,
  `abstract` text NOT NULL,
  `publish_time` text NOT NULL,
  `authors` text NOT NULL,
  `journal` text NOT NULL,
  `microsoft_academic_paper_id` text NOT NULL,
  `who_covidence` text NOT NULL,
  `has_full_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sources_covid`
--

INSERT INTO `sources_covid` (`sha`, `source_x`, `title`, `doi`, `pmcid`, `pubmed_id`, `license`, `abstract`, `publish_time`, `authors`, `journal`, `microsoft_academic_paper_id`, `who_covidence`, `has_full_text`) VALUES
('1d7f8850c5244fdc9b387038e7eeae9bcbbde6d2,CZI,Optimization Method for Forecasting Confirmed Cases of COVID-19 in China,10.3390/jcm9030674,,32131537,cc-by,\"In December 2019, a novel coronavirus, called COVID-19, was discovered in Wuhan, China, and has spread to different cities in China as well as to 24 other countries. The number of confirmed cases is increasing daily and reached 34,598 on 8 February 2020. In the current study, we present a new forecasting model to estimate and forecast the number of confirmed cases of COVID-19 in the upcoming ten days based on the previously confirmed cases recorded in China. The proposed model is an improved adaptive neuro-fuzzy inference system (ANFIS) using an enhanced flower pollination algorithm (FPA) by using the salp swarm algorithm (SSA). In general, SSA is employed to improve FPA to avoid its drawbacks (i.e., getting trapped at the local optima). The main idea of the proposed model, called FPASSA-ANFIS, is to improve the performance of ANFIS by determining the parameters of ANFIS using FPASSA. The FPASSA-ANFIS model is evaluated using the World Health Organization (WHO) official data of the outbreak of the COVID-19 to forecast the confirmed cases of the upcoming ten days. More so, the FPASSA-ANFIS model is compared to several existing models, and it showed better performance in terms of Mean Absolute Percentage Error (MAPE), Root Mean Squared Relative Error (RMSRE), Root Mean Squared Relative Error (RMSRE), coefficient of determination ( R 2 ), and computing time. Furthermore, we tested the proposed model using two different datasets of weekly influenza confirmed cases in two countries, namely the USA and China. The outcomes also showed good performances.\",2020,\"Al-Qaness, Mohammed A. A.', ' Ewees, Ahmed A.', ' Fan, Hong', ' Abd El Aziz, Mohamed\",J Clin Med,3006671704,#4638,True\nf294f0df7468a8ac9e27776cc15fa20297a9f040,CZI,Systematic Comparison of Two Animal-to-Human Transmitted Human Coronaviruses: SARS-CoV-2 and SARS-CoV,10.3390/v12020244,,,cc-by,\"After the outbreak of the severe acute respiratory syndrome (SARS) in the world in 2003, human coronaviruses (HCoVs) have been reported as pathogens that cause severe symptoms in respiratory tract infections. Recently, a new emerged HCoV isolated from the respiratory epithelium of unexplained pneumonia patients in the Wuhan seafood market caused a major disease outbreak and has been named the severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). This virus causes acute lung symptoms, leading to a condition that has been named as &ldquo', 'coronavirus disease 2019&rdquo', ' (COVID-19). The emergence of SARS-CoV-2 and of SARS-CoV caused widespread fear and concern and has threatened global health security. There are some similarities and differences in the epidemiology and clinical features between these two viruses and diseases that are caused by these viruses. The goal of this work is to systematically review and compare between SARS-CoV and SARS-CoV-2 in the context of their virus incubation, originations, diagnosis and treatment methods, genomic and proteomic sequences, and pathogenic mechanisms.\",2020,\"Xu, Jiabao', ' Zhao, Shizhe', ' Teng, Tieshan', ' Abdalla, Abualgasim Elgaili', ' Zhu, Wan', ' Xie, Longxiang', ' Wang, Yunlong', ' Guo, Xiangqian\",Viruses,2163319355,#1449,True\n60e51d3d13b027492b9f3b8693c58dd8b5385ada,CZI,\"Novel coronavirus infection during the 2019–2020 epidemic: preparing intensive care units—the experience in Sichuan Province, China\",10.1007/s00134-020-05954-2,,,cc-by-nc,\"Novel coronavirus infection special intensive care team We set up a special emergency multi-disciplinary intensive care team to discuss the problems that we might encounter and countermeasures. Team members include intensive care unit (ICU) physician, infectious disease physician, nurse, respiratory therapist, nosocomial infection control expert, and administrative staff. We first evaluated the isolation conditions and the capacity of our department to admit a larger number of patients. Second, we specified the protection levels for different types of health care activities. Third, we assigned special work such as patient screening, consultation, and transfer to designated staff to minimize the number of health workers who had contact with patients with nCoV infection.ID - LiaoER -\",2020,\"Liao, Xuelian', ' Wang, Bo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
