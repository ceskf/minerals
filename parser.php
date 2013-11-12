<?php
require_once "libs/simplehtmldom/simple_html_dom.php";
$link = new MySQLi("localhost", 'root', '', 'minerals');
$link->query('SET NAMES utf8'); 

//$html = file_get_html('http://www.eve-cost.eu/refining/ice');

/*$d = $html->find("div[class=scrolling-minerals] img");

foreach ($d as $img){
	echo $img->attr['title'].$img->attr['src']."<br>";
	$sql = "insert into fields values(null,?,2)";
	$stmt = $link->prepare($sql);
	$stmt->bind_param('s', $img->attr['title']); 
	$stmt->execute();
	$id = $link->insert_id;
	copy($img->attr['src'],"data/fields/ice/".$img->attr['title'].".png");
}
$d = $html->find("table[class=default-table] tr[class=ore-row] img");
foreach ($d as $img){
	$sql = "insert into items values(null,?,null,2)";
	$stmt = $link->prepare($sql);
	$stmt->bind_param('s', $img->attr['title']); 
	$stmt->execute();
	$id = $link->insert_id;
	copy($img->attr['src'],"data/items/".$img->attr['title'].".png");
}
echo count($d);*/

$sql = "select * from fields where type_id = 2";
$res = $link->query($sql);
while ($row = $res->fetch_object()){
	$sql = "select * from items where type_id = 2";
	$res2 = $link->query($sql);
	while ($row2 = $res2->fetch_object()){
		$sql = "insert into data values(null,?,?,0)";
		$stmt = $link->prepare($sql);
		$stmt->bind_param('ii', $row2->id, $row->id); 
		$stmt->execute();
	}
}
?>