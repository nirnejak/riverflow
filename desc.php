<?php 
	include ('db/connection.php');

	$newsID = $_REQUEST['newsID'];

	$newsObj = mysqli_query($conn,"SELECT * FROM `news` WHERE `news_id` = $newsID;");

	while ($newsArray = mysqli_fetch_array($newsObj)){
		echo "<section class=\"desc whiteBG\">";
			echo "<section class=\"picture\" style=\"background: url('img/pics/".$newsArray["news_id"]."/1.jpg'); background-size:cover; background-position: center; background-repeat: no-repeat;\">";
				echo "\t<h1>".$newsArray["heading"]."</h1><br>";
			echo "</section><br><br>";
		echo "\t<p>".$newsArray["date"]."</p>";
		echo "\t<p>By : ".$newsArray["author"]."</p><br>";
		echo "\t<p>".$newsArray["newspara1"]."</p><br>";
		echo "\t<p>".$newsArray["newspara2"]."</p><br>";
		echo "\t<p>".$newsArray["newspara3"]."</p><br>";
		echo "\t<p><strong>".$newsArray["source1"]."&nbsp;</strong>&nbsp;&nbsp;<a target=\"_blank\" href=\"".$newsArray["link1"]."\">".$newsArray["link1"]."</a></p>";
		echo "\t<p><strong>".$newsArray["source2"]."&nbsp;</strong>&nbsp;&nbsp;<a target=\"_blank\" href=\"".$newsArray["link2"]."\">".$newsArray["link2"]."</a></p>";
		echo "\t<p><strong>".$newsArray["source3"]."&nbsp;</strong>&nbsp;&nbsp;<a target=\"_blank\" href=\"".$newsArray["link3"]."\">".$newsArray["link3"]."</a></p>";

		echo "\t<p><i>Photograph taken from : ".$newsArray["source1"]."&nbsp;</i></p>";
		echo "</section>";
	}
?>