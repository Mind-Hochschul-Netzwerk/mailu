.env:
	$(error .env is missing)

prod: .env
	@echo "Starting prod Server"
	docker compose -p mailu up -d --force-recreate --remove-orphans
