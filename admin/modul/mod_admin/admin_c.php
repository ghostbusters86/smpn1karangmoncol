<?php
  session_start();
  $data = array();
  if (empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
    echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
  }
  else{
  include "../../../system/koneksi.php";

  $module	= $_GET['module'];
  $act	= $_GET['act'];


  if($act=='insert')
  {
    // Insert
    if ($module=='admin' AND $act=='insert')
    {
      # cek data in database table admin
      $data['session_username']           = $_SESSION['namauser'];
      $data['sql-cek-admin']              = (" SELECT * FROM admin WHERE username='{$_POST["username"]}' "); 
      $data['query-cek-admin']            = mysql_query( $data['sql-cek-admin'] ); 
      $data['result-cek-num-rows-admin']  = mysql_num_rows( $data['query-cek-admin'] );
      if ( $data['result-cek-num-rows-admin'] > 0 ) {
        # if username already exists
        echo "<script>alert('Maaf! Username Sudah Digunakan .'); window.location = '../../media.php?module=$module';</script>";
        die();
      
      }else{
        # if the username does not yet exist
        if (!is_numeric($_POST['no_telp'])) {
          echo "<script>alert('Maaf! Nomor Telpon Harus Angka.'); window.location = '../../media.php?module=$module';</script>";
          die();
        }


        $pass = md5($_POST['password']);
        mysql_query("INSERT INTO admin(username,
                                     password,
                                     name,
                                     address, 
                                     no_telp,
                                     email) 
                             VALUES('$_POST[username]',
                                    '$pass',
                                    '$_POST[nama]',
                                    '$_POST[alamat]',
                                    '$_POST[no_telp]',
                                    '$_POST[email]'
                                    )");
        echo "<script>alert('Sukses! Data berhasil di simpan'); window.location = '../../media.php?module=$module';</script>";
      }


  }
  else{
    echo "<script>alert('Maaf! Data Gagal Disimpan, Silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
  }

  }

  elseif($act=='update')
  {
    // Update
    if ($module=='admin' AND $act=='update')
    {

      # cek data in database table admin
      $data['session_username']           = $_SESSION['namauser'];
      $data['sql-cek-admin']              = (" SELECT * FROM admin WHERE username NOT LIKE '{$_POST["id"]}' AND username='{$_POST["username"]}' "); 
      $data['query-cek-admin']            = mysql_query( $data['sql-cek-admin'] ); 
      $data['result-cek-num-rows-admin']  = mysql_num_rows( $data['query-cek-admin'] );
      if ( $data['result-cek-num-rows-admin'] > 0 ) {
        # if username already exists
        echo "<script>alert('Maaf! Username Sudah Digunakan .'); window.location = '../../media.php?module=$module';</script>";
        die();
      
      }else{
        # if the username does not yet exist
        if (empty($_POST['password'])) {
            $data['sql-update'] = ("UPDATE admin SET 
                                  username       = '{$_POST["username"]}',
                                  name           = '{$_POST["nama"]}',
                                  address        = '{$_POST["alamat"]}',
                                  email          = '{$_POST["email"]}',
                                  no_telp        = '{$_POST["no_telp"]}'                  
                           WHERE  username       = '{$_POST["id"]}'");
            $data['update'] = mysql_query( $data['sql-update'] );
        }
        // Apabila password diubah
        else {
            $pass = md5($_POST['password']);
            $data['sql-update'] = ("UPDATE admin SET 
                                  username        = '{$_POST["username"]}',
                                  password        = '$pass',
                                  name            = '{$_POST["nama"]}',
                                  address         = '{$_POST["alamat"]}',
                                  email           = '{$_POST["email"]}',
                                  no_telp         = '{$_POST["no_telp"]}'
                           WHERE username         = '{$_POST["id"]}'");
            $data['update'] = mysql_query( $data['sql-update'] );
        }
        echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
      }
  }
  else{
      echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
  }

  }

  elseif($act=='blokir')
  {
      // Insert
      if ($module=='admin' AND $act=='blokir')
      {
          
              mysql_query("UPDATE admin SET block = 'Y'
                             WHERE username        = '$_POST[id]'");
        
    $sql = mysql_query("SELECT * FROM admin WHERE username = '$_POST[id]' ");
              $cek = mysql_fetch_assoc($sql);

      echo "<script>alert('Sukses! Data Admin ".$cek['name']." telah Terblokir.'); window.location = '../../media.php?module=$module';</script>";


  }
  else{
      echo "<script>alert('Maaf! Data Gagal di Blokir, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
  }

  }


  elseif($act=='aktif')
  {
      // Insert
      if ($module=='admin' AND $act=='aktif')
      {
          
              mysql_query("UPDATE admin SET block = 'N'
                             WHERE username      = '$_GET[id]'");

      $sql = mysql_query("SELECT * FROM admin WHERE username = '$_GET[id]' ");
      $cek = mysql_fetch_assoc($sql);

      echo "<script>alert('Sukses! Data Admin ".$cek['name']." telah Aktif kembali.'); window.location = '../../media.php?module=$module';</script>";
  }
  else{
      echo "<script>alert('Maaf! Data Gagal di Aktifkan, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
  }

  }



  }
echo "<pre>";
print_r($data);
echo "</pre>";