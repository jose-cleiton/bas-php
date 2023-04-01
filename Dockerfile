FROM php:7.4-apache

# Instala extensões PHP necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia os arquivos do aplicativo para o contêiner
COPY . /var/www/html/

# Habilita mod_rewrite do Apache
RUN a2enmod rewrite

# Define a porta exposta pelo contêiner
EXPOSE 8080

# Define o usuário e grupo do Apache
RUN chown -R www-data:www-data /var/www/html/
