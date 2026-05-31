<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="stylx.css?v=1"> 
<link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://fonts.googleapis.com/css2?family=Anton+SC&family=Climate+Crisis:YEAR@1979&display=swap" rel="stylesheet">
</head>
<body>
     <?php 
    include("functions.php");
    include("navbar.php");
    include("database_connection.php");
    $sql = "select count(distinct modle) as count from car_info;";
    $modle = mysqli_fetch_assoc(mysqli_query($conn, $sql))["count"];
    $sql = "select count(*) as count from car_info;";
    $cars = mysqli_fetch_assoc(mysqli_query($conn, $sql))["count"];
    $sql = "select count(*) as count from orders where done = 1;";
    $buy = mysqli_fetch_assoc(mysqli_query($conn, $sql))["count"];
    ?>
    <section id='od-sec'>
        <h1> welcome admin </h1>
    </section>
    <section>
        <div id='dash-adm'>
          <h1> dashboard </h1>
          <?php echo"
            <p>{$modle} modele</p>
            <p>{$buy} buy</p>
            <p>{$cars} cars</p>
            ";
            if(isset($_POST["add"])){
              $name =         htmlspecialchars(trim($_POST["name"]));
              $modle =        htmlspecialchars(trim($_POST["modle"]));
              $engine_type =  htmlspecialchars(trim($_POST["engine_type"]));
              $brand =        htmlspecialchars(trim($_POST["brand"]));
              $category =     htmlspecialchars(trim($_POST["category"]));
              $image =        htmlspecialchars(trim($_POST["image"]));
              $description =  htmlspecialchars(trim($_POST["description"]));
              $color =        htmlspecialchars(trim($_POST["color"]));
              $year =         $_POST["year"];
              $sales =        $_POST["sales"];
              $value =        $_POST["value"];
              $quantity =     $_POST["quantity"];
              $sql = "insert into car_info (name, modle, engine_type, brand, category, image, description, color, year, sales, value, quantity) 
              VALUES ('{$name}', '{$modle}', '{$engine_type}', '{$brand}', '{$category}', '{$image}', '{$description}', '{$color}', {$year}, {$sales}, {$value}, {$quantity}, );";
              mysqli_query($conn, $sql);
              $added = true;
            }
            if(isset($_POST["delete"])){
              $id = $_POST["id"];
              $deleted = false;
              $sql = "select id from car_info;";
              $result = mysqli_query($conn, $sql);
              while($row = mysqli_fetch_assoc($result)){
                if($row["id"] == $id){
                  $sql = "delete from car_info where id = {$id};";
                  mysqli_query($conn, $sql);
                  $deleted = true;
                  break;
                }
              }
            }
            
            ;?>
        </div>
    </section>

    
  <div id='od-card'>
    <div id='od-body'>
      
  
    <div id='od-text'>
      <div id='adm-txt'>
        <h1> add car </h1>
        <form action="admin.php" method="post">
          <label>enter the car info</label><br>
          <label for="name">name:</label> 
          <input type="text" id="name" name="name" value="<?php echo isset($_POST['name']) ? htmlspecialchars($_POST['name']) : ''; ?>" required><br>

          <label for="modle">model:</label> 
          <input type="text" id="modle" name="modle" value="<?php echo isset($_POST['modle']) ? htmlspecialchars($_POST['modle']) : ''; ?>" required><br>

          <label for="engine_type">engine type:</label> 
          <input type="text" id="engine_type" name="engine_type" value="<?php echo isset($_POST['engine_type']) ? htmlspecialchars($_POST['engine_type']) : ''; ?>" required><br>

          <label for="category">category:</label> 
          <input type="text" id="category" name="category" value="<?php echo isset($_POST['category']) ? htmlspecialchars($_POST['category']) : ''; ?>" required><br>

          <label for="color">color:</label> 
          <input type="text" id="color" name="color" value="<?php echo isset($_POST['color']) ? htmlspecialchars($_POST['color']) : ''; ?>" required><br>

          <label for="brand">brand:</label> 
          <input type="text" id="brand" name="brand" value="<?php echo isset($_POST['brand']) ? htmlspecialchars($_POST['brand']) : ''; ?>" required><br>

          <label for="year">year:</label> 
          <input type="number" id="year" name="year" value="<?php echo isset($_POST['year']) ? htmlspecialchars($_POST['year']) : '2026'; ?>" required><br>

          <label for="sales">sales:</label> 
          <input type="number" id="sales" name="sales" value="<?php echo isset($_POST['sales']) ? htmlspecialchars($_POST['sales']) : '0'; ?>" required><br>


          <label for="value">value (price):</label> 
          <input type="number" id="value" name="value" min="0" step="100" value="<?php echo isset($_POST['value']) ? htmlspecialchars($_POST['value']) : '0'; ?>" required><br>

          <label for="quantity">quantity:</label> 
          <input type="number" id="quantity" name="quantity" min="0" value="<?php echo isset($_POST['quantity']) ? htmlspecialchars($_POST['quantity']) : '0'; ?>" required><br>

          <label for="description">description:</label> 
          <!-- remove the inline css                      || -->
          <textarea id="description" name="description" style="width: 150px; height: 30px; resize: none;" required><?php echo isset($_POST['description']) ? htmlspecialchars($_POST['description']) : ''; ?></textarea><br>

          <label for="image">image name:</label> 
          <input type="text" id="image" name="image" placeholder="car_name.png" value="<?php echo isset($_POST['image']) ? htmlspecialchars($_POST['image']) : ''; ?>" required><br>

          <input type="submit" name="add" value="add a car">
        </form>
      <div>  
        <?php
        if(isset($_POST["add"]) && isset($added) && !$added){
          echo "<p>car not added</p>";
        }else if(isset($_POST["add"]) && isset($added)){
          echo "<p>car added</p>";
        }
        ?>
    </div>
      <div id='ad-meta'>
      <form action="admin.php" method="post">
          <label for="car_id">car id:</label> 
          <input type="text" id="car_id" name="car_id" value="<?php echo isset($_POST['id']) ? htmlspecialchars($_POST['id']) : ''; ?>" required><br>

        <input type="submit" name="delete" value="delete a car">
      </form>  
      <?php
        if(isset($_POST["delete"]) && isset($deleted)&& !$deleted ){
          echo "<p>car not found</p>";
        }else if(isset($_POST["delete"]) && isset($deleted)){
          echo "<p>car deleted</p>";
        }
      ?>
      </div>
  </div>



<?php include("footer.php");?>
</body>
</html>  