<nav>
<div class="navbar" style="display : contents">
    <a href="index.php" id="navbrand"> Auto luxe</a>
    <div class="nav-links">
    
        <a href="index.php">
            <button>
                Accueil
            </button>
        </a>

        <a href="cars.php"">
            <button>
                Cars
            </button>
        </a>
    
        <a href="index.php#about_us">
            <button>
                About Us
            </button>
        </a>
        <?php
        session_start();
        if (!isset($_SESSION['user_data'])) {
            echo "<a href='login_page.php'>
                <button>
                    Connexion
                </button>
            </a>";
        }else{
            include("database_connection.php");
            $sql = "select * from users_data where id = '{$_SESSION['user_data']['userID']}';";
            $row = mysqli_fetch_assoc(mysqli_query($conn, $sql));
            if(!$row['role']){
                echo "<a href='admin.php'>
                    <button>
                        Admin
                    </button>
                </a>";
            }
            echo "<a href='order.php'>
                    <button style='padding-left: 20px;padding-right: 20px;padding-bottom: 0px;padding-top: 4px;border-radius: 44px;background-color: cornflowerblue;'>
                        <img src='images/profile.png' alt='account' 
                        style='width: 29px'>
                    </button>
                </a>
                <a href='login_page.php'>
                    <button style='background: #c72727' id='btn-2'>
                        logout 
                    </button>
                </a>
            ";
        }
        ?>
    
    </div>
</div>
</nav>
