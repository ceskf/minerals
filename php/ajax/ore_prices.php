<?php
$con = new MySQLi("localhost", 'root', '', 'minerals');
$con->query("SET NAMES utf8");
require_once "../../libs/simplehtmldom/simple_html_dom.php";
$data = new stdClass();

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=34&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->tritanium = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->tritanium where name = 'Tritanium'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=40&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->megacyte = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->megacyte where name = 'Megacyte'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=39&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->zydrine = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->zydrine where name = 'Zydrine'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=35&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->pyerite = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->pyerite where name = 'Pyerite'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=38&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->nocxium = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->nocxium where name = 'Nocxium'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=37&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->isogen = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->isogen where name = 'Isogen'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=36&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->mexallon = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->mexallon where name = 'Mexallon'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=11399&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->morphite = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->morphite where name = 'Morphite'");

$con->query("update dates set dt = now() where type_id = 1");
if (isset($_GET['from']))
header('Location: ../../admin.html#tabs-1');
echo json_encode($data);

?>