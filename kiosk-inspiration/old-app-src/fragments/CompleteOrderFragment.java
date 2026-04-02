package com.example.digitalkiosk.fragments;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.app.NotificationCompat;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.example.digitalkiosk.HomeActivity;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.OrderAdapter;
import com.example.digitalkiosk.databinding.CompleteOrderBinding;
import com.example.digitalkiosk.models.Cart;
import com.example.digitalkiosk.models.CartItem;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Order;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.models.Voucher;
import com.example.digitalkiosk.network.ApiClient;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: CompleteOrderFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0006\u0010\u001b\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u0010\u0010\u001d\u001a\u00020\u00122\b\b\u0002\u0010\u001e\u001a\u00020\u0010J\u0010\u0010\u001f\u001a\u00020\u00122\b\b\u0002\u0010\u001e\u001a\u00020\u0010R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;", "Landroidx/fragment/app/DialogFragment;", "shoptimer", "Landroid/os/CountDownTimer;", "paymentTimer", "<init>", "(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;)V", "binding", "Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;", "orderItems", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/CartItem;", "Lkotlin/collections/ArrayList;", "orderAdapter", "Lcom/example/digitalkiosk/adapters/OrderAdapter;", "freeOrder", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "confirmOrder", "processFreeOrder", "processCashPayment", "singlePayment", "processCardPayment", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CompleteOrderFragment extends DialogFragment {
    private CompleteOrderBinding binding;
    private boolean freeOrder;
    private OrderAdapter orderAdapter;
    private final ArrayList<CartItem> orderItems;
    private final CountDownTimer paymentTimer;
    private final CountDownTimer shoptimer;

    /* JADX WARN: Multi-variable type inference failed */
    public CompleteOrderFragment() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CompleteOrderFragment(CountDownTimer countDownTimer, CountDownTimer countDownTimer2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : countDownTimer, (i & 2) != 0 ? null : countDownTimer2);
    }

    public CompleteOrderFragment(CountDownTimer countDownTimer, CountDownTimer countDownTimer2) {
        this.shoptimer = countDownTimer;
        this.paymentTimer = countDownTimer2;
        this.orderItems = new ArrayList<>();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        KioskSetting kioskSetting;
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
        final ShopActivity shopActivity = (ShopActivity) context;
        ShopActivity shopActivity2 = shopActivity;
        this.orderAdapter = new OrderAdapter(this.orderItems, shopActivity2);
        CompleteOrderBinding completeOrderBinding = null;
        int iIntValue = 0;
        this.binding = (CompleteOrderBinding) DataBindingUtil.inflate(inflater, com.example.digitalkiosk.R.layout.complete_order, null, false);
        if (ShopActivity.INSTANCE.getBag_active() && ((kioskSetting = OptionActivity.INSTANCE.getKioskSetting()) == null || !kioskSetting.getBag_force())) {
            CompleteOrderBinding completeOrderBinding2 = this.binding;
            if (completeOrderBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding2 = null;
            }
            completeOrderBinding2.bag.setVisibility(0);
        }
        CompleteOrderBinding completeOrderBinding3 = this.binding;
        if (completeOrderBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding3 = null;
        }
        completeOrderBinding3.setKiosksetting(OptionActivity.INSTANCE.getKioskSetting());
        CompleteOrderBinding completeOrderBinding4 = this.binding;
        if (completeOrderBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding4 = null;
        }
        completeOrderBinding4.setTitle("Send Your Order");
        final Translation translation = MainActivity.INSTANCE.get_term_translation("send_order");
        if (translation != null) {
            CompleteOrderBinding completeOrderBinding5 = this.binding;
            if (completeOrderBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding5 = null;
            }
            completeOrderBinding5.setTitle(translation.getTranslation());
        }
        CompleteOrderBinding completeOrderBinding6 = this.binding;
        if (completeOrderBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding6 = null;
        }
        completeOrderBinding6.setSubtitle("Total to Pay:");
        final Translation translation2 = MainActivity.INSTANCE.get_term_translation("total_to_pay");
        if (translation2 != null) {
            CompleteOrderBinding completeOrderBinding7 = this.binding;
            if (completeOrderBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding7 = null;
            }
            completeOrderBinding7.setSubtitle(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("need_bag");
        if (translation3 != null) {
            CompleteOrderBinding completeOrderBinding8 = this.binding;
            if (completeOrderBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding8 = null;
            }
            completeOrderBinding8.needBag.setText(translation3.getTranslation());
        }
        CompleteOrderBinding completeOrderBinding9 = this.binding;
        if (completeOrderBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding9 = null;
        }
        completeOrderBinding9.orderItems.setAdapter(this.orderAdapter);
        CompleteOrderBinding completeOrderBinding10 = this.binding;
        if (completeOrderBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding10 = null;
        }
        completeOrderBinding10.orderItems.setLayoutManager(new LinearLayoutManager(shopActivity2));
        if (ShopActivity.INSTANCE.getBag_added() == 1) {
            CompleteOrderBinding completeOrderBinding11 = this.binding;
            if (completeOrderBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding11 = null;
            }
            completeOrderBinding11.bagYes.setChecked(true);
        } else {
            CompleteOrderBinding completeOrderBinding12 = this.binding;
            if (completeOrderBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding12 = null;
            }
            completeOrderBinding12.bagNo.setChecked(true);
        }
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("yes_order");
        if (translation4 != null) {
            CompleteOrderBinding completeOrderBinding13 = this.binding;
            if (completeOrderBinding13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding13 = null;
            }
            completeOrderBinding13.bagYes.setText(translation4.getTranslation());
        }
        Translation translation5 = MainActivity.INSTANCE.get_term_translation("no_order");
        if (translation5 != null) {
            CompleteOrderBinding completeOrderBinding14 = this.binding;
            if (completeOrderBinding14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding14 = null;
            }
            completeOrderBinding14.bagNo.setText(translation5.getTranslation());
        }
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            CompleteOrderBinding completeOrderBinding15 = this.binding;
            if (completeOrderBinding15 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding15 = null;
            }
            completeOrderBinding15.appLogo.setVisibility(0);
            CompleteOrderBinding completeOrderBinding16 = this.binding;
            if (completeOrderBinding16 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding16 = null;
            }
            completeOrderBinding16.paymentsWrap.setOrientation(0);
            CompleteOrderBinding completeOrderBinding17 = this.binding;
            if (completeOrderBinding17 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding17 = null;
            }
            ViewGroup.LayoutParams layoutParams = completeOrderBinding17.cashWrap.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 30;
            CompleteOrderBinding completeOrderBinding18 = this.binding;
            if (completeOrderBinding18 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding18 = null;
            }
            completeOrderBinding18.cashWrap.setLayoutParams(marginLayoutParams);
        }
        if (ShopActivity.INSTANCE.getVoucher() != null) {
            Voucher voucher = ShopActivity.INSTANCE.getVoucher();
            Integer numValueOf = voucher != null ? Integer.valueOf(voucher.getId()) : null;
            Intrinsics.checkNotNull(numValueOf);
            iIntValue = numValueOf.intValue();
        }
        ApiClient.INSTANCE.get_cart$app_release(ShopActivity.INSTANCE.getBag_added(), iIntValue, HomeActivity.INSTANCE.getSelected_language(), new Callback<Cart>() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment.onCreateView.2
            @Override // retrofit2.Callback
            public void onFailure(Call<Cart> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Cart> call, Response<Cart> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                Cart cartBody = response.body();
                Intrinsics.checkNotNull(cartBody);
                Cart cart = cartBody;
                CompleteOrderBinding completeOrderBinding19 = CompleteOrderFragment.this.binding;
                CompleteOrderBinding completeOrderBinding20 = null;
                if (completeOrderBinding19 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    completeOrderBinding19 = null;
                }
                completeOrderBinding19.toPay.setText(shopActivity.convertAmountToFormat(cart.getTotal()));
                if (cart.getTotal() > 0.0f) {
                    CompleteOrderBinding completeOrderBinding21 = CompleteOrderFragment.this.binding;
                    if (completeOrderBinding21 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        completeOrderBinding20 = completeOrderBinding21;
                    }
                    completeOrderBinding20.toPay.setVisibility(0);
                }
                CompleteOrderFragment.this.freeOrder = cart.getTotal() == 0.0f;
                CompleteOrderFragment.this.orderItems.clear();
                CompleteOrderFragment.this.orderItems.addAll(cart.getItems());
                OrderAdapter orderAdapter = CompleteOrderFragment.this.orderAdapter;
                if (orderAdapter != null) {
                    orderAdapter.notifyDataSetChanged();
                }
            }
        });
        CompleteOrderBinding completeOrderBinding19 = this.binding;
        if (completeOrderBinding19 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding19 = null;
        }
        completeOrderBinding19.bagOrdering.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$$ExternalSyntheticLambda0
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                CompleteOrderFragment.onCreateView$lambda$1(this.f$0, shopActivity, radioGroup, i);
            }
        });
        CompleteOrderBinding completeOrderBinding20 = this.binding;
        if (completeOrderBinding20 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding20 = null;
        }
        completeOrderBinding20.setTab(1);
        CompleteOrderBinding completeOrderBinding21 = this.binding;
        if (completeOrderBinding21 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding21 = null;
        }
        completeOrderBinding21.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CompleteOrderFragment.onCreateView$lambda$2(this.f$0, translation, translation2, view);
            }
        });
        CompleteOrderBinding completeOrderBinding22 = this.binding;
        if (completeOrderBinding22 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding22 = null;
        }
        completeOrderBinding22.confirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CompleteOrderFragment.onCreateView$lambda$3(this.f$0, view);
            }
        });
        Translation translation6 = MainActivity.INSTANCE.get_term_translation("confirm_order");
        if (translation6 != null) {
            CompleteOrderBinding completeOrderBinding23 = this.binding;
            if (completeOrderBinding23 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding23 = null;
            }
            completeOrderBinding23.confirmButton.setText(translation6.getTranslation());
        }
        Translation translation7 = MainActivity.INSTANCE.get_term_translation("back_order");
        if (translation7 != null) {
            CompleteOrderBinding completeOrderBinding24 = this.binding;
            if (completeOrderBinding24 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding24 = null;
            }
            completeOrderBinding24.backButton.setText(translation7.getTranslation());
        }
        CompleteOrderBinding completeOrderBinding25 = this.binding;
        if (completeOrderBinding25 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding25 = null;
        }
        completeOrderBinding25.cashpay.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CompleteOrderFragment.processCashPayment$default(this.f$0, false, 1, null);
            }
        });
        CompleteOrderBinding completeOrderBinding26 = this.binding;
        if (completeOrderBinding26 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding26 = null;
        }
        completeOrderBinding26.cardPay.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CompleteOrderFragment.processCardPayment$default(this.f$0, false, 1, null);
            }
        });
        CompleteOrderBinding completeOrderBinding27 = this.binding;
        if (completeOrderBinding27 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            completeOrderBinding = completeOrderBinding27;
        }
        return completeOrderBinding.getRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(final CompleteOrderFragment completeOrderFragment, final ShopActivity shopActivity, RadioGroup radioGroup, int i) {
        CountDownTimer countDownTimer = completeOrderFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = completeOrderFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        int iIntValue = 0;
        ShopActivity.INSTANCE.setBag_added(0);
        if (i == com.example.digitalkiosk.R.id.bag_yes) {
            ShopActivity.INSTANCE.setBag_added(1);
        }
        if (ShopActivity.INSTANCE.getVoucher() != null) {
            Voucher voucher = ShopActivity.INSTANCE.getVoucher();
            Integer numValueOf = voucher != null ? Integer.valueOf(voucher.getId()) : null;
            Intrinsics.checkNotNull(numValueOf);
            iIntValue = numValueOf.intValue();
        }
        ApiClient.INSTANCE.get_cart$app_release(ShopActivity.INSTANCE.getBag_added(), iIntValue, HomeActivity.INSTANCE.getSelected_language(), new Callback<Cart>() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$onCreateView$3$1
            @Override // retrofit2.Callback
            public void onFailure(Call<Cart> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Cart> call, Response<Cart> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                Cart cartBody = response.body();
                Intrinsics.checkNotNull(cartBody);
                Cart cart = cartBody;
                CompleteOrderBinding completeOrderBinding = this.this$0.binding;
                CompleteOrderBinding completeOrderBinding2 = null;
                if (completeOrderBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    completeOrderBinding = null;
                }
                completeOrderBinding.toPay.setText(shopActivity.convertAmountToFormat(cart.getTotal()));
                if (cart.getTotal() > 0.0f) {
                    CompleteOrderBinding completeOrderBinding3 = this.this$0.binding;
                    if (completeOrderBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        completeOrderBinding2 = completeOrderBinding3;
                    }
                    completeOrderBinding2.toPay.setVisibility(0);
                }
                this.this$0.freeOrder = cart.getTotal() == 0.0f;
                this.this$0.orderItems.clear();
                this.this$0.orderItems.addAll(cart.getItems());
                OrderAdapter orderAdapter = this.this$0.orderAdapter;
                if (orderAdapter != null) {
                    orderAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(CompleteOrderFragment completeOrderFragment, Translation translation, Translation translation2, View view) {
        CountDownTimer countDownTimer = completeOrderFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = completeOrderFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        CompleteOrderBinding completeOrderBinding = completeOrderFragment.binding;
        CompleteOrderBinding completeOrderBinding2 = null;
        if (completeOrderBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding = null;
        }
        Integer tab = completeOrderBinding.getTab();
        if (tab != null && tab.intValue() == 1) {
            completeOrderFragment.dismiss();
            return;
        }
        CompleteOrderBinding completeOrderBinding3 = completeOrderFragment.binding;
        if (completeOrderBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding3 = null;
        }
        completeOrderBinding3.setTab(1);
        if (translation != null) {
            CompleteOrderBinding completeOrderBinding4 = completeOrderFragment.binding;
            if (completeOrderBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding4 = null;
            }
            completeOrderBinding4.setTitle(translation.getTranslation());
        } else {
            CompleteOrderBinding completeOrderBinding5 = completeOrderFragment.binding;
            if (completeOrderBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding5 = null;
            }
            completeOrderBinding5.setTitle("Send Your Order");
        }
        if (translation2 != null) {
            CompleteOrderBinding completeOrderBinding6 = completeOrderFragment.binding;
            if (completeOrderBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                completeOrderBinding2 = completeOrderBinding6;
            }
            completeOrderBinding2.setSubtitle(translation2.getTranslation());
            return;
        }
        CompleteOrderBinding completeOrderBinding7 = completeOrderFragment.binding;
        if (completeOrderBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            completeOrderBinding2 = completeOrderBinding7;
        }
        completeOrderBinding2.setSubtitle("Total to Pay:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3(CompleteOrderFragment completeOrderFragment, View view) {
        if (completeOrderFragment.freeOrder) {
            completeOrderFragment.processFreeOrder();
        } else {
            completeOrderFragment.confirmOrder();
        }
    }

    public final void confirmOrder() {
        KioskSetting kioskSetting;
        KioskSetting kioskSetting2 = OptionActivity.INSTANCE.getKioskSetting();
        int i = (kioskSetting2 == null || !kioskSetting2.getCash_enabled()) ? 0 : 1;
        KioskSetting kioskSetting3 = OptionActivity.INSTANCE.getKioskSetting();
        if (kioskSetting3 != null && kioskSetting3.getCard_enabled()) {
            i++;
        }
        CountDownTimer countDownTimer = this.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        CompleteOrderBinding completeOrderBinding = null;
        if (i == 1 && (kioskSetting = OptionActivity.INSTANCE.getKioskSetting()) != null && kioskSetting.getDirect_payment_enabled()) {
            CompleteOrderBinding completeOrderBinding2 = this.binding;
            if (completeOrderBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding2 = null;
            }
            completeOrderBinding2.confirmButton.setOnClickListener(null);
            KioskSetting kioskSetting4 = OptionActivity.INSTANCE.getKioskSetting();
            if (kioskSetting4 != null && kioskSetting4.getCash_enabled()) {
                processCashPayment(i == 1);
                return;
            }
            KioskSetting kioskSetting5 = OptionActivity.INSTANCE.getKioskSetting();
            if (kioskSetting5 == null || !kioskSetting5.getCard_enabled()) {
                return;
            }
            processCardPayment(i == 1);
            return;
        }
        CompleteOrderBinding completeOrderBinding3 = this.binding;
        if (completeOrderBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding3 = null;
        }
        completeOrderBinding3.setTab(2);
        Translation translation = MainActivity.INSTANCE.get_term_translation("payment_method");
        if (translation != null) {
            CompleteOrderBinding completeOrderBinding4 = this.binding;
            if (completeOrderBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding4 = null;
            }
            completeOrderBinding4.setTitle(translation.getTranslation());
        } else {
            CompleteOrderBinding completeOrderBinding5 = this.binding;
            if (completeOrderBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding5 = null;
            }
            completeOrderBinding5.setTitle("Payment Method");
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("select_one");
        if (translation2 != null) {
            CompleteOrderBinding completeOrderBinding6 = this.binding;
            if (completeOrderBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                completeOrderBinding = completeOrderBinding6;
            }
            completeOrderBinding.setSubtitle(translation2.getTranslation());
            return;
        }
        CompleteOrderBinding completeOrderBinding7 = this.binding;
        if (completeOrderBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            completeOrderBinding = completeOrderBinding7;
        }
        completeOrderBinding.setSubtitle("Select one of them");
    }

    public final void processFreeOrder() {
        CompleteOrderBinding completeOrderBinding = this.binding;
        if (completeOrderBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding = null;
        }
        Integer tab = completeOrderBinding.getTab();
        CompleteOrderBinding completeOrderBinding2 = this.binding;
        if (completeOrderBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding2 = null;
        }
        int iIntValue = 0;
        completeOrderBinding2.setTab(0);
        CompleteOrderBinding completeOrderBinding3 = this.binding;
        if (completeOrderBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding3 = null;
        }
        completeOrderBinding3.confirmButton.setOnClickListener(null);
        CountDownTimer countDownTimer = this.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        if (ShopActivity.INSTANCE.getVoucher() != null) {
            Voucher voucher = ShopActivity.INSTANCE.getVoucher();
            Integer numValueOf = voucher != null ? Integer.valueOf(voucher.getId()) : null;
            Intrinsics.checkNotNull(numValueOf);
            iIntValue = numValueOf.intValue();
        }
        ApiClient.INSTANCE.create_order$app_release(OptionActivity.INSTANCE.getOrder_type(), OptionActivity.INSTANCE.getSelected_table(), OptionActivity.INSTANCE.getSelected_time(), OptionActivity.INSTANCE.getPhone_number(), "cash", Integer.valueOf(ShopActivity.INSTANCE.getBag_added()), Integer.valueOf(iIntValue), TlbConst.TYPELIB_MINOR_VERSION_SHELL, new C01351(tab));
    }

    /* JADX INFO: renamed from: com.example.digitalkiosk.fragments.CompleteOrderFragment$processFreeOrder$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CompleteOrderFragment.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0016J\u001e\u0010\t\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"com/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1", "Lretrofit2/Callback;", "Lcom/example/digitalkiosk/models/Order;", "onResponse", "", NotificationCompat.CATEGORY_CALL, "Lretrofit2/Call;", "response", "Lretrofit2/Response;", "onFailure", "t", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class C01351 implements Callback<Order> {
        final /* synthetic */ Integer $originalTab;

        C01351(Integer num) {
            this.$originalTab = num;
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<Order> call, Response<Order> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            Order orderBody = response.body();
            Intrinsics.checkNotNull(orderBody);
            SuccessOrderFragment successOrderFragment = new SuccessOrderFragment(orderBody, CompleteOrderFragment.this.shoptimer);
            successOrderFragment.setCancelable(false);
            FragmentManager fragmentManager = CompleteOrderFragment.this.getFragmentManager();
            if (fragmentManager != null) {
                successOrderFragment.show(fragmentManager, "Success Fragment");
            }
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<Order> call, Throwable t) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t, "t");
            CompleteOrderBinding completeOrderBinding = CompleteOrderFragment.this.binding;
            CompleteOrderBinding completeOrderBinding2 = null;
            if (completeOrderBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding = null;
            }
            completeOrderBinding.setTab(this.$originalTab);
            CompleteOrderBinding completeOrderBinding3 = CompleteOrderFragment.this.binding;
            if (completeOrderBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                completeOrderBinding2 = completeOrderBinding3;
            }
            AppCompatButton appCompatButton = completeOrderBinding2.confirmButton;
            final CompleteOrderFragment completeOrderFragment = CompleteOrderFragment.this;
            appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$processFreeOrder$1$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    completeOrderFragment.processFreeOrder();
                }
            });
        }
    }

    public static /* synthetic */ void processCashPayment$default(CompleteOrderFragment completeOrderFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        completeOrderFragment.processCashPayment(z);
    }

    public final void processCashPayment(boolean singlePayment) {
        CompleteOrderBinding completeOrderBinding = this.binding;
        if (completeOrderBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding = null;
        }
        Integer tab = completeOrderBinding.getTab();
        CompleteOrderBinding completeOrderBinding2 = this.binding;
        if (completeOrderBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding2 = null;
        }
        int iIntValue = 0;
        completeOrderBinding2.setTab(0);
        CompleteOrderBinding completeOrderBinding3 = this.binding;
        if (completeOrderBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding3 = null;
        }
        completeOrderBinding3.cashpay.setOnClickListener(null);
        CountDownTimer countDownTimer = this.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        if (ShopActivity.INSTANCE.getVoucher() != null) {
            Voucher voucher = ShopActivity.INSTANCE.getVoucher();
            Integer numValueOf = voucher != null ? Integer.valueOf(voucher.getId()) : null;
            Intrinsics.checkNotNull(numValueOf);
            iIntValue = numValueOf.intValue();
        }
        ApiClient.INSTANCE.create_order$app_release(OptionActivity.INSTANCE.getOrder_type(), OptionActivity.INSTANCE.getSelected_table(), OptionActivity.INSTANCE.getSelected_time(), OptionActivity.INSTANCE.getPhone_number(), "cash", Integer.valueOf(ShopActivity.INSTANCE.getBag_added()), Integer.valueOf(iIntValue), "1", new AnonymousClass1(tab, singlePayment));
    }

    /* JADX INFO: renamed from: com.example.digitalkiosk.fragments.CompleteOrderFragment$processCashPayment$1, reason: invalid class name */
    /* JADX INFO: compiled from: CompleteOrderFragment.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0016J\u001e\u0010\t\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, d2 = {"com/example/digitalkiosk/fragments/CompleteOrderFragment$processCashPayment$1", "Lretrofit2/Callback;", "Lcom/example/digitalkiosk/models/Order;", "onResponse", "", NotificationCompat.CATEGORY_CALL, "Lretrofit2/Call;", "response", "Lretrofit2/Response;", "onFailure", "t", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass1 implements Callback<Order> {
        final /* synthetic */ Integer $originalTab;
        final /* synthetic */ boolean $singlePayment;

        AnonymousClass1(Integer num, boolean z) {
            this.$originalTab = num;
            this.$singlePayment = z;
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<Order> call, Response<Order> response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            Order orderBody = response.body();
            Intrinsics.checkNotNull(orderBody);
            SuccessOrderFragment successOrderFragment = new SuccessOrderFragment(orderBody, CompleteOrderFragment.this.shoptimer);
            successOrderFragment.setCancelable(false);
            FragmentManager fragmentManager = CompleteOrderFragment.this.getFragmentManager();
            if (fragmentManager != null) {
                successOrderFragment.show(fragmentManager, "Success Fragment");
            }
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<Order> call, Throwable t) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t, "t");
            CompleteOrderBinding completeOrderBinding = CompleteOrderFragment.this.binding;
            CompleteOrderBinding completeOrderBinding2 = null;
            if (completeOrderBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                completeOrderBinding = null;
            }
            completeOrderBinding.setTab(this.$originalTab);
            if (this.$singlePayment) {
                CompleteOrderBinding completeOrderBinding3 = CompleteOrderFragment.this.binding;
                if (completeOrderBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    completeOrderBinding2 = completeOrderBinding3;
                }
                AppCompatButton appCompatButton = completeOrderBinding2.confirmButton;
                final CompleteOrderFragment completeOrderFragment = CompleteOrderFragment.this;
                appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$processCashPayment$1$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        completeOrderFragment.confirmOrder();
                    }
                });
                return;
            }
            CompleteOrderBinding completeOrderBinding4 = CompleteOrderFragment.this.binding;
            if (completeOrderBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                completeOrderBinding2 = completeOrderBinding4;
            }
            LinearLayout linearLayout = completeOrderBinding2.cashpay;
            final CompleteOrderFragment completeOrderFragment2 = CompleteOrderFragment.this;
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.CompleteOrderFragment$processCashPayment$1$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CompleteOrderFragment.processCashPayment$default(completeOrderFragment2, false, 1, null);
                }
            });
        }
    }

    public static /* synthetic */ void processCardPayment$default(CompleteOrderFragment completeOrderFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        completeOrderFragment.processCardPayment(z);
    }

    public final void processCardPayment(boolean singlePayment) {
        CompleteOrderBinding completeOrderBinding = this.binding;
        if (completeOrderBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            completeOrderBinding = null;
        }
        completeOrderBinding.cardPay.setOnClickListener(null);
        CountDownTimer countDownTimer = this.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CardPaymentFragment cardPaymentFragment = new CardPaymentFragment(this.shoptimer, this.paymentTimer, new CompleteOrderFragment$processCardPayment$dialog$1(singlePayment, this));
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            cardPaymentFragment.show(fragmentManager, "Card Payment");
        }
    }
}
