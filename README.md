# Schéma sur les aires de livraison
Ceci est le répertoire du schéma sur les aires de livraison.

Ce travail a été conduit en partenariat avec OpenDataFrance et La Région SUD et sera poursuivi en 2023 avec la DGITM.

Une première écriture du schéma est proposée sachant qu'en 2023, les parties prenantes et acteurs de la logistique seront conviés à son élaboration de manière plus approfondie.

## Schéma

[Voir le schéma au format JSON TableSchema ](schema.json)  
[Voir la documentation associée au schéma (liste des champs et valeurs possibles)](documentation/schema-page.md)   

### Version "ultra"

Des champs supplémentaires sont disponibles pour le schéma dans sa version **ultra**

[Voir le schéma version **ultra** au format TableSchema (json)](documentation/schema-page-ultra.md) 



## Pages de travail

Les pages suivantes ont permis de travailler autour d'un schéma sur les aires de livraison :

[Répertoire FabLog d'OpenDataFrance](https://opendatafrance.gitbook.io/fablog/groupes-de-travail/partage-des-donnees/zones-de-livraison)  
[Framapad](https://mypads.framapad.org/mypads/?/mypads/group/espace-de-travail-normalisation-ch36h71o/pad/view/draft-aires-de-livraison-zv13l47tc)

## Jeux de données

- Dans le répertoire, [un fichier d'exemple](exemple_antibes.csv) est fourni, avec la numérisation de trois aires de livraison sur la commune d'Antibes

Autrement, on trouve sur internet plusieurs jeux de données ouverts sur les aires de livraison, qui ont servi d'inspiration au schéma :

- [Hauts de Seine](https://www.data.gouv.fr/fr/datasets/aires-de-livraison/) contient, entre autres :
  - Côté de la route (`LOC_NUM`)
  - Longueur + Largeur
  - Sens
  - Lim. vitesse
  - Heure de début  + heure de fin
- [Toulouse](https://data.toulouse-metropole.fr/explore/dataset/aires-de-livraison/)
  - Champ relatif à la domanialité
- [Paris](https://opendata.paris.fr/explore/dataset/stationnement-voie-publique-emplacements/table/?disjunctive.regpri&disjunctive.regpar&disjunctive.typsta&disjunctive.arrond&disjunctive.zoneres&disjunctive.locsta&disjunctive.parite&disjunctive.signhor&disjunctive.signvert&disjunctive.confsign&disjunctive.typemob&disjunctive.zoneasp&disjunctive.stv&disjunctive.prefet&q=livraison&refine.regpri=LIVRAISON&sort=typemob&basemap=jawg.dark&location=16,48.85483,2.33805)
  - Carte présente : https://www.paris.fr/pages/logistique-marchandises-livraisons-4738 (capgeo.sig.fr)
    - https://capgeo.sig.paris.fr/Apps/Places_Livraison/
  - Mention de la carte interactive : https://www.paris.fr/pages/paris-experimente-pour-une-meilleure-utilisation-des-places-de-livraison-16080

## Remarques sur la numérisation

### Au sujet du champ `INTERV_JH`

Si `INTERV_JH` est vide, alors ce ne sont que des livraisons qui sont autorisées. 

S'il y a des horaires spécifiés dans `INTERV_JH`, alors la livraison s'effectue à ces horaires. En dehors de ces plages, le stationnement standard est autorisé. Il est donc mixte.

## Outils

Outils utiles : https://jsonformatter.curiousconcept.com/#

Scripts (dossier `scripts`) :

[Créer la documentation du schéma](1-Creer-Documentation.bat)  
[Tester l'exemple avec frictionless](scripts/2-Tester-Exemple.bat)

