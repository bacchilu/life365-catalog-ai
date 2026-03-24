.PHONY: update clean codex build dev clean-all docker-up docker-down

update:
	python3 -m venv .venv
	rm -rf .venv/.gitignore
	./.venv/bin/pip3 install -r requirements.txt
	./.venv/bin/pip3 freeze > requirements-lock.txt

build:
	python3 -m venv .venv
	rm -rf .venv/.gitignore
	./.venv/bin/pip3 install -r requirements-lock.txt

clean:
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete

clean-all:
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete
	rm -rf .venv

codex:
	npm install @openai/codex --save-dev
	rm package.json package-lock.json
	npx codex

dev:
	set -a; . ./.env.example; set +a; .venv/bin/uvicorn app.main:app --reload

docker-up:
	docker compose up

docker-down:
	docker compose down -v
	docker image prune -a