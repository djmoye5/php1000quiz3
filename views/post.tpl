<?php include "partials/header.tpl" ?>

<div class="container">
  <h5 class="card-title"><?= $post->title ?></h5>
    <figure class="figure">
        <img src="images/<?= $post->pic ?>" class="figure-post post-fluid rounded" alt="images/<?= $post->pic ?>">
        <figcaption class="figure-caption text-right"><?= $post->text ?></figcaption>
    </figure>
</div>

<?php include "partials/footer.tpl" ?>