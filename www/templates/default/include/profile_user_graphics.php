<?php 

include('profile-menu.php');

echo '
<div class="col-xs-10 col-xs-offset-2 navbar navbar-inverse navbar-fixed-top save-navbar">';
echo '
	<div id="user-graphic-menu" class="navbar-brand">
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<select class="selectpicker span2" id="selectFloor-0" data-size="10"
					onchange="listRoomsOfFloor(0, 0)">
				<option value="0">'._('No floor selected').'</option>';
foreach ($floorallowed as $floor) {
	echo '<option value="'.$floor->floor_id.'">'.$floor->floor_name.'</option>';
}
echo '
			</select>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<select class="selectpicker span2" id="selectRoom-0" data-size="10"
		        	onchange="listDeviceOfRoom()">
				<option value="0">'._('No floor').'</option>
			</select>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<select class="selectpicker span2" id="selectDevice" data-size="10"
		    	    onchange="listOptionOfDevice()">
				<option value="0">'._('No room').'</option>
			</select>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<select class="selectpicker span2" id="selectOption" data-size="10"
		        	onchange="">
				<option value="0">'._('No device selected').'</option>
			</select>
		</div>
	</div>
</div>';

echo '<script type="text/javascript">

	$(document).ready(function(){
		activateMenuElem(\'graphics\');
	});

</script>';

?>