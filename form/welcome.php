<html>
<head>
   <title>
      Welcome page
   </title>
   <link rel="stylesheet" href="style.css">
<body>
    <div class="box">
           Welcome <?php echo $_POST["name"]; ?><br>
           Your email address is: <?php echo $_POST["email"]; ?>
    </div>
</body>
</html> 
