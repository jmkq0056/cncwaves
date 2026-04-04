<?php
// Health check returns 200 OK
if (isset($_SERVER['HTTP_USER_AGENT']) && strpos($_SERVER['HTTP_USER_AGENT'], 'HealthCheck') !== false) {
    echo 'OK';
    Yii::app()->end();
}
// Single restaurant — redirect straight to menu
header('Location: /chicken-n-chicken');
exit;
?>
