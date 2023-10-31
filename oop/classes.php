<?php

class Bottle 
{
    // //properties / fields

    private $brand;
    private $color;
    // private $color = "Green";
    // private $brand = "A Bottle";
    // private $color = "Green";
    // public $bottleType = "Big Bottle";

    //Constructor
    public function __construct($brand,$color = "none")
    {
        $this->brand = $brand;
        $this->color = $color;
       
    }

    //Getter $ Setter methods

    public function getBrand()
    {
        return $this->brand;
    }

    public function setBrand($brand)
    {
        $this->brand = $brand;
    }

    public function getColor()
    {
        return $this->color;
    }

    public function setColor($color)
    {
        $allowedColors = [
            "red",
            "blue",
            "pink",
            "yellow"

        ];

        if (in_array($color, $allowedColors)){
            $this->color = $color;
        }
       
    }

    //Method

    public function getBottleInfo(){
       return "Brand:" . $this->brand . ", Color:" . $this->color;
    }
}

// $bottle01 = new Bottle("Bbottle", "Red");
// $bottle02 = new Bottle("Cbottle");

// echo $bottle01->getBottleInfo();
// echo "<br>";
// echo $bottle01->bottletype;