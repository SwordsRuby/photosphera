<!-- header -->
<div class="black-block">
  <!-- class:  black-block -->
  <header class="container flex-space-between">
    <a href="#"> <img src="img/header/logo.svg" alt="" class="logo scale" /></a>

    <nav class="gap-block-20px nav-none">
      <a class="scale" href="#"><img src="img/header/add-image.svg" alt="add-image" /></a>
      <a class="scale" href="#"><img src="img/header/see-image.svg" alt="see-image" /></a>
      <a class="scale" href="#"><img src="img/header/home.svg" alt="home" /></a>
      <a onclick="auth();" class="scale" href="#"><img src="img/header/user.svg" alt="user" /></a>
      <!-- <a class="scale" href="#"
      ><img class="user-img-header" src="img/users/user.png" alt="user"
    /></a> -->
    </nav>

    <div onclick="burgerMenu();" class="burger-menu">
      <div class="menu-line"></div>
      <div class="menu-line"></div>
      <div class="menu-line menu-line-short"></div>
    </div>
  </header>
</div>

<!-- burger -->
<div class="burger none">
  <div class="container burger-block">
    <div class="flex-space-between">
      <a href="#">
        <img src="img/header/logo.svg" alt="" class="logo scale" /></a>

      <div onclick="burgerMenu();" class="burger-menu">
        <div class="menu-line"></div>
        <div class="menu-line"></div>
        <div class="menu-line menu-line-short"></div>
      </div>
    </div>

    <a class="gap-block-10px burger-link" onclick="burgerMenu();" href="#"><img src="img/header/add-image.svg" alt="add-image" />Добавить
      изображение
    </a>
    <a class="gap-block-10px burger-link" onclick="burgerMenu();" href="#"><img src="img/header/see-image.svg" alt="see-image" />Изображения</a>
    <a class="gap-block-10px burger-link" onclick="burgerMenu();" href="#"><img src="img/header/home.svg" alt="home" />Главная</a>
    <a
      class="gap-block-10px burger-link"
      onclick="burgerMenu(); auth();"
      href="#"><img src="img/header/user.svg" alt="user" />Авторизация</a>
    <!-- <a class="gap-block-10px burger-link" onclick="burgerMenu();" href="#"
    ><img
      src="img/users/user.png"
      class="user-img-header"
      alt="user"
    />Цветная Ромашка</a
  > -->
  </div>
</div>
<!-- burger -->

<!-- authorization -->
<div class="modal-block flex-center auth-block none">
  <div onclick="auth();" class="block-for-close"></div>
  <div class="modal-subblock flex-column auth-subblock gap-block-10px">
    <form
      onchange="formAuthVerify();"
      class="modal-form gap-block-10px flex-column"
      method="post">
      <h2 class="modal-block-title">Авторизация</h2>
      <div class="width-100">
        <input
          class="input"
          type="text"
          name="authLogin"
          id="authLogin"
          maxlength="50"
          placeholder="Логин" />
        <p id="login-error" class="input-error-text none">Поле логин пусто</p>
      </div>
      <div class="width-100">
        <input
          class="input"
          type="password"
          id="authPassword"
          maxlength="50"
          name="authPassword"
          placeholder="Пароль" />
        <p id="password-error" class="input-error-text none">
          Поле пароль пусто
        </p>
      </div>
      <input
        class="red-button unactive-button top-modal-button modal-button"
        type="button"
        id="button-form-submit"
        disabled
        onclick="formSubmit(this);"
        value="Войти" />
    </form>
    <button onclick="reg(); auth();" class="black-button modal-button">
      Регистрация
    </button>
  </div>
</div>
<!-- authorization -->

<!-- registration -->
<div class="modal-block flex-center reg-block none">
  <div onclick="reg();" class="block-for-close"></div>
  <div class="modal-subblock flex-column reg-subblock gap-block-10px">
    <form
      onchange="formRegVerify()"
      class="modal-form gap-block-10px flex-column"
      method="post">
      <h2 class="modal-block-title">Регистрация</h2>
      <div class="width-100">
        <input
          class="input"
          type="text"
          name="regLogin"
          id="regLogin"
          maxlength="50"
          placeholder="Логин" />
        <p id="reg-login-error" class="input-error-text none">
          Поле логин пусто
        </p>
      </div>

      <div class="width-100">
        <input
          class="input"
          type="password"
          name="regPassword"
          id="regPassword"
          maxlength="50"
          placeholder="Пароль" />
        <p id="reg-password-error" class="input-error-text none">
          Поле пароль пусто
        </p>
        <p id="reg-password-length-error" class="input-error-text none">
          Пароль должен иметь больше 8 символов
        </p>
      </div>

      <div class="width-100">
        <input
          class="input"
          type="password"
          maxlength="50"
          id="passwordRepeat"
          name="regPasswordRepeat"
          placeholder="Подтвердите пароль" />
        <p id="password-reapeat-error" class="input-error-text none">
          Пароли не совпадают
        </p>
      </div>

      <p class="reg-text">
        Я принимаю условия
        <a class="reg-link" href="docs/termsOfUse.pdf">пользовательского соглашения</a>
        и
        <a class="reg-link" href="docs/privacyPolicy.pdf">политику конфиденциальности</a>
      </p>
      <input
        class="red-button unactive-button top-modal-button modal-button"
        id="reg-button-form-submit"
        type="button"
        disabled
        onclick="formSubmit(this);"
        value="Зарегистрироваться" />
    </form>
  </div>
</div>
<!-- registration -->
<!-- header -->