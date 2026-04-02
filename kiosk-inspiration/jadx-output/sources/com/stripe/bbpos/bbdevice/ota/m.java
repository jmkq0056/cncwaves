package com.stripe.bbpos.bbdevice.ota;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.b;
import com.stripe.bbpos.bbdevice.ota.y;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.WinError;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
final class m {
    private final Object a = new Object();
    private b b;
    private Proxy c;

    m(b bVar) {
        this.b = bVar;
    }

    private void b(String str) {
    }

    synchronized void a(Proxy proxy) {
        synchronized (this.a) {
            this.c = proxy;
        }
    }

    void b(String str, y yVar) {
        b("[callWebServiceGetOTAKeyTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceGetOTAKeyTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            jSONObject.put("keyType", yVar.a());
            jSONObject.put("sessionToken", yVar.o0());
            yVar.s(f0.d("DF8778", yVar.n().e()));
            jSONObject.put("tlv", yVar.J().toUpperCase(Locale.ROOT));
        } catch (Exception unused) {
        }
        a(str, "ota-key-getter", jSONObject, 0);
    }

    void c(String str, y yVar) {
        b("[callWebServiceGetResourceAuthData]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceGetResourceAuthData]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            if (yVar.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                jSONObject.put("resourceType", "04");
            } else if (yVar.H() == y.b.REMOTE_CONFIG_UPDATE) {
                jSONObject.put("resourceType", "12");
            } else if (yVar.H() == y.b.GET_FILE_SIGNATURE) {
                jSONObject.put("resourceType", "FA");
                jSONObject.put("romId", yVar.T());
            }
            jSONObject.put("sessionToken", yVar.o0());
            yVar.w(f0.d("DF8778", yVar.n().e()));
            jSONObject.put("tlv", yVar.Q().toUpperCase(Locale.ROOT));
        } catch (Exception unused) {
        }
        a(str, "resource-auth-data-getter", jSONObject, 0);
    }

    void d(String str, y yVar) {
        b("[callWebServiceGetResourceTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceGetResourceTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            if (yVar.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                jSONObject.put("resourceType", "04");
                jSONObject.put("currentVersion", yVar.n().d());
            } else if (yVar.H() == y.b.REMOTE_CONFIG_UPDATE) {
                jSONObject.put("resourceType", "12");
                jSONObject.put("currentVersion", yVar.n().i());
            }
            jSONObject.put("forceUpdate", yVar.s0());
            yVar.x(f0.d("DF8778", yVar.n().e()));
            jSONObject.put("tlv", yVar.R().toUpperCase(Locale.ROOT));
        } catch (Exception unused) {
        }
        a(str, "resource-getter", jSONObject, 0);
    }

    void e(String str, y yVar) {
        b("[callWebServiceGetTargetVersionListTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceGetTargetVersionListTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            if (yVar.d0() == BBDeviceOTAController.TargetVersionType.FIRMWARE) {
                jSONObject.put("resourceType", "04");
            } else if (yVar.d0() == BBDeviceOTAController.TargetVersionType.CONFIG) {
                jSONObject.put("resourceType", "12");
            } else if (yVar.d0() == BBDeviceOTAController.TargetVersionType.KEY_PROFILE) {
                jSONObject.put("resourceType", "7F");
            }
        } catch (Exception unused) {
        }
        a(str, "resource-list-getter", jSONObject, 0);
    }

    void f(String str, y yVar) {
        b("[callWebServiceGetTargetVersionTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceGetTargetVersionTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
        } catch (Exception unused) {
        }
        a(str, "terminal-target-version-getter", jSONObject, 0);
    }

    void g(String str, y yVar) {
        b("[callWebServiceMutualAuthChallenge]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceMutualAuthChallenge]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            jSONObject.put("tmkType", yVar.b());
            String strI = yVar.i();
            Locale locale = Locale.ROOT;
            jSONObject.put("challenge", strI.toUpperCase(locale));
            yVar.p(yVar.D().toUpperCase(locale) + f0.d("DF8778", yVar.n().e()));
            jSONObject.put("tlv", yVar.D().toUpperCase(locale));
        } catch (Exception unused) {
        }
        a(str, "mutual-authorization-challenge-getter", jSONObject, 0);
    }

    void h(String str, y yVar) {
        b("[callWebServiceMutualAuthConfirm]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceMutualAuthConfirm]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sessionToken", yVar.o0());
            String strB = yVar.B();
            Locale locale = Locale.ROOT;
            jSONObject.put("kcvKek", strB.toUpperCase(locale));
            yVar.q(yVar.E() + f0.d("DF8778", yVar.n().e()));
            jSONObject.put("tlv", yVar.E().toUpperCase(locale));
        } catch (Exception unused) {
        }
        a(str, "mutual-authorization-confirmation", jSONObject, 0);
    }

    void i(String str, y yVar) {
        b("[callWebServicePrivateGetResourceAuthData]");
        r.c("[CubeFlowWebServiceCenter] [callWebServicePrivateGetResourceAuthData]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            if (yVar.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                jSONObject.put("resourceType", "04");
            } else if (yVar.H() == y.b.REMOTE_CONFIG_UPDATE) {
                jSONObject.put("resourceType", "12");
            }
            jSONObject.put("sessionToken", yVar.o0());
            jSONObject.put("resourceHash", yVar.s());
            jSONObject.put("resourceCMAC", yVar.b0());
            yVar.w(f0.d("DF8778", yVar.n().e()) + f0.d("DF8728", yVar.b0()) + f0.d("DF866F", yVar.s()));
            jSONObject.put("tlv", yVar.Q().toUpperCase(Locale.ROOT));
        } catch (Exception unused) {
        }
        a(str, "private-resource-auth-data-getter", jSONObject, 0);
    }

    void j(String str, y yVar) {
        b("[callWebServiceSetTargetVersionTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceSetTargetVersionTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            if (yVar.d0() == BBDeviceOTAController.TargetVersionType.FIRMWARE) {
                jSONObject.put("resourceType", "04");
                jSONObject.put("version", yVar.V());
            } else if (yVar.d0() == BBDeviceOTAController.TargetVersionType.CONFIG) {
                jSONObject.put("resourceType", "12");
                if (!yVar.U().equalsIgnoreCase("")) {
                    jSONObject.put("version", yVar.U());
                }
                if (!yVar.Y().equalsIgnoreCase("")) {
                    jSONObject.put("version", yVar.Y());
                }
            } else if (yVar.d0() == BBDeviceOTAController.TargetVersionType.KEY_PROFILE) {
                jSONObject.put("resourceType", "7F");
                if (!yVar.X().equalsIgnoreCase("")) {
                    jSONObject.put("version", yVar.X());
                }
                if (yVar.W() != 0) {
                    jSONObject.put("keyProfileID", yVar.W());
                }
            }
            jSONObject.put("applyToAll", yVar.w0());
        } catch (Exception unused) {
        }
        a(str, "terminal-target-versions", jSONObject, 0);
    }

    void a(String str, y yVar, Date date) {
        b("[callWebServiceLoginTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceLoginTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("vendorId", yVar.m0());
            jSONObject.put("vendorSecret", yVar.n0());
            jSONObject.put(RemoteConfigConstants.RequestFieldKey.APP_ID, yVar.e());
            jSONObject.put("appSecret", yVar.f());
            jSONObject.put("deviceInfo", yVar.n().a(date));
        } catch (Exception unused) {
        }
        a(str, FirebaseAnalytics.Event.LOGIN, jSONObject, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        this.b.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.b.b().d("02");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.b.b().d("02");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.b.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.b.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
    }

    private boolean c(String str) {
        return str.equalsIgnoreCase("checkToken") || str.equalsIgnoreCase("resource-getter") || str.equalsIgnoreCase("mutual-authorization-challenge-getter") || str.equalsIgnoreCase("mutual-authorization-confirmation") || str.equalsIgnoreCase("resource-auth-data-getter") || str.equalsIgnoreCase("private-resource-auth-data-getter") || str.equalsIgnoreCase("ota-key-list-getter") || str.equalsIgnoreCase("ota-key-getter") || str.equalsIgnoreCase("ota-histories") || str.equalsIgnoreCase("terminal-target-version-getter") || str.equalsIgnoreCase("resource-list-getter") || str.equalsIgnoreCase("terminal-target-versions");
    }

    void a(String str, y yVar) {
        b("[callWebServiceGetOTAKeyListTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceGetOTAKeyListTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
        } catch (Exception unused) {
        }
        a(str, "ota-key-list-getter", jSONObject, 0);
    }

    void a(String str, y yVar, String str2) {
        b("[callWebServiceNotifyTMS]");
        r.c("[CubeFlowWebServiceCenter] [callWebServiceNotifyTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            if (yVar.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                jSONObject.put("resourceType", "04");
            } else if (yVar.H() == y.b.REMOTE_CONFIG_UPDATE) {
                jSONObject.put("resourceType", "12");
            } else if (yVar.H() == y.b.REMOTE_KEY_INJECTION) {
                jSONObject.put("resourceType", "7F");
            }
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, str2);
            if (str2.equalsIgnoreCase("FAILED") || str2.equalsIgnoreCase("FAILED")) {
                jSONObject.put("failedReason", yVar.v());
            }
        } catch (Exception unused) {
        }
        yVar.r(str2);
        a(str, "ota-histories", jSONObject, 0);
    }

    void a(final String str, final String str2, final JSONObject jSONObject, int i) {
        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.m$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, str2, jSONObject);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, JSONObject jSONObject) {
        HttpsURLConnection httpsURLConnection;
        String string;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        synchronized (this.a) {
            b("[callWS] url : " + str + str2 + ", jsonObject : " + jSONObject);
            b("[callWS] Thread.currentThread().getId() : " + Thread.currentThread().getId());
            r.c("[CubeFlowWebServiceCenter] [callWS] url : " + str + str2 + ", jsonObject : " + jSONObject);
            if (!str.startsWith("https://")) {
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Invalid URL");
                return;
            }
            HttpURLConnection httpURLConnection = null;
            try {
                try {
                    try {
                        a0 a0Var = new a0();
                        b("[callWS] tlsSocketFactory.getDefaultCipherSuites() : " + Arrays.deepToString(a0Var.getDefaultCipherSuites()));
                        b("[callWS] tlsSocketFactory.getSupportedCipherSuites() : " + Arrays.deepToString(a0Var.getSupportedCipherSuites()));
                    } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                    }
                    if (this.c != null) {
                        httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str + str2 + "?APIVersion=" + a(str2)).openConnection(this.c)));
                    } else {
                        httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str + str2 + "?APIVersion=" + a(str2)).openConnection()));
                    }
                    HttpsURLConnection httpsURLConnection2 = httpsURLConnection;
                    httpsURLConnection2.setConnectTimeout(120000);
                    httpsURLConnection2.setReadTimeout(120000);
                    httpsURLConnection2.setDoInput(true);
                    if (str2.equalsIgnoreCase(NotificationCompat.CATEGORY_STATUS)) {
                        httpsURLConnection2.setDoOutput(false);
                        httpsURLConnection2.setRequestMethod(FirebasePerformance.HttpMethod.GET);
                    } else if (str2.equalsIgnoreCase("terminal-target-versions")) {
                        httpsURLConnection2.setDoOutput(true);
                        httpsURLConnection2.setRequestMethod(FirebasePerformance.HttpMethod.PUT);
                    } else {
                        httpsURLConnection2.setDoOutput(true);
                        httpsURLConnection2.setRequestMethod(FirebasePerformance.HttpMethod.POST);
                    }
                    httpsURLConnection2.setRequestProperty("Content-Type", "application/json");
                    httpsURLConnection2.setRequestProperty("Accept", "application/json");
                    if (c(str2)) {
                        httpsURLConnection2.setRequestProperty("Authorization", "Bearer:" + this.b.e().g());
                    }
                    if (jSONObject != null) {
                        OutputStream outputStream = httpsURLConnection2.getOutputStream();
                        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
                        dataOutputStream.write(jSONObject.toString().getBytes());
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        outputStream.close();
                    }
                    b("[callWS] urlConnection.getHeaderFields() : " + httpsURLConnection2.getHeaderFields().toString());
                    httpsURLConnection2.connect();
                    int responseCode = httpsURLConnection2.getResponseCode();
                    b("[callWS] responseCode : " + responseCode);
                    r.c("[CubeFlowWebServiceCenter] [callWS] responseCode : " + responseCode);
                    if (responseCode == 200) {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpsURLConnection2.getInputStream()));
                        StringBuffer stringBuffer2 = new StringBuffer();
                        while (true) {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            } else {
                                stringBuffer2.append(line);
                            }
                        }
                        bufferedReader2.close();
                        b("[callWS] response : " + ((Object) stringBuffer2));
                        r.c("[CubeFlowWebServiceCenter] [callWS] response : " + ((Object) stringBuffer2));
                        a(true, str2, stringBuffer2.toString(), responseCode);
                    } else {
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection2.getErrorStream()));
                            stringBuffer = new StringBuffer();
                        } catch (Exception e) {
                            b("[callWS] e2 : " + e);
                            string = "";
                        }
                        while (true) {
                            String line2 = bufferedReader.readLine();
                            if (line2 == null) {
                                break;
                            } else {
                                stringBuffer.append(line2);
                            }
                            a(false, str2, string, responseCode);
                        }
                        bufferedReader.close();
                        string = stringBuffer.toString();
                        b("[callWS] response : " + string);
                        r.c("[CubeFlowWebServiceCenter] [callWS] response : " + string);
                        a(false, str2, string, responseCode);
                    }
                } catch (SocketTimeoutException e2) {
                    b("[callWS] SocketTimeoutException : " + r.a(e2));
                    r.c("[CubeFlowWebServiceCenter] [callWS] SocketTimeoutException : " + r.a(e2));
                    try {
                        b("[callWS] response code: " + httpURLConnection.getResponseCode());
                        r.c("[CubeFlowWebServiceCenter] [callWS] response code: " + httpURLConnection.getResponseCode());
                    } catch (IOException unused2) {
                    }
                    a(false, str2, "SocketTimeoutException : " + r.a(e2), 0);
                }
            } catch (MalformedURLException e3) {
                b("[callWS] MalformedURLException : " + r.a(e3));
                r.c("[CubeFlowWebServiceCenter] [callWS] MalformedURLException : " + r.a(e3));
                a(false, str2, "MalformedURLException : " + r.a(e3), 0);
            } catch (IOException e4) {
                b("[callWS] IOException : " + r.a(e4));
                r.c("[CubeFlowWebServiceCenter] [callWS] IOException : " + r.a(e4));
                try {
                    b("[callWS] response code: " + httpURLConnection.getResponseCode());
                    r.c("[CubeFlowWebServiceCenter] [callWS] response code: " + httpURLConnection.getResponseCode());
                } catch (IOException unused3) {
                }
                a(false, str2, "IOException : " + r.a(e4), 0);
            }
        }
    }

    void a(boolean z, String str, String str2, int i) throws JSONException {
        String str3;
        String str4;
        String strB;
        String string;
        String string2;
        String string3;
        b("[onReturnWS] function : " + str + ", isResponseSuccess : " + z + ",  response : " + str2);
        r.c("[CubeFlowWebServiceCenter] [onReturnWS] response : " + str2);
        if (!z) {
            if (i == 0) {
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + str2 + ")");
                return;
            }
            if (str2.equalsIgnoreCase("")) {
                if (str.equalsIgnoreCase("ota-histories")) {
                    this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                    return;
                } else {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                    return;
                }
            }
            try {
                JSONObject jSONObject = new JSONObject(str2);
                String strC = f0.c(g0.f(jSONObject, "resultCode", false));
                String strC2 = f0.c(g0.f(jSONObject, "resultMessage", false));
                if (str.equalsIgnoreCase("ota-histories")) {
                    this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, strC2 + " (" + i + ") (" + strC + ")");
                    return;
                } else {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, strC2 + " (" + i + ") (" + strC + ")");
                    return;
                }
            } catch (Exception unused) {
                if (str.equalsIgnoreCase("ota-histories")) {
                    this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                    return;
                } else {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                    return;
                }
            }
        }
        try {
            y yVarE = this.b.e();
            if (yVarE.x0() && !str.equalsIgnoreCase("ota-histories")) {
                this.b.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_STOP);
                this.b.b().b();
                return;
            }
            str3 = ")";
            try {
                if (str.equalsIgnoreCase(FirebaseAnalytics.Event.LOGIN)) {
                    if (this.b.d() != b.a.REQUEST_WEB_SERVICE_LOGIN_TO_TMS) {
                        this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", login)");
                        return;
                    }
                    this.b.a(b.a.RECEIVED_WEB_SERVICE_LOGIN_FROM_TMS);
                    JSONObject jSONObject2 = new JSONObject(str2);
                    String strF = g0.f(jSONObject2, "resultCode", false);
                    String strF2 = g0.f(jSONObject2, "resultMessage", false);
                    if (strF.equals("0000") && strF2.equals("OK")) {
                        g0.e(jSONObject2, "unixTimestamp", true);
                        g0.f(jSONObject2, "isoTime", true);
                        yVarE.a(g0.f(g0.d(jSONObject2, "record", false), "bearerToken", false));
                        y.b bVarH = yVarE.H();
                        y.b bVar = y.b.REMOTE_FIRMWARE_UPDATE;
                        if (bVarH == bVar || yVarE.H() == y.b.REMOTE_CONFIG_UPDATE || yVarE.H() == y.b.REMOTE_KEY_INJECTION) {
                            this.b.a(1);
                        }
                        if (yVarE.H() != bVar && yVarE.H() != y.b.REMOTE_CONFIG_UPDATE) {
                            if (yVarE.H() == y.b.REMOTE_KEY_INJECTION) {
                                this.b.a(b.a.REQUEST_WEB_SERVICE_GET_OTA_KEY_LIST_TO_TMS);
                                a(yVarE.K(), yVarE);
                                return;
                            }
                            if (yVarE.H() == y.b.GET_TARGET_VERSION) {
                                this.b.a(b.a.REQUEST_WEB_SERVICE_GET_TARGET_VERSION_TO_TMS);
                                f(yVarE.K(), yVarE);
                                return;
                            }
                            if (yVarE.H() == y.b.GET_TARGET_VERSION_LIST) {
                                this.b.a(b.a.REQUEST_WEB_SERVICE_GET_TARGET_VERSION_LIST_TO_TMS);
                                e(yVarE.K(), yVarE);
                                return;
                            } else if (yVarE.H() == y.b.SET_TARGET_VERSION) {
                                this.b.a(b.a.REQUEST_WEB_SERVICE_SET_TARGET_VERSION_TO_TMS);
                                j(yVarE.K(), yVarE);
                                return;
                            } else {
                                if (yVarE.H() == y.b.GET_FILE_SIGNATURE) {
                                    this.b.a(b.a.REQUEST_CHALLENGE_R1_FROM_FW);
                                    this.b.b().e(TlvMap.ENTRY_MODE_CONTACT);
                                    return;
                                }
                                return;
                            }
                        }
                        if (yVarE.q0()) {
                            this.b.a(b.a.REQUEST_CHALLENGE_R1_FROM_FW);
                            this.b.b().e(TlvMap.ENTRY_MODE_CONTACT);
                            return;
                        }
                        if (yVarE.p().equalsIgnoreCase("") && yVarE.q().equalsIgnoreCase("")) {
                            this.b.a(b.a.REQUEST_WEB_SERVICE_GET_RESOURCE_TO_TMS);
                            d(yVarE.K(), yVarE);
                            return;
                        }
                        if (yVarE.p().equalsIgnoreCase("") && !yVarE.q().equalsIgnoreCase("")) {
                            String strQ = yVarE.q();
                            if (new File(strQ).exists()) {
                                try {
                                    yVarE.f(f0.f(strQ).trim());
                                } catch (IOException unused2) {
                                    this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Input hex file can't be accessed");
                                }
                            } else {
                                this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Input hex file doesn't exist");
                            }
                        }
                        String strP = yVarE.p();
                        if (!f0.j(strP)) {
                            this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Invalid encHex or encHexFile");
                            return;
                        }
                        try {
                            List<b0> listA = c0.a(strP);
                            String strB2 = f0.b(c0.a(listA, "DF861E").c);
                            String strB3 = f0.b(c0.a(listA, "DF8629").c);
                            String strB4 = f0.b(c0.a(listA, "DF863E").c);
                            String strB5 = f0.b(c0.a(listA, "DF866D").c);
                            String strB6 = f0.b(c0.a(listA, "DF866F").c);
                            String strB7 = f0.b(c0.a(listA, "DF866E").c);
                            String strB8 = f0.b(c0.a(listA, "DF8728").c);
                            String str5 = new String(f0.i(strB7));
                            String strB9 = f0.b(c0.a(listA, "DF8771").c);
                            String strB10 = f0.b(c0.a(listA, "DF8773").c);
                            String strB11 = f0.b(c0.a(listA, "DF8774").c);
                            String strB12 = f0.b(c0.a(listA, "DF8775").c);
                            String strB13 = f0.b(c0.a(listA, "DF8776").c);
                            String strB14 = f0.b(c0.a(listA, "DF8777").c);
                            yVarE.y(strB2);
                            yVarE.A(strB3);
                            yVarE.o(strB4);
                            yVarE.a(f0.i(strB5));
                            yVarE.g(strB6);
                            yVarE.h(str5);
                            yVarE.B(strB8);
                            yVarE.v(strB9);
                            yVarE.j(f0.g(strB10));
                            yVarE.i(f0.g(strB11));
                            yVarE.E(strB12);
                            yVarE.u(strB13);
                            yVarE.n(strB14);
                            this.b.a(5);
                            this.b.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_MODE_RESET);
                            this.b.b().b();
                            return;
                        } catch (Exception unused3) {
                            this.b.b(BBDeviceOTAController.OTAResult.FAILED, "Invalid encHex or encHexFile");
                            return;
                        }
                    }
                    this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF2);
                    return;
                }
                if (str.equalsIgnoreCase("resource-getter")) {
                    if (this.b.d() != b.a.REQUEST_WEB_SERVICE_GET_RESOURCE_TO_TMS) {
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", resource-getter)");
                        return;
                    }
                    this.b.a(b.a.RECEIVED_WEB_SERVICE_GET_RESOURCE_FROM_TMS);
                    JSONObject jSONObject3 = new JSONObject(str2);
                    String strF3 = g0.f(jSONObject3, "resultCode", false);
                    String strF4 = g0.f(jSONObject3, "resultMessage", false);
                    if (strF3.equals("0000") && strF4.equals("OK")) {
                        g0.e(jSONObject3, "unixTimestamp", true);
                        g0.f(jSONObject3, "isoTime", true);
                        JSONObject jSONObjectD = g0.d(jSONObject3, "record", false);
                        if (!g0.a(jSONObjectD, "requireUpdate", false) && !yVarE.s0()) {
                            this.b.b(BBDeviceOTAController.OTAResult.NO_UPDATE_REQUIRED, "");
                            return;
                        }
                        List<b0> listA2 = c0.a(g0.f(jSONObjectD, "encResourceTlv", false));
                        String strB15 = f0.b(c0.a(listA2, "DF861E").c);
                        String strB16 = f0.b(c0.a(listA2, "DF8629").c);
                        String strB17 = f0.b(c0.a(listA2, "DF863E").c);
                        String strB18 = f0.b(c0.a(listA2, "DF866D").c);
                        String strB19 = f0.b(c0.a(listA2, "DF866F").c);
                        String str6 = new String(f0.i(f0.b(c0.a(listA2, "DF866E").c)));
                        String strB20 = f0.b(c0.a(listA2, "DF8771").c);
                        String strB21 = f0.b(c0.a(listA2, "DF8773").c);
                        String strB22 = f0.b(c0.a(listA2, "DF8774").c);
                        String strB23 = f0.b(c0.a(listA2, "DF8775").c);
                        String strB24 = f0.b(c0.a(listA2, "DF8776").c);
                        String strB25 = f0.b(c0.a(listA2, "DF8777").c);
                        yVarE.y(strB15);
                        yVarE.A(strB16);
                        yVarE.o(strB17);
                        yVarE.a(f0.i(strB18));
                        yVarE.g(strB19);
                        yVarE.h(str6);
                        yVarE.v(strB20);
                        yVarE.j(f0.g(strB21));
                        yVarE.i(f0.g(strB22));
                        yVarE.E(strB23);
                        yVarE.u(strB24);
                        yVarE.n(strB25);
                        a(yVarE.n().g(), strB16, strB17).equalsIgnoreCase("");
                        this.b.a(5);
                        this.b.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_MODE_RESET);
                        this.b.b().b();
                        return;
                    }
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF4);
                    return;
                }
                if (str.equalsIgnoreCase("ota-key-list-getter")) {
                    if (this.b.d() != b.a.REQUEST_WEB_SERVICE_GET_OTA_KEY_LIST_TO_TMS) {
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", ota-key-list-getter)");
                        return;
                    }
                    this.b.a(b.a.RECEIVED_WEB_SERVICE_GET_OTA_KEY_LIST_FROM_TMS);
                    JSONObject jSONObject4 = new JSONObject(str2);
                    String strF5 = g0.f(jSONObject4, "resultCode", false);
                    String strF6 = g0.f(jSONObject4, "resultMessage", false);
                    if (strF5.equals("0000") && strF6.equals("OK")) {
                        g0.e(jSONObject4, "unixTimestamp", true);
                        g0.f(jSONObject4, "isoTime", true);
                        JSONArray jSONArrayC = g0.c(jSONObject4, "records", true);
                        if (jSONArrayC != null && jSONArrayC.length() > 0) {
                            for (int i2 = 0; i2 < jSONArrayC.length(); i2++) {
                                try {
                                    string = jSONArrayC.getJSONObject(i2).getString("keySlotInfo");
                                } catch (Exception unused4) {
                                    string = "";
                                }
                                try {
                                    string2 = jSONArrayC.getJSONObject(i2).getString("tmkType");
                                } catch (Exception unused5) {
                                    string2 = "";
                                }
                                try {
                                    string3 = jSONArrayC.getJSONObject(i2).getString("tmkTypeValue");
                                } catch (Exception unused6) {
                                    string3 = "";
                                }
                                y yVar = yVarE;
                                yVar.a(jSONArrayC.getJSONObject(i2).getString("keyType"), jSONArrayC.getJSONObject(i2).getString("keyMgmtType"), string, string2, string3);
                                yVarE = yVar;
                            }
                            yVarE.d(jSONArrayC.length());
                            yVarE.c(0);
                            this.b.a(5);
                            this.b.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_FOR_MODE_RESET);
                            this.b.b().b();
                            return;
                        }
                        this.b.b(BBDeviceOTAController.OTAResult.FAILED, "Empty key list");
                        return;
                    }
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF6);
                    return;
                }
                if (str.equalsIgnoreCase("mutual-authorization-challenge-getter")) {
                    if (this.b.d() != b.a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS) {
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", mutual-authorization-challenge-getter)");
                        return;
                    }
                    this.b.a(b.a.RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS);
                    JSONObject jSONObject5 = new JSONObject(str2);
                    String strF7 = g0.f(jSONObject5, "resultCode", false);
                    String strF8 = g0.f(jSONObject5, "resultMessage", false);
                    if (strF7.equals("0000") && strF8.equals("OK")) {
                        g0.e(jSONObject5, "unixTimestamp", true);
                        g0.f(jSONObject5, "isoTime", true);
                        JSONObject jSONObjectD2 = g0.d(jSONObject5, "record", false);
                        String strF9 = g0.f(jSONObjectD2, "encKek", false);
                        String strF10 = g0.f(jSONObjectD2, "encR1", false);
                        String strF11 = g0.f(jSONObjectD2, "sessionToken", false);
                        if (jSONObjectD2.has("tlv")) {
                            List<b0> listA3 = c0.a(g0.f(jSONObjectD2, "tlv", false));
                            String strB26 = f0.b(c0.a(listA3, "DF876F").c);
                            strB = f0.b(c0.a(listA3, "DF8770").c);
                            str4 = strB26;
                        } else {
                            str4 = "";
                            strB = str4;
                        }
                        yVarE.C(strF9);
                        yVarE.b(strF10);
                        yVarE.K(strF11);
                        yVarE.c(strB);
                        yVarE.D(str4);
                        this.b.a(b.a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW);
                        if (!str4.equalsIgnoreCase("") && !strB.equalsIgnoreCase("")) {
                            this.b.b().b(strF9, strF10, yVarE.c(), str4, strB);
                            return;
                        } else {
                            this.b.b().b(strF9, strF10, yVarE.c());
                            return;
                        }
                    }
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF8);
                    return;
                }
                if (str.equalsIgnoreCase("mutual-authorization-confirmation")) {
                    if (this.b.d() != b.a.SEND_KCV_OF_KEK_TO_TMS) {
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", mutual-authorization-confirmation)");
                        return;
                    }
                    this.b.a(b.a.RECEIVED_SEND_KCV_OF_KEK_FROM_TMS);
                    this.b.a(93);
                    JSONObject jSONObject6 = new JSONObject(str2);
                    String strF12 = g0.f(jSONObject6, "resultCode", false);
                    String strF13 = g0.f(jSONObject6, "resultMessage", false);
                    if (strF12.equals("0000") && strF13.equals("OK")) {
                        g0.e(jSONObject6, "unixTimestamp", true);
                        g0.f(jSONObject6, "isoTime", true);
                        if (yVarE.H() != y.b.REMOTE_FIRMWARE_UPDATE && yVarE.H() != y.b.REMOTE_CONFIG_UPDATE) {
                            if (yVarE.H() == y.b.REMOTE_KEY_INJECTION) {
                                this.b.a(b.a.REQUEST_WEB_SERVICE_GET_OTA_KEY_TO_TMS);
                                b(yVarE.K(), yVarE);
                                return;
                            } else {
                                if (yVarE.H() == y.b.GET_FILE_SIGNATURE) {
                                    this.b.a(b.a.REQUEST_WEB_SERVICE_GET_FILE_SIGNATURE_TO_TMS);
                                    c(yVarE.K(), yVarE);
                                    return;
                                }
                                return;
                            }
                        }
                        if (yVarE.q0()) {
                            this.b.c(BBDeviceOTAController.OTAResult.SUCCESS, "Auth only.");
                            return;
                        }
                        this.b.a(b.a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS);
                        if (yVarE.p().equalsIgnoreCase("")) {
                            c(yVarE.K(), yVarE);
                            return;
                        } else {
                            i(yVarE.K(), yVarE);
                            return;
                        }
                    }
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF13);
                    return;
                }
                if (!str.equalsIgnoreCase("resource-auth-data-getter") && !str.equalsIgnoreCase("private-resource-auth-data-getter")) {
                    if (str.equalsIgnoreCase("ota-key-getter")) {
                        if (this.b.d() != b.a.REQUEST_WEB_SERVICE_GET_OTA_KEY_TO_TMS) {
                            this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", ota-key-getter)");
                            return;
                        }
                        this.b.a(b.a.RECEIVED_WEB_SERVICE_GET_OTA_KEY_FROM_TMS);
                        this.b.a(94);
                        JSONObject jSONObject7 = new JSONObject(str2);
                        String strF14 = g0.f(jSONObject7, "resultCode", false);
                        String strF15 = g0.f(jSONObject7, "resultMessage", false);
                        if (strF14.equals("0000") && strF15.equals("OK")) {
                            g0.e(jSONObject7, "unixTimestamp", true);
                            g0.f(jSONObject7, "isoTime", true);
                            JSONObject jSONObjectD3 = g0.d(jSONObject7, "record", false);
                            String strF16 = g0.f(jSONObjectD3, "tr31Wk", false);
                            g0.f(jSONObjectD3, "keyType", true);
                            g0.f(jSONObjectD3, "keyMgmtType", true);
                            int iB = g0.b(jSONObjectD3, "keyProfileId", false);
                            yVarE.H(strF16);
                            this.b.a(b.a.SEND_TR31_WK_TO_FW);
                            this.b.b().a(f0.a(strF16), yVarE.d(), f0.b(iB));
                            return;
                        }
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF15);
                        return;
                    }
                    if (str.equalsIgnoreCase("terminal-target-version-getter")) {
                        if (this.b.d() != b.a.REQUEST_WEB_SERVICE_GET_TARGET_VERSION_TO_TMS) {
                            this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", terminal-target-version-getter)");
                            return;
                        }
                        this.b.a(b.a.RECEIVED_WEB_SERVICE_GET_TARGET_VERSION_FROM_TMS);
                        JSONObject jSONObject8 = new JSONObject(str2);
                        String strF17 = g0.f(jSONObject8, "resultCode", false);
                        String strF18 = g0.f(jSONObject8, "resultMessage", false);
                        if (strF17.equals("0000") && strF18.equals("OK")) {
                            g0.e(jSONObject8, "unixTimestamp", true);
                            g0.f(jSONObject8, "isoTime", true);
                            this.b.a(BBDeviceOTAController.OTAResult.SUCCESS, f0.a(g0.d(jSONObject8, "record", false)));
                            return;
                        }
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF18);
                        return;
                    }
                    if (str.equalsIgnoreCase("resource-list-getter")) {
                        if (this.b.d() != b.a.REQUEST_WEB_SERVICE_GET_TARGET_VERSION_LIST_TO_TMS) {
                            this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", resource-list-getter)");
                            return;
                        }
                        this.b.a(b.a.RECEIVED_WEB_SERVICE_GET_TARGET_VERSION_LIST_FROM_TMS);
                        JSONObject jSONObject9 = new JSONObject(str2);
                        String strF19 = g0.f(jSONObject9, "resultCode", false);
                        String strF20 = g0.f(jSONObject9, "resultMessage", false);
                        if (strF19.equals("0000") && strF20.equals("OK")) {
                            g0.e(jSONObject9, "unixTimestamp", true);
                            g0.f(jSONObject9, "isoTime", true);
                            JSONArray jSONArrayC2 = g0.c(jSONObject9, "records", false);
                            ArrayList arrayList = new ArrayList();
                            for (int i3 = 0; i3 < jSONArrayC2.length(); i3++) {
                                arrayList.add(f0.a((JSONObject) jSONArrayC2.get(i3)));
                            }
                            this.b.a(BBDeviceOTAController.OTAResult.SUCCESS, arrayList, "");
                            return;
                        }
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF20);
                        return;
                    }
                    if (str.equalsIgnoreCase("terminal-target-versions")) {
                        if (this.b.d() != b.a.REQUEST_WEB_SERVICE_SET_TARGET_VERSION_TO_TMS) {
                            this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", terminal-target-versions)");
                            return;
                        }
                        this.b.a(b.a.RECEIVED_WEB_SERVICE_SET_TARGET_VERSION_FROM_TMS);
                        JSONObject jSONObject10 = new JSONObject(str2);
                        String strF21 = g0.f(jSONObject10, "resultCode", false);
                        String strF22 = g0.f(jSONObject10, "resultMessage", false);
                        if (strF21.equals("0000") && strF22.equals("OK")) {
                            g0.e(jSONObject10, "unixTimestamp", true);
                            g0.f(jSONObject10, "isoTime", true);
                            this.b.d(BBDeviceOTAController.OTAResult.SUCCESS, "");
                            return;
                        }
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF22);
                        return;
                    }
                    if (str.equalsIgnoreCase("ota-histories")) {
                        if (yVarE.F().equalsIgnoreCase("STARTED")) {
                            if (this.b.d() != b.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS && this.b.d() != b.a.SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_START_TO_TMS) {
                                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", ota-histories)");
                                return;
                            }
                            yVarE.f(true);
                        } else if (yVarE.F().equalsIgnoreCase("COMPLETED")) {
                            if (this.b.d() != b.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS && this.b.d() != b.a.SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_TO_TMS) {
                                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", ota-histories)");
                                return;
                            }
                        } else if (yVarE.F().equalsIgnoreCase("FAILED")) {
                            this.b.c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                            return;
                        } else if (yVarE.F().equalsIgnoreCase("FAILED")) {
                            this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1003)");
                            return;
                        } else {
                            this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1004)");
                            return;
                        }
                        JSONObject jSONObject11 = new JSONObject(str2);
                        String strF23 = g0.f(jSONObject11, "resultCode", false);
                        String strF24 = g0.f(jSONObject11, "resultMessage", false);
                        boolean zEquals = strF23.equals("0000");
                        int i4 = WinError.WSABASEERR;
                        if (zEquals && strF24.equals("OK")) {
                            if (this.b.d() == b.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) {
                                this.b.a(b.a.RECEIVED_WEB_SERVICE_NOTIFY_START_FROM_TMS);
                                if (yVarE.H() != y.b.REMOTE_FIRMWARE_UPDATE && yVarE.H() != y.b.REMOTE_CONFIG_UPDATE) {
                                    this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1005)");
                                    return;
                                }
                                this.b.a(b.a.SENDING_ENCRYPTED_HEX_BLOCK_DATA_TO_FW);
                                yVarE.a(0);
                                this.b.b().d();
                                return;
                            }
                            if (this.b.d() == b.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS) {
                                this.b.a(99);
                                this.b.a(b.a.RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS);
                                if (yVarE.l() == BBDeviceController.ConnectionMode.SERIAL && this.b.c().a(BBDeviceOTAController.c.WisePOS_SEVEN)) {
                                    this.b.a(b.a.POLLING_WSP7X_DEVICE_INFO);
                                    yVarE.f(3);
                                    if (yVarE.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                                        i4 = 100000;
                                    }
                                    this.b.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.m$$ExternalSyntheticLambda0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.a();
                                        }
                                    }, i4);
                                    return;
                                }
                                if (yVarE.l() == BBDeviceController.ConnectionMode.SERIAL && (this.b.c().a(BBDeviceOTAController.c.WisePOS_TOUCH) || this.b.c().a(BBDeviceOTAController.c.WisePOS_GO))) {
                                    y.b bVarH2 = yVarE.H();
                                    y.b bVar2 = y.b.REMOTE_FIRMWARE_UPDATE;
                                    if (bVarH2 == bVar2) {
                                        i4 = yVarE.p().equalsIgnoreCase("") ? 50000 : 72000;
                                    }
                                    if (yVarE.H() == bVar2 && f0.a(BBDeviceController.getApiVersion(), "3.23.1", 3) >= 0) {
                                        this.b.a(b.a.SEND_SERIAL_INIT_COMMAND_AGAIN);
                                        yVarE.e(3);
                                        this.b.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.m$$ExternalSyntheticLambda1
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                this.f$0.b();
                                            }
                                        }, i4);
                                        return;
                                    }
                                    this.b.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.m$$ExternalSyntheticLambda2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.c();
                                        }
                                    }, i4);
                                    return;
                                }
                                this.b.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
                                return;
                            }
                            if (this.b.d() == b.a.SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_START_TO_TMS) {
                                this.b.a(b.a.RECEIVED_WEB_SERVICE_NOTIFY_KEY_INJECTION_START_FROM_TMS);
                                if (yVarE.H() == y.b.REMOTE_KEY_INJECTION) {
                                    this.b.a(b.a.REQUEST_CHALLENGE_R1_FROM_FW);
                                    this.b.b().e(yVarE.c());
                                    return;
                                } else {
                                    this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1008)");
                                    return;
                                }
                            }
                            if (this.b.d() == b.a.SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_TO_TMS) {
                                this.b.a(99);
                                this.b.a(b.a.RECEIVED_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_FROM_TMS);
                                this.b.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_AFTER_KEY_INJECTION);
                                this.b.b().b();
                                return;
                            }
                            this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1006)");
                            return;
                        }
                        if (this.b.d() == b.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) {
                            this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF24);
                            return;
                        }
                        if (this.b.d() == b.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS) {
                            this.b.a(99);
                            this.b.a(b.a.RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS);
                            if (yVarE.l() == BBDeviceController.ConnectionMode.SERIAL && this.b.c().a(BBDeviceOTAController.c.WisePOS_SEVEN)) {
                                this.b.a(b.a.POLLING_WSP7X_DEVICE_INFO);
                                yVarE.f(3);
                                if (yVarE.H() == y.b.REMOTE_FIRMWARE_UPDATE) {
                                    i4 = 100000;
                                }
                                this.b.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.m$$ExternalSyntheticLambda3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.d();
                                    }
                                }, i4);
                                return;
                            }
                            if (yVarE.l() == BBDeviceController.ConnectionMode.SERIAL && (this.b.c().a(BBDeviceOTAController.c.WisePOS_TOUCH) || this.b.c().a(BBDeviceOTAController.c.WisePOS_GO))) {
                                y.b bVarH3 = yVarE.H();
                                y.b bVar3 = y.b.REMOTE_FIRMWARE_UPDATE;
                                if (bVarH3 == bVar3) {
                                    i4 = yVarE.p().equalsIgnoreCase("") ? 50000 : 72000;
                                }
                                if (yVarE.H() == bVar3 && f0.a(BBDeviceController.getApiVersion(), "3.23.1", 3) >= 0) {
                                    this.b.a(b.a.SEND_SERIAL_INIT_COMMAND_AGAIN);
                                    yVarE.e(3);
                                    this.b.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.m$$ExternalSyntheticLambda4
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.e();
                                        }
                                    }, i4);
                                    return;
                                }
                                this.b.k.postDelayed(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.m$$ExternalSyntheticLambda5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.f();
                                    }
                                }, i4);
                                return;
                            }
                            this.b.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
                            return;
                        }
                        if (this.b.d() == b.a.SEND_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_TO_TMS) {
                            this.b.a(99);
                            this.b.a(b.a.RECEIVED_WEB_SERVICE_NOTIFY_KEY_INJECTION_DONE_FROM_TMS);
                            if (yVarE.G() > 0) {
                                this.b.a(b.a.REQUEST_CHALLENGE_R1_FROM_FW);
                                this.b.b().e(yVarE.c());
                                return;
                            } else {
                                this.b.a(b.a.REQUEST_FW_EXIT_ACQUIRE_MODE_AFTER_KEY_INJECTION);
                                this.b.b().b();
                                return;
                            }
                        }
                        this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1007)");
                        return;
                    }
                    return;
                }
                if (this.b.d() != b.a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS && this.b.d() != b.a.REQUEST_WEB_SERVICE_GET_FILE_SIGNATURE_TO_TMS) {
                    if (str.equalsIgnoreCase("resource-auth-data-getter")) {
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", resource-auth-data-getter)");
                        return;
                    } else {
                        if (str.equalsIgnoreCase("private-resource-auth-data-getter")) {
                            this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.d() + ", private-resource-auth-data-getter)");
                            return;
                        }
                        return;
                    }
                }
                this.b.a(b.a.RECEIVED_RESOURCE_AUTH_DATA_FROM_TMS);
                this.b.a(94);
                JSONObject jSONObject12 = new JSONObject(str2);
                String strF25 = g0.f(jSONObject12, "resultCode", false);
                String strF26 = g0.f(jSONObject12, "resultMessage", false);
                if (strF25.equals("0000") && strF26.equals("OK")) {
                    g0.e(jSONObject12, "unixTimestamp", true);
                    g0.f(jSONObject12, "isoTime", true);
                    JSONObject jSONObjectD4 = g0.d(jSONObject12, "record", false);
                    if (jSONObjectD4 != null) {
                        g0.f(jSONObjectD4, "fileName", true);
                        String strF27 = g0.f(jSONObjectD4, "signCode", false);
                        String strF28 = g0.f(jSONObjectD4, "tr31Flk", false);
                        String strF29 = g0.f(jSONObjectD4, "tr31Fak", false);
                        yVarE.z(strF27);
                        yVarE.G(strF28);
                        yVarE.F(strF29);
                        this.b.a(b.a.SEND_TR31_FLK_TO_FW);
                        this.b.b().b(f0.a(strF28), "040100");
                        return;
                    }
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response invalid data");
                    return;
                }
                this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF26);
            } catch (Exception e) {
                e = e;
                this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response invalid data (" + e.toString() + str3);
            }
        } catch (Exception e2) {
            e = e2;
            str3 = ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.b.l();
    }

    private String a(String str) {
        if (!str.equalsIgnoreCase("ota-key-getter") && !str.equalsIgnoreCase("terminal-target-version-getter") && !str.equalsIgnoreCase("resource-list-getter")) {
            return "1";
        }
        return "2";
    }

    private String a(String str, String str2, String str3) {
        b("[mucInfoChecking] deviceInfoMcuInfo : " + str + ", singleMcuInfo : " + str2 + ", multipleMcuInfo : " + str3);
        String str4 = str.equalsIgnoreCase("") ? "M0000" : "F" + str;
        if (!str3.equalsIgnoreCase("")) {
            int i = 0;
            while (true) {
                int i2 = i + 4;
                if (i2 <= str3.length()) {
                    String strSubstring = str3.substring(i, i2);
                    if (!str.equalsIgnoreCase("")) {
                        if (f0.e(strSubstring) == f0.e(str) && f0.d(strSubstring) == f0.d(str) && f0.e(strSubstring) != 0 && f0.e(str) != 0 && f0.d(strSubstring) != 0 && f0.d(str) != 0) {
                            return "";
                        }
                    } else if (f0.e(strSubstring) == 1 || f0.e(strSubstring) == 2) {
                        break;
                    }
                    i = i2;
                } else {
                    return str4 + "H" + str3;
                }
            }
            return "";
        }
        if (!str2.equalsIgnoreCase("")) {
            if (!str.equalsIgnoreCase("")) {
                if (f0.e(str2) == f0.e(str) && f0.d(str2) == f0.d(str) && f0.e(str2) != 0 && f0.e(str) != 0 && f0.d(str2) != 0 && f0.d(str) != 0) {
                    return "";
                }
                return str4 + "H" + str2;
            }
            if (f0.e(str2) == 1 || f0.e(str2) == 2) {
                return "";
            }
            return str4 + "H" + str2;
        }
        if (str.equalsIgnoreCase("") || f0.e(str) == 1 || f0.e(str) == 2) {
            return "";
        }
        return str4 + "M0000";
    }
}
