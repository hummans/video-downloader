<?php
$database["host"] = "localhost";
$database["name"] = "videodownloader";
$database["user"] = "root";
$database["password"] = "";
require_once __DIR__ . "/../admin/classes/database.class.php";
database::connect("mysql:host=" . $database["host"] . ";dbname=" . $database["name"] . ";charset=utf8mb4", $database["user"], $database["password"]);