# Imagem do NGINX v1.25.3 baseada on Linux Alpine, numa versão ainda menor, chamada de 'slim'.
FROM nginx:1.25.3-alpine3.18-slim

# Copia a página HTML para o diretório padrão de conteúdo do NGINX.
COPY . /usr/share/nginx/html

# Expõe a porta 80 (permitindo acesso via network ou possibilitando conexão do host caso a porta exposta seja mapeada pelo host).
EXPOSE 80

# Executa o NGINX.
CMD ["nginx", "-g", "daemon off;"]