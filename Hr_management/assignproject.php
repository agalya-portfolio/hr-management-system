<?php
require_once ('process/dbh.php');
$sql = "SELECT * from `project` ORDER BY pid ASC";
$result = mysqli_query($conn, $sql);

// Group projects by employee ID and limit to 6 per employee
$empProjects = [];
while ($row = mysqli_fetch_assoc($result)) {
    $eid = $row['eid'];
    if (!isset($empProjects[$eid])) {
        $empProjects[$eid] = [];
    }
    if (count($empProjects[$eid]) < 6) {
        $empProjects[$eid][] = $row;
    }
}
?>

<html>
<head>
    <title>Project Status | Admin Panel |Techlume Innovations</title>
    <link rel="stylesheet" type="text/css" href="styleview.css">
</head>
<body>
    <header>
        <nav>
            <h1>Techlume Innovations</h1>
            <ul id="navli">
                <li><a class="homeblack" href="aloginwel.php">HOME</a></li>
                <li><a class="homeblack" href="addemp.php">Add Employee</a></li>
                <li><a class="homeblack" href="viewemp.php">View Employee</a></li>
                <li><a class="homeblack" href="assign.php">Assign Project</a></li>
                <li><a class="homered" href="assignproject.php">Project Status</a></li>
                <li><a class="homeblack" href="salaryemp.php">Salary Table</a></li>
                <li><a class="homeblack" href="empleave.php">Employee Leave</a></li>
				 <li><a class="homeblack" href="dashboard.php">Analytics</a></li>
              

                <li><a class="homeblack" href="alogin.html">Log Out</a></li>
            </ul>
        </nav>
    </header>

    <div class="divider"></div>

    <table>
        <tr>
            <th>Project ID</th>
            <th>Emp. ID</th>
            <th>Project Name</th>
            <th>Due Date</th>
            <th>Submission Date</th>
            <th>Mark</th>
            <th>Status</th>
            <th>Option</th>
        </tr>

        <?php
        foreach ($empProjects as $projects) {
            foreach ($projects as $employee) {
                echo "<tr>";
                echo "<td>".$employee['pid']."</td>";
                echo "<td>".$employee['eid']."</td>";
                echo "<td>".$employee['pname']."</td>";
                echo "<td>".$employee['duedate']."</td>";
                echo "<td>".$employee['subdate']."</td>";
                echo "<td>".$employee['mark']."</td>";
                echo "<td>".$employee['status']."</td>";
                echo "<td><a href=\"mark.php?id=".$employee['eid']."&pid=".$employee['pid']."\">Mark</a></td>";
                echo "</tr>";
            }
        }
        ?>
    </table>
</body>
</html>
