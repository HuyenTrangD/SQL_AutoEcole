# 1 - Sélectionner tous les clients qui sont nés avant 1980
SELECT ID_eleve, nom, prenom, date_naissance
FROM eleves
WHERE date_naissance < '1980-01-01';

# 2 - Sélectionner tous les examens passés par le client n°1
SELECT ID_seance
FROM seance s
JOIN eleves e ON s.seance_date = e.date
WHERE s.Id_eleve = 1 ;

# 3 - Sélectionner le nom du client qui a le plus grand nombre d’erreurs commises
SELECT ID_eleve, nom, prenom, MAX(nb_fautes)
FROM eleves e
JOIN seance s ON e.seance_date = s.date ;

# 4 - Sélectionner le nom du client qui a le plus petit nombre d’erreurs commises
SELECT ID_eleve, nom, prenom, MIN(nb_fautes)
FROM eleves e
JOIN seance s ON e.seance_date = s.date ;

# 5 - Sélectionner les intitulés des questions de la série n°1
SELECT intitule
FROM question q
JOIN serie_a_question s ON q.intitule = s.question_intitule
WHERE q.ID_serie =1 ;

# 6 - Sélectionner le nom et le prénom des élèves ayant échoué au moins une fois à l'examen
SELECT ID_eleve, nom, prenom
FROM eleves e
JOIN seance s ON e.seance_date = s.date
WHERE s.nb_fautes > 5