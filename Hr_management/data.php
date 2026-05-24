<?php
require_once('process/dbh.php');

// Fetch all employees
$empQuery = "SELECT id, firstname, lastname, gender, birthday, dept FROM employee";
$empResult = mysqli_query($conn, $empQuery);

$employees = [];

while ($row = mysqli_fetch_assoc($empResult)) {
    $id = $row['id'];
    $name = $row['firstname'] . " " . $row['lastname'];

    // Calculate Score (total project marks)
    $scoreQuery = "SELECT COALESCE(SUM(mark),0) as totalMarks FROM project WHERE eid = $id";
    $scoreResult = mysqli_fetch_assoc(mysqli_query($conn, $scoreQuery));
    $score = (int)$scoreResult['totalMarks'];

    // Calculate Leave Count
    $leaveQuery = "SELECT COUNT(*) as leaveCount FROM employee_leave WHERE id = $id";
    $leaveResult = mysqli_fetch_assoc(mysqli_query($conn, $leaveQuery));
    $leaveCount = (int)$leaveResult['leaveCount'];

    // Age calculation (Birthday -> years)
    $dob = new DateTime($row['birthday']);
    $now = new DateTime();
    $age = $now->diff($dob)->y;

    $employees[] = [
        "name"       => $name,
        "department" => $row['dept'],
        "gender"     => $row['gender'],
        "age"        => $age,
        "score"      => $score,
        "leaves"     => $leaveCount
    ];
}

// Return JSON response
echo json_encode($employees, JSON_PRETTY_PRINT);
?>
