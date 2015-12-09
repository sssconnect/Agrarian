var i;
var menu3 = [
		  {'Sowing':{
                          className:'menu3-custom-item',
			  hoverClassName:'menu3-custom-item-hover',
			  title:'This is the hover title',
			  onclick:function(menuItem,menu) {
                              if( i== 'wheat_id')window.open("wheat_sh.jsp", "_self"); 
                              else if( i== 'rice_id') window.open("rice_sh.jsp", "_self");
                              else if( i== 'maize_id') window.open("maize_sh.jsp", "_self");
                              else if( i== 'soya_id') window.open("soya_sh.jsp", "_self");
                              },
			  icon:'menu_Item.gif',
			  disabled:false
			}
		  },
		  {'Fertilization':{
                          className:'menu3-custom-item',
			  hoverClassName:'menu3-custom-item-hover',
			  title:'This is the hover title',
			  onclick:function(menuItem,menu) {
                              if( i== 'wheat_id')window.open("fertilization_wheat.jsp", "_self"); 
                              else if( i== 'rice_id') window.open("fertilization_rice.jsp", "_self");
                              else if( i== 'maize_id') window.open("fertilization_maize.jsp", "_self");
                              else if( i== 'soya_id') window.open("fertilization_soya.jsp", "_self");
                          },
			  icon:'menu_Item.gif',
			  disabled:false
			}
		  },
		  {'Harvesting':{
                          className:'menu3-custom-item',
			  hoverClassName:'menu3-custom-item-hover',
			  title:'This is the hover title',
			  onclick:function(menuItem,menu) {
                              if( i== 'wheat_id')window.open("harvesting_wheat.jsp", "_self"); 
                              else if( i== 'rice_id') window.open("harvesting_rice.jsp", "_self");
                              else if( i== 'maize_id') window.open("harvesting_maize.jsp", "_self");
                              else if( i== 'soya_id') window.open("harvesting_soya.jsp", "_self");
                          },
			  icon:'menu_Item.gif',
			  disabled:false
			}
		  }
		];
		$(function() {
		  $('.cmenu3').contextMenu(menu3,{theme:'vista'});
		});	
