# Quiz
*(A) indique une aide hors condition d'examen*

### Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux

La commande bash : `cat /etc/passwd`


### Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?

`chmod 744 myfile`

### Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?

Dans le dépôt local, il faut créer un fichier nommé `.gitignore`. Puis à l'intérieur nous pouvons spécifier quels fichiers, dossiers et/ou type de fichiers à ignorer lors des push vers le dépôt distant.
Pour ignorer tous les fichiers pdf il faut inscire `*.pdf` dans le fichier `.gitignore`.
Exemple : 
```
cd <depot local>
touch .gitignore
echo "*.pdf" > .gitignore
```

### Quelles commandes git utiliser pour fusionner les branches main et test_valide ?

Il faut se rendre sur la branche sur laquelle nous voulons fusionner une autre branche. Dans notre cas on va supposer que **main** est la branche de production. 

```
git checkout main
git merge test_valide
```

### Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant :

` echo -e 'Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :\n - "Bonjour est-ce que ce clavier fonctionne bien ?" \n - "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"\n - "Même des tildes ~ ?"\n - "Evidemment !"' `


### Quelle commande te permet de mettre en avant le processus gedit ?

` fg %1 `

### Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités
//

### Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls
cd : `Set-Location`

cp : `Copy-Item`

*(A)* mkdir : `New-Item`

ls : `Get-ChildItem`

  
### Dans la trame ethernet, qu'est-ce que le payload ?
Le "payload" ou charge utile est l'information transmise d'un noeud à un autre. Cela correspond à la trame ethernet moins l'en-tête protocoalaire. Donc on soustrait à la trame ethernet, les 8 premiers octets d'en-tête, les adresses MAC source et destination, de 6 octets chacune et enfin l'ether type de 2 octets. Il nous reste donc la charge utile , qui est l'ensemble des informations qui seront transmises à la couche supérieure du modèle OSI. Les 4 derniers octets de la trame correspondent à un checksum, un moyen de vérifier la bonne réception de tous les octets envoyés. 
  
### Pourquoi les classes IP sont remplacées par le CIDR ?
//





