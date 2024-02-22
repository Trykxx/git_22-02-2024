# ------------------------------ #
#           GIT LESSON 
# ------------------------------ #


# ------------------------------ #
#           CONFIGURATION 
# ------------------------------ #


#  Afficher la version de git installé sur le système.
git version | git -v

# Configure le nom de l'utilisateur et son email (obligatoire).
git config --global user.email "x@gmail.com"
git config --global user.name "x"

# Configure Git pour qu'il colore la sortie de la console.
git config  --global color.ui true

# Ouvrir le fichier de configuration global de Git.
git config --global --edit

# Configure l'editeur de texte par défaut utilisé par Git.
git config --global core.edit "code --wait"


# ------------------------------ #
#           INITIALISATION 
# ------------------------------ #

#  Crée un nouveau dépot Git.
git init 

# Affiche l'état de suivi des fichiers
git status


# ------------------------------ #
#           COMMIT 
# ------------------------------ #

#  On ajoute un ou des fichiers modifiés a la staging area pour préparer un commit
git add <nom_fichier> | git add . 

# Enregistre les modifications présentes dans dans la staging area en créant un nouveau commit avec le message spécifié.
git commit -m "first commit"

# Modifie le dernier commit.
git commit --amend -m "modification du h1 et du h2"

# Affiche l'historique des commits.
git log  
git log --oneline

# Permet de se déplacer vers un commit spécifique en utilisant son identifiant
git checkout id_commit

# ermet de revenir au dernier commit 
git checkout nom_branche


# ------------------------------ #
#           BRANCHES
# ------------------------------ #

# Affiche la liste des branches
git branch

# Crée une nouvelle branche 
git branch nom_branche

# Change de branche 
git switch nom_branche

# Fusionne les modifications de la branche spécifié sur la branche actuelle.
git merge nom_branche

# Renomme la branche actuelle avec le nouveau nom.
git branch -m nom_branche

# Supprime la branch spécifié.
git branch -d nom_branche

# ------------------------------ #
#           RESTORE
# ------------------------------ #

# Restaure le fichier a l'état du dernier commit.
git restore nom_fichier

# Supprime le fichier spécifié de la staging area, le retirant de la préparation pour le commit.
git restore --staged nom_fichier 

# Créé un nouveau commit a partir du commit spécifié
git revert id_commit


# ------------------------------ #
#           REMOTE
# ------------------------------ #

# Etablir une connexion avec un depot distant en lui attribuant un nom et une URL.
git remote add alias url 

# En liant la branche locale avec la branche distante 
# Envoi le contenu du depot local vers le dépôt distant 
git push -u alias nom_branche

# Envoi le contenu du depot local vers le depot distant 
git push

# Recupere tout l'historique du depot distant et incorpore les modifications 
git pull 