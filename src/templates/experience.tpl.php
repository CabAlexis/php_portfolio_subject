<main role="main" class="inner cover">
  <h2 class="title">Mes expériences</h2>
  <div class="forma">
    <div class="leftbox">
      <?php foreach ($expList as  $id =>  $exp) : ?>
        <div>
          <p scope="col">Poste :</p>
          <p scope="col">Entreprise :</p>
          <p scope="col">Date d'entrée :</p>
        </div>
        <div>
          <p><?= $exp['TITLE'] ?></p>
          <p><?= $exp['COMPANY'] ?></p>
          <p><?= $exp['START_DATE'] ?></p>
        </div>
    </div>
    <div class="rightbox">
      <p class="small-title">Description :</p>
      <p><?= $exp['DESCRIPTION'] ?></p>
    </div>
  </div>
<?php endforeach; ?>
</main>