
package sequenceGererCalendrierPreferences {

    package parts {

        part def ApplicationMaison;
        part def GestionnaireCalendrier;
        part def Calendrier;
        part def GestionnairePreferences;
        part def BaseDonnees;
    }

    package sequences {

        private import sequenceGererCalendrierPreferences::parts::*;

        occurrence gererCalendrierPreferencesS1 {

            part application: ApplicationMaison;
            part gestionnaire: GestionnaireCalendrier;
            part calendrier: Calendrier;
            part preferences: GestionnairePreferences;
            part baseDonnees: BaseDonnees;

            message demanderConsultation from application to gestionnaire;

            message consulterCalendrier from gestionnaire to calendrier;

            message transmettreCalendrier from calendrier to gestionnaire;

            message consulterPreferences from gestionnaire to preferences;

            message transmettrePreferences from preferences to gestionnaire;

            message afficherCalendrierPreferences from gestionnaire to application;

            message envoyerModifications from application to gestionnaire;

            message verifierModifications from gestionnaire to preferences;

            message transmettreVerification from preferences to gestionnaire;

            message enregistrerModifications from gestionnaire to baseDonnees;

            message confirmerEnregistrement from baseDonnees to gestionnaire;

            message afficherConfirmation from gestionnaire to application;
        }
    }
}
