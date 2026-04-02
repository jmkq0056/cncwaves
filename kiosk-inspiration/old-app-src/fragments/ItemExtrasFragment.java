package com.example.digitalkiosk.fragments;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.GridLayoutManager;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.ExtraAdapter;
import com.example.digitalkiosk.adapters.IngredientAdapter;
import com.example.digitalkiosk.databinding.ItemConfigurationBinding;
import com.example.digitalkiosk.models.Currency;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.Translation;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.sun.jna.platform.win32.WinError;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: ItemExtrasFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0016B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u000e\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/example/digitalkiosk/fragments/ItemExtrasFragment;", "Landroidx/fragment/app/DialogFragment;", "item", "Lcom/example/digitalkiosk/models/ItemDetails;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Lcom/example/digitalkiosk/models/ItemDetails;Landroid/os/CountDownTimer;)V", "onSubmitListener", "Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$OnSubmitListener;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "setOnSubmitListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "OnSubmitListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ItemExtrasFragment extends DialogFragment {
    private final ItemDetails item;
    private OnSubmitListener onSubmitListener;
    private final CountDownTimer shoptimer;

    /* JADX INFO: compiled from: ItemExtrasFragment.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$OnSubmitListener;", "", "onSubmit", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnSubmitListener {
        void onSubmit();
    }

    public /* synthetic */ ItemExtrasFragment(ItemDetails itemDetails, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(itemDetails, (i & 2) != 0 ? null : countDownTimer);
    }

    public ItemExtrasFragment(ItemDetails item, CountDownTimer countDownTimer) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
        this.shoptimer = countDownTimer;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.extrasPopupStyle);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Type inference failed for: r0v22, types: [com.example.digitalkiosk.fragments.ItemExtrasFragment$onCreateView$3] */
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        Dialog dialog2 = getDialog();
        Window window2 = dialog2 != null ? dialog2.getWindow() : null;
        if (window2 != null) {
            window2.setGravity(80);
        }
        WindowManager.LayoutParams attributes = window2 != null ? window2.getAttributes() : null;
        if (attributes != null) {
            attributes.y = 30;
        }
        if (window2 != null) {
            window2.setAttributes(attributes);
        }
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
        ShopActivity shopActivity = (ShopActivity) context;
        ViewDataBinding viewDataBindingInflate = DataBindingUtil.inflate(inflater, R.layout.item_configuration, null, false);
        Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate, "inflate(...)");
        final ItemConfigurationBinding itemConfigurationBinding = (ItemConfigurationBinding) viewDataBindingInflate;
        itemConfigurationBinding.setHandicapOn(Boolean.valueOf(OptionActivity.INSTANCE.getHandicap_on()));
        itemConfigurationBinding.setItem(this.item);
        float price = this.item.getPrice();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(price)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        if (ShopActivity.INSTANCE.getCurrency() != null) {
            Currency currency = ShopActivity.INSTANCE.getCurrency();
            String strReplace$default = Intrinsics.areEqual(currency != null ? currency.getFormat() : null, "comma") ? StringsKt.replace$default(str, ".", ",", false, 4, (Object) null) : str;
            String position = currency != null ? currency.getPosition() : null;
            if (position != null) {
                switch (position.hashCode()) {
                    case -1834249522:
                        if (position.equals("left_space")) {
                            str = currency.getSymbol() + TokenParser.SP + strReplace$default;
                        }
                        break;
                    case -68021981:
                        if (position.equals("right_space")) {
                            str = strReplace$default + TokenParser.SP + currency.getSymbol();
                        }
                        break;
                    case 3317767:
                        if (position.equals("left")) {
                            str = currency.getSymbol() + strReplace$default;
                        }
                        break;
                    case 108511772:
                        if (position.equals("right")) {
                            str = strReplace$default + currency.getSymbol();
                        }
                        break;
                }
            }
        }
        itemConfigurationBinding.setAmount(str);
        itemConfigurationBinding.setNextButtonText(MainActivity.INSTANCE.get_term_translation("first_popup_next"));
        itemConfigurationBinding.setCancelButtonText(MainActivity.INSTANCE.get_term_translation("first_popup_cancel"));
        final Animation animationLoadAnimation = AnimationUtils.loadAnimation(getActivity(), R.anim.shake);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.example.digitalkiosk.fragments.ItemExtrasFragment.onCreateView.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Log.d("TimerTesting", "Your way Animation Run");
                if (OptionActivity.INSTANCE.getHandicap_on()) {
                    itemConfigurationBinding.yourwayHandicap.startAnimation(animationLoadAnimation);
                } else {
                    itemConfigurationBinding.yourway.startAnimation(animationLoadAnimation);
                }
            }
        });
        new CountDownTimer() { // from class: com.example.digitalkiosk.fragments.ItemExtrasFragment.onCreateView.3
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3000L, 1000L);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (OptionActivity.INSTANCE.getHandicap_on()) {
                    itemConfigurationBinding.yourwayHandicap.startAnimation(animationLoadAnimation);
                } else {
                    itemConfigurationBinding.yourway.startAnimation(animationLoadAnimation);
                }
            }
        }.start();
        itemConfigurationBinding.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemExtrasFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemExtrasFragment.onCreateView$lambda$1(this.f$0, itemConfigurationBinding, animationLoadAnimation, view);
            }
        });
        if (this.item.getIngredients().size() == 0) {
            itemConfigurationBinding.yourway.setVisibility(8);
            itemConfigurationBinding.yourwayHand.setVisibility(8);
            itemConfigurationBinding.yourwayHandicap.setVisibility(8);
            itemConfigurationBinding.yourwayHandicapHand.setVisibility(8);
        }
        itemConfigurationBinding.yourway.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemExtrasFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemExtrasFragment.onCreateView$lambda$2(this.f$0, itemConfigurationBinding, view);
            }
        });
        Translation translation = MainActivity.INSTANCE.get_term_translation("first_have_it_your_way");
        if (translation != null) {
            itemConfigurationBinding.yourway.setText(translation.getTranslation());
            itemConfigurationBinding.yourwayHandicap.setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("remove");
        if (translation2 != null) {
            itemConfigurationBinding.removeTitle.setText(translation2.getTranslation());
            itemConfigurationBinding.handicapRemoveTitle.setText(translation2.getTranslation());
        }
        itemConfigurationBinding.yourwayHandicap.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemExtrasFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemExtrasFragment.onCreateView$lambda$3(this.f$0, itemConfigurationBinding, view);
            }
        });
        itemConfigurationBinding.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemExtrasFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemExtrasFragment.onCreateView$lambda$4(this.f$0, itemConfigurationBinding, animationLoadAnimation, view);
            }
        });
        if (this.item.getExtras().size() > 0) {
            ExtraAdapter extraAdapter = new ExtraAdapter(this.item.getExtras(), shopActivity, this.shoptimer);
            if (OptionActivity.INSTANCE.getHandicap_on()) {
                itemConfigurationBinding.extrasHandicap.setAdapter(extraAdapter);
                itemConfigurationBinding.extrasHandicap.setLayoutManager(new GridLayoutManager(getContext(), 3));
            } else {
                itemConfigurationBinding.extras.setAdapter(extraAdapter);
                itemConfigurationBinding.extras.setLayoutManager(new GridLayoutManager(getContext(), 3));
            }
        }
        if (this.item.getIngredients().size() > 0) {
            IngredientAdapter ingredientAdapter = new IngredientAdapter(this.item.getIngredients(), shopActivity, this.shoptimer);
            if (OptionActivity.INSTANCE.getHandicap_on()) {
                itemConfigurationBinding.ingredientsHandicap.setAdapter(ingredientAdapter);
                itemConfigurationBinding.ingredientsHandicap.setLayoutManager(new GridLayoutManager(getContext(), 3));
            } else {
                itemConfigurationBinding.ingredients.setAdapter(ingredientAdapter);
                itemConfigurationBinding.ingredients.setLayoutManager(new GridLayoutManager(getContext(), 3));
            }
        }
        return itemConfigurationBinding.getRoot();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(ItemExtrasFragment itemExtrasFragment, ItemConfigurationBinding itemConfigurationBinding, Animation animation, View view) {
        CountDownTimer countDownTimer = itemExtrasFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemExtrasFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        ShopActivity.INSTANCE.setItemToAdd(null);
        Animation animation2 = itemConfigurationBinding.yourway.getAnimation();
        if (animation2 != null) {
            animation2.cancel();
        }
        animation.setAnimationListener(null);
        itemExtrasFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(ItemExtrasFragment itemExtrasFragment, ItemConfigurationBinding itemConfigurationBinding, View view) {
        CountDownTimer countDownTimer = itemExtrasFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemExtrasFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        if (itemConfigurationBinding.removeItems.getVisibility() == 4) {
            itemConfigurationBinding.removeItems.setVisibility(0);
            itemConfigurationBinding.extrasScroll.smoothScrollTo(0, itemConfigurationBinding.extras.getHeight());
        } else {
            itemConfigurationBinding.extrasScroll.smoothScrollTo(0, 0);
            itemConfigurationBinding.removeItems.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3(ItemExtrasFragment itemExtrasFragment, ItemConfigurationBinding itemConfigurationBinding, View view) {
        CountDownTimer countDownTimer = itemExtrasFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemExtrasFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        if (itemConfigurationBinding.removeItemsIngredients.getVisibility() == 4) {
            itemConfigurationBinding.removeItemsIngredients.setVisibility(0);
            itemConfigurationBinding.extrasHandicapScroll.smoothScrollTo(0, itemConfigurationBinding.extrasHandicap.getHeight());
        } else {
            itemConfigurationBinding.extrasHandicapScroll.smoothScrollTo(0, 0);
            itemConfigurationBinding.removeItemsIngredients.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$4(ItemExtrasFragment itemExtrasFragment, ItemConfigurationBinding itemConfigurationBinding, Animation animation, View view) {
        CountDownTimer countDownTimer = itemExtrasFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemExtrasFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        Animation animation2 = itemConfigurationBinding.yourway.getAnimation();
        if (animation2 != null) {
            animation2.cancel();
        }
        animation.setAnimationListener(null);
        itemExtrasFragment.dismiss();
        OnSubmitListener onSubmitListener = itemExtrasFragment.onSubmitListener;
        if (onSubmitListener != null) {
            Intrinsics.checkNotNull(onSubmitListener);
            onSubmitListener.onSubmit();
        }
    }

    public final void setOnSubmitListener(OnSubmitListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onSubmitListener = listener;
    }
}
