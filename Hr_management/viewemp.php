<?php
require_once('process/dbh.php');

// Get employee details + rank points (LEFT JOIN to include all employees)
$sql = "SELECT employee.*, IFNULL(rank.points, 0) as points 
        FROM employee 
        LEFT JOIN rank ON employee.id = rank.eid";

$result = mysqli_query($conn, $sql);
?>

<html>
<head>
	<title>View Employee | Admin Panel | Techlume Innovations</title>
	<link rel="stylesheet" type="text/css" href="styleview.css">
</head>
<body>
	<header>
		<nav>
			<h1>Techlume Innovations</h1>
			<ul id="navli">
				<li><a class="homeblack" href="aloginwel.php">HOME</a></li>
				<li><a class="homeblack" href="addemp.php">Add Employee</a></li>
				<li><a class="homered" href="viewemp.php">View Employee</a></li>
				<li><a class="homeblack" href="assign.php">Assign Project</a></li>
				<li><a class="homeblack" href="assignproject.php">Project Status</a></li>
				<li><a class="homeblack" href="salaryemp.php">Salary Table</a></li>
				<li><a class="homeblack" href="empleave.php">Employee Leave</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>

	<table>
		<tr>
			<th>Emp. ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Birthday</th>
			<th>Gender</th>
			<th>Contact</th>
			<th>NID</th>
			<th>Address</th>
			<th>Department</th>
			<th>Degree</th>
			<th>Points</th>
			<th>Options</th>
		</tr>

		<?php
			if (mysqli_num_rows($result) > 0) {
				while ($employee = mysqli_fetch_assoc($result)) {
					$pic = !empty($employee['pic']) ? $employee['pic'] : 'images/default.png';
					echo "<tr>";
					echo "<td>".$employee['id']."</td>";
					echo "<td>".$employee['firstName']." ".$employee['lastName']."</td>";
					echo "<td>".$employee['email']."</td>";
					echo "<td>".$employee['birthday']."</td>";
					echo "<td>".$employee['gender']."</td>";
					echo "<td>".$employee['contact']."</td>";
					echo "<td>".$employee['nid']."</td>";
					echo "<td>".$employee['address']."</td>";
					echo "<td>".$employee['dept']."</td>";
					echo "<td>".$employee['degree']."</td>";
					echo "<td>".$employee['points']."</td>";
					echo "<td>
							<a href='edit.php?id={$employee['id']}'>Edit</a> |
							<a href='delete.php?id={$employee['id']}' onclick=\"return confirm('Are you sure you want to delete this employee?');\">Delete</a>
						</td>";
					echo "</tr>";
				}
			} else {
				echo "<tr><td colspan='13'>No Employees Found</td></tr>";
			}
		?>
	</table>
</body>
</html>
