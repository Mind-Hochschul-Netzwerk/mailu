# mailu

Mailu-Setup (docker compose, Traefik davor, SQLite). Konfiguration in `.env` (Pfade/Version/IPs) und `mailu.env` (Mailu-Einstellungen), beide gitignored.

## Änderungen

- Upgrade 2.0 → 2024.06: docker-compose.yml aus dem Setup-Tool übernommen und angepasst (Variablen statt fester Pfade/IPs, certdumper, Traefik-Labels/-Netzwerk, Mail-Ports nur auf `SERVER_IPV4`, clamav als externes Image, Netzwerke `oletools`/`clamav` statt `noinet`). Dovecot-Overrides jetzt unter `${VOLUMES_DIR}/overrides/dovecot`. `AUTH_RATELIMIT` heißt jetzt `AUTH_RATELIMIT_IP`. FTS wechselt von xapian zu flatcurve (Indizes neu aufbauen).
