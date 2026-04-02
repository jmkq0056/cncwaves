package com.example.digitalkiosk.fragments;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import com.example.digitalkiosk.databinding.CompleteOrderBinding;
import com.example.digitalkiosk.fragments.CardPaymentFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CompleteOrderFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1", "Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;", "onDismiss", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CompleteOrderFragment$processCardPayment$dialog$1 implements CardPaymentFragment.OnDismissListener {
    final /* synthetic */ boolean $singlePayment;
    final /* synthetic */ CompleteOrderFragment this$0;

    CompleteOrderFragment$processCardPayment$dialog$1(boolean z, CompleteOrderFragment completeOrderFragment) {
        this.$singlePayment = z;
        this.this$0 = completeOrderFragment;
    }

    @Override // com.example.digitalkiosk.fragments.CardPaymentFragment.OnDismissListener
    public void onDismiss() {
        CompleteOrderBinding completeOrderBinding = null;
        if (this.$singlePayment) {
            CompleteOrderBinding completeOrderBinding2 = this.this$0.binding;
            if (completeOrderBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                completeOrderBinding = completeOrderBinding2;
            }
            AppCompatButton appCompatButton = completeOrderBinding.confirmButton;
            final CompleteOrderFragment completeOrderFragment = this.this$0;
            appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$processCardPayment$dialog$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    completeOrderFragment.confirmOrder();
                }
            });
            return;
        }
        CompleteOrderBinding completeOrderBinding3 = this.this$0.binding;
        if (completeOrderBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            completeOrderBinding = completeOrderBinding3;
        }
        LinearLayout linearLayout = completeOrderBinding.cardPay;
        final CompleteOrderFragment completeOrderFragment2 = this.this$0;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$processCardPayment$dialog$1$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CompleteOrderFragment.processCardPayment$default(completeOrderFragment2, false, 1, null);
            }
        });
    }
}
