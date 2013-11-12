$(function(){
	$("#tabs").tabs();

	create_ore_table();
	create_ice_table();
});

function create_ore_table(){
	var lastsel;
	$('#ore').jqGrid({
        url:'php/ajax/data.php',
        datatype: 'json',
        mtype: 'POST',
        postData: {type : '1'},
        colNames:['Photo','Item','Вес','Batch','Tritanium','Pyerite','Mexallon','Isogen','Nocxium','Zydrine','Megacyte','Morphite'],
            colModel :[
                {name:'photo', index:'photo', width:75, align:'center'},
                {name:'item', index:'item', width:185, align:'left'},
                {name:'weight', index:'weight', width:60, align:'right',editable: true},
                {name:'batch', index:'batch', width:60, align:'right',editable: true},
                {name:'tritanium', index:'tritanium', width:60, align:'right',editable: true},
                {name:'pyerite', index:'pyerite', width:60, align:'right',editable: true},
                {name:'mexallon', index:'mexallon', width:60, align:'right',editable: true},
                {name:'isogen', index:'isogen', width:60, align:'right',editable: true},
                {name:'nocxium', index:'nocxium', width:60, align:'right',editable: true},
                {name:'zydrine', index:'zydrine', width:60, align:'right',editable: true},
                {name:'megacyte', index:'megacyte', width:60, align:'right',editable: true},
                {name:'morphite', index:'morphite', width:60, align:'right',editable: true},
                ],
            rowNum:50,
            rowList:[50,100,200],
            pager: $('#pager_ore'),
            sortname: 'id',
            sortorder: "asc",
            height: 'auto',
            width: 960,
            viewrecords: true,
            onSelectRow: function(id){ 
            	if(id && id!==lastsel){ 
            		$('#ore').jqGrid('restoreRow',lastsel); 
            		$('#ore').jqGrid('editRow',id,true); 
            		lastsel=id; 
            	} 
            },
            editurl : 'php/ajax/data.php?type=1'
        });
   
        $('#ore').jqGrid('navGrid','#pager_ore',{edit:false,add:false,del:false,search:false},{closeAfterEdit:true},{closeAfterAdd:true},{closeAfterDel:true},{multipleSearch:false,multipleGroup:false,closeAfterSearch:false},{});
}

function create_ice_table(){
	var lastsel2;
	$('#ice').jqGrid({
        url:'php/ajax/data.php',
        datatype: 'json',
        mtype: 'POST',
        postData: {type : '2'},
        colNames:['Photo',
        		  'Item',
                  'Wight',
        		  'Batch',
        		  'Heavy Water',
        		  'Liquid Ozone',
        		  'Helium Isotopes',
        		  'Strontium Clathrates',
        		  'Hydrogen Isotopes',
        		  'Oxygen Isotopes',
        		  'Nitrogen Isotopes'
        ],
        colModel :[
            {name:'photo', index:'photo', width:90, align:'center'},
            {name:'item', index:'item', width:200, align:'left'},
            {name:'weight', index:'weight', width:75, align:'right',editable: true},
            {name:'batch', index:'batch', width:75, align:'right',editable: true},
            {name:'HeavyWater', index:'Heavy Water', width:85, align:'right',editable: true},
            {name:'LiquidOzone', index:'Liquid Ozone', width:85, align:'right',editable: true},
            {name:'HeliumIsotopes', index:'Helium Isotopes', width:85, align:'right',editable: true},
            {name:'StrontiumClathrates', index:'Strontium Clathrates', width:85, align:'right',editable: true},
            {name:'HydrogenIsotopes', index:'Hydrogen Isotopes', width:85, align:'right',editable: true},
            {name:'OxygenIsotopes', index:'Oxygen Isotopes', width:85, align:'right',editable: true},
            {name:'NitrogenIsotopes', index:'Nitrogen Isotopes', width:85, align:'right',editable: true},
        ],
            rowNum:50,
            rowList:[50,100,200],
            pager: $('#pager_ice'),
            sortname: 'id',
            sortorder: "asc",
            height: 'auto',
            width: 960,
            viewrecords: true,
            onSelectRow: function(id){ 
            	if(id && id!==lastsel2){
            		$('#ice').jqGrid('restoreRow',lastsel2); 
            		$('#ice').jqGrid('saveRow',lastsel2);
            		$('#ice').jqGrid('editRow',id,true); 
            		lastsel2=id; 
            	} 
            },
            editurl : 'php/ajax/data.php?type=2'
        });
   
        $('#ice').jqGrid('navGrid','#pager_ice',{edit:false,add:false,del:false,search:false},{closeAfterEdit:true},{closeAfterAdd:true},{closeAfterDel:true},{multipleSearch:false,multipleGroup:false,closeAfterSearch:false},{});
}