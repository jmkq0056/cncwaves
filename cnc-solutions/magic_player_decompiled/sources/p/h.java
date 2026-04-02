package p;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import cn.huidu.lcd.core.R$string;
import cn.huidu.lcd.core.entity.model.CloudRegisterResult;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.concurrent.atomic.AtomicBoolean;
import l.k;

/* JADX INFO: loaded from: classes.dex */
public class h extends AsyncTask<Object, Object, String> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String[] f2942m = {"114.114.114.114", "8.8.8.8"};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String[] f2943n = {"www.led-cloud.cn", "www.led-cloud.com"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakReference<a> f2944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AtomicBoolean f2945b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2948e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2949f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public CloudRegisterResult f2950g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2951h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2952i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2953j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f2954k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2955l;

    public interface a {
        void c(boolean z3, String str);

        void f(int i4, String str);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Context f2956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2957b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2958c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f2959d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2960e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2961f;

        public b(Context context) {
            this.f2956a = context;
        }

        public void a(boolean z3) {
            this.f2958c = 0;
            this.f2960e = z3;
        }
    }

    public h(a aVar) {
        this.f2944a = new WeakReference<>(aVar);
    }

    public static String f(Context context, int i4) {
        switch (i4) {
            case 0:
                return context.getString(R$string.test_item_network_connection);
            case 1:
                return context.getString(R$string.test_item_network_info);
            case 2:
                return context.getString(R$string.test_item_local_network);
            case 3:
                return context.getString(R$string.test_item_external_network);
            case 4:
                return context.getString(R$string.test_item_look_up);
            case 5:
                return context.getString(R$string.test_item_cloud_setting);
            case 6:
                return context.getString(R$string.test_item_server_connect);
            case 7:
                return context.getString(R$string.test_item_server_request);
            case 8:
                return context.getString(R$string.test_item_server_port);
            case 9:
                return context.getString(R$string.test_item_download_speed);
            default:
                return String.valueOf(i4);
        }
    }

    @SuppressLint({"MissingPermission"})
    public final void a(boolean z3, b bVar) {
        Context context = bVar.f2956a;
        k kVarA = k.a();
        int simState = kVarA.f2353a.getSimState();
        int iB = kVarA.b();
        int i4 = kVarA.f2354b;
        StringBuilder sbA = android.support.v4.media.a.a("sim state: ", simState, ", operator: ");
        sbA.append(kVarA.f2353a.getSimOperator());
        sbA.append(", data state: ");
        sbA.append(kVarA.f2353a.getDataState());
        sbA.append(", network type: ");
        sbA.append(iB);
        sbA.append(", dbm: ");
        sbA.append(kVarA.f2355c);
        sbA.append(", level: ");
        sbA.append(i4);
        sbA.append(", roaming: ");
        sbA.append(kVarA.f2353a.isNetworkRoaming());
        e(sbA.toString());
        if (bVar.f2959d == null) {
            String string = context.getString(R$string.move_network);
            switch (iB) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    string = "2G";
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    string = "3G";
                    break;
                case 13:
                    string = "4G";
                    break;
            }
            bVar.f2959d = b(context, string, c(context, i4), z3);
        }
        if (z3) {
            bVar.a(i4 < 2);
            return;
        }
        this.f2955l = simState;
        if (simState != 5) {
            bVar.f2958c = 14;
            bVar.f2961f = true;
            return;
        }
        if (iB == 0) {
            bVar.f2958c = 15;
            bVar.f2961f = true;
        } else if (i4 < 2) {
            bVar.f2958c = 16;
            bVar.f2961f = true;
        } else if (q.h.a(w0.c.f3777a)) {
            bVar.f2958c = 1;
            bVar.f2961f = true;
        } else {
            bVar.f2958c = 17;
            bVar.f2961f = true;
        }
    }

    public final String b(Context context, String str, String str2, boolean z3) {
        String string = context.getString(z3 ? R$string.connected : R$string.not_connected);
        StringBuilder sbA = android.support.v4.media.g.a(str, " ");
        if (str2 != null) {
            string = android.support.v4.media.h.a(string, " ", str2);
        }
        sbA.append(string);
        return sbA.toString();
    }

    public final String c(Context context, int i4) {
        return i4 < 1 ? context.getString(R$string.signal_strength_none) : i4 < 2 ? context.getString(R$string.signal_strength_poor) : i4 < 3 ? context.getString(R$string.signal_strength_moderate) : i4 < 4 ? context.getString(R$string.signal_strength_good) : context.getString(R$string.signal_strength_great);
    }

    public final String d(o.c cVar) {
        if (cVar.f2818f != 0) {
            StringBuilder sbA = android.support.v4.media.f.a("error: ");
            sbA.append(cVar.f2818f);
            return sbA.toString();
        }
        StringBuilder sbA2 = android.support.v4.media.f.a("transmitted: ");
        sbA2.append(cVar.f2813a);
        sbA2.append(", received: ");
        sbA2.append(cVar.f2814b);
        sbA2.append(", time: ");
        sbA2.append(cVar.f2819g);
        sbA2.append(", rtt Min|Max|Avg: ");
        sbA2.append(cVar.f2817e);
        sbA2.append("|");
        sbA2.append(cVar.f2816d);
        sbA2.append("|");
        sbA2.append(cVar.f2815c);
        return sbA2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x055a  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0287 A[LOOP:1: B:71:0x0240->B:86:0x0287, LOOP_END] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v95 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v43 */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String doInBackground(java.lang.Object[] r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p.h.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    public final void e(String str) {
        publishProgress(1, str);
    }

    public final boolean g(String str, int i4) throws Throwable {
        Socket socket;
        if (str.startsWith("http")) {
            try {
                str = Uri.parse(str).getHost();
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        Socket socket2 = null;
        try {
            try {
                socket = new Socket();
            } catch (Throwable th) {
                th = th;
                socket = socket2;
            }
        } catch (Exception e5) {
            e = e5;
        }
        try {
            socket.connect(new InetSocketAddress(str, i4), 15000);
            try {
                socket.close();
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            return true;
        } catch (Exception e7) {
            e = e7;
            socket2 = socket;
            e.printStackTrace();
            if (socket2 != null) {
                try {
                    socket2.close();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            if (socket != null) {
                try {
                    socket.close();
                } catch (IOException e9) {
                    e9.printStackTrace();
                }
            }
            throw th;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        String str2 = str;
        this.f2945b.set(true);
        a aVar = this.f2944a.get();
        if (aVar == null) {
            return;
        }
        aVar.c(this.f2946c == 0, str2);
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        this.f2945b.set(false);
    }

    @Override // android.os.AsyncTask
    public void onProgressUpdate(Object... objArr) {
        a aVar = this.f2944a.get();
        if (aVar == null) {
            return;
        }
        aVar.f(((Integer) objArr[0]).intValue(), objArr.length > 1 ? (String) objArr[1] : null);
    }
}
