<?php 
$id = isset($_GET['id']) ? $_GET['id'] : '';
require_once('process/dbh.php');

// Get employee name
$sql1 = "SELECT * FROM `employee` WHERE id = '$id'";
$result1 = mysqli_query($conn, $sql1);
$employeen = mysqli_fetch_array($result1);
$empName = $employeen['firstName'];

// Queries
$sql = "SELECT id, firstName, lastName, points FROM employee, rank WHERE rank.eid = employee.id ORDER BY rank.points DESC";
$sql1 = "SELECT pname, duedate FROM project WHERE eid = $id AND status = 'Due'";
$sql2 = "SELECT * FROM employee, employee_leave WHERE employee.id = $id AND employee_leave.id = $id ORDER BY employee_leave.token";
$sql3 = "SELECT * FROM salary WHERE id = $id";

// 🆕 All projects for that employee (for summary)
$sql4 = "SELECT * FROM project WHERE eid = $id";

// Execute all queries
$result = mysqli_query($conn, $sql);
$result1 = mysqli_query($conn, $sql1);
$result2 = mysqli_query($conn, $sql2);
$result3 = mysqli_query($conn, $sql3);
$result4 = mysqli_query($conn, $sql4);

// Project stats count
$totalCompleted = $totalDelayed = $totalPending = $totalPoints = 0;
while ($proj = mysqli_fetch_assoc($result4)) {
    $duedate = strtotime($proj['duedate']);
    $subdate = strtotime($proj['subdate']);

    if ($proj['status'] == 'Completed' || ($proj['status'] == 'Delayed' && $subdate <= $duedate)) {
        // Fixing false delayed labels
        $totalCompleted++;
        $totalPoints += intval($proj['mark']);
    } elseif ($proj['status'] == 'Delayed' && $subdate > $duedate) {
        $totalDelayed++;
    } elseif ($proj['status'] == 'Pending') {
        $totalPending++;
    }
}
?>

<html>
<head>
    <title>Employee Panel | Techlume Innovations</title>
    <link rel="stylesheet" type="text/css" href="styleemplogin.css">
    <link href="https://fonts.googleapis.com/css?family=Lobster|Montserrat" rel="stylesheet">
</head>
<body>
    <header>
        <nav>
            <h1>Techlume Innovations.</h1>
            <ul id="navli">
                <li><a class="homered" href="eloginwel.php?id=<?php echo $id ?>">HOME</a></li>
                <li><a class="homeblack" href="myprofile.php?id=<?php echo $id ?>">My Profile</a></li>
                <li><a class="homeblack" href="empproject.php?id=<?php echo $id ?>">My Projects</a></li>
                <li><a class="homeblack" href="applyleave.php?id=<?php echo $id ?>">Apply Leave</a></li>
                <li><a class="homeblack" href="elogin.html">Log Out</a></li>
            </ul>
        </nav>
    </header>

    <div class="divider"></div>
    <div id="divimg">

        <!-- Leaderboard -->
        <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Employee Leaderboard</h2>
        <table>
            <tr bgcolor="#000">
                <th>Seq.</th>
                <th>Emp. ID</th>
                <th>Name</th>
                <th>Points</th>
            </tr>
            <?php
                $seq = 1;
                while ($employee = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>".$seq."</td>";
                    echo "<td>".$employee['id']."</td>";
                    echo "<td>".$employee['firstName']." ".$employee['lastName']."</td>";
                    echo "<td>".$employee['points']."</td>";
                    echo "</tr>";
                    $seq++;
                }
            ?>
        </table>

        <!-- 📊 Project Summary -->
        <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Project Summary</h2>
        <table>
            <tr>
                <th>Total Completed</th>
                <th>Total Pending</th>
                <th>Total Delayed</th>
                <th>Total Points (From Projects)</th>
            </tr>
            <tr>
                <td><?php echo $totalCompleted ?></td>
                <td><?php echo $totalPending ?></td>
                <td><?php echo $totalDelayed ?></td>
                <td><?php echo $totalPoints ?></td>
            </tr>
        </table>

        <!-- ⏳ Due Projects -->
        <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Due Projects</h2>
        <table>
            <tr>
                <th>Project Name</th>
                <th>Due Date</th>
            </tr>
            <?php
                mysqli_data_seek($result1, 0);
                while ($employee1 = mysqli_fetch_assoc($result1)) {
                    echo "<tr>";
                    echo "<td>".$employee1['pname']."</td>";
                    echo "<td>".$employee1['duedate']."</td>";
                    echo "</tr>";
                }
            ?>
        </table>

        <!-- 💰 Salary -->
        <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Salary Status</h2>
        <table>
            <tr>
                <th>Base Salary</th>
                <th>Bonus</th>
                <th>Total Salary</th>
            </tr>
            <?php
                while ($employee = mysqli_fetch_assoc($result3)) {
                    echo "<tr>";
                    echo "<td>".$employee['base']."</td>";
                    echo "<td>".$employee['bonus']." %</td>";
                    echo "<td>".$employee['total']."</td>";
                    echo "</tr>";
                }
            ?>
        </table>

        <!-- 🏝️ Leave -->
        <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Leave Status</h2>
        <table>
            <tr>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Total Days</th>
                <th>Reason</th>
                <th>Status</th>
            </tr>
            <?php
                while ($employee = mysqli_fetch_assoc($result2)) {
                    $date1 = new DateTime($employee['start']);
                    $date2 = new DateTime($employee['end']);
                    $interval = $date1->diff($date2);

                    echo "<tr>";
                    echo "<td>".$employee['start']."</td>";
                    echo "<td>".$employee['end']."</td>";
                    echo "<td>".$interval->days."</td>";
                    echo "<td>".$employee['reason']."</td>";
                    echo "<td>".$employee['status']."</td>";
                    echo "</tr>";
                }
            ?>
        </table>

    </div>
</body>
</html>
