<?php include "partials/header.tpl" ?>

<div class="row">
	<div class="col-sm">
		<h1><?= $user ?>'s Posts</h1>
	</div>
</div>
<div class="row">
	<?php foreach($images as $img) { ?>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
			<div class="card">
				<img src="images/<?= $img->pic ?>" class="card-img-top" alt="<?= $img->title ?>">
				<div class="card-body">
					<h5 class="card-title">@<?= $img->user ?></h5>
					<a href="?p=post&id=<?= $img->id ?>"><?= $img->title ?></a><br/>
					<a class="btn btn-primary btn-sm" href="?p=delete_submit&id=<?= $img->id ?>">Delete</a>
				</div>
			</div>
		</div>
	<?php } ?>
</div>

<?php include "partials/footer.tpl" ?>