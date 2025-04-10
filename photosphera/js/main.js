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

    let sliderStop;

    if (window.matchMedia('(max-width: 810px)').matches) {
        sliderStop = -sliderCardLength * 340 + 340;
    }
    else if (window.matchMedia('(max-width: 1210px)').matches) {
        sliderStop = -sliderCardLength * 340 + 680;
    }
    else {
        sliderStop = -sliderCardLength * 340 + 1020;
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
    const burgerEl = document.getElementsByClassName('burger');
    if (burgerEl != null) {
        if (window.matchMedia('(min-width: 320px)').matches) {
            burgerEl[0].classList.add('none');
        }
    }

    const burgerMenu = document.getElementsByClassName('burger-menu');
    if (burgerMenu != null) {
        if (window.matchMedia('(max-width: 810px)').matches) {
            burgerMenu[0].classList.remove('none');
        }
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
    const regBlock = document.querySelector('.reg-block');

    regBlock.classList.toggle('none');
}


//registration show-hidden function
function del() {
    const delBlock = document.querySelector('.del-block');

    delBlock.classList.toggle('none');
}


//userModal show-hidden function
function userModal() {
    const userModalBlock = document.querySelector('.user-modal-block');

    userModalBlock.classList.toggle('none');
}


//function for swap user img in modal window
function userImgSwap() {
    const file = document.querySelector('#userImgUpdate');
    const fileTitle = document.querySelector('.user-modal-photo-chose');
    const fileImg = document.querySelector('.user-img-modal');

    if (imgFilter(file.files[0].name)) {
        fileTitle.textContent = file.files[0].name;
        fileImg.src = URL.createObjectURL(file.files[0]);
    }
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

    if (file.files.length != 0) {
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
            return true;
        } else {
            fileImg.style.background = '#D9D9D9';
            fileBlock.style.display = 'flex';

            inputText.style.display = 'flex';
            inputURL.style.display = 'flex';
            inputError.classList.remove('none');
            return false;
        }
    }
    else {
        return false;
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

    const isValidUrl = (str) => {
        try {
            return !!new URL(str);
        }
        catch (_) {
            return false;
        }
    };

    let result = true

    if (isValidUrl(inputURL.value)) {
        const verifyImage = new Image();
        verifyImage.src = inputURL.value;

        verifyImage.onload = function () {
            fileImg.style.background = `url(${inputURL.value}) no-repeat`;
            fileImg.style.backgroundSize = 'contain';
            fileBlock.style.display = 'none';
            file.style.display = 'none';
            inputError.classList.add('none');
            result = true;
        };

        verifyImage.onerror = function () {
            result = false;
            inputError.classList.remove('none');

            const formButtom = document.querySelector('#button-form-submit');
            formButtom.setAttribute('disabled', 'on');
            formButtom.classList.add('unactive-button');
        }
    }
    else {
        inputError.classList.remove('none');
        result = false;
    }
    return result;
}


// function for submit form data
function formSubmit(el) {
    if (el.parentNode.tagName == 'FORM') {
        el.parentNode.submit();
    }
    else if (el.parentNode.parentNode.tagName == 'FORM') {
        el.parentNode.parentNode.submit();
    }
    else if (el.parentNode.parentNode.parentNode.tagName == 'FORM') {
        el.parentNode.parentNode.parentNode.submit();
    }
    else {
        el.parentNode.parentNode.parentNode.parentNode.submit();
    }
}


// function for verify add img, update-img form 
function formVerify() {
    var flag = true;

    const addType = document.querySelector('#tag-type');
    if (addType != null) {
        const addFileBlock = document.querySelector('#file-url-block-img-add');
        if (addType.checked == true) {
            addFileBlock.classList.add('none');
        }
        else {
            addFileBlock.classList.remove('none');
            const file = document.querySelector('#add-img-file');
            if (file != null) {
                if (addImgF() == false && addImgU() == false) {
                    flag = false;
                }
            }
        }
    } else {
        const file = document.querySelector('#add-img-file');
        if (file != null) {
            if (addImgF() == false && addImgU() == false) {
                flag = false;
            }
        }
    }

    const addImgName = document.querySelector('#add-img-name');
    if (addImgName != null) {
        const error = document.querySelector('#name-error');

        if (addImgName.value.trim() == '') {
            error.classList.remove('none');
            flag = false;
        }
        else {
            error.classList.add('none');
        }
    }

    const addImgCategories = document.querySelector('#add-img-categories');
    if (addImgCategories != null) {
        const error = document.querySelector('#categories-error');
        const radioEl = document.querySelector('#all-categories')

        if (radioEl.checked) {
            error.classList.remove('none');
            flag = false;
        }
        else {
            error.classList.add('none');

            const radioCheck = document.querySelector('input[name="categories"]:checked').value;
            const radioTitle = document.querySelector('#categories-title');

            radioTitle.textContent = radioCheck;
            radioTitle.classList.add('black-text');
        }
    }

    const addImgTags = document.querySelectorAll('input[name="tag"]:checked');
    if (addImgTags != null) {
        if (addImgTags.length > 7) {
            addImgTags[addImgTags.length - 1].checked = false;
        }
    }

    const formButtom = document.querySelector('#button-form-submit');
    if (flag) {
        formButtom.removeAttribute('disabled');
        formButtom.classList.remove('unactive-button');
    } else {
        formButtom.setAttribute('disabled', 'on');
        formButtom.classList.add('unactive-button');
    }
}


// function for verify authorization
function formAuthVerify() {
    var flag = true;

    const authorizationLogin = document.querySelector('#authLogin');
    if (authorizationLogin != null) {
        const error = document.querySelector('#login-error');

        if (authorizationLogin.value.trim() == '') {
            error.classList.remove('none');
            flag = false;
        }
        else {
            error.classList.add('none');
        }
    }

    const authorizationPassword = document.querySelector('#authPassword');
    if (authorizationPassword != null) {
        const error = document.querySelector('#password-error');

        if (authorizationPassword.value.trim() == '') {
            error.classList.remove('none');
            flag = false;
        }
        else {
            error.classList.add('none');
        }
    }

    const formButtom = document.querySelector('#button-form-submit');
    if (flag) {
        formButtom.removeAttribute('disabled');
        formButtom.classList.remove('unactive-button');
    } else {
        formButtom.setAttribute('disabled', 'on');
        formButtom.classList.add('unactive-button');
    }
}


// function for verify registration, update user form 
function formRegVerify() {
    var flagReg = true;

    const registrationImg = document.querySelector('#userImgUpdate');
    if (registrationImg != null) {
        if (registrationImg.files.length > 0) {
            const error = document.querySelector('#img-error');

            if (!imgFilter(registrationImg.files[0].name)) {
                error.classList.remove('none');
                flagReg = false;
            }
            else {
                error.classList.add('none');
            }
        }
    }

    const registrationLogin = document.querySelector('#regLogin');
    if (registrationLogin != null) {
        const error = document.querySelector('#reg-login-error');

        if (registrationLogin.value.trim() == '') {
            error.classList.remove('none');
            flagReg = false;
        }
        else {
            error.classList.add('none');
        }
    }

    const registrationPassword = document.querySelector('#regPassword');
    if (registrationPassword != null) {
        const error = document.querySelector('#reg-password-error');

        if (registrationPassword.value.trim() == '') {
            error.classList.remove('none');
            flagReg = false;
        }
        else {
            error.classList.add('none');
            const errorReapeat = document.querySelector('#reg-password-length-error');
            if (registrationPassword.value.trim().length <= 8) {
                errorReapeat.classList.remove('none');
                flagReg = false;
            } else {
                errorReapeat.classList.add('none');
            }
        }
    }

    if (flagReg && registrationPassword != null) {
        const registrationPasswordReapeat = document.querySelector('#passwordRepeat');
        if (registrationPasswordReapeat != null) {
            const error = document.querySelector('#password-reapeat-error');

            if (registrationPassword.value.trim() != registrationPasswordReapeat.value.trim()) {
                error.classList.remove('none');
                flagReg = false;
            }
            else {
                error.classList.add('none');
            }
        }
    }

    const formButtomReg = document.querySelector('#reg-button-form-submit');
    if (flagReg) {
        formButtomReg.removeAttribute('disabled');
        formButtomReg.classList.remove('unactive-button');
    } else {
        formButtomReg.setAttribute('disabled', 'on');
        formButtomReg.classList.add('unactive-button');
    }
}


// function for verify update categories-tag
function formUpdateVerify() {
    var flag = true;

    const updateTagCategoriesName = document.querySelector('#update-name');
    if (updateTagCategoriesName != null) {
        const error = document.querySelector('#name-update-error');

        if (updateTagCategoriesName.value.trim() == '') {
            error.classList.remove('none');
            flag = false;
        }
        else {
            error.classList.add('none');
        }
    }

    const formButtom = document.querySelector('#button-form-update-submit');
    if (flag) {
        formButtom.removeAttribute('disabled');
        formButtom.classList.remove('unactive-button');
    } else {
        formButtom.setAttribute('disabled', 'on');
        formButtom.classList.add('unactive-button');
    }
}


//update-modal show-hidden function
function tagCategoriesUpdate() {
    const updateBlock = document.querySelector('.update-block');

    updateBlock.classList.toggle('none');
}
