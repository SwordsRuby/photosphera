function burger_menu() {
    const burger_el = document.getElementsByClassName('burger');
    const burger_menu = document.getElementsByClassName('burger-menu');

    burger_el[0].classList.toggle('none');
    burger_menu[0].classList.toggle('none');
    setTimeout(() => {
        burger_menu[1].classList.toggle('burger-active');
    }, 30);
}

window.addEventListener('resize', (e) => {
    if (window.matchMedia('(min-width: 320px)').matches) {
        const burger_el = document.getElementsByClassName('burger');
        burger_el[0].classList.add('none');
    }

    if (window.matchMedia('(max-width: 809px)').matches) {
        const burger_menu = document.getElementsByClassName('burger-menu');
        burger_menu[0].classList.remove('none');
    }
})