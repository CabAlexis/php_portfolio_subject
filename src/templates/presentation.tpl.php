<main role="main" class="inner cover">
  <h1 class="title">Présentation</h1>
  <img class="photo" src="assets/img/Photoprofilfumée.jpg" alt="Photo de moi">
  <?php foreach ($user as  $id =>  $userData) : ?>
    <p class="intro"> <?= $userData['DESCRIPTION'] ?></p>
  <?php endforeach; ?>

  <h2 class="title">Mes formations</h2>
  <div class="forma">
    <div class="leftbox">
      <?php foreach ($formationsList as  $id =>  $forma) : ?>
        <div>
          <p class="small-title">Poste :</p>
          <p class="small-title">Structure :</p>
          <p class="small-title">Diplome :</p>
          <p class="small-title">Date d'entrée :</p>
          <p class="small-title">Date de sortie :</p>
        </div>
        <div>
          <p><?= $forma['TITLE'] ?></p>
          <p> <?= $forma['SCHOOL'] ?></p>
          <p> <?= $forma['GRADUATE'] ?></p>
          <p> <?= $forma['START_DATE'] ?></p>
          <p> <?= $forma['END_DATE'] ?></p>
        </div>
    </div>
    <div class="rightbox">
      <p class="small-title">Description :</p>
      <p><?= $forma['DESCRIPTION'] ?></p>
    <?php endforeach; ?>
    </div>
  </div>
</main>