package com.stripe.bbpos.bbdevice.ota;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.c;
import com.stripe.bbpos.bbdevice.ota.y;
import com.stripe.hardware.emv.TlvMap;
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
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class t {
    private final Object a = new Object();
    private c b;
    private Proxy c;

    t(c cVar) {
        this.b = cVar;
    }

    private void a(String str) {
    }

    synchronized void a(Proxy proxy) {
        synchronized (this.a) {
            this.c = proxy;
        }
    }

    void b(String str, y yVar) {
        a("[callWebServiceGetResourceTMS]");
        r.c("[P1000FlowWebServiceCenter] [callWebServiceGetResourceTMS]");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("bID", yVar.n().j());
            if (yVar.n().j().equalsIgnoreCase("")) {
                jSONObject.put("sku1", BBDeviceOTAController.b());
            }
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

    void c(String str, y yVar) {
        a("[callWebServiceMutualAuthChallenge]");
        r.c("[P1000FlowWebServiceCenter] [callWebServiceMutualAuthChallenge]");
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

    void d(String str, y yVar) {
        a("[callWebServiceMutualAuthConfirm]");
        r.c("[P1000FlowWebServiceCenter] [callWebServiceMutualAuthConfirm]");
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

    void e(String str, y yVar) {
        a("[callWebServicePrivateGetResourceAuthData]");
        r.c("[P1000FlowWebServiceCenter] [callWebServicePrivateGetResourceAuthData]");
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

    void a(String str, y yVar, Date date) {
        a("[callWebServiceLoginTMS]");
        r.c("[P1000FlowWebServiceCenter] [callWebServiceLoginTMS]");
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

    void a(String str, y yVar) {
        a("[callWebServiceGetResourceAuthData]");
        r.c("[P1000FlowWebServiceCenter] [callWebServiceGetResourceAuthData]");
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

    private boolean b(String str) {
        return str.equalsIgnoreCase("checkToken") || str.equalsIgnoreCase("resource-getter") || str.equalsIgnoreCase("mutual-authorization-challenge-getter") || str.equalsIgnoreCase("mutual-authorization-confirmation") || str.equalsIgnoreCase("resource-auth-data-getter") || str.equalsIgnoreCase("private-resource-auth-data-getter") || str.equalsIgnoreCase("ota-key-list-getter") || str.equalsIgnoreCase("ota-key-getter") || str.equalsIgnoreCase("ota-histories") || str.equalsIgnoreCase("terminal-target-version-getter") || str.equalsIgnoreCase("resource-list-getter") || str.equalsIgnoreCase("terminal-target-versions");
    }

    void a(String str, y yVar, String str2) {
        a("[callWebServiceNotifyTMS]");
        r.c("[P1000FlowWebServiceCenter] [callWebServiceNotifyTMS]");
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

    private void a(final String str, final String str2, final JSONObject jSONObject, int i) {
        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ota.t$$ExternalSyntheticLambda0
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
            a("[callWS] url : " + str + str2 + ", jsonObject : " + jSONObject);
            a("[callWS] Thread.currentThread().getId() : " + Thread.currentThread().getId());
            r.c("[P1000FlowWebServiceCenter] [callWS] url : " + str + str2 + ", jsonObject : " + jSONObject);
            if (!str.startsWith("https://")) {
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Invalid URL");
                return;
            }
            HttpURLConnection httpURLConnection = null;
            try {
                try {
                    try {
                        a0 a0Var = new a0();
                        a("[callWS] tlsSocketFactory.getDefaultCipherSuites() : " + Arrays.deepToString(a0Var.getDefaultCipherSuites()));
                        a("[callWS] tlsSocketFactory.getSupportedCipherSuites() : " + Arrays.deepToString(a0Var.getSupportedCipherSuites()));
                    } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                    }
                    if (this.c != null) {
                        httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str + str2 + "?APIVersion=1").openConnection(this.c)));
                    } else {
                        httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str + str2 + "?APIVersion=1").openConnection()));
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
                    if (b(str2)) {
                        httpsURLConnection2.setRequestProperty("Authorization", "Bearer:" + this.b.d().g());
                    }
                    if (jSONObject != null) {
                        OutputStream outputStream = httpsURLConnection2.getOutputStream();
                        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
                        dataOutputStream.write(jSONObject.toString().getBytes());
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        outputStream.close();
                    }
                    a("[callWS] urlConnection.getHeaderFields() : " + httpsURLConnection2.getHeaderFields().toString());
                    httpsURLConnection2.connect();
                    int responseCode = httpsURLConnection2.getResponseCode();
                    a("[callWS] responseCode : " + responseCode);
                    r.c("[P1000FlowWebServiceCenter] [callWS] responseCode : " + responseCode);
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
                        a("[callWS] response : " + stringBuffer2.toString());
                        r.c("[P1000FlowWebServiceCenter] [callWS] response : " + stringBuffer2.toString());
                        a(true, str2, stringBuffer2.toString(), responseCode);
                    } else {
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection2.getErrorStream()));
                            stringBuffer = new StringBuffer();
                        } catch (Exception e) {
                            a("[callWS] e2 : " + e.toString());
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
                        a("[callWS] response : " + string);
                        r.c("[P1000FlowWebServiceCenter] [callWS] response : " + string);
                        a(false, str2, string, responseCode);
                    }
                } catch (IOException e2) {
                    a("[callWS] IOException : " + r.a(e2));
                    r.c("[P1000FlowWebServiceCenter] [callWS] IOException : " + r.a(e2));
                    try {
                        a("[callWS] response code: " + httpURLConnection.getResponseCode());
                        r.c("[P1000FlowWebServiceCenter] [callWS] response code: " + httpURLConnection.getResponseCode());
                    } catch (IOException unused2) {
                    }
                    a(false, str2, "IOException : " + r.a(e2), 0);
                }
            } catch (MalformedURLException e3) {
                a("[callWS] MalformedURLException : " + r.a(e3));
                r.c("[P1000FlowWebServiceCenter] [callWS] MalformedURLException : " + r.a(e3));
                a(false, str2, "MalformedURLException : " + r.a(e3), 0);
            } catch (SocketTimeoutException e4) {
                a("[callWS] SocketTimeoutException : " + r.a(e4));
                r.c("[P1000FlowWebServiceCenter] [callWS] SocketTimeoutException : " + r.a(e4));
                try {
                    a("[callWS] response code: " + httpURLConnection.getResponseCode());
                    r.c("[P1000FlowWebServiceCenter] [callWS] response code: " + httpURLConnection.getResponseCode());
                } catch (IOException unused3) {
                }
                a(false, str2, "SocketTimeoutException : " + r.a(e4), 0);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v4, types: [boolean] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void a(boolean z, String str, String str2, int i) {
        String strEquals;
        String str3;
        String strB;
        a("[onReturnWS] function : " + str + ", isResponseSuccess : " + z + ",  response : " + str2 + ", httpResponseCode : " + i);
        r.c("[P1000FlowWebServiceCenter] [onReturnWS] function : " + str + ", isResponseSuccess : " + z + ",  response : " + str2 + ", httpResponseCode : " + i);
        if (!z) {
            if (this.b.a(c.a.REQUEST_CHALLENGE_R1_FROM_FW) || this.b.a(c.a.RECEIVED_CHALLENGE_TMK_X_ENCRYPTED_R1_FROM_FW) || this.b.a(c.a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS) || this.b.a(c.a.RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS) || this.b.a(c.a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW) || this.b.a(c.a.RECEIVED_KCV_OF_KEK_FROM_FW) || this.b.a(c.a.SEND_KCV_OF_KEK_TO_TMS) || this.b.a(c.a.RECEIVED_SEND_KCV_OF_KEK_FROM_TMS) || this.b.a(c.a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS) || this.b.a(c.a.RECEIVED_RESOURCE_AUTH_DATA_FROM_TMS) || this.b.a(c.a.SEND_TR31_FLK_TO_FW) || this.b.a(c.a.RECEIVED_SEND_TR31_FLK_TO_FW) || this.b.a(c.a.SEND_TR31_FAK_TO_FW) || this.b.a(c.a.RECEIVED_SEND_TR31_FAK_TO_FW) || this.b.a(c.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) || this.b.a(c.a.RECEIVED_WEB_SERVICE_NOTIFY_START_FROM_TMS)) {
                if (i == 0) {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + str2 + ")");
                    return;
                }
                if (str2.equalsIgnoreCase("")) {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, f0.c(g0.f(jSONObject, "resultMessage", false)) + " (" + i + ") (" + f0.c(g0.f(jSONObject, "resultCode", false)) + ")");
                    return;
                } catch (Exception unused) {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                    return;
                }
            }
            if (i == 0) {
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + str2 + ")");
                return;
            }
            if (str2.equalsIgnoreCase("")) {
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(str2);
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, f0.c(g0.f(jSONObject2, "resultMessage", false)) + " (" + i + ") (" + f0.c(g0.f(jSONObject2, "resultCode", false)) + ")");
                return;
            } catch (Exception unused2) {
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Cannot connect to server. (" + i + ")");
                return;
            }
        }
        try {
            y yVarD = this.b.d();
            if (yVarD.x0() && !str.equalsIgnoreCase("ota-histories")) {
                yVarD.a(true, BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                this.b.b(yVarD.j(), yVarD.k());
                return;
            }
            if (str.equalsIgnoreCase(FirebaseAnalytics.Event.LOGIN)) {
                if (this.b.c() != c.a.REQUEST_WEB_SERVICE_LOGIN_TO_TMS) {
                    this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", login)");
                    return;
                }
                this.b.b(c.a.RECEIVED_WEB_SERVICE_LOGIN_FROM_TMS);
                JSONObject jSONObject3 = new JSONObject(str2);
                String strF = g0.f(jSONObject3, "resultCode", false);
                String strF2 = g0.f(jSONObject3, "resultMessage", false);
                if (strF.equals("0000") && strF2.equals("OK")) {
                    g0.e(jSONObject3, "unixTimestamp", true);
                    g0.f(jSONObject3, "isoTime", true);
                    yVarD.a(g0.f(g0.d(jSONObject3, "record", false), "bearerToken", false));
                    y.b bVarH = yVarD.H();
                    y.b bVar = y.b.REMOTE_FIRMWARE_UPDATE;
                    if (bVarH == bVar || yVarD.H() == y.b.REMOTE_CONFIG_UPDATE) {
                        this.b.a(2);
                    }
                    if (yVarD.H() != bVar && yVarD.H() != y.b.REMOTE_CONFIG_UPDATE) {
                        if (yVarD.H() == y.b.GET_FILE_SIGNATURE) {
                            if (yVarD.n().d().equalsIgnoreCase("")) {
                                this.b.b(c.a.REQUEST_CHALLENGE_R1_FROM_FW);
                                this.b.b().e(TlvMap.ENTRY_MODE_CONTACT);
                                return;
                            } else {
                                this.b.b(c.a.REQUEST_FW_ENTER_BOOTLOADER_MODE);
                                this.b.b().a();
                                return;
                            }
                        }
                        return;
                    }
                    if (yVarD.q0()) {
                        if (yVarD.n().d().equalsIgnoreCase("")) {
                            this.b.b(c.a.REQUEST_CHALLENGE_R1_FROM_FW);
                            this.b.b().e(TlvMap.ENTRY_MODE_CONTACT);
                            return;
                        } else {
                            this.b.b(c.a.REQUEST_FW_ENTER_BOOTLOADER_MODE);
                            this.b.b().a();
                            return;
                        }
                    }
                    if (yVarD.p().equalsIgnoreCase("") && yVarD.q().equalsIgnoreCase("")) {
                        this.b.b(c.a.REQUEST_WEB_SERVICE_GET_RESOURCE_TO_TMS);
                        b(yVarD.K(), yVarD);
                        return;
                    }
                    if (yVarD.p().equalsIgnoreCase("") && !yVarD.q().equalsIgnoreCase("")) {
                        String strQ = yVarD.q();
                        if (new File(strQ).exists()) {
                            try {
                                yVarD.f(f0.f(strQ).trim());
                            } catch (IOException unused3) {
                                this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Input hex file can't be accessed");
                            }
                        } else {
                            this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Input hex file doesn't exist");
                        }
                    }
                    String strP = yVarD.p();
                    if (!f0.j(strP)) {
                        this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Invalid encHex or encHexFile");
                        return;
                    }
                    List<b0> listA = c0.a(strP);
                    String strB2 = f0.b(c0.a(listA, "DF861E").c);
                    String strB3 = f0.b(c0.a(listA, "DF8629").c);
                    String strB4 = f0.b(c0.a(listA, "DF863E").c);
                    String strB5 = f0.b(c0.a(listA, "DF866D").c);
                    String strB6 = f0.b(c0.a(listA, "DF866F").c);
                    String strB7 = f0.b(c0.a(listA, "DF866E").c);
                    String strB8 = f0.b(c0.a(listA, "DF8728").c);
                    String strG = f0.g(f0.b(c0.a(listA, "D6").c));
                    String strB9 = f0.b(c0.a(listA, "B5").c);
                    String str4 = new String(f0.i(strB7));
                    yVarD.y(strB2);
                    yVarD.A(strB3);
                    yVarD.o(strB4);
                    yVarD.a(f0.i(strB5));
                    yVarD.g(strB6);
                    yVarD.h(str4);
                    yVarD.B(strB8);
                    yVarD.I(strG);
                    yVarD.J(strB9);
                    this.b.a(3);
                    if (f0.a(yVarD.n().b(), yVarD.i0(), 4) == -1) {
                        this.b.b(c.a.REQUEST_UPDATE_BOOTLOADER_REBOOT_TO_MAXIAM_BOOTLOADER);
                        this.b.b().d("0001C200");
                        return;
                    } else if (yVarD.n().d().equalsIgnoreCase("")) {
                        this.b.b(c.a.REQUEST_CHALLENGE_R1_FROM_FW);
                        this.b.b().e(TlvMap.ENTRY_MODE_CONTACT);
                        return;
                    } else {
                        this.b.b(c.a.REQUEST_FW_ENTER_BOOTLOADER_MODE);
                        this.b.b().a();
                        return;
                    }
                }
                this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF2);
                return;
            }
            if (str.equalsIgnoreCase("resource-getter")) {
                if (this.b.c() != c.a.REQUEST_WEB_SERVICE_GET_RESOURCE_TO_TMS) {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", resource-getter)");
                    return;
                }
                this.b.b(c.a.RECEIVED_WEB_SERVICE_GET_RESOURCE_FROM_TMS);
                JSONObject jSONObject4 = new JSONObject(str2);
                String strF3 = g0.f(jSONObject4, "resultCode", false);
                String strF4 = g0.f(jSONObject4, "resultMessage", false);
                if (strF3.equals("0000") && strF4.equals("OK")) {
                    g0.e(jSONObject4, "unixTimestamp", true);
                    g0.f(jSONObject4, "isoTime", true);
                    JSONObject jSONObjectD = g0.d(jSONObject4, "record", false);
                    if (!g0.a(jSONObjectD, "requireUpdate", false) && !yVarD.s0()) {
                        this.b.b(BBDeviceOTAController.OTAResult.NO_UPDATE_REQUIRED, "");
                        return;
                    }
                    List<b0> listA2 = c0.a(g0.f(jSONObjectD, "encResourceTlv", false));
                    String strB10 = f0.b(c0.a(listA2, "DF861E").c);
                    String strB11 = f0.b(c0.a(listA2, "DF8629").c);
                    String strB12 = f0.b(c0.a(listA2, "DF863E").c);
                    String strB13 = f0.b(c0.a(listA2, "DF866D").c);
                    String strB14 = f0.b(c0.a(listA2, "DF866F").c);
                    String strB15 = f0.b(c0.a(listA2, "DF866E").c);
                    String strG2 = f0.g(f0.b(c0.a(listA2, "D6").c));
                    String strB16 = f0.b(c0.a(listA2, "B5").c);
                    String str5 = new String(f0.i(strB15));
                    yVarD.y(strB10);
                    yVarD.A(strB11);
                    yVarD.o(strB12);
                    yVarD.a(f0.i(strB13));
                    yVarD.g(strB14);
                    yVarD.h(str5);
                    yVarD.I(strG2);
                    yVarD.J(strB16);
                    a(yVarD.n().g(), strB11, strB12).equalsIgnoreCase("");
                    this.b.a(3);
                    if (f0.a(yVarD.n().b(), yVarD.i0(), 4) == -1) {
                        this.b.b(c.a.REQUEST_UPDATE_BOOTLOADER_REBOOT_TO_MAXIAM_BOOTLOADER);
                        this.b.b().d("0001C200");
                        return;
                    } else if (yVarD.n().d().equalsIgnoreCase("")) {
                        this.b.b(c.a.REQUEST_CHALLENGE_R1_FROM_FW);
                        this.b.b().e(TlvMap.ENTRY_MODE_CONTACT);
                        return;
                    } else {
                        this.b.b(c.a.REQUEST_FW_ENTER_BOOTLOADER_MODE);
                        this.b.b().a();
                        return;
                    }
                }
                this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF4);
                return;
            }
            if (str.equalsIgnoreCase("mutual-authorization-challenge-getter")) {
                if (this.b.c() != c.a.SEND_CHALLENGE_TMK_X_ENCRYPTED_R1_TO_TMS) {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", mutual-authorization-challenge-getter)");
                    return;
                }
                this.b.b(c.a.RECEIVED_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_FROM_TMS);
                JSONObject jSONObject5 = new JSONObject(str2);
                String strF5 = g0.f(jSONObject5, "resultCode", false);
                String strF6 = g0.f(jSONObject5, "resultMessage", false);
                if (strF5.equals("0000") && strF6.equals("OK")) {
                    g0.e(jSONObject5, "unixTimestamp", true);
                    g0.f(jSONObject5, "isoTime", true);
                    JSONObject jSONObjectD2 = g0.d(jSONObject5, "record", false);
                    String strF7 = g0.f(jSONObjectD2, "encKek", false);
                    String strF8 = g0.f(jSONObjectD2, "encR1", false);
                    String strF9 = g0.f(jSONObjectD2, "sessionToken", false);
                    if (jSONObjectD2.has("tlv")) {
                        List<b0> listA3 = c0.a(g0.f(jSONObjectD2, "tlv", false));
                        String strB17 = f0.b(c0.a(listA3, "DF876F").c);
                        strB = f0.b(c0.a(listA3, "DF8770").c);
                        str3 = strB17;
                    } else {
                        str3 = "";
                        strB = str3;
                    }
                    yVarD.C(strF7);
                    yVarD.b(strF8);
                    yVarD.K(strF9);
                    yVarD.c(strB);
                    yVarD.D(str3);
                    this.b.b(c.a.SEND_TMK_X_ENCRYPTED_KEK_AND_KEK_REENCRYPTED_R1_TO_FW);
                    if (!str3.equalsIgnoreCase("") && !strB.equalsIgnoreCase("")) {
                        this.b.b().b(strF7, strF8, yVarD.c(), str3, strB);
                        return;
                    } else {
                        this.b.b().a(strF7, strF8, yVarD.c());
                        return;
                    }
                }
                this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF6);
                return;
            }
            if (str.equalsIgnoreCase("mutual-authorization-confirmation")) {
                if (this.b.c() != c.a.SEND_KCV_OF_KEK_TO_TMS) {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", mutual-authorization-confirmation)");
                    return;
                }
                this.b.b(c.a.RECEIVED_SEND_KCV_OF_KEK_FROM_TMS);
                this.b.a(15);
                JSONObject jSONObject6 = new JSONObject(str2);
                String strF10 = g0.f(jSONObject6, "resultCode", false);
                String strF11 = g0.f(jSONObject6, "resultMessage", false);
                if (strF10.equals("0000") && strF11.equals("OK")) {
                    g0.e(jSONObject6, "unixTimestamp", true);
                    g0.f(jSONObject6, "isoTime", true);
                    if (yVarD.H() != y.b.REMOTE_FIRMWARE_UPDATE && yVarD.H() != y.b.REMOTE_CONFIG_UPDATE) {
                        if (yVarD.H() == y.b.GET_FILE_SIGNATURE) {
                            this.b.b(c.a.REQUEST_WEB_SERVICE_GET_FILE_SIGNATURE_TO_TMS);
                            a(yVarD.K(), yVarD);
                            return;
                        }
                        return;
                    }
                    if (yVarD.q0()) {
                        this.b.b(c.a.REQUEST_FW_EXIT_BOOTLOADER_MODE_FOR_COMPLETE);
                        this.b.b().b();
                        return;
                    }
                    this.b.b(c.a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS);
                    if (yVarD.p().equalsIgnoreCase("")) {
                        a(yVarD.K(), yVarD);
                        return;
                    } else {
                        e(yVarD.K(), yVarD);
                        return;
                    }
                }
                this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF11);
                return;
            }
            if (!str.equalsIgnoreCase("resource-auth-data-getter") && !str.equalsIgnoreCase("private-resource-auth-data-getter")) {
                if (str.equalsIgnoreCase("ota-histories")) {
                    if (yVarD.F().equalsIgnoreCase("STARTED")) {
                        if (this.b.c() != c.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) {
                            this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", ota-histories)");
                            return;
                        }
                        yVarD.f(true);
                    } else if (yVarD.F().equalsIgnoreCase("COMPLETED")) {
                        if (this.b.c() != c.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS) {
                            this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", ota-histories)");
                            return;
                        }
                    } else if (yVarD.F().equalsIgnoreCase("FAILED")) {
                        this.b.c(BBDeviceOTAController.OTAResult.STOPPED, "OTA process aborted");
                        return;
                    } else if (yVarD.F().equalsIgnoreCase("FAILED")) {
                        this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1003)");
                        return;
                    } else {
                        this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1004)");
                        return;
                    }
                    JSONObject jSONObject7 = new JSONObject(str2);
                    String strF12 = g0.f(jSONObject7, "resultCode", false);
                    String strF13 = g0.f(jSONObject7, "resultMessage", false);
                    if (strF12.equals("0000") && strF13.equals("OK")) {
                        if (this.b.c() == c.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) {
                            this.b.b(c.a.RECEIVED_WEB_SERVICE_NOTIFY_START_FROM_TMS);
                            if (yVarD.H() != y.b.REMOTE_FIRMWARE_UPDATE && yVarD.H() != y.b.REMOTE_CONFIG_UPDATE) {
                                this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1005)");
                                return;
                            }
                            this.b.b(c.a.REQUEST_FW_ERASE_MEMORY);
                            this.b.b().b(yVarD.S());
                            return;
                        }
                        if (this.b.c() == c.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS) {
                            this.b.a(100);
                            this.b.b(c.a.RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS);
                            this.b.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
                            return;
                        }
                        this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1006)");
                        return;
                    }
                    if (this.b.c() == c.a.SEND_WEB_SERVICE_NOTIFY_START_TO_TMS) {
                        this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF13);
                        return;
                    } else {
                        if (this.b.c() == c.a.SEND_WEB_SERVICE_NOTIFY_COMPLETED_TO_TMS) {
                            this.b.a(100);
                            this.b.b(c.a.RECEIVED_WEB_SERVICE_NOTIFY_COMPLETED_FROM_TMS);
                            this.b.c(BBDeviceOTAController.OTAResult.SUCCESS, "");
                            return;
                        }
                        this.b.c(BBDeviceOTAController.OTAResult.FAILED, "Unknown error (1007)");
                        return;
                    }
                }
                return;
            }
            if (this.b.c() != c.a.REQUEST_RESOURCE_AUTH_DATA_FROM_TMS && this.b.c() != c.a.REQUEST_WEB_SERVICE_GET_FILE_SIGNATURE_TO_TMS) {
                if (str.equalsIgnoreCase("resource-auth-data-getter")) {
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", resource-auth-data-getter)");
                    return;
                } else {
                    if (str.equalsIgnoreCase("private-resource-auth-data-getter")) {
                        this.b.c(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "OTA Flow invalid state (" + this.b.c() + ", private-resource-auth-data-getter)");
                        return;
                    }
                    return;
                }
            }
            this.b.b(c.a.RECEIVED_RESOURCE_AUTH_DATA_FROM_TMS);
            this.b.a(16);
            JSONObject jSONObject8 = new JSONObject(str2);
            String strF14 = g0.f(jSONObject8, "resultCode", false);
            String strF15 = g0.f(jSONObject8, "resultMessage", false);
            strEquals = strF14.equals("0000");
            try {
                if (strEquals != 0 && strF15.equals("OK")) {
                    g0.e(jSONObject8, "unixTimestamp", true);
                    g0.f(jSONObject8, "isoTime", true);
                    JSONObject jSONObjectD3 = g0.d(jSONObject8, "record", false);
                    if (jSONObjectD3 != null) {
                        g0.f(jSONObjectD3, "fileName", true);
                        String strF16 = g0.f(jSONObjectD3, "signCode", false);
                        String strF17 = g0.f(jSONObjectD3, "tr31Flk", false);
                        String strF18 = g0.f(jSONObjectD3, "tr31Fak", false);
                        yVarD.z(strF16);
                        yVarD.G(strF17);
                        yVarD.F(strF18);
                        this.b.b(c.a.SEND_TR31_FLK_TO_FW);
                        this.b.b().a(f0.a(strF17), "040100");
                        return;
                    }
                    this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response invalid data");
                    return;
                }
                this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, "Server response fail with message: " + strF15);
            } catch (Exception unused4) {
                this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, strEquals);
            }
        } catch (Exception unused5) {
            strEquals = "Server response invalid data";
            this.b.b(BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR, strEquals);
        }
    }

    private String a(String str, String str2, String str3) {
        a("[mucInfoChecking] deviceInfoMcuInfo : " + str + ", singleMcuInfo : " + str2 + ", multipleMcuInfo : " + str3);
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
