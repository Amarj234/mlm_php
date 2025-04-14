<?php
 include('menu.php');
//require('../userdash/php-includes/connect.php');
error_reporting(E_ALL);
ini_set('display_errors', 1);

$success = "";
if (isset($_POST['submit'])) {
    $name = $_POST['name'] ?? '';
    $price = $_POST['price'] ?? '';
    $description = $_POST['description'] ?? '';
    $available = $_POST['available'] ?? '';
    $category = $_POST['category'] ?? '';
    $imagePath = '';

    // Handle picture upload
      if (!empty($_FILES['picture']['name'])) {
        $targetDir = "../userdash/products/";
        $targetDir1 = "userdash/products/";
        $imageName = basename($_FILES["picture"]["name"]);

        $uniq=uniqid();
        $targetFile = $targetDir . $uniq . "_" . $imageName;
        $targetFile1 = $targetDir1 . $uniq . "_" . $imageName;


        if (move_uploaded_file($_FILES["picture"]["tmp_name"], $targetFile)) {
            $imagePath = $targetFile;
            $imagePath1 = $targetFile1;
        }
    }

    // Save to database
    $stmt = "INSERT INTO products (pName, price, description, available, category, picture) VALUES ( '$name', '$price', '$description', '$available','$category', '$imagePath1')";

 $ch=  mysqli_query($con,$stmt);

    if ($ch) {
        echo '<script>window.location.assign("product.php");</script>';
        $success = "Product created successfully!";
    } else {
        $success = "Error: " . $ch;
    }
    
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Create Product</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      padding: 30px;
      background: #f1f1f1;
    }
 
    h2 { text-align: center; }
    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
    }
    input, textarea, select {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border-radius: 6px;
      border: 1px solid #ccc;
    }
    button {
      margin-top: 20px;
      width: 100%;
      padding: 12px;
      background-color: #28a745;
      color: white;
      border: none;
      border-radius: 6px;
      font-size: 16px;
    }
    .success {
      background-color: #d4edda;
      color: #155724;
      padding: 10px;
      margin-top: 20px;
      border-radius: 6px;
    }
  </style>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
    <!-- Bootstrap Core Css -->
    <link href="../userdash/dplugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="../userdash/dplugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="../userdash/dplugins/animate-css/animate.css" rel="stylesheet" />

    <!--WaitMe Css-->
    <link href="../userdash/dplugins/waitme/waitMe.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="../userdash/dcss/style.css" rel="stylesheet">

    <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
    <link href="../userdash/dcss/themes/all-themes.css" rel="stylesheet" />
</head>
<body>
   <section class="content">
        <div class="container-fluid">

  <div class="row">
<div class="form-container">
  <h2>Create Product</h2>

  <?php if ($success): ?>
    <div class="success"><?= $success ?></div>
  <?php endif; ?>

  <form method="POST" enctype="multipart/form-data">
    <label for="name">Product Name</label>
    <input type="text" name="name" required>

    <label for="price">Price per Piece ($)</label>
    <input type="number" name="price" step="0.01" required>

    <label for="description">Description</label>
    <textarea name="description" rows="4" required></textarea>

    <label for="available">Available Quantity</label>
    <input type="number" name="available" required>

    <label for="category">Category</label>
    <select name="category" required>
      <option value="">Select category</option>
      <option value="Electronics">Electronics</option>
      <option value="Clothing">Clothing</option>
      <option value="Books">Books</option>
      <option value="Food">Food</option>
      <option value="Other">Other</option>
    </select>

    <label for="picture">Product Picture</label>
    <input type="file" name="picture" accept="image/*" required>

    <button name="submit" type="submit">Create Product</button>
  </form>
</div>

</div>
</div>
</section>


</body>
</html>

<?php $con->close(); ?>
