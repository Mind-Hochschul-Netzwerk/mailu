# mailu

mail server and webmail

## run

Save config.env.sample as config.env and env.sampel als .env
Change ´TRAEFIK_ACME_DIR´ to your traefik acme dir.

    $ docker-compose up -d

Make sure the `traefik` container is running.

Go to [https://mailu.docker.localhost/admin/](https://mailu.docker.localhost/admin/) to open the admin user interface.

    email: admin@mhn.docker.localhost
    password: secret
