# mesFrais

###Créer une petite appli de saisie des frais kilométriques.
**A chaque déplacement professionnel, nous devons tenir un registre à destination du comptable :**

 *date du déplacement,
 *origine,
 *destination,
 *motif (nom du client par exemple),
 *distance.

Le registre est propre à chaque utilisateur, et on dispose d’un rapport mensuel imprimable pour chaque utilisateur.

Creation d'un user (salarié), utilisation de la gem devise pour les futures authentifications.
User = nom, picture

creer ensuite un registre qui sera un ensemble de notes de frais correspondant à un salarié. (dependant)

** Amélioration: **
C’est très casse-pieds de saisir les distances alors qu’on a déjà saisi un trajet pour un autre déplacement… on peut pas faciliter la vie de l’utilisateur ?

Pourquoi pas nommer et enregistrer les trajets? un peu comme sur le site sncf on retrouve facilement un écran pré-rempli.

Idee : Créer un model trajet qui stockera les infos d'un trajet.
    model Trajet : id, nom, origine, destination et distance.
    ds le form de creation, on pourra sélectionner un trajet existant qui pré-remplira les champs ou laisser vide pour en créer un nouveau.
    plusieurs entrées de registre pourront correspondre à un trajet.
