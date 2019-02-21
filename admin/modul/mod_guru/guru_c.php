    <?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
else{
include "../../../system/koneksi.php";
include "../../../system/fungsi_upload.php";

$module	= $_GET['module'];
$act	= $_GET['act'];


if($act=='insert')
{
	// Insert
	if ($module=='guru' AND $act=='insert')
	{

      if (!is_numeric($_POST['nip'])) {
    echo "<script>alert('Maaf! NIP Harus Angka.'); window.location = '../../media.php?module=$module';</script>";
    die();
  }
    if (!is_numeric($_POST['no_telp'])) {
    echo "<script>alert('Maaf! Nomor Telpon Harus Angka.'); window.location = '../../media.php?module=$module';</script>";
    die();
  }

    $ceknip = mysql_query("SELECT * FROM teacher WHERE nip ='$_POST[nip]'");
    $cek    = mysql_fetch_assoc($ceknip);
    if ($cek == 0) {
    $lokasi_file  = $_FILES['fupload']['tmp_name'];
    $tipe_file    = $_FILES['fupload']['type'];
    $nama_file    = $_FILES['fupload']['name'];

      $acak           = rand(000,999);
      $nama_gambar = $acak.'-'.$nama_file; 
    
    if(!empty($lokasi_file))
    {
    
      if ($tipe_file != "image/jpeg" AND $tipe_file != "image/pjpeg" AND $tipe_file != "image/gif" AND $tipe_file != "image/png"){
        echo "<script>alert('Data tidak tersimpan! Upload Gagal, Pastikan File yang di Upload bertipe *.JPG, *.GIF, *.PNG.'); window.location = '../../media.php?module=$module';</script>";
        die();
      }
      
      ImageUpload($fupload_name=$nama_gambar, $to_dir='../../../image/guru/');
      
        //data yang akan di insert
                        $tgl_lahir = $_POST['tgl_lahir'];
                        $pass = md5($_POST['password']);

                        mysql_query("INSERT INTO teacher(nip,
                                 name,
                                 password,
                                 address,
                                 po_birth,
                                 do_birth,
                                 gender,
                                 religion,
                                 no_telp,
                                 email,
                                 picture,
                                 position)
                         VALUES('$_POST[nip]',
                                '$_POST[nama]',
                                '$pass',
                                '$_POST[alamat]',
                                '$_POST[tempat_lahir]',
                                '$tgl_lahir',
                                '$_POST[jenis_kelamin]',
                                '$_POST[agama]',
                                '$_POST[no_telp]',
                                '$_POST[email]',
                                '$nama_gambar',
                                '$_POST[jabatan]')");

    }
    else
    {
                $pass = md5($_POST['password']);
                $tgl_lahir = $_POST['tgl_lahir'];
                mysql_query("INSERT INTO teacher(nip,
                                 name,
                                 password,
                                 address,
                                 po_birth,
                                 do_birth,
                                 gender,
                                 religion,
                                 no_telp,
                                 email,
                                 position)
                         VALUES('$_POST[nip]',
                                '$_POST[nama]',
                                '$pass',
                                '$_POST[alamat]',
                                '$_POST[tempat_lahir]',
                                '$tgl_lahir',
                                '$_POST[jenis_kelamin]',
                                '$_POST[agama]',
                                '$_POST[no_telp]',
                                '$_POST[email]',
                                '$_POST[jabatan]')");
    }

    echo "<script>alert('Sukses! Data berhasil di Simpan'); window.location = '../../media.php?module=$module';</script>";
    }else{
          echo "<script>alert('Maaf ! NIP sudah ada dengan Nama ".$cek['name']." Mohon di cek kembali'); window.location = '../../media.php?module=$module';</script>";
    }
}else{
  echo "<script>alert('Maaf! Data Gagal di simpan'); window.location = '../../media.php?module=$module';</script>";
}

}

elseif($act=='update')
{

    
    if ($module=='guru' AND $act=='update')
    {  

  if (!is_numeric($_POST['nip'])) {
    echo "<script>alert('Maaf! NIP Harus Angka.'); window.location = '../../media.php?module=$module';</script>";
    die();
  }
    if (!is_numeric($_POST['no_telp'])) {
    echo "<script>alert('Maaf! Nomor Telpon Harus Angka.'); window.location = '../../media.php?module=$module';</script>";
    die();
  }

        $nama_file    = $_FILES['fupload']['name'];
        //jika Password dan foto tidak dirubah
        if (empty($_POST['password']) AND empty($nama_file)) {
        
        mysql_query("UPDATE teacher SET
                                  nip         = '$_POST[nip]',
                                  name        = '$_POST[nama]',
                                  address     = '$_POST[alamat]',
                                  po_birth    = '$_POST[tempat_lahir]',
                                  do_birth    = '$_POST[tgl_lahir]',
                                  gender      = '$_POST[jk]',
                                  religion    = '$_POST[agama]',
                                  no_telp     = '$_POST[no_telp]',
                                  email       = '$_POST[email]',
                                  position    = '$_POST[jabatan]'
                           WHERE  nip  = '$_POST[id]'"); 

          echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>"; 
          //Jika password di rubah dan foto tidak dirubah
        }elseif (!empty($_POST['password']) AND empty($nama_file)) {
            $pass = md5($_POST['password']);
            mysql_query("UPDATE teacher SET
                                  nip        = '$_POST[nip]',
                                  name       = '$_POST[nama]',
                                  password   = '$pass',
                                  address    = '$_POST[alamat]',
                                  po_birth   = '$_POST[tempat_lahir]',
                                  do_birth   = '$_POST[tgl_lahir]',
                                  gender     = '$_POST[jk]',
                                  religion   = '$_POST[agama]',
                                  no_telp    = '$_POST[no_telp]',
                                  email      = '$_POST[email]',
                                  position   = '$_POST[jabatan]'
                           WHERE  nip = '$_POST[id]'");
          echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
        //jika password dirubah dan foto dirubah  
        }elseif (!empty($_POST['password']) AND !empty($nama_file)) {
            $lokasi_file    = $_FILES['fupload']['tmp_name'];
                  $tipe_file      = $_FILES['fupload']['type'];
                  $nama_file      = $_FILES['fupload']['name'];

                  $acak           = rand(000,999);
                  $nama_gambar = $acak.'-'.$nama_file; 

            if(!empty($lokasi_file))
                {
                
                  if ($tipe_file != "image/jpeg" AND $tipe_file != "image/pjpeg" AND $tipe_file != "image/gif" AND $tipe_file != "image/png"){
                    echo "<script>alert('Data tidak tersimpan! Upload Gagal, Pastikan File yang di Upload bertipe *.JPG, *.GIF, *.PNG.'); window.location = '../../media.php?module=$module';</script>";
                    die();
                  }
                  
                  $show = mysql_query("SELECT * FROM teacher WHERE nip='$_POST[id]'");
                  $row  = mysql_fetch_assoc($show);
                  if($row['picture'] != '')
                  {
                    unlink("../../../image/guru/$row[picture]");
                  }

                  ImageUpload($fupload_name=$nama_gambar, $to_dir='../../../image/guru/');

                  $pass = md5($_POST['password']);
                  mysql_query("UPDATE teacher SET
                                        nip         = '$_POST[nip]',
                                        name        = '$_POST[nama]',
                                        password    = '$pass',
                                        address     = '$_POST[alamat]',
                                        po_birth    = '$_POST[tempat_lahir]',
                                        do_birth    = '$_POST[tgl_lahir]',
                                        gender      = '$_POST[jk]',
                                        religion    = '$_POST[agama]',
                                        no_telp     = '$_POST[no_telp]',
                                        email       = '$_POST[email]',
                                        picture     = '$nama_gambar',
                                        position    = '$_POST[jabatan]'
                                 WHERE  nip  = '$_POST[id]'");
                echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
            }else{
              echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
            }
        //jika password tidak dirubah dan foto dirubah  
        }elseif (empty($_POST['password']) AND !empty($nama_file)) {
          $lokasi_file    = $_FILES['fupload']['tmp_name'];
                  $tipe_file      = $_FILES['fupload']['type'];
                  $nama_file      = $_FILES['fupload']['name'];

                  $acak           = rand(000,999);
                  $nama_gambar = $acak.'-'.$nama_file; 

            if(!empty($lokasi_file))
                {
                
                  if ($tipe_file != "image/jpeg" AND $tipe_file != "image/pjpeg" AND $tipe_file != "image/gif" AND $tipe_file != "image/png"){
                    echo "<script>alert('Data tidak tersimpan! Upload Gagal, Pastikan File yang di Upload bertipe *.JPG, *.GIF, *.PNG.'); window.location = '../../media.php?module=$module';</script>";
                    die();
                  }
                  
                  $show = mysql_query("SELECT * FROM teacher WHERE nip='$_POST[id]'");
                  $row  = mysql_fetch_assoc($show);
                  if($row['picture'] != '')
                  {
                    unlink("../../../image/guru/$row[picture]");
                  }

                  ImageUpload($fupload_name=$nama_gambar, $to_dir='../../../image/guru/');

                 
                  mysql_query("UPDATE teacher SET
                                        nip        = '$_POST[nip]',
                                        name       = '$_POST[nama]',
                                        address    = '$_POST[alamat]',
                                        po_birth   = '$_POST[tempat_lahir]',
                                        do_birth   = '$_POST[tgl_lahir]',
                                        gender     = '$_POST[jk]',
                                        religion   = '$_POST[agama]',
                                        no_telp    = '$_POST[no_telp]',
                                        email      = '$_POST[email]',
                                        picture    = '$nama_gambar',
                                        position   = '$_POST[jabatan]'
                                 WHERE  nip = '$_POST[id]'");
                echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
            }else{
              echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
            }
        }

       
}
else{
    echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}

elseif($act=='blokir')
{
    // Insert
    if ($module=='guru' AND $act=='blokir')
    {
        
            mysql_query("UPDATE teacher SET block = 'Y'
                           WHERE nip      = '$_POST[id]'");
            
            $sql = mysql_query("SELECT * FROM teacher WHERE nip = '$_POST[id]' ");
            $cek = mysql_fetch_assoc($sql);

    echo "<script>alert('Sukses! Data Guru ".$cek['name']." telah Terblokir.'); window.location = '../../media.php?module=$module';</script>";
}
else{
    echo "<script>alert('Maaf! Data Gagal di Blokir, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}


elseif($act=='aktif')
{
    // Insert
    if ($module=='guru' AND $act=='aktif')
    {
        
            mysql_query("UPDATE teacher SET block = 'N'
                           WHERE nip      = '$_GET[id]'");

    $sql = mysql_query("SELECT * FROM teacher WHERE nip = '$_GET[id]' ");
    $cek = mysql_fetch_assoc($sql);

    echo "<script>alert('Sukses! Data Guru ".$cek['name']." telah Aktif kembali.'); window.location = '../../media.php?module=$module';</script>";
}
else{
    echo "<script>alert('Maaf! Data Gagal di Aktifkan, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}



}
?>
