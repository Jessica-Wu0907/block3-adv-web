<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bottle</title>
</head>
<body>
    <?php
    require_once 'classes.php';

    $bottle01 = new Bottle("Bbottle", "Red");

    // echo  $bottle01->setBrand("Small bottle");
    // echo  $bottle01->getBrand();

    $bottle01->setColor("pink");
    echo  $bottle01->getColor();
    ?>
    
</body>
</html>