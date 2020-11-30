<main role="main" class="inner cover">
  <h2 class="title">Mes projets</h2>
  <div class="forma">
    <div class="leftbox">
      <?php foreach ($projetsList as  $id =>  $proj) : ?>
        <div>
          <p scope="col">Titre :</p>
          <p scope="col">Date de créaion :</p>
          <p scope="col">URL :</p>
        </div>
        <div>
          <p><?= $proj['TITLE'] ?></p>
          <p><?= $proj['CREATION_DATE'] ?></p>
          <p><?= $proj['URL'] ?></p>
        </div>
    </div>
    <div class="rightbox">
      <p class="small-title">Description :</p>
      <p><?= $proj['DESCRIPTION'] ?></p>
    <?php endforeach; ?>
    </div>
  </div>
</main>