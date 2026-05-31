<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="stylx.css?v=1"> 
   <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anton+SC&family=Climate+Crisis:YEAR@1979&display=swap" rel="stylesheet">
</head>

<body>
  <?php 
    include("functions.php");
    include("navbar.php");
    session_start();

    if (isset($_SESSION['user_data'])) {
      $user_id = $_SESSION['user_data']['userID'];
    }else{
      $user_id = -1;
    }
  ?>

  <div class="sifou">
       <h3>Ready for a ride</h3>
    </div>  

  <section>
    <?php showTopCars()?>
  </section>
  
  <section>
    <?php showBrands()?>
  </section>

  <section>
    <?php showCategories()?>
  </section>

  <section>
    <div id="about_us">
      <div id="ab.head">
        <h2> about us </h2>
      </div>
      <div>
        <p class="ab-txt">  Auto est votre partenaire de confiance pour l'achat de véhicules neufs et d'occasion en Algérie.
          Depuis notre création, nous mettons tout en œuvre pour offrir à nos clients une expérience d'achat simple,
          transparente et satisfaisante. Notre équipe de professionnels est à votre service pour vous conseiller
          et vous accompagner dans le choix du véhicule qui correspond à vos besoins et à votre budget.
          Qualité, confiance et service client sont les valeurs qui nous définissent..</p><br>
      </div>
    </div>
  </section>
 
</body>

<?php include("footer.php");?>
</body>
</html>