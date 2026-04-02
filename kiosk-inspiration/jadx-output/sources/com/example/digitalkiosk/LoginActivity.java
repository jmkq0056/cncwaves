package com.example.digitalkiosk;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.example.digitalkiosk.models.LoginToken;
import com.example.digitalkiosk.network.ApiClient;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: LoginActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/example/digitalkiosk/LoginActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "home", "Landroid/content/Intent;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", FirebaseAnalytics.Event.LOGIN, "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LoginActivity extends AppCompatActivity {
    private Intent home;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.home = new Intent(this, (Class<?>) HomeActivity.class);
        setContentView(R.layout.activity_login);
        Button button = (Button) findViewById(R.id.login);
        ((TextView) findViewById(R.id.app_version)).setText(MainActivity.INSTANCE.getAppVersion());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.LoginActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.login();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void login() {
        TextView textView = (TextView) findViewById(R.id.kiosk_id);
        TextView textView2 = (TextView) findViewById(R.id.kiosk_password);
        if (textView.getText().toString().length() <= 0 || textView2.getText().toString().length() <= 0) {
            return;
        }
        ApiClient.INSTANCE.login$app_release(textView.getText().toString(), textView2.getText().toString(), MainActivity.INSTANCE.getAppVersion(), new Callback<LoginToken>() { // from class: com.example.digitalkiosk.LoginActivity.login.1
            @Override // retrofit2.Callback
            public void onFailure(Call<LoginToken> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<LoginToken> call, Response<LoginToken> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                LoginToken loginTokenBody = response.body();
                if (loginTokenBody != null) {
                    MainActivity.INSTANCE.setToken(loginTokenBody.getToken());
                    LoginActivity loginActivity = LoginActivity.this;
                    Intent intent = loginActivity.home;
                    if (intent == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("home");
                        intent = null;
                    }
                    loginActivity.startActivity(intent);
                    LoginActivity.this.finish();
                }
            }
        });
    }
}
