
package matriceAllocationMaison {

    private import vueGeneraleMaisonIntelligente::*;

    part traitement: UniteTraitement;
    part communication: ModuleCommunication;
    part utilisateur: InterfaceUtilisateur;
    part maintenance: ModuleMaintenance;
    part alimentation: ModuleAlimentation;

    action gererCalendrierPreferences;
    action gererModeAutomatique;
    action consulterSituationEnergetique;
    action simulerChangementProgramme;
    action comparerSolutions;
    action validerProposition;

    action prevoirBesoinsRessources;
    action planifierUsagesEnergetiques;
    action gererBatterie;
    action piloterEquipementsConnectes;
    action adapterPlanningTempsReel;

    action consulterEtatSysteme;
    action diagnostiquerPanne;
    action configurerEquipements;
    action mettreAJourLogiciel;
    action verifierFonctionnement;

    allocate gererCalendrierPreferences to utilisateur;
    allocate gererCalendrierPreferences to traitement;

    allocate gererModeAutomatique to utilisateur;
    allocate gererModeAutomatique to traitement;

    allocate consulterSituationEnergetique to utilisateur;
    allocate consulterSituationEnergetique to communication;

    allocate simulerChangementProgramme to traitement;
    allocate simulerChangementProgramme to utilisateur;

    allocate comparerSolutions to traitement;
    allocate comparerSolutions to utilisateur;

    allocate validerProposition to utilisateur;
    allocate validerProposition to traitement;

    allocate prevoirBesoinsRessources to traitement;
    allocate prevoirBesoinsRessources to communication;

    allocate planifierUsagesEnergetiques to traitement;

    allocate gererBatterie to traitement;
    allocate gererBatterie to communication;

    allocate piloterEquipementsConnectes to traitement;
    allocate piloterEquipementsConnectes to communication;

    allocate adapterPlanningTempsReel to traitement;
    allocate adapterPlanningTempsReel to communication;

    allocate consulterEtatSysteme to maintenance;
    allocate consulterEtatSysteme to communication;

    allocate diagnostiquerPanne to maintenance;
    allocate diagnostiquerPanne to traitement;

    allocate configurerEquipements to maintenance;
    allocate configurerEquipements to communication;

    allocate mettreAJourLogiciel to maintenance;
    allocate mettreAJourLogiciel to traitement;

    allocate verifierFonctionnement to maintenance;
    allocate verifierFonctionnement to traitement;
}
