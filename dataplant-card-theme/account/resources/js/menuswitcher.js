// https://stackoverflow.com/questions/44891771/bulma-css-tab-switcher

document.addEventListener('DOMContentLoaded', () => {
    const tabs = document.querySelectorAll('.tab')
    const currentLocation = window.location.pathname.split("/");


    let current_page = currentLocation[currentLocation.length - 1]


    if (!current_page){
        current_page = "account"
    }


    const current_tab = current_page +"-tab"

    // document.getElementById("account-tab").classList.remove("is-active")
    document.getElementById(current_tab).classList.add("is-active")


    if (tabs === undefined) return

    // tabs.forEach((tab) => {
    //     tab.addEventListener('click', (e) => {
//
//             const tabName = e.currentTarget.attributes[0].nodeValue
//
//             const current_tab = e.currentTarget.attributes[0].nodeValue
//
//             document.getElementById(tabName).classList.add('is-active')
//             document.getElementById(current_tab).classList.add('is-active')
//
//
//             const currentTab = document.querySelector('.tab.is-active')
//
//             const newTab = document.getElementById(tabName)
//             const newTabContent = document.getElementById(`${tabName}`)
//
//             currentTab.classList.remove('is-active')
//
//             newTab.classList.add('is-active')
//         })
//     })
})