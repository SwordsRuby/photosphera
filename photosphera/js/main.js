var translate = 0;

function prevButton() {
    const slider = document.querySelector('.slider-block');

    if (translate != 0) {
        translate += 340;
        slider.style.transform = 'translate(' + translate + 'px)';
    }
}

function nextButton() {
    const slider = document.querySelector('.slider-block');
    const sliderCardLength = document.querySelectorAll('.slider-card').length

    if (window.matchMedia('(max-width: 810px)').matches) {
        var sliderStop = -sliderCardLength * 340 + 340;
    }
    else if (window.matchMedia('(max-width: 1210px)').matches) {
        var sliderStop = -sliderCardLength * 340 + 680;
    }
    else {
        var sliderStop = -sliderCardLength * 340 + 1020;
    }

    if (translate > sliderStop) {
        translate -= 340;
        slider.style.transform = 'translate(' + translate + 'px)';
    }
    else {
        translate = sliderStop;
        slider.style.transform = 'translate(' + translate + 'px)';
    }
}

function burger_menu() {
    const burgerEl = document.getElementsByClassName('burger');
    const burgerMenu = document.getElementsByClassName('burger-menu');

    burgerEl[0].classList.toggle('none');
    burgerMenu[0].classList.toggle('none');
    setTimeout(() => {
        burgerMenu[1].classList.toggle('burger-active');
    }, 30);
}

window.addEventListener('resize', (e) => {
    if (window.matchMedia('(min-width: 320px)').matches) {
        const burgerEl = document.getElementsByClassName('burger');
        burgerEl[0].classList.add('none');
    }

    if (window.matchMedia('(max-width: 810px)').matches) {
        const burgerMenu = document.getElementsByClassName('burger-menu');
        burgerMenu[0].classList.remove('none');
    }
})

function faq(el) {
    el.classList.toggle('faq-block-active');
    el.children[0].children[0].children[1].classList.toggle('img-rotate');
}

function categoriesShow() {
    const categoriesBlock = document.querySelector('.categories-filter-block');

    categoriesBlock.classList.toggle('categories-filter-block-active');
}

function auth() {
    const authBlock = document.querySelector('.auth-block');

    authBlock.classList.toggle('none');
}

function reg() {
    const authBlock = document.querySelector('.reg-block');

    authBlock.classList.toggle('none');
}