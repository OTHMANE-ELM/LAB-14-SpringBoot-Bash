package ma.fstg.web;

import java.util.Map;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Contrôleur REST responsable de la gestion des requêtes HTTP.
 * Ce contrôleur fournit les endpoints nécessaires pour communiquer
 * avec l'application et vérifier son état de fonctionnement.
 */
@RestController
public class HomeController {

    /**
     * Endpoint racine de l'application.
     * Retourne une réponse texte pour confirmer que le serveur est actif
     * et prêt à traiter les demandes des clients.
     *
     * @return Un message de confirmation en français
     */
    @GetMapping("/")
    public String home() {
        return "Le serveur applicatif fonctionne correctement et écoute sur le port 8085";
    }

    /**
     * Endpoint permettant de vérifier l'état de santé de l'application.
     * Cet endpoint est régulièrement consulté par les scripts de surveillance
     * pour s'assurer que l'application est opérationnelle et réactive.
     *
     * @return Un objet contenant le statut actuel de l'application
     */
    @GetMapping("/actuator/health")
    public Map<String, String> health() {
        return Map.of("status", "OPERATIONNEL");
    }
}
