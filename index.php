<!DOCTYPE html>
<html>
    <body>
        <h1> Penjumlahan Sederhana</h1>
        <form method="POST" >
            <label> <br>Bilangan Pertama:
            <input type="number" name="bilangan1"> <br>

            <label> <br>Bilangan Kedua:      
         <input type="number" name="bilangan2"> <br>


         <input type="submit" name="hitung" value="jumlahkan">
        </form>
    <?php
    if (isset($_POST['hitung']))
    {
        $bilangan1 = $_POST['bilangan1'];
        $bilangan2 = $_POST['bilangan2'];

        if (is_numeric($bilangan1)&& is_numeric($bilangan2)){
            $hasil = $bilangan1 + $bilangan2 ;
            echo "<p> Bilangan pertama : ". htmlspecialchars($bilangan1) ;
            echo "<p> Bilangan kedua : " . htmlspecialchars($bilangan2) ;
            echo "<h2> Hasil : ". htmlspecialchars($hasil) ;
        } else {
            echo "<p> Input harus berupa angka!";
        }
    
    }

    ?>
       </body>
</html>