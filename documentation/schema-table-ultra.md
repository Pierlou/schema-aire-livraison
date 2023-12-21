## aire-livraison

Aires de livraison

Spécification du fichier d'échange relatif aux aires de livraison

- Schéma créé le : 11/22/22
- Site web : https://github.com/CEREMA/schema-aire-livraison
- Version : 0.1.0
- Valeurs manquantes : `""`, `"NA"`, `"NaN"`, `"N/A"`
- Clé primaire : `ID`

### Modèle de données

|Nom|Type|Description|Exemple|Propriétés|
|-|-|-|-|-|
|VEH_TYPES (Types de véhicules)|chaîne de caractères|Types de véhicules. S'il y a plusieurs types, les séparer les valeurs par le caractère '|'. Les valeurs possibles sont : 'Poids lourds', 'Véhicules utilitaires légers', 'Vélo-cargos' et 'Tous véhicules'.|Poids lourds|Tous véhicules|Vélo-cargos|Valeur obligatoire|
|VEH_USAGES (Types d'usage)|chaîne de caractères|Types d'usage de véhicule. S'il y a plusieurs usages, séparer les valeurs par le caractère '|'|Bennes à ordures ménagères|Véhicules de police|Valeur obligatoire|
|EMPRISE_COTE (Coté de l'emprise)|chaîne de caractères|Localisation par rapport au numéro de voirie|Droit|Valeur optionnelle, Valeurs autorisées : Droit, Vis-à-vis|
|EMPRISE_DEBUT (Début de la section (libellé))|chaîne de caractères|Indication textuelle de l'endroit à partir duquel la règlementation s'applique, telle qu'écrite dans l'arrêté. Pour indiquer les coordonnées GPS, se référer au champ `GEOM_DEBUT`.|22 avenue Philippe Solari, Croisement de l'avenue Philippe Solari avec la rue Gaston de Saporta|Valeur optionnelle|
|GEOM_DEBUT (Début de la section (coordonnées))|point géographique|Coordonnées GPS du début de la section. Se réfère à `EMPRISE_DEBUT`. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).|5.42101,43.53591|Valeur optionnelle|
|EMPRISE_PARITE (Côté pair ou impair)|chaîne de caractères|Côté pair ou impair|Impair|Valeur optionnelle, Valeurs autorisées : Impair, Pair|
|EMPRISE_FIN (Fin de la section (libellé))|chaîne de caractères|Indication textuelle de l'endroit au bout duquel la règlementation s'applique, telle qu'écrite dans l'arrêté. Pour indiquer les coordonnées GPS, se référer au champ `GEOM_FIN`.|34 bis avenue Philippe Solari, Intersection de l'avenue Philippe Solari avec le boulevard des Charmettes|Valeur optionnelle|
|GEOM_FIN (Fin de la section (coordonnées))|point géographique|Coordonnées GPS de la fin de la section. Se réfère à `EMPRISE_DEBUT`. S'écrit sous la forme 'long,lat' (5 ou 6 décimales sont conseillées).|5.42101,43.53591|Valeur optionnelle|
|SIGNALISATION_HORIZONTALE (Signalisation horizontale)|chaîne de caractères|Signalisation horizontale|Avec panonceau|Valeur optionnelle, Valeurs autorisées : Abimée, Absente, Avec panonceau, Sans panonceau|
|SIGNALISATION_VERTICALE (Signalisation verticale)|chaîne de caractères|Signalisation verticale|Avec panonceau|Valeur optionnelle, Valeurs autorisées : Abimée, Absente, Avec panonceau, Sans panonceau|
|SIGNALISATION_CONFORMITE (Conformité de la signalisation)|chaîne de caractères|Conformité de la signalisation|Conforme|Valeur optionnelle, Valeurs autorisées : Conforme, Non conforme, Signalisation horizontale non conforme, Signalisation verticale non conforme|
|STATIONNEMENT_TYPE (Type de stationnement)|chaîne de caractères|Type de stationnement|Bataille|Valeur optionnelle, Valeurs autorisées : Bataille, Épi, Longitudinal|
|STATIONNEMENT_LOCALISATION (Localisation du stationnement)|chaîne de caractères|Localisation du stationnement. Champ issu de https://opendata.paris.fr/explore/dataset/stationnement-voie-publique-emplacements/table/?disjunctive.regpri&disjunctive.regpar&disjunctive.typsta&disjunctive.arrond&disjunctive.zoneres&disjunctive.locsta&disjunctive.parite&disjunctive.signhor&disjunctive.signvert&disjunctive.confsign&disjunctive.typemob&disjunctive.zoneasp&disjunctive.stv&disjunctive.prefet&q=livraison&refine.regpri=LIVRAISON&sort=locsta&basemap=jawg.dark&location=16,48.85483,2.33805|Chaussée|Valeur optionnelle, Valeurs autorisées : Autre, Contre allée, Contre terre plein, Demi lincoln, Faux lincoln, Lincoln, Place, Terre plein, Trottoir|
|ASP_ID (Identifiant de la zone de contrôle ASP)|chaîne de caractères|xxx|133-3|Valeur optionnelle|
|RESERVATION (URL de réservation)|chaîne de caractères (format `uri`)|URL de réservation|https//reservermaplace.fr/aire=56ER56|Valeur optionnelle|
|REGLEMENT (Réglementation)|chaîne de caractères|Réglementation|Charte de livraison|Valeur obligatoire|
|TARIF_MODE (Mode de tarification)|chaîne de caractères|Mode de tarification|Gratuit|Valeur optionnelle, Valeurs autorisées : Gratuit, Stationnement limité, Stationnement payant|
|TARIF_PRIX (Tarif horaire)|nombre réel|Tarif horaire|xxx|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 45|
|EMPRISE_SURFACE (Surface)|nombre réel|xxx|9|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 45|
|EMPRISE_HAUTEUR_SOL (Largeur)|nombre réel|si hauteur de la marche|9|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 45|
|EMPRISE_HAUTEUR_PLAFOND (xxx)|nombre réel|hauteur max. si contrainte d'accès (parking ouvrage, parking en surface avec portique, ..)|9|Valeur optionnelle, Valeur minimale : 0, Valeur maximale : 45|
|EQUIPEMENTS_MOBILIER (Mobilier)|chaîne de caractères|Type de mobilier présent (valeurs multiples possibles)|Rampe d'accès|Valeur optionnelle, Valeurs autorisées : Rampe d'accès, xxx|
|EQUIPEMENTS_CAPTEUR (Présence d'un capteur)|booléen|Valeurs considérées comme vraies : ['oui', 'Oui', 'OUI', 'o', 'O', 'vrai', 'Vrai', 'VRAI', 'true', 'True', 'TRUE', '1']Valeurs considérées comme fausses : ['non', 'Non', 'NON', 'n', 'N', 'faux', 'Faux', 'FAUX', 'false', 'False', 'FALSE', '0']Capteur de présence ou d'identification de véhicule. Exemple de la ville de Cannes|oui|Valeur obligatoire|
|EQUIPEMENTS_IRVE (Installation de recharge de véhicule électrique)|booléen|Valeurs considérées comme vraies : ['oui', 'Oui', 'OUI', 'o', 'O', 'vrai', 'Vrai', 'VRAI', 'true', 'True', 'TRUE', '1']Valeurs considérées comme fausses : ['non', 'Non', 'NON', 'n', 'N', 'faux', 'Faux', 'FAUX', 'false', 'False', 'FALSE', '0']Présence d'une borne de recharge de véhicule électrique|oui|Valeur obligatoire|
