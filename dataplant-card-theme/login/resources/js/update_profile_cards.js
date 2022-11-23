let currentshow = [1, 0];
let cards = ['card1', 'card2'];

function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}


function update_next() {
    var qElems = [];
    for (var i = 0; i < cards.length; i++) {
        qElems.push(document.getElementById(cards[i]));

    }

    for (var i = 0; i < currentshow.length; i++) {
        if (currentshow[i] == 1) {


            if (cards[i] == 'card1') {
                let email = document.getElementById("email").value;
                let firstname = document.getElementById("firstName").value;
                let lastname = document.getElementById("lastName").value;

                if (email == "") {
                    document.getElementById("form-error-email").style.display =
                        "block";
                    // return false;
                }

                else if (validateEmail(email) == false) {
                    document.getElementById("form-error-email").style.display =
                        "none";
                    document.getElementById("form-error-email-valid").style.display =
                        "block";
                    // return false;
                }

                else {
                    document.getElementById("form-error-email").style.display =
                        "none";
                    document.getElementById("form-error-email-valid").style.display =
                        "none";
                }

                if (firstname == "") {
                    document.getElementById("form-error-firstname").style.display =
                        "block";
                    // return false;

                }
                else {
                    document.getElementById("form-error-firstname").style.display =
                        "none";
                }
                if (lastname == "") {
                    document.getElementById("form-error-lastname").style.display =
                        "block";
                    // return false;

                }
                else {
                    document.getElementById("form-error-lastname").style.display =
                        "none";
                }

                if (!email || !firstname || !lastname || validateEmail(email) == false){
                    return false;
                }

            }


            if (cards[i] == 'card2') {
                let institution = document.getElementById("institution").value;
                let consortium = document.getElementById("consortium").value;
                let research = document.getElementById("tagger").value;
                let role = document.getElementById("role").value;

                if (institution == "") {
                    document.getElementById("form-error-institution").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-institution").style.display =
                        "none";
                }


                if (consortium == "") {
                    document.getElementById("form-error-consortium").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-consortium").style.display =
                        "none";
                }

                if (research == "") {
                    document.getElementById("form-error-research").style.display =
                        "block";
                    // return false;
                }
                else {
                    document.getElementById("form-error-research").style.display =
                        "none";
                }


                if (role == "") {
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
    var qElems = [];
    for (var i = 0; i < cards.length; i++) {
        qElems.push(document.getElementById(cards[i]));
    }
    for (var i = 0; i < currentshow.length; i++) {
        if (currentshow[i] == 1) {
            qElems[i].style.display = 'none';
            currentshow[i] = 0;
            if (i == currentshow.length - 1) {
                qElems[0].style.display = 'block';
                currentshow[0] = 1;
            } else {
                qElems[i - 1].style.display = 'block';
                currentshow[i - 1] = 1;
            }
            break;
        }
    }
}