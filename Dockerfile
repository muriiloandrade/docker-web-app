# Baixando a imagem do node
FROM node:lts-alpine

# Definindo uma variável de ambiente para diminuir caminhos
ENV HOME="/home/app"

#Criando o diretório do app
WORKDIR ${HOME}/docker-node

# Copiando os package*.json para dentro da imagem
COPY package*.json ./

# Instalando as dependências
RUN npm install

# Copiando o código para dentro do container
COPY server.js .

# Expondo a porta usada pelo servidor
EXPOSE 8080

# Comando que roda a aplicação
CMD [ "npm", "start" ]