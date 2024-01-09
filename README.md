Página HTML para exemplificar o uso de containers e k8s.

# Teste Client Local
Abrir página HTML no browser:
    file:///<caminho-projeto>/app-client/index.html

# Execução via container Docker
`docker build -t k8s-example-client -f Dockerfile .` - cria imagem com NGINX v1.25.3 baseada no Linux Alpine Slim, além do fonte do projeto.

`docker run -d -p 4000:80 --name k8s-example-container-client k8s-example-client` - cria container a partir da imagem gerada, executando o servidor de aplicação NGINX.

`docker network create k8s-example-network-app` - cria network para comunicação entre client e server.

`docker network connect k8s-example-network-app k8s-example-container-client` - adiciona container server à network criada.

# Execução via Docker Compose
`docker-compose up --build -d` - cria todos os containers, networks, volumes, etc. da app client.

# Teste Client no container Docker
http://localhost:4000/
