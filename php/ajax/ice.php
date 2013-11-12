<?php

class ore{
    private $con; 
    private $json;
    
    public function __construct() {
        $this->con = new MySQLi("localhost", 'root', '', 'minerals');
        $this->con->query("SET NAMES utf8");
    }
    
    public function spis(){     
    	$box = $_GET['boxes'];
    	/*if ($box != 'true'){
    		$where = " and box = 'N'";
    	}*/
        $sql = "select * from items where type_id = 2 $where"; 
        $res = $this->con->query($sql);
        $i = 0;
        while ($row = $res->fetch_object()){ 
        	$sql = "select a.*, c.name from data a inner join fields c on a.field_id = c.id where item_id = $row->id";
        	$res2 = $this->con->query($sql);
        	while ($row2 = $res2->fetch_object()){
        		$p = strtolower(str_replace(" ", "_", $row2->name));
        		$row2->value = ($row2->value == 0) ? "" : number_format($row2->value, 0, '', ' ');
                $row->$p = $row2->value;
        	}
        	$row->img = "data/items/$row->name.png";
        	$row->quantity = 0;
        	$row->isk = '0';
        	$row->price = '0';
        	$row->i = $i;
            $ed_in_jet = ($row->weight != 0) ? 27500 / $row->weight : 0;
            $row->ed_in_jet = $ed_in_jet;
            $row->pak_in_jet = ($row->batch != 0) ? $ed_in_jet/$row->batch : 0;
            $row->pak_price = 0;
            $row->jet_price = 0;
            $row->ruda_price = 0;
            $row->weight = $row->weight;
            $data['data'][] = $row;
            $sql = "select * from fields where type_id = 2";
            $res3 = $this->con->query($sql);
            while ($row3 = $res3->fetch_object()){
                $data['prices'][str_replace(" ","_",strtolower($row3->name))] = $row3->price;    
            } 
            $sql = "select dt from dates where type_id = 2";
            $res4 = $this->con->query($sql);
            $row4 = $res4->fetch_object();
            $data['dt_update'] = $row4->dt;
            $i++;
        }
        
        echo json_encode($data);
    }

}

$o = new ore();
$o->spis();
?>
