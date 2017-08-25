$(function(){
	switch(menu){
	case "About Us":
		$('#about').addClass('active');
		break;
	case "All Products":
		$('#listProducts').addClass('active');
		break;
	case "Contact Us":
		$('#contact').addClass('active');
		break;
	default:
		if(menu == "Home")
			break;
		$('#listProducts').addClass('active');
		$('#a_'+menu).addClass('active');
		break;
	}
})

// Code for jquery data table
// create a dataset
var products = [
	['1', 'ABC'],
	['2', 'BCD'],
	['3', 'DEF'],
	['4', 'EFG'],
	['5', 'FGH'],
	['6', 'GHI'],
	['7', 'HIJ'],
	['8', 'IJK']
];

var $table = $('#productListTable');
// execute the below code only wher we have this table 
if($table.length){
	//console.log('Inside the table')
	
	$table.DataTable({
		lengthMenu : [[3, 5, 10, -1], ['3 Records', '5 Records', '10 Records', 'All']],
		pageLength : 5,
		data: products
	});
}