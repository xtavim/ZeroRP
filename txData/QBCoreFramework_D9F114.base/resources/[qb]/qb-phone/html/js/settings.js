QB.Phone.Settings = {};
QB.Phone.Settings.Background = "wallpaper-1.jpg";
QB.Phone.Settings.OpenedTab = null;
QB.Phone.Settings.Backgrounds = {
    'wallpaper-1': {
        label: "Fundo 1"
    },
    'wallpaper-2': {
        label: "Fundo 2"
    },
    'wallpaper-3': {
        label: "Fundo 3"
    },
    'wallpaper-4': {
        label: "Fundo 4"
    }
};

var PressedBackground = null;
var PressedBackgroundObject = null;
var OldBackground = null;
var IsChecked = null;

$(document).on('click', '.settings-app-tab', function (e) {
    e.preventDefault();
    var PressedTab = $(this).data("settingstab");

    if (PressedTab == "background") {
        QB.Phone.Animations.TopSlideDown(".settings-" + PressedTab + "-tab", 200, 0);
        QB.Phone.Settings.OpenedTab = PressedTab;
    } else if (PressedTab == "profilepicture") {
        QB.Phone.Animations.TopSlideDown(".settings-" + PressedTab + "-tab", 200, 0);
        QB.Phone.Settings.OpenedTab = PressedTab;
    }
});

$(document).on('click', '#numberrecognition', (e) => {
    e.preventDefault();

    QB.Phone.Data.AnonymousCall = !$('#anon-switch').prop("checked");
    $('#anon-switch').prop("checked", QB.Phone.Data.AnonymousCall);
});

$(document).on('click', '#accept-background', function (e) {
    e.preventDefault();
    var hasCustomBackground = QB.Phone.Functions.IsBackgroundCustom();

    if (hasCustomBackground === false) {
        QB.Phone.Notifications.Add("fas fa-paint-brush", "Settings", QB.Phone.Settings.Backgrounds[QB.Phone.Settings.Background].label + " is set!")
        QB.Phone.Animations.TopSlideUp(".settings-" + QB.Phone.Settings.OpenedTab + "-tab", 200, -100);
        $(".phone-background").css({ "background-image": "url('./img/backgrounds/" + QB.Phone.Settings.Background + ".png')" })
    } else {
        QB.Phone.Notifications.Add("fas fa-paint-brush", "Settings", "Personal background set!")
        QB.Phone.Animations.TopSlideUp(".settings-" + QB.Phone.Settings.OpenedTab + "-tab", 200, -100);
        $(".phone-background").css({ "background-image": "url('" + QB.Phone.Settings.Background + "')" });
    }

    $.post('https://qb-phone/SetBackground', JSON.stringify({
        background: QB.Phone.Settings.Background,
    }))
});

QB.Phone.Functions.LoadMetaData = function (MetaData) {
    if (MetaData.background !== null && MetaData.background !== undefined) {
        QB.Phone.Settings.Background = MetaData.background;
    } else {
        QB.Phone.Settings.Background = "./img/backgrounds/wallpaper-1.jpg";
    }

    var hasCustomBackground = QB.Phone.Functions.IsBackgroundCustom();

    if (!hasCustomBackground) {
        $(".phone-background").css({ "background-image": "url('./img/backgrounds/" + QB.Phone.Settings.Background + "')" })
    } else {
        $(".phone-background").css({ "background-image": "url('" + QB.Phone.Settings.Background + "')" });
    }
    /* 
        if (MetaData.profilepicture == "default") {
            $("[data-settingstab='profilepicture']").find('.settings-tab-icon').html('<img src="./img/default.png">');
        } else {
            $("[data-settingstab='profilepicture']").find('.settings-tab-icon').html('<img src="'+MetaData.profilepicture+'">');
        } */
}

$(document).on('click', '#cancel-background', function (e) {
    e.preventDefault();
    QB.Phone.Animations.TopSlideUp(".settings-" + QB.Phone.Settings.OpenedTab + "-tab", 200, -100);
});

QB.Phone.Functions.IsBackgroundCustom = function () {
    var retval = true;
    $.each(QB.Phone.Settings.Backgrounds, function (i, background) {
        if (QB.Phone.Settings.Background == i) {
            retval = false;
        }
    });
    return retval
}

$(document).on('click', '.background-option', function (e) {
    e.preventDefault();
    PressedBackground = $(this).data('background');
    PressedBackgroundObject = this;
    OldBackground = $(this).parent().find('.background-option-current');
    IsChecked = $(this).find('.background-option-current');

    if (IsChecked.length === 0) {
        if (PressedBackground != "custom-background") {
            QB.Phone.Settings.Background = PressedBackground;
            $(OldBackground).fadeOut(50, function () {
                $(OldBackground).remove();
            });
            $(PressedBackgroundObject).append('<div class="background-option-current"><i class="fas fa-check-circle"></i></div>');
        } else {
            QB.Phone.Animations.TopSlideDown(".background-custom", 200, 13);
        }
    }
});

$(document).on('click', '#accept-custom-background', function (e) {
    e.preventDefault();

    QB.Phone.Settings.Background = $(".custom-background-input").val();
    $(OldBackground).fadeOut(50, function () {
        $(OldBackground).remove();
    });
    $(PressedBackgroundObject).append('<div class="background-option-current"><i class="fas fa-check-circle"></i></div>');
    QB.Phone.Animations.TopSlideUp(".background-custom", 200, -23);
});

$(document).on('click', '#cancel-custom-background', function (e) {
    e.preventDefault();

    QB.Phone.Animations.TopSlideUp(".background-custom", 200, -23);
});

// Profile Picture

var PressedProfilePicture = null;
var PressedProfilePictureObject = null;
var OldProfilePicture = null;
var ProfilePictureIsChecked = null;

$(document).on('click', '#accept-profilepicture', function (e) {
    e.preventDefault();
    var ProfilePicture = QB.Phone.Data.MetaData.profilepicture;
    if (ProfilePicture === "default") {
        QB.Phone.Notifications.Add("fas fa-paint-brush", "Settings", "Standard avatar set!")
        QB.Phone.Animations.TopSlideUp(".settings-" + QB.Phone.Settings.OpenedTab + "-tab", 200, -100);
        /* $("[data-settingstab='profilepicture']").find('.settings-tab-icon').html('<img src="./img/default.png">'); */
    } else {
        QB.Phone.Notifications.Add("fas fa-paint-brush", "Settings", "Personal avatar set!")
        QB.Phone.Animations.TopSlideUp(".settings-" + QB.Phone.Settings.OpenedTab + "-tab", 200, -100);
        /* $("[data-settingstab='profilepicture']").find('.settings-tab-icon').html('<img src="'+ProfilePicture+'">'); */
    }
    $.post('https://qb-phone/UpdateProfilePicture', JSON.stringify({
        profilepicture: ProfilePicture,
    }));
});

$(document).on('click', '#accept-custom-profilepicture', function (e) {
    e.preventDefault();
    QB.Phone.Data.MetaData.profilepicture = $(".custom-profilepicture-input").val();
    $(OldProfilePicture).fadeOut(50, function () {
        $(OldProfilePicture).remove();
    });
    $(PressedProfilePictureObject).append('<div class="profilepicture-option-current"><i class="fas fa-check-circle"></i></div>');
    QB.Phone.Animations.TopSlideUp(".profilepicture-custom", 200, -23);
});

$(document).on('click', '.profilepicture-option', function (e) {
    e.preventDefault();
    PressedProfilePicture = $(this).data('profilepicture');
    PressedProfilePictureObject = this;
    OldProfilePicture = $(this).parent().find('.profilepicture-option-current');
    ProfilePictureIsChecked = $(this).find('.profilepicture-option-current');
    if (ProfilePictureIsChecked.length === 0) {
        if (PressedProfilePicture != "custom-profilepicture") {
            QB.Phone.Data.MetaData.profilepicture = PressedProfilePicture
            $(OldProfilePicture).fadeOut(50, function () {
                $(OldProfilePicture).remove();
            });
            $(PressedProfilePictureObject).append('<div class="profilepicture-option-current"><i class="fas fa-check-circle"></i></div>');
        } else {
            QB.Phone.Animations.TopSlideDown(".profilepicture-custom", 200, 13);
        }
    }
});

$(document).on('click', '#cancel-profilepicture', function (e) {
    e.preventDefault();
    QB.Phone.Animations.TopSlideUp(".settings-" + QB.Phone.Settings.OpenedTab + "-tab", 200, -100);
});


$(document).on('click', '#cancel-custom-profilepicture', function (e) {
    e.preventDefault();
    QB.Phone.Animations.TopSlideUp(".profilepicture-custom", 200, -23);
});

const sliderEl = document.querySelector("#brightness-range")

sliderEl.addEventListener("input", (event) => {
    const tempSliderValue = event.target.value;

    const progress = (tempSliderValue - sliderEl.min) / (sliderEl.max - sliderEl.min) * 100;

    sliderEl.style.background = `linear-gradient(to right, rgb(0, 102, 255) ${progress}%, #313131 ${progress}%)`;

    $('.phone-container').css('filter', `brightness(${tempSliderValue}%)`);
})