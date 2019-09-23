$(document).ready(function(){
  var lat = '';
  var lon = '';
  // get location
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
        console.log(rollcallData);
        alert("Roll call susccess.");
        location.reload();
      }).fail(function(response){
      });
    }
  })
  // ========================================
  function configure(){
   Webcam.set({
    width: 320,
    height: 240,
    image_format: 'jpeg',
    jpeg_quality: 90
   });
   Webcam.attach( '#my_camera' );
  }
  function capture_webcam() {

   Webcam.snap( function(data_uri) {
   // display results in page
   document.getElementById('results').innerHTML =
    '<img id="imageprev" src="'+data_uri+'"/>';
   } );
  }

 function savePic(){
  // Get base64 value from <img id='imageprev'> source
  var base64image = document.getElementById("imageprev").src;
  var d = new Buffer(base64image, 'base64').toString('ascii');
  console.log(d);

  Webcam.upload( base64image, '/places', function(code, text) {
   console.log('Save successfully');
   // console.log(text);
  });

 }

   $("#turnon").click(function(){
     configure();
   });
   $("#capture").click(function(){
     capture_webcam();
   });
   $("#save").click(function(){
     savePic();
   });
});
