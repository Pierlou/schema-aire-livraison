## aire-livraison

Aires de livraison

Spécification du fichier d'échange relatif aux aires de livraison

- Schéma créé le : 01/04/24
- Site web : https://github.com/CEREMA/schema-aire-livraison
- Version : 0.1
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Clé primaire : `ID`

### Modèle de données


##### Liste des propriétés

| Propriété | Type | Obligatoire |
| -- | -- | -- |
| [ID](#identifiant-de-l'entité---propriété-id) | chaîne de caractères  | Oui |
| [COLL_NOM](#nom-de-la-collectivité-à-l'origine-de-l'arrêté---propriété-coll_nom) | chaîne de caractères  | Oui |
| [COLL_INSEE](#code-insee---propriété-coll_insee) | chaîne de caractères  | Oui |
| [ARR_REF](#référence-de-l'arrêté---propriété-arr_ref) | chaîne de caractères  | Oui |
| [ARR_DATE](#date-de-l'arrêté---propriété-arr_date) | date (format `%Y-%m-%d`) | Oui |
| [ARR_OBJET](#objet-de-l'arrêté---propriété-arr_objet) | chaîne de caractères  | Oui |
| [ARR_CONSIDERANT](#considérant-de-l'arrêté---propriété-arr_considerant) | chaîne de caractères  | Non |
| [ARR_URL](#adresse-internet-de-l'arrêté---propriété-arr_url) | chaîne de caractères (format `uri`) | Non |
| [REGL_ARTICLE](#article-du-règlement---propriété-regl_article) | chaîne de caractères  | Non |
| [REGL_SOUS_ARTICLE](#sous-article-du-règlement---propriété-regl_sous_article) | chaîne de caractères  | Non |
| [VEH_TONNAGE](#tonnage---propriété-veh_tonnage) | nombre réel  | Non |
| [INTERV_JH](#jours-et-heures-de-livraison---propriété-interv_jh) | chaîne de caractères  | Non |
| [INTERV_REGIME](#régime-d'accès---propriété-interv_regime) | chaîne de caractères  | Non |
| [INTERV_DUREE](#durée-maximale-d'intervention---propriété-interv_duree) | heure  | Non |
| [EMPRISE_ZONE](#zone---propriété-emprise_zone) | chaîne de caractères  | Non |
| [EMPRISE_DESIGNATION](#adresse-du-point-de-référence-de-l'aire---propriété-emprise_designation) | chaîne de caractères  | Oui |
| [EMPRISE_LONGUEUR](#longueur-de-l'emprise---propriété-emprise_longueur) | nombre réel  | Non |
| [EMPRISE_LARGEUR](#largeur-de-l'emprise---propriété-emprise_largeur) | nombre réel  | Non |
| [EQUIPEMENT_IRVE_PRESENCE](#installation-de-recharge-de-véhicule-électrique---propriété-equipement_irve_presence) | booléen  | Oui |
| [EQUIPEMENT_IRVE_PUISSANCE](#puissance-de-l'installation-de-recharge-de-véhicule-électrique---propriété-equipement_irve_puissance) | nombre réel  | Non |
| [GEOM_XY](#coordonnées-gps-de-l'aire-de-livraison-ou-de-la-rue---propriété-geom_xy) | point géographique  | Oui |
| [GEOM_WKT](#géométrie-au-format-wkt---propriété-geom_wkt) | chaîne de caractères  | Non |

#### Identifiant de l'entité - Propriété `ID`

> *Description : Il s'agit de l'identifiant, unique, de la ligne du tableau.. [Vous pouvez créer des identifiants grâce à l'application Heidi d'Etalab](https://heidi.app.etalab.studio/).<br/>Ex : 133-3*
- Valeur obligatoire
- Type : chaîne de caractères

#### Nom de la collectivité à l'origine de l'arrêté - Propriété `COLL_NOM`

> *Description : Nom de la collectivité.<br/>Ex : Commune d'Aix-en-Provence*
- Valeur obligatoire
- Type : chaîne de caractères

#### Code INSEE - Propriété `COLL_INSEE`

> *Description : Code INSEE de la commune sur laquelle s'applique l'arrêté<br/>Ex : 13090*
- Valeur obligatoire
- Type : chaîne de caractères
- Entre 5 et 5 caractères
- Motif : `^([013-9]\d|2[AB1-9])\d{3}$`

#### Référence de l'arrêté - Propriété `ARR_REF`

> *Description : Référence ou numéro de l'arrêté auquel se réfère la règlementation. Si l'arrêté a été mis à jour, la référence doit être celle de l'arrêté mis à jour et non celle de l'arrêté originel. Si l'arrêté ne possède pas de référence, mettre la valeur `NC`<br/>Ex : AP-13090-12*
- Valeur obligatoire
- Type : chaîne de caractères

#### Date de l'arrêté - Propriété `ARR_DATE`

> *Description : Date de création ou de mise à jour de l'arrêté, au format ISO 8601 AAAA-MM-DD. Mettre `NC` si pas d'indication dans l'arrêté<br/>Ex : 2021-04-30*
- Valeur obligatoire
- Type : date (format `%Y-%m-%d`)

#### Objet de l'arrêté - Propriété `ARR_OBJET`

> *Description : Objet ou titre de l'arrêté. Mettre `NC` si l'arrêté ne comprend pas d'objet.<br/>Ex : Arrêté règlementant la circulation dans le quartier Mazarin et du palais de Justice*
- Valeur obligatoire
- Type : chaîne de caractères

#### Considérant de l'arrêté - Propriété `ARR_CONSIDERANT`

> *Description : Considérant est le justificatif de la mise en place de la règlementation. S'il y a plusieurs considérations, les séparer par le caractère '|'<br/>Ex : Considérant la dangerosité que représente le trafic des PL aux abords des groupes scolaires*
- Valeur optionnelle
- Type : chaîne de caractères

#### Adresse internet de l'arrêté - Propriété `ARR_URL`

> *Description : Adresse internet par laquelle accéder à l'arrêté, et donc au règlement.<br/>Ex : https://carte.st-paul-les-dax.fr/wp-content/uploads/2020/06/AM-10248.pdf*
- Valeur optionnelle
- Type : chaîne de caractères (format `uri`)

#### Article du règlement - Propriété `REGL_ARTICLE`

> *Description : N° de l'article associé au règlement lorsqu'il existe<br/>Ex : 'Article 4' ou 'Titre 2'*
- Valeur optionnelle
- Type : chaîne de caractères

#### Sous-article du règlement - Propriété `REGL_SOUS_ARTICLE`

> *Description : Un article peut se décomposer en plusieurs sous-articles, contenant chacun une règlementation particulière. Ces sous-articles ont des numérotations.<br/>Ex : Sous-article 4 bis*
- Valeur optionnelle
- Type : chaîne de caractères

#### Tonnage - Propriété `VEH_TONNAGE`

> *Description : Tonnage maximal du véhicule<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Jours et heures de livraison - Propriété `INTERV_JH`

> *Description : Jours et heures de livraison exprimés selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer les week-ends (we), les jours fériés (PH) et les vacances scolaires (SH). Par exemple `Mo-Fr 09:00-17:00; PH 10:00-12:00; PH Su off` signifie : 'Du lundi au vendredi de 9h à 17h sauf les jours fériés où l'ouverture est de 10h à 12h, à l'exception des jours fériés tombant un dimanche'. `24/7` indique `Tous les jours`. [Utiliser groom-groom pour récupérer les jours et heures de circulation](https://cerema-med.shinyapps.io/groom-groom?action=opening_hours). Si INTERV_JH est vide, alors ce ne sont que des livraisons qui sont autorisées. S'il y a des horaires spécifiés dans INTERV_JH, alors la livraison s'effectue à ces horaires. En dehors de ces plages, le stationnement standard est autorisé. Il est donc mixte.<br/>Ex : Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off*
- Valeur optionnelle
- Type : chaîne de caractères

#### Régime d'accès - Propriété `INTERV_REGIME`

> *Description : Permet de savoir si l'aire de livraison est exclusive ou partagée avec du stationnement particulier, ou éventuellement concerne le transport de fond (si on choisit d'intégrer les aires réservés au transport de fond). Mixte : cohabite avec stationnement particulier<br/>Ex : Livraison*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Mixte
    - Transport de fonds
    - Livraison

#### Durée maximale d'intervention - Propriété `INTERV_DUREE`

> *Description : Durée maximale d'intervention (au niveau d'une aire piétonne, par exemple). L'entrée et la sortie dans une zone peuvent être horodatées à la délivrance d'un ticket lors de la traversée d'une borne de passage.<br/>Ex : 03:00:00*
- Valeur optionnelle
- Type : heure

#### Zone - Propriété `EMPRISE_ZONE`

> *Description : Zone associée à l'aire. Il s'agit généralement de la dénomination du quartier ou de l'aire piétonne associée règlementée<br/>Ex : Secteur du Centre-Ville*
- Valeur optionnelle
- Type : chaîne de caractères

#### Adresse du point de référence de l'aire - Propriété `EMPRISE_DESIGNATION`

> *Description : Adresse du point de référence de l'aire. Cela peut être toute une rue ou un tronçon. Endroit précis de l'aire de livraison réservée aux livraisons.<br/>Ex : Avenue Philippe Solari, Commune d'Aix-en-Provence, Quartier Mazarin, 200046977-ZFE-001*
- Valeur obligatoire
- Type : chaîne de caractères
- Motif : `^[a-zA-Z0-9\-\–\'\’\«\»\°\"\s\dÀ-ÿ\(\)\,\.]+$`

#### Longueur de l'emprise - Propriété `EMPRISE_LONGUEUR`

> *Description : Longueur de l'emprise en mètres.<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 100

#### Largeur de l'emprise - Propriété `EMPRISE_LARGEUR`

> *Description : Largeur de l'emprise en mètres.<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 10

#### Installation de recharge de véhicule électrique - Propriété `EQUIPEMENT_IRVE_PRESENCE`

> *Description : Présence d'une borne de recharge de véhicule électrique<br/>Ex : oui*
- Valeur obligatoire
- Type : booléen

#### Puissance de l'installation de recharge de véhicule électrique - Propriété `EQUIPEMENT_IRVE_PUISSANCE`

> *Description : Puissance de l'installation de recharge de véhicule électrique en kVA<br/>Ex : 22*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 1 et 150

#### Coordonnées GPS de l'Aire de Livraison ou de la rue - Propriété `GEOM_XY`

> *Description : Coordonnées longitude, latitude associées à l'aire de livraison. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).<br/>Ex : 5.42101,43.53591*
- Valeur obligatoire
- Type : point géographique

#### Géométrie au format WKT - Propriété `GEOM_WKT`

> *Description : Géométrie de la rue (ligne), ou de l'emprise (polygone) exprimée au format [WKT (Well Know Text](https://fr.wikipedia.org/wiki/Well-known_text) sous le système de projection WGS84 (EPSG:4326)<br/>Ex : LineString(5.39340184 45.56538751, 5.41017215 45.56722934, 5.42510063 45.5679079)*
- Valeur optionnelle
- Type : chaîne de caractères
