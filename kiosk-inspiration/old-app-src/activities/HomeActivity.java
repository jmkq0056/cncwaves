package com.example.digitalkiosk;

import android.app.PendingIntent;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.databinding.DataBindingUtil;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.adapters.BannerSliderAdapter;
import com.example.digitalkiosk.databinding.ActivityHomeBinding;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Language;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.msprintsdk.UsbDriver;
import com.example.digitalkiosk.network.ApiClient;
import com.example.digitalkiosk.stripe.listeners.TerminalEventListener;
import com.example.digitalkiosk.stripe.providers.TokenProvider;
import com.stripe.stripeterminal.Terminal;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.log.LogLevel;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: HomeActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0006\u0010 \u001a\u00020\u001dJ \u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020%H\u0007J\u0006\u0010&\u001a\u00020\u001dJ\u0006\u0010'\u001a\u00020\u001dJ\u0006\u0010(\u001a\u00020\u001dJ\b\u0010)\u001a\u00020\u001dH\u0014R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001b¨\u0006+"}, d2 = {"Lcom/example/digitalkiosk/HomeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "imageList", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "binding", "Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;", "getBinding", "()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;", "setBinding", "(Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;)V", "bannerAdapter", "Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;", "sliderHandler", "Landroid/os/Handler;", "bluetoothManager", "Landroid/bluetooth/BluetoothManager;", "getBluetoothManager", "()Landroid/bluetooth/BluetoothManager;", "setBluetoothManager", "(Landroid/bluetooth/BluetoothManager;)V", "sliderRunnable", "Ljava/lang/Runnable;", "getSliderRunnable", "()Ljava/lang/Runnable;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "loadPrinter", "sendPrintersInfo", "type", "address", "codepage", "", "loadMarketingLines", "renderBanners", "loadLanguages", "onResume", "Companion", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HomeActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ArrayList<Language> languages = new ArrayList<>();
    private static int selected_language;
    private BannerSliderAdapter bannerAdapter;
    public ActivityHomeBinding binding;
    private BluetoothManager bluetoothManager;
    private ArrayList<String> imageList;
    private Handler sliderHandler;
    private final Runnable sliderRunnable = new Runnable() { // from class: com.example.digitalkiosk.HomeActivity$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            HomeActivity.sliderRunnable$lambda$0(this.f$0);
        }
    };

    public final ActivityHomeBinding getBinding() {
        ActivityHomeBinding activityHomeBinding = this.binding;
        if (activityHomeBinding != null) {
            return activityHomeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(ActivityHomeBinding activityHomeBinding) {
        Intrinsics.checkNotNullParameter(activityHomeBinding, "<set-?>");
        this.binding = activityHomeBinding;
    }

    public final BluetoothManager getBluetoothManager() {
        return this.bluetoothManager;
    }

    public final void setBluetoothManager(BluetoothManager bluetoothManager) {
        this.bluetoothManager = bluetoothManager;
    }

    /* JADX INFO: compiled from: HomeActivity.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/example/digitalkiosk/HomeActivity$Companion;", "", "<init>", "()V", "languages", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Language;", "Lkotlin/collections/ArrayList;", "getLanguages", "()Ljava/util/ArrayList;", "selected_language", "", "getSelected_language", "()I", "setSelected_language", "(I)V", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ArrayList<Language> getLanguages() {
            return HomeActivity.languages;
        }

        public final int getSelected_language() {
            return HomeActivity.selected_language;
        }

        public final void setSelected_language(int i) {
            HomeActivity.selected_language = i;
        }
    }

    public final Runnable getSliderRunnable() {
        return this.sliderRunnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sliderRunnable$lambda$0(HomeActivity homeActivity) {
        int currentItem = homeActivity.getBinding().bannerSlider.getCurrentItem();
        ArrayList<String> arrayList = homeActivity.imageList;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageList");
            arrayList = null;
        }
        if (currentItem == arrayList.size() - 1) {
            homeActivity.getBinding().bannerSlider.setCurrentItem(0);
        } else {
            homeActivity.getBinding().bannerSlider.setCurrentItem(homeActivity.getBinding().bannerSlider.getCurrentItem() + 1);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        Object systemService = getSystemService("bluetooth");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.bluetooth.BluetoothManager");
        this.bluetoothManager = (BluetoothManager) systemService;
        this.sliderHandler = new Handler();
        super.onCreate(savedInstanceState);
        getWindow().getDecorView().setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        setBinding((ActivityHomeBinding) DataBindingUtil.setContentView(this, R.layout.activity_home));
        getBinding().setLanguageLoaded(false);
        getBinding().setTapText(MainActivity.INSTANCE.get_term_translation("tap_to_select_the_items"));
        getBinding().getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.HomeActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeActivity.onCreate$lambda$1(this.f$0, view);
            }
        });
        getBinding().selectItems.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.HomeActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HomeActivity.onCreate$lambda$2(this.f$0, view);
            }
        });
        this.imageList = new ArrayList<>();
        ArrayList<String> arrayList = this.imageList;
        BannerSliderAdapter bannerSliderAdapter = null;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageList");
            arrayList = null;
        }
        this.bannerAdapter = new BannerSliderAdapter(arrayList);
        ViewPager2 viewPager2 = getBinding().bannerSlider;
        BannerSliderAdapter bannerSliderAdapter2 = this.bannerAdapter;
        if (bannerSliderAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bannerAdapter");
        } else {
            bannerSliderAdapter = bannerSliderAdapter2;
        }
        viewPager2.setAdapter(bannerSliderAdapter);
        loadLanguages();
        loadPrinter();
        loadMarketingLines();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(HomeActivity homeActivity, View view) {
        homeActivity.startActivity(new Intent(homeActivity, (Class<?>) OptionActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$2(HomeActivity homeActivity, View view) {
        homeActivity.startActivity(new Intent(homeActivity, (Class<?>) OptionActivity.class));
    }

    public final void loadPrinter() {
        MainActivity.Companion companion = MainActivity.INSTANCE;
        Object systemService = getSystemService("usb");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.usb.UsbManager");
        HomeActivity homeActivity = this;
        companion.setMUsbDriver(new UsbDriver((UsbManager) systemService, homeActivity));
        PendingIntent broadcast = PendingIntent.getBroadcast(homeActivity, 0, new Intent("com.usb.sample.USB_PERMISSION"), 67108864);
        UsbDriver mUsbDriver = MainActivity.INSTANCE.getMUsbDriver();
        Intrinsics.checkNotNull(mUsbDriver);
        mUsbDriver.setPermissionIntent(broadcast);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sendPrintersInfo(java.lang.String r13, java.lang.String r14, int r15) {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.HomeActivity.sendPrintersInfo(java.lang.String, java.lang.String, int):void");
    }

    public final void loadMarketingLines() {
        ApiClient.INSTANCE.kiosk_settings$app_release(new Callback<KioskSetting>() { // from class: com.example.digitalkiosk.HomeActivity.loadMarketingLines.1
            @Override // retrofit2.Callback
            public void onFailure(Call<KioskSetting> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<KioskSetting> call, Response<KioskSetting> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                KioskSetting kioskSettingBody = response.body();
                Intrinsics.checkNotNull(kioskSettingBody);
                KioskSetting kioskSetting = kioskSettingBody;
                MainActivity.INSTANCE.setCurrency(kioskSetting.getCurrency());
                MainActivity.INSTANCE.setPrintLines(kioskSetting.getPrinter_lines());
            }
        });
    }

    public final void renderBanners() {
        ApiClient apiClient = ApiClient.INSTANCE;
        int i = selected_language;
        apiClient.main_banners$app_release(i > 0 ? Integer.valueOf(i) : null, new Callback<ArrayList<String>>() { // from class: com.example.digitalkiosk.HomeActivity.renderBanners.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ArrayList<String>> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ArrayList<String>> call, Response<ArrayList<String>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ArrayList<String> arrayListBody = response.body();
                if (arrayListBody != null) {
                    ArrayList arrayList = HomeActivity.this.imageList;
                    BannerSliderAdapter bannerSliderAdapter = null;
                    if (arrayList == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imageList");
                        arrayList = null;
                    }
                    arrayList.clear();
                    ArrayList arrayList2 = HomeActivity.this.imageList;
                    if (arrayList2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("imageList");
                        arrayList2 = null;
                    }
                    arrayList2.addAll(arrayListBody);
                    BannerSliderAdapter bannerSliderAdapter2 = HomeActivity.this.bannerAdapter;
                    if (bannerSliderAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("bannerAdapter");
                    } else {
                        bannerSliderAdapter = bannerSliderAdapter2;
                    }
                    bannerSliderAdapter.notifyDataSetChanged();
                    HomeActivity.this.getBinding().indicators.setViewPager(HomeActivity.this.getBinding().bannerSlider);
                    ViewPager2 viewPager2 = HomeActivity.this.getBinding().bannerSlider;
                    final HomeActivity homeActivity = HomeActivity.this;
                    viewPager2.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.example.digitalkiosk.HomeActivity$renderBanners$1$onResponse$1
                        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                        public void onPageSelected(int position) {
                            super.onPageSelected(position);
                            Handler handler = homeActivity.sliderHandler;
                            Handler handler2 = null;
                            if (handler == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("sliderHandler");
                                handler = null;
                            }
                            handler.removeCallbacks(homeActivity.getSliderRunnable());
                            Handler handler3 = homeActivity.sliderHandler;
                            if (handler3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("sliderHandler");
                            } else {
                                handler2 = handler3;
                            }
                            handler2.postDelayed(homeActivity.getSliderRunnable(), 3000L);
                        }
                    });
                }
            }
        });
    }

    public final void loadLanguages() {
        ApiClient.INSTANCE.get_languages$app_release(new Callback<ArrayList<Language>>() { // from class: com.example.digitalkiosk.HomeActivity.loadLanguages.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ArrayList<Language>> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ArrayList<Language>> call, Response<ArrayList<Language>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ArrayList<Language> arrayListBody = response.body();
                if (response.code() != 200 || arrayListBody == null) {
                    return;
                }
                HomeActivity.INSTANCE.getLanguages().clear();
                final Ref.IntRef intRef = new Ref.IntRef();
                if (arrayListBody.size() > 0) {
                    HomeActivity.INSTANCE.getLanguages().addAll(arrayListBody);
                    intRef.element = arrayListBody.get(0).getId();
                }
                if (intRef.element != 0) {
                    ApiClient apiClient = ApiClient.INSTANCE;
                    int i = intRef.element;
                    final HomeActivity homeActivity = HomeActivity.this;
                    apiClient.get_all_translations$app_release(i, new Callback<ArrayList<Translation>>() { // from class: com.example.digitalkiosk.HomeActivity$loadLanguages$1$onResponse$1
                        @Override // retrofit2.Callback
                        public void onResponse(Call<ArrayList<Translation>> call2, Response<ArrayList<Translation>> response2) {
                            Intrinsics.checkNotNullParameter(call2, "call");
                            Intrinsics.checkNotNullParameter(response2, "response");
                            HomeActivity.INSTANCE.setSelected_language(intRef.element);
                            MainActivity.Companion companion = MainActivity.INSTANCE;
                            ArrayList<Translation> arrayListBody2 = response2.body();
                            Intrinsics.checkNotNull(arrayListBody2);
                            companion.set_translations(arrayListBody2);
                            homeActivity.getBinding().setTapText(MainActivity.INSTANCE.get_term_translation("tap_to_select_the_items"));
                            homeActivity.getBinding().setLanguageLoaded(true);
                            homeActivity.renderBanners();
                        }

                        @Override // retrofit2.Callback
                        public void onFailure(Call<ArrayList<Translation>> call2, Throwable t) {
                            Intrinsics.checkNotNullParameter(call2, "call");
                            Intrinsics.checkNotNullParameter(t, "t");
                            homeActivity.getBinding().setLanguageLoaded(true);
                        }
                    });
                    return;
                }
                MainActivity.INSTANCE.clear_translations();
                HomeActivity.this.getBinding().setLanguageLoaded(true);
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getBinding().setTapText(MainActivity.INSTANCE.get_term_translation("tap_to_select_the_items"));
        ApiClient.INSTANCE.kiosk_settings$app_release(new C01241());
        if (Terminal.INSTANCE.isInitialized()) {
            return;
        }
        try {
            Terminal.Companion companion = Terminal.INSTANCE;
            Context applicationContext = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            companion.initTerminal(applicationContext, LogLevel.VERBOSE, new TokenProvider(), new TerminalEventListener());
        } catch (TerminalException e) {
            throw new RuntimeException("Location services are required in order to initialize the Terminal.", e);
        }
    }

    /* JADX INFO: renamed from: com.example.digitalkiosk.HomeActivity$onResume$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HomeActivity.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0016J\u001e\u0010\t\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"com/example/digitalkiosk/HomeActivity$onResume$1", "Lretrofit2/Callback;", "Lcom/example/digitalkiosk/models/KioskSetting;", "onResponse", "", NotificationCompat.CATEGORY_CALL, "Lretrofit2/Call;", "response", "Lretrofit2/Response;", "onFailure", "t", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class C01241 implements Callback<KioskSetting> {
        C01241() {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<KioskSetting> call, Response<KioskSetting> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            if (response.code() == 200) {
                KioskSetting kioskSettingBody = response.body();
                Intrinsics.checkNotNull(kioskSettingBody);
                KioskSetting kioskSetting = kioskSettingBody;
                HomeActivity.this.getBinding().setLogoUrl(kioskSetting.getApp_logo());
                if (Intrinsics.areEqual(kioskSetting.getVideo(), "")) {
                    HomeActivity.this.renderBanners();
                } else {
                    HomeActivity.this.getBinding().video.setVisibility(0);
                    HomeActivity.this.getBinding().bannerSlider.setVisibility(8);
                    HomeActivity.this.getBinding().indicators.setVisibility(8);
                    HomeActivity.this.getBinding().video.setVideoPath(kioskSetting.getVideo());
                    HomeActivity.this.getBinding().video.start();
                    HomeActivity.this.getBinding().video.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.example.digitalkiosk.HomeActivity$onResume$1$$ExternalSyntheticLambda0
                        @Override // android.media.MediaPlayer.OnPreparedListener
                        public final void onPrepared(MediaPlayer mediaPlayer) {
                            mediaPlayer.setLooping(true);
                        }
                    });
                }
                HomeActivity.this.sendPrintersInfo(kioskSetting.getPrinter_type(), kioskSetting.getActivated_printer(), kioskSetting.getPrinter_codepage());
            }
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<KioskSetting> call, Throwable t) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t, "t");
            Log.d("Logo", "failed");
        }
    }
}
