<header class="masthead mb-auto">
    <div class="inner">
        <?php foreach ($user as  $id =>  $userData) : ?>
            <h3 class="masthead-brand"> 
                <?= $userData['FIRST_NAME'] ?> 
                <?= $userData['LAST_NAME'] ?>
            </h3>
        <?php endforeach; ?>
        <nav class="nav nav-masthead justify-content-center">
            <a class="nav-link <?php if ($activePage == 'presentation') {
                                    echo 'active';
                                }; ?>" href="index.php?page=presentation">Présentation</a>
            <a class="nav-link <?php if ($activePage == 'projets') {
                                    echo 'active';
                                }; ?>" href="index.php?page=projets">Projets</a>
            <a class="nav-link <?php if ($activePage == 'experience') {
                                    echo 'active';
                                }; ?>" href="index.php?page=experience">Expériences</a>
        </nav>
    </div>
</header>