package com.nscando.nscando_trips_app



import android.os.Build
import android.os.Bundle
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        this.getWindow().setStatusBarColor(android.graphics.Color.TRANSPARENT);
    }
}