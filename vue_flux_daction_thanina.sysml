
package fluxActionsMaisonIntelligente {

    private import ScalarValues::Boolean;

    action comparerSolutions {

        attribute comparaisonDemandee : Boolean;
        attribute besoinRenseigne : Boolean;
        attribute besoinComplet : Boolean;
        attribute solutionRealisable : Boolean;
        attribute modificationDemandee : Boolean;
        attribute conditionsModifiees : Boolean;
        attribute comparaisonTerminee : Boolean;

        action afficherFormulaireBesoin;
        action verifierBesoin;
        action signalerInformationsManquantes;

        action recupererContexte;
        action rechercherSolutions;
        action evaluerFaisabilite;

        action estimerConsommationsCoutsDureesEtBatterie;
        action identifierInterventionsEtHoraires;
        action classerSolutionsSelonPriorites;
        action afficherComparatifEtRecommandation;

        action expliquerAbsenceSolution;

        merge mergeSaisie;
        merge mergeCalcul;
        merge mergeResultats;

        decide decisionBesoin;
        decide decisionFaisabilite;
        decide decisionSuite;

        first start;

        succession first start
            if comparaisonDemandee then mergeSaisie;

        succession first mergeSaisie
            then afficherFormulaireBesoin;

        succession first afficherFormulaireBesoin
            if besoinRenseigne then verifierBesoin;

        succession first verifierBesoin
            then decisionBesoin;

        first decisionBesoin;

        if besoinComplet then mergeCalcul;

        else signalerInformationsManquantes;

        succession first signalerInformationsManquantes
            then mergeSaisie;

        succession first mergeCalcul
            then recupererContexte;

        succession first recupererContexte
            then rechercherSolutions;

        succession first rechercherSolutions
            then evaluerFaisabilite;

        succession first evaluerFaisabilite
            then decisionFaisabilite;

        first decisionFaisabilite;

        if solutionRealisable
            then estimerConsommationsCoutsDureesEtBatterie;

        else expliquerAbsenceSolution;

        succession first estimerConsommationsCoutsDureesEtBatterie
            then identifierInterventionsEtHoraires;

        succession first identifierInterventionsEtHoraires
            then classerSolutionsSelonPriorites;

        succession first classerSolutionsSelonPriorites
            then afficherComparatifEtRecommandation;

        succession first afficherComparatifEtRecommandation
            then mergeResultats;

        succession first expliquerAbsenceSolution
            then mergeResultats;

        succession first mergeResultats
            then decisionSuite;

        first decisionSuite;

        if modificationDemandee
            then mergeSaisie;

        if conditionsModifiees and not modificationDemandee
            then mergeCalcul;

        if comparaisonTerminee and not modificationDemandee and not conditionsModifiees
            then done;
    }
}
