
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

        connect processeur to memoire;
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

        connect protection to convertisseur;
    }

    part def SystemeGestionEnergetique {

        part traitement: UniteTraitement;
        part communication: ModuleCommunication;
        part utilisateur: InterfaceUtilisateur;
        part maintenance: ModuleMaintenance;
        part alimentation: ModuleAlimentation;

        connect traitement to communication;

        connect traitement to utilisateur;

        connect traitement to maintenance;

        connect alimentation to traitement;

        connect alimentation to communication;

        connect alimentation to utilisateur;

        connect alimentation to maintenance;
    }

    part systeme: SystemeGestionEnergetique;
}
