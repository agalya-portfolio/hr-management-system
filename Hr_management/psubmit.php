<?php
require_once('process/dbh.php');

$pid = isset($_GET['pid']) ? $_GET['pid'] : '';
$eid = isset($_GET['id']) ? $_GET['id'] : '';

if ($pid != '' && $eid != '') {
    // Get today's date
    $subdate = date("Y-m-d");

    // Update the submission date and status
    $sql = "UPDATE `project` 
            SET `subdate` = '$subdate', `status` = 'Completed' 
            WHERE `pid` = '$pid' AND `eid` = '$eid'";

    if (mysqli_query($conn, $sql)) {
        echo "<script>alert('Project Submitted Successfully ✅');</script>";
        echo "<script>window.location.href = 'empproject.php?id=$eid';</script>";
    } else {
        echo "❌ Error updating record: " . mysqli_error($conn);
    }
} else {
    echo "⚠️ Missing Project ID or Employee ID.";
}
?>
