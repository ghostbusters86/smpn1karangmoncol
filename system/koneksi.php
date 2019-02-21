<?php

// koneksi lokal
define("DATABASE_HOST", "localhost"); //database host
define("DATABASE_NAME", "smpnkara_5c3"); //nama database
define("DATABASE_USER", "root"); //user database
define("DATABASE_PASSWORD", ""); // password

// koneksi online
// define("DATABASE_HOST", "localhost"); //database host
// define("DATABASE_NAME", "smpnkara_5c3"); //nama database
// define("DATABASE_USER", "smpnkara_5c3"); //user database
// define("DATABASE_PASSWORD", "3.s.0.c.9.m.7"); // password

mysql_connect(DATABASE_HOST, DATABASE_USER, DATABASE_PASSWORD) or die("<p>Koneksi Gagal! cek konfigurasi koneksi:<br />" .mysql_error(). "</p>");
	//echo "<p>Koneksi server suskes!</p>";  // uncomment for displaying success connection test message.
mysql_select_db(DATABASE_NAME) or die ("Database <strong>".DATABASE_NAME."</strong> tidak bisa dibuka! pastikan database <big><strong>".DATABASE_NAME."</strong></big> ada dalam sistem.");
 //echo "<p>Terhubung dengan MySQL, mengunakan database <b>".DATABASE_NAME."</b> </p>"; //uncomment for displaying success connection test message.
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\


?>
