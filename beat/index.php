<style>
table,td,th,tr{
    border-collapse:collapse;
    border:1px black solid;
    padding: 5px;
}
</style>
<table width="99%" align="center">
<?php for($i=1;$i<=10;$i++){
	echo '<tr align="center">';
	for($j=1;$j<=10;$j++){
		echo '<td>',$i * $j,'</td>';
	}
	echo '</tr>';
} ?>
</table>
