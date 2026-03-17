.PHONY: update clean codex build

update:
	python3 -m venv .venv
	rm -rf .venv/.gitignore
	./.venv/bin/pip3 install -r backend/requirements.txt
	./.venv/bin/pip3 freeze > backend/requirements-lock.txt

build:
	python3 -m venv .venv
	rm -rf .venv/.gitignore
	./.venv/bin/pip3 install -r backend/requirements-lock.txt

clean:
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete

codex:
	npm install @openai/codex --save-dev
	rm package.json package-lock.json
	npx codex