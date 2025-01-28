virtualenv:
    python3 -m venv .venv

install:
    .venv/bin/pip install -r requirements.txt

clean:
    docker compose down --remove-orphans
    rm -rf .venv
    rm -rf var/postgres