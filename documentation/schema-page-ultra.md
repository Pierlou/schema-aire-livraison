## aire-livraison

Aires de livraison

Spécification du fichier d'échange relatif aux aires de livraison

- Schéma créé le : 11/22/22
- Site web : https://github.com/CEREMA/schema-aire-livraison
- Version : 0.1.0
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Clé primaire : `ID`

### Modèle de données


##### Liste des propriétés

| Propriété | Type | Obligatoire |
| -- | -- | -- |
| [VEH_TYPES](#types-de-véhicules---propriété-veh_types) | chaîne de caractères  | Oui |
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
| [ASP_ID](#identifiant-de-la-zone-de-contrôle-asp---propriété-asp_id) | chaîne de caractères  | Non |
| [RESERVATION](#url-de-réservation---propriété-reservation) | chaîne de caractères (format `uri`) | Non |
| [REGLEMENT](#réglementation---propriété-reglement) | chaîne de caractères  | Oui |
| [TARIF_MODE](#mode-de-tarification---propriété-tarif_mode) | chaîne de caractères  | Non |
| [TARIF_PRIX](#tarif-horaire---propriété-tarif_prix) | nombre réel  | Non |
| [EMPRISE_SURFACE](#surface---propriété-emprise_surface) | nombre réel  | Non |
| [EMPRISE_HAUTEUR_SOL](#largeur---propriété-emprise_hauteur_sol) | nombre réel  | Non |
| [EMPRISE_HAUTEUR_PLAFOND](#xxx---propriété-emprise_hauteur_plafond) | nombre réel  | Non |
| [EQUIPEMENTS_MOBILIER](#mobilier---propriété-equipements_mobilier) | chaîne de caractères  | Non |
| [EQUIPEMENTS_CAPTEUR](#présence-d'un-capteur---propriété-equipements_capteur) | booléen  | Oui |
| [EQUIPEMENTS_IRVE](#installation-de-recharge-de-véhicule-électrique---propriété-equipements_irve) | booléen  | Oui |

#### Types de véhicules - Propriété `VEH_TYPES`

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

#### Identifiant de la zone de contrôle ASP - Propriété `ASP_ID`

> *Description : xxx<br/>Ex : 133-3*
- Valeur optionnelle
- Type : chaîne de caractères

#### URL de réservation - Propriété `RESERVATION`

> *Description : URL de réservation<br/>Ex : https//reservermaplace.fr/aire=56ER56*
- Valeur optionnelle
- Type : chaîne de caractères (format `uri`)

#### Réglementation - Propriété `REGLEMENT`

> *Description : Réglementation<br/>Ex : Charte de livraison*
- Valeur obligatoire
- Type : chaîne de caractères

#### Mode de tarification - Propriété `TARIF_MODE`

> *Description : Mode de tarification<br/>Ex : Gratuit*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Gratuit
    - Stationnement limité
    - Stationnement payant

#### Tarif horaire - Propriété `TARIF_PRIX`

> *Description : Tarif horaire<br/>Ex : xxx*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Surface - Propriété `EMPRISE_SURFACE`

> *Description : xxx<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Largeur - Propriété `EMPRISE_HAUTEUR_SOL`

> *Description : si hauteur de la marche<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### xxx - Propriété `EMPRISE_HAUTEUR_PLAFOND`

> *Description : hauteur max. si contrainte d'accès (parking ouvrage, parking en surface avec portique, ..)<br/>Ex : 9*
- Valeur optionnelle
- Type : nombre réel
- Valeur entre 0 et 45

#### Mobilier - Propriété `EQUIPEMENTS_MOBILIER`

> *Description : Type de mobilier présent (valeurs multiples possibles)<br/>Ex : Rampe d'accès*
- Valeur optionnelle
- Type : chaîne de caractères
- Valeurs autorisées : 
    - Rampe d'accès
    - xxx

#### Présence d'un capteur - Propriété `EQUIPEMENTS_CAPTEUR`

> *Description : Capteur de présence ou d'identification de véhicule. Exemple de la ville de Cannes<br/>Ex : oui*
- Valeur obligatoire
- Type : booléen

#### Installation de recharge de véhicule électrique - Propriété `EQUIPEMENTS_IRVE`

> *Description : Présence d'une borne de recharge de véhicule électrique<br/>Ex : oui*
- Valeur obligatoire
- Type : booléen
