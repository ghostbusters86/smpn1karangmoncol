    <?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
else{
include "../../../system/koneksi.php";

$module = $_GET['module'];
$act  = $_GET['act'];


if($act=='insert')
{
  // Insert
  if ($module=='mapel' AND $act=='insert')
  {

    $data = mysql_query("SELECT * FROM lesson WHERE lesson_name ='$_POST[nama_pelajaran]'  ");
    $cek  = mysql_fetch_assoc($data);

    if ($cek==0) {
        mysql_query("INSERT INTO lesson(lesson_name,
                                        block) 
                          VALUES('$_POST[nama_pelajaran]',
                                 'N'
                                )");
          echo "<script>alert('Sukses! Data berhasil di simpan'); window.location = '../../media.php?module=$module';</script>";
    }else{
          echo "<script>alert('Maaf! Nama Pelajaran Sudah Ada !'); window.location = '../../media.php?module=$module';</script>";
    }

}
else{
  echo "<script>alert('Maaf! Data Gagal Disimpan, Silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}elseif($act=='update'){
    
    if ($module=='mapel' AND $act=='update')
    {
            mysql_query("UPDATE lesson SET 
                                  lesson_name     = '$_POST[nama_pelajaran]'
                                  WHERE lesson_id = '$_POST[id]'");
        
    echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
}else{
    echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}elseif($act=='blokir'){
    // Insert
    if ($module=='mapel' AND $act=='blokir')
    {
        
            mysql_query("UPDATE lesson SET block = 'Y'
                           WHERE lesson_id      = '$_POST[id]'");
      
  $sql = mysql_query("SELECT * FROM lesson WHERE lesson_id = '$_POST[id]' ");
            $cek = mysql_fetch_assoc($sql);

    echo "<script>alert('Sukses! Data Mata Pelajaran ".$cek['lesson_name']." telah Terblokir.'); window.location = '../../media.php?module=$module';</script>";


}
else{
    echo "<script>alert('Maaf! Data Gagal di Blokir, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}


elseif($act=='aktif')
{
    // Insert
    if ($module=='mapel' AND $act=='aktif')
    {
        
            mysql_query("UPDATE lesson SET block = 'N'
                           WHERE lesson_id      = '$_GET[id]'");

    $sql = mysql_query("SELECT * FROM lesson WHERE lesson_id = '$_GET[id]' ");
    $cek = mysql_fetch_assoc($sql);

    echo "<script>alert('Sukses! Data Mata Pelajaran ".$cek['lesson_name']." telah Aktif kembali.'); window.location = '../../media.php?module=$module';</script>";
}
else{
    echo "<script>alert('Maaf! Data Gagal di Aktifkan, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}



}
?>
