$(document).ready(function(){
  $('.turn').click(function(){
    var id = $(this).data("id");
    var active = $(this).text();
    if (active == "On"){
      dataEquipment = {
        equipment:{
          active: false
        }
      }
    }else{
      dataEquipment = {
        equipment:{
          active: true
        }
      }
    }
    $.ajax({
        type: 'PATCH',
        url: "/equipment/"+id,
        data: dataEquipment,
        success: function(repsonse) {
          if (active == "On"){
            console.log("Turn off is successfully.")
          }else{
            console.log("Turn on is successfully.")
          }
        },
        error: function(repsonse) {
          console.log("Turn on is fails.")
        }
    })

  })
});
