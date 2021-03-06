-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2014 at 07:21 PM
-- Server version: 5.5.28-log
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";

--
-- Database: 'study_schedule'
--

-- --------------------------------------------------------

--
-- Table structure for table 'study_schedule'
--

DROP TABLE IF EXISTS study_schedule;
CREATE TABLE IF NOT EXISTS study_schedule (
  recordSeq bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  studyId bigint(20) unsigned NOT NULL DEFAULT '0',
  ownerId bigint(20) unsigned NOT NULL DEFAULT '0',
  periodName varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  periodDescription longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  periodParticipantLimit bigint(20) NOT NULL DEFAULT '-1',
  periodStartTime datetime NOT NULL DEFAULT 0,
  periodEndTime datetime NOT NULL DEFAULT 0,
  periodAnnouncementText longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  periodEmailList longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  periodTaskSequence enum('sequential','random') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sequential',
  periodStudyVariations enum('singleRandom') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'singleRandom',
  periodTimeZone enum('UTC+00 Europe/London','UTC+01 Europe/Berlin','UTC+02 Europe/Kiev','UTC+03 Asia/Riyadh','UTC+03:30 Asia/Tehran','UTC+04 Europe/Moscow','UTC+04:30 Asia/Kabul','UTC+05 Indian/Maldives','UTC+05:30 Asia/Calcutta','UTC+05:45 Asia/Kathmandu','UTC+06 Indian/Chagos','UTC+06:30 Asia/Rangoon','UTC+07 Asia/Bangkok','UTC+08 Asia/Brunei','UTC+08:45 Australia/Eucla','UTC+09 Asia/Tokyo','UTC+09:30 Australia/Adelaide','UTC+10 Australia/Melbourne','UTC+10:30 Australia/Lord_Howe','UTC+11 Pacific/Pohnpei','UTC+11:30 Pacific/Norfolk','UTC+12 Asia/Kamchatka','UTC+12:45 Pacific/Chatham','UTC+13 Pacific/Tongatapu','UTC+14 Pacific/Kiritimati','UTC−01 America/Scoresbysund','UTC−02 America/Atlantic islands','UTC−03 America/Argentina/Mendoza','UTC−03:30 Canada/Newfoundland','UTC−04 America/Halifax','UTC−04:30 America/Caracas','UTC−05 America/New_York','UTC−06 America/Chicago','UTC−07 America/Denver','UTC−08 America/Los_Angeles','UTC−09 America/Anchorage','UTC−09:30 Pacific/Marquesas','UTC−10 America/Adak','UTC−11 Pacific/Midway') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTC−08 America/Los_Angeles',
  dateCreated datetime NOT NULL,
  dateModified timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (recordSeq),
  UNIQUE KEY recordSeq (recordSeq),
  KEY recordSeq_2 (recordSeq),
  KEY studyId_2 (studyId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
