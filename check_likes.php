<?php
session_start();
header('Content-Type: application/json');
include('db/dbconnect.php');

$userId = $_SESSION['USER']['user_id'];
$postId = $_POST['postId'];
$stmt = $connection->prepare('SELECT COUNT(*) as like_count FROM likes WHERE post_id = :postId');
$stmt->execute(['postId' => $postId]);
$result = $stmt->fetch(PDO::FETCH_ASSOC);



if ($result['like_count'] == 0) {
    echo json_encode(false);
} else {
    echo json_encode(true);
}



// $sql1 = "SELECT count(*) AS count from `tbl_scholar` WHERE status = 1";
// $result1 = mysqli_query($con, $sql1);
// while ($row1 = mysqli_fetch_assoc($result1)) {

//     $output = $row1['count'];
// }