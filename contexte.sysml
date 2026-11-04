
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

        connect habitants to systemeGestionEnergetique;

        connect technicienMaintenance to systemeGestionEnergetique;

        connect panneauxPhotovoltaiques to systemeGestionEnergetique;

        connect batterie to systemeGestionEnergetique;

        connect equipementsConnectes to systemeGestionEnergetique;

        connect capteurs to systemeGestionEnergetique;

        connect serviceMeteo to systemeGestionEnergetique;

        connect reseauElectrique to systemeGestionEnergetique;
    }
}
