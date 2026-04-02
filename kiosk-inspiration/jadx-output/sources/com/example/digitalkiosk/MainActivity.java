package com.example.digitalkiosk;

import android.bluetooth.BluetoothDevice;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import com.example.digitalkiosk.models.Currency;
import com.example.digitalkiosk.models.Kiosk;
import com.example.digitalkiosk.models.PrinterLine;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.msprintsdk.UsbDriver;
import com.example.digitalkiosk.network.ApiClient;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0003\u0018\u0000 '2\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\b\u0010\u0016\u001a\u00020\u0013H\u0002J\u0018\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001b\u001a\u00020\u0013H\u0014J\b\u0010\u001c\u001a\u00020\u0013H\u0014J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0002J\b\u0010 \u001a\u00020\u0013H\u0002J\b\u0010!\u001a\u00020\u0013H\u0002J\b\u0010\"\u001a\u00020\u0013H\u0003J\u001c\u0010#\u001a\u00020\u00132\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001e0%H\u0002J\b\u0010&\u001a\u00020\u001eH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\r\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0010 \u0011*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/example/digitalkiosk/MainActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "failedConnection", "Landroid/widget/LinearLayout;", "connectingText", "retryButton", "Landroid/widget/Button;", "connectionTimer", "Landroid/os/CountDownTimer;", "connectionTries", "", "requestPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "kotlin.jvm.PlatformType", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initialize", "tryConnection", FirebaseAnalytics.Event.LOGIN, "Landroid/content/Intent;", "home", "onPause", "onStop", "isGranted", "", "permission", "requestPermissionsIfNecessary", "requestPermissionsIfNecessarySdkBelow31", "requestPermissionsIfNecessarySdk31", "onPermissionResult", "result", "", "verifyGpsEnabled", "Companion", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MainActivity extends AppCompatActivity {
    private static BluetoothDevice bluetoothDevice;
    private static Currency currency;
    private static UsbDriver mUsbDriver;
    private static SharedPreferences sharedPref;
    private static UsbDevice usbDevice;
    private static UsbManager usbManager;
    private LinearLayout connectingText;
    private CountDownTimer connectionTimer;
    private int connectionTries = 5;
    private LinearLayout failedConnection;
    private final ActivityResultLauncher<String[]> requestPermissionLauncher;
    private Button retryButton;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String appVersion = "1.0.6";
    private static ArrayList<Translation> translations = new ArrayList<>();
    private static ArrayList<PrinterLine> printLines = new ArrayList<>();
    private static String printerType = "usb";
    private static int printerCodepage = 16;

    public MainActivity() {
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new MainActivity$requestPermissionLauncher$1(this));
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestPermissionLauncher = activityResultLauncherRegisterForActivityResult;
    }

    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010<\u001a\u00020\u0005J\u000e\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0005J\u0006\u0010@\u001a\u00020>J\u0010\u0010A\u001a\u0004\u0018\u00010\n2\u0006\u0010B\u001a\u00020\u0005J\u001e\u0010C\u001a\u00020>2\u0016\u0010D\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bJ\u0006\u0010E\u001a\u00020>J\b\u0010F\u001a\u0004\u0018\u00010GJ\b\u0010H\u001a\u00020>H\u0007R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\r0\tj\b\u0012\u0004\u0012\u00020\r`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0007\"\u0004\b2\u00103R\u001a\u00104\u001a\u000205X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u000e\u0010:\u001a\u00020;X\u0082.¢\u0006\u0002\n\u0000¨\u0006I"}, d2 = {"Lcom/example/digitalkiosk/MainActivity$Companion;", "", "<init>", "()V", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "", "getAppVersion", "()Ljava/lang/String;", "translations", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Translation;", "Lkotlin/collections/ArrayList;", "printLines", "Lcom/example/digitalkiosk/models/PrinterLine;", "getPrintLines", "()Ljava/util/ArrayList;", "setPrintLines", "(Ljava/util/ArrayList;)V", "mUsbDriver", "Lcom/example/digitalkiosk/msprintsdk/UsbDriver;", "getMUsbDriver", "()Lcom/example/digitalkiosk/msprintsdk/UsbDriver;", "setMUsbDriver", "(Lcom/example/digitalkiosk/msprintsdk/UsbDriver;)V", FirebaseAnalytics.Param.CURRENCY, "Lcom/example/digitalkiosk/models/Currency;", "getCurrency", "()Lcom/example/digitalkiosk/models/Currency;", "setCurrency", "(Lcom/example/digitalkiosk/models/Currency;)V", "usbManager", "Landroid/hardware/usb/UsbManager;", "getUsbManager", "()Landroid/hardware/usb/UsbManager;", "setUsbManager", "(Landroid/hardware/usb/UsbManager;)V", "usbDevice", "Landroid/hardware/usb/UsbDevice;", "getUsbDevice", "()Landroid/hardware/usb/UsbDevice;", "setUsbDevice", "(Landroid/hardware/usb/UsbDevice;)V", "bluetoothDevice", "Landroid/bluetooth/BluetoothDevice;", "getBluetoothDevice", "()Landroid/bluetooth/BluetoothDevice;", "setBluetoothDevice", "(Landroid/bluetooth/BluetoothDevice;)V", "printerType", "getPrinterType", "setPrinterType", "(Ljava/lang/String;)V", "printerCodepage", "", "getPrinterCodepage", "()I", "setPrinterCodepage", "(I)V", "sharedPref", "Landroid/content/SharedPreferences;", "getToken", "setToken", "", "token", "deleteToken", "get_term_translation", FirebaseAnalytics.Param.TERM, "set_translations", "trans", "clear_translations", "connectPrinter", "Lcom/dantsu/escposprinter/EscPosPrinter;", "checkPrinterPaperStatus", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getAppVersion() {
            return MainActivity.appVersion;
        }

        public final ArrayList<PrinterLine> getPrintLines() {
            return MainActivity.printLines;
        }

        public final void setPrintLines(ArrayList<PrinterLine> arrayList) {
            Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
            MainActivity.printLines = arrayList;
        }

        public final UsbDriver getMUsbDriver() {
            return MainActivity.mUsbDriver;
        }

        public final void setMUsbDriver(UsbDriver usbDriver) {
            MainActivity.mUsbDriver = usbDriver;
        }

        public final Currency getCurrency() {
            return MainActivity.currency;
        }

        public final void setCurrency(Currency currency) {
            MainActivity.currency = currency;
        }

        public final UsbManager getUsbManager() {
            return MainActivity.usbManager;
        }

        public final void setUsbManager(UsbManager usbManager) {
            MainActivity.usbManager = usbManager;
        }

        public final UsbDevice getUsbDevice() {
            return MainActivity.usbDevice;
        }

        public final void setUsbDevice(UsbDevice usbDevice) {
            MainActivity.usbDevice = usbDevice;
        }

        public final BluetoothDevice getBluetoothDevice() {
            return MainActivity.bluetoothDevice;
        }

        public final void setBluetoothDevice(BluetoothDevice bluetoothDevice) {
            MainActivity.bluetoothDevice = bluetoothDevice;
        }

        public final String getPrinterType() {
            return MainActivity.printerType;
        }

        public final void setPrinterType(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            MainActivity.printerType = str;
        }

        public final int getPrinterCodepage() {
            return MainActivity.printerCodepage;
        }

        public final void setPrinterCodepage(int i) {
            MainActivity.printerCodepage = i;
        }

        public final String getToken() {
            SharedPreferences sharedPreferences = MainActivity.sharedPref;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sharedPref");
                sharedPreferences = null;
            }
            return String.valueOf(sharedPreferences.getString("login_token", ""));
        }

        public final void setToken(String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            SharedPreferences sharedPreferences = MainActivity.sharedPref;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sharedPref");
                sharedPreferences = null;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putString("login_token", token);
            editorEdit.apply();
        }

        public final void deleteToken() {
            SharedPreferences sharedPreferences = MainActivity.sharedPref;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("sharedPref");
                sharedPreferences = null;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.remove("login_token");
            editorEdit.apply();
        }

        public final Translation get_term_translation(String term) {
            Object next;
            Intrinsics.checkNotNullParameter(term, "term");
            Iterator it = MainActivity.translations.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (Intrinsics.areEqual(((Translation) next).getTerm(), term)) {
                    break;
                }
            }
            return (Translation) next;
        }

        public final void set_translations(ArrayList<Translation> trans) {
            Intrinsics.checkNotNullParameter(trans, "trans");
            MainActivity.translations = trans;
        }

        public final void clear_translations() {
            MainActivity.translations.clear();
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.dantsu.escposprinter.EscPosPrinter connectPrinter() {
            /*
                r8 = this;
                java.lang.String r0 = r8.getPrinterType()
                java.lang.String r1 = "usb"
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
                r1 = 0
                if (r0 == 0) goto L24
                android.hardware.usb.UsbDevice r0 = r8.getUsbDevice()
                if (r0 == 0) goto L24
                com.dantsu.escposprinter.connection.usb.UsbConnection r0 = new com.dantsu.escposprinter.connection.usb.UsbConnection
                android.hardware.usb.UsbManager r2 = r8.getUsbManager()
                android.hardware.usb.UsbDevice r3 = r8.getUsbDevice()
                r0.<init>(r2, r3)
                com.dantsu.escposprinter.connection.DeviceConnection r0 = (com.dantsu.escposprinter.connection.DeviceConnection) r0
            L22:
                r3 = r0
                goto L43
            L24:
                java.lang.String r0 = r8.getPrinterType()
                java.lang.String r2 = "bluetooth"
                boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r2)
                if (r0 == 0) goto L42
                android.bluetooth.BluetoothDevice r0 = r8.getBluetoothDevice()
                if (r0 == 0) goto L42
                com.dantsu.escposprinter.connection.bluetooth.BluetoothConnection r0 = new com.dantsu.escposprinter.connection.bluetooth.BluetoothConnection
                android.bluetooth.BluetoothDevice r2 = r8.getBluetoothDevice()
                r0.<init>(r2)
                com.dantsu.escposprinter.connection.DeviceConnection r0 = (com.dantsu.escposprinter.connection.DeviceConnection) r0
                goto L22
            L42:
                r3 = r1
            L43:
                if (r3 == 0) goto L6a
                com.dantsu.escposprinter.EscPosPrinter r2 = new com.dantsu.escposprinter.EscPosPrinter     // Catch: java.lang.Exception -> L5c
                com.dantsu.escposprinter.EscPosCharsetEncoding r7 = new com.dantsu.escposprinter.EscPosCharsetEncoding     // Catch: java.lang.Exception -> L5c
                java.lang.String r0 = "windows-1252"
                int r4 = r8.getPrinterCodepage()     // Catch: java.lang.Exception -> L5c
                r7.<init>(r0, r4)     // Catch: java.lang.Exception -> L5c
                r4 = 203(0xcb, float:2.84E-43)
                r5 = 1116733440(0x42900000, float:72.0)
                r6 = 45
                r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L5c
                return r2
            L5c:
                r0 = move-exception
                java.lang.String r0 = r0.getMessage()
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r2 = "PrintTest"
                android.util.Log.d(r2, r0)
            L6a:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.MainActivity.Companion.connectPrinter():com.dantsu.escposprinter.EscPosPrinter");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:107:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00ab  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0105 A[PHI: r4
          0x0105: PHI (r4v6 android.bluetooth.BluetoothSocket) = (r4v5 android.bluetooth.BluetoothSocket), (r4v8 android.bluetooth.BluetoothSocket) binds: [B:80:0x0137, B:61:0x0103] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:84:0x013d  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0142  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0153  */
        /* JADX WARN: Type inference failed for: r12v0, types: [android.hardware.usb.UsbDeviceConnection] */
        /* JADX WARN: Type inference failed for: r12v1, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r12v12 */
        /* JADX WARN: Type inference failed for: r12v13 */
        /* JADX WARN: Type inference failed for: r12v14 */
        /* JADX WARN: Type inference failed for: r12v2, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v6 */
        /* JADX WARN: Type inference failed for: r4v11, types: [boolean] */
        /* JADX WARN: Type inference failed for: r4v12, types: [android.hardware.usb.UsbInterface] */
        /* JADX WARN: Type inference failed for: r4v13 */
        /* JADX WARN: Type inference failed for: r5v1 */
        /* JADX WARN: Type inference failed for: r5v2, types: [T] */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v4 */
        /* JADX WARN: Type inference failed for: r5v5, types: [T] */
        /* JADX WARN: Type inference failed for: r5v6 */
        /* JADX WARN: Type inference failed for: r5v7 */
        /* JADX WARN: Type inference failed for: r5v8 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void checkPrinterPaperStatus() {
            /*
                Method dump skipped, instruction units count: 362
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.MainActivity.Companion.checkPrinterPaperStatus():void");
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        Object systemService = getSystemService("usb");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.usb.UsbManager");
        usbManager = (UsbManager) systemService;
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        startService(new Intent(this, (Class<?>) PrinterService.class));
        this.failedConnection = (LinearLayout) findViewById(R.id.connection_failed);
        this.connectingText = (LinearLayout) findViewById(R.id.connecting);
        this.retryButton = (Button) findViewById(R.id.retry_connection);
        requestPermissionsIfNecessary();
    }

    private final void initialize() {
        Log.d("MainActivity", "initializing");
        Companion companion = INSTANCE;
        sharedPref = getSharedPreferences(getString(R.string.preference_file_key), 0);
        String token = companion.getToken();
        MainActivity mainActivity = this;
        final Intent intent = new Intent(mainActivity, (Class<?>) LoginActivity.class);
        final Intent intent2 = new Intent(mainActivity, (Class<?>) HomeActivity.class);
        if (Intrinsics.areEqual(token, "")) {
            startActivity(intent);
            finish();
        } else {
            this.connectionTimer = new CountDownTimer() { // from class: com.example.digitalkiosk.MainActivity.initialize.1
                @Override // android.os.CountDownTimer
                public void onTick(long millisUntilFinished) {
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(10000L, 1000L);
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    MainActivity.this.tryConnection(intent, intent2);
                }
            };
            tryConnection(intent, intent2);
        }
        Button button = this.retryButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("retryButton");
            button = null;
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.MainActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.initialize$lambda$0(this.f$0, intent, intent2, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initialize$lambda$0(MainActivity mainActivity, Intent intent, Intent intent2, View view) {
        mainActivity.connectionTries = 5;
        mainActivity.tryConnection(intent, intent2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryConnection(final Intent login, final Intent home) {
        LinearLayout linearLayout = this.connectingText;
        LinearLayout linearLayout2 = null;
        if (linearLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectingText");
            linearLayout = null;
        }
        linearLayout.setVisibility(0);
        LinearLayout linearLayout3 = this.failedConnection;
        if (linearLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("failedConnection");
        } else {
            linearLayout2 = linearLayout3;
        }
        linearLayout2.setVisibility(8);
        this.connectionTries--;
        ApiClient.INSTANCE.verify$app_release(new Callback<Kiosk>() { // from class: com.example.digitalkiosk.MainActivity.tryConnection.1
            @Override // retrofit2.Callback
            public void onResponse(Call<Kiosk> call, Response<Kiosk> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                LinearLayout linearLayout4 = null;
                if (response.code() == 200) {
                    CountDownTimer countDownTimer = MainActivity.this.connectionTimer;
                    if (countDownTimer != null) {
                        countDownTimer.cancel();
                    }
                    Kiosk kioskBody = response.body();
                    if ((kioskBody != null ? kioskBody.getKiosk_id() : null) != null) {
                        MainActivity.this.startActivity(home);
                    } else {
                        MainActivity.INSTANCE.deleteToken();
                        MainActivity.this.startActivity(login);
                    }
                    MainActivity.this.finish();
                    return;
                }
                if (response.code() != 401) {
                    if (MainActivity.this.connectionTries > 0) {
                        CountDownTimer countDownTimer2 = MainActivity.this.connectionTimer;
                        if (countDownTimer2 != null) {
                            countDownTimer2.start();
                            return;
                        }
                        return;
                    }
                    LinearLayout linearLayout5 = MainActivity.this.connectingText;
                    if (linearLayout5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("connectingText");
                        linearLayout5 = null;
                    }
                    linearLayout5.setVisibility(8);
                    LinearLayout linearLayout6 = MainActivity.this.failedConnection;
                    if (linearLayout6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("failedConnection");
                    } else {
                        linearLayout4 = linearLayout6;
                    }
                    linearLayout4.setVisibility(0);
                    return;
                }
                MainActivity.INSTANCE.deleteToken();
                CountDownTimer countDownTimer3 = MainActivity.this.connectionTimer;
                if (countDownTimer3 != null) {
                    countDownTimer3.cancel();
                }
                MainActivity.this.startActivity(login);
                MainActivity.this.finish();
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<Kiosk> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                if (MainActivity.this.connectionTries > 0) {
                    CountDownTimer countDownTimer = MainActivity.this.connectionTimer;
                    if (countDownTimer != null) {
                        countDownTimer.start();
                        return;
                    }
                    return;
                }
                LinearLayout linearLayout4 = MainActivity.this.connectingText;
                LinearLayout linearLayout5 = null;
                if (linearLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("connectingText");
                    linearLayout4 = null;
                }
                linearLayout4.setVisibility(8);
                LinearLayout linearLayout6 = MainActivity.this.failedConnection;
                if (linearLayout6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("failedConnection");
                } else {
                    linearLayout5 = linearLayout6;
                }
                linearLayout5.setVisibility(0);
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        CountDownTimer countDownTimer = this.connectionTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        CountDownTimer countDownTimer = this.connectionTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onStop();
    }

    private final boolean isGranted(String permission) {
        return ContextCompat.checkSelfPermission(this, permission) == 0;
    }

    private final void requestPermissionsIfNecessary() {
        if (Build.VERSION.SDK_INT >= 31) {
            requestPermissionsIfNecessarySdk31();
        } else {
            requestPermissionsIfNecessarySdkBelow31();
        }
    }

    private final void requestPermissionsIfNecessarySdkBelow31() {
        if (!isGranted("android.permission.ACCESS_FINE_LOCATION")) {
            this.requestPermissionLauncher.launch(new String[]{"android.permission.ACCESS_FINE_LOCATION"});
        } else if (verifyGpsEnabled()) {
            initialize();
        }
    }

    private final void requestPermissionsIfNecessarySdk31() {
        ArrayList arrayList = new ArrayList();
        if (!isGranted("android.permission.ACCESS_FINE_LOCATION")) {
            arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        }
        if (!isGranted("android.permission.BLUETOOTH_CONNECT")) {
            arrayList.add("android.permission.BLUETOOTH_CONNECT");
        }
        if (!isGranted("android.permission.BLUETOOTH_SCAN")) {
            arrayList.add("android.permission.BLUETOOTH_SCAN");
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        if (!(strArr.length == 0)) {
            this.requestPermissionLauncher.launch(strArr);
        } else if (verifyGpsEnabled()) {
            initialize();
        }
    }

    private final boolean verifyGpsEnabled() {
        boolean zIsProviderEnabled;
        LocationManager locationManager = (LocationManager) getApplicationContext().getSystemService(FirebaseAnalytics.Param.LOCATION);
        if (locationManager != null) {
            try {
                zIsProviderEnabled = locationManager.isProviderEnabled("gps");
            } catch (Exception unused) {
                zIsProviderEnabled = false;
            }
        } else {
            zIsProviderEnabled = false;
        }
        if (!zIsProviderEnabled) {
            new AlertDialog.Builder(new ContextThemeWrapper(this, com.google.android.material.R.style.Theme_MaterialComponents_DayNight_DarkActionBar)).setMessage("Please enable location services").setCancelable(false).setPositiveButton("Open location settings", new DialogInterface.OnClickListener() { // from class: com.example.digitalkiosk.MainActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    MainActivity.verifyGpsEnabled$lambda$4(this.f$0, dialogInterface, i);
                }
            }).create().show();
        }
        return zIsProviderEnabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void verifyGpsEnabled$lambda$4(MainActivity mainActivity, DialogInterface dialogInterface, int i) {
        mainActivity.startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPermissionResult(Map<String, Boolean> result) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, Boolean> entry : result.entrySet()) {
            if (!entry.getValue().booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        Iterator it = linkedHashMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Map.Entry) it.next()).getKey());
        }
        if (arrayList.isEmpty() && verifyGpsEnabled()) {
            initialize();
        }
    }
}
