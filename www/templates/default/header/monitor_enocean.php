<?php 

$request =  new Api();
$request -> add_request('confMenuProtocol');
$result  =  $request -> send_request();

echo '<title>'._('Monitor enocean').'</title>';

$menuProtocol = $result->confMenuProtocol;

?>