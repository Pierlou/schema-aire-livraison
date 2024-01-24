## aire-livraison

Aires de livraison

Spécification du fichier d'échange relatif aux aires de livraison

- Schéma créé le : 01/04/24
- Site web : https://github.com/CEREMA/schema-aire-livraison
- Version : 0.1
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Clé primaire : `ID`

### Modèle de données

|Nom|Type|Description|Exemple|Propriétés|
|-|-|-|-|-|
|ID (Identifiant de l'entité)|chaîne de caractères|Il s'agit de l'identifiant, unique, de la ligne du tableau.. [Vous pouvez créer des identifiants grâce à l'application Heidi d'Etalab](https://heidi.app.etalab.studio/).|133-3|Valeur obligatoire, Valeur unique|
|COLL_NOM (Nom de la collectivité à l'origine de l'arrêté)|chaîne de caractères|Nom de la collectivité.|Commune d'Aix-en-Provence|Valeur obligatoire|
|COLL_INSEE (Code INSEE)|chaîne de caractères|Code INSEE de la commune sur laquelle s'applique l'arrêté|13090|Valeur obligatoire, Taille minimale : 5, Taille maximale : 5, Motif : `^([013-9]\d|2[AB1-9])\d{3}$`|
|ARR_REF (Référence de l'arrêté)|chaîne de caractères|Référence ou numéro de l'arrêté auquel se réfère la règlementation. Si l'arrêté a été mis à jour, la référence doit être celle de l'arrêté mis à jour et non celle de l'arrêté originel. Si l'arrêté ne possède pas de référence, mettre la valeur `NC`|AP-13090-12|Valeur obligatoire|
|ARR_DATE (Date de l'arrêté)|date (format `%Y-%m-%d`)|Date de création ou de mise à jour de l'arrêté, au format ISO 8601 AAAA-MM-DD. Mettre `NC` si pas d'indication dans l'arrêté|2021-04-30|Valeur obligatoire|
|ARR_OBJET (Objet de l'arrêté)|chaîne de caractères|Objet ou titre de l'arrêté. Mettre `NC` si l'arrêté ne comprend pas d'objet.|Arrêté règlementant la circulation dans le quartier Mazarin et du palais de Justice|Valeur obligatoire|
|ARR_CONSIDERANT (Considérant de l'arrêté)|chaîne de caractères|Considérant est le justificatif de la mise en place de la règlementation. S'il y a plusieurs considérations, les séparer par le caractère '|'|Considérant la dangerosité que représente le trafic des PL aux abords des groupes scolaires|Valeur optionnelle|
|ARR_URL (Adresse internet de l'arrêté)|chaîne de caractères (format `uri`)|Adresse internet par laquelle accéder à l'arrêté, et donc au règlement.|https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf|Valeur optionnelle|
|REGL_ARTICLE (Article du règlement)|chaîne de caractères|N° de l'article associé au règlement lorsqu'il existe|'Article 4' ou 'Titre 2'|Valeur optionnelle|
|REGL_SOUS_ARTICLE (Sous-article du règlement)|chaîne de caractères|Un article peut se décomposer en plusieurs sous-articles, contenant chacun une règlementation particulière. Ces sous-articles ont des numérotations.|Sous-article 4 bis|Valeur optionnelle|
|VEH_TONNAGE (Tonnage)|nombre réel|Tonnage maximal du véhicule|9|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 45|
|VEH_TYPES ([Acteur économique] Types de véhicules)|chaîne de caractères|Types de véhicules. S'il y a plusieurs types, les séparer les valeurs par le caractère '|'. Les valeurs possibles sont : 'Poids lourds', 'Véhicules utilitaires légers', 'Vélo-cargos' et 'Tous véhicules'.|Poids lourds|Cycles|Voitures particulières|Tous véhicules|Valeur obligatoire|
|INTERV_JH (Jours et heures de livraison)|chaîne de caractères|Jours et heures de livraison exprimés selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer les week-ends (we), les jours fériés (PH) et les vacances scolaires (SH). Par exemple `Mo-Fr 09:00-17:00; PH 10:00-12:00; PH Su off` signifie : 'Du lundi au vendredi de 9h à 17h sauf les jours fériés où l'ouverture est de 10h à 12h, à l'exception des jours fériés tombant un dimanche'. `24/7` indique `Tous les jours`. [Utiliser groom-groom pour récupérer les jours et heures de circulation](https://cerema-med.shinyapps.io/groom-groom?action=opening_hours). Si INTERV_JH est vide, alors ce ne sont que des livraisons qui sont autorisées. S'il y a des horaires spécifiés dans INTERV_JH, alors la livraison s'effectue à ces horaires. En dehors de ces plages, le stationnement standard est autorisé. Il est donc mixte.|Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off|Valeur optionnelle|
|INTERV_REGIME (Régime d'accès)|chaîne de caractères|Permet de savoir si l'aire de livraison est exclusive ou partagée avec du stationnement particulier, ou éventuellement concerne le transport de fond (si on choisit d'intégrer les aires réservés au transport de fond). Mixte : cohabite avec stationnement particulier|Livraison|Valeur optionnelle, Valeurs autorisées : Mixte, Transport de fonds, Livraison|
|INTERV_DUREE (Durée maximale d'intervention)|heure|Durée maximale d'intervention (au niveau d'une aire piétonne, par exemple). L'entrée et la sortie dans une zone peuvent être horodatées à la délivrance d'un ticket lors de la traversée d'une borne de passage.|03:00:00|Valeur optionnelle|
|EMPRISE_ZONE (Zone)|chaîne de caractères|Zone associée à l'aire. Il s'agit généralement de la dénomination du quartier ou de l'aire piétonne associée règlementée|Secteur du Centre-Ville|Valeur optionnelle|
|EMPRISE_DESIGNATION (Adresse du point de référence de l'aire)|chaîne de caractères|Adresse du point de référence de l'aire. Cela peut être toute une rue ou un tronçon. Endroit précis de l'aire de livraison réservée aux livraisons.|Avenue Philippe Solari, Commune d'Aix-en-Provence, Quartier Mazarin, 200046977-ZFE-001|Valeur obligatoire, Motif : `^[a-zA-Z0-9\-\–\'\’\«\»\°\"\s\dÀ-ÿ\(\)\,\.]+$`|
|EMPRISE_LONGUEUR (Longueur de l'emprise)|nombre réel|Longueur de l'emprise en mètres.|9|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 100|
|EMPRISE_LARGEUR (Largeur de l'emprise)|nombre réel|Largeur de l'emprise en mètres.|9|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 10|
|EQUIPEMENT_IRVE_PRESENCE (Installation de recharge de véhicule électrique)|booléen|Valeurs considérées comme vraies : ['oui', 'Oui', 'OUI', 'o', 'O', 'vrai', 'Vrai', 'VRAI', 'true', 'True', 'TRUE', '1']Valeurs considérées comme fausses : ['non', 'Non', 'NON', 'n', 'N', 'faux', 'Faux', 'FAUX', 'false', 'False', 'FALSE', '0']Présence d'une borne de recharge de véhicule électrique|oui|Valeur obligatoire|
|EQUIPEMENT_IRVE_PUISSANCE (Puissance de l'installation de recharge de véhicule électrique)|nombre réel|Puissance de l'installation de recharge de véhicule électrique en kVA|22|Valeur optionnelle, Valeur minimale : 1, Valeur maximale : 150|
|GEOM_XY (Coordonnées GPS de l'Aire de Livraison ou de la rue)|point géographique|Coordonnées longitude, latitude associées à l'aire de livraison. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).|5.42101,43.53591|Valeur obligatoire|
|GEOM_WKT (Géométrie au format WKT)|chaîne de caractères|Géométrie de la rue (ligne), ou de l'emprise (polygone) exprimée au format [WKT (Well Know Text](https://fr.wikipedia.org/wiki/Well-known_text) sous le système de projection WGS84 (EPSG:4326)|LineString(5.39340184 45.56538751, 5.41017215 45.56722934, 5.42510063 45.5679079)|Valeur optionnelle|
