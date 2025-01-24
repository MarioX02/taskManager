<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "principal";

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$tk_title = $_POST['tk_title'];
$tk_user_id = $_POST['tk_user_id'];
$tk_description = $_POST['tk_description'];

// Insertar los datos en la tabla
$sql = "INSERT INTO task (tk_title, tk_user_id, tk_description) VALUES ('$tk_title', '$tk_user_id', '$tk_description')";

if ($conn->query($sql) === TRUE) {
    echo "Tarea guardada con éxito.";
    // Redirigir al usuario de vuelta al formulario
    header("Location: index.html");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>