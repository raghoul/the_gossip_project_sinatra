The Gossip Project
The Hacking Project - The gossip project - Sinatra

Objectif : Créer une application The Gossip Project avec Sinatra
Pour lancer l'application, vous pouvez utiliser :

 rackup -p 4567
 shotgun -p 4567 (si gemme shotgun installée)
Si jamais vous avez un message d'erreur qui mentionne qu'un utilisateur est déjà sur ce local host, vous pouvez utiliser la fonction suivante pour connaître le PIB de l'utilisateur :

 lsof -wni tcp:4567
Ensuite, vous lancez la fonction suivante :

 kill -9 [PIB]
Ce qui a été réalisé dans le projet du jour :
2.1. Architecture et rangement
2.2. Les premières views
2.3. La classe Gossip et la base de données
2.4. Ajouter un Gossip à partir du front
2.5. Afficher l'index des gossips
2.6. La vue show d'un potin
2.7. Éditer un potin

Les étapes non réalisées :
2.8. Commenter un potin

Les gems requises (cf. Gemfile)
Vous trouverez dans le fichier Gemfile la liste des gems requises pour lancer l'application ($ bundle install):

1- gem 'sinatra'
