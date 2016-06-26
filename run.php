<?php

$code = $_GET["code"];

if ($code == "") {
   echo "Error. No code found.";
}

if (strpos($code, 'info') !== false) {
    echo 'Welcome to JuniorScript version 1.0! ';
}

if (strpos($code, 'exit') !== false) {
    header("Location: /juniorscript.html");
die();
}

if (strpos($code, 'help') !== false) {
    echo "Welcome to JuniorScript! To list all commands, type listall.";
}

if (strpos($code, 'listall') !== false) {
    echo "info, exit, help, listall";
}


?>
