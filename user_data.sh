#!/bin/bash

# System update
yum -y update

# Installing web-server Apache
yum -y install httpd

# Creation HTML-lending-page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bienvenue dans le Monde DevOps!</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      color: #333;
      text-align: center;
      padding: 50px;
    }
    h1 {
      color: #007bff;
    }
  </style>
</head>
<body>
  <h1>Transformez Votre Entreprise avec l'Expertise DevOps</h1>
  <p>Nos solutions DevOps sont le moteur de votre progrès. Commencez la transformation aujourd'hui!</p>
</body>
</html>
EOF

# Starting a web server
service httpd start

# Enabling the web server in the autoloader
chkconfig httpd on
