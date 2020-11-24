<main role="main" class="inner cover">
  <h1 class="cover-heading">Présentation</h1>
  <p class="lead">Coucou c'est moi ! Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta amet quas assumenda ipsum nulla nobis excepturi quod tempore eaque odit quam quaerat natus voluptate nostrum unde reprehenderit repellat, illo necessitatibus, consequuntur, deleniti nam voluptatum asperiores delectus minus. Quidem temporibus dicta sit perspiciatis atque possimus voluptates.</p>

  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam, minus sit eveniet ducimus saepe impedit vel facere dolorem totam explicabo tempore facilis libero? Assumenda, impedit.</p>

  <h2>Mes formations</h2>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Poste</th>
        <th scope="col">Structure</th>
        <th scope="col">Diplome</th>
        <th scope="col">Date d'entrée</th>
        <th scope="col">Date de sortie</th>
        <th scope="col">Description</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($formationsList as  $id =>  $forma) : ?>
        <tr>
          <td><?= $forma['TITLE'] ?></td>
          <td><?= $forma['SCHOOL'] ?></td>
          <td><?= $forma['GRADUATE'] ?></td>
          <td><?= $forma['START_DATE'] ?></td>
          <td><?= $forma['END_DATE'] ?></td>
          <td><?= $forma['DESCRIPTION'] ?></td>
        </tr>
      <?php endforeach; ?>
    </tbody>
  </table>

</main>