<?php
	include ('db/connection.php');
?>

<section class="background">
	&nbsp;
</section>

<section style="position: fixed; color: white; padding: 20px; z-index: 0; top: 0; left: 0">
	<h1>River</h1>
	Get Daily Tech News in simple and concise form.
</section>

<section class="aboutUsButton">
	<input type="button" value="About Us" onclick="getPage('aboutUs.html','display')">
</section>

<section class="cardHolder" id="display">
	<?php  
		$newsObj = mysqli_query($conn,"SELECT `news_id`, `heading`, `date` FROM `news`;");
		while ($newsArray = mysqli_fetch_array($newsObj)){
			echo "<section class=\"card whiteBG\" id=\"newsCard".$newsArray["news_id"]."\"onclick=\"showDetail('".$newsArray["news_id"]."');\" style=\"background: url('img/pics/".$newsArray["news_id"]."/1.jpg'); background-size:cover; background-position: center; background-repeat: no-repeat;\">";
			echo "\t<p>".$newsArray["heading"]."</p>";
			echo "\t<p style=\"align-self: flex-end;\">".$newsArray["date"]."</p>";
			echo "</section>";
		}
	?>
</section>

