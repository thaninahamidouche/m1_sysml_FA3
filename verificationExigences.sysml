
package verificationMaisonIntelligente {

    requirement gererCalendrierPreferences;
    requirement gererModeAutomatique;
    requirement consulterSituationEnergetique;
    requirement simulerChangementProgramme;
    requirement comparerSolutions;
    requirement validerProposition;

    requirement prevoirBesoinsRessources;
    requirement planifierUsagesEnergetiques;
    requirement gererBatterie;
    requirement piloterEquipementsConnectes;
    requirement adapterPlanningTempsReel;

    requirement consulterEtatSysteme;
    requirement diagnostiquerPanne;
    requirement configurerEquipements;
    requirement mettreAJourLogiciel;
    requirement verifierFonctionnement;


    part uniteTraitement;
    part moduleCommunication;
    part interfaceUtilisateur;
    part moduleMaintenance;


    satisfy gererCalendrierPreferences by interfaceUtilisateur;
    satisfy gererModeAutomatique by uniteTraitement;
    satisfy consulterSituationEnergetique by interfaceUtilisateur;
    satisfy simulerChangementProgramme by uniteTraitement;
    satisfy comparerSolutions by uniteTraitement;
    satisfy validerProposition by interfaceUtilisateur;

    satisfy prevoirBesoinsRessources by uniteTraitement;
    satisfy planifierUsagesEnergetiques by uniteTraitement;
    satisfy gererBatterie by uniteTraitement;
    satisfy piloterEquipementsConnectes by moduleCommunication;
    satisfy adapterPlanningTempsReel by uniteTraitement;

    satisfy consulterEtatSysteme by moduleMaintenance;
    satisfy diagnostiquerPanne by uniteTraitement;
    satisfy configurerEquipements by moduleMaintenance;
    satisfy mettreAJourLogiciel by uniteTraitement;
    satisfy verifierFonctionnement by moduleMaintenance;


    verification def TestCalendrier {
        objective controle {
            verify gererCalendrierPreferences;
        }
    }

    verification def TestModeAutomatique {
        objective controle {
            verify gererModeAutomatique;
        }
    }

    verification def TestSituationEnergetique {
        objective controle {
            verify consulterSituationEnergetique;
        }
    }

    verification def TestSimulationProgramme {
        objective controle {
            verify simulerChangementProgramme;
        }
    }

    verification def TestComparaisonSolutions {
        objective controle {
            verify comparerSolutions;
        }
    }

    verification def TestValidationProposition {
        objective controle {
            verify validerProposition;
        }
    }

    verification def TestPrevisions {
        objective controle {
            verify prevoirBesoinsRessources;
        }
    }

    verification def TestPlanification {
        objective controle {
            verify planifierUsagesEnergetiques;
        }
    }

    verification def TestBatterie {
        objective controle {
            verify gererBatterie;
        }
    }

    verification def TestPilotageEquipements {
        objective controle {
            verify piloterEquipementsConnectes;
        }
    }

    verification def TestAdaptationPlanning {
        objective controle {
            verify adapterPlanningTempsReel;
        }
    }

    verification def TestEtatSysteme {
        objective controle {
            verify consulterEtatSysteme;
        }
    }

    verification def TestDiagnostic {
        objective controle {
            verify diagnostiquerPanne;
        }
    }

    verification def TestConfiguration {
        objective controle {
            verify configurerEquipements;
        }
    }

    verification def TestMiseAJour {
        objective controle {
            verify mettreAJourLogiciel;
        }
    }

    verification def TestFonctionnement {
        objective controle {
            verify verifierFonctionnement;
        }
    }
}
