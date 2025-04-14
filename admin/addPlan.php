<?php
include('menu.php');
//require('../userdash/php-includes/connect.php');
error_reporting(E_ALL);
ini_set('display_errors', 1);
$success = "";

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $service_id = $_POST['service_id'];
    $product_ids = $_POST['product_ids'] ?? [];

    // Insert selected products into the link table
    foreach ($product_ids as $product_id) {
        $stmt = mysqli_query($con,"INSERT INTO `plans`( `product_id`, `service_id`, `status`) VALUES ( '$service_id', '$product_id',1)");
      
    }

    $success = "Products added to service successfully!";
}

// Fetch all services
$services = mysqli_query($con,"SELECT * FROM `service`");

// Fetch all products
$products = mysqli_query($con,"SELECT * FROM products");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Assign Products to Service</title>
  <style>
    body { font-family: Arial; padding: 30px; background: #f8f8f8; }
    .container {
        margin-top: 100px;
      max-width: 700px;
      margin: auto;
      background: white;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    h2 { text-align: center; margin-bottom: 20px; }
    label { font-weight: bold; display: block; margin-top: 15px; }
    select, button {
      width: 100%;
      padding: 10px;
      border-radius: 6px;
      margin-top: 8px;
      border: 1px solid #ccc;
    }
    .success {
      background: #d4edda;
      color: #155724;
      padding: 10px;
      border-radius: 6px;
      margin-bottom: 15px;
    }
  </style>
</head>
<body>

<div class="container">
  <h2>Add Products to a Service</h2>

  <?php if ($success): ?>
    <div class="success"><?= $success ?></div>
  <?php endif; ?>

  <form method="POST">
    <label for="service_id">Select Service:</label>
    <select name="service_id" required>
      <option value="">-- Choose a service --</option>
      <?php while($row=mysqli_fetch_array($services)): ?>
        <option value="<?= $row['id'] ?>"><?= htmlspecialchars($row['service_name']) ?></option>
      <?php endwhile; ?>
    </select>

    <label for="product_ids">Select Products:</label>
    <select name="product_ids[]" multiple size="6" required>
      <?php while($row=mysqli_fetch_array($products)) : ?>
        <option value="<?= $row['id'] ?>"><?= htmlspecialchars($row['pName']) ?></option>
      <?php endwhile; ?>
    </select>

    <button type="submit">Add Products to Service</button>
  </form>
</div>

</body>
</html>


