<?php 
require_once "app/index.php";


$ind = new App\Index();
$rows = $ind->Photos();

?>

<h2>Post Your Photo Here!</h2>
<h2>You Will Have A Lot of Memory Here!</h2>

<div class="grid-music">
	<?php foreach ($rows as $row) { ?>
		<?php if (!empty($row['gambar'])) { ?>

			<div>
				
				<p><?php echo $row['ALB'] . " - " . $row['PST']; ?></p>
				<p>

					<img  src="layout/assets/images/album/<?php echo $row['gambar']; ?>"width="50%">						

					</p>
				</div>

			<?php } ?>
		<?php } ?>
	</div>