package com.example.digitalkiosk.fragments;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.databinding.CardPaymentBinding;
import com.example.digitalkiosk.models.CreateIntentResponse;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Order;
import com.example.digitalkiosk.models.ServerPaymentIntent;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.models.Voucher;
import com.example.digitalkiosk.network.ApiClient;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.Terminal;
import com.stripe.stripeterminal.external.callable.Callback;
import com.stripe.stripeterminal.external.callable.Cancelable;
import com.stripe.stripeterminal.external.callable.DiscoveryListener;
import com.stripe.stripeterminal.external.callable.InternetReaderListener;
import com.stripe.stripeterminal.external.callable.PaymentIntentCallback;
import com.stripe.stripeterminal.external.callable.ReaderCallback;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.DiscoveryConfiguration;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: compiled from: CardPaymentFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0005\n\u0002\b\u0005\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002*\u00041<AF\u0018\u00002\u00020\u0001:\u0001MB'\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J&\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\b\u0010+\u001a\u00020\"H\u0003J\u0010\u0010,\u001a\u00020\"2\u0006\u0010-\u001a\u00020.H\u0002J\b\u0010/\u001a\u00020\"H\u0002J\u0018\u00106\u001a\u00020\"2\u0006\u00107\u001a\u00020\u00102\u0006\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u00020\"H\u0002J\u0014\u0010J\u001a\u00020\"2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010LH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001b\u00100\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b2\u00103R\u001b\u0010;\u001a\u00020<8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u00105\u001a\u0004\b=\u0010>R\u001b\u0010@\u001a\u00020A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u00105\u001a\u0004\bB\u0010CR\u001b\u0010E\u001a\u00020F8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u00105\u001a\u0004\bG\u0010H¨\u0006N"}, d2 = {"Lcom/example/digitalkiosk/fragments/CardPaymentFragment;", "Landroidx/fragment/app/DialogFragment;", "shoptimer", "Landroid/os/CountDownTimer;", "paymentTimer", "onDismissListener", "Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;", "<init>", "(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;)V", "binding", "Lcom/example/digitalkiosk/databinding/CardPaymentBinding;", "discoveryConfig", "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;", "shopActivity", "Lcom/example/digitalkiosk/ShopActivity;", "discoveryTask", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "getDiscoveryTask", "()Lcom/stripe/stripeterminal/external/callable/Cancelable;", "setDiscoveryTask", "(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V", "timer", "getTimer", "()Landroid/os/CountDownTimer;", "setTimer", "(Landroid/os/CountDownTimer;)V", "order_id", "", "getOrder_id", "()Ljava/lang/Integer;", "setOrder_id", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "discoverReaders", "connectReader", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "startPayment", "createPaymentIntentCallback", "com/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1", "getCreatePaymentIntentCallback", "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;", "createPaymentIntentCallback$delegate", "Lkotlin/Lazy;", "setCancellation", "collectPaymentMethod", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "removeCancellation", "cancelPaymentIntentCallback", "com/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1", "getCancelPaymentIntentCallback", "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;", "cancelPaymentIntentCallback$delegate", "collectPaymentMethodCallback", "com/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1", "getCollectPaymentMethodCallback", "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;", "collectPaymentMethodCallback$delegate", "processPaymentCallback", "com/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1", "getProcessPaymentCallback", "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;", "processPaymentCallback$delegate", "paymentFailed", "message", "", "OnDismissListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CardPaymentFragment extends DialogFragment {
    private CardPaymentBinding binding;

    /* JADX INFO: renamed from: cancelPaymentIntentCallback$delegate, reason: from kotlin metadata */
    private final Lazy cancelPaymentIntentCallback;

    /* JADX INFO: renamed from: collectPaymentMethodCallback$delegate, reason: from kotlin metadata */
    private final Lazy collectPaymentMethodCallback;

    /* JADX INFO: renamed from: createPaymentIntentCallback$delegate, reason: from kotlin metadata */
    private final Lazy createPaymentIntentCallback;
    private final DiscoveryConfiguration.InternetDiscoveryConfiguration discoveryConfig;
    private Cancelable discoveryTask;
    private final OnDismissListener onDismissListener;
    private Integer order_id;
    private final CountDownTimer paymentTimer;

    /* JADX INFO: renamed from: processPaymentCallback$delegate, reason: from kotlin metadata */
    private final Lazy processPaymentCallback;
    private ShopActivity shopActivity;
    private final CountDownTimer shoptimer;
    private CountDownTimer timer;

    /* JADX INFO: compiled from: CardPaymentFragment.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;", "", "onDismiss", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnDismissListener {
        void onDismiss();
    }

    public /* synthetic */ CardPaymentFragment(CountDownTimer countDownTimer, CountDownTimer countDownTimer2, OnDismissListener onDismissListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : countDownTimer, (i & 2) != 0 ? null : countDownTimer2, onDismissListener);
    }

    public CardPaymentFragment(CountDownTimer countDownTimer, CountDownTimer countDownTimer2, OnDismissListener onDismissListener) {
        Intrinsics.checkNotNullParameter(onDismissListener, "onDismissListener");
        this.shoptimer = countDownTimer;
        this.paymentTimer = countDownTimer2;
        this.onDismissListener = onDismissListener;
        this.discoveryConfig = new DiscoveryConfiguration.InternetDiscoveryConfiguration(0, null, false, 2, null);
        this.createPaymentIntentCallback = LazyKt.lazy(new Function0() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CardPaymentFragment.createPaymentIntentCallback_delegate$lambda$2(this.f$0);
            }
        });
        this.cancelPaymentIntentCallback = LazyKt.lazy(new Function0() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CardPaymentFragment.cancelPaymentIntentCallback_delegate$lambda$6(this.f$0);
            }
        });
        this.collectPaymentMethodCallback = LazyKt.lazy(new Function0() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CardPaymentFragment.collectPaymentMethodCallback_delegate$lambda$7(this.f$0);
            }
        });
        this.processPaymentCallback = LazyKt.lazy(new Function0() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CardPaymentFragment.processPaymentCallback_delegate$lambda$8(this.f$0);
            }
        });
    }

    public final Cancelable getDiscoveryTask() {
        return this.discoveryTask;
    }

    public final void setDiscoveryTask(Cancelable cancelable) {
        this.discoveryTask = cancelable;
    }

    public final CountDownTimer getTimer() {
        return this.timer;
    }

    public final void setTimer(CountDownTimer countDownTimer) {
        this.timer = countDownTimer;
    }

    public final Integer getOrder_id() {
        return this.order_id;
    }

    public final void setOrder_id(Integer num) {
        this.order_id = num;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) throws Exception {
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        CardPaymentBinding cardPaymentBinding = null;
        this.binding = (CardPaymentBinding) DataBindingUtil.inflate(inflater, com.example.digitalkiosk.R.layout.card_payment, null, false);
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            CardPaymentBinding cardPaymentBinding2 = this.binding;
            if (cardPaymentBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding2 = null;
            }
            cardPaymentBinding2.appLogo.setVisibility(0);
            CardPaymentBinding cardPaymentBinding3 = this.binding;
            if (cardPaymentBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding3 = null;
            }
            cardPaymentBinding3.appLogo2.setVisibility(0);
        }
        CardPaymentBinding cardPaymentBinding4 = this.binding;
        if (cardPaymentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding4 = null;
        }
        cardPaymentBinding4.setKiosksetting(OptionActivity.INSTANCE.getKioskSetting());
        CardPaymentBinding cardPaymentBinding5 = this.binding;
        if (cardPaymentBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding5 = null;
        }
        cardPaymentBinding5.setTimerCount(0);
        CardPaymentBinding cardPaymentBinding6 = this.binding;
        if (cardPaymentBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding6 = null;
        }
        cardPaymentBinding6.backButton.setVisibility(8);
        CardPaymentBinding cardPaymentBinding7 = this.binding;
        if (cardPaymentBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding7 = null;
        }
        cardPaymentBinding7.backButton.setOnClickListener(null);
        CardPaymentBinding cardPaymentBinding8 = this.binding;
        if (cardPaymentBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding8 = null;
        }
        cardPaymentBinding8.backHomeButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CardPaymentFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
        this.shopActivity = (ShopActivity) context;
        if (Terminal.INSTANCE.getInstance().getConnectedReader() == null) {
            discoverReaders();
        } else {
            startPayment();
        }
        Translation translation = MainActivity.INSTANCE.get_term_translation("pay_amount");
        if (translation != null) {
            CardPaymentBinding cardPaymentBinding9 = this.binding;
            if (cardPaymentBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding9 = null;
            }
            cardPaymentBinding9.payAmountText.setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("follow_machine_instructions");
        if (translation2 != null) {
            CardPaymentBinding cardPaymentBinding10 = this.binding;
            if (cardPaymentBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding10 = null;
            }
            cardPaymentBinding10.followInstructionsText.setText(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("back_pay_amount");
        if (translation3 != null) {
            CardPaymentBinding cardPaymentBinding11 = this.binding;
            if (cardPaymentBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding11 = null;
            }
            cardPaymentBinding11.backButton.setText(translation3.getTranslation());
        }
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("payment_failed");
        if (translation4 != null) {
            CardPaymentBinding cardPaymentBinding12 = this.binding;
            if (cardPaymentBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding12 = null;
            }
            cardPaymentBinding12.paymentFailedText.setText(translation4.getTranslation());
        }
        Translation translation5 = MainActivity.INSTANCE.get_term_translation("want_retry");
        if (translation5 != null) {
            CardPaymentBinding cardPaymentBinding13 = this.binding;
            if (cardPaymentBinding13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding13 = null;
            }
            cardPaymentBinding13.errorMessage.setText(translation5.getTranslation());
        }
        Translation translation6 = MainActivity.INSTANCE.get_term_translation("retry_yes");
        if (translation6 != null) {
            CardPaymentBinding cardPaymentBinding14 = this.binding;
            if (cardPaymentBinding14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding14 = null;
            }
            cardPaymentBinding14.retryYes.setText(translation6.getTranslation());
        }
        Translation translation7 = MainActivity.INSTANCE.get_term_translation("retry_no");
        if (translation7 != null) {
            CardPaymentBinding cardPaymentBinding15 = this.binding;
            if (cardPaymentBinding15 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding15 = null;
            }
            cardPaymentBinding15.retryNo.setText(translation7.getTranslation());
        }
        Translation translation8 = MainActivity.INSTANCE.get_term_translation("back_to_home_failed");
        if (translation8 != null) {
            CardPaymentBinding cardPaymentBinding16 = this.binding;
            if (cardPaymentBinding16 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding16 = null;
            }
            cardPaymentBinding16.backHomeButton.setText(translation8.getTranslation());
        }
        CardPaymentBinding cardPaymentBinding17 = this.binding;
        if (cardPaymentBinding17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            cardPaymentBinding = cardPaymentBinding17;
        }
        return cardPaymentBinding.getRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(CardPaymentFragment cardPaymentFragment, View view) {
        CountDownTimer countDownTimer = cardPaymentFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = cardPaymentFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        cardPaymentFragment.onDismissListener.onDismiss();
        cardPaymentFragment.dismiss();
    }

    private final void discoverReaders() {
        CardPaymentBinding cardPaymentBinding = this.binding;
        if (cardPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding = null;
        }
        cardPaymentBinding.backButton.setVisibility(8);
        CardPaymentBinding cardPaymentBinding2 = this.binding;
        if (cardPaymentBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding2 = null;
        }
        cardPaymentBinding2.backButton.setOnClickListener(null);
        this.discoveryTask = Terminal.INSTANCE.getInstance().discoverReaders(this.discoveryConfig, new DiscoveryListener() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$discoverReaders$discoveryListener$1
            @Override // com.stripe.stripeterminal.external.callable.DiscoveryListener
            public void onUpdateDiscoveredReaders(List<Reader> readers) {
                Intrinsics.checkNotNullParameter(readers, "readers");
                KioskSetting kioskSetting = OptionActivity.INSTANCE.getKioskSetting();
                String stripe_reader = kioskSetting != null ? kioskSetting.getStripe_reader() : null;
                if (!Intrinsics.areEqual(stripe_reader, "")) {
                    for (Reader reader : readers) {
                        if (Intrinsics.areEqual(stripe_reader, reader.getId())) {
                            this.this$0.connectReader(reader);
                            return;
                        }
                    }
                    Cancelable discoveryTask = this.this$0.getDiscoveryTask();
                    if (discoveryTask != null) {
                        final CardPaymentFragment cardPaymentFragment = this.this$0;
                        discoveryTask.cancel(new Callback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$discoverReaders$discoveryListener$1$onUpdateDiscoveredReaders$1
                            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                            public void onFailure(TerminalException e) {
                                Intrinsics.checkNotNullParameter(e, "e");
                            }

                            @Override // com.stripe.stripeterminal.external.callable.Callback
                            public void onSuccess() throws IOException {
                                cardPaymentFragment.paymentFailed("Reader Not Found");
                            }
                        });
                        return;
                    }
                    return;
                }
                Cancelable discoveryTask2 = this.this$0.getDiscoveryTask();
                if (discoveryTask2 != null) {
                    final CardPaymentFragment cardPaymentFragment2 = this.this$0;
                    discoveryTask2.cancel(new Callback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$discoverReaders$discoveryListener$1$onUpdateDiscoveredReaders$2
                        @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                        public void onFailure(TerminalException e) {
                            Intrinsics.checkNotNullParameter(e, "e");
                        }

                        @Override // com.stripe.stripeterminal.external.callable.Callback
                        public void onSuccess() throws IOException {
                            cardPaymentFragment2.paymentFailed("Reader is Not Set in Backend");
                        }
                    });
                }
            }
        }, new Callback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$discoverReaders$discoveryCallback$1
            @Override // com.stripe.stripeterminal.external.callable.Callback
            public void onSuccess() {
            }

            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) throws IOException {
                Intrinsics.checkNotNullParameter(e, "e");
                this.this$0.paymentFailed("Reader Discovery Failed");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connectReader(Reader reader) {
        Terminal.INSTANCE.getInstance().connectReader(reader, new ConnectionConfiguration.InternetConnectionConfiguration(true, new InternetReaderListener() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$connectReader$connectionConfig$1
            @Override // com.stripe.stripeterminal.external.callable.ReaderDisconnectListener
            public void onDisconnect(DisconnectReason reason) {
                Intrinsics.checkNotNullParameter(reason, "reason");
            }
        }), new ReaderCallback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$connectReader$readerCallback$1
            @Override // com.stripe.stripeterminal.external.callable.ReaderCallback
            public void onSuccess(Reader reader2) throws Exception {
                Intrinsics.checkNotNullParameter(reader2, "reader");
                this.this$0.startPayment();
            }

            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) {
                Intrinsics.checkNotNullParameter(e, "e");
                Cancelable discoveryTask = this.this$0.getDiscoveryTask();
                if (discoveryTask != null) {
                    final CardPaymentFragment cardPaymentFragment = this.this$0;
                    discoveryTask.cancel(new Callback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$connectReader$readerCallback$1$onFailure$1
                        @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
                        public void onFailure(TerminalException e2) {
                            Intrinsics.checkNotNullParameter(e2, "e");
                        }

                        @Override // com.stripe.stripeterminal.external.callable.Callback
                        public void onSuccess() throws IOException {
                            cardPaymentFragment.paymentFailed("Reader Connected Failed");
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startPayment() throws Exception {
        CardPaymentBinding cardPaymentBinding = this.binding;
        if (cardPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding = null;
        }
        cardPaymentBinding.backButton.setVisibility(8);
        CardPaymentBinding cardPaymentBinding2 = this.binding;
        if (cardPaymentBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding2 = null;
        }
        cardPaymentBinding2.backButton.setOnClickListener(null);
        CardPaymentBinding cardPaymentBinding3 = this.binding;
        if (cardPaymentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding3 = null;
        }
        cardPaymentBinding3.retryYes.setOnClickListener(null);
        CardPaymentBinding cardPaymentBinding4 = this.binding;
        if (cardPaymentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding4 = null;
        }
        cardPaymentBinding4.retryNo.setOnClickListener(null);
        CardPaymentBinding cardPaymentBinding5 = this.binding;
        if (cardPaymentBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding5 = null;
        }
        int iIntValue = 0;
        cardPaymentBinding5.processingLayout.setVisibility(0);
        CardPaymentBinding cardPaymentBinding6 = this.binding;
        if (cardPaymentBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding6 = null;
        }
        cardPaymentBinding6.failedLayout.setVisibility(8);
        if (ShopActivity.INSTANCE.getVoucher() != null) {
            Voucher voucher = ShopActivity.INSTANCE.getVoucher();
            Integer numValueOf = voucher != null ? Integer.valueOf(voucher.getId()) : null;
            Intrinsics.checkNotNull(numValueOf);
            iIntValue = numValueOf.intValue();
        }
        KioskSetting kioskSetting = OptionActivity.INSTANCE.getKioskSetting();
        String stripe_reader = kioskSetting != null ? kioskSetting.getStripe_reader() : null;
        ApiClient apiClient = ApiClient.INSTANCE;
        Intrinsics.checkNotNull(stripe_reader);
        apiClient.create_order_payment_intent$app_release(stripe_reader, OptionActivity.INSTANCE.getOrder_type(), OptionActivity.INSTANCE.getSelected_table(), OptionActivity.INSTANCE.getSelected_time(), OptionActivity.INSTANCE.getPhone_number(), "card", Integer.valueOf(ShopActivity.INSTANCE.getBag_added()), Integer.valueOf(iIntValue), new retrofit2.Callback<CreateIntentResponse>() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment.startPayment.1
            @Override // retrofit2.Callback
            public void onResponse(Call<CreateIntentResponse> p0, Response<CreateIntentResponse> p1) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Intrinsics.checkNotNullParameter(p1, "p1");
                CreateIntentResponse createIntentResponseBody = p1.body();
                if ((createIntentResponseBody != null ? createIntentResponseBody.getIntent() : null) != null) {
                    Terminal.INSTANCE.getInstance().retrievePaymentIntent(createIntentResponseBody.getIntent().getClient_secret(), CardPaymentFragment.this.getCreatePaymentIntentCallback());
                    CardPaymentFragment.this.setOrder_id(createIntentResponseBody.getOrder());
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<CreateIntentResponse> p0, Throwable p1) throws IOException {
                Intrinsics.checkNotNullParameter(p0, "p0");
                Intrinsics.checkNotNullParameter(p1, "p1");
                CardPaymentFragment.this.paymentFailed("Couldn't Start Payment");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CardPaymentFragment$createPaymentIntentCallback$2$1 getCreatePaymentIntentCallback() {
        return (CardPaymentFragment$createPaymentIntentCallback$2$1) this.createPaymentIntentCallback.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.example.digitalkiosk.fragments.CardPaymentFragment$createPaymentIntentCallback$2$1] */
    public static final CardPaymentFragment$createPaymentIntentCallback$2$1 createPaymentIntentCallback_delegate$lambda$2(final CardPaymentFragment cardPaymentFragment) {
        return new PaymentIntentCallback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$createPaymentIntentCallback$2$1
            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) throws IOException {
                Intrinsics.checkNotNullParameter(e, "e");
                this.this$0.paymentFailed("Couldn't Use Payment Intent");
            }

            @Override // com.stripe.stripeterminal.external.callable.PaymentIntentCallback
            public void onSuccess(PaymentIntent paymentIntent) {
                Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
                this.this$0.setCancellation(Terminal.collectPaymentMethod$default(Terminal.INSTANCE.getInstance(), paymentIntent, this.this$0.getCollectPaymentMethodCallback(), null, 4, null), paymentIntent);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCancellation(final Cancelable collectPaymentMethod, PaymentIntent paymentIntent) {
        CountDownTimer countDownTimer = this.paymentTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.paymentTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        ShopActivity.INSTANCE.setCurrentPaymentIntent(paymentIntent);
        ShopActivity.INSTANCE.setPaymentCancelable(collectPaymentMethod);
        ShopActivity shopActivity = this.shopActivity;
        if (shopActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
            shopActivity = null;
        }
        shopActivity.runOnUiThread(new Runnable() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CardPaymentFragment.setCancellation$lambda$4(this.f$0, collectPaymentMethod);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCancellation$lambda$4(final CardPaymentFragment cardPaymentFragment, final Cancelable cancelable) {
        CardPaymentBinding cardPaymentBinding = cardPaymentFragment.binding;
        CardPaymentBinding cardPaymentBinding2 = null;
        if (cardPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding = null;
        }
        cardPaymentBinding.backButton.setVisibility(0);
        CardPaymentBinding cardPaymentBinding3 = cardPaymentFragment.binding;
        if (cardPaymentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            cardPaymentBinding2 = cardPaymentBinding3;
        }
        cardPaymentBinding2.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CardPaymentFragment.setCancellation$lambda$4$lambda$3(this.f$0, cancelable, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCancellation$lambda$4$lambda$3(CardPaymentFragment cardPaymentFragment, Cancelable cancelable, View view) {
        CountDownTimer countDownTimer = cardPaymentFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = cardPaymentFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        cancelable.cancel(cardPaymentFragment.getCancelPaymentIntentCallback());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeCancellation() {
        CountDownTimer countDownTimer = this.paymentTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        ShopActivity shopActivity = null;
        ShopActivity.INSTANCE.setPaymentCancelable(null);
        ShopActivity.INSTANCE.setCurrentPaymentIntent(null);
        ShopActivity shopActivity2 = this.shopActivity;
        if (shopActivity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
        } else {
            shopActivity = shopActivity2;
        }
        shopActivity.runOnUiThread(new Runnable() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CardPaymentFragment.removeCancellation$lambda$5(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeCancellation$lambda$5(CardPaymentFragment cardPaymentFragment) {
        CardPaymentBinding cardPaymentBinding = cardPaymentFragment.binding;
        if (cardPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding = null;
        }
        cardPaymentBinding.backButton.setVisibility(8);
        CardPaymentBinding cardPaymentBinding2 = cardPaymentFragment.binding;
        if (cardPaymentBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding2 = null;
        }
        cardPaymentBinding2.backButton.setOnClickListener(null);
    }

    private final CardPaymentFragment$cancelPaymentIntentCallback$2$1 getCancelPaymentIntentCallback() {
        return (CardPaymentFragment$cancelPaymentIntentCallback$2$1) this.cancelPaymentIntentCallback.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.example.digitalkiosk.fragments.CardPaymentFragment$cancelPaymentIntentCallback$2$1] */
    public static final CardPaymentFragment$cancelPaymentIntentCallback$2$1 cancelPaymentIntentCallback_delegate$lambda$6(final CardPaymentFragment cardPaymentFragment) {
        return new Callback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$cancelPaymentIntentCallback$2$1
            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) {
                Intrinsics.checkNotNullParameter(e, "e");
            }

            @Override // com.stripe.stripeterminal.external.callable.Callback
            public void onSuccess() {
                ShopActivity.INSTANCE.setPaymentCancelable(null);
                this.this$0.onDismissListener.onDismiss();
                this.this$0.dismiss();
                ApiClient apiClient = ApiClient.INSTANCE;
                PaymentIntent currentPaymentIntent = ShopActivity.INSTANCE.getCurrentPaymentIntent();
                Intrinsics.checkNotNull(currentPaymentIntent);
                String id = currentPaymentIntent.getId();
                Intrinsics.checkNotNull(id);
                apiClient.cancel_payment_intent$app_release(id, new retrofit2.Callback<ServerPaymentIntent>() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$cancelPaymentIntentCallback$2$1$onSuccess$1
                    @Override // retrofit2.Callback
                    public void onFailure(Call<ServerPaymentIntent> call, Throwable t) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(Call<ServerPaymentIntent> call, Response<ServerPaymentIntent> response) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        ShopActivity.INSTANCE.setCurrentPaymentIntent(null);
                    }
                });
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CardPaymentFragment$collectPaymentMethodCallback$2$1 getCollectPaymentMethodCallback() {
        return (CardPaymentFragment$collectPaymentMethodCallback$2$1) this.collectPaymentMethodCallback.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.example.digitalkiosk.fragments.CardPaymentFragment$collectPaymentMethodCallback$2$1] */
    public static final CardPaymentFragment$collectPaymentMethodCallback$2$1 collectPaymentMethodCallback_delegate$lambda$7(final CardPaymentFragment cardPaymentFragment) {
        return new PaymentIntentCallback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$collectPaymentMethodCallback$2$1
            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) throws IOException {
                Intrinsics.checkNotNullParameter(e, "e");
                this.this$0.paymentFailed("Unable to Collect Payment");
            }

            @Override // com.stripe.stripeterminal.external.callable.PaymentIntentCallback
            public void onSuccess(PaymentIntent paymentIntent) {
                Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
                this.this$0.removeCancellation();
                Terminal.confirmPaymentIntent$default(Terminal.INSTANCE.getInstance(), paymentIntent, this.this$0.getProcessPaymentCallback(), null, 4, null);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CardPaymentFragment$processPaymentCallback$2$1 getProcessPaymentCallback() {
        return (CardPaymentFragment$processPaymentCallback$2$1) this.processPaymentCallback.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.example.digitalkiosk.fragments.CardPaymentFragment$processPaymentCallback$2$1] */
    public static final CardPaymentFragment$processPaymentCallback$2$1 processPaymentCallback_delegate$lambda$8(final CardPaymentFragment cardPaymentFragment) {
        return new PaymentIntentCallback() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$processPaymentCallback$2$1
            @Override // com.stripe.stripeterminal.external.callable.ErrorCallback
            public void onFailure(TerminalException e) throws IOException {
                Intrinsics.checkNotNullParameter(e, "e");
                this.this$0.paymentFailed("Failed to Process the Payment");
            }

            @Override // com.stripe.stripeterminal.external.callable.PaymentIntentCallback
            public void onSuccess(PaymentIntent paymentIntent) {
                Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
                KioskSetting kioskSetting = OptionActivity.INSTANCE.getKioskSetting();
                if (kioskSetting != null) {
                    kioskSetting.getStripe_reader();
                }
                if (ShopActivity.INSTANCE.getVoucher() != null) {
                    Voucher voucher = ShopActivity.INSTANCE.getVoucher();
                    Integer numValueOf = voucher != null ? Integer.valueOf(voucher.getId()) : null;
                    Intrinsics.checkNotNull(numValueOf);
                    numValueOf.intValue();
                }
                if (this.this$0.getOrder_id() != null) {
                    ApiClient apiClient = ApiClient.INSTANCE;
                    String id = paymentIntent.getId();
                    Intrinsics.checkNotNull(id);
                    Integer order_id = this.this$0.getOrder_id();
                    Intrinsics.checkNotNull(order_id);
                    int iIntValue = order_id.intValue();
                    final CardPaymentFragment cardPaymentFragment2 = this.this$0;
                    apiClient.capture_order_payment_intent$app_release(id, iIntValue, new retrofit2.Callback<Order>() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // retrofit2.Callback
                        public void onResponse(Call<Order> p0, Response<Order> response) {
                            Intrinsics.checkNotNullParameter(p0, "p0");
                            Intrinsics.checkNotNullParameter(response, "response");
                            Object[] objArr = 0;
                            Object[] objArr2 = 0;
                            if (response.code() == 200 || response.code() == 201) {
                                Order orderBody = response.body();
                                Intrinsics.checkNotNull(orderBody);
                                Log.d("OrderTest", String.valueOf(response.body()));
                                SuccessOrderFragment successOrderFragment = new SuccessOrderFragment(orderBody, objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0);
                                successOrderFragment.setCancelable(false);
                                FragmentManager fragmentManager = cardPaymentFragment2.getFragmentManager();
                                if (fragmentManager != null) {
                                    successOrderFragment.show(fragmentManager, "Success Fragment");
                                    return;
                                }
                                return;
                            }
                            cardPaymentFragment2.dismiss();
                            ResponseBody responseBodyErrorBody = response.errorBody();
                            String strString = responseBodyErrorBody != null ? responseBodyErrorBody.string() : null;
                            Intrinsics.checkNotNull(strString);
                            Log.d("OrderTest", strString);
                        }

                        @Override // retrofit2.Callback
                        public void onFailure(Call<Order> p0, Throwable p1) throws IOException {
                            Intrinsics.checkNotNullParameter(p0, "p0");
                            Intrinsics.checkNotNullParameter(p1, "p1");
                            cardPaymentFragment2.paymentFailed("Payment Capture Failed");
                        }
                    });
                }
            }
        };
    }

    static /* synthetic */ void paymentFailed$default(CardPaymentFragment cardPaymentFragment, String str, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            str = null;
        }
        cardPaymentFragment.paymentFailed(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void paymentFailed(String message) throws IOException {
        ApiClient.INSTANCE.payment_failed$app_release(message);
        ShopActivity shopActivity = this.shopActivity;
        if (shopActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
            shopActivity = null;
        }
        shopActivity.runOnUiThread(new Runnable() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CardPaymentFragment.paymentFailed$lambda$11(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void paymentFailed$lambda$11(final CardPaymentFragment cardPaymentFragment) {
        CardPaymentBinding cardPaymentBinding = cardPaymentFragment.binding;
        CardPaymentBinding cardPaymentBinding2 = null;
        if (cardPaymentBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding = null;
        }
        cardPaymentBinding.processingLayout.setVisibility(8);
        CardPaymentBinding cardPaymentBinding3 = cardPaymentFragment.binding;
        if (cardPaymentBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding3 = null;
        }
        cardPaymentBinding3.failedLayout.setVisibility(0);
        CardPaymentBinding cardPaymentBinding4 = cardPaymentFragment.binding;
        if (cardPaymentBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding4 = null;
        }
        cardPaymentBinding4.setTimerCount(30);
        CardPaymentBinding cardPaymentBinding5 = cardPaymentFragment.binding;
        if (cardPaymentBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding5 = null;
        }
        cardPaymentBinding5.retry.setVisibility(0);
        CardPaymentBinding cardPaymentBinding6 = cardPaymentFragment.binding;
        if (cardPaymentBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding6 = null;
        }
        cardPaymentBinding6.backHome.setVisibility(8);
        CardPaymentBinding cardPaymentBinding7 = cardPaymentFragment.binding;
        if (cardPaymentBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding7 = null;
        }
        cardPaymentBinding7.counterTime.setVisibility(0);
        Translation translation = MainActivity.INSTANCE.get_term_translation("want_retry");
        if (translation != null) {
            CardPaymentBinding cardPaymentBinding8 = cardPaymentFragment.binding;
            if (cardPaymentBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding8 = null;
            }
            cardPaymentBinding8.errorMessage.setText(translation.getTranslation());
        } else {
            CardPaymentBinding cardPaymentBinding9 = cardPaymentFragment.binding;
            if (cardPaymentBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                cardPaymentBinding9 = null;
            }
            cardPaymentBinding9.errorMessage.setText("Payment FAILeD. Do you Want to Retry?");
        }
        CardPaymentBinding cardPaymentBinding10 = cardPaymentFragment.binding;
        if (cardPaymentBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding10 = null;
        }
        cardPaymentBinding10.paymentFailedLogo.setVisibility(8);
        CountDownTimer countDownTimer = new CountDownTimer() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$paymentFailed$1$1
            {
                super(30000L, 1000L);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long p0) {
                CardPaymentBinding cardPaymentBinding11 = this.this$0.binding;
                if (cardPaymentBinding11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    cardPaymentBinding11 = null;
                }
                cardPaymentBinding11.setTimerCount(Integer.valueOf((int) (p0 / ((long) 1000))));
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                CardPaymentBinding cardPaymentBinding11 = this.this$0.binding;
                if (cardPaymentBinding11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    cardPaymentBinding11 = null;
                }
                cardPaymentBinding11.retry.setVisibility(8);
                CardPaymentBinding cardPaymentBinding12 = this.this$0.binding;
                if (cardPaymentBinding12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    cardPaymentBinding12 = null;
                }
                cardPaymentBinding12.backHome.setVisibility(0);
                CardPaymentBinding cardPaymentBinding13 = this.this$0.binding;
                if (cardPaymentBinding13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    cardPaymentBinding13 = null;
                }
                cardPaymentBinding13.counterTime.setVisibility(8);
                Translation translation2 = MainActivity.INSTANCE.get_term_translation("payment_failed_unknown");
                if (translation2 != null) {
                    CardPaymentBinding cardPaymentBinding14 = this.this$0.binding;
                    if (cardPaymentBinding14 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        cardPaymentBinding14 = null;
                    }
                    cardPaymentBinding14.errorMessage.setText(translation2.getTranslation());
                } else {
                    CardPaymentBinding cardPaymentBinding15 = this.this$0.binding;
                    if (cardPaymentBinding15 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        cardPaymentBinding15 = null;
                    }
                    cardPaymentBinding15.errorMessage.setText("Payment FAILD DUE TO UNKNOWN Reason");
                }
                CardPaymentBinding cardPaymentBinding16 = this.this$0.binding;
                if (cardPaymentBinding16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    cardPaymentBinding16 = null;
                }
                cardPaymentBinding16.paymentFailedLogo.setVisibility(0);
                CardPaymentBinding cardPaymentBinding17 = this.this$0.binding;
                if (cardPaymentBinding17 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    cardPaymentBinding17 = null;
                }
                cardPaymentBinding17.retryNo.setOnClickListener(null);
                CardPaymentBinding cardPaymentBinding18 = this.this$0.binding;
                if (cardPaymentBinding18 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    cardPaymentBinding18 = null;
                }
                cardPaymentBinding18.retryYes.setOnClickListener(null);
            }
        };
        cardPaymentFragment.timer = countDownTimer;
        countDownTimer.start();
        CardPaymentBinding cardPaymentBinding11 = cardPaymentFragment.binding;
        if (cardPaymentBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            cardPaymentBinding11 = null;
        }
        cardPaymentBinding11.retryNo.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CardPaymentFragment.paymentFailed$lambda$11$lambda$9(this.f$0, view);
            }
        });
        CardPaymentBinding cardPaymentBinding12 = cardPaymentFragment.binding;
        if (cardPaymentBinding12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            cardPaymentBinding2 = cardPaymentBinding12;
        }
        cardPaymentBinding2.retryYes.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CardPaymentFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                CardPaymentFragment.paymentFailed$lambda$11$lambda$10(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void paymentFailed$lambda$11$lambda$9(CardPaymentFragment cardPaymentFragment, View view) {
        CountDownTimer countDownTimer = cardPaymentFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.start();
        }
        CountDownTimer countDownTimer2 = cardPaymentFragment.timer;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        cardPaymentFragment.onDismissListener.onDismiss();
        cardPaymentFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void paymentFailed$lambda$11$lambda$10(CardPaymentFragment cardPaymentFragment, View view) throws Exception {
        cardPaymentFragment.startPayment();
        CountDownTimer countDownTimer = cardPaymentFragment.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }
}
