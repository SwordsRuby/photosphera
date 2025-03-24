function burger_menu() {
    const burger_el = document.getElementsByClassName('burger');
    const burger_menu = document.getElementsByClassName('burger-menu');

    burger_el[0].classList.toggle('none');
    burger_menu[0].classList.toggle('none');
    burger_menu[1].classList.toggle('burger-active');
}