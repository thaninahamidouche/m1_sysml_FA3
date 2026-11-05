occurrenceccurrence comparerSolutionsS2 {

    part application: ApplicationMaison;
    part gestionnaire: GestionnaireComparaison;

    message demanderComparaison
        from application to gestionnaire;

    message afficherFormulaireBesoin
        from gestionnaire to application;

    message transmettreBesoin
        from application to gestionnaire;

    message verifierBesoin
        from gestionnaire to gestionnaire;

    message signalerInformationsManquantes
        from gestionnaire to application;

    message afficherFormulaireBesoinPourCorrection
        from gestionnaire to application;

    message transmettreBesoinCorrige
        from application to gestionnaire;

    message verifierBesoinCorrige
        from gestionnaire to gestionnaire;
}