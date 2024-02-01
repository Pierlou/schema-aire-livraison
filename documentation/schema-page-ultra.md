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
<<<<<<< HEAD
| [COLL_NOM](#[acteur-économique]-nom-de-la-collectivité-à-l'origine-de-l'arrêté---propriété-coll_nom) | chaîne de caractères  | Oui |
=======
| [COLL_NOM](#nom-de-la-collectivité-à-l'origine-de-l'arrêté---propriété-coll_nom) | chaîne de caractères  | Oui |
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219
| [COLL_INSEE](#code-insee---propriété-coll_insee) | chaîne de caractères  | Oui |
| [ARR_REF](#référence-de-l'arrêté---propriété-arr_ref) | chaîne de caractères  | Oui |
| [ARR_DATE](#date-de-l'arrêté---propriété-arr_date) | date (format `%Y-%m-%d`) | Oui |
| [ARR_OBJET](#objet-de-l'arrêté---propriété-arr_objet) | chaîne de caractères  | Oui |
| [ARR_CONSIDERANT](#considérant-de-l'arrêté---propriété-arr_considerant) | chaîne de caractères  | Non |
| [ARR_URL](#adresse-internet-de-l'arrêté---propriété-arr_url) | chaîne de caractères (format `uri`) | Non |
| [REGL_ARTICLE](#article-du-règlement---propriété-regl_article) | chaîne de caractères  | Non |
| [REGL_SOUS_ARTICLE](#sous-article-du-règlement---propriété-regl_sous_article) | chaîne de caractères  | Non |
<<<<<<< HEAD
| [VEH_TONNAGE](#[acteur-économique]-tonnage---propriété-veh_tonnage) | nombre réel  | Non |
| [INTERV_JH](#[acteur-économique]-jours-et-heures-de-livraison---propriété-interv_jh) | chaîne de caractères  | Non |
| [INTERV_REGIME](#[acteur-économique]-régime-d'accès---propriété-interv_regime) | chaîne de caractères  | Non |
| [INTERV_DUREE](#[acteur-économique]-durée-maximale-d'intervention---propriété-interv_duree) | heure  | Non |
| [EMPRISE_ZONE](#[acteur-économique]-zone---propriété-emprise_zone) | chaîne de caractères  | Non |
| [EMPRISE_DESIGNATION](#adresse-du-point-de-référence-de-l'aire---propriété-emprise_designation) | chaîne de caractères  | Oui |
| [EMPRISE_NBPLACES](#nombre-de-places---propriété-emprise_nbplaces) | nombre réel  | Oui |
| [EMPRISE_LONGUEUR](#[acteur-économique]-longueur-de-l'emprise---propriété-emprise_longueur) | nombre réel  | Non |
| [EMPRISE_LARGEUR](#[acteur-économique]-largeur-de-l'emprise---propriété-emprise_largeur) | nombre réel  | Non |
| [GEOM_XY](#[acteur-économique]-coordonnées-gps-de-l'aire-de-livraison-ou-de-la-rue---propriété-geom_xy) | point géographique  | Oui |
| [GEOM_WKT](#géométrie-au-format-wkt---propriété-geom_wkt) | chaîne de caractères  | Non |
| [VEH_TYPES](#[acteur-économique]-types-de-véhicules---propriété-veh_types) | chaîne de caractères  | Oui |
=======
| [VEH_TONNAGE](#tonnage---propriété-veh_tonnage) | nombre réel  | Non |
| [INTERV_JH](#jours-et-heures-de-livraison---propriété-interv_jh) | chaîne de caractères  | Non |
| [INTERV_REGIME](#régime-d'accès---propriété-interv_regime) | chaîne de caractères  | Non |
| [INTERV_DUREE](#durée-maximale-d'intervention---propriété-interv_duree) | heure  | Non |
| [EMPRISE_ZONE](#zone---propriété-emprise_zone) | chaîne de caractères  | Non |
| [EMPRISE_DESIGNATION](#adresse-du-point-de-référence-de-l'aire---propriété-emprise_designation) | chaîne de caractères  | Oui |
| [EMPRISE_NBPLACES](#nombre-de-places---propriété-emprise_nbplaces) | nombre réel  | Oui |
| [EMPRISE_LONGUEUR](#longueur-de-l'emprise---propriété-emprise_longueur) | nombre réel  | Non |
| [EMPRISE_LARGEUR](#largeur-de-l'emprise---propriété-emprise_largeur) | nombre réel  | Non |
| [GEOM_XY](#coordonnées-gps-de-l'aire-de-livraison-ou-de-la-rue---propriété-geom_xy) | point géographique  | Oui |
| [GEOM_WKT](#géométrie-au-format-wkt---propriété-geom_wkt) | chaîne de caractères  | Non |
| [VEH_TYPES](#types-de-véhicules---propriété-veh_types) | chaîne de caractères  | Oui |
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219
| [VEH_USAGES](#types-d'usage---propriété-veh_usages) | chaîne de caractères  | Oui |
| [EMPRISE_COTE](#coté-de-l'emprise---propriété-emprise_cote) | chaîne de caractères  | Non |
| [EMPRISE_DEBUT](#début-de-la-section-(libellé)---propriété-emprise_debut) | chaîne de caractères  | Non |
| [GEOM_DEBUT](#début-de-la-section-(coordonnées)---propriété-geom_debut) | point géographique  | Non |
| [EMPRISE_PARITE](#côté-pair-ou-impair---propriété-emprise_parite) | chaîne de caractères  | Non |
| [EMPRISE_FIN](#fin-de-la-section-(libellé)---propriété-emprise_fin) | chaîne de caractères  | Non |
| [GEOM_FIN](#fin-de-la-section-(coordonnées)---propriété-geom_fin) | point géographique  | Non |
| [SIGNALISATION_HORIZONTALE](#signalisation-horizontale---propriété-signalisation_horizontale) | chaîne de caractères  | Non |
| [SIGNALISATION_VERTICALE](#signalisation-verticale---propriété-signalisation_verticale) | chaîne de caractères  | Non |
| [SIGNALISATION_CONFORMITE](#conformité-de-la-signalisation---propriété-signalisation_conformite) | chaîne de caractères  | Non |
| [STATIONNEMENT_TYPE](#type-de-stationnement---propriété-stationnement_type) | chaîne de caractères  | Non |
| [STATIONNEMENT_LOCALISATION](#localisation-du-stationnement---propriété-stationnement_localisation) | chaîne de caractères  | Non |
| [ID_ASP](#identifiant-de-la-zone-de-contrôle-asp---propriété-id_asp) | chaîne de caractères  | Non |
| [RESERVATION_URL](#[acteur-économique]-url-de-réservation---propriété-reservation_url) | chaîne de caractères (format `uri`) | Non |
| [REGLEMENT](#réglementation---propriété-reglement) | chaîne de caractères  | Oui |
| [TARIF_MODE](#[acteur-économique]-mode-de-tarification---propriété-tarif_mode) | chaîne de caractères  | Non |
| [[Acteur économique] TARIF_PRIX](#tarif-horaire---propriété-[acteur économique] tarif_prix) | nombre réel  | Non |
| [EMPRISE_SURFACE](#surface---propriété-emprise_surface) | nombre réel  | Non |
| [[Acteur économique] EMPRISE_HAUTEUR_SOL](#hauteur-au-sol---propriété-[acteur économique] emprise_hauteur_sol) | nombre réel  | Non |
| [[Acteur économique] EMPRISE_HAUTEUR_PLAFOND](#hauteur-de-plafond---propriété-[acteur économique] emprise_hauteur_plafond) | nombre réel  | Non |
| [EQUIPEMENT_MOBILIER](#mobilier---propriété-equipement_mobilier) | chaîne de caractères  | Non |
| [EQUIPEMENT_CAPTEUR](#présence-d'un-capteur---propriété-equipement_capteur) | booléen  | Oui |
| [EQUIPEMENT_IRVE](#[acteur-économique]-installation-de-recharge-de-véhicule-électrique---propriété-equipement_irve) | booléen  | Oui |

#### Identifiant de l'entité - Propriété `ID`

> *Description : Il s'agit de l'identifiant, unique, de la ligne du tableau.. [Vous pouvez créer des identifiants grâce à l'application Heidi d'Etalab](https://heidi.app.etalab.studio/).<br/>Ex : 133-3*
- Valeur obligatoire
- Type : chaîne de caractères

<<<<<<< HEAD
#### [Acteur économique] Nom de la collectivité à l'origine de l'arrêté - Propriété `COLL_NOM`
=======
#### Nom de la collectivité à l'origine de l'arrêté - Propriété `COLL_NOM`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

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

<<<<<<< HEAD
#### [Acteur économique] Tonnage - Propriété `VEH_TONNAGE`
=======
#### Tonnage - Propriété `VEH_TONNAGE`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Tonnage maximal du véhicule<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

<<<<<<< HEAD
#### [Acteur économique] Jours et heures de livraison - Propriété `INTERV_JH`
=======
#### Jours et heures de livraison - Propriété `INTERV_JH`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Jours et heures de livraison exprimés selon le format OpeningHours d'OpenStreetMap ([https://wiki.openstreetmap.org/wiki/Key:opening_hours](https://wiki.openstreetmap.org/wiki/Key:opening_hours)). Ce format permet d'indiquer les week-ends (we), les jours fériés (PH) et les vacances scolaires (SH). Par exemple `Mo-Fr 09:00-17:00; PH 10:00-12:00; PH Su off` signifie : 'Du lundi au vendredi de 9h à 17h sauf les jours fériés où l'ouverture est de 10h à 12h, à l'exception des jours fériés tombant un dimanche'. `24/7` indique `Tous les jours`. [Utiliser groom-groom pour récupérer les jours et heures de circulation](https://cerema-med.shinyapps.io/groom-groom?action=opening_hours)<br/>Ex : Mo-Fr 08:00-12:00,13:00-17:30; Sa 08:00-12:00; PH off*
- Valeur optionnelle
- Type : chaîne de caractères

<<<<<<< HEAD
#### [Acteur économique] Régime d'accès - Propriété `INTERV_REGIME`
=======
#### Régime d'accès - Propriété `INTERV_REGIME`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Permet de savoir si l'aire de livraison est exclusive ou partagée avec du stationnement particulier, ou éventuellement concerne le transport de fond (si on choisit d'intégrer les aires réservés au transport de fond)<br/>Ex : Exclusif*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Mixte (avec stationnement particulier)
    - Exclusif
    - Alterné
    - Transport de fonds
    - Livraison

<<<<<<< HEAD
#### [Acteur économique] Durée maximale d'intervention - Propriété `INTERV_DUREE`
=======
#### Durée maximale d'intervention - Propriété `INTERV_DUREE`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Durée maximale d'intervention (au niveau d'une aire piétonne, par exemple). L'entrée et la sortie dans une zone peuvent être horodatées à la délivrance d'un ticket lors de la traversée d'une borne de passage.<br/>Ex : 03:00:00*
- Valeur optionnelle
- Type : heure

<<<<<<< HEAD
#### [Acteur économique] Zone - Propriété `EMPRISE_ZONE`
=======
#### Zone - Propriété `EMPRISE_ZONE`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Zone associée à l'aire. Il s'agit généralement de la dénomination du quartier ou de l'aire piétonne associée règlementée<br/>Ex : Secteur du Centre-Ville*
- Valeur optionnelle
- Type : chaîne de caractères

#### Adresse du point de référence de l'aire - Propriété `EMPRISE_DESIGNATION`

> *Description : Adresse du point de référence de l'aire. Cela peut être toute une rue ou un tronçon. Endroit précis de l'aire de livraison réservée aux livraisons.<br/>Ex : Avenue Philippe Solari, Commune d'Aix-en-Provence, Quartier Mazarin, 200046977-ZFE-001*
- Valeur obligatoire
- Type : chaîne de caractères
<<<<<<< HEAD
- Motif : `^[a-zA-Z0-9\-\–\'\’\«\»\°\"\s\d\u00C0-\u00FF\(\)\,\.]+$`
=======
- Motif : `^[a-zA-Z0-9\-\–\'\’\«\»\°\"\s\dÀ-ÿ\(\)\,\.]+$`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

#### Nombre de places - Propriété `EMPRISE_NBPLACES`

> *Description : Nombre de zones/places disponibles pour l'arrêt. Une aire de livraison qui pourrait comporter plusieurs zones/places d'arrêt, avec le cas d'une seule adresse pour plusieurs aires de livraison.<br/>Ex : 9*
- Valeur obligatoire
- Type : nombre réel
- Valeur entre 0 et 100

<<<<<<< HEAD
#### [Acteur économique] Longueur de l'emprise - Propriété `EMPRISE_LONGUEUR`
=======
#### Longueur de l'emprise - Propriété `EMPRISE_LONGUEUR`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Longueur de l'emprise en mètres. Cela peut être soit la longueur de la place, soit celle de l'emprise composée de l'ensemble des places. Dans certains cas, cette longueur peut être de plusieurs dizaines de mètres.<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 100

<<<<<<< HEAD
#### [Acteur économique] Largeur de l'emprise - Propriété `EMPRISE_LARGEUR`
=======
#### Largeur de l'emprise - Propriété `EMPRISE_LARGEUR`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Largeur de l'emprise en mètres.<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 10

<<<<<<< HEAD
#### [Acteur économique] Coordonnées GPS de l'Aire de Livraison ou de la rue - Propriété `GEOM_XY`
=======
#### Coordonnées GPS de l'Aire de Livraison ou de la rue - Propriété `GEOM_XY`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Coordonnées longitude, latitude associées à l'aire de livraison. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).<br/>Ex : 5.42101,43.53591*
- Valeur obligatoire
- Type : point géographique

#### Géométrie au format WKT - Propriété `GEOM_WKT`

> *Description : Géométrie de la rue (ligne), ou de l'emprise (polygone) exprimée au format [WKT (Well Know Text](https://fr.wikipedia.org/wiki/Well-known_text) sous le système de projection WGS84 (EPSG:4326)<br/>Ex : LineString(5.39340184 45.56538751, 5.41017215 45.56722934, 5.42510063 45.5679079)*
- Valeur optionnelle
- Type : chaîne de caractères

<<<<<<< HEAD
#### [Acteur économique] Types de véhicules - Propriété `VEH_TYPES`
=======
#### Types de véhicules - Propriété `VEH_TYPES`
>>>>>>> 9fdf7ade49eba88fae537149170d17e828d59219

> *Description : Types de véhicules. S'il y a plusieurs types, les séparer les valeurs par le caractère '|'. Les valeurs possibles sont : 'Poids lourds', 'Véhicules utilitaires légers', 'Vélo-cargos' et 'Tous véhicules'.<br/>Ex : Poids lourds|Tous véhicules|Vélo-cargos*
- Valeur obligatoire
- Type : chaîne de caractères

#### Types d'usage - Propriété `VEH_USAGES`

> *Description : Types d'usage de véhicule. S'il y a plusieurs usages, séparer les valeurs par le caractère '|'<br/>Ex : Bennes à ordures ménagères|Véhicules de police*
- Valeur obligatoire
- Type : chaîne de caractères

#### Coté de l'emprise - Propriété `EMPRISE_COTE`

> *Description : Localisation par rapport au numéro de voirie<br/>Ex : Droit*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Droit
    - Vis-à-vis

#### Début de la section (libellé) - Propriété `EMPRISE_DEBUT`

> *Description : Indication textuelle de l'endroit à partir duquel la règlementation s'applique, telle qu'écrite dans l'arrêté. Pour indiquer les coordonnées GPS, se référer au champ `GEOM_DEBUT`.<br/>Ex : 22 avenue Philippe Solari, Croisement de l'avenue Philippe Solari avec la rue Gaston de Saporta*
- Valeur optionnelle
- Type : chaîne de caractères

#### Début de la section (coordonnées) - Propriété `GEOM_DEBUT`

> *Description : Coordonnées GPS du début de la section. Se réfère à `EMPRISE_DEBUT`. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).<br/>Ex : 5.42101,43.53591*
- Valeur optionnelle
- Type : point géographique

#### Côté pair ou impair - Propriété `EMPRISE_PARITE`

> *Description : Côté pair ou impair<br/>Ex : Impair*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Impair
    - Pair

#### Fin de la section (libellé) - Propriété `EMPRISE_FIN`

> *Description : Indication textuelle de l'endroit au bout duquel la règlementation s'applique, telle qu'écrite dans l'arrêté. Pour indiquer les coordonnées GPS, se référer au champ `GEOM_FIN`.<br/>Ex : 34 bis avenue Philippe Solari, Intersection de l'avenue Philippe Solari avec le boulevard des Charmettes*
- Valeur optionnelle
- Type : chaîne de caractères

#### Fin de la section (coordonnées) - Propriété `GEOM_FIN`

> *Description : Coordonnées GPS de la fin de la section. Se réfère à `EMPRISE_DEBUT`. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).<br/>Ex : 5.42101,43.53591*
- Valeur optionnelle
- Type : point géographique

#### Signalisation horizontale - Propriété `SIGNALISATION_HORIZONTALE`

> *Description : Signalisation horizontale<br/>Ex : Avec panonceau*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Abimée
    - Absente
    - Avec panonceau
    - Sans panonceau

#### Signalisation verticale - Propriété `SIGNALISATION_VERTICALE`

> *Description : Signalisation verticale<br/>Ex : Avec panonceau*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Abimée
    - Absente
    - Avec panonceau
    - Sans panonceau

#### Conformité de la signalisation - Propriété `SIGNALISATION_CONFORMITE`

> *Description : Conformité de la signalisation<br/>Ex : Conforme*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Conforme
    - Non conforme
    - Signalisation horizontale non conforme
    - Signalisation verticale non conforme

#### Type de stationnement - Propriété `STATIONNEMENT_TYPE`

> *Description : Type de stationnement<br/>Ex : Bataille*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Bataille
    - Épi
    - Longitudinal

#### Localisation du stationnement - Propriété `STATIONNEMENT_LOCALISATION`

> *Description : Localisation du stationnement. Champ issu de https://opendata.paris.fr/explore/dataset/stationnement-voie-publique-emplacements/table/?disjunctive.regpri&disjunctive.regpar&disjunctive.typsta&disjunctive.arrond&disjunctive.zoneres&disjunctive.locsta&disjunctive.parite&disjunctive.signhor&disjunctive.signvert&disjunctive.confsign&disjunctive.typemob&disjunctive.zoneasp&disjunctive.stv&disjunctive.prefet&q=livraison&refine.regpri=LIVRAISON&sort=locsta&basemap=jawg.dark&location=16,48.85483,2.33805<br/>Ex : Chaussée*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Autre
    - Contre allée
    - Contre terre plein
    - Demi lincoln
    - Faux lincoln
    - Lincoln
    - Place
    - Terre plein
    - Trottoir

#### Identifiant de la zone de contrôle ASP - Propriété `ID_ASP`

> *Description : Identifiant de la zone de contrôle ASP<br/>Ex : 133-3*
- Valeur optionnelle
- Type : chaîne de caractères

#### [Acteur économique] URL de réservation - Propriété `RESERVATION_URL`

> *Description : URL de réservation<br/>Ex : https//reservermaplace.fr/aire=56ER56*
- Valeur optionnelle
- Type : chaîne de caractères (format `uri`)

#### Réglementation - Propriété `REGLEMENT`

> *Description : Réglementation<br/>Ex : Charte de livraison*
- Valeur obligatoire
- Type : chaîne de caractères

#### [Acteur économique] Mode de tarification - Propriété `TARIF_MODE`

> *Description : Mode de tarification<br/>Ex : Gratuit*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Gratuit
    - Stationnement limité
    - Stationnement payant

#### Tarif horaire - Propriété `[Acteur économique] TARIF_PRIX`

> *Description : Tarif horaire<br/>Ex : 1.7*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Surface - Propriété `EMPRISE_SURFACE`

> *Description : xxx<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Hauteur au sol - Propriété `[Acteur économique] EMPRISE_HAUTEUR_SOL`

> *Description : si hauteur de la marche<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Hauteur de plafond - Propriété `[Acteur économique] EMPRISE_HAUTEUR_PLAFOND`

> *Description : hauteur max. si contrainte d'accès (parking ouvrage, parking en surface avec portique, ..)<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Mobilier - Propriété `EQUIPEMENT_MOBILIER`

> *Description : Type de mobilier présent (valeurs multiples possibles)<br/>Ex : Rampe d'accès*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Rampe d'accès
    - xxx

#### Présence d'un capteur - Propriété `EQUIPEMENT_CAPTEUR`

> *Description : Capteur de présence ou d'identification de véhicule. Exemple de la ville de Cannes<br/>Ex : oui*
- Valeur obligatoire
- Type : booléen

#### [Acteur économique] Installation de recharge de véhicule électrique - Propriété `EQUIPEMENT_IRVE`

> *Description : Présence d'une borne de recharge de véhicule électrique<br/>Ex : oui*
- Valeur obligatoire
- Type : booléen
