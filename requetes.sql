--Etape 1--
------------------------Requetes d'interrogation----------------------------------------------

---Simple-----
----Obtenir le nombre d'ingredients----
SELECT COUNT('id_ingredient') as nombre_ingredients
FROM RECETTES

----Complexe avec jointure----
---Dans la table "Recettes" Faire apparaitre nom-recette, nombre d'ingredient, nom_ingredient, nom_etapes----

SELECT `RECETTES`.`NOM_RECETTE`, `RECETTES`.`NB_PERSONNE`, COUNT(`ETAPES`.`ID_ETAPE`)
	FROM `RECETTES`
			 JOIN `CONTENANT` ON `CONTENANT`.`ID_RECETTE` = `RECETTES`.`ID_RECETTE`
			 JOIN `ETAPES` ON `ETAPES`.`ID_ETAPE` = `CONTENANT`.`ID_ETAPE`
GROUP BY `Nom_Recette`
			


------------------------Requetes de manipulation-----------------------

INSERT INTO `CATEGORIES` ( `ID_CATEGORIE`, `NOM_CATEGORIE` )
		VALUES
			( '1', 'Moins de 2€' ),
			( '2', 'Moins de 5€' ),
			( '3', 'Moins de 10€' )
			;
			
INSERT INTO `INTERNAUTES` (`ID_INTERNAUTE`,`NOM_INTERNAUTE` , `PRENOM_INTERNAUTE`, `AGE_INTERNAUTE`, `MAIL_INTERNAUTE`, `MDP_INTERNAUTE`,`PSEUDO_INTERNAUTE` )
		VALUES
			( '1', 'DE VOLONTAT', 'Oriane', '19', 'orianevolontat@gmail.com', 'azert', 'Oriiiiane' ),
			( '2', 'BOURGEOIS', 'Tessie', '19', 'tessie.bourgeois@gmail.com', 'Petitchien', 'Tess' )
			;
---------------------------------------------------------------------------------------------
--Etape 2--
--requetes monotables--
#Afficher toutes les recettes
SELECT * 
FROM RECETTES;

#Afficher toutes les categories
SELECT * 
FROM CATEGORIES;

-- requetes jointure--
# Afficher les ingredients de toutes les recettes
SELECT ('nom_ingredient')
FROM RECETTES
LEFT JOIN id_ingredient ON IN RECETTES.id_ingredient = INGREDIENTS.id_ingredient;

# Afficher les categories de toutes les recettes
SELECT ('nom_categorie')
FROM RECETTES
FULL JOIN CATEGORIES ON  RECETTES.id_categorie = CATEGORIE.id_categorie;

--requetes avec regroupement--
#Afficher le nombre de recettes dans chaque catégorie
SELECT [[RECETTES].nom_recette, Sum([RECETTES].id_recette) AS NombreRecette
FROM [RECETTES]
GROUP BY [RECETTES].nom_recette ;

#Afficher le nombre de recettes crées par chaque utlisateur
SELECT [[CATEGORIES].nom_recette, Sum([RECETTES].id_recette) AS NombreRecette
FROM [RECETTES]
GROUP BY [RECETTES].nom_recette ;
--requêtes contenant des sous-requêtes--
