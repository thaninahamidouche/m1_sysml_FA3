package scenarioDonneesIndisponibles {

    occurrence def consulterEtatSysteme {

        part technicien {
            event occurrence demanderConsultation;
            then event occurrence recevoirMessageErreur;
        }

        part interfaceMaintenance {
            event occurrence recevoirDemande;
            then event occurrence transmettreDemande;
            then event occurrence recevoirErreur;
            then event occurrence afficherMessageErreur;
        }

        part systemeGestionEnergetique {
            event occurrence recevoirDemande;
            then event occurrence demanderDonnees;
            then event occurrence recevoirIndisponibilite;
            then event occurrence signalerErreur;
        }

        part capteurs {
            event occurrence recevoirDemande;
            then event occurrence signalerIndisponibilite;
        }

        message demandeConsultation
            from technicien.demanderConsultation
            to interfaceMaintenance.recevoirDemande;

        message transmettreDemande
            from interfaceMaintenance.transmettreDemande
            to systemeGestionEnergetique.recevoirDemande;

        message collecterDonnees
            from systemeGestionEnergetique.demanderDonnees
            to capteurs.recevoirDemande;

        message donneesIndisponibles
            from capteurs.signalerIndisponibilite
            to systemeGestionEnergetique.recevoirIndisponibilite;

        message signalerErreur
            from systemeGestionEnergetique.signalerErreur
            to interfaceMaintenance.recevoirErreur;

        message afficherMessageErreur
            from interfaceMaintenance.afficherMessageErreur
            to technicien.recevoirMessageErreur;
    }
}