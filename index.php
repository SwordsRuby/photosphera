<?
// require database connection
require_once('database/connect.php');
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Фотосфера</title>
    <link rel="stylesheet" href="">
</head>

<body>
    <!-- header -->
    <?
    require_once('view/components/header.php');
    ?>
    <!-- header -->

    <!-- main -->
    <?
    // require page
    if (isset($_GET['url'])) {
        if ($_GET['url'] === 'catalog') {
            require_once('view/page_catalog.php');
        } elseif ($_GET['url'] === 'admin') {
            if (isset($_SESSION['user_stat']) && $_SESSION['user_stat'] === 'a') {
                require_once('view/page_admin.php');
            } else {
                require_once('view/page_403.php');
            }
        } elseif ($_GET['url'] === 'create') {
            require_once('view/page_create.php');
        } elseif ($_GET['url'] === 'update') {
            require_once('view/page_update.php');
        } elseif ($_GET['url'] === 'img') {
            require_once('view/page_one_img.php');
        } elseif ($_GET['url'] === 'authorization') {
            require_once('view/page_authorization.php');
        } elseif ($_GET['url'] === 'registration') {
            require_once('view/page_registration.php');
        } elseif ($_GET['url'] === 'user') {
            require_once('view/page_user.php');
        } elseif ($_GET['url'] === 'main') {
            require_once('view/page_main.php');
        } else {
            require_once('view/page_404.php');
        }
    } else {
        require_once('view/page_main.php');
    }
    ?>
    <!-- main -->


    <!-- footer -->
    <?
    require_once('view/components/footer.php');
    ?>
    <!-- footer -->
</body>

</html>