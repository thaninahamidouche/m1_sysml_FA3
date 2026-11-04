
package maisonIntelligente {

    part contexte {

        part systemeGestionEnergetique;

        part habitants;

        part technicienMaintenance;

        part panneauxPhotovoltaiques;

        part batterie;

        part equipementsConnectes;

        part capteurs;

        part serviceMeteo;

        part reseauElectrique;

        flow utilise from habitants to systemeGestionEnergetique;

        flow configure from technicienMaintenance to systemeGestionEnergetique;

        flow alimente from reseauElectrique to systemeGestionEnergetique;

        flow transmetProduction from panneauxPhotovoltaiques to systemeGestionEnergetique;

        flow transmetEtatCharge from batterie to systemeGestionEnergetique;

        flow commandeBatterie from systemeGestionEnergetique to batterie;

        flow pilote from systemeGestionEnergetique to equipementsConnectes;

        flow transmetMesures from capteurs to systemeGestionEnergetique;

        flow fournitPrevisions from serviceMeteo to systemeGestionEnergetique;
    }
}
