
package maisonIntelligente {

    package requirements {

        requirement specificationsMaison;

        requirement fonctionsHabitants specializes specificationsMaison;

        requirement gestionEnergetique specializes specificationsMaison;

        requirement maintenance specializes specificationsMaison;

        requirement gererCalendrierPreferences specializes fonctionsHabitants;

        requirement gererModeAutomatique specializes fonctionsHabitants;

        requirement consulterSituationEnergetique specializes fonctionsHabitants;

        requirement simulerChangementProgramme specializes fonctionsHabitants;

        requirement comparerSolutions specializes fonctionsHabitants;

        requirement validerProposition specializes fonctionsHabitants;

        requirement prevoirBesoinsRessources specializes gestionEnergetique;

        requirement planifierUsagesEnergetiques specializes gestionEnergetique;

        requirement gererBatterie specializes gestionEnergetique;

        requirement piloterEquipementsConnectes specializes gestionEnergetique;

        requirement adapterPlanningTempsReel specializes gestionEnergetique;

        requirement consulterEtatSysteme specializes maintenance;

        requirement diagnostiquerPanne specializes maintenance;

        requirement configurerEquipements specializes maintenance;

        requirement mettreAJourLogiciel specializes maintenance;

        requirement verifierFonctionnement specializes maintenance;
    }
}
