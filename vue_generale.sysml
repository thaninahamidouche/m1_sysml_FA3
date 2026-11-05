
package vueGeneraleMaisonIntelligente {

    part def Processeur;
    part def Memoire;
    part def InterfaceReseau;
    part def InterfaceEquipements;
    part def TerminalUtilisateur;
    part def InterfaceDiagnostic;
    part def ConvertisseurAlimentation;
    part def ProtectionElectrique;

    part def UniteTraitement {
        part processeur: Processeur;
        part memoire: Memoire;
    }

    part def ModuleCommunication {
        part reseau: InterfaceReseau;
        part equipements: InterfaceEquipements;
    }

    part def InterfaceUtilisateur {
        part terminal: TerminalUtilisateur;
    }

    part def ModuleMaintenance {
        part diagnostic: InterfaceDiagnostic;
    }

    part def ModuleAlimentation {
        part convertisseur: ConvertisseurAlimentation;
        part protection: ProtectionElectrique;
    }

    part def SystemeGestionEnergetique {

        part traitement: UniteTraitement;
        part communication: ModuleCommunication;
        part utilisateur: InterfaceUtilisateur;
        part maintenance: ModuleMaintenance;
        part alimentation: ModuleAlimentation;
    }

    part systeme: SystemeGestionEnergetique;
}
