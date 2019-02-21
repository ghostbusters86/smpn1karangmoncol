<?php
// error_reporting(-1);
include_once"system/koneksi.php";
$data = array();

function anti_injection($data) {
    $filter = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data, ENT_QUOTES))));
    return $filter;
}

$data['username']   = anti_injection($_POST['nomor']);
$data['pass']       = anti_injection(md5($_POST['password']));

// pastikan username dan password adalah berupa huruf atau angka.
if (!ctype_alnum($data['username']) OR ! ctype_alnum($data['pass']))
{
    echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";

}
else{
    $data['login_guru']     = mysql_query("SELECT * FROM teacher WHERE nip='{$data["username"]}' AND password='{$data["pass"]}' AND block='N'");
    $data['ketemu']         = mysql_num_rows($data['login_guru']);
    $data['r']              = mysql_fetch_assoc($data['login_guru']);

    $data['login_sis']      = mysql_query("SELECT * FROM student WHERE nis='{$data["username"]}' AND password='{$data["pass"]}' AND block='N'");
    $data['ktm']            = mysql_num_rows($data['login_sis']);
    $data['rsis']           = mysql_fetch_assoc($data['login_sis']);

// Apabila username dan password ditemukan
    if ($data['ketemu'] > 0) {
        session_start();
        include "system/timeout.php";
        $_SESSION['nip']          = $data['r']['nip'];
        $_SESSION['namalengkap']  = $data['r']['name'];
        $_SESSION['passuser']     = $data['r']['password'];
        $_SESSION['level']        = $data['r']['level'];
        $_SESSION['id_guru']      = $data['r']['nip'];

        // session timeout
        $_SESSION['login']        = 1;
        timer();
        $data['session'] = $_SESSION;


        header('location:https://www.smpn1karangmoncol.com/guru/media.php?module=home');

    }

    elseif ($data['ktm'] > 0) {
        session_start();
        include "system/timeout.php";
        $_SESSION['nis']          = $data['rsis']['nis'];
        $_SESSION['namalengkap']  = $data['rsis']['name'];
        $_SESSION['passuser']     = $data['rsis']['password'];
        $_SESSION['level']        = $data['rsis']['level'];
        $_SESSION['id_siswa']     = $data['rsis']['nis'];
        $_SESSION['id_kelas']     = $data['rsis']['class_id'];

        // session timeout
        $_SESSION['login']        = 1;
        timer();
        $data['session'] = $_SESSION;


        header('location:https://www.smpn1karangmoncol.com/siswa/media.php?module=home'); 
    
    }
    else {
        echo "<script>alert('Maaf! Username atau Password anda salah atau anda sedang di blokir!'); window.location = 'index.php';</script>";
    
    }

}

/*echo "<pre>";
print_r($data);
echo "</pre>";*/
?>
