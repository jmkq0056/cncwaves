package p;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class e<Params, Result> extends i<Params> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Handler f2936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2937e;

    public e(Handler handler, int i4) {
        this.f2936d = handler;
        this.f2937e = i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p.i
    public final void b(Params params) {
        List<ScanResult> scanResults;
        f fVar = (f) this;
        f.a aVar = new f.a();
        aVar.f2940a = new ArrayList();
        if (fVar.f2939f.getWifiState() == 3) {
            o.g gVar = null;
            try {
                scanResults = fVar.f2939f.getScanResults();
            } catch (SecurityException e4) {
                e4.printStackTrace();
                scanResults = null;
            }
            if (fVar.f2963a.get() || scanResults == null || scanResults.size() == 0) {
                Log.d("LoadWiFiListTask", "handleTask: load wifi list failed.");
            } else {
                a aVar2 = a.f2914c;
                System.setProperty("java.util.Arrays.useLegacyMergeSort", "true");
                Collections.sort(scanResults, aVar2);
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                while (i4 < scanResults.size()) {
                    String str = scanResults.get(i4).SSID;
                    if (str == null || str.length() == 0 || arrayList.contains(str)) {
                        scanResults.remove(i4);
                        i4--;
                        i4++;
                    } else {
                        arrayList.add(str);
                        i4++;
                    }
                }
                for (ScanResult scanResult : scanResults) {
                    String str2 = scanResult.SSID;
                    if (str2 != null && str2.length() != 0) {
                        aVar.f2940a.add(new o.g(scanResult));
                    }
                }
                WifiInfo connectionInfo = fVar.f2939f.getConnectionInfo();
                if (connectionInfo != null && connectionInfo.getSSID() != null) {
                    String ssid = connectionInfo.getSSID();
                    Iterator<o.g> it = aVar.f2940a.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        o.g next = it.next();
                        StringBuilder sbA = android.support.v4.media.f.a("\"");
                        sbA.append(next.f2840a);
                        sbA.append("\"");
                        if (ssid.equals(sbA.toString())) {
                            gVar = next;
                            break;
                        }
                    }
                }
                if (gVar != null) {
                    aVar.f2940a.remove(gVar);
                    aVar.f2940a.add(0, gVar);
                    aVar.f2941b = gVar.f2840a;
                }
            }
        } else {
            Log.d("LoadWiFiListTask", "doInBackground::Wi-Fi is not enabled.");
        }
        if (this.f2963a.get() || this.f2936d == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = this.f2937e;
        messageObtain.obj = aVar;
        this.f2936d.sendMessage(messageObtain);
    }
}
