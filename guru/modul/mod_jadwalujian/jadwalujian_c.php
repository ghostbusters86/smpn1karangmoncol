    <?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
else{
include "../../../system/koneksi.php";

$module	= $_GET['module'];
$act	= $_GET['act'];


if($act=='update')
{
	// Insert
	if ($module=='jadwalujian' AND $act=='update')
	{

    $cekquery = mysql_query("SELECT * FROM question WHERE question_group_id ='$_POST[gs]' ");
    $cek = mysql_num_rows($cekquery);

    $qj = mysql_query("SELECT * FROM exm_schedule WHERE exm_schedule_id = '$_POST[id]' ");
    $j = mysql_fetch_assoc($qj);

    $formula = mysql_query("SELECT * FROM formula_lcg WHERE formula_lcg_id = '$j[formula_lcg_id]' ");
    $df = mysql_fetch_assoc($formula);

    if ($cek >= $df[m]) {
      
      mysql_query(" UPDATE exm_schedule SET 
                                  question_group_id    = '$_POST[gs]',
                                  enrol_key            = '$_POST[enrol]'                  
                           WHERE  exm_schedule_id      = '$_POST[id]'");

      echo "<script>alert('Sukses! Data berhasil di simpan'); window.location = '../../media.php?module=$module';</script>";

    }else{
      echo "<script>alert('Maaf! Soal Ujian Kurang Dari ".$df[m]." Soal, Harap Soal Dilengkapi.'); window.location = '../../media.php?module=$module';</script>";
    }

}
else{
	echo "<script>alert('Maaf! Data Gagal Disimpan, Silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}


}
?>
