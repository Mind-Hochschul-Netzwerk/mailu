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
