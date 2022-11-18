let currentshow = [1, 0, 0];
let cards = ['card1', 'card2', 'card3'];

function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}


function update_next() {
    console.log("clicked next")
    var qElems = [];
    for (var i = 0; i < cards.length; i++) {
        console.log(cards[i])
        console.log("pushing", document.getElementById(cards[i]) )
        qElems.push(document.getElementById(cards[i]));

    }

    for (var i = 0; i < currentshow.length; i++) {
        if (currentshow[i] == 1) {


            if (cards[i] == 'card1') {
                console.log("is card1")
                let email = document.getElementById("email").value;
                let firstname = document.getElementById("firstName").value;
                let lastname = document.getElementById("lastName").value;

                if (email == "") {
                    console.log("1")
                    document.getElementById("form-error-email").style.display =
                        "block";
                    // return false;
                }

                else if (validateEmail(email) == false) {
                    console.log("1")
                    document.getElementById("form-error-email").style.display =
                        "none";
                    document.getElementById("form-error-email-valid").style.display =
                        "block";
                    // return false;
                }

                else {
                    console.log("hide")
                    document.getElementById("form-error-email").style.display =
                        "none";
                    document.getElementById("form-error-email-valid").style.display =
                        "none";
                }

                if (firstname == "") {
                    console.log("2")
                    document.getElementById("form-error-firstname").style.display =
                        "block";
                    // return false;

                }
                else {
                    console.log("hide")
                    document.getElementById("form-error-firstname").style.display =
                        "none";
                }
                if (lastname == "") {
                    console.log("3")
                    document.getElementById("form-error-lastname").style.display =
                        "block";
                    // return false;

                }
                else {
                    console.log("hide")
                    document.getElementById("form-error-lastname").style.display =
                        "none";
                }

                if (!email || !firstname || !lastname || validateEmail(email) == false){
                    return false;
                }

            }

            if (cards[i] == 'card2') {
                console.log("is card2")
                let institution = document.getElementById("institution").value;
                let department = document.getElementById("department").value;
                let country = document.getElementById("country").value;
                let state = document.getElementById("state").value;
                let zipcode = document.getElementById("zipcode").value;
                let city = document.getElementById("city").value;
                let address = document.getElementById("address").value;

                if (institution == "") {
                    console.log("1")
                    document.getElementById("form-error-institution").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-institution").style.display =
                        "none";
                }

                if (department == "") {
                    console.log("1")
                    document.getElementById("form-error-department").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-department").style.display =
                        "none";
                }

                if (country == "") {
                    console.log("1")
                    document.getElementById("form-error-country").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-country").style.display =
                        "none";
                }

                if (state == "") {
                    console.log("1")
                    document.getElementById("form-error-state").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-state").style.display =
                        "none";
                }

                if (zipcode == "") {
                    console.log("1")
                    document.getElementById("form-error-zipcode").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-zipcode").style.display =
                        "none";
                }

                if (city == "") {
                    console.log("1")
                    document.getElementById("form-error-city").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-city").style.display =
                        "none";
                }

                if (address == "") {
                    console.log("1")
                    document.getElementById("form-error-address").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-address").style.display =
                        "none";
                }

                if (!institution || !department || !country || !state || !zipcode || !city || !address){
                    return false;
                }

            }

            if (cards[i] == 'card3') {
                let consortium = document.getElementById("consortium").value;
                let research = document.getElementById("tagger").value;
                let role = document.getElementById("role").value;


                if (consortium == "") {
                    console.log("1")
                    document.getElementById("form-error-consortium").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-consortium").style.display =
                        "none";
                }

                if (research == "") {
                    console.log("1")
                    document.getElementById("form-error-research").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-research").style.display =
                        "none";
                }


                if (role == "") {
                    console.log("1")
                    document.getElementById("form-error-role").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-role").style.display =
                        "none";
                }

                if (!role || !consortium || !research){
                    return false;
                }


            }



            console.log("elem", qElems[i])
            console.log("show", currentshow[i])
            qElems[i].style.display = 'none';
            currentshow[i] = 0;
            if (i == currentshow.length - 1) {
                qElems[0].style.display = 'block';
                currentshow[0] = 1;
            } else {
                qElems[i + 1].style.display = 'block';
                currentshow[i + 1] = 1;
            }
            break;
        }
    }
}

// function previous(){
//
// }


function update_previous() {
    console.log("clicked prev")
    var qElems = [];
    for (var i = 0; i < cards.length; i++) {
        console.log(cards[i])
        console.log("pushing", document.getElementById(cards[i]) )
        qElems.push(document.getElementById(cards[i]));
    }
    for (var i = 0; i < currentshow.length; i++) {
        if (currentshow[i] == 1) {
            console.log("elem", qElems[i])
            console.log("show", currentshow[i])
            qElems[i].style.display = 'none';
            currentshow[i] = 0;
            if (i == currentshow.length - 1) {
                qElems[0].style.display = 'block';
                currentshow[0] = 1;
            } else {
                console.log("prev pressed " +i)
                qElems[i - 1].style.display = 'block';
                currentshow[i - 1] = 1;
            }
            break;
        }
    }
}