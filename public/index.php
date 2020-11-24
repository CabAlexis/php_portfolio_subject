<?php if (!@include_once('../vendor/autoload.php')) echo "You must install package to start app.";
/**
 * AFFICHAGE   
 */
if (!empty($_GET['page'])) {
    $page = trim($_GET['page']);
} else {
    $page = 'presentation';
}
$templateName = '';

if ($page == 'projets') {
    $templateName = 'projets';
    $activePage = 'projets';
} else if ($page == 'experience') {
    $templateName = 'experience';
    $activePage = 'experience';
} else if ($page == 'presentation') {

    $templateName = 'presentation';
    $activePage = 'presentation';
} else {
    $templateName = '404';
}

/**
 *  DATA
 */

require __DIR__ . './../src/inc/db.php';

/* EXPERIENCES */

$sql = '
    SELECT * from experiences
';
$result = $pdoDBConnexion->query($sql);
$expList  = $result->fetchAll(PDO::FETCH_ASSOC);

/* PROJETS */

$sql = '
    SELECT * from portfolio
';
$result = $pdoDBConnexion->query($sql);
$projetsList  = $result->fetchAll(PDO::FETCH_ASSOC);

/* FORMATIONS */

$sql = '
    SELECT * from formations
';
$result = $pdoDBConnexion->query($sql);
$formationsList  = $result->fetchAll(PDO::FETCH_ASSOC);

/* UTILISATEUR */

$sql = '
    SELECT * from user
';
$result = $pdoDBConnexion->query($sql);
$user = $result->fetchAll(PDO::FETCH_ASSOC);

require __DIR__ . '/../src/templates/header.tpl.php';
require __DIR__ . '/../src/templates/' . $templateName . '.tpl.php';
require __DIR__ . '/../src/templates/footer.tpl.php';
