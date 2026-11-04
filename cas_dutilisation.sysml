
package maisonIntelligente {

    package parts {

        part def Habitant;
        part def TechnicienMaintenance;

        part def SystemeGestionEnergetique;
        part def PanneauPhotovoltaique;
        part def Batterie;
        part def EquipementConnecte;
        part def Capteur;
        part def ServiceMeteo;
    }

    package useCases {

        private import maisonIntelligente::parts::*;

        actor habitant: Habitant;
        actor technicien: TechnicienMaintenance;

        use case gererCalendrierPreferences {
            ref actor habitant;
        }

        use case gererModeAutomatique {
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
