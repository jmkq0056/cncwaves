package s;

import android.util.Log;
import androidx.annotation.NonNull;
import cn.huidu.lcd.core.entity.model.GetWeatherResult;
import java.io.IOException;
import java.util.Objects;
import k2.a0;
import k2.c0;
import s.f;

/* JADX INFO: loaded from: classes.dex */
public class e implements k2.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f.a f3391a;

    public e(f.a aVar) {
        this.f3391a = aVar;
    }

    @Override // k2.e
    public void a(@NonNull k2.d dVar, @NonNull a0 a0Var) {
        GetWeatherResult getWeatherResult;
        f.a aVar = this.f3391a;
        try {
            int i4 = a0Var.f2060c;
            c0 c0Var = a0Var.f2064g;
            Objects.requireNonNull(c0Var);
            String strE = c0Var.E();
            Log.d("GetWeatherHelper", "onResponse: " + i4 + ": " + strE);
            int i5 = a0Var.f2060c;
            getWeatherResult = !(i5 >= 200 && i5 < 300) ? new GetWeatherResult(2) : f.b(strE);
        } catch (Exception e4) {
            e4.printStackTrace();
            getWeatherResult = new GetWeatherResult(3);
        }
        ((l.o) aVar).a(getWeatherResult);
    }

    @Override // k2.e
    public void b(@NonNull k2.d dVar, @NonNull IOException iOException) {
        iOException.printStackTrace();
        ((l.o) this.f3391a).a(new GetWeatherResult(1));
    }
}
