<?php
require_once('process/dbh.php');

// --- Department wise ---
$deptData = [];
$deptQuery = "SELECT dept, COUNT(*) as count FROM employee GROUP BY dept";
$deptResult = mysqli_query($conn, $deptQuery);
while ($row = mysqli_fetch_assoc($deptResult)) {
    $deptData[$row['dept']] = $row['count'];
}

// --- Department wise Gender Split ---
$genderData = [];
$genderQuery = "SELECT dept, gender, COUNT(*) as count FROM employee GROUP BY dept, gender";
$genderResult = mysqli_query($conn, $genderQuery);
while ($row = mysqli_fetch_assoc($genderResult)) {
    $genderData[$row['dept']][$row['gender']] = $row['count'];
}
$depts = array_keys($deptData);
$maleCounts = [];
$femaleCounts = [];
foreach ($depts as $d) {
    $maleCounts[] = $genderData[$d]['Male'] ?? 0;
    $femaleCounts[] = $genderData[$d]['Female'] ?? 0;
}

// --- Age groups ---
$ageGroups = ["<25"=>0, "25-34"=>0, "35-44"=>0, "45-54"=>0, "55+"=>0];
$ageQuery = "SELECT birthday FROM employee";
$ageResult = mysqli_query($conn, $ageQuery);
$currentYear = date("Y");
while ($row = mysqli_fetch_assoc($ageResult)) {
    $age = $currentYear - date("Y", strtotime($row['birthday']));
    if ($age < 25) $ageGroups["<25"]++;
    else if ($age < 35) $ageGroups["25-34"]++;
    else if ($age < 45) $ageGroups["35-44"]++;
    else if ($age < 55) $ageGroups["45-54"]++;
    else $ageGroups["55+"]++;
}

// --- Leave Analysis (Monthly) ---
$leaveData = array_fill(1, 12, 0);
$leaveQuery = "SELECT MONTH(start) as month, COUNT(*) as leaveCount FROM employee_leave GROUP BY MONTH(start)";
$leaveResult = mysqli_query($conn, $leaveQuery);
while ($row = mysqli_fetch_assoc($leaveResult)) {
    $leaveData[$row['month']] = $row['leaveCount'];
}

// --- Top 5 Employees (Only Points) ---
$topEmp = [];
$topQuery = "SELECT e.id, e.firstname, e.lastname, r.points
             FROM employee e 
             JOIN rank r ON r.eid = e.id
             ORDER BY r.points DESC
             LIMIT 5";
$topResult = mysqli_query($conn, $topQuery);
while($row = mysqli_fetch_assoc($topResult)){
    $topEmp[] = [
        "name" => $row['firstname']." ".$row['lastname'],
        "points" => $row['points']
    ];
}
$topEmp = array_slice($topEmp, 0, 5);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Employee Dashboard</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #c6bcd0ff;
            margin: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #4a148c;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 25px;
        }
        .chart-container {
            background: #fff;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 6px 14px rgba(0,0,0,0.15);
        }
        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 15px;
        }
        canvas {
            width: 100% !important;
            height: 400px !important;
        }
    </style>
</head>
<body>
    <h2>📊 Employee Dashboard</h2>
    <div class="grid">
        <div class="chart-container">
            <h3>Department wise Employees</h3>
            <canvas id="deptChart"></canvas>
        </div>
        <div class="chart-container">
            <h3>Department-wise Gender Split</h3>
            <canvas id="genderChart"></canvas>
        </div>
        <div class="chart-container">
            <h3>Age Groups</h3>
            <canvas id="ageChart"></canvas>
        </div>
        <div class="chart-container">
            <h3>Leave Analysis (Monthly)</h3>
            <canvas id="leaveChart"></canvas>
        </div>
        <div class="chart-container">
            <h3>Top 5 Employees (Performance)</h3>
            <canvas id="topChart"></canvas>
        </div>
    </div>

<script>
const commonOptions = {
    plugins: {
        legend: { labels: { color: 'black', font: { size: 13 } } }
    }
};

// Department Pie
new Chart(document.getElementById('deptChart'), {
    type: 'pie',
    data: {
        labels: <?= json_encode(array_keys($deptData)) ?>,
        datasets: [{
            data: <?= json_encode(array_values($deptData)) ?>,
            backgroundColor:[
                '#c8844fff','#b9c768ff','#50b550ff','#bc74a4ff',
                '#4d5b90ff','#8c564b','#e377c2','#17becf'
            ]
        }]
    },
    options: commonOptions
});

// Gender Split Bar (Stacked)
new Chart(document.getElementById('genderChart'), {
    type: 'bar',
    data: {
        labels: <?= json_encode($depts) ?>,
        datasets: [
            {label:'Male', data: <?= json_encode($maleCounts) ?>, backgroundColor:'#1f77b4'},
            {label:'Female', data: <?= json_encode($femaleCounts) ?>, backgroundColor:'#d62728'}
        ]
    },
    options: {...commonOptions, scales:{x:{stacked:true}, y:{stacked:true, beginAtZero:true}}}
});

// Age Groups Bar
new Chart(document.getElementById('ageChart'), {
    type: 'bar',
    data: {
        labels: <?= json_encode(array_keys($ageGroups)) ?>,
        datasets: [
            {label:'Employees', data: <?= json_encode(array_values($ageGroups)) ?>, backgroundColor:'#b33f96ff'}
        ]
    },
    options: {...commonOptions, scales:{y:{beginAtZero:true}}}
});

// Leave Analysis Line
new Chart(document.getElementById('leaveChart'), {
    type: 'line',
    data: {
        labels:['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],
        datasets:[{
            label:'Leaves',
            data: <?= json_encode(array_values($leaveData)) ?>,
            borderColor:'#730707ff',
            backgroundColor:'rgba(82, 192, 207, 0.3)',
            fill:true,
            tension:0.3
        }]
    },
    options: {...commonOptions, scales:{y:{beginAtZero:true}}}
});

// Top 5 Employees → Horizontal Stacked Bar
new Chart(document.getElementById('topChart'), {
    type: 'bar',
    data: {
        labels: <?= json_encode(array_column($topEmp,'name')) ?>,
        datasets: [{
            label: 'Points',
            data: <?= json_encode(array_column($topEmp,'points')) ?>,
            backgroundColor: ['#2c3abab9']
        }]
    },
    options: {
        ...commonOptions,
        indexAxis: 'y', // horizontal bar
        scales: {
            x: {beginAtZero: true, stacked: true},
            y: {stacked: true}
        }
    }
});
</script>
</body>
</html>
