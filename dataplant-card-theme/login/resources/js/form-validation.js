function formValidation() {
    let email = document.getElementById("email").value;
    email.trim();
    let name = document.getElementById("name").value;
    name.trim();
    if (email == "") {
        document.getElementById("contact--form--email--error").style.display =
            "block";
        return false;
    } else if (name == "") {
        document.getElementById("contact--form--name--error").style.display =
            "block";
        return false;
    }
    return true;
}