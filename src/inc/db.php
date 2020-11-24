<?php 

$dataSourceName = 'mysql:dbname=php_portfolio_project;host=localhost;charset=UTF8';
$user = 'root';
$password = '';

try {
  $pdoDBConnexion = new PDO(
      $dataSourceName,
      $user,
      $password,
  );
} catch(PDOException $exception) {
  echo 'Connexion échouée : ' . $exception->getMessage();
}