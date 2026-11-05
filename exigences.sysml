
package maisonIntelligente {

    package requirements {

        requirement gererCalendrierPreferences specializes fonctions {
            doc /* l'habitant doit pouvoir gerer son calendrier et ses preferences energetiques */
        }

        requirement gererModeAutomatique specializes fonctions {
            doc /* l'habitant doit pouvoir activer ou desactiver le mode automatique */
        }

        requirement consulterSituationEnergetique specializes fonctions {
            doc /* l'habitant doit pouvoir consulter la consommation, la production solaire et l'etat de la batterie */
        }

        requirement simulerChangementProgramme specializes fonctions {
            doc /* l'habitant doit pouvoir simuler les consequences energetiques d'un changement de programme */
        }

        requirement comparerSolutions specializes fonctions {
            doc /* l'habitant doit pouvoir comparer plusieurs solutions pour satisfaire un meme besoin */
        }

        requirement validerProposition specializes fonctions {
            doc /* l'habitant doit pouvoir valider une proposition energetique */
        }

        requirement prevoirBesoinsRessources specializes gestionEnergetique {
            doc /* le systeme doit prevoir les besoins et les ressources energetiques disponibles */
        }

        requirement planifierUsagesEnergetiques specializes gestionEnergetique {
            doc /* le systeme doit planifier les usages energetiques du logement */
        }

        requirement gererBatterie specializes gestionEnergetique {
            doc /* le systeme doit gerer la charge et la decharge de la batterie */
        }

        requirement piloterEquipementsConnectes specializes gestionEnergetique {
            doc /* le systeme doit piloter les equipements connectes */
        }

        requirement adapterPlanningTempsReel specializes gestionEnergetique {
            doc /* le systeme doit adapter le planning en fonction des donnees recues en temps reel */
        }

        requirement consulterEtatSysteme specializes maintenance {
            doc /* le technicien doit pouvoir consulter l'etat du systeme */
        }

        requirement diagnostiquerPanne specializes maintenance {
            doc /* le technicien doit pouvoir diagnostiquer une panne */
        }

        requirement configurerEquipements specializes maintenance {
            doc /* le technicien doit pouvoir configurer les equipements connectes */
        }

        requirement mettreAJourLogiciel specializes maintenance {
            doc /* le technicien doit pouvoir mettre a jour le logiciel */
        }

        requirement verifierFonctionnement specializes maintenance {
            doc /* le technicien doit pouvoir verifier le fonctionnement apres une intervention */
        }

        requirement fonctions specializes specificationsMaison {
            doc /* le systeme doit permettre aux habitants de gerer leurs besoins energetiques */
        }

        requirement gestionEnergetique specializes specificationsMaison {
            doc /* le systeme doit assurer la gestion energetique automatique du logement */
        }

        requirement maintenance specializes specificationsMaison {
            doc /* le systeme doit permettre les operations de maintenance */
        }

        requirement specificationsMaison {
            doc /* le systeme doit assurer la gestion intelligente de l'energie du logement */
        }
    }
}
