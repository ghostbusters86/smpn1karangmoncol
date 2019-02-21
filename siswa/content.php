<?php
// session_start();

if (empty($_SESSION['nis']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
    else{
?>

<?php
// Bagian home
if ($_GET['module']=='home'){
  if ($_SESSION['level']=='siswa'){
    include "modul/mod_home/home_v.php";
  }
}

elseif ($_GET['module']=='siswa'){
  if ($_SESSION['level']=='siswa'){
    include "modul/mod_siswa/siswa_v.php";
  }
}

elseif ($_GET['module']=='jadwal'){
  if ($_SESSION['level']=='siswa'){
    include "modul/mod_jadwal/jadwal_v.php";
  }
}

elseif ($_GET['module']=='daftar'){
  if ($_SESSION['level']=='siswa'){
    include "modul/mod_daftar/daftar_v.php";
  }
}

elseif ($_GET['module']=='ujian'){
  if ($_SESSION['level']=='siswa'){
    include "modul/mod_ujian/ujian_v.php";
  }
}

elseif ($_GET['module']=='hasil'){
  if ($_SESSION['level']=='siswa'){
    include "modul/mod_hasil/hasil_v.php";
  }
}

elseif ($_GET['module']=='profil'){
  if ($_SESSION['level']=='siswa'){
    include "modul/mod_profil/profil_v.php";
  }
}
// Apabila modul tidak ditemukan
else{
  echo "<p><b><center>MODUL BELUM ADA ATAU BELUM LENGKAP</center></b></p>";
}
}
?>
