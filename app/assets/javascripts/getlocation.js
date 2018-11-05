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
        let longitude = position.coords.longitude;
        console.log("Latitude: " + latitude + "Longitude: " + longitude);


        //responsehandler
        function responseHandler() {
            console.log("response text", this.responseText);
            console.log("status text", this.statusText);
            console.log("status code", this.status);
        };

        //ajax request to server is done here
        var request = new XMLHttpRequest();

        request.addEventListener("load", responseHandler)
        //open request
        const url = '/users-coordinates?lat=' + latitude + "&lon=" + longitude
        request.open("GET", url)
        //send the request `?lat=${latitude}&lon=${longitude}`
        request.send();
}

// params[:latitude]
// params[:longitude]

// session[:lat] = params[:latitude]

// session[:lat] if session[:lat] != nil

// function tester() {
//     alert('it works');
// };