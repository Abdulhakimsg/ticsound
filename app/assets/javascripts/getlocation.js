console.log("It works")


window.onload= getLocation();
    var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        Console.log("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {
        let latitude = position.coords.latitude;
        let longitude = position.coords.longitude
        console.log(latitude)
        console.log(longitude)
        console.log("Latitude: " + latitude +
                "Longitude: " + longitude);

        // ajax request to server is done here
        const xml = new XMLHTTPRequest();
        `/users/coordinates?lat=${latitude}&lon=${longitude}`
        ajax.send
}

// params[:latitude]
// params[:longitude]

// session[:lat] = params[:latitude]

// session[:lat] if session[:lat] != nil

function tester() {
    alert('it works');
};