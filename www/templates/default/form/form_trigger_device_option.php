<?php 

include('header.php');

if (!empty($_GET['id_trigger']) && !empty($_GET['room_id_device'])
	&& !empty($_GET['id_option']) && !empty($_GET['id_condition'])
	&& !empty($_GET['modif'])) {

	$request = new Api();
	$request -> add_request('confOptionList');
	$request -> add_request('listUnits');
	$request -> add_request('triggerElemOption', array($_GET['id_trigger'],$_GET['id_condition'] ));
	$result  =  $request -> send_request();
	
	$optionList = $result->confOptionList;
	$unitsList  = $result->listUnits;
	$optInfo    = $result->triggerElemOption;
	
	showPopup($_GET['id_trigger'], $_GET['room_id_device'], $_GET['id_option'],
	          $_GET['id_condition'], $_GET['modif'], $optionList, $unitsList,
	          $optInfo);
}

function showPopup($id_trigger, $room_id_device, $id_option, $id_condition, $modif, $optionList, $unitsList, $optInfo) {
	$display = '';
	if (empty($id_option) || empty($room_id_device)) {
		return $display;
	}
	$tab_func = array(
			6 => "display_trigger_with_operator",
			12 => "display_trigger_on_off",
			13 => "display_trigger_varie",
			54 => "display_trigger_up_down",
			72 => "display_trigger_with_operator",
			73 => "display_trigger_with_operator",
			79 => "display_trigger_with_operator",
			96 => "display_trigger_open_close",
			97 => "display_trigger_detect",
			112 => "display_trigger_detect",
			113 => "display_trigger_detect",
			383 => "display_trigger_set_volume",
			388 => "display_trigger_with_operator",
			392 => "display_trigger_color_wheel",
			393 => "display_trigger_color_wheel",
			394 => "display_trigger_color_wheel",
			441 => "display_trigger_with_operator"
	);
	$display.='<p class="center margin-bottom">'._('Choose the option state for this device.').'</p></br>';
	$display.='<input id="triggerPopupValue-'.$room_id_device.'" value="0" hidden>
				<input id="triggerPopupOperator-'.$room_id_device.'" value="0" hidden>';
	if (empty($tab_func[$id_option])) {
		echo '
			<div class="alert alert-danger center" role="alert">
				'._('Option not available').'
			</div>';
		return;
	}
	$display.=$tab_func[$id_option]($room_id_device, $id_option, $optionList, $unitsList, $optInfo);
	
	$display.='
				<br/>
				<div>
					<button class="btn btn-greenleaf margin-top"
					        onclick="saveTriggerOption('.$id_trigger.', '.$room_id_device.', '.$id_option.', '.$id_condition.', '.$modif.')">
						'._("Save").'
					</button>
				</div>';
	echo $display;
}

function display_trigger_on_off($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {
	
	$display = '
	<input type="checkbox"
	       data-on-color="greenleaf"
	       data-label-width="0"';
	if(empty($optInfo) || $optInfo->value == 1) {
		$display .= ' checked ';
	}
	$display .= '
	       id="triggerOnOff-'.$room_id_device.'"
	       onchange="triggerOnOff('.$room_id_device.')">
	<script type="text/javascript">
		$("#triggerOnOff-"+'.$room_id_device.').bootstrapSwitch();
		triggerOnOff('.$room_id_device.');
	</script>';
	return $display;
}

function display_trigger_varie($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {
	
	$display = '
				<div class="col-xs-6 center-div">
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 cursor"
					     onclick="Variation('.$room_id_device.', 13, -1)">
						<i class="fa fa-certificate"></i>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<output id="range-'.$room_id_device.'"
						        for="slider-value-'.$room_id_device.'">50%</output>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 cursor"
					     onclick="Variation('.$room_id_device.', 13, 1)">
						<i class="fa fa-sun-o"></i>
					</div>
					<div class="row">
						<input value="128" min="0" step="1" max="255"
						       oninput="outputUpdate('.$room_id_device.', value)"
						       onchange="triggerVarie('.$room_id_device.')"
						       id="slider-value-'.$room_id_device.'"
						       type="range">
					</div>
				</div>
				<script type="text/javascript">
					triggerVarie('.$room_id_device.');
				</script>';
	
	return $display;
}

function display_trigger_up_down($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {
	$display = '
	<input type="checkbox"
	       data-on-color="greenleaf"
	       data-label-width="0"
	       data-on-text="'._('Up').'"
	       data-off-text="'._('Down').'"';
	if(empty($optInfo) || $optInfo->value == 1) {
		$display .= ' checked ';
	}
	$display .= '
	id="triggerOnOff-'.$room_id_device.'"
	       onchange="triggerOnOff('.$room_id_device.')">
	<script type="text/javascript">
		$("#triggerOnOff-"+'.$room_id_device.').bootstrapSwitch();
		triggerOnOff('.$room_id_device.');
	</script>';
	return $display;
}

function display_trigger_open_close($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {

	$display = '
	<input type="checkbox"
	       data-on-color="greenleaf"
	       data-label-width="0"
	       data-on-text="'._('Open').'"
	       data-off-text="'._('Close').'"';
	if(empty($optInfo) || $optInfo->value == 1) {
		$display .= ' checked ';
	}
	$display .= '
	id="triggerOnOff-'.$room_id_device.'"
	       onchange="triggerOnOff('.$room_id_device.')">
	<script type="text/javascript">
		$("#triggerOnOff-"+'.$room_id_device.').bootstrapSwitch();
		triggerOnOff('.$room_id_device.');
	</script>';
	return $display;
}

function display_trigger_set_volume($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {
	
	$display = '
				<div class="col-xs-6 center-div">
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 cursor"
					     onclick="Volume(\''.$room_id_device.'\', 383, -1)">
						<i class="glyphicon glyphicon-volume-down"></i>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
						<output id="vol-'.$room_id_device.'"
						        for="volume-'.$room_id_device.'">
							50%
						</output>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 cursor"
					     onclick="Volume(\''.$room_id_device.'\', 383, 1)">
						<i class="glyphicon glyphicon-volume-up"></i>
					</div>
					<div class="row">
						<input value="50" min="0" step="1" max="100"
						       oninput="UpdateVol('.$room_id_device.', value)"
						       onchange="triggerVolume('.$room_id_device.')"
						       id="volume-'.$room_id_device.'"
						       type="range">
					</div>
				</div>
				<script type="text/javascript">
					triggerVolume('.$room_id_device.');
				</script>';
	
	return $display;
}

function display_trigger_with_operator($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {
	$opList = array(
			1 => _('Greater or Equal'),
			2 => _('Lesser or Equal'),
	);
	if(empty($optInfo)) {
		$value = 0;
	}
	else {
		$value = $optInfo->value;
	}
	$display =
	'<select class="selectpicker" id="selectOperator-'.$room_id_device.'"
	        data-size="10" data-width="auto"
	        onchange="triggerSetOperator('.$room_id_device.')">';
		foreach ($opList as $opId => $opName) {
			$display.='<option value="'.$opId.'">'.$opName.'</option>';
		}
		$display.='
	</select>
	&nbsp
	<input type="text" id="number-value-'.$room_id_device.'"
	       name="option-val" value="'.$value.'" size="5" oninput="triggerSetVal('.$room_id_device.')"/>
	<script type="text/javascript">';
	if(empty($optInfo)) {
		$display .= '$("#selectOperator-'.$room_id_device.'").selectpicker();';
	}
	else {
		$display .= '$("#selectOperator-'.$room_id_device.'").selectpicker("val", "'.$optInfo->operator.'");';
	}
	$display.='
		triggerSetOperator('.$room_id_device.');
	</script>';
	
	return $display;
}

function display_trigger_detect($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {

	$display = '
	<input type="checkbox"
	       data-on-color="greenleaf"
	       data-label-width="0"
	       data-on-text="'._('Yes').'"
	       data-off-text="'._('No').'"';
	if(empty($optInfo) || $optInfo->value == 1) {
		$display .= ' checked ';
	}
	$display .= '
	id="triggerOnOff-'.$room_id_device.'"
	       onchange="triggerOnOff('.$room_id_device.')">
	<script type="text/javascript">
		$("#triggerOnOff-"+'.$room_id_device.').bootstrapSwitch();
		triggerOnOff('.$room_id_device.');
	</script>';
	return $display;
}

function display_trigger_color_wheel($room_id_device, $id_option, $optionList, $unitsList, $optInfo) {
	$display = 
			'<form class="center padding-bottom">
				<input type="text" id="color" name="color" value="#123456" disabled="disabled" />
			</form>
			<div id="colorpicker"></div>
	
			<script type="text/javascript">
				$("#colorpicker").on("mouseup touchend", function(event) {
					triggerUpdateRGBColor('.$room_id_device.', $("#color").val());
				});
				$("#colorpicker").farbtastic("#color");
				triggerUpdateRGBColor('.$room_id_device.', $("#color").val());
			</script>';
	
	return $display;
}

?>