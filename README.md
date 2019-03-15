# Travail pratique 3 amélioration d'un programme/logiciel

+ débutez vos tests avec le fichier de correction du TP2

## Objectifs
  L'objectif est de vous initier à la programmation avec le langage C, en  manipulant
  des données, des fichiers, ainsi que la gestion des `arguments` et `options` provenant de la ligne de commande.

  De plus, vos sources seront maintenues dans un gestionnaire de version/source de type git.

  Vous allez aussi vous familiariser avec `make` et le fichier `Makefile` afin `d'automatiser` plusieurs tâches utiles.

  Précédemment, nous avons ajouté une composante essentielle, les tests. Automatiser des tâches répétitives est
  plutôt intelligent. Avoir les bons réflexes et la bonne stratégie afin de résoudre un problème vous garantira à
  coup sûr des résultats à la hauteur de vos attentes.
  
  À ce point, nous avons un programme performant et solidement construit.  Nous sommes aussi en mesure de le tester de façon automatique.
  
  Dans ce travail, nous voulons aller un peu plus loin, mais, surtout, nous voulons être plus rapides dans la mise en oeuvre de
  notre code.  Prendre de bonnes décisions (bons réflexes) rapidement et efficacement.  Ce travail permet d'expérimenter et
  réutiliser toutes les notions vues en classe et dans vos travaux.

## Description du travail

  Le programme doit découvrir de nouveaux `nombres parfaits` contenus dans un intervalle composé d’entiers naturels.
  ```math
   N = { 0, 1, 2, ... }
  ```
  Un nombre est dit parfait lorsque la somme de tous ses diviseurs (excluant lui-même bien sûr) est égale à lui-même.
  
  Vous avez aussi compris que, pour trouver les diviseurs, il n'est pas nécessaire de tester tous les nombres.  Donc, 
  la validation d'un nombre parfait potentiel ne devrait pas se faire en O(n).

## Qualité du livrable

+ Livrer un logiciel de haute qualité;
+ Aucune fuites de mémoire;

## Exigences et obligations

Vous devez,
 + utiliser des entiers 128bit;
 + lire des nombres jusqu'à la limite de 128bit non signé;
 + ajouter une option `-d ASC | DEC` à la ligne de commande, le default est DEC;
 + utiliser l'instruction `struct`;
 + définir plusieurs types avec `typedef`;
 + utiliser une ou plusieurs fois la fonction `malloc()`;
 + utiliser une ou plusieurs fois le _keyword_ `enum`;
 + utiliser plusieurs fois les directives au préprocesseur;
 + utiliser le blocage des inclusions multiple au format _NOM_H_ pour chaque fichier d'entête;
 + soumettre votre programme à `valgrind` via `make valgrind`;
 + utiliser les librairies standard et portable du langage C. `getopt.h` et `unistd.h` ne sont pas acceptées;
 + documenter vos prises de décisions importantes dans README.md;
 + respirer, manger, réfléchir, planifier, vous amuser.
 
 ### Détails
 - `-d` pour display
 - `ASC` ascending = croissant
 - `DEC` decending = decroisant

 ### Encore plus de details
 
 ```c
   // à compléter et utiliser
   typedef ... `__int128` int128_t;
   typedef struct vector_t ...;
   typedef enum ... bool_t;
 ```
 
## Exécution et performance
 + Tous les tests auront une limite de temps;
 + Chaque exécution ne pourra dépasser qu'au maximum 99 secondes;
 + Il est aussi possible qu'un test soit limité à 10 sec.

## Automatisation des tests unitaire et de régression
 + Il existe plusieurs façons de faire les tests. Nous utilisons le `bash` dans ce travail;
 + Tous les tests contenus dans le fichier `inf3135-h2019-tp3.correction` doivent être exécutés sans problème par le script `evaluer-tp3.sh`;
 + Vous devez produire quelque chose de similaire à `output` qui est un exemple;
 + Le script doit être dynamique. (copier et coller fait par un humain n'est pas accepté ni acceptable).

#### output (exemple)
~~~~
0 : echec
1 : reussi 1 pts
2 : reussi 1 pts
3 : reussi 1 pts
4 : reussi 1 pts
5 : echec
6 : reussi 1 pts
7 : reussi 2 pts
8 : reussi 2 pts
9 : echec
10 : reussi 1 pts
11 : echec
12 : echec
13 : reussi 1 pts
14 : echec
15 : echec
16 : echec
17 : echec
18 : echec
19 : echec
20 : echec
21 : echec
22 : echec
23 : echec
Note (total) pour FRAG01010199 dans inf3135-h2019-tp3: 11
FIN.
~~~~

Voici la variante que je propose pour le tp3 :

[inf3135-h2019-tp3.correction](https://github.com/guyfrancoeur/INF3135_H2019_TP3/blob/master/inf3135-h2019-tp3.correction)

#### colonnes
 + 1 : points
 + 2 : temps maximum d'exécution
 + 3 : code de retour
 + 4 : description
 + 5 : commande

#### evaluer-tp3.sh
 + Vous devez ouvrir le fichier `inf3135-h2019-tp3.correction` et consommer les données contenues afin de tester votre programme de façon automatisé.
 + Vous devez prendre le script générique suivant pour produire `evaluer-tp3.sh`

```bash
#!/bin/bash
# evaluer.sh
if [ -z $1 ]
then
  correction=inf3135-h2019-tp3.correction
else
  correction=$1
fi
wget -q https://github.com/guyfrancoeur/INF3135_H2019_TP3/raw/master/${correction} -O ${correction}
if [ ! -f inf3135-h2019-tp3.correction ]
then
  echo "erreur fatale, fichier correction inexistent."
  exit 1
fi
for line in `cat ${correction}`
do
  #votre code ici
done
```

### Gestion de projet et collaborations
 + tous compléments d'information seront ajoutés au `wiki`;
 + toutes les questions seront ajoutées à la section `issues`;
 + aucune question par courriel;
 + toutes les questions devront être *posées dans le bon fils* de discussion (sujet pertinent);
 + toutes les questions devront avoir un `label`;
 + vous pouvez guider vos collègues avec des réponses; *maximum 3 interventions* (questions ou réponses);
 + la qualité des interventions et du français est essentielle (très importante);
 + les questions sont pour l'obtention de précision uniquement;
 + si une question vise un élément académique incompris, nous adresserons celui-ci en classe;
 + aucun support sur vos machine personnel ne sera offert;
 + les demandes qui concernent des `bogues` doivent être accompagnées du message d'erreur;
 + aucune demande de solution ne sera tolérée;
 + aucun manque de respect ne sera toléré.

### Vous devez avoir votre propre projet dans votre gestionnaire de version préféré :
+ le fuseau horaire doit être correctement configuré (Montréal);
+ le nom du projet doit être en minuscule et sans faute;
+ les utilisateurs de GitLab doivent s'assurer que la sécurité soit adéquate;
+ vous n'avez pas à créer de répertoire pour vos sources dans ce travail.

## Remise

La totalité de votre travail :
 + doit être remis le **X avril 2019** à **23h59** 
 + Après cette date, la note zéro sera appliquée.

  La remise se fait **obligatoirement** par l'intermédiaire de l'un des gestionnaires de versions suivants :
  + `GitHub https://github.com/____`;
  + `GitLab https://gitlab.com/____`.
  
  Votre projet doit être privé.
  
  **Aucune remise par courriel ne sera acceptée** (le travail sera considéré comme non remis).

  Le nom de votre projet doit être `inf3135-h2019-tp3` (en minuscules). Vous devez donner un accès en
  mode **lecture/écriture** (pas **admin**) à l'utilisateur `guyfrancoeur` (moi-même). Ceci me permettra
  de déposer directement dans vos projets votre note pour le travail ainsi que mes commentaires.
  
  La branche `master` sera celle `clonée` et sera celle qui sera évaluée.

  Votre projet devrait minimalement contenir les fichiers suivants :

- Un fichier `cp.txt` contenant votre code permanent en majuscule et complet (requis pour la publication des résultats);
- Un fichier `tp3.c` contenant le code source de votre projet, ainsi que votre fonction `main`;
- Les fichiers `outils.h` et `outils.c` contenant le code source de vos fonctions;
- Les fichiers `structure.h` et `structure.c` contenant le code source de la structure des données utilisées;
- Un fichier `README.md` avec le titre du projet, votre approche (réflexion), vos inspirations, vos décisions, la bibliographie;
- Un fichier nommé `Makefile`;
- Un fichier `.gitignore`;
- Un fichier `evaluer-tp3.sh`.

## Barème de correction ( en révision )

| Critère | Sous-critère | Points |
| ------- |:------------ | ------:|
| Script (test)     | Script bash pour test `evaluer-tp3.sh`           |  2.0 |
| Compilation       | sans avertissement ni erreur                     |  1.0 |
| Fonctionnabilité  | 5 à 10 tests seront lancés (comparaison binaire) |  6.0 |
| Modularité        | respect des exigences                            |  2.0 |
| Type Abstrait     | définition et utilisation d'un TAD               |  2.0 |
| Qualité           | temps d'exécution, mémoire                       |  3.0 |
| Makefile          | complet, simple, sans extra                      |  1.0 |
| Contribution      | wiki et issues                                   |  1.0 |
| Réflexion         | Qualité des questions, réponses                  |  1.0 |
| Français          | compréhension, écriture                          |  1.0 |
| **Total**         |                                                  | 20/20 |


----
par Guy Francoeur
