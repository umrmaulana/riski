package com.example.rizqi_elektronik;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.bumptech.glide.Glide;
import com.example.rizqi_elektronik.ui.product.ProductFragment;

public class Detail extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);

        // Mengambil data produk dari Intent
        Product product = (Product) getIntent().getSerializableExtra("produk");

        // Inisialisasi komponen UI
        ImageView imgDetail = findViewById(R.id.imgDetail);
        TextView tvNamaDetail = findViewById(R.id.tvNamaDetail);
        TextView tvHargaDetail = findViewById(R.id.tvHargaDetail);
        TextView tvStokDetail = findViewById(R.id.tvStokDetail);
        TextView tvKategoriDetail = findViewById(R.id.tvKategoriDetail);
        TextView tvDeskripsiDetail = findViewById(R.id.tvDeskripsiDetail);
        Button btnKembali = findViewById(R.id.button);

        // Menampilkan data produk pada UI
        Glide.with(this).load(ServerAPI.BASE_URL_Image + product.getFoto()).into(imgDetail);
        tvNamaDetail.setText(product.getMerk());
        tvHargaDetail.setText(String.format("Rp %,.0f", product.getHargajual()));
        tvStokDetail.setText("Stok: " + product.getStok());
        tvKategoriDetail.setText("Kategori: " + product.getKategori());
        tvDeskripsiDetail.setText("Deskripsi: " + product.getDeskripsi());

        // Menangani aksi klik tombol Kembali
        btnKembali.setOnClickListener(v -> {
            // Kembali ke halaman ProductActivity
            Intent intent = new Intent(Detail.this, ProductFragment.class);
            startActivity(intent);
            finish(); // Menutup DetailActivity
        });
    }
}