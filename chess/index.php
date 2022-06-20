<style>
    body,table,tr,th,td {
        margin: unset;
        border: unset;
        padding: unset;
    }
    .white {
        background: white;
        width: 50;
        height: 50;
    }
    .black {
        background: black;
        width: 50;
        height: 50;
    }
</style>
<table>
    <?php for ($r = 1; $r <= 5; $r++) {
        ?>
        <tr>
            <td class="black"></td>
            <td class="white"></td>
            <td class="black"></td>
            <td class="white"></td>
            <td class="black"></td>
            <td class="white"></td>
            <td class="black"></td>
            <td class="white"></td>
        </tr>
        <tr>
            <td class="white"></td>
            <td class="black"></td>
            <td class="white"></td>
            <td class="black"></td>
            <td class="white"></td>
            <td class="black"></td>
            <td class="white"></td>
            <td class="black"></td>
        </tr>
        <?php
    } ?>
</table>
