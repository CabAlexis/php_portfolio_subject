<main role="main" class="inner cover">
  <h1 class="cover-heading">Mes projets</h1>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Titre</th>
        <th scope="col">Date de créaion</th>
        <th scope="col">Description</th>
        <th scope="col">URL</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($projetsList as  $id =>  $proj) : ?>
        <tr>
          <td><?= $proj['TITLE'] ?></td>
          <td><?= $proj['CREATION_DATE'] ?></td>
          <td><?= $proj['DESCRIPTION'] ?></td>
          <td><?= $proj['URL'] ?></td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>
</main>