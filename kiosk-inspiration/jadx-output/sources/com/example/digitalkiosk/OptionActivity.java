package com.example.digitalkiosk;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.databinding.ActivityOptionBinding;
import com.example.digitalkiosk.databinding.LanguageButtonBinding;
import com.example.digitalkiosk.fragments.InactivityFragment;
import com.example.digitalkiosk.fragments.TableSelectionFragment;
import com.example.digitalkiosk.fragments.TimeSelectionFragment;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Language;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.network.ApiClient;
import com.stripe.offlinemode.helpers.StripeHealthCheckerDefaultConfig;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: OptionActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0006\u0010\u0014\u001a\u00020\u0011J\b\u0010\u0015\u001a\u00020\u0011H\u0014J\b\u0010\u0016\u001a\u00020\u0011H\u0014J\b\u0010\u0017\u001a\u00020\u0011H\u0016J\b\u0010\u0018\u001a\u00020\u0011H\u0014J\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/example/digitalkiosk/OptionActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "binding", "Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;", "getBinding", "()Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;", "setBinding", "(Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;)V", "optionsTimer", "Landroid/os/CountDownTimer;", "getOptionsTimer", "()Landroid/os/CountDownTimer;", "setOptionsTimer", "(Landroid/os/CountDownTimer;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "inactivityTimerSet", "onPause", "onStop", "onUserInteraction", "onResume", "loadTranslations", "myLanguage", "", "Companion", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OptionActivity extends AppCompatActivity {
    private static boolean handicap_on;
    private static KioskSetting kioskSetting;
    private static String phone_number;
    private static Integer selected_table;
    private static String selected_time;
    public ActivityOptionBinding binding;
    private CountDownTimer optionsTimer;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static String order_type = "";

    public final ActivityOptionBinding getBinding() {
        ActivityOptionBinding activityOptionBinding = this.binding;
        if (activityOptionBinding != null) {
            return activityOptionBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(ActivityOptionBinding activityOptionBinding) {
        Intrinsics.checkNotNullParameter(activityOptionBinding, "<set-?>");
        this.binding = activityOptionBinding;
    }

    public final CountDownTimer getOptionsTimer() {
        return this.optionsTimer;
    }

    public final void setOptionsTimer(CountDownTimer countDownTimer) {
        this.optionsTimer = countDownTimer;
    }

    /* JADX INFO: compiled from: OptionActivity.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\tR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0007\"\u0004\b\"\u0010\t¨\u0006#"}, d2 = {"Lcom/example/digitalkiosk/OptionActivity$Companion;", "", "<init>", "()V", "order_type", "", "getOrder_type", "()Ljava/lang/String;", "setOrder_type", "(Ljava/lang/String;)V", "selected_table", "", "getSelected_table", "()Ljava/lang/Integer;", "setSelected_table", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "selected_time", "getSelected_time", "setSelected_time", "handicap_on", "", "getHandicap_on", "()Z", "setHandicap_on", "(Z)V", "kioskSetting", "Lcom/example/digitalkiosk/models/KioskSetting;", "getKioskSetting", "()Lcom/example/digitalkiosk/models/KioskSetting;", "setKioskSetting", "(Lcom/example/digitalkiosk/models/KioskSetting;)V", "phone_number", "getPhone_number", "setPhone_number", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getOrder_type() {
            return OptionActivity.order_type;
        }

        public final void setOrder_type(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            OptionActivity.order_type = str;
        }

        public final Integer getSelected_table() {
            return OptionActivity.selected_table;
        }

        public final void setSelected_table(Integer num) {
            OptionActivity.selected_table = num;
        }

        public final String getSelected_time() {
            return OptionActivity.selected_time;
        }

        public final void setSelected_time(String str) {
            OptionActivity.selected_time = str;
        }

        public final boolean getHandicap_on() {
            return OptionActivity.handicap_on;
        }

        public final void setHandicap_on(boolean z) {
            OptionActivity.handicap_on = z;
        }

        public final KioskSetting getKioskSetting() {
            return OptionActivity.kioskSetting;
        }

        public final void setKioskSetting(KioskSetting kioskSetting) {
            OptionActivity.kioskSetting = kioskSetting;
        }

        public final String getPhone_number() {
            return OptionActivity.phone_number;
        }

        public final void setPhone_number(String str) {
            OptionActivity.phone_number = str;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().getDecorView().setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        setBinding((ActivityOptionBinding) DataBindingUtil.setContentView(this, R.layout.activity_option));
        getBinding().setHandicapOn(Boolean.valueOf(handicap_on));
        this.optionsTimer = new CountDownTimer() { // from class: com.example.digitalkiosk.OptionActivity.onCreate.1
            {
                super(StripeHealthCheckerDefaultConfig.ONLINE_STABLE_RETRY_DELAY_MS, 1000L);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                Log.d("TimerRun", "time: " + millisUntilFinished);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.os.CountDownTimer
            public void onFinish() {
                CountDownTimer optionsTimer = OptionActivity.this.getOptionsTimer();
                InactivityFragment inactivityFragment = optionsTimer != null ? new InactivityFragment(optionsTimer, false, 2, 0 == true ? 1 : 0) : null;
                if (inactivityFragment != null) {
                    inactivityFragment.setCancelable(false);
                    FragmentTransaction fragmentTransactionBeginTransaction = OptionActivity.this.getSupportFragmentManager().beginTransaction();
                    Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
                    inactivityFragment.show(fragmentTransactionBeginTransaction, "Inactivity Warning");
                }
            }
        };
    }

    public final void inactivityTimerSet() {
        CountDownTimer countDownTimer = this.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.optionsTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        CountDownTimer countDownTimer = this.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        CountDownTimer countDownTimer = this.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        super.onUserInteraction();
        inactivityTimerSet();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        CountDownTimer countDownTimer = this.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
        final FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        ApiClient.INSTANCE.kiosk_settings$app_release(new Callback<KioskSetting>() { // from class: com.example.digitalkiosk.OptionActivity.onResume.1
            @Override // retrofit2.Callback
            public void onResponse(Call<KioskSetting> call, Response<KioskSetting> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ActivityOptionBinding binding = OptionActivity.this.getBinding();
                KioskSetting kioskSettingBody = response.body();
                Intrinsics.checkNotNull(kioskSettingBody);
                binding.setKiosksetting(kioskSettingBody);
                Companion companion = OptionActivity.INSTANCE;
                KioskSetting kioskSettingBody2 = response.body();
                Intrinsics.checkNotNull(kioskSettingBody2);
                companion.setKioskSetting(kioskSettingBody2);
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<KioskSetting> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                Log.d("Logo", "failed");
            }
        });
        if (HomeActivity.INSTANCE.getSelected_language() != 0) {
            getBinding().setChooseYourOption(MainActivity.INSTANCE.get_term_translation("choose_your_option"));
            getBinding().setTakeAway(MainActivity.INSTANCE.get_term_translation("take_away"));
            getBinding().setDineIn(MainActivity.INSTANCE.get_term_translation("dine_in"));
            getBinding().setPickLater(MainActivity.INSTANCE.get_term_translation("pickup_later"));
            getBinding().setSelectYourOption(MainActivity.INSTANCE.get_term_translation("select_your_option"));
        }
        if (!handicap_on) {
            getBinding().noHandicap.languages.removeAllViews();
        } else {
            getBinding().handicap.languages.removeAllViews();
        }
        Iterator<Language> it = HomeActivity.INSTANCE.getLanguages().iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Language next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            final Language language = next;
            ViewDataBinding viewDataBindingInflate = DataBindingUtil.inflate(getLayoutInflater(), R.layout.language_button, null, false);
            Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate, "inflate(...)");
            LanguageButtonBinding languageButtonBinding = (LanguageButtonBinding) viewDataBindingInflate;
            languageButtonBinding.setLanguage(language);
            if (HomeActivity.INSTANCE.getSelected_language() == language.getId()) {
                languageButtonBinding.setOpacity(Float.valueOf(0.3f));
            } else {
                languageButtonBinding.setOpacity(Float.valueOf(1.0f));
            }
            if (language.getId() != HomeActivity.INSTANCE.getSelected_language()) {
                languageButtonBinding.button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        OptionActivity.onResume$lambda$0(this.f$0, language, view);
                    }
                });
            }
            if (!handicap_on) {
                getBinding().noHandicap.languages.addView(languageButtonBinding.getRoot());
            } else {
                getBinding().handicap.languages.addView(languageButtonBinding.getRoot());
            }
        }
        getBinding().noHandicap.takeAwayButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$1(this.f$0, view);
            }
        });
        getBinding().handicap.takeAwayButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$2(this.f$0, view);
            }
        });
        getBinding().noHandicap.dineInButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$3(this.f$0, supportFragmentManager, view);
            }
        });
        getBinding().handicap.dineInButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$4(this.f$0, supportFragmentManager, view);
            }
        });
        getBinding().noHandicap.pickUpButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$5(this.f$0, supportFragmentManager, view);
            }
        });
        getBinding().handicap.pickUpButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$6(this.f$0, supportFragmentManager, view);
            }
        });
        getBinding().noHandicap.handicapButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$7(this.f$0, view);
            }
        });
        getBinding().handicap.handicapButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OptionActivity.onResume$lambda$8(this.f$0, view);
            }
        });
        getBinding().exitbutton.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.example.digitalkiosk.OptionActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return OptionActivity.onResume$lambda$9(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$0(OptionActivity optionActivity, Language language, View view) {
        optionActivity.loadTranslations(language.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$1(OptionActivity optionActivity, View view) {
        CountDownTimer countDownTimer = optionActivity.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        order_type = "take-away";
        phone_number = null;
        optionActivity.startActivity(new Intent(optionActivity, (Class<?>) ShopActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$2(OptionActivity optionActivity, View view) {
        CountDownTimer countDownTimer = optionActivity.optionsTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        order_type = "take-away";
        phone_number = null;
        optionActivity.startActivity(new Intent(optionActivity, (Class<?>) ShopActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$3(OptionActivity optionActivity, FragmentManager fragmentManager, View view) {
        phone_number = null;
        KioskSetting kioskSetting2 = kioskSetting;
        if (kioskSetting2 != null) {
            Intrinsics.checkNotNull(kioskSetting2);
            if (!kioskSetting2.getDinein_tables()) {
                CountDownTimer countDownTimer = optionActivity.optionsTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                order_type = "dine-in";
                optionActivity.startActivity(new Intent(optionActivity, (Class<?>) ShopActivity.class));
                return;
            }
        }
        new TableSelectionFragment(optionActivity.getBinding().getKiosksetting(), optionActivity.optionsTimer).show(fragmentManager, "Table Selection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$4(OptionActivity optionActivity, FragmentManager fragmentManager, View view) {
        phone_number = null;
        KioskSetting kioskSetting2 = kioskSetting;
        if (kioskSetting2 != null) {
            Intrinsics.checkNotNull(kioskSetting2);
            if (!kioskSetting2.getDinein_tables()) {
                CountDownTimer countDownTimer = optionActivity.optionsTimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                order_type = "dine-in";
                optionActivity.startActivity(new Intent(optionActivity, (Class<?>) ShopActivity.class));
                return;
            }
        }
        new TableSelectionFragment(optionActivity.getBinding().getKiosksetting(), optionActivity.optionsTimer).show(fragmentManager, "Table Selection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$5(OptionActivity optionActivity, FragmentManager fragmentManager, View view) {
        new TimeSelectionFragment(optionActivity.getBinding().getKiosksetting(), optionActivity.optionsTimer).show(fragmentManager, "Time Selection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$6(OptionActivity optionActivity, FragmentManager fragmentManager, View view) {
        new TimeSelectionFragment(optionActivity.getBinding().getKiosksetting(), optionActivity.optionsTimer).show(fragmentManager, "Time Selection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$7(OptionActivity optionActivity, View view) {
        handicap_on = !handicap_on;
        Intent intent = optionActivity.getIntent();
        optionActivity.finish();
        optionActivity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$8(OptionActivity optionActivity, View view) {
        handicap_on = !handicap_on;
        Intent intent = optionActivity.getIntent();
        optionActivity.finish();
        optionActivity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onResume$lambda$9(OptionActivity optionActivity, View view) {
        optionActivity.finishAffinity();
        return true;
    }

    public final void loadTranslations(final int myLanguage) {
        Log.d("LanguageTest", myLanguage + " Selected");
        if (myLanguage != 0) {
            ApiClient.INSTANCE.get_all_translations$app_release(myLanguage, new Callback<ArrayList<Translation>>() { // from class: com.example.digitalkiosk.OptionActivity.loadTranslations.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ArrayList<Translation>> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ArrayList<Translation>> call, Response<ArrayList<Translation>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    HomeActivity.INSTANCE.setSelected_language(myLanguage);
                    MainActivity.Companion companion = MainActivity.INSTANCE;
                    ArrayList<Translation> arrayListBody = response.body();
                    Intrinsics.checkNotNull(arrayListBody);
                    companion.set_translations(arrayListBody);
                    Intent intent = this.getIntent();
                    this.finish();
                    this.startActivity(intent);
                }
            });
            return;
        }
        HomeActivity.INSTANCE.setSelected_language(myLanguage);
        MainActivity.INSTANCE.clear_translations();
        Intent intent = getIntent();
        finish();
        startActivity(intent);
    }
}
