# Acessar o container e logar no psql para executar select para mostrar o state
docker exec -it postgres_container bash 

# No terminal do container
psql -U psql -d terraform_backend -W

# digitar senha do banco

# select para verificar o state
SELECT id, name, "data" FROM terraform_remote_state.states;

