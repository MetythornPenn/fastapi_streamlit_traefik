

build:
	docker compose -f "docker-compose.traefik.yml" up -d --build

down:
	docker compose -f docker-compose.traefik.yml down

prod:
	docker compose up -d --build 

logs:
	docker compose -f docker-compose.traefik.yml logs -f

network:
	docker network create traefik-public

rsync:
	rsync -a ./* root@khmerllm.site:/root/fastapi-streamlit-traefik-proxy