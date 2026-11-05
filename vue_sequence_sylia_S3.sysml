
package sequencesMaisonIntelligente {

    package parts {

        part def ApplicationMaison;
        part def GestionnaireEnergetique;
        part def Calendrier;
        part def ServiceMeteo;
        part def Batterie;
        part def MoteurSimulation;
    }

    package sequences {

        private import sequencesMaisonIntelligente::parts::*;

        occurrence simulerChangementProgrammeS3 {

            part application: ApplicationMaison;
            part gestionnaire: GestionnaireEnergetique;
            part calendrier: Calendrier;
            part meteo: ServiceMeteo;
            part batterie: Batterie;
            part simulation: MoteurSimulation;

            message demanderSimulation from application to gestionnaire;

            message consulterPlanning from gestionnaire to calendrier;

            message transmettrePlanning from calendrier to gestionnaire;

            message demanderPrevisions from gestionnaire to meteo;

            message transmettrePrevisions from meteo to gestionnaire;

            message consulterEtatCharge from gestionnaire to batterie;

            message transmettreEtatCharge from batterie to gestionnaire;

            message calculerConsequences from gestionnaire to simulation;

            message transmettreResultats from simulation to gestionnaire;

            message afficherResultats from gestionnaire to application;

            message demanderNouvelleSimulation from application to gestionnaire;

            message consulterPlanningActualise from gestionnaire to calendrier;

            message transmettrePlanningActualise from calendrier to gestionnaire;

            message demanderNouvellesPrevisions from gestionnaire to meteo;

            message transmettreNouvellesPrevisions from meteo to gestionnaire;

            message consulterNouvelEtatCharge from gestionnaire to batterie;

            message transmettreNouvelEtatCharge from batterie to gestionnaire;

            message recalculerConsequences from gestionnaire to simulation;

            message transmettreNouveauxResultats from simulation to gestionnaire;

            message afficherNouveauxResultats from gestionnaire to application;
        }
    }
}
