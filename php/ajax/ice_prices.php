<?php
$con = new MySQLi("localhost", 'root', '', 'minerals');
$con->query("SET NAMES utf8");
require_once "../../libs/simplehtmldom/simple_html_dom.php";
$data = new stdClass();

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=16272&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->heavy_water = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->heavy_water where name = 'Heavy Water'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=16273&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->liquid_ozone = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->liquid_ozone where name = 'Liquid Ozone'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=16274&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->helium_isotopes = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->helium_isotopes where name = 'Helium Isotopes'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=16275&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->strontium_clathrates = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->strontium_clathrates where name = 'Strontium Clathrates'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=17889&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->hydrogen_isotopes = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->hydrogen_isotopes where name = 'Hydrogen Isotopes'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=17887&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->oxygen_isotopes = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->oxygen_isotopes where name = 'Oxygen Isotopes'");

$result = file_get_contents('http://eve-central.com/api/marketstat/json?typeid=17888&regionlimit=10000001%2C10000002%2C10000016%2C10000020%2C10000028%2C10000030%2C10000032%2C10000033%2C10000043%2C10000049%2C10000037%2C10000038%2C10000036%2C10000052%2C10000064%2C10000065%2C10000067%2C10000068%2C10000054%2C10000042%2C10000044%2C10000048%2C');
$json = json_decode($result);
$data->nitrogen_isotopes = number_format((float)$json[0]->buy->fivePercent, 2, '.', '');
$con->query("update fields set price = $data->nitrogen_isotopes where name = 'Nitrogen Isotopes'");

$con->query("update dates set dt = now() where type_id = 2");
if (isset($_GET['from']))
header('Location: ../../admin.html#tabs-2');
echo json_encode($data);
?>