<?
try {
    $dsn = 'mysql:host=MySQL-8.2;dbname=photospheraDB;charset=utf8;';
    $DB_username = 'root';
    $DB_password = '';
    $sql = new PDO($dsn, $DB_username, $DB_password);
} catch (PDOException $e) {
    die($e->getMessage());
}
