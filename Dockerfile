FROM node:14-alpine

# Define o diretório de trabalho
WORKDIR /usr/src/app

# Copia o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia todos os arquivos do diretório atual para o diretório de trabalho
COPY . .

# Define a porta em que o servidor Express.js irá escutar
EXPOSE 4343

# Define o comando padrão para iniciar o servidor usando o nodemon
CMD ["npm", "run", "dev"]
