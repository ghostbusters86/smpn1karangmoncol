<?php
// session_start();

if (empty($_SESSION['nip']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
    else{
// include '../system/koneksi.php';
include '../system/tgl_indo.php';
$module="modul/mod_jadwalujian/jadwalujian_c.php?module=jadwalujian";


?>





<?php 
switch ( empty($_GET['act']) ? "" : $_GET['act'] ) {
default:
?>

      <div class="page-head">
        <h2 class="pull-left"><i class="fa fa-calendar"></i> Soal & Jadwal Ulangan</h2> 
        <div class="bread-crumb pull-right">
          <a href="media.php?module=home"><i class="fa fa-home"></i> Home</a>
          <span class="divider">/</span> 
          <a href="media.php?module=jadwalujian" class="bread-current">Soal & Jadwal Ulangan</a>
        </div>
        <div class="clearfix"></div>
      </div>

      <div class="matter">
        <div class="container">
          <div class="row">

            <div class="col-md-12">            
             <div class="widget">
                <div class="widget-head">
                  <div class="pull-left">Data Soal & Jadwal Ulangan</div>
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
                        <th><b>Status Soal</b></th>
                        <th><b>Enrol Key</b></th>
                        <th><b>Aksi</b></th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      $no = 1;
                      $idgr = $_SESSION['id_guru'];
                      $data = mysql_query("SELECT * FROM exm_schedule, detail_lesson WHERE detail_lesson.detail_lesson_id = exm_schedule.detail_lesson_id AND detail_lesson.nip = '$idgr'  ");
                      while ($row = mysql_fetch_assoc($data)) {
                        $qk = mysql_query("SELECT * FROM detail_lesson, class WHERE class.class_id = detail_lesson.class_id AND detail_lesson.detail_lesson_id ='$row[detail_lesson_id]'  ");
                       $rk = mysql_fetch_assoc($qk);
                       $qp = mysql_query("SELECT * FROM detail_lesson, lesson WHERE lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id ='$row[detail_lesson_id]'  ");
                       $rp = mysql_fetch_assoc($qp);
                       $qg = mysql_query("SELECT * FROM detail_lesson, teacher WHERE teacher.nip = detail_lesson.nip AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                       $rg = mysql_fetch_assoc($qg);
                        
                       ?>
                      <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $row['exm_schedule_name']; ?></td>
                        <td><?php echo $rk['class_name']; ?></td>
                        <td><?php echo $rp['lesson_name']; ?></td>
                        <td><?php if ($row['question_group_id'] == 0 ) {
                          echo "<span class='label label-danger'>Belum Ada Soal Ulangan</span>";
                        }else {
                          echo "<span class='label label-success'>Soal Sudah Ada</span>";
                        }  ?></td>
                        <td><?php echo $row['enrol_key']; ?></td>
                        
                        <td width="120px">
                          <div class="btn-group1">
                          
                          <?php if ($row['question_group_id'] == 0 ) { ?>
                            <a href="#soalenrolkey<?php echo $row['exm_schedule_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-primary" ><i class="fa fa-plus"></i> Masukkan Soal & Enrol Key</button></a>
                         <?php }else{ ?>
                            <a href="#editsoalenrolkey<?php echo $row['exm_schedule_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-warning" ><i class="fa fa-pencil"></i> Edit Soal & Enrol Key</button></a>
                         <?php } ?>

                          </div>
                        </td>
                      </tr>
                      <?php $no++; } ?>
                      
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
                      
  $data = mysql_query("SELECT * FROM exm_schedule ");
  while ($row = mysql_fetch_assoc($data)) {                      
    ?>    
      <div id="soalenrolkey<?php echo $row['exm_schedule_id']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header biru">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-plus"></i> Masukkan Soal dan Enrol Key</h4>
                      </div>
                      <div class="modal-body">
                      <form method="POST" action="<?php echo $module; ?>&act=update" enctype="multipart/form-data">

                        <div class="row">
                        <div class="col-md-12">
                          <div class="well">
                          <table>
                            
                            <tr>
                              <td width="150px"><b>Nama Ulangan</b> </td>
                              <td><b> : <?php echo $row['exm_schedule_name']; ?></b></td>
                            </tr>
                            
                            <?php 
                            $qk = mysql_query("SELECT * FROM class, detail_lesson WHERE class.class_id = detail_lesson.class_id AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                            $kr = mysql_fetch_assoc($qk);
                             ?>

                            <tr>
                              <td><b>Kelas </b> </td>
                              <td><b> : <?php echo $kr['class_name']; ?></b></td>
                            </tr>
                            
                            <?php 
                            $qp = mysql_query("SELECT * FROM lesson, detail_lesson WHERE lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                            $pr = mysql_fetch_assoc($qp);
                             ?>

                            <tr>
                              <td><b>Mata Pelajaran</b></td>
                              <td><b> : <?php echo $pr['lesson_name']; ?></b></td>
                            </tr>

                             <?php 
                            $qg = mysql_query("SELECT * FROM teacher, detail_lesson WHERE teacher.nip = detail_lesson.nip AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                            $gr = mysql_fetch_assoc($qg);
                             ?>


                            <tr>
                              <td><b>Pengajar</b></td>
                              <td><b> : <?php echo $gr['name']; ?></b></td>
                            </tr>

                            <?php 
                            $qta = mysql_query("SELECT * FROM  sch_year WHERE sch_year_id = '$row[sch_year_id]' ");
                            $tar = mysql_fetch_assoc($qta);
                             ?>



                            <tr>
                              <td><b>Tahun Ajaran</b></td>
                              <td><b> : <?php echo $tar['sch_year']; ?></b></td>
                            </tr>




                            <tr>
                              <td><b>Semester</b></td>
                              <td><b> : <?php echo $row['semester']; ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Tanggal Ulangan</b></td>
                              <td><b> : <?php echo TanggalIndo($row['exm_date']); ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Waktu Pelaksanaan</b></td>
                              <td><b> : <?php echo $row['exm_hour']; ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Waktu Pengerjaan</b></td>
                              <td><b> : <?php echo $row['exm_time']; ?> Menit</b></td>
                            </tr>






                          </table>
                          
                          
                        </div>
                        </div>
                      </div>

                      
                            <input type="hidden" name="id" value="<?php echo $row['exm_schedule_id']; ?>">
                            

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Group Soal</label></div>
                          <div class="col-md-6">
                          <select name="gs" class="form-control selectlive" required>
                              <option value=""> -Pilih- </option>
                              <?php 
                               $sql = mysql_query(" SELECT * FROM question_group, teacher, detail_lesson, lesson WHERE question_group.nip = teacher.nip AND teacher.nip = '$_SESSION[id_guru]' AND detail_lesson.nip = teacher.nip AND lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' AND question_group.lesson_id = detail_lesson.lesson_id ");
                               while ($ta = mysql_fetch_assoc($sql)) { ?>
                              <option value="<?php echo $ta['question_group_id']; ?>"><?php echo $ta['question_group_name']; ?></option>
                             <?php } ?>
                          </select>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Enrol Key</label></div>
                          <div class="col-md-4">
                           
                          <input type="text" class="form-control" name="enrol" required>
                          </div>
                        </div>
                      </div>

                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                      </div>
                      </form> 
                    </div>
      </div>
     </div>
     <?php } ?>
    <!-- End Edit Data -->


<!-- Edit Data -->
    <?php 
                      
  $data = mysql_query("SELECT * FROM exm_schedule ");
  while ($row = mysql_fetch_assoc($data)) {                      
    ?>    
      <div id="editsoalenrolkey<?php echo $row['exm_schedule_id']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header kuning">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-plus"></i> Masukkan Soal dan Enrol Key</h4>
                      </div>
                      <div class="modal-body">
                      <form method="POST" action="<?php echo $module; ?>&act=update" enctype="multipart/form-data">


                      <div class="row">
                        <div class="col-md-12">
                          <div class="well">
                          <table>
                            
                            <tr>
                              <td width="150px"><b>Nama Ulangan</b> </td>
                              <td><b> : <?php echo $row['exm_schedule_name']; ?></b></td>
                            </tr>
                            
                            <?php 
                            $qk = mysql_query("SELECT * FROM class, detail_lesson WHERE class.class_id = detail_lesson.class_id AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                            $kr = mysql_fetch_assoc($qk);
                             ?>

                            <tr>
                              <td><b>Kelas </b> </td>
                              <td><b> : <?php echo $kr['class_name']; ?></b></td>
                            </tr>
                            
                            <?php 
                            $qp = mysql_query("SELECT * FROM lesson, detail_lesson WHERE lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                            $pr = mysql_fetch_assoc($qp);
                             ?>

                            <tr>
                              <td><b>Mata Pelajaran</b></td>
                              <td><b> : <?php echo $pr['lesson_name']; ?></b></td>
                            </tr>

                             <?php 
                            $qg = mysql_query("SELECT * FROM teacher, detail_lesson WHERE teacher.nip = detail_lesson.nip AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' ");
                            $gr = mysql_fetch_assoc($qg);
                             ?>


                            <tr>
                              <td><b>Pengajar</b></td>
                              <td><b> : <?php echo $gr['name']; ?></b></td>
                            </tr>

                            <?php 
                            $qta = mysql_query("SELECT * FROM  sch_year WHERE sch_year_id = '$row[sch_year_id]' ");
                            $tar = mysql_fetch_assoc($qta);
                             ?>



                            <tr>
                              <td><b>Tahun Ajaran</b></td>
                              <td><b> : <?php echo $tar['sch_year']; ?></b></td>
                            </tr>




                            <tr>
                              <td><b>Semester</b></td>
                              <td><b> : <?php echo $row['semester']; ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Tanggal Ulangan</b></td>
                              <td><b> : <?php echo TanggalIndo($row['exm_date']); ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Waktu Pelaksanaan</b></td>
                              <td><b> : <?php echo $row['exm_hour']; ?></b></td>
                            </tr>

                            <tr>
                              <td><b>Waktu Pengerjaan</b></td>
                              <td><b> : <?php echo $row['exm_time']; ?> Menit</b></td>
                            </tr>






                          </table>
                          
                          
                        </div>
                        </div>
                      </div>

                      <input type="hidden" name="id" value="<?php echo $row['exm_schedule_id']; ?>">


         
                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Group Soal</label></div>
                          <div class="col-md-6">
                          <select name="gs" class="form-control selectlive" required>
                              <?php 
                               $sql = mysql_query(" SELECT * FROM question_group, teacher, detail_lesson, lesson WHERE question_group.nip = teacher.nip AND teacher.nip = '$_SESSION[id_guru]' AND detail_lesson.nip = teacher.nip AND lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' AND question_group.lesson_id = detail_lesson.lesson_id AND question_group_id = $row[question_group_id] ");
                               while ($ta = mysql_fetch_assoc($sql)) { ?>
                              <option value="<?php echo $ta['question_group_id']; ?>"><?php echo $ta['question_group_name']; ?></option>
                             <?php } ?>

                              <?php 
                               $sql = mysql_query(" SELECT * FROM question_group, teacher, detail_lesson, lesson WHERE question_group.nip = teacher.nip AND teacher.nip = '$_SESSION[id_guru]' AND detail_lesson.nip = teacher.nip AND lesson.lesson_id = detail_lesson.lesson_id AND detail_lesson.detail_lesson_id = '$row[detail_lesson_id]' AND question_group.lesson_id = detail_lesson.lesson_id AND NOT question_group.question_group_id = '$row[question_group_id]' ");
                               while ($ta = mysql_fetch_assoc($sql)) { ?>
                              <option value="<?php echo $ta['question_group_id']; ?>"><?php echo $ta['question_group_name']; ?></option>
                             <?php } ?>
                          </select>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Enrol Key</label></div>
                          <div class="col-md-4">
                           
                          <input type="text" class="form-control" name="enrol" value="<?php echo $row['enrol_key']; ?>" required>
                          </div>
                        </div>
                      </div>

                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button type="submit" class="btn btn-warning">Update</button>
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