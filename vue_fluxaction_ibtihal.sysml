
package fluxGererCalendrierPreferences {

    private import ScalarValues::Boolean;

    action gererCalendrierPreferences {

        attribute demandeGestion : Boolean;
        attribute modificationEffectuee : Boolean;
        attribute validation : Boolean;
        attribute annulation : Boolean;

        action afficherCalendrierPreferences;
        action saisirModifications;
        action verifierModifications;
        action enregistrerModifications;
        action afficherConfirmation;

        decide decide0;

        first start;

        succession start if demandeGestion then afficherCalendrierPreferences;

        then saisirModifications;

        then verifierModifications;

        then decide decide0;

        if annulation then done;

        if validation then enregistrerModifications;

        then afficherConfirmation;

        succession afficherConfirmation then done;
    }
}
