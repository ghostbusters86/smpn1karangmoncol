<?php
// session_start();

if (empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<script>alert('Kembalilah Kejalan yg benar!!!'); window.location = 'index.php';</script>";
}
    else{
include '../system/koneksi.php';
include '../system/tgl_indo.php';
  $module="modul/mod_guru/guru_c.php?module=guru";
?>


      <div class="page-head">
        <h2 class="pull-left"><i class="fa fa-users"></i> Users Guru</h2> 
        <div class="bread-crumb pull-right">
          <a href="media.php?module=home"><i class="fa fa-home"></i> Home</a>
          <span class="divider">/</span> 
          <a href="#" class="bread-current">Users</a>
          <span class="divider">/</span> 
          <a href="media.php?module=guru" class="bread-current">Guru</a>
        </div>
        <div class="clearfix"></div>
      </div>

      <div class="matter">
        <div class="container">
          <div class="row">

            <div class="col-md-12">            
             <div class="widget">
                <div class="widget-head">
                  <div class="pull-left">Data Guru</div>
                  <div class="widget-icons pull-right">
                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                  </div>  
                  <div class="clearfix"></div>
                </div>
                <div class="widget-content">

                  <div class="padd">
                  <div style="padding-bottom: 10px;" align="right"><a href="#add" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i> Data Guru</a></div>    
              <!-- Table Page -->
              <div class="page-tables">
                <!-- Table -->
                <div class="table-responsive">
                  <table cellpadding="0" cellspacing="0" border="0" id="data-table-1" width="99%">
                    <thead>
                      <tr>
                        <th><b>No</b></th>
                        <th><b>Nip</b></th>
                        <th><b>Nama</b></th>
                        <th><b>Jenis Kelamin</b></th>
                        <th><b>Alamat</b></th>
                        <th><b>No tlp</b></th>
                        <th><b>Status</b></th>
                        <th><b>Aksi</b></th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      $no = 1;
                      $data = mysql_query("SELECT * FROM teacher order by nip DESC");
                      while ($row = mysql_fetch_assoc($data)) {
                       ?>
                      <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $row['nip']; ?></td>
                        <td><?php echo $row['name']; ?></td>
                        <td><?php if ($row['gender']== 'L') {
                          echo "Laki-laki";
                        }elseif ($row['gender']=='P') {
                          echo "Perempuan";
                        } ?></td>
                        <td><?php echo $row['address']; ?></td>
                        <td><?php echo $row['no_telp']; ?></td>
                        <td><?php if ($row['block']=='Y') {
                          echo "<span class='label label-danger'>Blokir</span>";
                        }elseif ($row['block']=='N') {
                          echo "<span class='label label-success'>Aktif</span>";
                        }  ?></td>

                        <td width="120px">
                          <div class="btn-group1">
                          <a href="#detail<?php echo $row['nip']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-info" title="detail"><i class="fa fa-eye"></i></button></a>

                          <a href="#edit<?php echo $row['nip']; ?>" data-toggle="modal"><button type="button" class="btn btn-sm btn-warning" title="edit"><i class="fa fa-pencil"></i></button></a>
                          

                          <?php if ($row['block']=='Y') {?>
                          <a href="<?php echo $module; ?>&act=aktif&id=<?php echo $row['nip']; ?>"><button type='button' class='btn btn-sm btn-success' title="Aktifkan"><i class="fa fa-check"></i></button>
                          <?php }elseif ($row['block']=='N') {?> 
                          <a href="#blokir<?php echo $row['nip']; ?>" data-toggle="modal"><button type='button' class='btn btn-sm btn-danger' title="Blokir"><i class="fa fa-ban"></i></button></a>
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
                        <h4 class="title-putih"><i class="fa fa-plus"></i> Tambah Data Guru</h4>
                      </div>
                      <div class="modal-body">
                        <form method="POST" action="<?php echo $module; ?>&act=insert" enctype="multipart/form-data">
                      
                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>NIP</label></div>
                          <div class="col-md-8">
                            <input type="text" class="form-control" name="nip" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Nama Lengkap</label></div>
                          <div class="col-md-8">
                            <input type="text" class="form-control" name="nama" required>
                          </div>
                        </div>
                      </div>

                     

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Password</label></div>
                          <div class="col-md-6">
                            <input type="password" class="form-control" name="password" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Alamat</label></div>
                          <div class="col-md-8">
                            <textarea class="form-control" name="alamat" required></textarea>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Tempat Lahir</label></div>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="tempat_lahir" required>
                          </div>
                        </div>
                      </div>

                      

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Tanggal Lahir</label></div>
                          <div class="col-md-5">
                            <div id="3" class="input-append input-group dtpicker">
                            <input data-format="yyyy-MM-dd" type="text" readonly name="tgl_lahir" class="form-control">
                            <span class="input-group-addon add-on">
                            <i data-time-icon="fa fa-times" data-date-icon="fa fa-calendar"></i>
                            </span>
                          </div>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Jenis Kelamin</label></div>
                          <div class="col-md-5">
                            <select name="jenis_kelamin" class="form-control" required>
                                      <option>-Pilih-</option>
                                      <option value="L">Laki-laki</option>
                                      <option value="P">Perempuan</option>
                            </select>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Agama</label></div>
                          <div class="col-md-5">
                            <input type="text" class="form-control" name="agama" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>No Tlp</label></div>
                          <div class="col-md-5">
                            <input type="text" class="form-control" name="no_telp" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Email</label></div>
                          <div class="col-md-6">
                            <input type="email" class="form-control" name="email" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Foto</label></div>
                          <div class="col-md-6">
                            <input type="file" class="btn btn-default" name="fupload" required>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Jabatan</label></div>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="jabatan" required>
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



    <!-- Detail Data -->
    <?php 
                      
                      $data = mysql_query("SELECT * FROM teacher ");
                      while ($row = mysql_fetch_assoc($data)) {                      
    ?>
      <div id="detail<?php echo $row['nip']; ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header biru-langit">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-eye"></i> Detail Data Guru</h4>
                      </div>
                      <div class="modal-body">

                      <div class="form-group">
                        <div class="row imgbacground" align="center">
                        
                        <img class="gambar" src="../image/guru/<?php echo $row['picture']; ?>" alt="" width="30%">
                        <div class="jabatan"><b><?php echo $row['name']; ?></b></div>
                        <div class="jabatan"><b>NIP :<?php echo $row['nip']; ?></b></div>
                        </div>
                      </div>

                      <div class="alert alert-info">
                       <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Alamat</label></div>
                          <div class="col-md-8">
                            : <?php echo $row['address']; ?>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Tempat Lahir</label></div>
                          <div class="col-md-8">
                            : <?php echo $row['po_birth']; ?>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Tanggal Lahir</label></div>
                          <div class="col-md-8">
                            : <?php echo TanggalIndo($row['do_birth']); ?>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Jenis Kelamin</label></div>
                          <div class="col-md-8">
                            : <?php $jk =$row['gender'];
                            if ($jk=='P') {
                              echo "Perempuan";
                            }elseif ($jk=='L') {
                              echo "Laki-laki";
                            } ?>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Agama</label></div>
                          <div class="col-md-8">
                            : <?php echo $row['religion']; ?>
                          </div>
                        </div>
                      </div>



                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>No Tlp</label></div>
                          <div class="col-md-5">
                            : <?php echo $row['no_telp']; ?>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Email</label></div>
                          <div class="col-md-6">
                            : <?php echo $row['email']; ?>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-4"><label>Jabatan</label></div>
                          <div class="col-md-8">
                            : <?php echo $row['position']; ?>
                          </div>
                        </div>
                      </div> 
                      </div>

                      
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                      </div>
                    </div>
      </div>
     </div>
     <?php } ?>
    <!-- End detail Data -->




<!-- Edit Data -->
    <?php 
                      
                      $data = mysql_query("SELECT * FROM teacher ");
                      while ($row = mysql_fetch_assoc($data)) {                      
    ?>    
      <div id="edit<?php echo $row['nip']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header kuning">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-pencil"></i> Edit Data Guru</h4>
                      </div>
                      <div class="modal-body">
                      <form method="POST" action="<?php echo $module; ?>&act=update" enctype="multipart/form-data">
                      
                      <link rel="stylesheet" href="../../../assets/css/bootstrap-datetimepicker.min.css">
                      <script src="../../../assets/js/bootstrap-datetimepicker.min.js"></script>
                      <script src="../../../assets/js/custom.js"></script>


                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>NIP</label></div>
                          <div class="col-md-7">
                            <input type="hidden" name="id" value="<?php echo $row['nip']; ?>">
                            <input type="text" class="form-control" name="nip" value="<?php echo $row['nip']; ?>" required>
                          </div>
                        </div>
                      </div>


                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Nama Lengkap</label></div>
                          <div class="col-md-8">
                            <input type="text" class="form-control" name="nama" value="<?php echo $row['name']; ?>" required>
                          </div>
                        </div>
                      </div>

                      

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Password</label></div>
                          <div class="col-md-7">
                            <input type="password" class="form-control" name="password">
                            <p>Jika password tidak di ubah di kosongkan saja</p>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Alamat</label></div>
                          <div class="col-md-8">
                            <textarea class="form-control" name="alamat" required><?php echo $row['address']; ?></textarea>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Tempat Lahir</label></div>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="tempat_lahir" required value="<?php echo $row['po_birth']; ?>">
                          </div>
                        </div>
                      </div>

                      <?php $ok=rand(1, 100);
                          ?>
  
                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Tanggal Lahir</label></div>
                          <div class="col-md-5">
                            <div id="<?php echo $ok; ?>" class="input-append input-group dtpicker">
                            <input data-format="yyyy-MM-dd" readonly type="text" name="tgl_lahir" class="form-control" value="<?php echo $row['do_birth']; ?>">
                            <span class="input-group-addon add-on">
                            <i data-time-icon="fa fa-times" data-date-icon="fa fa-calendar"></i>
                            </span>
                          </div>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Jenis Kelamin</label></div>
                          <div class="col-md-5">
                            <select name="jk" class="form-control" required>
                                      <option value="<?php echo $row['gender']; ?>">
                                        <?php if ($row['gender']=='L') {
                                          echo "Laki-laki";
                                          }elseif ($row['gender']=='P') {
                                            echo "Perempuan";
                                          
                                        } ?>
                                      </option>
                                      <?php if ($row['gender']=='L') {
                                        echo "<option value='P'>Perempuan</option>";
                                      } elseif ($row['gender']=='P') {
                                        echo "<option value='L'>Laki-laki</option>";
                                      } ?>
                            </select>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Agama</label></div>
                          <div class="col-md-5">
                            <input type="text" class="form-control" name="agama" required value="<?php echo $row['religion']; ?>">
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>No Tlp</label></div>
                          <div class="col-md-5">
                            <input type="text" class="form-control" name="no_telp" required value="<?php echo $row['no_telp']; ?>">
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Email</label></div>
                          <div class="col-md-6">
                            <input type="email" class="form-control" name="email" required value="<?php echo $row['email']; ?>">
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Foto</label></div>
                          <div class="col-md-8">
                            <input type="file" class="btn btn-default" name="fupload">
                            <p>Jika Foto tidak di ubah di kosongkan saja</p>
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-3"><label>Jabatan</label></div>
                          <div class="col-md-6">
                            <input type="text" class="form-control" name="jabatan" required value="<?php echo $row['position']; ?>">
                          </div>
                        </div>
                      </div>


                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button type="submit" class="btn btn-primary">Update</button>
                      </div>
                      </form> 
                    </div>
      </div>
     </div>
     <?php } ?>
    <!-- End Edit Data -->


<!-- Blokir Data -->
    <?php 
                      
                      $data = mysql_query("SELECT * FROM teacher ");
                      while ($row = mysql_fetch_assoc($data)) {                      
    ?>    
      <div id="blokir<?php echo $row['nip']; ?>" class="modal fade " tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog" style="width: 500px;">
            <div class="modal-content">
                      <div class="modal-header merah">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-close"></i></button>
                        <h4 class="title-putih"><i class="fa fa-ban"></i> Blokir Data Admin</h4>
                      </div>
                      <div class="modal-body">
                      
                      <form method="POST" action="<?php echo $module; ?>&act=blokir">
                      
                      <div class="alert alert-danger">
                      <h4><i class="icon fa fa-ban"></i> <b>Peringatan!</b></h4>
                      Apakah Anda ingin memblokir user <b><?php echo $row['name']; ?></b> ? 
                      Jika user <b><?php echo $row['name']; ?></b> di blokir, maka user <b><?php echo $row['name']; ?></b> tidak akan bisa login kembali.  
                      </div>

                      <input type="hidden" name="id" value="<?php echo $row['nip']; ?>">


                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" aria-hidden="true">Close</button>
                        <button type="submit" class="btn btn-danger">Blokir</button>
                      </div>
                      </form> 
                    </div>
      </div>
     </div>
     <?php } ?>
    <!-- End Blokir Data -->
        <?php } ?>  