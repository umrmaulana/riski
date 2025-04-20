<?php
$servername = "localhost";
$username = "root";  // Sesuaikan dengan username database Anda
$password = "";       // Sesuaikan dengan password database Anda
$dbname = "uts-uasmobile2"; // Sesuaikan dengan nama database Anda

// Buat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Query untuk mengambil data produk
$sql = "SELECT kode, merk, kategori, hargajual, stok, foto, deskripsi FROM tbl_product";
$result = $conn->query($sql);

$products = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $products[] = $row;
    }
}

// Mengembalikan data dalam format JSON
echo json_encode($products);

$conn->close();
