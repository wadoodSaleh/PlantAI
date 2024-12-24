<?php
session_start(); // Start the session at the beginning

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
            $_SESSION['output'] = "Error uploading file.";
            header('Location: result.php');
            exit;
        }

        // Call the Python script to run the TensorFlow model
        $command = "python try.py";
        $output = shell_exec($command);

        if ($output === null) {
            $_SESSION['output'] = "Error: Failed to execute Python script.";
        } else {
            $_SESSION['output'] = $output;
        }
        
        // Redirect to result.php to display the output
        header('Location: result.php');
        exit;
    } else {
        $_SESSION['output'] = "Error: " . $_FILES["fileToUpload"]["error"];
        header('Location: result.php');
        exit;
    }
} else {
    $_SESSION['output'] = "Invalid request.";
    header('Location: result.php');
    exit;
}
?>
