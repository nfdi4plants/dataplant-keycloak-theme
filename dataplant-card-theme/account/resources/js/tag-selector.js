var input = document.getElementById('tagger')
var tagrify = new Tagify(input, {
    enforceWhitelist: true,
    whitelist: ["plant", "datas", "biology"]
})


// function onChange(e){
//     // outputs a String
//     console.log(e.target.value)
// }

