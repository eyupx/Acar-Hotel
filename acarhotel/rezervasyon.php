<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Otel Rezervasyon</title>
</head>
<body>
    <h2>Otel Rezervasyon Formu</h2>
    <form method="get" action="islem.php">
        İsim: <input type="text" name="rezervasyon_ad"><br><br>
        Oda Tipi:
        <select name="rezervasyon_tip">
            <option value="klasik">Klasik Oda</option>
            <option value="twin">Standart Twin Oda</option>
            <option value="triple">Standart Triple Oda</option>
        </select><br><br>
        <input type="submit" name="kaydet" value="Rezervasyon Yap">
    </form>
    <?php 
            if (isset($_GET['durum'])) {
                if ($_GET['durum']=="ok") {
                    echo "Kayıt yapıldı";
                } else if($_GET['durum']=="no"){
                    echo "Kayıt yapılamadı";
                }
                else {
                    echo "Kayıt durumu";
                }
            } else {
                echo "Kayıt durumu";
            }
        ?>
</body>
</html>
