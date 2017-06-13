<?php
include("ayar.php");
?>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title> | TCMB Kurlar | </title>
<?php
$table	=	$db->query("select count(*) from subat", PDO::FETCH_ASSOC);
$say = $table->fetchColumn();
if($say < 1){ // veri tabanında kayıtlı degilse verileri cekip veri tabanına kaydetmesini saglayalım.
			
echo "
	<form action='' method='post'>
	<p><input type='submit' name='ekle' value='Kurları Kaydet' class='btn btn-primary'></p>
	</form>
	";
	
	for($i=1; $i<=31; $i++){ // subatın tüm günleri için döngü
	$i = ($i <= 9 && $i >= 1 ? '0' : '').$i; // -> veri cektigimiz linkteki tarih kısmında 1-9 arası rakamların önüne veriyi çekebilmek için 0 koyduk. 

	$kurlar =	@simplexml_load_file("http://www.tcmb.gov.tr/kurlar/201702/{$i}022017.xml");

	if($kurlar == true)
	{	
		// tarih islemleri
		$link	= "http://www.tcmb.gov.tr/kurlar/201702/{$i}022017.xml"; 
		$gun	= $i;
		$ay		= substr($link,34,2);
		$yil	= substr($link,30,4);
		$tarih	= $yil."-".$ay."-".$gun;
		
		$toplamparabirimi	=	count($kurlar->Currency)-1;  //para birimlerinin sayısı.-> (dönügüde kullanmak için.)
		
		for($x=0; $x<$toplamparabirimi; $x++){
			$dovizcinsi	=	$kurlar->Currency[$x]->Isim;
			$dovizalis	=	$kurlar->Currency[$x]->ForexBuying;
			$dovizsatis	=	$kurlar->Currency[$x]->ForexSelling;
			
		if($_POST)
			{	
			$ekle = $db->query("insert into subat (id, tarih ,doviz_turu ,alis_kuru, satis_kuru ) values ('null', '$tarih', '$dovizcinsi','$dovizalis', '$dovizsatis')");
			header("Location: 2.php");
			}	
		}	
	}		
}			
}else  // eger veri tabanında kayıtlıysa veri tabanından çekiyoruz.
	{
		echo "
		<h4 align='right'>Veri Tabanından Gelen Veriler</h4>
		<br><br>
		<table border='1' class='table table-bordered' style='font-size:13px;'>
		<tr bgcolor='#3383BA'>
		<td><b><font color='#FFFFFF'> TARİH </font></b></td>
		<td><b><font color='#FFFFFF'> DÖVİZ CİNSİ </font></b></td>
		<td><b><font color='#FFFFFF'> ALIŞ </font></b></td>
		<td><b><font color='#FFFFFF'> SATIŞ </font></b></td>
		</tr>
		<tr>
		";
		
		$kur	=	$db->query("select * from subat", PDO::FETCH_ASSOC);
		foreach($kur as $kurlar ){
			
			$tarih		=	$kurlar['tarih'];
			$doviz_turu	=	$kurlar['doviz_turu'];
			$alis_kuru	=	$kurlar['alis_kuru'];
			$satis_kuru	=	$kurlar['satis_kuru'];
			
		echo "
			<td> $tarih	 </td>
			<td> $doviz_turu</td>
			<td> $alis_kuru </td>
			<td> $satis_kuru</td>
			</tr>
			";	
		}	
		echo "</table>";	
	}
?>	
</head>
</html>