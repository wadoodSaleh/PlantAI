<?php
// Database connection
$servername = "localhost";
$username = "root";  // Adjust if necessary
$password = "";      // Adjust if necessary
$dbname = "plant_id";  // Replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if file was uploaded without errors
    if (isset($_FILES["fileToUpload"]) && $_FILES["fileToUpload"]["error"] == 0) {
        // Set the upload directory and target file path
        $uploadDir = 'uploads/';
        $targetFile = $uploadDir . 'leaf.jpg'; // Always save as "leaf.jpg"

        // Ensure the uploads directory exists
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777, true); // Creates the directory with full read/write permissions
        }

        // Overwrite any existing file named "leaf.jpg"
        if (!move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $targetFile)) {
            echo "Error uploading file.";
            exit;
        }

        // Call the Python script to run the TensorFlow model
        $command = "python try.py";
        $output = shell_exec($command);

        if ($output === null) {
            echo "Error: Failed to execute Python script.";
        } else {
            echo $output; 
        }
    } else {
        echo "Error: " . $_FILES["fileToUpload"]["error"];
    }
} else {
    echo "Invalid request.";
}

$conn->close();
?>
