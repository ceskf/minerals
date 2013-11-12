<?php

class data{
    private $con; 
    private $json;
    
    public function __construct() {
        $this->con = new MySQLi("localhost", 'root', '', 'minerals');
        $this->con->query("SET NAMES utf8");
    }
    
    public function spis($post){
        $sort = isset($post['sidx']) ? $post['sidx'] : 'id';
        $ord = isset($post['sord']) ? $post['sord'] : 'asc';
        $page = isset($post['page']) ? $post['page'] : 1;
        $limit = isset($post['rows']) ? $post['rows'] : 50;
        $type = $post['type'];
        $start = $limit*$page - $limit; 
        if($start < 0) 
            $start = 0;             
        if ($post['oper']){
        	$this->oper($post,$_GET['type']);
        	die();
        }
        $ord = $ord." LIMIT ".$start.", ".$limit;
        
        $sql = "select * from items where type_id = $type order by $sort $ord"; 
        $res = $this->con->query($sql);
        while ($row = $res->fetch_object()){ 
        	$sql = "select a.*, c.name from data a inner join fields c on a.field_id = c.id where item_id = $row->id";
        	$res2 = $this->con->query($sql);
        	while ($row2 = $res2->fetch_object()){
        		$row->data[$row2->name] = $row2->value;
        	}
        	$row->img = "data/items/$row->name.png";
            $data[] = $row;
        }
        
        
        $sql = "select count(*) col from items where type_id = $type";
        $res = $this->con->query($sql);
        $row = $res->fetch_object();
        $count = $row->col;
        
        if( $count > 0 && $limit > 0) {
            $total_pages = ceil($count/$limit);
        } else {
            $total_pages = 0;
        }                   
 
        if ($page > $total_pages) $page=$total_pages;     
        
        $response = new stdClass();
        
        $response->page = $page;
        $response->total = $total_pages;
        $response->records = $count;
        
        $i=0;
        if ($data){
            foreach ($data as $row){
                $rand = rand(0, 1000);
                $response->rows[$i]['id']=$row->id;
                if ($type == 1)
                	$response->rows[$i]['cell']=array(
                    	"<img src='".$row->img."'>",
                    	$row->name,
                        $row->weight,
                    	$row->batch,
                    	$row->data['Tritanium'],
                        $row->data['Pyerite'],
                        $row->data['Mexallon'],
                        $row->data['Isogen'],
                        $row->data['Nocxium'], 	
                    	$row->data['Zydrine'],
                    	$row->data['Megacyte'],
                    	$row->data['Morphite'],
                	); 
                else
                	$response->rows[$i]['cell']=array(
                    	"<img src='".$row->img."'>",
                    	$row->name,
                        $row->weight,
                    	$row->batch,
                    	$row->data['Heavy Water'],
                    	$row->data['Liquid Ozone'],
                    	$row->data['Helium Isotopes'],
                    	$row->data['Strontium Clathrates'],
                    	$row->data['Hydrogen Isotopes'],
                    	$row->data['Oxygen Isotopes'],
                    	$row->data['Nitrogen Isotopes']
                    );
                $i++;
            }
        }
        
        echo json_encode($response);
    }

    public function oper($post,$type){
    	$itemid = $post['id'];
    	$sql = "select * from fields where type_id = $type";
    	print_r($fields);
    	$res = $this->con->query($sql);
        while ($row = $res->fetch_object()){
        	if ($type == '1')
        		$val = strtolower($row->name);
        	else if ($type == '2')
        		$val = str_replace(" ","",$row->name);
        	$val = $post[$val];
        	$sql = "update data set value = $val where item_id = $itemid and field_id = $row->id";
        	//echo $sql;
        	$this->con->query($sql);
        	$batch = ($post['batch'] != '') ? $post['batch'] : null;
            $weight = ($post['weight'] != '') ? $post['weight'] : 0;
            $weight = str_replace(",", ".", $weight);
        	$sql = "update items set batch = ?, weight = ? where id = $itemid";
        	$stmt = $this->con->prepare($sql);
			$stmt->bind_param('id', $batch, $weight); 
			$stmt->execute();
        }
    }
}

$o = new data();
$o->spis($_POST);
?>
