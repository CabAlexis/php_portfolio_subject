<?php if (!@include_once('../vendor/autoload.php')) echo "You must install package to start app.";

if (!empty($_GET['page'])) {
    $page = trim($_GET['page']);
}
else {
    $page = 'presentation';
}
$templateName = '';

if ($page == 'projets') {
    $templateName = 'projets';
    $activePage = 'projets';
}
else if ($page == 'experience') {
    $templateName = 'experience';
    $activePage = 'experience';
}
else if ($page == 'presentation') {

    $templateName = 'presentation';
    $activePage = 'presentation';
}
else {
    $templateName = '404';
}
require __DIR__.'/../src/templates/header.tpl.php';
require __DIR__.'/../src/templates/'.$templateName.'.tpl.php';
require __DIR__.'/../src/templates/footer.tpl.php';