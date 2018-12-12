<?php
require '../init/init.php';
session_unset();
session_regenerate_id(true);
header("Location: ./index.php");
?>