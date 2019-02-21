<?php
// session_start();

if (empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
    else{
include '../system/koneksi.php';
include '../system/tgl_indo.php';
  $module="modul/mod_kelas/kelas_c.php?module=kelas";


?>


      <div class="page-head">
        <h2 class="pull-left"><i class="fa fa-users"></i> Kelas</h2> 
        <div class="bread-crumb pull-right">
          <a href="media.php?module=home"><i class="fa fa-home"></i> Home</a>
          <span class="divider">/</span> 
          <a href="media.php?module=kelas" class="bread-current">Kelas</a>
        </div>
        <div class="clearfix"></div>
      </div>

      <div class="matter">
        <div class="container">
          <div class="row">



            <div class="col-md-12">            
             <div class="widget">
                <div class="widget-head">
                  <div class="pull-left">Data Kelas</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">

                  <div class="padd">
                       <div style="padding-bottom: 10px;" align="right"><a href="#add" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i> Data Kelas</a></div>
              <!-- Table Page -->
              <div class="page-tables">
                <!-- Table -->
                <div class="table-responsive">
                  <table cellpadding="0" cellspacing="0" border="0" id="data-table-1" width="99%">
                    <thead>
                      <tr>
                        <th><b>No</b></th>
                        <th><b>Nama Kelas</b></th>
                        <th><b>Status</b></th>
                        <th width="100px"><b>Aksi</b></th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      $no = 1;
                      $data = mysql_query("SELECT * FROM class");
                      while ($row = mysql_fetch_assoc($data)) {
                       ?>
                      <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $row['class_name']; ?></td>
                        <td><?php if ($row['block']=='Y') { echo "<span class='label label-danger'>Non Aktif</span>";
                        }elseif ($row['block']=='N') { echo "<span class='label label-success'>Aktif</span>"; }  ?></td>

                        <td width="120px">
                          <div class="btn-group1">
                          <!-- <a href="media.php?module=kelas&$_GET['id']id=<?php echo $row['class_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-info" title="Lihat data siswa kelas <?php echo $row['class_name']; ?>"><i class="fa fa-eye"></i></button></a> -->

                          <a href="#edit<?php echo $row['class_id']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-warning" title="edit"><i class="fa fa-pencil"></i></button></a>
                          

                          <?php if ($row['block']=='Y') {?>
                          <a href="<?php echo $module; ?>&act=aktif&id=<?php echo $row['class_id']; ?>"><button type='button' class='btn btn-sm btn-success' title="Aktifkan"><i class="fa fa-check"></i></button>
                          <?php }elseif ($row['block']=='N') {?> 
                          <a href="#blokir<?php echo $row['class_id']; ?>" data-toggle="modal"><button type='button' class='btn btn-sm btn-danger' title="Non Aktifkan"><i class="fa fa-ban"></i></button></a>
                          <?php }  ?>
                        
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
                        <h4 class="title-putih"><i class="fa fa-plus"></i> Tambah Data Kelas</h4>
                      </div>
                      <div class="modal-body">
                      <form method="POST" action="<?php echo $module; ?>&act=insert" enctype="multipart/form-data">
                      
                      <link rel="stylesheet" href="../../../assets/css/bootstrap-datetimepicker.min.css">
                      <script src="../../../assets/js/bootstrap-datetimepicker.min.js"></script>
                      <script src="../../../assets/js/custom.js"></script>


                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Nama Kelas</label></div>
                          <div class="col-md-7">
                            <input type="text" class="form-control" name="nama_kelas"  required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Status</label></div>
                          <div class="col-md-7">
                            <select class="form-control selectlive" name="status">
                              <option selected disabled>-Pilih Status-</option>
                              <option value="N"> Aktif</option>
                              <option value="Y"> Non Aktif</option>
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
                      
                      $data = mysql_query("SELECT * FROM class");
                      while ($row = mysql_fetch_assoc($data)) {                      
    ?>       
      <div id="edit<?php echo $row['class_id']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header kuning">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-pencil"></i> Edit Data Kelas</h4>
                      </div>
                      <div class="modal-body">
                      <form method="POST" action="<?php echo $module; ?>&act=update" enctype="multipart/form-data">
                      
                     


                     <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Nama Kelas</label></div>
                          <div class="col-md-7">
                            <input type="hidden" name="id" value="<?php echo $row['class_id']; ?>">
                            <input type="text"  class="form-control" name="nama_kelas" value="<?php echo $row['class_name']; ?>" required>
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


<!-- Blokir Data -->
    <?php 
                      
                      $data = mysql_query("SELECT * FROM class ");
                      while ($row = mysql_fetch_assoc($data)) {                      
    ?>    
      <div id="blokir<?php echo $row['class_id']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header merah">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih">Non Aktifkan Data Kelas</h4>
                      </div>
                      <div class="modal-body">
                      
                      <form method="POST" action="<?php echo $module; ?>&act=blokir">
                      
                      <div class="alert alert-danger">
                      <h4><i class="icon fa fa-ban"></i> <b>Peringatan!</b></h4>
                      Apakah Anda ingin Non Aktifkan Kelas <b><?php echo $row['class_name']; ?></b> ? 
                      Jika Kelas <b><?php echo $row['class_name']; ?></b> di Non Aktifkan, maka kelas tidak akan terbaca saat penginputan data.  
                      </div>

                      <input type="hidden" name="id" value="<?php echo $row['class_id']; ?>">


                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button type="submit" class="btn btn-danger">Non Aktifkan</button>
                      </div>
                      </form> 
                    </div>
      </div>
     </div>
     <?php } ?>
    <!-- End Blokir Data -->
        <?php } ?>  