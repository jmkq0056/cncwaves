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
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.HomeActivity;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.R;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.ConfigAdapter;
import com.example.digitalkiosk.adapters.ConfigItemAdapter;
import com.example.digitalkiosk.models.Item;
import com.example.digitalkiosk.models.ItemToAdd;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.network.ApiClient;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import me.relex.circleindicator.CircleIndicator3;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: SidesFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0012\u0010B\u001a\u00020C2\b\u0010D\u001a\u0004\u0018\u00010EH\u0016J&\u0010F\u001a\u0004\u0018\u00010G2\u0006\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010K2\b\u0010D\u001a\u0004\u0018\u00010EH\u0016J\u0016\u0010L\u001a\u00020C2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010M\u001a\u00020GR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020'X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001a\u0010,\u001a\u00020-X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001a\u00102\u001a\u000203X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001a\u00108\u001a\u000209X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u000e\u0010>\u001a\u00020?X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082.¢\u0006\u0002\n\u0000¨\u0006N"}, d2 = {"Lcom/example/digitalkiosk/fragments/SidesFragment;", "Landroidx/fragment/app/DialogFragment;", "side_id", "", "dialog_title", "", "coffee_icecream", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(ILjava/lang/String;Ljava/lang/String;Landroid/os/CountDownTimer;)V", "navNext", "Landroid/widget/RelativeLayout;", "getNavNext", "()Landroid/widget/RelativeLayout;", "setNavNext", "(Landroid/widget/RelativeLayout;)V", "navPrev", "getNavPrev", "setNavPrev", "itemsView", "Landroidx/viewpager2/widget/ViewPager2;", "getItemsView", "()Landroidx/viewpager2/widget/ViewPager2;", "setItemsView", "(Landroidx/viewpager2/widget/ViewPager2;)V", "cartIcon", "Landroid/widget/ImageView;", "getCartIcon", "()Landroid/widget/ImageView;", "setCartIcon", "(Landroid/widget/ImageView;)V", "itemsAdapter", "Lcom/example/digitalkiosk/adapters/ConfigAdapter;", "getItemsAdapter", "()Lcom/example/digitalkiosk/adapters/ConfigAdapter;", "setItemsAdapter", "(Lcom/example/digitalkiosk/adapters/ConfigAdapter;)V", "shopActivity", "Lcom/example/digitalkiosk/ShopActivity;", "getShopActivity", "()Lcom/example/digitalkiosk/ShopActivity;", "setShopActivity", "(Lcom/example/digitalkiosk/ShopActivity;)V", "skip", "Landroid/widget/Button;", "getSkip", "()Landroid/widget/Button;", "setSkip", "(Landroid/widget/Button;)V", "circleIndicator", "Lme/relex/circleindicator/CircleIndicator3;", "getCircleIndicator", "()Lme/relex/circleindicator/CircleIndicator3;", "setCircleIndicator", "(Lme/relex/circleindicator/CircleIndicator3;)V", "sideIndicatorWrap", "Landroid/widget/LinearLayout;", "getSideIndicatorWrap", "()Landroid/widget/LinearLayout;", "setSideIndicatorWrap", "(Landroid/widget/LinearLayout;)V", "displayNav", "", "shakeAnimation", "Landroid/view/animation/Animation;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "animateCart", "targetView", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SidesFragment extends DialogFragment {
    public ImageView cartIcon;
    public CircleIndicator3 circleIndicator;
    private final String coffee_icecream;
    private final String dialog_title;
    private boolean displayNav;
    public ConfigAdapter itemsAdapter;
    public ViewPager2 itemsView;
    public RelativeLayout navNext;
    public RelativeLayout navPrev;
    private Animation shakeAnimation;
    public ShopActivity shopActivity;
    private final CountDownTimer shoptimer;
    public LinearLayout sideIndicatorWrap;
    private final int side_id;
    public Button skip;

    public /* synthetic */ SidesFragment(int i, String str, String str2, CountDownTimer countDownTimer, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : countDownTimer);
    }

    public SidesFragment(int i, String dialog_title, String str, CountDownTimer countDownTimer) {
        Intrinsics.checkNotNullParameter(dialog_title, "dialog_title");
        this.side_id = i;
        this.dialog_title = dialog_title;
        this.coffee_icecream = str;
        this.shoptimer = countDownTimer;
    }

    public final RelativeLayout getNavNext() {
        RelativeLayout relativeLayout = this.navNext;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navNext");
        return null;
    }

    public final void setNavNext(RelativeLayout relativeLayout) {
        Intrinsics.checkNotNullParameter(relativeLayout, "<set-?>");
        this.navNext = relativeLayout;
    }

    public final RelativeLayout getNavPrev() {
        RelativeLayout relativeLayout = this.navPrev;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("navPrev");
        return null;
    }

    public final void setNavPrev(RelativeLayout relativeLayout) {
        Intrinsics.checkNotNullParameter(relativeLayout, "<set-?>");
        this.navPrev = relativeLayout;
    }

    public final ViewPager2 getItemsView() {
        ViewPager2 viewPager2 = this.itemsView;
        if (viewPager2 != null) {
            return viewPager2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("itemsView");
        return null;
    }

    public final void setItemsView(ViewPager2 viewPager2) {
        Intrinsics.checkNotNullParameter(viewPager2, "<set-?>");
        this.itemsView = viewPager2;
    }

    public final ImageView getCartIcon() {
        ImageView imageView = this.cartIcon;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cartIcon");
        return null;
    }

    public final void setCartIcon(ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.cartIcon = imageView;
    }

    public final ConfigAdapter getItemsAdapter() {
        ConfigAdapter configAdapter = this.itemsAdapter;
        if (configAdapter != null) {
            return configAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("itemsAdapter");
        return null;
    }

    public final void setItemsAdapter(ConfigAdapter configAdapter) {
        Intrinsics.checkNotNullParameter(configAdapter, "<set-?>");
        this.itemsAdapter = configAdapter;
    }

    public final ShopActivity getShopActivity() {
        ShopActivity shopActivity = this.shopActivity;
        if (shopActivity != null) {
            return shopActivity;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
        return null;
    }

    public final void setShopActivity(ShopActivity shopActivity) {
        Intrinsics.checkNotNullParameter(shopActivity, "<set-?>");
        this.shopActivity = shopActivity;
    }

    public final Button getSkip() {
        Button button = this.skip;
        if (button != null) {
            return button;
        }
        Intrinsics.throwUninitializedPropertyAccessException("skip");
        return null;
    }

    public final void setSkip(Button button) {
        Intrinsics.checkNotNullParameter(button, "<set-?>");
        this.skip = button;
    }

    public final CircleIndicator3 getCircleIndicator() {
        CircleIndicator3 circleIndicator3 = this.circleIndicator;
        if (circleIndicator3 != null) {
            return circleIndicator3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("circleIndicator");
        return null;
    }

    public final void setCircleIndicator(CircleIndicator3 circleIndicator3) {
        Intrinsics.checkNotNullParameter(circleIndicator3, "<set-?>");
        this.circleIndicator = circleIndicator3;
    }

    public final LinearLayout getSideIndicatorWrap() {
        LinearLayout linearLayout = this.sideIndicatorWrap;
        if (linearLayout != null) {
            return linearLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sideIndicatorWrap");
        return null;
    }

    public final void setSideIndicatorWrap(LinearLayout linearLayout) {
        Intrinsics.checkNotNullParameter(linearLayout, "<set-?>");
        this.sideIndicatorWrap = linearLayout;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.extrasPopupStyle);
    }

    /* JADX WARN: Type inference failed for: r6v25, types: [com.example.digitalkiosk.fragments.SidesFragment$onCreateView$shakeAnimationListener$1] */
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        if (OptionActivity.INSTANCE.getHandicap_on()) {
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
        }
        Context context = getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
        setShopActivity((ShopActivity) context);
        View viewInflate = inflater.inflate(R.layout.sides_layout, container, false);
        setItemsView((ViewPager2) viewInflate.findViewById(R.id.items));
        setNavNext((RelativeLayout) viewInflate.findViewById(R.id.side_next));
        setNavPrev((RelativeLayout) viewInflate.findViewById(R.id.side_previous));
        setCartIcon((ImageView) viewInflate.findViewById(R.id.cart_icon));
        setCircleIndicator((CircleIndicator3) viewInflate.findViewById(R.id.side_indicators));
        setSideIndicatorWrap((LinearLayout) viewInflate.findViewById(R.id.side_indicators_wrap));
        setSkip((Button) viewInflate.findViewById(R.id.skip));
        this.shakeAnimation = AnimationUtils.loadAnimation(getActivity(), R.anim.shake);
        final ?? r6 = new Animation.AnimationListener() { // from class: com.example.digitalkiosk.fragments.SidesFragment$onCreateView$shakeAnimationListener$1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (this.this$0.displayNav) {
                    LinearLayout sideIndicatorWrap = this.this$0.getSideIndicatorWrap();
                    Animation animation2 = this.this$0.shakeAnimation;
                    if (animation2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                        animation2 = null;
                    }
                    sideIndicatorWrap.startAnimation(animation2);
                }
            }
        };
        final ArrayList arrayList = new ArrayList();
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            getItemsView().getLayoutParams().height = WinError.ERROR_FAIL_NOACTION_REBOOT;
        }
        ApiClient.INSTANCE.get_sides$app_release(this.side_id, HomeActivity.INSTANCE.getSelected_language(), new Callback<ArrayList<Item>>() { // from class: com.example.digitalkiosk.fragments.SidesFragment.onCreateView.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ArrayList<Item>> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            /* JADX WARN: Type inference failed for: r3v22, types: [com.example.digitalkiosk.fragments.SidesFragment$onCreateView$2$onResponse$2] */
            @Override // retrofit2.Callback
            public void onResponse(Call<ArrayList<Item>> call, Response<ArrayList<Item>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                arrayList.clear();
                ArrayList<Item> arrayList2 = arrayList;
                ArrayList<Item> arrayListBody = response.body();
                Intrinsics.checkNotNull(arrayListBody);
                arrayList2.addAll(arrayListBody);
                this.setItemsAdapter(new ConfigAdapter(arrayList, this.getShopActivity()));
                ConfigAdapter itemsAdapter = this.getItemsAdapter();
                final SidesFragment sidesFragment = this;
                itemsAdapter.setOnClickListener(new ConfigItemAdapter.OnClickListener() { // from class: com.example.digitalkiosk.fragments.SidesFragment$onCreateView$2$onResponse$1
                    @Override // com.example.digitalkiosk.adapters.ConfigItemAdapter.OnClickListener
                    public void onClick(Item model, int position) {
                        Intrinsics.checkNotNullParameter(model, "model");
                        ShopActivity.INSTANCE.setItemToAdd(new ItemToAdd(model.getId(), null, null, null, null, null, 62, null));
                        ItemToAdd itemToAdd = ShopActivity.INSTANCE.getItemToAdd();
                        if (itemToAdd != null) {
                            SidesFragment sidesFragment2 = sidesFragment;
                            sidesFragment2.getShopActivity().addToCart(itemToAdd);
                            sidesFragment2.getItemsView().setCurrentItem(sidesFragment2.getItemsView().getCurrentItem());
                            sidesFragment2.animateCart(sidesFragment2.getCartIcon(), sidesFragment2.getCircleIndicator());
                        }
                    }
                });
                this.getItemsView().setAdapter(this.getItemsAdapter());
                if ((arrayList.size() > 4 && OptionActivity.INSTANCE.getHandicap_on()) || arrayList.size() > 16) {
                    this.getSideIndicatorWrap().setVisibility(0);
                    this.getCircleIndicator().setViewPager(this.getItemsView());
                    Animation animation = this.shakeAnimation;
                    if (animation == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                        animation = null;
                    }
                    animation.setAnimationListener(r6);
                    final SidesFragment sidesFragment2 = this;
                    new CountDownTimer() { // from class: com.example.digitalkiosk.fragments.SidesFragment$onCreateView$2$onResponse$2
                        @Override // android.os.CountDownTimer
                        public void onTick(long millisUntilFinished) {
                        }

                        {
                            super(2000L, 1000L);
                        }

                        @Override // android.os.CountDownTimer
                        public void onFinish() {
                            if (sidesFragment2.displayNav) {
                                LinearLayout sideIndicatorWrap = sidesFragment2.getSideIndicatorWrap();
                                Animation animation2 = sidesFragment2.shakeAnimation;
                                if (animation2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                                    animation2 = null;
                                }
                                sideIndicatorWrap.startAnimation(animation2);
                            }
                        }
                    }.start();
                    this.displayNav = true;
                    return;
                }
                this.getSideIndicatorWrap().setVisibility(8);
            }
        });
        ((TextView) viewInflate.findViewById(R.id.title)).setText(this.dialog_title);
        getSkip().setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.SidesFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SidesFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        Translation translation = MainActivity.INSTANCE.get_term_translation("more_its_all_thanks");
        if (translation != null) {
            getSkip().setText(translation.getTranslation());
        }
        getNavNext().setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.SidesFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SidesFragment.onCreateView$lambda$3(this.f$0, view);
            }
        });
        getNavPrev().setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.SidesFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SidesFragment.onCreateView$lambda$4(this.f$0, view);
            }
        });
        getItemsView().registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.example.digitalkiosk.fragments.SidesFragment.onCreateView.6
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                CountDownTimer countDownTimer = SidesFragment.this.shoptimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                CountDownTimer countDownTimer2 = SidesFragment.this.shoptimer;
                if (countDownTimer2 != null) {
                    countDownTimer2.start();
                }
                RecyclerView.Adapter adapter = SidesFragment.this.getItemsView().getAdapter();
                if (adapter != null && position + 1 == adapter.getItemCount()) {
                    SidesFragment.this.getNavNext().setAlpha(0.2f);
                } else {
                    SidesFragment.this.getNavNext().setAlpha(1.0f);
                }
                if (position == 0) {
                    SidesFragment.this.getNavPrev().setAlpha(0.2f);
                } else {
                    SidesFragment.this.getNavPrev().setAlpha(1.0f);
                }
                super.onPageSelected(position);
            }
        });
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(SidesFragment sidesFragment, View view) {
        String translation;
        CountDownTimer countDownTimer = sidesFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = sidesFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        sidesFragment.dismiss();
        String str = sidesFragment.coffee_icecream;
        if (str != null) {
            int i = Integer.parseInt(str);
            Translation translation2 = MainActivity.INSTANCE.get_term_translation("coffee_ice_cream_on_side");
            if (translation2 == null) {
                translation = "Coffee or Ice Cream on the Side?";
            } else {
                translation = translation2.getTranslation();
            }
            SidesFragment sidesFragment2 = new SidesFragment(i, translation, null, null, 12, null);
            FragmentManager fragmentManager = sidesFragment.getFragmentManager();
            if (fragmentManager != null) {
                sidesFragment2.show(fragmentManager, "Coffee Icecream");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3(SidesFragment sidesFragment, View view) {
        CountDownTimer countDownTimer = sidesFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = sidesFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        sidesFragment.getItemsView().setCurrentItem(sidesFragment.getItemsView().getCurrentItem() + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$4(SidesFragment sidesFragment, View view) {
        CountDownTimer countDownTimer = sidesFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = sidesFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        sidesFragment.getItemsView().setCurrentItem(sidesFragment.getItemsView().getCurrentItem() - 1);
    }

    public final void animateCart(final ImageView cartIcon, View targetView) {
        Intrinsics.checkNotNullParameter(cartIcon, "cartIcon");
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        cartIcon.getLocationOnScreen(new int[2]);
        targetView.getLocationOnScreen(new int[2]);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, r0[0] - r1[0], 0.0f, r0[1] - r1[1]);
        translateAnimation.setDuration(800L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.example.digitalkiosk.fragments.SidesFragment.animateCart.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                cartIcon.setVisibility(0);
                Log.d("Animate", "animation started");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                cartIcon.setVisibility(8);
            }
        });
        cartIcon.startAnimation(translateAnimation);
    }
}
