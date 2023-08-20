let veh;

$(document).on('click', '.garage-vehicle', function(e){
    e.preventDefault();

    $(".garage-homescreen").animate({
        right: 30+"vh"
    }, 200);
    $(".garage-detailscreen").animate({
        right: 0+"vh"
    }, 200);

    var Id = $(this).attr('id');
    var VehData = $("#"+Id).data('VehicleData');
    veh = { ...VehData, Id }
    SetupDetails(VehData);
});

$(document).on('click', '#track-vehicle', function(e){
    e.preventDefault();

    const checked = !$('#track-vehicle-switch').is(':checked');

    if (checked) {
        $.post("https://qb-phone/track-vehicle", JSON.stringify({
            veh: veh,
        }));
        
        $('.garage-vehicle').each((i, value) => $(value).attr('data-is-tracking', false));
    } else {
        $.post("https://qb-phone/delete-vehicle-waypoint", JSON.stringify({}));
    }
    
    $('#track-vehicle-switch').prop('checked', checked);
    $('#' + veh.Id).attr('data-is-tracking', checked)
});


$(document).on('click', '#return-button-garage', function(e){
    e.preventDefault();

    $(".garage-homescreen").animate({
        right: 0+"vh"
    }, 200);
    $(".garage-detailscreen").animate({
        right: -30+"vh"
    }, 200);

    $(".switch-container.grg").hide();
});

SetupGarageVehicles = function(Vehicles) {
    $(".garage-vehicles").html('<div class="garage-vehicles-wrapper"></div>');

    if (Vehicles != null) {
        $.each(Vehicles, function(i, vehicle){
            const carName = vehicle.brand.replace(/[0-9]/g, '').trim();
            const carLetter = carName.charAt(0).toLocaleUpperCase();
            
            var Element = '<div class="garage-vehicle-row">' + 
                '<div class="garage-vehicle" id="vehicle-'+i+'" data-is-tracking="false"><span class="garage-vehicle-firstletter">'+carLetter+'</span> <span class="garage-vehicle-name">'+vehicle.fullname+'</span></div>' +
                '<i class="fa-solid fa-angle-right"></i>'
            '</div>';

            $(".garage-vehicles-wrapper").append(Element);
            $("#vehicle-"+i).data('VehicleData', vehicle);
        });
    }
}

SetupDetails = function(data) {
    $("#brand-answer").html(data.brand);
    $("#model-answer").html(data.model);
    $("#plate-answer").html(data.plate);
    $("#garage-answer").html(data.garage);
    $("#status-answer").html(data.state);
    $("#fuel-answer").html(Math.ceil(data.fuel)+"%");
    $("#engine-answer").html(Math.ceil(data.engine / 10)+"%");
    $("#body-answer").html(Math.ceil(data.body / 10)+"%");
    
    if (data.state !== 1) {
        const isTracking = $('#' + veh.Id).attr('data-is-tracking') === 'true';

        $(".switch-container.grg").show();
        $('#track-vehicle-switch').prop('checked', isTracking)
    }
}