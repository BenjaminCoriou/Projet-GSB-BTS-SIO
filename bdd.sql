-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 29 Avril 2013 à 15:37
-- Version du serveur: 5.5.25
-- Version de PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données: `gsb`
--

-- --------------------------------------------------------

--
-- Structure de la table `frais_forfait`
--

CREATE TABLE `frais_forfait` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `mois` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `repas` int(11) NOT NULL,
  `crepas` int(11) NOT NULL,
  `nuitees` int(11) NOT NULL,
  `cnuitees` int(11) NOT NULL,
  `etapes` int(11) NOT NULL,
  `km` int(11) NOT NULL,
  `nbpieces` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `frais_hf`
--

CREATE TABLE `frais_hf` (
  `hfid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `fid` text NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`hfid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `type` int(1) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `adresse` text NOT NULL,
  `cp` text NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `valides`
--

CREATE TABLE `valides` (
  `fid` int(11) NOT NULL,
  `etat` int(11) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
