FROM node                
# busca a imagem do node no docker hub

WORKDIR /usr/src         
# "entra" nessa pasta dentro da imagem

COPY . .                 
# copia o seu projeto do pc host para a imagem

EXPOSE 5000              
# expõe a porta 5000

RUN npm i                
# baixa as dependencias do node dentro da imagem

CMD ["node", "dist/index.js"]      
# roda isso quando o container estiver ativo