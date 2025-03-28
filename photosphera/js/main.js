// slider next and prev function
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


// burger open-close function
function burgerMenu() {
    const burgerEl = document.getElementsByClassName('burger');
    const burgerMenu = document.getElementsByClassName('burger-menu');

    burgerEl[0].classList.toggle('none');
    burgerMenu[0].classList.toggle('none');
    setTimeout(() => {
        burgerMenu[1].classList.toggle('burger-active');
    }, 30);
}


//resize event listener for slider
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


// faq show-hidden function
function faq(el) {
    el.classList.toggle('faq-block-active');
    el.children[0].children[0].children[1].classList.toggle('img-rotate');
}


// categories show-hidden function for images filter
function categoriesShow() {
    const categoriesBlock = document.querySelector('.categories-filter-block');

    categoriesBlock.classList.toggle('categories-filter-block-active');
}


//authorization show-hidden function
function auth() {
    const authBlock = document.querySelector('.auth-block');

    authBlock.classList.toggle('none');
}


//registration show-hidden function
function reg() {
    const authBlock = document.querySelector('.reg-block');

    authBlock.classList.toggle('none');
}


//userModal show-hidden function
function userModal() {
    const authBlock = document.querySelector('.user-modal-block');

    authBlock.classList.toggle('none');
}


//function for swap user img in modal window
function userImgSwap() {
    const file = document.querySelector('#userImgUpdate');
    const fileTitle = document.querySelector('.user-modal-photo-chose');
    const fileImg = document.querySelector('.user-img-modal');

    fileTitle.textContent = file.files[0].name;
    fileImg.src = URL.createObjectURL(file.files[0]);
}


// function for img filter
function imgFilter(url) {
    const extension = url.split('.').at(-1).toUpperCase();
    if (extension === 'JPG' || extension === 'PNG' || extension === 'JPEG' || extension === 'SVG' || extension === 'WEBP') {
        return true;
    };
}


//function for add img file
function addImgF() {
    const file = document.querySelector('#add-img-file');
    const fileBlock = document.querySelector('.add-img-file-path-subblock');
    const fileImg = document.querySelector('.add-img-file-path-block');
    const inputURL = document.querySelector('#add-img-URL');
    const inputText = document.querySelector('.add-img-text');
    const inputError = document.querySelector('#img-error');


    if (imgFilter(file.files[0].name)) {
        fileImg.style.background = `url(${URL.createObjectURL(file.files[0])}) no-repeat`;
        fileImg.style.backgroundSize = 'cover';
        fileBlock.style.display = 'none';

        inputText.style.display = 'none';
        inputURL.style.display = 'none';
        inputError.classList.add('none');
    } else {
        fileImg.style.background = '#D9D9D9';
        fileBlock.style.display = 'flex';

        inputText.style.display = 'flex';
        inputURL.style.display = 'flex';
        inputError.classList.remove('none');
    }

}


//function for add img URL
function addImgU() {
    const inputURL = document.querySelector('#add-img-URL');
    const file = document.querySelector('#add-img-file');
    const fileBlock = document.querySelector('.add-img-file-path-subblock');
    const fileImg = document.querySelector('.add-img-file-path-block');
    const inputError = document.querySelector('#img-error');


    fileImg.style.background = '#D9D9D9';
    fileBlock.style.display = 'flex';
    file.style.display = 'flex';

    const verifyImage = new Image();
    verifyImage.src = inputURL.value;

    verifyImage.onload = function () {
        fileImg.style.background = `url(${inputURL.value}) no-repeat`;
        fileImg.style.backgroundSize = 'contain';
        fileBlock.style.display = 'none';
        file.style.display = 'none';
        inputError.classList.add('none');
    };

    verifyImage.onerror = function () {
        inputError.classList.remove('none');
    }
}


// function for submit form data
function formSubmit(el) {
    if (el.parentNode.tagName == 'FORM') {
        el.parentNode.submit();
    }
    else if (el.parentNode.parentNode.tagName == 'FORM') {
        el.parentNode.parentNode.submit();
    }
    else {
        el.parentNode.parentNode.parentNode.submit();
    }
}