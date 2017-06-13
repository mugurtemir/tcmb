<?php
include("ayar.php");
?>
<html>
<head>
<title> | Grafik | </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<table class="table table-bordered" style="width:1300px; margin-top:50px;" align="center" >
<tr>
<td>
<center><label>Seçiminizi Yapınız</label></center>

<?php

echo "
<form action='' method='get'>
<table>
<tr> 
<td> Kur Cinsi </td>
<td>
<select name='kur' class='form-control' >
<option>Seçim Yapınız</option>
<option value='japon_yeni'> JAPON YENİ </option>
<option value='pakistan_rupisi'> PAKİSTAN RUPİSİ </option>
</select>
</td>
</tr>
<tr>
";

//----------> Baslangıc ve bitis tarihlerini ayarlama islemini yaptırıyoruz

$table = $db->query("select * from subat where doviz_turu='JAPON YENİ'", PDO::FETCH_ASSOC);
echo "
	<td>Başlangıc Tarihini Seçiniz : </td>
	<td><select name='ilk_tarih' class='form-control'>
	<option>Seçim Yapınız</option>
	";

	foreach($table as $row){
		$tarih= $row['tarih'];
		echo "<option value='$tarih'> $tarih </option>";
	}	
echo "</select></td></tr><tr>";


$table = $db->query("select * from subat where doviz_turu='JAPON YENİ'", PDO::FETCH_ASSOC);
echo "
	<td>Son Tarihini Seçiniz :</td>
	<td><select name='son_tarih' class='form-control'>
	<option>Seçim Yapınız</option>
	";
	foreach($table as $row){
		$tarih = $row['tarih'];
		echo "<option value='$tarih'> $tarih </option>";
	}
	
echo "
	</select></td></tr><tr>
	<td colspan='2' align='right'>
	<input type='submit' name='gonder' value='Getir' class='btn btn-default'>
	</td></tr>
	</table>
	</form>
	<br>
	";

//-----------------------------------------------------------------------------------------


//--*** *** ** Japon Yeni Kur'u seçildiğinde yapılacak islemler ***** **** *** \\

if(@$_GET['kur']=="japon_yeni"){
	
$ilk_tarih	=	$_GET['ilk_tarih'];
$son_tarih	=	$_GET['son_tarih'];
$sorgu	=  $db->query("select * FROM subat WHERE date_format( tarih, '%Y-%m-%d' )>= '$ilk_tarih' and date_format( tarih, '%Y-%m-%d' ) <= '$son_tarih' and doviz_turu='JAPON YENİ'");

echo "
<table class='table table-bordered' style='font-size:12px;'>
<tr>
<td><b> Tarih </b></td>
<td><b> Döviz Cinsi </b></td>
<td><b> Alış Kuru</b></td>
<td><b> Satış Kuru</b></td>
</tr>
<tr>
";

$say=0;
foreach($sorgu as $jpn){

	$jpn_tarih			=	$jpn['tarih'];
	$jpn_dovizTuru		=	$jpn['doviz_turu'];
	@$jpn_alis_kuru[]	=	$jpn['alis_kuru'];
	@$jpn_satis_kuru[]	=	$jpn['satis_kuru'];
	
	
	echo "
	<td> $jpn_tarih </td>
	<td> $jpn_dovizTuru</td>
	<td> $jpn_alis_kuru[$say]</td>
	<td> $jpn_satis_kuru[$say] </td>
	</tr>
	";
	$say++;
	}
	
	echo "</table>";

?>
	
</td>		
<td style="width:900px; height: 500px;">
<center><label>GRAFİK 
<br> 
<font color='#3383BA'>Mavi: Alış Kuru </font>, 
<font color='#FF800F'>Turuncu: Satış Kuru </font></label></center>
<div id="myDiv"></div>

	<script>
		var trace1 = {
		  x: [<?php for($i=1; $i<=$say; $i++){ echo $i. ",";} ?>],
		  y: [<?php for($i=0; $i<=$say-1; $i++){ echo $jpn_alis_kuru[$i].","; }?>],
		  type: 'scatter'
		};

		var trace2 = {
		  x: [<?php for($i=1; $i<=$say; $i++){ echo $i. ",";} ?>],
		  y: [<?php for($i=0; $i<=$say-1; $i++){ echo $jpn_satis_kuru[$i].","; } ?> ], 
		  type: 'scatter'
		};

		var data = [trace1, trace2];
		Plotly.newPlot('myDiv', data);
			
		</script>
	
</td>


<?php 

//--*** *** ** PAKİSTAN RUPİSİ Kur'u seçildiğinde yapılacak islemler ***** **** *** \\

}elseif(@$_GET['kur']=="pakistan_rupisi"){

$ilk_tarih	=	$_GET['ilk_tarih'];
$son_tarih	=	$_GET['son_tarih'];
$sorgu	=  $db->query("select * FROM subat WHERE date_format( tarih, '%Y-%m-%d' )>= '$ilk_tarih' and date_format( tarih, '%Y-%m-%d' ) <= '$son_tarih' and doviz_turu='PAKİSTAN RUPİSİ'");

echo "
<table class='table table-bordered' style='font-size:12px;'>
<tr>
<td><b> Tarih </b></td>
<td><b> Döviz Cinsi </b></td>
<td><b> Alış Kuru</b></td>
<td><b> Satış Kuru</b></td>
</tr>
<tr>
";

$say=0;
foreach($sorgu as $pkr){

	$pkr_tarih			=	$pkr['tarih'];
	$pkr_dovizTuru		=	$pkr['doviz_turu'];
	@$pkr_alis_kuru[]	=	$pkr['alis_kuru'];
	@$pkr_satis_kuru[]	=	$pkr['satis_kuru'];
	
	
	echo "
	<td> $pkr_tarih </td>
	<td> $pkr_dovizTuru</td>
	<td> $pkr_alis_kuru[$say]</td>
	<td> $pkr_satis_kuru[$say] </td>
	</tr>
	";
	$say++;
	}
	
	echo "</table>";
?>

</td>		
<td style="width:900px; height: 500px;">
<center><label>GRAFİK 
<br> 
<font color='#3383BA'>Mavi: Alış Kuru </font>, 
<font color='#FF800F'>Turuncu: Satış Kuru </font></label></center>
<div id="myDiv"></div>

	<script>
		var trace1 = {
		  x: [<?php for($i=1; $i<=$say; $i++){ echo $i. ",";} ?>],
		  y: [<?php for($i=0; $i<=$say-1; $i++){ echo $pkr_alis_kuru[$i].","; }?>],
		  type: 'scatter'
		};

		var trace2 = {
		  x: [<?php for($i=1; $i<=$say; $i++){ echo $i. ",";} ?>],
		  y: [<?php for($i=0; $i<=$say-1; $i++){ echo $pkr_satis_kuru[$i].","; } ?> ], 
		  type: 'scatter'
		};

		var data = [trace1, trace2];
		Plotly.newPlot('myDiv', data);
			
		</script>
	
</td>
	
	
<?php } ?>

</tr>
</table>
</html>
</head>