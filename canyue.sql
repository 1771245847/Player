-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-03-06 18:07:43
-- 服务器版本： 5.6.38
-- PHP 版本： 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- 数据库： `canyue`
--

-- --------------------------------------------------------

--
-- 表的结构 `danmaku_ip`
--

CREATE TABLE `danmaku_ip` (
  `ip` varchar(12) NOT NULL COMMENT '发送弹幕的IP地址',
  `c` int(1) NOT NULL DEFAULT '1' COMMENT '规定时间内的发送次数',
  `time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `danmaku_list`
--

CREATE TABLE `danmaku_list` (
  `id` varchar(32) NOT NULL COMMENT '弹幕池id',
  `cid` int(8) NOT NULL COMMENT '弹幕id',
  `type` varchar(128) NOT NULL COMMENT '弹幕类型',
  `text` varchar(128) NOT NULL COMMENT '弹幕内容',
  `color` varchar(128) NOT NULL COMMENT '弹幕颜色',
  `size` varchar(128) NOT NULL COMMENT '弹幕大小',
  `videotime` float(24,3) NOT NULL COMMENT '时间点',
  `ip` varchar(128) NOT NULL COMMENT '用户ip',
  `time` int(10) NOT NULL COMMENT '发送时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `danmaku_report`
--

CREATE TABLE `danmaku_report` (
  `cid` int(8) NOT NULL COMMENT '弹幕ID',
  `id` varchar(128) NOT NULL COMMENT '弹幕池id',
  `text` varchar(128) NOT NULL COMMENT '举报内容',
  `type` varchar(128) NOT NULL COMMENT '举报类型',
  `time` varchar(128) NOT NULL COMMENT '举报时间',
  `ip` varchar(12) NOT NULL COMMENT '发送弹幕的IP地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `danmaku_ip`
--
ALTER TABLE `danmaku_ip`
  ADD PRIMARY KEY (`ip`);

--
-- 表的索引 `danmaku_list`
--
ALTER TABLE `danmaku_list`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `id` (`id`);

--
-- 表的索引 `danmaku_report`
--
ALTER TABLE `danmaku_report`
  ADD PRIMARY KEY (`text`),
  ADD KEY `id` (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `danmaku_list`
--
ALTER TABLE `danmaku_list`
  MODIFY `cid` int(8) NOT NULL AUTO_INCREMENT COMMENT '弹幕id';
COMMIT;
