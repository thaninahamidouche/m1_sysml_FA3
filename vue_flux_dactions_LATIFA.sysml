
package fluxConsulterEtatSysteme {

    private import ScalarValues::Boolean;

    action consulterEtatSysteme {

        attribute demandeConsultation : Boolean;
        attribute donneesDisponibles : Boolean;
        attribute donneesIndisponibles : Boolean;

        action afficherInterfaceMaintenance;
        action collecterDonneesSysteme;
        action analyserEtatSysteme;
        action afficherEtatSysteme;
        action afficherMessageIndisponibilite;

        decide decide0;

        first start;

        succession start if demandeConsultation then afficherInterfaceMaintenance;

        then collecterDonneesSysteme;

        then decide decide0;

        if donneesDisponibles then analyserEtatSysteme;

        then afficherEtatSysteme;

        succession afficherEtatSysteme then done;

        if donneesIndisponibles then afficherMessageIndisponibilite;

        succession afficherMessageIndisponibilite then done;
    }
}
