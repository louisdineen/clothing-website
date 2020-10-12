<?php
$conn = mysqli_connect("localhost", "root", "", "website");
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error())
}

$sql = "SELECT Type, Size, SalePrice FROM Clothing WHERE InStock = 'TRUE'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo "Type: " . $row["Type"]. " Size: " . $row["Size"]. " - Price: " . $row["SalePrice"] "<br>";
    }
}
else {
    echo "0 results";
}

$sql = "UPDATE Clothing SET InStock='FALSE' WHERE Type = 'Jumper'";

if (mysqli_query($conn, $sql)) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . mysqli_error($conn);
}

mysqli_close($conn);
?>
