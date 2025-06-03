// SplashScreen.java
package com.example.rizqi_elektronik;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

public class SplashScreen extends AppCompatActivity {
    private static final int SPLASH_DELAY = 1500; // 1.5 detik

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);
        ImageView imgHurufLogo = findViewById(R.id.imgHuruflogo);

        Animation animDown = AnimationUtils.loadAnimation(this, R.anim.fade_in_translate_down);
        imgHurufLogo.startAnimation(animDown);

        SharedPreferences sharedPreferences = getSharedPreferences("user_session", MODE_PRIVATE);
        boolean isLoggedIn = sharedPreferences.contains("email");

        new Handler().postDelayed(() -> {
            Intent intent;
            if (isLoggedIn) {
                // langsung ke MainActivity (yang buka HomeFragment)
                intent = new Intent(SplashScreen.this, MainActivity.class);
            } else {
                intent = new Intent(SplashScreen.this, MainActivity.class);
            }
            startActivity(intent);
            finish();
        }, SPLASH_DELAY);
    }
}
