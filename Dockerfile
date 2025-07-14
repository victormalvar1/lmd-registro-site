
# Usa uma imagem com Java e Maven
FROM maven:3.8.5-openjdk-17

# Cria e acessa o diretório do projeto
WORKDIR /app

# Copia tudo do projeto para o container
COPY . .

# Compila o projeto (sem testes)
RUN mvn clean package -DskipTests

# Roda o JAR gerado
CMD ["java", "-jar", "target/lmd-registro-0.0.1-SNAPSHOT.jar"]
