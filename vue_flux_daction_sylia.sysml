
package fluxActionsMaisonIntelligente {

    private import ScalarValues::Boolean;

    action simulerChangementProgramme {

        attribute demandeSimulation : Boolean;
        attribute annulation : Boolean;
        attribute validation : Boolean;
        attribute nouvelleSimulation : Boolean;

        action afficherFormulaireModification;
        action recupererDonneesEnergetiques;
        action calculerConsequencesEnergetiques;
        action afficherResultatsSimulation;
        action appliquerModification;

        merge merge0;
        decide decide0;

        first start;

        succession start if demandeSimulation then merge0;

        then afficherFormulaireModification;

        then recupererDonneesEnergetiques;

        then calculerConsequencesEnergetiques;

        then afficherResultatsSimulation;

        then decide decide0;

        if annulation then done;

        if validation then appliquerModification;

        if nouvelleSimulation then merge0;

        succession appliquerModification then done;
    }
}
