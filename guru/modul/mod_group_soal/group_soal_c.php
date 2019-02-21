    <?php
session_start();
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
	if ($module=='group_soal' AND $act=='insert')
	{

        mysql_query("INSERT INTO question_group(
                                 question_group_name,
                                 lesson_id,
                                 nip) 
	                       VALUES('$_POST[nama]',
                                '$_POST[pelajaran]',
                                '$_POST[guru]'
                                )");
        	echo "<script>alert('Sukses! Data berhasil di simpan'); window.location = '../../media.php?module=$module';</script>";

}
else{
	echo "<script>alert('Maaf! Data Gagal Disimpan, Silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}

elseif($act=='update')
{
    // Insert
    if ($module=='group_soal' AND $act=='update')
    {

            mysql_query("UPDATE question_group SET 
                                  question_group_name    = '$_POST[nama]',
                                  lesson_id              = '$_POST[pelajaran]',
                                  nip              = '$_POST[guru]'                  
                           WHERE  question_group_id     = '$_POST[id]'");

    echo "<script>alert('Sukses! Data berhasil di Update'); window.location = '../../media.php?module=$module';</script>";
}
else{
    echo "<script>alert('Maaf! Data Gagal di Update, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}

elseif($act=='delete')
{
    // Insert
    if ($module=='group_soal' AND $act=='delete')
    {

       $show = mysql_query("SELECT * FROM question WHERE question_group_id='$_POST[id]'");
                  
                  while ($row  = mysql_fetch_assoc($show)) {
                      
                      if($row['picture'] != '')
                      {
                      unlink("../../../image/soal/$row[picture]");
                      mysql_query("DELETE FROM question WHERE question_group_id = '$_POST[id]'");
                      }else{
                      mysql_query("DELETE FROM question WHERE question_group_id = '$_POST[id]'");
                      }
                      }

        mysql_query("DELETE FROM question_group WHERE question_group_id = '$_POST[id]'");
        
        echo "<script>alert('Sukses! Data berhasil di Hapus'); window.location = '../../media.php?module=$module';</script>";
}
else{
    echo "<script>alert('Maaf! Data Gagal di hapus, silahkan coba lagi.'); window.location = '../../media.php?module=$module';</script>";
}

}



}
?>
