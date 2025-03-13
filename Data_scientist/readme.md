# Programme d'analyse des handles Twitter

Ce projet en Ruby est conçu pour analyser une liste de handles Twitter, correspondant à des comptes de journalistes. Il répond à une série de questions liées à ces handles et propose des fonctionnalités d'analyse intéressantes.

## Fonctionnalités

Le programme exécute les tâches suivantes :

1. **Compter le nombre de handles** : Affiche le nombre total de handles dans la liste.
2. **Trouver le handle le plus court** : Identifie et affiche le handle le plus court de la liste.
3. **Compter les handles de 5 caractères** : Compte et affiche combien de handles ont exactement 5 caractères (sans compter le `@`).
4. **Compter les handles commençant par une majuscule** : Compte et affiche combien de handles commencent par une majuscule, après le `@`.
5. **Trier les handles par ordre alphabétique** : Affiche la liste triée par ordre alphabétique.
6. **Trier les handles par taille** : Trie la liste des handles en fonction de leur longueur et les affiche.
7. **Trouver la position de @epenser** : Recherche la position du handle `@epenser` dans la liste.
8. **Répartition des handles par taille** : Affiche la répartition des handles en fonction du nombre de caractères qu'ils contiennent (par exemple, combien ont 1 caractère, 2 caractères, etc.).

### Menu interactif

Le programme inclut un menu interactif permettant à l'utilisateur de choisir quelle question il souhaite poser et d'obtenir la réponse associée.

## Installation

Pour utiliser ce programme, vous devez avoir Ruby installé sur votre machine. Si vous n'avez pas Ruby, vous pouvez l'installer en suivant les instructions officielles ici : [https://www.ruby-lang.org/en/documentation/installation/](https://www.ruby-lang.org/en/documentation/installation/).

### Étapes d'installation :

1. Clonez ce repository sur votre machine locale :
    ```bash
    git clone https://github.com/votre-utilisateur/nom-du-repository.git
    cd nom-du-repository
    ```

2. Assurez-vous que Ruby est installé en vérifiant la version :
    ```bash
    ruby -v
    ```

3. Exécutez le programme :
    ```bash
    ruby programme.rb
    ```

4. Si vous utilisez le programme avec le menu interactif :
    ```bash
    ruby menu.rb
    ```

## Structure du projet

- **programme.rb** : Le script principal qui effectue les analyses sur les handles Twitter.
- **menu.rb** : Un script qui fournit un menu interactif pour que l'utilisateur puisse choisir la question à laquelle répondre.
- **handles_data.rb** : Un fichier contenant l'array des handles Twitter à analyser (ce fichier est directement utilisé par le script `programme.rb`).

## Exemple de sortie

Lorsque vous exécutez le programme, vous devriez voir des sorties similaires à celles-ci :

```bash
Combien de handles dans la liste ? 100
Le handle le plus court : @min
Nombre de handles avec 5 caractères
Nombre de handles commençant par une majuscule
Handles triés par ordre alphabétique :
@ADaboval, @AurelieLebelle, @BenoitBerthe, @CeliaPenavaire, @DorotheeLN, ...
Handles triés par taille :
@min, @BenoitBerthe, @ADaboval, @julienduffe, ...
La position de @epenser est : 
