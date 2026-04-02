package com.example.digitalkiosk.fragments;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.DialogFragment;
import com.example.digitalkiosk.HomeActivity;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.fragments.InactivityFragment;
import com.example.digitalkiosk.models.ServerPaymentIntent;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.network.ApiClient;
import com.stripe.stripeterminal.external.callable.Callback;
import com.stripe.stripeterminal.external.callable.Cancelable;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: compiled from: InactivityFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u0010\u0016\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/example/digitalkiosk/fragments/InactivityFragment;", "Landroidx/fragment/app/DialogFragment;", "timer", "Landroid/os/CountDownTimer;", "paymentFrag", "", "<init>", "(Landroid/os/CountDownTimer;Z)V", "canceltimer", "yesButton", "Landroid/widget/Button;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "processKioskInactivity", "processCancelOrder", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InactivityFragment extends DialogFragment {
    private CountDownTimer canceltimer;
    private final boolean paymentFrag;
    private final CountDownTimer timer;
    private Button yesButton;

    public /* synthetic */ InactivityFragment(CountDownTimer countDownTimer, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(countDownTimer, (i & 2) != 0 ? false : z);
    }

    public InactivityFragment(CountDownTimer timer, boolean z) {
        Intrinsics.checkNotNullParameter(timer, "timer");
        this.timer = timer;
        this.paymentFrag = z;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.cancelOrderPopupStyle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        View viewInflate = inflater.inflate(R.layout.inactivity_warning, container);
        TextView textView = (TextView) viewInflate.findViewById(R.id.still_there_text);
        this.yesButton = (Button) viewInflate.findViewById(R.id.yes_button);
        Button button = (Button) viewInflate.findViewById(R.id.no_button);
        CountDownTimer countDownTimer = new CountDownTimer() { // from class: com.example.digitalkiosk.fragments.InactivityFragment.onCreateView.2
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
            }

            {
                super(IpReaderController.HEARTBEAT_INTERVAL_MS, 1000L);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                InactivityFragment.this.processKioskInactivity();
            }
        };
        this.canceltimer = countDownTimer;
        countDownTimer.start();
        button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.InactivityFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.processKioskInactivity();
            }
        });
        Button button2 = this.yesButton;
        Button button3 = null;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("yesButton");
            button2 = null;
        }
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.InactivityFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                InactivityFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        Translation translation = MainActivity.INSTANCE.get_term_translation("still_there");
        if (translation != null) {
            textView.setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("inactivity_yes");
        if (translation2 != null) {
            Button button4 = this.yesButton;
            if (button4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("yesButton");
            } else {
                button3 = button4;
            }
            button3.setText(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("inactivity_no");
        if (translation3 != null) {
            button.setText(translation3.getTranslation());
        }
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(InactivityFragment inactivityFragment, View view) {
        CountDownTimer countDownTimer = inactivityFragment.canceltimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        inactivityFragment.timer.start();
        inactivityFragment.dismiss();
    }

    public final void processKioskInactivity() {
        Button button = this.yesButton;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("yesButton");
            button = null;
        }
        button.setOnClickListener(null);
        if (this.paymentFrag && ShopActivity.INSTANCE.getPaymentCancelable() != null && ShopActivity.INSTANCE.getCurrentPaymentIntent() != null) {
            Cancelable paymentCancelable = ShopActivity.INSTANCE.getPaymentCancelable();
            Intrinsics.checkNotNull(paymentCancelable);
            paymentCancelable.cancel(new C01361());
            return;
        }
        processCancelOrder();
    }

    /* JADX INFO: renamed from: com.example.digitalkiosk.fragments.InactivityFragment$processKioskInactivity$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InactivityFragment.kt */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007"}, d2 = {"com/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1", "Lcom/stripe/stripeterminal/external/callable/Callback;", "onFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onSuccess", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class C01361 implements Callback {
        C01361() {
        }

        @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
        public void onFailure(TerminalException e) {
            Intrinsics.checkNotNullParameter(e, "e");
            Button button = InactivityFragment.this.yesButton;
            if (button == null) {
                Intrinsics.throwUninitializedPropertyAccessException("yesButton");
                button = null;
            }
            final InactivityFragment inactivityFragment = InactivityFragment.this;
            button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.InactivityFragment$processKioskInactivity$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InactivityFragment.C01361.onFailure$lambda$0(inactivityFragment, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFailure$lambda$0(InactivityFragment inactivityFragment, View view) {
            CountDownTimer countDownTimer = inactivityFragment.canceltimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            inactivityFragment.timer.start();
            inactivityFragment.dismiss();
        }

        @Override // com.stripe.stripeterminal.external.callable.Callback
        public void onSuccess() {
            ShopActivity.INSTANCE.setPaymentCancelable(null);
            ApiClient apiClient = ApiClient.INSTANCE;
            PaymentIntent currentPaymentIntent = ShopActivity.INSTANCE.getCurrentPaymentIntent();
            Intrinsics.checkNotNull(currentPaymentIntent);
            String id = currentPaymentIntent.getId();
            Intrinsics.checkNotNull(id);
            final InactivityFragment inactivityFragment = InactivityFragment.this;
            apiClient.cancel_payment_intent$app_release(id, new retrofit2.Callback<ServerPaymentIntent>() { // from class: com.example.digitalkiosk.fragments.InactivityFragment$processKioskInactivity$1$onSuccess$1
                @Override // retrofit2.Callback
                public void onResponse(Call<ServerPaymentIntent> call, Response<ServerPaymentIntent> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ShopActivity.INSTANCE.setCurrentPaymentIntent(null);
                    inactivityFragment.processCancelOrder();
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<ServerPaymentIntent> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                    inactivityFragment.processCancelOrder();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.example.digitalkiosk.fragments.InactivityFragment$processCancelOrder$1, reason: invalid class name */
    /* JADX INFO: compiled from: InactivityFragment.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0016J\u001e\u0010\t\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"com/example/digitalkiosk/fragments/InactivityFragment$processCancelOrder$1", "Lretrofit2/Callback;", "Ljava/lang/Void;", "onResponse", "", NotificationCompat.CATEGORY_CALL, "Lretrofit2/Call;", "response", "Lretrofit2/Response;", "onFailure", "t", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 implements retrofit2.Callback<Void> {
        AnonymousClass1() {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<Void> call, Response<Void> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            CountDownTimer countDownTimer = InactivityFragment.this.canceltimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            InactivityFragment.this.dismiss();
            OptionActivity.INSTANCE.setSelected_table(null);
            OptionActivity.INSTANCE.setSelected_time(null);
            OptionActivity.INSTANCE.setPhone_number(null);
            OptionActivity.INSTANCE.setOrder_type("");
            OptionActivity.INSTANCE.setHandicap_on(false);
            Intent intent = new Intent(InactivityFragment.this.getContext(), (Class<?>) HomeActivity.class);
            intent.addFlags(268468224);
            InactivityFragment.this.startActivity(intent);
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<Void> call, Throwable t) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t, "t");
            Button button = InactivityFragment.this.yesButton;
            if (button == null) {
                Intrinsics.throwUninitializedPropertyAccessException("yesButton");
                button = null;
            }
            final InactivityFragment inactivityFragment = InactivityFragment.this;
            button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.InactivityFragment$processCancelOrder$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    InactivityFragment.AnonymousClass1.onFailure$lambda$0(inactivityFragment, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFailure$lambda$0(InactivityFragment inactivityFragment, View view) {
            CountDownTimer countDownTimer = inactivityFragment.canceltimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            inactivityFragment.timer.start();
            inactivityFragment.dismiss();
        }
    }

    public final void processCancelOrder() {
        ApiClient.INSTANCE.empty_cart$app_release(OptionActivity.INSTANCE.getSelected_table(), new AnonymousClass1());
    }
}
