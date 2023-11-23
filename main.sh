# load enviroment variables.sh
dotenv () {
  set -a
  [ -f .env ] && . .env
  set +a
}

dotenv

echo $POSTGRES_URL

docker compose up