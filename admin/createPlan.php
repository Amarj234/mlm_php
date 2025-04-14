<?php 
include('menu.php');
//require('../userdash/php-includes/connect.php');
error_reporting(E_ALL);
ini_set('display_errors', 1);

?> 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <title>Create and Show Service</title>
  <style>

    h2 {
      text-align: center;
    }
    label {
      display: block;
      margin-top: 15px;
      font-weight: bold;
    }
    input, textarea {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 6px;
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
      cursor: pointer;
    }
    button:hover {
      background-color: #8704ee;
    }
    .service-preview {
      margin-top: 40px;
      padding: 20px;
      border: 2px dashed #ccc;
      border-radius: 10px;
    }
    .service-preview img {
      max-width: 100%;
      margin-top: 10px;
      border-radius: 10px;
    }
 table {
      width: 100%;
      border-collapse: collapse;
      background: white;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
    th, td {
      padding: 12px 15px;
      border: 1px solid #ddd;
      text-align: left;
    }
    th {
      background-color: #8704ee;
      color: white;
    }
    img {
      max-width: 100px;
      border-radius: 6px;
    }

  </style>

<?php

if (isset($_POST['submit'])) {
  
    $name = $_POST['serviceName'] ?? '';
    $description = $_POST['description'] ?? '';
    $price = $_POST['price'] ?? '';
    $imagePath = '';
    $imagePath1 = '';

    if (!empty($_FILES['image']['name'])) {
        $targetDir = "../userdash/dimages/";
        $targetDir1 = "userdash/dimages/";
        $imageName = basename($_FILES["image"]["name"]);

        $uniq=uniqid();
        $targetFile = $targetDir . $uniq . "_" . $imageName;
        $targetFile1 = $targetDir1 . $uniq . "_" . $imageName;


        if (move_uploaded_file($_FILES["image"]["tmp_name"], $targetFile)) {
            $imagePath = $targetFile;
            $imagePath1 = $targetFile1;
        }
    }
$sql="INSERT INTO `service`( `service_name`, `price`, `description`, `image`) VALUES ('$name','$price','$description','$imagePath1')";
$query=mysqli_query($con,$sql);

if($query){
    echo "add Success";
}


}
?>



</head>
<body>

    <section class="content">
        <div class="container-fluid">

  <div class="row">
    <h2>Create a Service</h2>
    <form method="POST" id="serviceForm" enctype="multipart/form-data">
      <label for="serviceName">Service Name</label>
      <input type="text" name="serviceName" required>

      <label for="description">Service Description</label>
      <textarea name="description" rows="4" required></textarea>

      <label for="price">Price ($)</label>
      <input type="number" name="price" step="0.01" required>

      <label for="image">Service Image</label>
      <input type="file" name="image" accept="image/*" required>
<br>
      <input type="submit" name="submit" class="btn btn-block btn-lg bg-pink waves-effect button"  value="Create">
    </form>
<h2>Service List</h2>

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Service Name</th>
      <th>Description</th>
      <th>Price ($)</th>
      <th>Image</th>
    </tr>
  </thead>
  <tbody>


    <?php
    $result = mysqli_query($con, "SELECT * FROM `service`");
    
    if ($result && $result->num_rows > 0): ?>
      <?php while ($row = $result->fetch_assoc()): ?>
        <tr>
          <td><?= $row['id'] ?></td>
          <td><?= htmlspecialchars($row['service_name']) ?></td>
          <td><?= htmlspecialchars($row['description']) ?></td>
          <td><?= number_format($row['price'], 2) ?></td>
          <td>
            <?php if (!empty($row['image'])): ?>
              <img src="../<?= $row['image'] ?>" alt="Service Image">
            <?php else: ?>
              No Image
            <?php endif; ?>
          </td>
        </tr>
      <?php endwhile; ?>
    <?php else: ?>
      <tr>
        <td colspan="5">No services found.</td>
      </tr>
    <?php endif; ?>
  </tbody>
</table>
  </div>

</div>
</section>



  <!-- <script>
    document.getElementById('serviceForm').addEventListener('submit', function(e) {
      e.preventDefault();

      const name = document.getElementById('serviceName').value;
      const description = document.getElementById('description').value;
      const price = document.getElementById('price').value;
      const imageFile = document.getElementById('image').files[0];

      document.getElementById('previewName').textContent = name;
      document.getElementById('previewDescription').textContent = description;
      document.getElementById('previewPrice').textContent = parseFloat(price).toFixed(2);

      if (imageFile) {
        const reader = new FileReader();
        reader.onload = function(event) {
          document.getElementById('previewImage').innerHTML = `<img src="${event.target.result}" alt="Service Image">`;
        };
        reader.readAsDataURL(imageFile);
      }

      document.getElementById('preview').style.display = 'block';
    });
  </script> -->

</body>
</html>
