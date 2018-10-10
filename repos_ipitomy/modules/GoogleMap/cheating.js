// dnguyen@boruapps.com 01142014 task_id=18050 - begin
function getGeoCodes(address, id, url){
    jQuery.ajax({
        type: "GET",
        url: "http://maps.google.com/maps/api/geocode/json",
        data: {
            address: address,
            sensor: "true"
        },
        dataType: "json",
        success: function(data){
            if(data.status== "OK"){
                var lat= data.results[0].geometry.location.lat;
                var lng= data.results[0].geometry.location.lng;
                if(lat&& lng){
                    jQuery.ajax({
                        type: "GET",
                        url: "modules/GoogleMap/cheating.php",
                        data: {
                            id: id,
                            lat: lat,
                            lng: lng
                        },
                        success: function(data){
                            if(url){
                                // window.open(url, "_blank");
                            }
                        }
                    });
                }
            }
            else{
                // alert("Non-existent address!");
            }
        }
    });
}
// dnguyen@boruapps.com 01142014 task_id=18050 - end
