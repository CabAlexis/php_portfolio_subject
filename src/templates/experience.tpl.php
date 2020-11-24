<main role="main" class="inner cover">
  <h1 class="cover-heading">Mes expériences</h1>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Poste</th>
        <th scope="col">Entreprise</th>
        <th scope="col">Description</th>
        <th scope="col">Date d'entrée</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($expList as  $id =>  $exp) : ?>
        <tr>
          <td><?= $exp['TITLE'] ?></td>
          <td><?= $exp['COMPANY'] ?></td>
          <td><?= $exp['DESCRIPTION'] ?></td>
          <td><?= $exp['START_DATE'] ?></td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>
</main>