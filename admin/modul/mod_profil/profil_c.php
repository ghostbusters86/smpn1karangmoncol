    <?php
session_start();
$data= array();
if ( empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0 ){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
else{
  include_once "../../../system/koneksi.php";

  $module	= $_GET['module'];
  $act	= $_GET['act'];




  if($act=='update')
  {
      // Insert
      if ($module=='profil' AND $act=='update')
      {

        # cek data in database table admin
        $data['session_username']           = $_SESSION['namauser'];
        $data['sql-cek-admin']              = (" SELECT * FROM admin WHERE username NOT LIKE '{$data["session_username"]}' AND username='{$_POST["username"]}' "); 
        $data['query-cek-admin']            = mysql_query( $data['sql-cek-admin'] ); 
        $data['result-cek-num-rows-admin']  = mysql_num_rows( $data['query-cek-admin'] );
        if ( $data['result-cek-num-rows-admin'] > 0 ) {
          # if username already exists
          echo "<script>alert('Maaf! Username Sudah Digunakan .'); window.location = '../../media.php?module=$module';</script>";
          die();
        
        }else{
          # if the username does not yet exist
          if ( !is_numeric($_POST['no_telp']) ) {
              
              echo "<script>alert('Maaf! Nomor Telpon Harus Angka.'); window.location = '../../media.php?module=$module';</script>";
              die();
            
          }

          if ( empty($_POST['password']) ) {

            $data['sql'] = ("UPDATE admin SET 
                                  username       = '{$_POST["username"]}',
                                  name           = '{$_POST["nama"]}',
                                  address        = '{$_POST["alamat"]}',
                                  email          = '{$_POST["email"]}',
                                  no_telp        = '{$_POST["no_telp"]}'                  
                           WHERE  username       = '{$_POST["username"]}'");
            $data['update'] = mysql_query( $data['sql'] );
          }
          // Apabila password diubah
          else {
            $data['pass'] = md5($_POST['password']);
            $data['sql']  = ("UPDATE admin SET 
                                  username        = '{$_POST["username"]}',
                                  password        = '{$data["pass"]}',
                                  name            = '{$_POST["nama"]}',
                                  address         = '{$_POST["alamat"]}',
                                  email           = '{$_POST["email"]}',
                                  no_telp         = '{$_POST["no_telp"]}'
                           WHERE username         = '{$_POST["username"]}' ");
            $data['update'] = mysql_query( $data['sql'] );
          }
          
          echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
        
        } 

      }
      else{
      echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
    }

  }








}
echo "<pre>";
print_r($data);
echo "</pre>";