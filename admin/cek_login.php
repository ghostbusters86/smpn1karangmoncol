<?php

include_once"../system/koneksi.php";
$data = array();

function anti_injection( $data ) {

    $filter = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data, ENT_QUOTES))));
    return $filter;

}

$data['username']   = anti_injection( $_POST['username'] );
$data['pass']       = anti_injection( md5( $_POST['password'] ) );

/*pastikan username dan password adalah berupa huruf atau angka.*/
if ( !ctype_alnum( $data['username'] ) OR ! ctype_alnum( $data['pass'] ) ) {

    echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";

} else {

    $data['login']  = mysql_query(" SELECT * FROM admin WHERE username='{$data["username"]}' AND password='{$data["pass"]}' AND block ='N' ");
    $data['ketemu'] = mysql_num_rows( $data['login'] );
    $data['r']      = mysql_fetch_assoc( $data['login'] );



    /*Apabila username dan password ditemukan*/
    if ( $data['ketemu'] > 0 ) {
        session_start();
        include_once "../system/timeout.php";

        $_SESSION['namauser']       = $data['r']['username'];
        $_SESSION['namalengkap']    = $data['r']['name'];
        $_SESSION['passuser']       = $data['r']['password'];
        $_SESSION['level']          = $data['r']['level'];

        /*session timeout*/
        $_SESSION['login']          = 1;
        $data['session']            = $_SESSION;
        timer();


        header('location:https://www.smpn1karangmoncol.com/admin/media.php?module=home');
    } else {
        echo "<script>alert('Maaf! Username atau Password anda salah atau anda sedang di blokir!'); window.location = 'index.php';</script>";
    }
}
// echo "<pre>";
// print_r($data);
// echo "</pre>";
