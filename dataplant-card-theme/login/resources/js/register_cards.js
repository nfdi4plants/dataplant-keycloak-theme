let showing = [1, 0, 0, 0];
let questions = ['card1', 'card2', 'card3', 'card4'];
console.log("loaded reg cards.js")
function next() {
    console.log("clicked next")
    var qElems = [];
    for (var i = 0; i < questions.length; i++) {
        console.log(questions[i])
        console.log("pushing", document.getElementById(questions[i]) )
        qElems.push(document.getElementById(questions[i]));
    }
    for (var i = 0; i < showing.length; i++) {
        if (showing[i] == 1) {
            console.log("elem", qElems[i])
            console.log("show", showing[i])
            qElems[i].style.display = 'none';
            showing[i] = 0;
            if (i == showing.length - 1) {
                qElems[0].style.display = 'block';
                showing[0] = 1;
            } else {
                qElems[i + 1].style.display = 'block';
                showing[i + 1] = 1;
            }
            break;
        }
    }
}

function previous() {
    console.log("clicked prev")
    var qElems = [];
    for (var i = 0; i < questions.length; i++) {
        console.log(questions[i])
        console.log("pushing", document.getElementById(questions[i]) )
        qElems.push(document.getElementById(questions[i]));
    }
    for (var i = 0; i < showing.length; i++) {
        if (showing[i] == 1) {
            console.log("elem", qElems[i])
            console.log("show", showing[i])
            qElems[i].style.display = 'none';
            showing[i] = 0;
            if (i == showing.length - 1) {
                qElems[0].style.display = 'block';
                showing[0] = 1;
            } else {
                qElems[i + 1].style.display = 'block';
                showing[i + 1] = 1;
            }
            break;
        }
    }
}