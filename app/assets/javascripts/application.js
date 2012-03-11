//= require jquery-1.4.2.min
//= require jquery-ui-1.8.7.custom.min
//= require jquery.tools.min
//= require jquery.colorbox-min
//= require jquery.rating
//= require rails
//= require flowplayer-3.2.6.min
//= NOT require_tree .
//= NOT require xiaopan_menu_jquery1.3
//= require xiaopan_new
//= require photoshow


function setTab(m,n){
  var menu=document.getElementById("tab"+m).getElementsByTagName("li");
  var showdiv=document.getElementById("tablist"+m).getElementsByTagName("div");
  for(i=0;i < menu.length;i++)
  {
     menu[i].className=i==n?"now":"";
     showdiv[i].style.display=i==n?"block":"none";
  }
}

/**
 */
DIALOG_DIV_ID = "jquery_dialog"
function open_dialog(url, options ){
  default_options ={ width: 580, modal: true,
    customized_ajax_start: false,
    autoOpen: false, minHeight: 150}
  target = jQuery("#"+ DIALOG_DIV_ID)
  target.html('')
  target.dialog(jQuery.extend(default_options, options) ).dialog("open")
  my_options = default_options
  if(!my_options.customized_ajax_start){
    target.ajaxStart(function(){
      target.html('<img src="/images/tiny_loading.gif" height="24" width="24"/>');
    })
  }
  target.load(url, function(){
    target.dialog("option", "position", "center")
    //move the rsvError from the parent page to dialog
    target.prepend('<div id=\"rsvErrors\"></div>')
    if(jQuery("#body .content #rsvErrors").size() > 0){
      jQuery("#body .content #rsvErrors").remove()
    }
  })
}

/**
  usage:
  1. generic and simple:
   close_dialog()
  2. more specific :
   close_dialog("jquery_dialog")
*/
function close_dialog( div_id ){
  div_id = set_default_value(div_id, DIALOG_DIV_ID)
  target = jQuery("#"+ div_id)
  target.dialog("close")
  // restore the rsvError div to parent page.
  if(jQuery("#body .content #rsvErrors").size()==0){
    jQuery('#body .content').append('<div id=\"rsvErrors\"></div>')
  }
  target.html('')
}

jQuery(document).ready(function(){
  //create a div for jquery's dialog use.
  if(jQuery("#"+DIALOG_DIV_ID).size() == 0){
    jQuery("#footer").before("<div id='"+ DIALOG_DIV_ID + "' style='display:none; ' ></div>")
  }
})

