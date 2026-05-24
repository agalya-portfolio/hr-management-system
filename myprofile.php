<?php
require_once ('process/dbh.php');

// Get Employee ID from URL
$id = (isset($_GET['id']) ? $_GET['id'] : 0);

// Fetch Employee Data
$sql = "SELECT * FROM `employee` WHERE id=$id";
$result = mysqli_query($conn, $sql);

// Fetch Salary Data
$sql2 = "SELECT total FROM `salary` WHERE id=$id";
$result2 = mysqli_query($conn , $sql2);

$empS = "Not Assigned"; // 👈 default to avoid warning
if ($result2 && mysqli_num_rows($result2) > 0) {
    $salary = mysqli_fetch_assoc($result2);
    $empS = $salary['total'];
}

if ($result) {
    while ($res = mysqli_fetch_assoc($result)) {
        $firstname = $res['firstName'];
        $lastname  = $res['lastName'];
        $email     = $res['email'];
        $contact   = $res['contact'];
        $address   = $res['address'];
        $gender    = $res['gender'];
        $birthday  = $res['birthday'];
        $nid       = $res['nid'];
        $dept      = $res['dept'];
        $degree    = $res['degree'];
        $pic       = $res['pic']; 
    }
}
?>


<html>
<head>
  <title>My Profile | Techlume Innovations</title>
  <!-- Icons font CSS-->
  <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <!-- Font special for pages-->
  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
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
        <li><a class="homeblack" href="eloginwel.php?id=<?php echo $id; ?>">HOME</a></li>
        <li><a class="homered" href="myprofile.php?id=<?php echo $id; ?>">My Profile</a></li>
        <li><a class="homeblack" href="empproject.php?id=<?php echo $id; ?>">My Projects</a></li>
        <li><a class="homeblack" href="applyleave.php?id=<?php echo $id; ?>">Apply Leave</a></li>
        <li><a class="homeblack" href="elogin.html">Log Out</a></li>
      </ul>
    </nav>
  </header>
  
  <div class="divider"></div>

  <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
    <div class="wrapper wrapper--w680">
      <div class="card card-1">
        <div class="card-heading"></div>
        <div class="card-body">
          <h2 class="title">My Info</h2>
          <form method="POST" action="myprofileup.php?id=<?php echo $id; ?>">

            <div class="row row-space">
              <div class="col-2">
                <div class="input-group">
                  <p>First Name</p>
                  <input class="input--style-1" type="text" name="firstName" value="<?php echo $firstname; ?>" readonly>
                </div>
              </div>
              <div class="col-2">
                <div class="input-group">
                  <p>Last Name</p>
                  <input class="input--style-1" type="text" name="lastName" value="<?php echo $lastname; ?>" readonly>
                </div>
              </div>
            </div>

            <div class="input-group">
              <p>Email</p>
              <input class="input--style-1" type="email" name="email" value="<?php echo $email; ?>" readonly>
            </div>

            <div class="row row-space">
              <div class="col-2">
                <div class="input-group">
                  <p>Date of Birth</p>
                  <input class="input--style-1" type="text" name="birthday" value="<?php echo $birthday; ?>" readonly>
                </div>
              </div>
              <div class="col-2">
                <div class="input-group">
                  <p>Gender</p>
                  <input class="input--style-1" type="text" name="gender" value="<?php echo $gender; ?>" readonly>
                </div>
              </div>
            </div>
            
            <div class="input-group">
              <p>Contact Number</p>
              <input class="input--style-1" type="number" name="contact" value="<?php echo $contact; ?>" readonly>
            </div>

            <div class="input-group">
              <p>NID</p>
              <input class="input--style-1" type="number" name="nid" value="<?php echo $nid; ?>" readonly>
            </div>

            <div class="input-group">
              <p>Address</p>
              <input class="input--style-1" type="text" name="address" value="<?php echo $address; ?>" readonly>
            </div>

            <div class="input-group">
              <p>Department</p>
              <input class="input--style-1" type="text" name="dept" value="<?php echo $dept; ?>" readonly>
            </div>

            <div class="input-group">
              <p>Degree</p>
              <input class="input--style-1" type="text" name="degree" value="<?php echo $degree; ?>" readonly>
            </div>

            <div class="input-group">
              <p>Total Salary</p>
              <input class="input--style-1" type="text" name="salary" value="<?php echo $empS; ?>" readonly>
            </div>

            <input type="hidden" name="id" value="<?php echo $id; ?>">

            <div class="p-t-20">
              <button class="btn btn--radius btn--green" name="send">Update Info</button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
