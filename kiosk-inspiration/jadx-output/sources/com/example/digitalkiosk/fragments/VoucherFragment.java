package com.example.digitalkiosk.fragments;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.AppCompatButton;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.databinding.VoucherBinding;
import com.example.digitalkiosk.fragments.VoucherFragment;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.models.Voucher;
import com.example.digitalkiosk.models.VoucherResponse;
import com.example.digitalkiosk.network.ApiClient;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.jna.platform.win32.WinError;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: VoucherFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0012H\u0002J\u0012\u0010\u0019\u001a\u00020\u000e2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0012H\u0016J\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/example/digitalkiosk/fragments/VoucherFragment;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Landroid/os/CountDownTimer;)V", "onVoucherApplied", "Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;", "binding", "Lcom/example/digitalkiosk/databinding/VoucherBinding;", "errorTimer", "Ljava/util/TimerTask;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "clickButton", "view", "onClick", "v", "setOnVoucherApplied", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "OnVoucherApplied", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VoucherFragment extends DialogFragment implements View.OnClickListener {
    private VoucherBinding binding;
    private TimerTask errorTimer;
    private OnVoucherApplied onVoucherApplied;
    private final CountDownTimer shoptimer;

    /* JADX INFO: compiled from: VoucherFragment.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;", "", "onApply", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnVoucherApplied {
        void onApply();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VoucherFragment() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ VoucherFragment(CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : countDownTimer);
    }

    public VoucherFragment(CountDownTimer countDownTimer) {
        this.shoptimer = countDownTimer;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
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
        VoucherBinding voucherBinding = null;
        VoucherBinding voucherBinding2 = (VoucherBinding) DataBindingUtil.inflate(inflater, com.example.digitalkiosk.R.layout.voucher, null, false);
        this.binding = voucherBinding2;
        if (voucherBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding2 = null;
        }
        voucherBinding2.setCapslock(false);
        VoucherBinding voucherBinding3 = this.binding;
        if (voucherBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding3 = null;
        }
        voucherBinding3.setVoucherApplied(false);
        VoucherBinding voucherBinding4 = this.binding;
        if (voucherBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding4 = null;
        }
        voucherBinding4.setCode("");
        if (ShopActivity.INSTANCE.getVoucher() != null) {
            VoucherBinding voucherBinding5 = this.binding;
            if (voucherBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding5 = null;
            }
            voucherBinding5.setVoucherApplied(true);
            VoucherBinding voucherBinding6 = this.binding;
            if (voucherBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding6 = null;
            }
            Voucher voucher = ShopActivity.INSTANCE.getVoucher();
            voucherBinding6.setCode(voucher != null ? voucher.getCode() : null);
        }
        VoucherBinding voucherBinding7 = this.binding;
        if (voucherBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding7 = null;
        }
        voucherBinding7.capslockButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoucherFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        VoucherBinding voucherBinding8 = this.binding;
        if (voucherBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding8 = null;
        }
        VoucherFragment voucherFragment = this;
        voucherBinding8.voucherKey1.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding9 = this.binding;
        if (voucherBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding9 = null;
        }
        voucherBinding9.voucherKey2.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding10 = this.binding;
        if (voucherBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding10 = null;
        }
        voucherBinding10.voucherKey3.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding11 = this.binding;
        if (voucherBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding11 = null;
        }
        voucherBinding11.voucherKey4.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding12 = this.binding;
        if (voucherBinding12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding12 = null;
        }
        voucherBinding12.voucherKey5.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding13 = this.binding;
        if (voucherBinding13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding13 = null;
        }
        voucherBinding13.voucherKey6.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding14 = this.binding;
        if (voucherBinding14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding14 = null;
        }
        voucherBinding14.voucherKey7.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding15 = this.binding;
        if (voucherBinding15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding15 = null;
        }
        voucherBinding15.voucherKey8.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding16 = this.binding;
        if (voucherBinding16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding16 = null;
        }
        voucherBinding16.voucherKey9.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding17 = this.binding;
        if (voucherBinding17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding17 = null;
        }
        voucherBinding17.voucherKey0.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding18 = this.binding;
        if (voucherBinding18 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding18 = null;
        }
        voucherBinding18.voucherKeyQ.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding19 = this.binding;
        if (voucherBinding19 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding19 = null;
        }
        voucherBinding19.voucherKeyW.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding20 = this.binding;
        if (voucherBinding20 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding20 = null;
        }
        voucherBinding20.voucherKeyE.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding21 = this.binding;
        if (voucherBinding21 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding21 = null;
        }
        voucherBinding21.voucherKeyR.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding22 = this.binding;
        if (voucherBinding22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding22 = null;
        }
        voucherBinding22.voucherKeyT.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding23 = this.binding;
        if (voucherBinding23 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding23 = null;
        }
        voucherBinding23.voucherKeyY.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding24 = this.binding;
        if (voucherBinding24 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding24 = null;
        }
        voucherBinding24.voucherKeyU.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding25 = this.binding;
        if (voucherBinding25 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding25 = null;
        }
        voucherBinding25.voucherKeyI.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding26 = this.binding;
        if (voucherBinding26 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding26 = null;
        }
        voucherBinding26.voucherKeyO.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding27 = this.binding;
        if (voucherBinding27 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding27 = null;
        }
        voucherBinding27.voucherKeyP.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding28 = this.binding;
        if (voucherBinding28 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding28 = null;
        }
        voucherBinding28.voucherKeyA.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding29 = this.binding;
        if (voucherBinding29 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding29 = null;
        }
        voucherBinding29.voucherKeyS.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding30 = this.binding;
        if (voucherBinding30 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding30 = null;
        }
        voucherBinding30.voucherKeyD.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding31 = this.binding;
        if (voucherBinding31 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding31 = null;
        }
        voucherBinding31.voucherKeyF.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding32 = this.binding;
        if (voucherBinding32 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding32 = null;
        }
        voucherBinding32.voucherKeyG.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding33 = this.binding;
        if (voucherBinding33 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding33 = null;
        }
        voucherBinding33.voucherKeyH.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding34 = this.binding;
        if (voucherBinding34 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding34 = null;
        }
        voucherBinding34.voucherKeyJ.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding35 = this.binding;
        if (voucherBinding35 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding35 = null;
        }
        voucherBinding35.voucherKeyK.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding36 = this.binding;
        if (voucherBinding36 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding36 = null;
        }
        voucherBinding36.voucherKeyL.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding37 = this.binding;
        if (voucherBinding37 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding37 = null;
        }
        voucherBinding37.voucherKeyZ.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding38 = this.binding;
        if (voucherBinding38 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding38 = null;
        }
        voucherBinding38.voucherKeyX.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding39 = this.binding;
        if (voucherBinding39 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding39 = null;
        }
        voucherBinding39.voucherKeyC.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding40 = this.binding;
        if (voucherBinding40 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding40 = null;
        }
        voucherBinding40.voucherKeyV.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding41 = this.binding;
        if (voucherBinding41 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding41 = null;
        }
        voucherBinding41.voucherKeyB.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding42 = this.binding;
        if (voucherBinding42 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding42 = null;
        }
        voucherBinding42.voucherKeyN.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding43 = this.binding;
        if (voucherBinding43 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding43 = null;
        }
        voucherBinding43.voucherKeyM.setOnClickListener(voucherFragment);
        VoucherBinding voucherBinding44 = this.binding;
        if (voucherBinding44 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding44 = null;
        }
        voucherBinding44.backspaceButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoucherFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        VoucherBinding voucherBinding45 = this.binding;
        if (voucherBinding45 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding45 = null;
        }
        voucherBinding45.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoucherFragment.onCreateView$lambda$3(this.f$0, view);
            }
        });
        VoucherBinding voucherBinding46 = this.binding;
        if (voucherBinding46 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding46 = null;
        }
        voucherBinding46.continueButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoucherFragment.onCreateView$lambda$4(this.f$0, view);
            }
        });
        VoucherBinding voucherBinding47 = this.binding;
        if (voucherBinding47 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding47 = null;
        }
        voucherBinding47.applyButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoucherFragment.onCreateView$lambda$5(this.f$0, view);
            }
        });
        VoucherBinding voucherBinding48 = this.binding;
        if (voucherBinding48 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding48 = null;
        }
        voucherBinding48.removeCoupon.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoucherFragment.onCreateView$lambda$6(this.f$0, view);
            }
        });
        Translation translation = MainActivity.INSTANCE.get_term_translation("enter_voucher_code");
        if (translation != null) {
            VoucherBinding voucherBinding49 = this.binding;
            if (voucherBinding49 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding49 = null;
            }
            voucherBinding49.voucherCodeText.setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("coupon_applied");
        if (translation2 != null) {
            VoucherBinding voucherBinding50 = this.binding;
            if (voucherBinding50 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding50 = null;
            }
            voucherBinding50.couponAppliedText.setText(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("remove_coupon");
        if (translation3 != null) {
            VoucherBinding voucherBinding51 = this.binding;
            if (voucherBinding51 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding51 = null;
            }
            voucherBinding51.removeCoupon.setText(translation3.getTranslation());
        }
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("invalid_coupon");
        if (translation4 != null) {
            VoucherBinding voucherBinding52 = this.binding;
            if (voucherBinding52 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding52 = null;
            }
            voucherBinding52.warningSelect.setText(translation4.getTranslation());
        }
        Translation translation5 = MainActivity.INSTANCE.get_term_translation("voucher_close");
        if (translation5 != null) {
            VoucherBinding voucherBinding53 = this.binding;
            if (voucherBinding53 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding53 = null;
            }
            voucherBinding53.cancelButton.setText(translation5.getTranslation());
        }
        Translation translation6 = MainActivity.INSTANCE.get_term_translation("voucher_apply");
        if (translation6 != null) {
            VoucherBinding voucherBinding54 = this.binding;
            if (voucherBinding54 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding54 = null;
            }
            voucherBinding54.applyButton.setText(translation6.getTranslation());
        }
        Translation translation7 = MainActivity.INSTANCE.get_term_translation("voucher_continue_shopping");
        if (translation7 != null) {
            VoucherBinding voucherBinding55 = this.binding;
            if (voucherBinding55 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                voucherBinding55 = null;
            }
            voucherBinding55.continueButton.setText(translation7.getTranslation());
        }
        VoucherBinding voucherBinding56 = this.binding;
        if (voucherBinding56 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            voucherBinding = voucherBinding56;
        }
        return voucherBinding.getRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(VoucherFragment voucherFragment, View view) {
        CountDownTimer countDownTimer = voucherFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = voucherFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        VoucherBinding voucherBinding = voucherFragment.binding;
        VoucherBinding voucherBinding2 = null;
        if (voucherBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding = null;
        }
        VoucherBinding voucherBinding3 = voucherFragment.binding;
        if (voucherBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            voucherBinding2 = voucherBinding3;
        }
        Intrinsics.checkNotNull(voucherBinding2.getCapslock());
        voucherBinding.setCapslock(Boolean.valueOf(!r2.booleanValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(VoucherFragment voucherFragment, View view) {
        CountDownTimer countDownTimer = voucherFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = voucherFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        VoucherBinding voucherBinding = voucherFragment.binding;
        VoucherBinding voucherBinding2 = null;
        if (voucherBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding = null;
        }
        VoucherBinding voucherBinding3 = voucherFragment.binding;
        if (voucherBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            voucherBinding2 = voucherBinding3;
        }
        String code = voucherBinding2.getCode();
        Intrinsics.checkNotNull(code);
        voucherBinding.setCode(StringsKt.dropLast(code, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3(VoucherFragment voucherFragment, View view) {
        CountDownTimer countDownTimer = voucherFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = voucherFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        voucherFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$4(VoucherFragment voucherFragment, View view) {
        CountDownTimer countDownTimer = voucherFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = voucherFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        voucherFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$5(final VoucherFragment voucherFragment, View view) {
        CountDownTimer countDownTimer = voucherFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = voucherFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        ApiClient apiClient = ApiClient.INSTANCE;
        VoucherBinding voucherBinding = voucherFragment.binding;
        if (voucherBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding = null;
        }
        String code = voucherBinding.getCode();
        Intrinsics.checkNotNull(code);
        apiClient.verify_voucher$app_release(code, new Callback<VoucherResponse>() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$onCreateView$6$1
            @Override // retrofit2.Callback
            public void onFailure(Call<VoucherResponse> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<VoucherResponse> call, Response<VoucherResponse> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                VoucherResponse voucherResponseBody = response.body();
                Intrinsics.checkNotNull(voucherResponseBody);
                VoucherResponse voucherResponse = voucherResponseBody;
                VoucherBinding voucherBinding2 = null;
                if (Intrinsics.areEqual(voucherResponse.getStatus(), FirebaseAnalytics.Param.SUCCESS)) {
                    ShopActivity.INSTANCE.setVoucher(voucherResponse.getVoucher());
                    VoucherBinding voucherBinding3 = this.this$0.binding;
                    if (voucherBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        voucherBinding2 = voucherBinding3;
                    }
                    voucherBinding2.setVoucherApplied(true);
                    if (this.this$0.onVoucherApplied != null) {
                        VoucherFragment.OnVoucherApplied onVoucherApplied = this.this$0.onVoucherApplied;
                        Intrinsics.checkNotNull(onVoucherApplied);
                        onVoucherApplied.onApply();
                        return;
                    }
                    return;
                }
                if (Intrinsics.areEqual(voucherResponse.getStatus(), "error")) {
                    TimerTask timerTask = this.this$0.errorTimer;
                    if (timerTask != null) {
                        timerTask.cancel();
                    }
                    VoucherBinding voucherBinding4 = this.this$0.binding;
                    if (voucherBinding4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        voucherBinding2 = voucherBinding4;
                    }
                    voucherBinding2.voucherWarning.animate().translationX(-30.0f);
                    VoucherFragment voucherFragment2 = this.this$0;
                    Timer timer = new Timer();
                    final VoucherFragment voucherFragment3 = this.this$0;
                    TimerTask timerTask2 = new TimerTask() { // from class: com.example.digitalkiosk.fragments.VoucherFragment$onCreateView$6$1$onResponse$$inlined$schedule$1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            VoucherBinding voucherBinding5 = voucherFragment3.binding;
                            if (voucherBinding5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                voucherBinding5 = null;
                            }
                            voucherBinding5.voucherWarning.animate().translationX(400.0f);
                        }
                    };
                    timer.schedule(timerTask2, 3000L);
                    voucherFragment2.errorTimer = timerTask2;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$6(VoucherFragment voucherFragment, View view) {
        VoucherBinding voucherBinding = null;
        ShopActivity.INSTANCE.setVoucher(null);
        VoucherBinding voucherBinding2 = voucherFragment.binding;
        if (voucherBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding2 = null;
        }
        voucherBinding2.setCode("");
        VoucherBinding voucherBinding3 = voucherFragment.binding;
        if (voucherBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            voucherBinding = voucherBinding3;
        }
        voucherBinding.setVoucherApplied(false);
        OnVoucherApplied onVoucherApplied = voucherFragment.onVoucherApplied;
        if (onVoucherApplied != null) {
            Intrinsics.checkNotNull(onVoucherApplied);
            onVoucherApplied.onApply();
        }
    }

    private final void clickButton(View view) {
        CountDownTimer countDownTimer = this.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type androidx.appcompat.widget.AppCompatButton");
        AppCompatButton appCompatButton = (AppCompatButton) view;
        VoucherBinding voucherBinding = this.binding;
        if (voucherBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            voucherBinding = null;
        }
        voucherBinding.setCode(voucherBinding.getCode() + ((Object) appCompatButton.getText()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        Intrinsics.checkNotNull(v);
        clickButton(v);
    }

    public final void setOnVoucherApplied(OnVoucherApplied listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onVoucherApplied = listener;
    }
}
