<?php

echo
'<div class="col-md-2 col-sm-2 col-xs-2 bhoechie-tab-menu sidebar">
	<div class="list-group">
		<a title="'._('General').'" href="/conf_general" id="menu-general" class="list-group-item text-center change">
			<h4 class="fa fa-cog lg"></h4><br/><span class="hidden-xs">'._('General').'</span>
		</a>
		<a title="'._('Users').'" href="/conf_users" id="menu-users" class="list-group-item text-center change">
			<h4 class="fa fa-users lg"></h4><br/><span class="hidden-xs">'._('Users').'</span>
		</a>
		<a title="'._('Installation').'" href="/conf_installation" id="menu-install" class="list-group-item text-center change">
			<h4 class="fa fa-flask lg"></h4><br/><span class="hidden-xs">'._('Installation').'</span>
		</a>
		<a title="'._('Box').'" href="/conf_daemon" id="menu-box" class="list-group-item text-center change">
			<h4 class="fa fa-cubes lg"></h4><br/><span class="hidden-xs">'._('Box').'</span>
		</a>
		<a title="'._('Backups').'" href="/conf_db" id="menu-database" class="list-group-item text-center change">
			<h4 class="fa fa-database lg"></h4><br/><span class="hidden-xs">'._('Backups').'</span>
		</a>
		<a title="'._('Busmonitor').'" href="#" onclick="ShowBusmonitor()" class="list-group-item text-center change">
			<h4 class="fa fa-wrench lg"></h4><br/><span class="hidden-xs">'._('Busmonitor').'</span>
		</a>
		<ul id="dropdown" class="nav nav-sidebar" hidden role="menu">';
		
		if(!empty($menuProtocol) && !empty($menuProtocol->{2})) {
			echo '
			<li>
				<a id="menu-enocean" class="list-group-item text-center" href="/monitor_enocean">'._('Enocean').'</a>
			</li>';
		}
	echo '
			<li>
				<a id="menu-ip" class="list-group-item text-center" href="/monitor_ip">'._('Ip').'</a>
			</li>';
		
		if(!empty($menuProtocol) && !empty($menuProtocol->{1})) {
			echo '
			<li>
				<a id="menu-knx" class="list-group-item text-center" href="/monitor_knx">'._('KNX').'</a>
			</li>';
		}
	echo '
		</ul>
	</div>
</div>';

echo '<script type="text/javascript">

$(".change").click(function() {
	$(".list-group a").removeClass("active");
	$(this).addClass("active");
});
		
function Listfloors(){
		$.ajax({
			type:"GET",
			url: "/templates/'.TEMPLATE.'/include/conf_floors.php",
			success: function(msg) {
				$("#conf-container").html(msg);
			}
		});
}
					
	
function ListRooms(){
	$.ajax({
		type:"GET",
		url: "/templates/'.TEMPLATE.'/include/conf_rooms.php",
		success: function(msg) {
			$("#conf-container").html(msg);
		}
	});
}
	
function ShowBusmonitor(){
	$("#dropdown").toggle("slow");
}

</script>';

?>