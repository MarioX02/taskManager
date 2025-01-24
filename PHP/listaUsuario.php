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

// Consulta para obtener los usuarios
$sql = "SELECT us_id, us_name, us_lastname FROM user";
$result = $conn->query($sql);

// Generar las opciones dinámicamente
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<option value='" . $row['us_id'] . "'>" 
            . htmlspecialchars($row['us_name']) . " " 
            . htmlspecialchars($row['us_lastname']) . "</option>";
    }
} else {
    echo "<option disabled>No hay usuarios disponibles</option>";
}

// Cerrar conexión
$conn->close();
?>
