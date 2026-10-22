
package maisonIntelligente {

    package parts {

        /* Acteurs externes */
        part def Habitant;
        part def TechnicienMaintenance;

        /* Systeme et environnement */
        part def SystemeGestionEnergetique;
        part def Batterie;
        part def PanneauPhotovoltaique;
        part def EquipementConnecte;
        part def Capteur;
        part def ServiceMeteo;
    }

    package utilisationHabitants {

        private import maisonIntelligente::parts::*;

        actor habitant: Habitant;

        use case gererCalendrierPreferences {
            ref actor habitant;
        }
 use case gererLeModeAutomatique {
            ref actor habitant;
        }

        use case consulterSituationEnergetique {
            ref actor habitant;
        }

        use case simulerChangementProgramme {
            ref actor habitant;
        }

        use case comparerSolutions {
            ref actor habitant;
        }

        use case validerProposition {
            ref actor habitant;
        }
    }

    package gestionAutomatique {

        action prevoirBesoinsRessources;

        action planifierUsagesEnergetiques;

        action gererBatterie;

        action piloterEquipementsConnectes;

        action adapterPlanningTempsReel;
    }

    package maintenance {

        private import maisonIntelligente::parts::*;

        actor technicien: TechnicienMaintenance;

        use case consulterEtatSysteme {
            ref actor technicien;
        }

        use case diagnostiquerPanne {
            ref actor technicien;
        }

        use case configurerEquipements {
            ref actor technicien;
        }

        use case mettreAJourLogiciel {
            ref actor technicien;
        }

        use case verifierFonctionnement {
            ref actor technicien;
        }
    }
}
