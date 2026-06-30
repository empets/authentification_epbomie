import 'package:flutter/material.dart';

final List<Map<String, String>> nationalites = [
  {"id": "AF", "sublabel": "", "label": "🇦🇫 Afghane"},
  {"id": "ZA", "sublabel": "", "label": "🇿🇦 Sud-africaine"},
  {"id": "AL", "sublabel": "", "label": "🇦🇱 Albanaise"},
  {"id": "DZ", "sublabel": "", "label": "🇩🇿 Algérienne"},
  {"id": "DE", "sublabel": "", "label": "🇩🇪 Allemande"},
  {"id": "AD", "sublabel": "", "label": "🇦🇩 Andorrane"},
  {"id": "AO", "sublabel": "", "label": "🇦🇴 Angolaise"},
  {"id": "AG", "sublabel": "", "label": "🇦🇬 Antiguaise-et-barbudienne"},
  {"id": "SA", "sublabel": "", "label": "🇸🇦 Saoudienne"},
  {"id": "AR", "sublabel": "", "label": "🇦🇷 Argentine"},
  {"id": "AM", "sublabel": "", "label": "🇦🇲 Arménienne"},
  {"id": "AU", "sublabel": "", "label": "🇦🇺 Australienne"},
  {"id": "AT", "sublabel": "", "label": "🇦🇹 Autrichienne"},
  {"id": "AZ", "sublabel": "", "label": "🇦🇿 Azerbaïdjanaise"},
  {"id": "BS", "sublabel": "", "label": "🇧🇸 Bahaméenne"},
  {"id": "BH", "sublabel": "", "label": "🇧🇭 Bahreïnienne"},
  {"id": "BD", "sublabel": "", "label": "🇧🇩 Bangladaise"},
  {"id": "BB", "sublabel": "", "label": "🇧🇧 Barbadienne"},
  {"id": "BE", "sublabel": "", "label": "🇧🇪 Belge"},
  {"id": "BZ", "sublabel": "", "label": "🇧🇿 Bélizienne"},
  {"id": "BJ", "sublabel": "", "label": "🇧🇯 Béninoise"},
  {"id": "BT", "sublabel": "", "label": "🇧🇹 Bhoutanaise"},
  {"id": "BY", "sublabel": "", "label": "🇧🇾 Biélorusse"},
  {"id": "MM", "sublabel": "", "label": "🇲🇲 Birmane"},
  {"id": "BO", "sublabel": "", "label": "🇧🇴 Bolivienne"},
  {"id": "BA", "sublabel": "", "label": "🇧🇦 Bosniaque"},
  {"id": "BW", "sublabel": "", "label": "🇧🇼 Botswanaise"},
  {"id": "BR", "sublabel": "", "label": "🇧🇷 Brésilienne"},
  {"id": "BN", "sublabel": "", "label": "🇧🇳 Brunéienne"},
  {"id": "BG", "sublabel": "", "label": "🇧🇬 Bulgare"},
  {"id": "BF", "sublabel": "", "label": "🇧🇫 Burkinabè"},
  {"id": "BI", "sublabel": "", "label": "🇧🇮 Burundaise"},
  {"id": "KH", "sublabel": "", "label": "🇰🇭 Cambodgienne"},
  {"id": "CM", "sublabel": "", "label": "🇨🇲 Camerounaise"},
  {"id": "CA", "sublabel": "", "label": "🇨🇦 Canadienne"},
  {"id": "CV", "sublabel": "", "label": "🇨🇻 Cap-verdienne"},
  {"id": "CF", "sublabel": "", "label": "🇨🇫 Centrafricaine"},
  {"id": "CL", "sublabel": "", "label": "🇨🇱 Chilienne"},
  {"id": "CN", "sublabel": "", "label": "🇨🇳 Chinoise"},
  {"id": "CY", "sublabel": "", "label": "🇨🇾 Chypriote"},
  {"id": "CO", "sublabel": "", "label": "🇨🇴 Colombienne"},
  {"id": "KM", "sublabel": "", "label": "🇰🇲 Comorienne"},
  {"id": "CG", "sublabel": "", "label": "🇨🇬 Congolaise (Congo)"},
  {"id": "CD", "sublabel": "", "label": "🇨🇩 Congolaise (RDC)"},
  {"id": "KP", "sublabel": "", "label": "🇰🇵 Nord-coréenne"},
  {"id": "KR", "sublabel": "", "label": "🇰🇷 Sud-coréenne"},
  {"id": "CR", "sublabel": "", "label": "🇨🇷 Costaricienne"},
  {"id": "CI", "sublabel": "", "label": "🇨🇮 Ivoirienne"},
  {"id": "HR", "sublabel": "", "label": "🇭🇷 Croate"},
  {"id": "CU", "sublabel": "", "label": "🇨🇺 Cubaine"},
  {"id": "DK", "sublabel": "", "label": "🇩🇰 Danoise"},
  {"id": "DJ", "sublabel": "", "label": "🇩🇯 Djiboutienne"},
  {"id": "DO", "sublabel": "", "label": "🇩🇴 Dominicaine"},
  {"id": "EG", "sublabel": "", "label": "🇪🇬 Égyptienne"},
  {"id": "AE", "sublabel": "", "label": "🇦🇪 Émiratie"},
  {"id": "EC", "sublabel": "", "label": "🇪🇨 Équatorienne"},
  {"id": "ER", "sublabel": "", "label": "🇪🇷 Érythréenne"},
  {"id": "ES", "sublabel": "", "label": "🇪🇸 Espagnole"},
  {"id": "EE", "sublabel": "", "label": "🇪🇪 Estonienne"},
  {"id": "SZ", "sublabel": "", "label": "🇸🇿 Eswatinienne"},
  {"id": "US", "sublabel": "", "label": "🇺🇸 Américaine"},
  {"id": "ET", "sublabel": "", "label": "🇪🇹 Éthiopienne"},
  {"id": "FJ", "sublabel": "", "label": "🇫🇯 Fidjienne"},
  {"id": "FI", "sublabel": "", "label": "🇫🇮 Finlandaise"},
  {"id": "FR", "sublabel": "", "label": "🇫🇷 Française"},
  {"id": "GA", "sublabel": "", "label": "🇬🇦 Gabonaise"},
  {"id": "GM", "sublabel": "", "label": "🇬🇲 Gambienne"},
  {"id": "GE", "sublabel": "", "label": "🇬🇪 Géorgienne"},
  {"id": "GH", "sublabel": "", "label": "🇬🇭 Ghanéenne"},
  {"id": "GR", "sublabel": "", "label": "🇬🇷 Grecque"},
  {"id": "GN", "sublabel": "", "label": "🇬🇳 Guinéenne"},
  {"id": "GQ", "sublabel": "", "label": "🇬🇶 Équato-guinéenne"},
  {"id": "GW", "sublabel": "", "label": "🇬🇼 Bissau-guinéenne"},
  {"id": "GY", "sublabel": "", "label": "🇬🇾 Guyanienne"},
  {"id": "HT", "sublabel": "", "label": "🇭🇹 Haïtienne"},
  {"id": "HN", "sublabel": "", "label": "🇭🇳 Hondurienne"},
  {"id": "HU", "sublabel": "", "label": "🇭🇺 Hongroise"},
  {"id": "IN", "sublabel": "", "label": "🇮🇳 Indienne"},
  {"id": "ID", "sublabel": "", "label": "🇮🇩 Indonésienne"},
  {"id": "IQ", "sublabel": "", "label": "🇮🇶 Irakienne"},
  {"id": "IR", "sublabel": "", "label": "🇮🇷 Iranienne"},
  {"id": "IE", "sublabel": "", "label": "🇮🇪 Irlandaise"},
  {"id": "IS", "sublabel": "", "label": "🇮🇸 Islandaise"},
  {"id": "IL", "sublabel": "", "label": "🇮🇱 Israélienne"},
  {"id": "IT", "sublabel": "", "label": "🇮🇹 Italienne"},
  {"id": "JM", "sublabel": "", "label": "🇯🇲 Jamaïcaine"},
  {"id": "JP", "sublabel": "", "label": "🇯🇵 Japonaise"},
  {"id": "JO", "sublabel": "", "label": "🇯🇴 Jordanienne"},
  {"id": "KZ", "sublabel": "", "label": "🇰🇿 Kazakhe"},
  {"id": "KE", "sublabel": "", "label": "🇰🇪 Kényane"},
  {"id": "KG", "sublabel": "", "label": "🇰🇬 Kirghize"},
  {"id": "KW", "sublabel": "", "label": "🇰🇼 Koweïtienne"},
  {"id": "LA", "sublabel": "", "label": "🇱🇦 Laotienne"},
  {"id": "LS", "sublabel": "", "label": "🇱🇸 Lesothane"},
  {"id": "LV", "sublabel": "", "label": "🇱🇻 Lettone"},
  {"id": "LB", "sublabel": "", "label": "🇱🇧 Libanaise"},
  {"id": "LR", "sublabel": "", "label": "🇱🇷 Libérienne"},
  {"id": "LY", "sublabel": "", "label": "🇱🇾 Libyenne"},
  {"id": "LI", "sublabel": "", "label": "🇱🇮 Liechtensteinoise"},
  {"id": "LT", "sublabel": "", "label": "🇱🇹 Lituanienne"},
  {"id": "LU", "sublabel": "", "label": "🇱🇺 Luxembourgeoise"},
  {"id": "MG", "sublabel": "", "label": "🇲🇬 Malgache"},
  {"id": "MY", "sublabel": "", "label": "🇲🇾 Malaisienne"},
  {"id": "MW", "sublabel": "", "label": "🇲🇼 Malawienne"},
  {"id": "MV", "sublabel": "", "label": "🇲🇻 Maldivienne"},
  {"id": "ML", "sublabel": "", "label": "🇲🇱 Malienne"},
  {"id": "MT", "sublabel": "", "label": "🇲🇹 Maltaise"},
  {"id": "MA", "sublabel": "", "label": "🇲🇦 Marocaine"},
  {"id": "MU", "sublabel": "", "label": "🇲🇺 Mauricienne"},
  {"id": "MR", "sublabel": "", "label": "🇲🇷 Mauritanienne"},
  {"id": "MX", "sublabel": "", "label": "🇲🇽 Mexicaine"},
  {"id": "MC", "sublabel": "", "label": "🇲🇨 Monégasque"},
  {"id": "MN", "sublabel": "", "label": "🇲🇳 Mongole"},
  {"id": "ME", "sublabel": "", "label": "🇲🇪 Monténégrine"},
  {"id": "MZ", "sublabel": "", "label": "🇲🇿 Mozambicaine"},
  {"id": "NA", "sublabel": "", "label": "🇳🇦 Namibienne"},
  {"id": "NP", "sublabel": "", "label": "🇳🇵 Népalaise"},
  {"id": "NI", "sublabel": "", "label": "🇳🇮 Nicaraguayenne"},
  {"id": "NE", "sublabel": "", "label": "🇳🇪 Nigérienne"},
  {"id": "NG", "sublabel": "", "label": "🇳🇬 Nigériane"},
  {"id": "NO", "sublabel": "", "label": "🇳🇴 Norvégienne"},
  {"id": "NZ", "sublabel": "", "label": "🇳🇿 Néo-zélandaise"},
  {"id": "OM", "sublabel": "", "label": "🇴🇲 Omanaise"},
  {"id": "UG", "sublabel": "", "label": "🇺🇬 Ougandaise"},
  {"id": "UZ", "sublabel": "", "label": "🇺🇿 Ouzbèke"},
  {"id": "PK", "sublabel": "", "label": "🇵🇰 Pakistanaise"},
  {"id": "PA", "sublabel": "", "label": "🇵🇦 Panaméenne"},
  {"id": "PG", "sublabel": "", "label": "🇵🇬 Papouasienne"},
  {"id": "PY", "sublabel": "", "label": "🇵🇾 Paraguayenne"},
  {"id": "NL", "sublabel": "", "label": "🇳🇱 Néerlandaise"},
  {"id": "PE", "sublabel": "", "label": "🇵🇪 Péruvienne"},
  {"id": "PH", "sublabel": "", "label": "🇵🇭 Philippine"},
  {"id": "PL", "sublabel": "", "label": "🇵🇱 Polonaise"},
  {"id": "PT", "sublabel": "", "label": "🇵🇹 Portugaise"},
  {"id": "QA", "sublabel": "", "label": "🇶🇦 Qatarienne"},
  {"id": "RO", "sublabel": "", "label": "🇷🇴 Roumaine"},
  {"id": "GB", "sublabel": "", "label": "🇬🇧 Britannique"},
  {"id": "RU", "sublabel": "", "label": "🇷🇺 Russe"},
  {"id": "RW", "sublabel": "", "label": "🇷🇼 Rwandaise"},
  {"id": "KN", "sublabel": "", "label": "🇰🇳 Saint-Christophienne"},
  {"id": "SM", "sublabel": "", "label": "🇸🇲 Saint-marinaise"},
  {"id": "VC", "sublabel": "", "label": "🇻🇨 Vincentaise"},
  {"id": "LC", "sublabel": "", "label": "🇱🇨 Sainte-lucienne"},
  {"id": "SV", "sublabel": "", "label": "🇸🇻 Salvadorienne"},
  {"id": "WS", "sublabel": "", "label": "🇼🇸 Samoane"},
  {"id": "ST", "sublabel": "", "label": "🇸🇹 Santoméenne"},
  {"id": "SN", "sublabel": "", "label": "🇸🇳 Sénégalaise"},
  {"id": "RS", "sublabel": "", "label": "🇷🇸 Serbe"},
  {"id": "SC", "sublabel": "", "label": "🇸🇨 Seychelloise"},
  {"id": "SL", "sublabel": "", "label": "🇸🇱 Sierra-léonaise"},
  {"id": "SG", "sublabel": "", "label": "🇸🇬 Singapourienne"},
  {"id": "SK", "sublabel": "", "label": "🇸🇰 Slovaque"},
  {"id": "SI", "sublabel": "", "label": "🇸🇮 Slovène"},
  {"id": "SO", "sublabel": "", "label": "🇸🇴 Somalienne"},
  {"id": "SD", "sublabel": "", "label": "🇸🇩 Soudanaise"},
  {"id": "SS", "sublabel": "", "label": "🇸🇸 Sud-soudanaise"},
  {"id": "LK", "sublabel": "", "label": "🇱🇰 Sri-lankaise"},
  {"id": "SE", "sublabel": "", "label": "🇸🇪 Suédoise"},
  {"id": "CH", "sublabel": "", "label": "🇨🇭 Suisse"},
  {"id": "SR", "sublabel": "", "label": "🇸🇷 Surinamaise"},
  {"id": "SY", "sublabel": "", "label": "🇸🇾 Syrienne"},
  {"id": "TJ", "sublabel": "", "label": "🇹🇯 Tadjike"},
  {"id": "TZ", "sublabel": "", "label": "🇹🇿 Tanzanienne"},
  {"id": "TD", "sublabel": "", "label": "🇹🇩 Tchadienne"},
  {"id": "CZ", "sublabel": "", "label": "🇨🇿 Tchèque"},
  {"id": "TH", "sublabel": "", "label": "🇹🇭 Thaïlandaise"},
  {"id": "TL", "sublabel": "", "label": "🇹🇱 Timoraise"},
  {"id": "TG", "sublabel": "", "label": "🇹🇬 Togolaise"},
  {"id": "TN", "sublabel": "", "label": "🇹🇳 Tunisienne"},
  {"id": "TM", "sublabel": "", "label": "🇹🇲 Turkmène"},
  {"id": "TR", "sublabel": "", "label": "🇹🇷 Turque"},
  {"id": "UA", "sublabel": "", "label": "🇺🇦 Ukrainienne"},
  {"id": "UY", "sublabel": "", "label": "🇺🇾 Uruguayenne"},
  {"id": "VU", "sublabel": "", "label": "🇻🇺 Vanuatuane"},
  {"id": "VE", "sublabel": "", "label": "🇻🇪 Vénézuélienne"},
  {"id": "VN", "sublabel": "", "label": "🇻🇳 Vietnamienne"},
  {"id": "YE", "sublabel": "", "label": "🇾🇪 Yéménite"},
  {"id": "ZM", "sublabel": "", "label": "🇿🇲 Zambienne"},
  {"id": "ZW", "sublabel": "", "label": "🇿🇼 Zimbabwéenne"},
];

final List<Map<String, dynamic>> secteurActivite = [
  {
    'label': 'Secteur Banque et Finance',
    'sublabel': 'Banques, microfinance, assurance, comptabilité',
    'id': 'banque_finance',
  },
  {
    'label': 'Secteur Administration publique',
    'sublabel': 'Fonction publique, mairie, services d’État',
    'id': 'administration',
  },
  {
    'label': 'Secteur Éducation',
    'sublabel': 'Instituteur, professeur, encadrement scolaire',
    'id': 'education',
  },
  {
    'label': 'Secteur Informatique',
    'sublabel': 'Développeur, administrateur réseau, support IT',
    'id': 'informatique',
  },
  {
    'label': 'Secteur Santé',
    'sublabel': 'Médecin, infirmier, pharmacien, laboratoire',
    'id': 'sante',
  },
  {
    'label': 'Secteur Commerce',
    'sublabel': 'Vente, marketing, grande distribution',
    'id': 'commerce',
  },
  {
    'label': 'Secteur Transport',
    'sublabel': 'Chauffeur, logistique, transit',
    'id': 'transport',
  },
  {
    'label': 'Secteur BTP',
    'sublabel': 'Construction, génie civil, électricité bâtiment',
    'id': 'btp',
  },
  {
    'label': 'Secteur Agriculture',
    'sublabel': 'Cacao, café, hévéa, élevage',
    'id': 'agriculture',
  },
  {
    'label': 'Secteur Télécommunications',
    'sublabel': 'Réseaux mobiles, fibre optique, support technique',
    'id': 'telecom',
  },
  {
    'label': 'Secteur Industrie',
    'sublabel': 'Production, maintenance industrielle',
    'id': 'industrie',
  },
  {
    'label': 'Secteur Hôtellerie et Restauration',
    'sublabel': 'Hôtel, restaurant, tourisme',
    'id': 'hotellerie',
  },
  {
    'label': 'Secteur Nettoyage et Entretien',
    'sublabel': 'Femme de ménage, agent d’entretien, nettoyage industriel',
    'id': 'nettoyage',
  },
  {
    'label': 'Secteur Artisanat',
    'sublabel': 'Artisan, couturier, menuisier, plombier',
    'id': 'artisanat',
  },
  {'label': 'Aucun', 'sublabel': 'Aucun', 'id': 'aucun'},
];

final List<Map<String, dynamic>> educationLevels = [
  {
    'label': 'Aucun niveau',
    'sublabel': 'Sans scolarisation formelle',
    'id': 'aucun',
  },
  {
    'label': 'Primaire',
    'sublabel': 'CEPE / Études primaires',
    'id': 'primaire',
  },
  {
    'label': 'Secondaire 1er cycle',
    'sublabel': 'Collège (6e à 3e) - BEPC',
    'id': 'secondaire_1',
  },
  {
    'label': 'Secondaire 2nd cycle',
    'sublabel': 'Lycée (2nde à Terminale) - Baccalauréat',
    'id': 'secondaire_2',
  },
  {
    'label': 'CAP (Certificat d’Aptitude Professionnelle)',
    'sublabel': 'Formation professionnelle courte (métier technique)',
    'id': 'cap',
  },
  {
    'label': 'BEP (Brevet d’Études Professionnelles)',
    'sublabel': 'Formation professionnelle intermédiaire',
    'id': 'bep',
  },
  {
    'label': 'BTS (Brevet de Technicien Supérieur)',
    'sublabel': 'Formation supérieure professionnelle Bac+2',
    'id': 'bts',
  },
  {
    'label': 'Formation qualifiante courte',
    'sublabel': 'Formation pratique de quelques semaines ou mois (attestation)',
    'id': 'formation_qualifiante_courte',
  },
  {
    'label': 'Formation qualifiante certifiante',
    'sublabel': 'Formation spécialisée avec certificat reconnu',
    'id': 'formation_qualifiante_certifiante',
  },
  {
    'label': 'Licence',
    'sublabel': 'Diplôme universitaire Bac+3',
    'id': 'licence',
  },
  {
    'label': 'Master',
    'sublabel': 'Diplôme universitaire Bac+5',
    'id': 'master',
  },
  {
    'label': 'Doctorat',
    'sublabel': 'Diplôme universitaire Bac+8',
    'id': 'doctorat',
  },
];

final List<Map<String, dynamic>> situationMatrimoniale = [
  {
    'label': 'Célibataire',
    'sublabel': 'Personne non mariée',
    'id': 'celibataire',
  },
  {
    'label': 'Marié(e)',
    'sublabel': 'Personne légalement mariée',
    'id': 'marie',
  },
  {
    'label': 'Divorcé(e)',
    'sublabel': 'Personne séparée légalement par divorce',
    'id': 'divorce',
  },
  {'label': 'Veuf / Veuve', 'sublabel': 'Conjoint(e) décédé(e)', 'id': 'veuf'},
  {
    'label': 'Union libre',
    'sublabel': 'Vie en couple sans mariage légal',
    'id': 'union_libre',
  },
  {
    'label': 'Séparé(e)',
    'sublabel': 'Marié(e) mais vivant séparément',
    'id': 'separe',
  },
  {
    'label': 'Fiancé(e)',
    'sublabel': 'Engagé(e) pour un futur mariage',
    'id': 'fiance',
  },
];

final List<Map<String, dynamic>> statutMenber = [
  {
    'label': 'Baptiser',
    'sublabel': 'Vous aviez suivie les cours de base',
    'id': 'baptiser',
  },
  {
    'label': 'Non baptiser',
    'sublabel': 'Vous aviez pas suivie les cours de base',
    'id': 'non baptiser',
  },
];


final List<Map<String, dynamic>> cellulePriere = [
  {
    'label': 'Cellule Grâce Divine',
    'sublabel': 'Réunion chaque Lundi à 18h',
    'id': 'grace_divine',
  },
  {
    'label': 'Cellule Mont Sion',
    'sublabel': 'Réunion chaque Mardi à 18h',
    'id': 'mont_sion',
  },
  {
    'label': 'Cellule Béthel',
    'sublabel': 'Réunion chaque Mercredi à 18h',
    'id': 'bethel',
  },
  {
    'label': 'Cellule Source de Vie',
    'sublabel': 'Réunion chaque Jeudi à 18h',
    'id': 'source_de_vie',
  },
  {
    'label': 'Cellule Flamme de l’Esprit',
    'sublabel': 'Réunion chaque Vendredi à 18h',
    'id': 'flamme_esprit',
  },
  {
    'label': 'Cellule Jérusalem',
    'sublabel': 'Réunion chaque Samedi à 16h',
    'id': 'jerusalem',
  },
  {
    'label': 'Cellule Nazareth',
    'sublabel': 'Réunion chaque Dimanche après le culte',
    'id': 'nazareth',
  },
  {
    'label': 'Autre',
    'sublabel': 'Vous appartenez à une autre cellule',
    'id': 'autre',
  },
];


final List<Map<String, dynamic>> departementsEglise = [
  {
    'label': 'Intercession',
    'sublabel': 'Département de prière et combat spirituel',
    'id': 'intercession',
  },
  {
    'label': 'Louange & Adoration',
    'sublabel': 'Chorale, musiciens et conducteurs de louange',
    'id': 'louange_adoration',
  },
  {
    'label': 'Évangélisation',
    'sublabel': 'Sorties missionnaires et partage de l’Évangile',
    'id': 'evangelisation',
  },
  {
    'label': 'Protocole',
    'sublabel': 'Accueil des invités et organisation',
    'id': 'protocole',
  },
  {
    'label': 'Accueil',
    'sublabel': 'Orientation et assistance des membres',
    'id': 'accueil',
  },
  {
    'label': 'Médias & Communication',
    'sublabel': 'Réseaux sociaux, photo, vidéo, diffusion',
    'id': 'medias_communication',
  },
  {
    'label': 'Technique',
    'sublabel': 'Sonorisation, projection et logistique technique',
    'id': 'technique',
  },
  {
    'label': 'Jeunesse',
    'sublabel': 'Encadrement des jeunes',
    'id': 'jeunesse',
  },
  {
    'label': 'École du Dimanche',
    'sublabel': 'Enseignement des enfants',
    'id': 'ecole_dimanche',
  },
  {
    'label': 'Femmes',
    'sublabel': 'Ministère des femmes',
    'id': 'femmes',
  },
  {
    'label': 'Hommes',
    'sublabel': 'Ministère des hommes',
    'id': 'hommes',
  },
  {
    'label': 'Couples & Familles',
    'sublabel': 'Encadrement des couples et familles',
    'id': 'couples_familles',
  },
  {
    'label': 'Diaconat',
    'sublabel': 'Assistance sociale et soutien aux nécessiteux',
    'id': 'diaconat',
  },
  {
    'label': 'Formation Biblique',
    'sublabel': 'Enseignement et formation spirituelle',
    'id': 'formation_biblique',
  },
  {
    'label': 'Sécurité',
    'sublabel': 'Organisation et sécurité pendant les cultes',
    'id': 'securite',
  },
  {
    'label': 'Autre',
    'sublabel': 'Autre département',
    'id': 'autre',
  },
];

final List<Map<String, String>> joursSemaine = [
  {"id": "lundi", "label": "📅 Lundi"},
  {"id": "mardi", "label": "📅 Mardi"},
  {"id": "mercredi", "label": "📅 Mercredi"},
  {"id": "jeudi", "label": "📅 Jeudi"},
  {"id": "vendredi", "label": "📅 Vendredi"},
  {"id": "samedi", "label": "🎉 Samedi"},
  {"id": "dimanche", "label": "🙏 Dimanche"},
];


class MenuItem {
  final IconData icon;
  final String title;
  final String route;
  final Widget? page;

  MenuItem({
    required this.icon,
    required this.title,
    required this.route,
    this.page,
  });
}
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();




enum FormSubmitStatus {
  success,
  error,
  loading,
  none,
}



const String securityPolicy = '''
POLITIQUE DE SÉCURITÉ ET DE CONFIDENTIALITÉ

Dernière mise à jour : Juin 2026

 1. Préambule

La présente politique décrit les mesures de sécurité, de confidentialité et de protection des données mises en œuvre dans le cadre de l'utilisation de l'application mobile. L'objectif est de garantir la protection des utilisateurs et de leurs données personnelles.

 2. Collecte des Données

L'application peut collecter des informations d'identification, des coordonnées, des données techniques, des informations de connexion, des données de localisation autorisées par l'utilisateur ainsi que les informations nécessaires au fonctionnement des services proposés.

 3. Utilisation des Données

Les données collectées sont utilisées pour :

- Fournir les services proposés.
- Améliorer l'expérience utilisateur.
- Assurer la sécurité des comptes.
- Répondre aux demandes d'assistance.
- Respecter les obligations légales applicables.

 4. Sécurité des Comptes

Chaque utilisateur est responsable de la confidentialité de ses identifiants.

L'application met en œuvre des mécanismes de protection incluant :

- Mots de passe sécurisés.
- Authentification OTP.
- Contrôle des accès.
- Limitation des tentatives de connexion.

 5. Chiffrement et Transmission

Toutes les communications entre l'application et les serveurs utilisent des protocoles sécurisés HTTPS/TLS.

Les informations sensibles peuvent être chiffrées pendant leur stockage et leur transmission.

 6. Stockage des Données

Les données sont stockées sur des infrastructures sécurisées disposant de mécanismes de sauvegarde, de surveillance et de contrôle des accès conformément aux bonnes pratiques de sécurité.

 7. Gestion des Incidents

Tout incident de sécurité fait l'objet d'une analyse immédiate.

Des mesures correctives sont appliquées afin de limiter les impacts et protéger les utilisateurs.

 8. Protection de la Vie Privée

Nous nous engageons à traiter les données personnelles avec confidentialité.

Les informations ne sont ni vendues ni cédées à des tiers sans base légale ou consentement approprié.

 9. Droits des Utilisateurs

Les utilisateurs peuvent demander :

- L'accès à leurs données.
- La rectification de leurs données.
- La suppression de leurs données.
- La limitation de certains traitements.

 10. Cookies et Technologies Similaires

Selon les fonctionnalités disponibles, l'application peut utiliser des technologies permettant :

- Le maintien de la session utilisateur.
- L'amélioration des performances.
- La réalisation de statistiques anonymisées.

 11. Conservation des Données

Les données sont conservées uniquement pendant la durée nécessaire à la fourniture des services ou au respect des obligations légales.

 12. Services Tiers

L'application peut utiliser des services tiers tels que :

- Firebase.
- Services de paiement.
- Services de notification.
- Outils d'analyse statistique.

Ces prestataires disposent de leurs propres politiques de confidentialité.

 13. Responsabilités de l'Utilisateur

L'utilisateur s'engage à :

- Utiliser l'application conformément aux lois en vigueur.
- Ne pas compromettre la sécurité des systèmes.
- Protéger ses identifiants de connexion.

 14. Propriété Intellectuelle

Les contenus, logos, marques, interfaces, codes et éléments graphiques associés à l'application sont protégés par les lois relatives à la propriété intellectuelle.

 15. Disponibilité du Service

Nous nous efforçons d'assurer une disponibilité continue du service sans toutefois garantir une absence totale d'interruption ou d'erreur technique.

 16. Limitation de Responsabilité

Dans les limites prévues par la loi, l'éditeur de l'application ne pourra être tenu responsable des dommages indirects résultant de l'utilisation du service.

 17. Conformité Réglementaire

L'application applique les principes reconnus de protection des données et les exigences réglementaires applicables.

 18. Signalement d'une Vulnérabilité

Toute vulnérabilité ou faille de sécurité peut être signalée à :

support@votre-application.com

 19. Modifications

Cette politique peut être modifiée à tout moment.

Les utilisateurs seront informés des mises à jour importantes via l'application ou les canaux de communication appropriés.

 20. Contact

Pour toute question relative à la sécurité ou à la protection des données, veuillez contacter l'équipe support de l'application.

En utilisant l'application, vous reconnaissez avoir pris connaissance de cette politique et acceptez ses dispositions.
''';