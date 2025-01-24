<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "principal";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta para obtener las tareas
$sql = "SELECT tk_id, tk_user_id, tk_title, tk_description, tk_status FROM task";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Resultado de la Tabla de tareas
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . htmlspecialchars($row['tk_id']) . "</td>
                <td>" . htmlspecialchars($row['tk_user_id']) . "</td>
                <td>" . htmlspecialchars($row['tk_title']) . "</td>
                <td>" . htmlspecialchars($row['tk_description']) . "</td>
                <td>" . htmlspecialchars($row['tk_status']) . "</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='5'>No se encontraron tareas.</td></tr>";
}

// Cerrar conexión
$conn->close();
?>