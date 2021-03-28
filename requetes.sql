------------------------Requetes d'interrogation----------------------------------------------

---Simple-----
---Obtenir le nom des recettes:----
SELECT 'nom_recette'
  FROM RECETTES
----Obtenir le nombre d'ingredients----
SELECT COUNT('id_ingredient') as nombre_ingredients
FROM RECETTES

----Complexe avec jointure----
---Dans la table "Recettes" Faire apparaitre nom-recette, nombre d'ingredient, nom_ingredient, nom_etapes----
SELECT `nom_recette`, COUNT(`id_ingredient`), `nom_ingredient`, `contenu_etape`
	FROM `RECETTES`
			 JOIN `CONTENANT`
				  ON `CONTENANT`.`id_recette` = `RECETTES`.`id_recette`
				  ON `CONTENANT`.`id_etape` = `ETAPES`.`id_etape`
			JOIN `UTILISATION`
				ON `UTILISATION`.`id_ingredient` = `INGREDIENTS`.`id_ingredient`
				
SELECT RECETTES.NOM_RECETTE, INGREDIENTS.ID_INGREDIENT, ETAPES.CONTENU_ETAPE

	FROM RECETTES
    
			 JOIN CONTENANT
				  ON CONTENANT.ID_RECETTE = RECETTES.ID_RECETTE
                  
             JOIN ETAPES
				  ON CONTENANT.ID_ETAPE = ETAPES.ID_ETAPE
                                    
			JOIN INGREDIENTS
            
				ON UTILISATION.ID_INGREDIENT = INGREDIENTS.ID_INGREDIENT;
				
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
