# mailu

mail server and webmail

## run

Save mailu.env.sample as mailu.env and env.sample als .env
Change ´TRAEFIK_ACME_DIR´ to your traefik acme dir.

    $ make prod

Make sure the `traefik` container is running.

Go to [https://mailu.docker.localhost/admin/](https://mailu.docker.localhost/admin/) to open the admin user interface.

    email: admin@docker.localhost
    password: secret

## spam rules

Spam rules can be modified at `${VOLUMES_DIR}/overrides/rspamd/regexp.conf`

## Regelmäßige Bereinigung deaktivierter Benutzer

* Das Skript `purge_user.sh` erzeugt Shell-Befehle für das Löschen deaktivierter Mailu-Benutzer, Maildirs, Roundcube-Daten und Datenbankeinträge.
* Beispielhafter Cron-Eintrag zum Erzeugen und direkten Ausführen der Löschbefehle (wöchentlich Sonntag 03:00 Uhr):
```
0 3 * * 0 cd /opt/mailu && ./scripts/purge_user.sh | sh >> /var/log/mailu/purge_user.log 2>&1
```
* Der Pfad muss an den Installationsort des Mailu-Projekts angepasst werden.

