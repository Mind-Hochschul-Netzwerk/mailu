#!/bin/bash

while IFS="," read -r user password; do
  docker compose exec -itT admin flask mailu user "$user" mind-hochschul-netzwerk.de "$password"
done < users.csv
