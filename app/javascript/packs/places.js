$(document).ready(function(){
  var lat = '';
  var lon = '';

  function geoFindMe(){
    function success(position){
      const latitude  = position.coords.latitude;
      const longitude = position.coords.longitude;
      lat = `${latitude}`;
      lon = `${longitude}`;
    }
    function error(){
      status.textContent = 'Unable to retrieve your location';
    }
    if(!navigator.geolocation){
      alert('Geolocation is not supported by your browser');
    }else{
      navigator.geolocation.getCurrentPosition(success, error);
    }
  }
  $("#rollcall").click(function(){
    rollcallData = {
      place:{
        lat: lat,
        lon: lon,
        ip: gon.ip
      }
    };
    if(lat == ''&& lon == ''){
        $.confirm({
        title: false,
        offsetTop: 20,
        columnClass: "col-md-6 col-md-offset-3 popup-rollcall",
        content: 'You should turn on GPS!',
        closeIcon: true,
        buttons: {
          Cancel:{
            btnClass: "btn-red",
            action: function(){
              alert('Roll call failed !');
            }
          },
          Confirm: {
            btnClass: "btn-blue",
            action: function(){
              geoFindMe();
              alert('Turn on GPS success. Please Roll call again !');
            }
          },
        }
      });
    }else{
      return $.ajax({
        type: "POST",
        url: "/places",
        data: rollcallData,
      }).done(function (response){
        alert("Roll call susccess.");
        location.reload();
      }).fail(function(response){
      });
    }
  })
});
