
package sequenceComparerSolutions {

    package parts {

        part def ApplicationMaison;
        part def GestionnaireComparaison;
        part def Calendrier;
        part def ServiceMeteo;
        part def EquipementsConnectes;
        part def Batterie;
        part def MoteurComparaison;
    }

    package sequences {

        private import sequenceComparerSolutions::parts::*;

        occurrence comparerSolutionsS1 {

            part application: ApplicationMaison;
            part gestionnaire: GestionnaireComparaison;
            part calendrier: Calendrier;
            part meteo: ServiceMeteo;
            part equipements: EquipementsConnectes;
            part batterie: Batterie;
            part moteur: MoteurComparaison;

            message demanderComparaison from application to gestionnaire;

            message verifierBesoin from gestionnaire to application;

            message transmettreBesoin from application to gestionnaire;

            message consulterCalendrier from gestionnaire to calendrier;

            message transmettreCalendrier from calendrier to gestionnaire;

            message demanderPrevisions from gestionnaire to meteo;

            message transmettrePrevisions from meteo to gestionnaire;

            message consulterEquipements from gestionnaire to equipements;

            message transmettreEquipementsDisponibles from equipements to gestionnaire;

            message consulterEtatBatterie from gestionnaire to batterie;

            message transmettreEtatCharge from batterie to gestionnaire;

            message rechercherSolutions from gestionnaire to moteur;

            message transmettreSolutions from moteur to gestionnaire;

            message evaluerSolutions from gestionnaire to moteur;

            message transmettreEvaluations from moteur to gestionnaire;

            message classerSolutions from gestionnaire to moteur;

            message transmettreClassement from moteur to gestionnaire;

            message afficherComparatifEtRecommandation from gestionnaire to application;
        }
    }
}
