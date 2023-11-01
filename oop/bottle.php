<?php
ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);

class Bottle
{
    public $color;
    public $capacity;
    public $weignt;
}

$jessicabottle = new Bottle();
$jessicabottle->capacity = 0;
$jessicabottle->weignt = 10;

echo $jessicabottle->capacity;
echo $jessicabottle->weignt;






?>
