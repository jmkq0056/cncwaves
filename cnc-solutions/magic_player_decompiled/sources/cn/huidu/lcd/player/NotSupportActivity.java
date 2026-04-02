package cn.huidu.lcd.player;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import w0.f;

/* JADX INFO: loaded from: classes.dex */
public class NotSupportActivity extends AppCompatActivity {
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_not_support);
        f.a(getWindow());
    }
}
