<?php
$array=['0987654321'=>['firstname'=>'Ali','lastname'=>'Mohammadi','age'=>31,'gender'=>'Man'],'0987654322'=>['firstname'=>'Rea','lastname'=>'Mohammadi','age'=>32,'gender'=>'Man'],'0987654323'=>['firstname'=>'Zahra','lastname'=>'Mohammadi','age'=>33,'gender'=>'Woman']];
?>
<style>
table,td,th,tr{
    border-collapse:collapse;
    border:1px black solid;
    padding: 5px;
}
</style>
<table>
<tr>
    <td>نام</td>
    <td>نام خانوادگی</td>
    <td>سن</td>
    <td>جنسیت</td>
    <td>کدملی</td>
</tr>
<?php foreach($array as $a => $info){ ?>
<tr>
    <td><?php echo $info['firstname']; ?></td>
    <td><?php echo $info['lastname']; ?></td>
    <td><?php echo $info['age']; ?></td>
    <td><?php echo $info['gender']; ?></td>
    <td><?php echo $a; ?></td>
</tr>
<?php } ?>
</table>
