<?php  
include_once "../library.php";
include_once "load.php";

$c = isset($_GET["c"]) ? $_GET["c"] : "home";
$a = isset($_GET["a"]) ? $_GET["a"] : "list";

$c = $c."Controller";
$controller = new $c();
$controller->$a();
?>