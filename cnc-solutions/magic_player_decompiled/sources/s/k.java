package s;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import cn.huidu.lcd.core.R$string;
import cn.huidu.lcd.core.entity.model.CloudRegisterResult;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import k2.a0;
import k2.c0;
import k2.t;
import k2.u;
import k2.w;
import k2.x;
import k2.y;
import org.eclipse.jetty.http.HttpMethods;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class k {

    public class a implements k2.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Handler f3416a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ b f3417b;

        public a(Handler handler, b bVar) {
            this.f3416a = handler;
            this.f3417b = bVar;
        }

        @Override // k2.e
        public void a(k2.d dVar, a0 a0Var) {
            this.f3416a.post(new j(this.f3417b, k.d(a0Var), 0));
        }

        @Override // k2.e
        public void b(k2.d dVar, IOException iOException) {
            iOException.printStackTrace();
            this.f3416a.post(new j(this.f3417b, new CloudRegisterResult(-1), 1));
        }
    }

    public interface b {
        void a(@NonNull CloudRegisterResult cloudRegisterResult);
    }

    public static x a(String str, String str2, String str3) {
        String strA;
        String str4;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strA2 = androidx.viewpager2.adapter.a.a(str3, jCurrentTimeMillis);
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("hd#mqtt".getBytes(), "HmacMD5");
            Mac mac = Mac.getInstance(secretKeySpec.getAlgorithm());
            mac.init(secretKeySpec);
            strA = w0.h.a(mac.doFinal(strA2.getBytes(StandardCharsets.UTF_8)));
        } catch (InvalidKeyException | NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            strA = "";
        }
        HashMap map = new HashMap();
        map.put("sn", str3);
        map.put("time", Long.valueOf(jCurrentTimeMillis));
        map.put("sign", strA);
        map.put("user", str2);
        map.put("version", l.e.p(w0.c.f3777a));
        x.a aVar = new x.a();
        aVar.e(str + "/mqtt/register");
        String strH = new t1.i().h(map);
        t tVarB = t.b("application/json;charset=utf-8");
        Charset charsetForName = l2.c.f2445i;
        if (tVarB != null) {
            try {
                str4 = tVarB.f2202b;
            } catch (IllegalArgumentException unused) {
            }
            charsetForName = str4 != null ? Charset.forName(str4) : null;
            if (charsetForName == null) {
                charsetForName = l2.c.f2445i;
                tVarB = t.b(tVarB + "; charset=utf-8");
            }
        }
        byte[] bytes = strH.getBytes(charsetForName);
        int length = bytes.length;
        l2.c.e(bytes.length, 0, length);
        aVar.d(HttpMethods.POST, new y(tVarB, length, bytes, 0));
        return aVar.b();
    }

    public static String b(Context context, int i4) {
        switch (i4) {
            case -4:
                return "404 NOT FOUND";
            case -3:
                return context.getString(R$string.error_invalid_url);
            case -2:
                return context.getString(R$string.error_register_result);
            case -1:
                return context.getString(R$string.network_exception);
            case 0:
            default:
                return context.getString(R$string.unknown_error) + ": " + i4;
            case 1:
                return context.getString(R$string.illegal_device_id);
            case 2:
                return context.getString(R$string.illegal_device_time);
            case 3:
                return context.getString(R$string.error_sign);
            case 4:
                return context.getString(R$string.invalid_version);
            case 5:
                return context.getString(R$string.register_limited);
            case 6:
                return context.getString(R$string.too_many_retries);
            case 7:
                return context.getString(R$string.too_many_device);
            case 8:
                return context.getString(R$string.mqtt_server_not_started);
            case 9:
                return context.getString(R$string.missing_username);
            case 10:
                return context.getString(R$string.user_not_exists);
        }
    }

    public static String c(CloudRegisterResult cloudRegisterResult, Context context) {
        return context == null ? cloudRegisterResult != null ? String.valueOf(cloudRegisterResult.error) : "" : cloudRegisterResult == null ? context.getString(R$string.error_register_result) : b(context, cloudRegisterResult.error);
    }

    public static CloudRegisterResult d(a0 a0Var) {
        try {
            int i4 = a0Var.f2060c;
            if (i4 == 404) {
                return new CloudRegisterResult(-4);
            }
            c0 c0Var = a0Var.f2064g;
            Objects.requireNonNull(c0Var);
            String strE = c0Var.E();
            Log.d("RegisterHelper", "onResponse: " + i4 + ": " + strE);
            int i5 = a0Var.f2060c;
            return e(strE, i5 >= 200 && i5 < 300);
        } catch (Exception e4) {
            e4.printStackTrace();
            return new CloudRegisterResult(-2);
        }
    }

    public static CloudRegisterResult e(String str, boolean z3) throws JSONException {
        CloudRegisterResult cloudRegisterResult = new CloudRegisterResult();
        JSONObject jSONObject = new JSONObject(str);
        if (z3) {
            cloudRegisterResult.clientId = jSONObject.getString("clientId");
            cloudRegisterResult.username = jSONObject.getString("username");
            cloudRegisterResult.password = jSONObject.getString("password");
            JSONObject jSONObject2 = jSONObject.getJSONObject("mqtt");
            CloudRegisterResult.HostPort hostPort = new CloudRegisterResult.HostPort();
            cloudRegisterResult.mqtt = hostPort;
            hostPort.host = jSONObject2.getString("host");
            cloudRegisterResult.mqtt.port = jSONObject2.getInt("port");
            JSONObject jSONObject3 = jSONObject.getJSONObject("resources");
            CloudRegisterResult.HostPort hostPort2 = new CloudRegisterResult.HostPort();
            cloudRegisterResult.resources = hostPort2;
            hostPort2.host = jSONObject3.getString("host");
            cloudRegisterResult.resources.port = jSONObject3.getInt("port");
        } else {
            cloudRegisterResult.error = jSONObject.getInt("error");
            cloudRegisterResult.message = jSONObject.getString("message");
        }
        return cloudRegisterResult;
    }

    public static CloudRegisterResult f(String str, String str2, String str3) {
        try {
            x xVarA = a(str, str2, str3);
            u.b bVar = new u.b();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            bVar.a(30L, timeUnit);
            bVar.c(30L, timeUnit);
            bVar.b(30L, timeUnit);
            return d(((w) new u(bVar).a(xVarA)).b());
        } catch (Exception e4) {
            StringBuilder sbA = android.support.v4.media.f.a("register: error: ");
            sbA.append(e4.getMessage());
            Log.w("RegisterHelper", sbA.toString());
            return new CloudRegisterResult(-1);
        }
    }

    public static void g(String str, String str2, String str3, b bVar) {
        try {
            x xVarA = a(str, str2, str3);
            Handler handler = new Handler(Looper.getMainLooper());
            u.b bVar2 = new u.b();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            bVar2.a(30L, timeUnit);
            bVar2.c(30L, timeUnit);
            bVar2.b(30L, timeUnit);
            ((w) new u(bVar2).a(xVarA)).a(new a(handler, bVar));
        } catch (Exception e4) {
            e4.printStackTrace();
            bVar.a(new CloudRegisterResult(-3));
        }
    }
}
