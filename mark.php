<?php
require_once ('process/dbh.php');

if(isset($_POST['update']))
{
  $eid = mysqli_real_escape_string($conn, $_POST['eid']);
  $pid = mysqli_real_escape_string($conn, $_POST['pid']);
  $mark = mysqli_real_escape_string($conn, $_POST['mark']);

  // 1. Update mark for this project
  mysqli_query($conn, "UPDATE `project` SET `mark`='$mark' WHERE eid=$eid AND pid=$pid");

  // 2. Recalculate total marks for this employee
  $sqlTotal = "SELECT SUM(mark) as totalMarks, COUNT(pid) as projectCount 
               FROM project WHERE eid=$eid";
  $resTotal = mysqli_query($conn, $sqlTotal);
  $rowTotal = mysqli_fetch_assoc($resTotal);
  $totalMarks = $rowTotal['totalMarks'];
  $projectCount = $rowTotal['projectCount'];

  // 3. Get max project count among all employees
  $sqlMax = "SELECT MAX(cnt) as maxProjects 
             FROM (SELECT COUNT(pid) as cnt FROM project GROUP BY eid) as t";
  $resMax = mysqli_query($conn, $sqlMax);
  $rowMax = mysqli_fetch_assoc($resMax);
  $maxProjects = $rowMax['maxProjects'];

  // 4. Normalize points (scale 0–100 based on maxProjects)
  $normalizedPoints = 0;
  if($maxProjects > 0){
      $normalizedPoints = ($totalMarks / ($maxProjects * 100)) * 100;
  }

  // Optional: Round to 2 decimal places
  $normalizedPoints = round($normalizedPoints, 2);

  // 5. Update rank table
  mysqli_query($conn, "UPDATE `rank` SET `points`='$normalizedPoints' WHERE eid=$eid");

  // 6. Update salary table (bonus = normalized points)
  $sqlSalary = "SELECT base FROM salary WHERE id=$eid";
  $resSalary = mysqli_query($conn, $sqlSalary);
  $rowSalary = mysqli_fetch_assoc($resSalary);
  $base = $rowSalary['base'];

  $bonus = $normalizedPoints; 
  $totalSalary = $base + ($bonus * $base) / 100;

  mysqli_query($conn, "UPDATE `salary` SET `bonus`='$bonus', `total`='$totalSalary' WHERE id=$eid");

  // 7. Redirect back
  echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.location.href='assignproject.php';
  </SCRIPT>");
}
?>

<?php
  $id = (isset($_GET['id']) ? $_GET['id'] : '');
  $pid = (isset($_GET['pid']) ? $_GET['pid'] : '');
  $sql1 = "SELECT pid, project.eid, project.pname, project.duedate, project.subdate, project.mark, rank.points, employee.firstName, employee.lastName, salary.base, salary.bonus, salary.total 
           FROM project, rank, employee, salary  
           WHERE project.eid = $id AND project.pid = $pid 
           AND project.eid = rank.eid 
           AND salary.id = project.eid 
           AND employee.id = project.eid 
           AND employee.id = rank.eid";
  $result1 = mysqli_query($conn, $sql1);
  if($result1){
    while($res = mysqli_fetch_assoc($result1)){
      $pname = $res['pname'];
      $duedate = $res['duedate'];
      $subdate = $res['subdate'];
      $firstName = $res['firstName'];
      $lastName = $res['lastName'];
      $mark = $res['mark'];
      $points = $res['points'];
      $base = $res['base'];
      $bonus = $res['bonus'];
      $total = $res['total'];
    }
  }
?>

<html>
<head>
  <title>Project Mark | Techlume Innovations</title>
  <!-- Icons font CSS-->
  <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <!-- Font special for pages-->
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
  <!-- Vendor CSS-->
  <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
  <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
  <!-- Main CSS-->
  <link href="css/main.css" rel="stylesheet" media="all">
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
        <li><a class="homeblack" href="alogin.html">Log Out</a></li>
      </ul>
    </nav>
  </header>
  
  <div class="divider"></div>

  <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
    <div class="wrapper wrapper--w680">
      <div class="card card-1">
        <div class="card-heading"></div>
        <div class="card-body">
          <h2 class="title">Project Mark</h2>
          <form id="registration" action="mark.php" method="POST">
            <div class="input-group">
              <p>Project Name</p>
              <input class="input--style-1" type="text" name="pname" value="<?php echo $pname;?>" readonly>
            </div>
            <div class="input-group">
              <p>Employee Name</p>
              <input class="input--style-1" type="text" name="firstName" value="<?php echo $firstName;?> <?php echo $lastName;?>" readonly>
            </div>
            <div class="row row-space">
              <div class="col-2">
                <div class="input-group">
                  <p>Due Date</p>
                  <input class="input--style-1" type="text" name="duedate" value="<?php echo $duedate;?>" readonly>
                </div>
              </div>
              <div class="col-2">
                <div class="input-group">
                  <p>Submission Date</p>
                  <input class="input--style-1" type="text" name="subdate" value="<?php echo $subdate;?>" readonly>
                </div>
              </div>
            </div>
            <div class="input-group">
              <p>Assign Mark</p>
              <input class="input--style-1" type="text" name="mark" value="<?php echo $mark;?>">
            </div>
            <input type="hidden" name="eid" value="<?php echo $id;?>">
            <input type="hidden" name="pid" value="<?php echo $pid;?>">
            <input type="hidden" name="points" value="<?php echo $points;?>">
            <input type="hidden" name="base" value="<?php echo $base;?>">
            <input type="hidden" name="bonus" value="<?php echo $bonus;?>">
            <input type="hidden" name="total" value="<?php echo $total;?>">
            <div class="p-t-20">
              <button class="btn btn--radius btn--green" type="submit" name="update">Assign Mark</button>
            </div>
          </form>
          <br>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
