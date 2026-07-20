import 'dart:ui';

import 'package:flutter/material.dart';

class C {
  static const background = Color(0xFFF0F5F2);
  static const card = Colors.white;
  static const dark = Color(0xFF0C1F14);
  static const muted = Color(0xFF6B8C74);
  static const border = Color(0x1E14532D);
  static const sidebar = Color(0xFF071A0E);
  static const sidebarText = Color(0xFFD4E8DA);
  static const sidebarMuted = Color(0xFF4A7055);
  static const green = Color(0xFF14532D);
  static const greenLight = Color(0xFF166534);
  static const gold = Color(0xFFD4A017);
  static const blue = Color(0xFF4A7FA5);
  static const violet = Color(0xFF7C5A8C);
  static const input = Color(0xFFE4F0E9);
}

class Membre {
  final String nom, role, groupe, statut, dateAdhesion, avatar;
  final Color color;
  const Membre({
    required this.nom,
    required this.role,
    required this.groupe,
    required this.statut,
    required this.dateAdhesion,
    required this.avatar,
    required this.color,
  });
}

class Evenement {
  final String titre, date, mois, heure;
  final int participants;
  final Color color;
  const Evenement({
    required this.titre,
    required this.date,
    required this.mois,
    required this.heure,
    required this.participants,
    required this.color,
  });
}

final List<Membre> membres = [
  const Membre(
    nom: "Marie-Claire Ngandu",
    role: "Diaconesse",
    groupe: "Femmes",
    statut: "actif",
    dateAdhesion: "12 Mar 2018",
    avatar: "MN",
    color: C.violet,
  ),
  const Membre(
    nom: "Past. Jean-Pierre Kabila",
    role: "Pasteur Principal",
    groupe: "Leadership",
    statut: "actif",
    dateAdhesion: "01 Jan 2010",
    avatar: "JK",
    color: C.green,
  ),
  const Membre(
    nom: "Esther Lukusa",
    role: "Resp. Louange",
    groupe: "Louange",
    statut: "actif",
    dateAdhesion: "05 Sep 2019",
    avatar: "EL",
    color: C.greenLight,
  ),
  const Membre(
    nom: "Samuel Mbuyi",
    role: "Ancien",
    groupe: "Prière",
    statut: "actif",
    dateAdhesion: "22 Jun 2015",
    avatar: "SM",
    color: C.blue,
  ),
  const Membre(
    nom: "Grace Ilunga",
    role: "Choriste",
    groupe: "Louange",
    statut: "nouveau",
    dateAdhesion: "03 Jul 2026",
    avatar: "GI",
    color: C.gold,
  ),
  const Membre(
    nom: "Benjamin Tshilombo",
    role: "Membre",
    groupe: "Jeunesse",
    statut: "inactif",
    dateAdhesion: "14 Fév 2021",
    avatar: "BT",
    color: Color(0xFF8CA090),
  ),
];

final List<Evenement> evenements = [
  const Evenement(
    titre: "Culte dominical",
    date: "20",
    mois: "JUL",
    heure: "09h00",
    participants: 248,
    color: C.green,
  ),
  const Evenement(
    titre: "Cellule de prière",
    date: "23",
    mois: "JUL",
    heure: "18h30",
    participants: 34,
    color: C.violet,
  ),
  const Evenement(
    titre: "Réunion des anciens",
    date: "25",
    mois: "JUL",
    heure: "17h00",
    participants: 12,
    color: C.blue,
  ),
  const Evenement(
    titre: "Concert de louange",
    date: "27",
    mois: "JUL",
    heure: "16h00",
    participants: 180,
    color: C.gold,
  ),
];

final List<double> presenceData = [210, 198, 234, 220, 248, 231, 256];
final List<String> presenceMois = [
  "Jan",
  "Fév",
  "Mar",
  "Avr",
  "Mai",
  "Jun",
  "Jul",
];
