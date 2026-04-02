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
import androidx.fragment.app.DialogFragment;
import com.example.digitalkiosk.HomeActivity;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.network.ApiClient;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: CancelOrderFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J&\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/example/digitalkiosk/fragments/CancelOrderFragment;", "Landroidx/fragment/app/DialogFragment;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Landroid/os/CountDownTimer;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CancelOrderFragment extends DialogFragment {
    private final CountDownTimer shoptimer;

    /* JADX WARN: Multi-variable type inference failed */
    public CancelOrderFragment() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CancelOrderFragment(CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : countDownTimer);
    }

    public CancelOrderFragment(CountDownTimer countDownTimer) {
        this.shoptimer = countDownTimer;
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
        View viewInflate = inflater.inflate(R.layout.cancel_order, container);
        Button button = (Button) viewInflate.findViewById(R.id.no_button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CancelOrderFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelOrderFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        Button button2 = (Button) viewInflate.findViewById(R.id.yes_button);
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CancelOrderFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CancelOrderFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        TextView textView = (TextView) viewInflate.findViewById(R.id.cancel_order_text);
        Translation translation = MainActivity.INSTANCE.get_term_translation("want_cancel_order");
        if (translation != null) {
            textView.setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("cancel_no");
        if (translation2 != null) {
            button.setText(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("cancel_yes");
        if (translation3 != null) {
            button2.setText(translation3.getTranslation());
        }
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(CancelOrderFragment cancelOrderFragment, View view) {
        CountDownTimer countDownTimer = cancelOrderFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = cancelOrderFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        cancelOrderFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(final CancelOrderFragment cancelOrderFragment, View view) {
        ApiClient.INSTANCE.empty_cart$app_release(OptionActivity.INSTANCE.getSelected_table(), new Callback<Void>() { // from class: com.example.digitalkiosk.fragments.CancelOrderFragment$onCreateView$3$1
            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                CountDownTimer countDownTimer = this.this$0.shoptimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                this.this$0.dismiss();
                OptionActivity.INSTANCE.setSelected_table(null);
                OptionActivity.INSTANCE.setSelected_time(null);
                OptionActivity.INSTANCE.setPhone_number(null);
                OptionActivity.INSTANCE.setOrder_type("");
                OptionActivity.INSTANCE.setHandicap_on(false);
                Intent intent = new Intent(this.this$0.getContext(), (Class<?>) HomeActivity.class);
                intent.addFlags(268468224);
                this.this$0.startActivity(intent);
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CountDownTimer countDownTimer = this.this$0.shoptimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                CountDownTimer countDownTimer2 = this.this$0.shoptimer;
                if (countDownTimer2 != null) {
                    countDownTimer2.start();
                }
            }
        });
    }
}
