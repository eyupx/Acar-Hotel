<?php 
    require_once('baglanti.php');
    
   
    if (isset($_GET['kaydet'])) {
        $kayitsorgu=$db->prepare("INSERT into rezervasyon set
        rezervasyon_ad=:rezervasyon_ad,
        rezervasyon_tip=:rezervasyon_tip
    ");

    $insert=$kayitsorgu->execute(array(
        'rezervasyon_ad'=>$_GET['rezervasyon_ad'],
        'rezervasyon_tip'=>$_GET['rezervasyon_tip']

    ));

    if ($insert) {
        header('Location:rezervasyon.php?durum=ok');
        exit;
    } else {
        header('Location:rezervasyon.php?durum=no');
        exit;
    }
    }
