<h2>All the Dishes</h2>

<div class="container">
  <div class="presentcards">
    <?php

    if ($dishes) {
      foreach ($dishes as $dish) {
        echo "

      <div class='card card-dish'>
 
  <div class='card-body' >
 
   <h3 class='card-title'>" . $dish['dishID'] . ' ' . $dish['dishName'] . "</h3>
    <p class='card-text'>" . $dish['dishDescription'] . "</p>
 </div>
  <div class='card-header'>
  <form method='POST'>
                                <input type='hidden' name='dishID' value='" . $dish['dishID'] . "'>
                                <div class='button-container'>
                                <input type='submit' name='editDish' value='Edit' class='btn' style='background-color: green'>


                                   
                                    <input type='submit' name='deleteDish' value='Delete'  class='btn btn-danger'>
                                </div>
                            </form>
  </div>
 </div>
      ";
       
    
      }
    } else {
      echo 'No dish found';
    }
    ?>
  </div>

</div>