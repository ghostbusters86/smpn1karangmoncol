<?php
// session_start();

if (empty($_SESSION['nis']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
    else{
// include '../system/koneksi.php';
include '../system/tgl_indo.php';
  $module="modul/mod_daftar/daftar_c.php?module=daftar";


?>
<script type="text/javascript">
    window.history.forward();
    function noBack(){ window.history.forward(); }
</script>

<?php 
switch ( empty($_GET['act']) ? "" : $_GET['act'] ) {
default:
?>

      <div class="page-head">
        <h2 class="pull-left"><i class="fa fa-pencil"></i> Ujian</h2> 
        <div class="bread-crumb pull-right">
          <a href="media.php?module=home"><i class="fa fa-home"></i> Home</a>
          <span class="divider">/</span> 
          <a href="media.php?module=daftar" class="bread-current"> Ujian</a>
        </div>
        <div class="clearfix"></div>
      </div>

      <div class="matter">
        <div class="container">
          <div class="row">

            <div class="col-md-12">            
             <div class="widget">
                <div class="widget-head">
                  <div class="pull-left">Data Ujian</div>
                  <div class="widget-icons pull-right">
                    <a href="dynamic-tables.html#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="dynamic-tables.html#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">

                  <div class="padd">
                  <div style="padding-bottom: 10px;" align="right"></div>    
              <!-- Table Page -->
              <div class="page-tables">
                <!-- Table -->
                <div class="table-responsive">
                  <table cellpadding="0" cellspacing="0" border="0" id="data-table-1" width="99%">
                    <thead>
                      <tr>
                        <th><b>No</b></th>
                        <th><b>Nama Ujian</b></th>
                        <th><b>Kelas</b></th>
                        <th><b>Pelajaran</b></th>
                        <th><b>Tanggal Ujian</b></th>
                        <th><b>Jam</b></th>
                        <th><b>Aksi</b></th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      $no = 1;
                      

                      $data = mysql_query("SELECT * FROM exm_schedule, detail_lesson, exm_reg WHERE detail_lesson.detail_lesson_id = exm_schedule.detail_lesson_id AND detail_lesson.class_id = '$_SESSION[id_kelas]' AND exm_schedule.exm_schedule_id = exm_reg.exm_schedule_id AND exm_reg.nis = '$_SESSION[id_siswa]' AND NOT exm_schedule.question_group_id = '0'  ");
                      while ($row = mysql_fetch_assoc($data)) {

                       $qk = mysql_query("SELECT * FROM detail_lesson, class WHERE class.class_id = detail_lesson.class_id AND detail_lesson.detail_lesson_id ='$row[detail_lesson_id]'  ");
                       $rk = mysql_fetch_assoc($qk);
                       $qp = mysql_query("SELECT * FROM detail_lesson, lesson WHERE lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id ='$row[detail_lesson_id]'  ");
                       $rp = mysql_fetch_assoc($qp);
                       $qg = mysql_query("SELECT * FROM detail_lesson, teacher WHERE teacher.nip = detail_lesson.nip AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                       $rg = mysql_fetch_assoc($qg);
                        
                       ?>
                       <?php 
                       date_default_timezone_set('Asia/Jakarta');
                       $tgl = date('Y-m-d');
                       if ($row['exm_date']>=$tgl) {?>
                       
                       <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $row['exm_schedule_name']; ?></td>
                        <td><?php echo $rk['class_name']; ?></td>
                        <td><?php echo $rp['lesson_name']; ?></td>
                        <td><?php echo TanggalIndo($row['exm_date']); ?></td>
                        <td><?php echo $row['exm_hour']; ?></td>
                        
                        <td width="120px">
                          <div class="btn-group1">
                          
                         <?php 
                         $sd = mysql_query("SELECT * FROM process_exm WHERE exm_reg_id = '$row[exm_reg_id]' ");
                         $pu = mysql_fetch_assoc($sd);

                         if ($pu['exm_reg_id']==$row['exm_reg_id']) {
                           echo "<span class='label label-success'>Anda Sudah Mengerjakan</span>";
                         }else{ ?>

                         <a href="#ujian<?php echo $row['exm_reg_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-primary" ><i class="fa fa-pencil"></i> Kerjakan Ujian</button></a>
                         <?php }?>

                          </div>
                        </td>
                      </tr>

                       <?php $no++; }}?>
                    </tbody>
                    
                  </table>
                  <div class="clearfix"></div>
                </div>
                </div>
              </div>

          
                  </div>
                  <div class="widget-foot">
                    <!-- Footer goes here -->
                  </div>
                </div>

            </div>




            </div>
          </div>
        </div>



<!-- Edit Data -->
    <?php 
                      
  $data = mysql_query("SELECT * FROM exm_reg ");
  while ($row = mysql_fetch_assoc($data)) {
  $qjdwl = mysql_query("SELECT * FROM exm_schedule WHERE exm_schedule_id ='$row[exm_schedule_id]' ");
   $jdwl = mysql_fetch_assoc($qjdwl);                      
    ?>    
      <div id="ujian<?php echo $row['exm_reg_id']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header biru">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-pencil"></i> Kerjakan Ujian</h4>
                      </div>
                      <div class="modal-body">
                      <form method="GET" action="kerjakan_ujian.php" enctype="multipart/form-data">

                        <div class="row">
                        <div class="col-md-12">
                          <div class="well">
                          <table>
                            
                            <tr>
                              <td width="150px"><b>Nama Ujian</b> </td>
                              <td><b> : <?php echo $jdwl['exm_schedule_name']; ?></b></td>
                            </tr>
                            
                            <?php 
                            $qk = mysql_query("SELECT * FROM class, detail_lesson WHERE class.class_id = detail_lesson.class_id AND detail_lesson.detail_lesson_id = '$jdwl[detail_lesson_id]' ");
                            $kr = mysql_fetch_assoc($qk);
                             ?>

                            <tr>
                              <td><b>Kelas </b> </td>
                              <td><b> : <?php echo $kr['class_name']; ?></b></td>
                            </tr>
                            
                            <?php 
                            $qp = mysql_query("SELECT * FROM lesson, detail_lesson WHERE lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id = '$jdwl[detail_lesson_id]' ");
                            $pr = mysql_fetch_assoc($qp);
                             ?>

                            <tr>
                              <td><b>Mata Pelajaran</b></td>
                              <td><b> : <?php echo $pr['lesson_name']; ?></b></td>
                            </tr>

                             <?php 
                            $qg = mysql_query("SELECT * FROM teacher, detail_lesson WHERE teacher.nip = detail_lesson.nip AND detail_lesson.detail_lesson_id = '$jdwl[detail_lesson_id]' ");
                            $gr = mysql_fetch_assoc($qg);
                             ?>

                            <tr>
                              <td><b>Pengajar</b></td>
                              <td><b> : <?php echo $gr['name']; ?></b></td>
                            </tr>

                            <?php 
                            $qta = mysql_query("SELECT * FROM  sch_year WHERE sch_year_id = '$jdwl[sch_year_id]' ");
                            $tar = mysql_fetch_assoc($qta);
                             ?>

                            <tr>
                              <td><b>Tahun Ajaran</b></td>
                              <td><b> : <?php echo $tar['sch_year']; ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Semester</b></td>
                              <td><b> : <?php echo $jdwl['semester']; ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Tanggal Ujian</b></td>
                              <td><b> : <?php echo TanggalIndo($jdwl['exm_date']); ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Waktu Pelaksanaan</b></td>
                              <td><b> : <?php echo $jdwl['exm_hour']; ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Waktu Pengerjaan</b></td>
                              <td><b> : <?php echo $jdwl['exm_time']; ?> Menit</b></td>
                            </tr>

                          </table>
                        </div>
                        </div>
                      </div>

                      
                            <input type="hidden" name="id_jdwl" value="<?php echo $jdwl['exm_schedule_id']; ?>">
                            <input type="hidden" name="id_reg" value="<?php echo $row['exm_reg_id']; ?>">
                            <input type="hidden" name="waktu" value="<?php echo $jdwl['exm_time']; ?>">

                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-pencil"></i> Kerjakan Ujian</i></button>
                      </div>
                      </form> 
                    </div>
      </div>
     </div>
     <?php } ?>
    <!-- End Edit Data -->



<?php
break;
 }?>




        <?php } ?>  