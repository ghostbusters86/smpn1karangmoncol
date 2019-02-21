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
  if ($module=='kelas' AND $act=='insert')
  {
      $sql = mysql_query("SELECT * FROM class WHERE class_name = '$_POST[nama_kelas]'");
      $cek = mysql_fetch_assoc($sql);

      if ($cek == 0) {
      mysql_query("INSERT INTO class(class_name,
                                 block) 
                         VALUES('$_POST[nama_kelas]',
                                '$_POST[status]'
                                )");
          echo "<script>alert('Sukses! Data berhasil di simpan'); window.location = '../../media.php?module=$module';</script>";
      }else{
        echo "<script>alert('Maaf! Nama Kelas Sudah Ada Mohon Menginputkan Dengan Nama yang Berbeda.'); window.location = '../../media.php?module=$module';</script>";
      }

}
else{
  echo "<script>alert('Maaf! Data Gagal Disimpan, Silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}elseif($act=='update'){
    
    if ($module=='kelas' AND $act=='update')
    {
            mysql_query("UPDATE class SET 
                                  class_name     = '$_POST[nama_kelas]'
                                  WHERE class_id = '$_POST[id]'");
        
    echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
}else{
    echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}elseif($act=='blokir'){
    // Insert
    if ($module=='kelas' AND $act=='blokir')
    {
        
            mysql_query("UPDATE class SET block = 'Y'
                           WHERE class_id      = '$_POST[id]'");
      
  $sql = mysql_query("SELECT * FROM class WHERE class_id = '$_POST[id]' ");
            $cek = mysql_fetch_assoc($sql);

    echo "<script>alert('Sukses! Data Kelas ".$cek['class_name']." telah Terblokir.'); window.location = '../../media.php?module=$module';</script>";


}
else{
    echo "<script>alert('Maaf! Data Gagal di Blokir, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}


elseif($act=='aktif')
{
    // Insert
    if ($module=='kelas' AND $act=='aktif')
    {
        
            mysql_query("UPDATE class SET block = 'N'
                           WHERE class_id      = '$_GET[id]'");

    $sql = mysql_query("SELECT * FROM class WHERE class_id = '$_GET[id]' ");
    $cek = mysql_fetch_assoc($sql);

    echo "<script>alert('Sukses! Data Kelas ".$cek['class_name']." telah Aktif kembali.'); window.location = '../../media.php?module=$module';</script>";
}
else{
    echo "<script>alert('Maaf! Data Gagal di Aktifkan, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}



}
?>
