------------------------Requetes d'interrogation----------------------------------------------

---Simple-----
---Obtenir le nom des recettes:----
SELECT nom_recette 
  FROM RECETTES
  
  
----Complexe avec jointure----
---Connaitre le nombre d'ingrédients dans chaque recette (nom)----




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
