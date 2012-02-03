//= require jquery-1.4.2.min
//= require jquery-ui-1.8.7.custom.min
//= require jquery.tools.min
//= require jquery.colorbox-min
//= require jquery.rating
//= require rails
//= require flowplayer-3.2.6.min
//= require_tree .
//= require xiaopan_menu_jquery1.3
//= require xiaopan_new
//= require photoshow

function setTab(m,n){
  var menu=document.getElementById("tab"+m).getElementsByTagName("li");
  var showdiv=document.getElementById("tablist"+m).getElementsByTagName("div");
  for(i=0;i<menu.length;i++)
  {
     menu[i].className=i==n?"now":"";
     showdiv[i].style.display=i==n?"block":"none";
  }
}
