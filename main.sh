# load enviroment variables.sh
dotenv () {
  set -a
  [ -f .env ] && . .env
  set +a
}

dotenv

docker compose up