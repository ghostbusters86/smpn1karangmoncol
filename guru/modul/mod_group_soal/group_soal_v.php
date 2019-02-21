<?php
// session_start();

if (empty($_SESSION['nip']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
    else{
// include '../system/koneksi.php';
include '../system/tgl_indo.php';
  $module="modul/mod_group_soal/group_soal_c.php?module=group_soal";


?>


	    <div class="page-head">
	      <h2 class="pull-left"><i class="fa fa-file-text"></i> Group Soal Ulangan</h2> 
        <div class="bread-crumb pull-right">
          <a href="media.php?module=home"><i class="fa fa-home"></i> Home</a>
          <span class="divider">/</span> 
          <a href="media.php?module=group_soal" class="bread-current">Group Soal Ulangan</a>
        </div>
        <div class="clearfix"></div>
	    </div>

	    <div class="matter">
        <div class="container">
          <div class="row">

            <div class="col-md-12">            
             <div class="widget">
                <div class="widget-head">
                  <div class="pull-left">Data Group Soal Ulangan</div>
                  <div class="widget-icons pull-right">
                    <a href="dynamic-tables.html#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="dynamic-tables.html#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">

                  <div class="padd">
                  <div style="padding-bottom: 10px;" align="right"><a href="#add" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i> Data Group Soal Ulangan</a></div>    
              <!-- Table Page -->
              <div class="page-tables">
                <!-- Table -->
                <div class="table-responsive">
                  <table cellpadding="0" cellspacing="0" border="0" id="data-table-1" width="99%">
                    <thead>
                      <tr>
                        <th><b>No</b></th>
                        <th><b>Nama Group Soal</b></th>
                        <th><b>Pelajaran</b></th>
                        <th><b>Pengajar</b></th>
                        <th><b>Jumlah Soal</b></th>
                        <th><b>Aksi</b></th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      $no = 1;
                      $data = mysql_query("SELECT * FROM question_group WHERE nip= '$_SESSION[id_guru]' order by question_group_id DESC");
                      while ($row = mysql_fetch_assoc($data)) {
                        $p = mysql_query("SELECT * FROM lesson WHERE lesson_id = '$row[lesson_id]'");
                        $pel = mysql_fetch_assoc($p);
                        $g = mysql_query("SELECT * FROM teacher WHERE nip = '$row[nip]' ");
                        $gr = mysql_fetch_assoc($g);
                        $sql= mysql_query("SELECT count(question_id) AS jml FROM question WHERE question_group_id = '$row[question_group_id]' ");
                        $jml = mysql_fetch_assoc($sql);
                       ?>
                      <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $row['question_group_name']; ?></td>
                        <td><?php echo $pel['lesson_name']; ?></td>
                        <td><?php echo $gr['name']; ?></td>
                        <td><?php echo round($jml['jml']); ?></td>

                        <td width="200px">
                          <div class="btn-group1">

                          <a href="#edit<?php echo $row['question_group_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-warning" title="edit"><i class="fa fa-pencil"></i></button></a>

                          <a href="#hapus<?php echo $row['question_group_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-danger" title="Hapus"><i class="fa fa-trash"></i></button></a>

                          <a href="media.php?module=soal&id_gs=<?php echo $row['question_group_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-primary" title="Tambah Soal"><i class="fa fa-plus"></i> Soal Ulangan</button></a>

                          

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




<!-- Tambah Data -->
    
      <div id="add" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header biru">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"> <i class="fa fa-plus"></i> Tambah Data Group Soal Ulangan</h4>
                      </div>
                      <div class="modal-body">
                        <form method="POST" action="<?php echo $module; ?>&act=insert">
                     

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Nama Group Soal</label></div>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="nama" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Pelajaran</label></div>
                          <div class="col-md-6">  
                            <select name="pelajaran" class="form-control selectlive" required>
                            <option value="">-pilih- </option>
                            <?php
                            $id_guru = $_SESSION['id_guru']; 
                            $data = mysql_query("SELECT * FROM detail_lesson, lesson WHERE lesson.lesson_id=detail_lesson.lesson_id AND detail_lesson.nip = '$id_guru' AND detail_lesson.block = 'N' GROUP BY lesson.lesson_name ");
                            while ($pljr = mysql_fetch_assoc($data)) { ?>
                              <option value="<?php echo $pljr['lesson_id']; ?>"><?php echo $pljr['lesson_name']; ?></option>
                            <?php }?>
                            </select>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Pengajar</label></div>
                          <div class="col-md-6">  
                            <select name="guru" class="form-control selectlive" readonly>
                            <?php
                            $id_guru = $_SESSION['id_guru']; 
                            $data = mysql_query("SELECT * FROM teacher WHERE nip = '$_SESSION[id_guru]' ");
                            while ($gr = mysql_fetch_assoc($data)) { ?>
                              <option value="<?php echo $gr['nip']; ?>"><?php echo $gr['name']; ?></option>
                            <?php }?>
                            </select>
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
    <!-- End Tambah Data -->


<!-- Edit Data -->
    <?php 
    $data = mysql_query("SELECT * FROM question_group");
    while ($row = mysql_fetch_assoc($data)) {
           
            
    ?>    
      <div id="edit<?php echo $row['question_group_id']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header kuning">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-pencil"></i> Edit Data Keterangan Soal Ulangan</h4>
                      </div>
                      <div class="modal-body">
                        <form method="POST" action="<?php echo $module; ?>&act=update">
                      

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Keterangan Soal</label></div>
                          <div class="col-md-6">
                            <input type="hidden" name="id" value="<?php echo $row['question_group_id']; ?>">
                            <input type="text" class="form-control" name="nama" value="<?php echo $row['question_group_name']; ?>" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Pelajaran</label></div>
                          <div class="col-md-6">  
                            <select name="pelajaran" class="form-control selectlive" required>
                              <?php 
                              $dpl = mysql_query("SELECT * FROM lesson WHERE lesson_id='$row[lesson_id]'");
                              $les = mysql_fetch_assoc($dpl);
                               ?>
                            <option value="<?php echo $les['lesson_id'] ?>"><?php echo $les['lesson_name'] ?> </option>
                            <?php
                            $id_guru = $_SESSION['id_guru'];
                            $q = mysql_query("SELECT * FROM detail_lesson, lesson WHERE lesson.lesson_id=detail_lesson.lesson_id AND detail_lesson.nip = '$id_guru' AND NOT detail_lesson.lesson_id = '$row[lesson_id]' GROUP BY lesson.lesson_name");
                            while ($pljr = mysql_fetch_assoc($q)) {
                           ?>
                           <option value="<?php echo $pljr['lesson_id'] ?>"><?php echo $pljr['lesson_name'] ?> </option>
                           <?php } ?>
                            </select>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Pengajar</label></div>
                          <div class="col-md-6">  
                            <select name="guru" class="form-control selectlive" readonly>
                            <?php
                            $id_guru = $_SESSION['id_guru']; 
                            $dt = mysql_query("SELECT * FROM teacher WHERE nip = '$_SESSION[id_guru]' ");
                            while ($gr = mysql_fetch_assoc($dt)) { ?>
                              <option value="<?php echo $gr['nip']; ?>"><?php echo $gr['name']; ?></option>
                            <?php }?>
                            </select>
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
    <!-- End Edit Data -->
<?php } ?>


<!-- Blokir Data -->
    <?php 
                      
                      $data = mysql_query("SELECT * FROM question_group ");
                      while ($row = mysql_fetch_assoc($data)) {                      
    ?>    
      <div id="hapus<?php echo $row['question_group_id']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header merah">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih">Hapus Data Soal Group Soal</h4>
                      </div>
                      <div class="modal-body">
                      
                      <form method="POST" action="<?php echo $module; ?>&act=delete">
                      
                      <div class="alert alert-danger">
                      <h4><i class="icon fa fa-ban"></i> <b>Peringatan!</b></h4>
                      Apakah Anda ingin menghapus data group soal <b><?php echo $row['question_group_name']; ?></b>?<br/>
                      Jika group soal dihapus maka soal yang ada di dalam group tersebut akan terhapus.
                      </div>

                      <input type="hidden" name="id" value="<?php echo $row['question_group_id']; ?>">


                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button type="submit" class="btn btn-danger"> <i class="fa fa-trash"></i> Hapus</button>
                      </div>
                      </form> 
                    </div>
      </div>
     </div>
     <?php } ?>
    <!-- End Blokir Data -->
        <?php } ?>  