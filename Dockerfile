FROM node                
# busca a imagem do node no docker hub

WORKDIR /usr/src         
# "entra" nessa pasta dentro da imagem

COPY . .                 
# copia o seu projeto do pc host para a imagem

EXPOSE 5000              
# expõe a porta 5000

RUN npm i && npm run build              
# baixa as dependencias do node dentro da imagem

CMD ["npm", "start"]      
# roda isso quando o container estiver ativo