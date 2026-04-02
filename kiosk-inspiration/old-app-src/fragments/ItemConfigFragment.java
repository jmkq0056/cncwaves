package com.example.digitalkiosk.fragments;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.HomeActivity;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.ConfigAdapter;
import com.example.digitalkiosk.adapters.ConfigItemAdapter;
import com.example.digitalkiosk.adapters.SizeAdapter;
import com.example.digitalkiosk.databinding.ItemConfiguration2Binding;
import com.example.digitalkiosk.databinding.ItemConfigurationStepBinding;
import com.example.digitalkiosk.models.CartItemSide;
import com.example.digitalkiosk.models.Item;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.ItemSide;
import com.example.digitalkiosk.models.ItemToAdd;
import com.example.digitalkiosk.models.Size;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.network.ApiClient;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.slf4j.Marker;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: ItemConfigFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001*B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J&\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010'\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&H\u0002J\u000e\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u0015j\b\u0012\u0004\u0012\u00020\u0016`\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/example/digitalkiosk/fragments/ItemConfigFragment;", "Landroidx/fragment/app/DialogFragment;", "item", "Lcom/example/digitalkiosk/models/ItemDetails;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Lcom/example/digitalkiosk/models/ItemDetails;Landroid/os/CountDownTimer;)V", "onSubmitListener", "Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;", "warningTimer", "Ljava/util/TimerTask;", "shakeAnimation", "Landroid/view/animation/Animation;", "shopActivity", "Lcom/example/digitalkiosk/ShopActivity;", "displayNav", "", "mainHandler", "Landroid/os/Handler;", "sizes", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Size;", "Lkotlin/collections/ArrayList;", "sizeAdpater", "Lcom/example/digitalkiosk/adapters/SizeAdapter;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "openSize", "binding", "Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;", "closeSize", "setOnSubmitListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "OnSubmitListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ItemConfigFragment extends DialogFragment {
    private boolean displayNav;
    private final ItemDetails item;
    private final Handler mainHandler;
    private OnSubmitListener onSubmitListener;
    private Animation shakeAnimation;
    private ShopActivity shopActivity;
    private final CountDownTimer shoptimer;
    private final SizeAdapter sizeAdpater;
    private final ArrayList<Size> sizes;
    private TimerTask warningTimer;

    /* JADX INFO: compiled from: ItemConfigFragment.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;", "", "onSubmit", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnSubmitListener {
        void onSubmit();
    }

    public /* synthetic */ ItemConfigFragment(ItemDetails itemDetails, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(itemDetails, (i & 2) != 0 ? null : countDownTimer);
    }

    public ItemConfigFragment(ItemDetails item, CountDownTimer countDownTimer) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.item = item;
        this.shoptimer = countDownTimer;
        this.mainHandler = new Handler(Looper.getMainLooper());
        ArrayList<Size> arrayList = new ArrayList<>();
        this.sizes = arrayList;
        this.sizeAdpater = new SizeAdapter(arrayList, item);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!OptionActivity.INSTANCE.getHandicap_on()) {
            setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
        } else {
            setStyle(0, com.example.digitalkiosk.R.style.handicapConfigStyle);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v45, types: [com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$shakeAnimationListener$1] */
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ArrayList arrayList;
        final ItemConfigFragment$onCreateView$shakeAnimationListener$1 itemConfigFragment$onCreateView$shakeAnimationListener$1;
        Window window;
        View decorView;
        final ItemConfigFragment itemConfigFragment = this;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = itemConfigFragment.getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            Dialog dialog2 = itemConfigFragment.getDialog();
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
        Context context = itemConfigFragment.getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
        itemConfigFragment.shopActivity = (ShopActivity) context;
        final Ref.IntRef intRef = new Ref.IntRef();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        ViewDataBinding viewDataBindingInflate = DataBindingUtil.inflate(inflater, com.example.digitalkiosk.R.layout.item_configuration_2, null, false);
        Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate, "inflate(...)");
        final ItemConfiguration2Binding itemConfiguration2Binding = (ItemConfiguration2Binding) viewDataBindingInflate;
        itemConfiguration2Binding.setHandicapOn(Boolean.valueOf(OptionActivity.INSTANCE.getHandicap_on()));
        itemConfigFragment.shakeAnimation = AnimationUtils.loadAnimation(itemConfigFragment.getActivity(), com.example.digitalkiosk.R.anim.shake);
        itemConfigFragment.sizeAdpater.setOnClickListener(new SizeAdapter.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment.onCreateView.2
            @Override // com.example.digitalkiosk.adapters.SizeAdapter.OnClickListener
            public void onClick(String slug) {
                Intrinsics.checkNotNullParameter(slug, "slug");
                CountDownTimer countDownTimer = ItemConfigFragment.this.shoptimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                CountDownTimer countDownTimer2 = ItemConfigFragment.this.shoptimer;
                if (countDownTimer2 != null) {
                    countDownTimer2.start();
                }
                ItemToAdd itemToAdd = ShopActivity.INSTANCE.getItemToAdd();
                if (itemToAdd != null) {
                    itemToAdd.setSelected_size(slug);
                }
                ItemConfigFragment.this.dismiss();
                if (ItemConfigFragment.this.onSubmitListener != null) {
                    OnSubmitListener onSubmitListener = ItemConfigFragment.this.onSubmitListener;
                    Intrinsics.checkNotNull(onSubmitListener);
                    onSubmitListener.onSubmit();
                }
            }
        });
        itemConfiguration2Binding.sizesDisplay.setAdapter(itemConfigFragment.sizeAdpater);
        ShopActivity shopActivity = itemConfigFragment.shopActivity;
        if (shopActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
            shopActivity = null;
        }
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(shopActivity, OptionActivity.INSTANCE.getHandicap_on() ? 0 : 2);
        flexboxLayoutManager.setJustifyContent(2);
        flexboxLayoutManager.setAlignItems(2);
        itemConfiguration2Binding.sizesDisplay.setLayoutManager(flexboxLayoutManager);
        final ArrayList arrayList2 = new ArrayList();
        ViewDataBinding viewDataBindingInflate2 = DataBindingUtil.inflate(itemConfigFragment.getLayoutInflater(), com.example.digitalkiosk.R.layout.item_configuration_step, null, false);
        Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate2, "inflate(...)");
        ItemConfigurationStepBinding itemConfigurationStepBinding = (ItemConfigurationStepBinding) viewDataBindingInflate2;
        ViewDataBinding viewDataBindingInflate3 = DataBindingUtil.inflate(itemConfigFragment.getLayoutInflater(), com.example.digitalkiosk.R.layout.item_configuration_step, null, false);
        Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate3, "inflate(...)");
        final ItemConfigurationStepBinding itemConfigurationStepBinding2 = (ItemConfigurationStepBinding) viewDataBindingInflate3;
        final ArrayList arrayList3 = new ArrayList();
        ShopActivity shopActivity2 = itemConfigFragment.shopActivity;
        if (shopActivity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
            shopActivity2 = null;
        }
        final ConfigAdapter configAdapter = new ConfigAdapter(arrayList2, shopActivity2);
        configAdapter.setOnClickListener(itemConfigFragment.new AnonymousClass3(intRef, itemConfiguration2Binding, booleanRef, configAdapter));
        itemConfiguration2Binding.setItem(itemConfigFragment.item);
        itemConfiguration2Binding.setNextButtonText(MainActivity.INSTANCE.get_term_translation("sides_next"));
        itemConfiguration2Binding.setCancelButtonText(MainActivity.INSTANCE.get_term_translation("sides_cancel"));
        boolean z = true;
        itemConfigurationStepBinding.setFirst(true);
        itemConfigurationStepBinding.setActive(false);
        itemConfigurationStepBinding.setCompleted(true);
        itemConfigurationStepBinding.setLast(false);
        itemConfigurationStepBinding.setTitle(itemConfigFragment.item.getName());
        itemConfiguration2Binding.steps.addView(itemConfigurationStepBinding.getRoot());
        boolean z2 = itemConfigFragment.item.getSizes().getLarge().getEnabled() || itemConfigFragment.item.getSizes().getMedium().getEnabled() || itemConfigFragment.item.getSizes().getXl().getEnabled();
        int size = itemConfigFragment.item.getSides().size();
        boolean z3 = true;
        int i = 0;
        while (i < size) {
            boolean z4 = z;
            int i2 = size;
            ViewDataBinding viewDataBindingInflate4 = DataBindingUtil.inflate(itemConfigFragment.getLayoutInflater(), com.example.digitalkiosk.R.layout.item_configuration_step, null, false);
            Intrinsics.checkNotNullExpressionValue(viewDataBindingInflate4, "inflate(...)");
            ItemConfigurationStepBinding itemConfigurationStepBinding3 = (ItemConfigurationStepBinding) viewDataBindingInflate4;
            arrayList3.add(itemConfigurationStepBinding3);
            itemConfigurationStepBinding3.setTitle(itemConfigFragment.item.getSides().get(i).getName());
            itemConfigurationStepBinding3.setFirst(false);
            itemConfigurationStepBinding3.setLast(Boolean.valueOf((z2 || i != itemConfigFragment.item.getSides().size() + (-1)) ? false : z4));
            itemConfigurationStepBinding3.setCompleted(false);
            itemConfigurationStepBinding3.setActive(Boolean.valueOf(z3));
            itemConfiguration2Binding.steps.addView(itemConfigurationStepBinding3.getRoot());
            i++;
            z = z4;
            size = i2;
            z3 = false;
        }
        boolean z5 = z;
        itemConfigurationStepBinding2.setTitle("Size");
        itemConfigurationStepBinding2.setFirst(false);
        itemConfigurationStepBinding2.setActive(false);
        itemConfigurationStepBinding2.setCompleted(false);
        itemConfigurationStepBinding2.setLast(Boolean.valueOf(z5));
        if (z2) {
            itemConfiguration2Binding.steps.addView(itemConfigurationStepBinding2.getRoot());
        }
        Translation translation = MainActivity.INSTANCE.get_term_translation("sides");
        itemConfiguration2Binding.setConfigTitle(translation != null ? translation.getTranslation() : null);
        itemConfiguration2Binding.setSidesTabTitle(MainActivity.INSTANCE.get_term_translation("sides"));
        itemConfiguration2Binding.setDrinksTabTitle(MainActivity.INSTANCE.get_term_translation("drinks"));
        itemConfiguration2Binding.setSizeTabTitle(MainActivity.INSTANCE.get_term_translation("size"));
        itemConfiguration2Binding.setSidesAvailable(false);
        itemConfiguration2Binding.setDrinksAvailable(false);
        final ?? r0 = new Animation.AnimationListener() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$shakeAnimationListener$1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (this.this$0.displayNav) {
                    LinearLayout linearLayout = itemConfiguration2Binding.sideIndicatorsWrap;
                    Animation animation2 = this.this$0.shakeAnimation;
                    if (animation2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                        animation2 = null;
                    }
                    linearLayout.startAnimation(animation2);
                    return;
                }
                itemConfiguration2Binding.sideIndicatorsWrap.setVisibility(8);
            }
        };
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("select_options_first");
        if (translation2 != null) {
            itemConfiguration2Binding.warningSelect.setText(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("maximum_options_selected");
        if (translation3 != null) {
            itemConfiguration2Binding.warningMax.setText(translation3.getTranslation());
        }
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("minimum_not_selected");
        if (translation4 != null) {
            itemConfiguration2Binding.warningMin.setText(translation4.getTranslation());
        }
        itemConfiguration2Binding.setTabPosition(0);
        if (itemConfigFragment.item.getSides().size() == 0) {
            itemConfiguration2Binding.setDescriptionText(null);
            itemConfiguration2Binding.setTabPosition(Integer.valueOf(z5 ? 1 : 0));
            itemConfigurationStepBinding2.setActive(Boolean.valueOf(z5));
            itemConfigFragment.openSize(itemConfiguration2Binding);
            arrayList = arrayList2;
            itemConfigFragment$onCreateView$shakeAnimationListener$1 = r0;
        } else {
            ViewPager2 sideItems = itemConfiguration2Binding.sideItems;
            Intrinsics.checkNotNullExpressionValue(sideItems, "sideItems");
            sideItems.setAdapter(configAdapter);
            configAdapter.setSidePosition(0);
            itemConfiguration2Binding.setDescriptionText(itemConfigFragment.item.getSides().get(0).getDescription());
            if (!itemConfigFragment.item.getSides().get(0).getRequired()) {
                booleanRef.element = z5;
            }
            ApiClient apiClient = ApiClient.INSTANCE;
            int id = itemConfigFragment.item.getSides().get(0).getId();
            int selected_language = HomeActivity.INSTANCE.getSelected_language();
            Callback<ArrayList<Item>> callback = new Callback<ArrayList<Item>>() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment.onCreateView.4
                @Override // retrofit2.Callback
                public void onFailure(Call<ArrayList<Item>> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                }

                /* JADX WARN: Type inference failed for: r2v17, types: [com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$4$onResponse$1] */
                @Override // retrofit2.Callback
                public void onResponse(Call<ArrayList<Item>> call, Response<ArrayList<Item>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ArrayList<Item> arrayList4 = arrayList2;
                    ArrayList<Item> arrayListBody = response.body();
                    Intrinsics.checkNotNull(arrayListBody);
                    arrayList4.addAll(arrayListBody);
                    configAdapter.notifyDataSetChanged();
                    if ((arrayList2.size() > 4 && OptionActivity.INSTANCE.getHandicap_on()) || arrayList2.size() > 16) {
                        itemConfiguration2Binding.sideIndicatorsWrap.setVisibility(0);
                        itemConfiguration2Binding.sideIndicators.setViewPager(itemConfiguration2Binding.sideItems);
                        Animation animation = itemConfigFragment.shakeAnimation;
                        if (animation == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                            animation = null;
                        }
                        animation.setAnimationListener(r0);
                        final ItemConfigFragment itemConfigFragment2 = itemConfigFragment;
                        final ItemConfiguration2Binding itemConfiguration2Binding2 = itemConfiguration2Binding;
                        new CountDownTimer() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$4$onResponse$1
                            @Override // android.os.CountDownTimer
                            public void onTick(long millisUntilFinished) {
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2000L, 1000L);
                            }

                            @Override // android.os.CountDownTimer
                            public void onFinish() {
                                if (itemConfigFragment2.displayNav) {
                                    LinearLayout linearLayout = itemConfiguration2Binding2.sideIndicatorsWrap;
                                    Animation animation2 = itemConfigFragment2.shakeAnimation;
                                    if (animation2 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                                        animation2 = null;
                                    }
                                    linearLayout.startAnimation(animation2);
                                }
                            }
                        }.start();
                        itemConfigFragment.displayNav = true;
                        return;
                    }
                    itemConfiguration2Binding.sideIndicatorsWrap.setVisibility(8);
                }
            };
            arrayList = arrayList2;
            itemConfigFragment = itemConfigFragment;
            itemConfigFragment$onCreateView$shakeAnimationListener$1 = r0;
            configAdapter = configAdapter;
            apiClient.get_sides$app_release(id, selected_language, callback);
        }
        itemConfiguration2Binding.sideNext.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemConfigFragment.onCreateView$lambda$1(this.f$0, itemConfiguration2Binding, view);
            }
        });
        itemConfiguration2Binding.sidePrevious.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemConfigFragment.onCreateView$lambda$2(this.f$0, itemConfiguration2Binding, view);
            }
        });
        itemConfiguration2Binding.sideItems.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment.onCreateView.7
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                CountDownTimer countDownTimer = ItemConfigFragment.this.shoptimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                CountDownTimer countDownTimer2 = ItemConfigFragment.this.shoptimer;
                if (countDownTimer2 != null) {
                    countDownTimer2.start();
                }
                RecyclerView.Adapter adapter = itemConfiguration2Binding.sideItems.getAdapter();
                if (adapter != null && position + 1 == adapter.getItemCount()) {
                    itemConfiguration2Binding.sideNext.setAlpha(0.2f);
                } else {
                    itemConfiguration2Binding.sideNext.setAlpha(1.0f);
                }
                if (position == 0) {
                    itemConfiguration2Binding.sidePrevious.setAlpha(0.2f);
                } else {
                    itemConfiguration2Binding.sidePrevious.setAlpha(1.0f);
                }
                super.onPageSelected(position);
            }
        });
        final ItemConfigFragment itemConfigFragment2 = itemConfigFragment;
        final ArrayList arrayList4 = arrayList;
        final ConfigAdapter configAdapter2 = configAdapter;
        final boolean z6 = z2;
        itemConfiguration2Binding.nextButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemConfigFragment.onCreateView$lambda$7(itemConfiguration2Binding, itemConfigFragment2, intRef, booleanRef, z6, arrayList3, itemConfigurationStepBinding2, arrayList4, configAdapter2, itemConfigFragment$onCreateView$shakeAnimationListener$1, view);
            }
        });
        final ItemConfigFragment$onCreateView$shakeAnimationListener$1 itemConfigFragment$onCreateView$shakeAnimationListener$12 = itemConfigFragment$onCreateView$shakeAnimationListener$1;
        itemConfiguration2Binding.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemConfigFragment.onCreateView$lambda$8(this.f$0, intRef, itemConfiguration2Binding, arrayList4, configAdapter2, arrayList3, booleanRef, itemConfigurationStepBinding2, itemConfigFragment$onCreateView$shakeAnimationListener$12, view);
            }
        });
        return itemConfiguration2Binding.getRoot();
    }

    /* JADX INFO: renamed from: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$3, reason: invalid class name */
    /* JADX INFO: compiled from: ItemConfigFragment.kt */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3", "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;", "onClick", "", "model", "Lcom/example/digitalkiosk/models/Item;", "position", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass3 implements ConfigItemAdapter.OnClickListener {
        final /* synthetic */ ItemConfiguration2Binding $binding;
        final /* synthetic */ ConfigAdapter $configAdapter;
        final /* synthetic */ Ref.IntRef $sidePosition;
        final /* synthetic */ Ref.BooleanRef $sideRequirementsFulfilled;

        AnonymousClass3(Ref.IntRef intRef, ItemConfiguration2Binding itemConfiguration2Binding, Ref.BooleanRef booleanRef, ConfigAdapter configAdapter) {
            this.$sidePosition = intRef;
            this.$binding = itemConfiguration2Binding;
            this.$sideRequirementsFulfilled = booleanRef;
            this.$configAdapter = configAdapter;
        }

        /* JADX WARN: Code restructure failed: missing block: B:132:0x0332, code lost:
        
            if (r2 < r0.intValue()) goto L133;
         */
        /* JADX WARN: Removed duplicated region for block: B:46:0x012a  */
        @Override // com.example.digitalkiosk.adapters.ConfigItemAdapter.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(com.example.digitalkiosk.models.Item r12, int r13) {
            /*
                Method dump skipped, instruction units count: 1061
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.example.digitalkiosk.fragments.ItemConfigFragment.AnonymousClass3.onClick(com.example.digitalkiosk.models.Item, int):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onClick$lambda$2(ItemConfiguration2Binding itemConfiguration2Binding) {
            itemConfiguration2Binding.mandatoryWarning.animate().translationX(0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onClick$lambda$8(ItemConfiguration2Binding itemConfiguration2Binding) {
            itemConfiguration2Binding.mandatoryWarning.animate().translationX(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(ItemConfigFragment itemConfigFragment, ItemConfiguration2Binding itemConfiguration2Binding, View view) {
        CountDownTimer countDownTimer = itemConfigFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemConfigFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        itemConfiguration2Binding.sideItems.setCurrentItem(itemConfiguration2Binding.sideItems.getCurrentItem() + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(ItemConfigFragment itemConfigFragment, ItemConfiguration2Binding itemConfiguration2Binding, View view) {
        CountDownTimer countDownTimer = itemConfigFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemConfigFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        itemConfiguration2Binding.sideItems.setCurrentItem(itemConfiguration2Binding.sideItems.getCurrentItem() - 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$7(final ItemConfiguration2Binding itemConfiguration2Binding, final ItemConfigFragment itemConfigFragment, Ref.IntRef intRef, final Ref.BooleanRef booleanRef, boolean z, ArrayList arrayList, ItemConfigurationStepBinding itemConfigurationStepBinding, final ArrayList arrayList2, final ConfigAdapter configAdapter, final ItemConfigFragment$onCreateView$shakeAnimationListener$1 itemConfigFragment$onCreateView$shakeAnimationListener$1, View view) {
        int quantity;
        ArrayList<ArrayList<CartItemSide>> selected_sides;
        ArrayList<CartItemSide> arrayList3;
        ArrayList<ArrayList<CartItemSide>> selected_sides2;
        ArrayList<CartItemSide> arrayList4;
        itemConfiguration2Binding.warningMax.setVisibility(8);
        itemConfiguration2Binding.warningMin.setVisibility(8);
        itemConfiguration2Binding.warningSelect.setVisibility(0);
        CountDownTimer countDownTimer = itemConfigFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemConfigFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        final int i = intRef.element + 1;
        Integer tabPosition = itemConfiguration2Binding.getTabPosition();
        Integer numValueOf = null;
        if (tabPosition != null && tabPosition.intValue() == 0 && booleanRef.element) {
            itemConfigFragment.mainHandler.post(new Runnable() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ItemConfigFragment.onCreateView$lambda$7$lambda$3(itemConfiguration2Binding);
                }
            });
            if (i == itemConfigFragment.item.getSides().size()) {
                itemConfiguration2Binding.setDescriptionText(null);
                if (z) {
                    itemConfigFragment.openSize(itemConfiguration2Binding);
                    itemConfiguration2Binding.setTabPosition(1);
                    if (arrayList.size() > 0) {
                        ((ItemConfigurationStepBinding) arrayList.get(intRef.element)).setCompleted(true);
                    }
                    itemConfigurationStepBinding.setActive(true);
                    return;
                }
                itemConfigFragment.dismiss();
                OnSubmitListener onSubmitListener = itemConfigFragment.onSubmitListener;
                if (onSubmitListener != null) {
                    Intrinsics.checkNotNull(onSubmitListener);
                    onSubmitListener.onSubmit();
                    return;
                }
                return;
            }
            arrayList2.clear();
            configAdapter.notifyDataSetChanged();
            ((ItemConfigurationStepBinding) arrayList.get(i)).setActive(true);
            ((ItemConfigurationStepBinding) arrayList.get(intRef.element)).setCompleted(true);
            itemConfiguration2Binding.setDescriptionText(itemConfigFragment.item.getSides().get(i).getDescription());
            booleanRef.element = !itemConfigFragment.item.getSides().get(i).getRequired();
            ApiClient.INSTANCE.get_sides$app_release(itemConfigFragment.item.getSides().get(i).getId(), HomeActivity.INSTANCE.getSelected_language(), new Callback<ArrayList<Item>>() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$8$2
                @Override // retrofit2.Callback
                public void onFailure(Call<ArrayList<Item>> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                }

                /* JADX WARN: Type inference failed for: r5v83, types: [com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$8$2$onResponse$1] */
                @Override // retrofit2.Callback
                public void onResponse(Call<ArrayList<Item>> call, Response<ArrayList<Item>> response) {
                    ArrayList<ArrayList<CartItemSide>> selected_sides3;
                    ArrayList<CartItemSide> arrayList5;
                    ArrayList<ArrayList<CartItemSide>> selected_sides4;
                    ArrayList<CartItemSide> arrayList6;
                    ArrayList<ArrayList<CartItemSide>> selected_sides5;
                    ArrayList<CartItemSide> arrayList7;
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    arrayList2.clear();
                    ArrayList<Item> arrayList8 = arrayList2;
                    ArrayList<Item> arrayListBody = response.body();
                    Intrinsics.checkNotNull(arrayListBody);
                    arrayList8.addAll(arrayListBody);
                    configAdapter.setSidePosition(i);
                    configAdapter.notifyDataSetChanged();
                    Integer numValueOf2 = null;
                    if ((arrayList2.size() <= 4 || !OptionActivity.INSTANCE.getHandicap_on()) && arrayList2.size() <= 16) {
                        itemConfiguration2Binding.sideIndicatorsWrap.clearAnimation();
                        Animation animation = itemConfigFragment.shakeAnimation;
                        if (animation == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                            animation = null;
                        }
                        animation.setAnimationListener(null);
                        itemConfiguration2Binding.sideIndicatorsWrap.setVisibility(8);
                        itemConfigFragment.displayNav = false;
                    } else {
                        itemConfiguration2Binding.sideIndicatorsWrap.setVisibility(0);
                        itemConfiguration2Binding.sideIndicators.setViewPager(itemConfiguration2Binding.sideItems);
                        Animation animation2 = itemConfigFragment.shakeAnimation;
                        if (animation2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                            animation2 = null;
                        }
                        animation2.setAnimationListener(itemConfigFragment$onCreateView$shakeAnimationListener$1);
                        final ItemConfigFragment itemConfigFragment2 = itemConfigFragment;
                        final ItemConfiguration2Binding itemConfiguration2Binding2 = itemConfiguration2Binding;
                        new CountDownTimer() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$8$2$onResponse$1
                            @Override // android.os.CountDownTimer
                            public void onTick(long millisUntilFinished) {
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2000L, 1000L);
                            }

                            @Override // android.os.CountDownTimer
                            public void onFinish() {
                                if (itemConfigFragment2.displayNav) {
                                    LinearLayout linearLayout = itemConfiguration2Binding2.sideIndicatorsWrap;
                                    Animation animation3 = itemConfigFragment2.shakeAnimation;
                                    if (animation3 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                                        animation3 = null;
                                    }
                                    linearLayout.startAnimation(animation3);
                                }
                            }
                        }.start();
                        itemConfigFragment.displayNav = true;
                    }
                    if (itemConfigFragment.item.getSides().get(i).getRequired()) {
                        ItemToAdd itemToAdd = ShopActivity.INSTANCE.getItemToAdd();
                        Integer numValueOf3 = (itemToAdd == null || (selected_sides5 = itemToAdd.getSelected_sides()) == null || (arrayList7 = selected_sides5.get(i)) == null) ? null : Integer.valueOf(arrayList7.size());
                        Intrinsics.checkNotNull(numValueOf3);
                        if (numValueOf3.intValue() > 0) {
                            if (Intrinsics.areEqual(itemConfigFragment.item.getSides().get(i).getType(), "one")) {
                                booleanRef.element = true;
                                return;
                            }
                            if (Intrinsics.areEqual(itemConfigFragment.item.getSides().get(i).getType(), "multiple_qty")) {
                                ItemToAdd itemToAdd2 = ShopActivity.INSTANCE.getItemToAdd();
                                Integer numValueOf4 = (itemToAdd2 == null || (selected_sides4 = itemToAdd2.getSelected_sides()) == null || (arrayList6 = selected_sides4.get(i)) == null) ? null : Integer.valueOf(arrayList6.size());
                                Intrinsics.checkNotNull(numValueOf4);
                                int iIntValue = numValueOf4.intValue();
                                Integer max = itemConfigFragment.item.getSides().get(i).getMax();
                                Intrinsics.checkNotNull(max);
                                if (iIntValue <= max.intValue()) {
                                    ItemToAdd itemToAdd3 = ShopActivity.INSTANCE.getItemToAdd();
                                    if (itemToAdd3 != null && (selected_sides3 = itemToAdd3.getSelected_sides()) != null && (arrayList5 = selected_sides3.get(i)) != null) {
                                        numValueOf2 = Integer.valueOf(arrayList5.size());
                                    }
                                    Intrinsics.checkNotNull(numValueOf2);
                                    if (numValueOf2.intValue() >= itemConfigFragment.item.getSides().get(i).getMin()) {
                                        booleanRef.element = true;
                                        return;
                                    }
                                }
                            }
                            if (Intrinsics.areEqual(itemConfigFragment.item.getSides().get(i).getType(), "multiple")) {
                                booleanRef.element = true;
                            }
                        }
                    }
                }
            });
            intRef.element = i;
            return;
        }
        Integer tabPosition2 = itemConfiguration2Binding.getTabPosition();
        if (tabPosition2 != null && tabPosition2.intValue() == 0 && !booleanRef.element) {
            ItemToAdd itemToAdd = ShopActivity.INSTANCE.getItemToAdd();
            if (itemToAdd == null || (selected_sides2 = itemToAdd.getSelected_sides()) == null || (arrayList4 = selected_sides2.get(intRef.element)) == null) {
                quantity = 0;
            } else {
                Iterator<T> it = arrayList4.iterator();
                quantity = 0;
                while (it.hasNext()) {
                    quantity += ((CartItemSide) it.next()).getQuantity();
                }
            }
            itemConfiguration2Binding.warningMax.setVisibility(8);
            ItemToAdd itemToAdd2 = ShopActivity.INSTANCE.getItemToAdd();
            if (itemToAdd2 != null && (selected_sides = itemToAdd2.getSelected_sides()) != null && (arrayList3 = selected_sides.get(intRef.element)) != null) {
                numValueOf = Integer.valueOf(arrayList3.size());
            }
            Intrinsics.checkNotNull(numValueOf);
            if (numValueOf.intValue() > 0 && quantity < itemConfigFragment.item.getSides().get(intRef.element).getMin()) {
                itemConfiguration2Binding.warningMin.setVisibility(0);
                itemConfiguration2Binding.warningSelect.setVisibility(8);
            } else {
                itemConfiguration2Binding.warningSelect.setVisibility(0);
                itemConfiguration2Binding.warningMin.setVisibility(8);
            }
            TimerTask timerTask = itemConfigFragment.warningTimer;
            if (timerTask != null) {
                timerTask.cancel();
            }
            itemConfigFragment.mainHandler.post(new Runnable() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ItemConfigFragment.onCreateView$lambda$7$lambda$5(itemConfiguration2Binding);
                }
            });
            Timer timer = new Timer();
            TimerTask timerTask2 = new TimerTask() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$lambda$7$$inlined$schedule$1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Handler handler = this.this$0.mainHandler;
                    final ItemConfiguration2Binding itemConfiguration2Binding2 = itemConfiguration2Binding;
                    handler.post(new Runnable() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$8$5$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            itemConfiguration2Binding2.mandatoryWarning.animate().translationX(400.0f);
                        }
                    });
                }
            };
            timer.schedule(timerTask2, 3000L);
            itemConfigFragment.warningTimer = timerTask2;
            return;
        }
        Integer tabPosition3 = itemConfiguration2Binding.getTabPosition();
        if (tabPosition3 != null && tabPosition3.intValue() == 1) {
            itemConfigFragment.dismiss();
            OnSubmitListener onSubmitListener2 = itemConfigFragment.onSubmitListener;
            if (onSubmitListener2 != null) {
                Intrinsics.checkNotNull(onSubmitListener2);
                onSubmitListener2.onSubmit();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$7$lambda$3(ItemConfiguration2Binding itemConfiguration2Binding) {
        itemConfiguration2Binding.mandatoryWarning.animate().translationX(400.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$7$lambda$5(ItemConfiguration2Binding itemConfiguration2Binding) {
        itemConfiguration2Binding.mandatoryWarning.animate().translationX(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$8(final ItemConfigFragment itemConfigFragment, Ref.IntRef intRef, final ItemConfiguration2Binding itemConfiguration2Binding, final ArrayList arrayList, final ConfigAdapter configAdapter, ArrayList arrayList2, Ref.BooleanRef booleanRef, ItemConfigurationStepBinding itemConfigurationStepBinding, final ItemConfigFragment$onCreateView$shakeAnimationListener$1 itemConfigFragment$onCreateView$shakeAnimationListener$1, View view) {
        ArrayList<ArrayList<CartItemSide>> selected_sides;
        ArrayList<CartItemSide> arrayList3;
        CountDownTimer countDownTimer = itemConfigFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = itemConfigFragment.shoptimer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
        final int i = intRef.element - 1;
        Integer tabPosition = itemConfiguration2Binding.getTabPosition();
        if (tabPosition != null && tabPosition.intValue() == 0) {
            if (intRef.element == 0) {
                ShopActivity.INSTANCE.setItemToAdd(null);
                itemConfigFragment.dismiss();
                return;
            }
            arrayList.clear();
            configAdapter.notifyDataSetChanged();
            ((ItemConfigurationStepBinding) arrayList2.get(i)).setCompleted(false);
            ((ItemConfigurationStepBinding) arrayList2.get(i)).setActive(true);
            ((ItemConfigurationStepBinding) arrayList2.get(intRef.element)).setActive(false);
            booleanRef.element = true;
            itemConfiguration2Binding.setDescriptionText(itemConfigFragment.item.getSides().get(i).getDescription());
            ItemToAdd itemToAdd = ShopActivity.INSTANCE.getItemToAdd();
            if (itemToAdd != null && (selected_sides = itemToAdd.getSelected_sides()) != null && (arrayList3 = selected_sides.get(intRef.element)) != null) {
                arrayList3.clear();
            }
            ApiClient.INSTANCE.get_sides$app_release(itemConfigFragment.item.getSides().get(i).getId(), HomeActivity.INSTANCE.getSelected_language(), new Callback<ArrayList<Item>>() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$9$1
                @Override // retrofit2.Callback
                public void onFailure(Call<ArrayList<Item>> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                }

                /* JADX WARN: Type inference failed for: r4v27, types: [com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$9$1$onResponse$1] */
                @Override // retrofit2.Callback
                public void onResponse(Call<ArrayList<Item>> call, Response<ArrayList<Item>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    arrayList.clear();
                    ArrayList<Item> arrayList4 = arrayList;
                    ArrayList<Item> arrayListBody = response.body();
                    Intrinsics.checkNotNull(arrayListBody);
                    arrayList4.addAll(arrayListBody);
                    configAdapter.setSidePosition(i);
                    configAdapter.notifyDataSetChanged();
                    Animation animation = null;
                    if ((arrayList.size() > 4 && OptionActivity.INSTANCE.getHandicap_on()) || arrayList.size() > 16) {
                        itemConfiguration2Binding.sideIndicatorsWrap.setVisibility(0);
                        itemConfiguration2Binding.sideIndicators.setViewPager(itemConfiguration2Binding.sideItems);
                        Animation animation2 = itemConfigFragment.shakeAnimation;
                        if (animation2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                        } else {
                            animation = animation2;
                        }
                        animation.setAnimationListener(itemConfigFragment$onCreateView$shakeAnimationListener$1);
                        final ItemConfigFragment itemConfigFragment2 = itemConfigFragment;
                        final ItemConfiguration2Binding itemConfiguration2Binding2 = itemConfiguration2Binding;
                        new CountDownTimer() { // from class: com.example.digitalkiosk.fragments.ItemConfigFragment$onCreateView$9$1$onResponse$1
                            @Override // android.os.CountDownTimer
                            public void onTick(long millisUntilFinished) {
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2000L, 1000L);
                            }

                            @Override // android.os.CountDownTimer
                            public void onFinish() {
                                if (itemConfigFragment2.displayNav) {
                                    LinearLayout linearLayout = itemConfiguration2Binding2.sideIndicatorsWrap;
                                    Animation animation3 = itemConfigFragment2.shakeAnimation;
                                    if (animation3 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                                        animation3 = null;
                                    }
                                    linearLayout.startAnimation(animation3);
                                }
                            }
                        }.start();
                        itemConfigFragment.displayNav = true;
                        return;
                    }
                    itemConfiguration2Binding.sideIndicatorsWrap.clearAnimation();
                    Animation animation3 = itemConfigFragment.shakeAnimation;
                    if (animation3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
                        animation3 = null;
                    }
                    animation3.setAnimationListener(null);
                    itemConfiguration2Binding.sideIndicatorsWrap.setVisibility(8);
                    itemConfigFragment.displayNav = false;
                }
            });
            intRef.element = i;
            return;
        }
        Integer tabPosition2 = itemConfiguration2Binding.getTabPosition();
        if (tabPosition2 != null && tabPosition2.intValue() == 1) {
            if (arrayList2.size() > 0) {
                itemConfigurationStepBinding.setActive(false);
                ArrayList arrayList4 = arrayList2;
                ((ItemConfigurationStepBinding) CollectionsKt.last((List) arrayList4)).setActive(true);
                ((ItemConfigurationStepBinding) CollectionsKt.last((List) arrayList4)).setCompleted(false);
                itemConfiguration2Binding.setDescriptionText(((ItemSide) CollectionsKt.last((List) itemConfigFragment.item.getSides())).getDescription());
                itemConfiguration2Binding.setTabPosition(0);
                itemConfigFragment.closeSize(itemConfiguration2Binding);
                return;
            }
            ShopActivity.INSTANCE.setItemToAdd(null);
            itemConfigFragment.dismiss();
        }
    }

    private final void openSize(ItemConfiguration2Binding binding) {
        float f;
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        binding.sideIndicatorsWrap.clearAnimation();
        Animation animation = this.shakeAnimation;
        if (animation == null) {
            Intrinsics.throwUninitializedPropertyAccessException("shakeAnimation");
            animation = null;
        }
        animation.setAnimationListener(null);
        binding.sideIndicatorsWrap.setVisibility(8);
        this.displayNav = false;
        Translation translation = MainActivity.INSTANCE.get_term_translation("change_size");
        if (translation != null) {
            binding.setConfigTitle(translation.getTranslation());
        } else {
            binding.setConfigTitle(getString(com.example.digitalkiosk.R.string.size_title));
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("medium_size");
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("large_size");
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("xl_size");
        this.sizes.clear();
        if (this.item.getSizes().getXl().getEnabled()) {
            String price = this.item.getSizes().getXl().getPrice();
            float f2 = (price != null ? Float.parseFloat(price) : 0.0f) - this.item.getPrice();
            if (f2 >= 0.0f) {
                StringBuilder sb = new StringBuilder(Marker.ANY_NON_NULL_MARKER);
                ShopActivity shopActivity = this.shopActivity;
                if (shopActivity == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
                    shopActivity = null;
                }
                string5 = sb.append(shopActivity.convertAmountToFormat(f2)).toString();
                f = 0.0f;
            } else {
                StringBuilder sb2 = new StringBuilder("-");
                ShopActivity shopActivity2 = this.shopActivity;
                if (shopActivity2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
                    shopActivity2 = null;
                }
                f = 0.0f;
                string5 = sb2.append(shopActivity2.convertAmountToFormat(f2 * (-1))).toString();
            }
            if (translation4 == null || (string6 = translation4.getTranslation()) == null) {
                string6 = getString(com.example.digitalkiosk.R.string.size_xl);
                Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
            }
            this.sizes.add(new Size("xl", string6, string5));
        } else {
            f = 0.0f;
        }
        if (this.item.getSizes().getLarge().getEnabled()) {
            String price2 = this.item.getSizes().getLarge().getPrice();
            float f3 = (price2 != null ? Float.parseFloat(price2) : f) - this.item.getPrice();
            if (f3 >= f) {
                StringBuilder sb3 = new StringBuilder(Marker.ANY_NON_NULL_MARKER);
                ShopActivity shopActivity3 = this.shopActivity;
                if (shopActivity3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
                    shopActivity3 = null;
                }
                string3 = sb3.append(shopActivity3.convertAmountToFormat(f3)).toString();
            } else {
                StringBuilder sb4 = new StringBuilder("-");
                ShopActivity shopActivity4 = this.shopActivity;
                if (shopActivity4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
                    shopActivity4 = null;
                }
                string3 = sb4.append(shopActivity4.convertAmountToFormat(f3 * (-1))).toString();
            }
            if (translation3 == null || (string4 = translation3.getTranslation()) == null) {
                string4 = getString(com.example.digitalkiosk.R.string.size_large);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            }
            this.sizes.add(new Size("large", string4, string3));
        }
        if (this.item.getSizes().getMedium().getEnabled()) {
            String price3 = this.item.getSizes().getMedium().getPrice();
            float f4 = (price3 != null ? Float.parseFloat(price3) : f) - this.item.getPrice();
            if (f4 >= f) {
                StringBuilder sb5 = new StringBuilder(Marker.ANY_NON_NULL_MARKER);
                ShopActivity shopActivity5 = this.shopActivity;
                if (shopActivity5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
                    shopActivity5 = null;
                }
                string = sb5.append(shopActivity5.convertAmountToFormat(f4)).toString();
            } else {
                StringBuilder sb6 = new StringBuilder("-");
                ShopActivity shopActivity6 = this.shopActivity;
                if (shopActivity6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("shopActivity");
                    shopActivity6 = null;
                }
                string = sb6.append(shopActivity6.convertAmountToFormat(f4 * (-1))).toString();
            }
            if (translation2 == null || (string2 = translation2.getTranslation()) == null) {
                string2 = getString(com.example.digitalkiosk.R.string.size_medium);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            }
            this.sizes.add(new Size(FirebaseAnalytics.Param.MEDIUM, string2, string));
        }
        this.sizeAdpater.notifyDataSetChanged();
        binding.sidesLayout.setVisibility(8);
        binding.sizesLayout.setVisibility(0);
    }

    private final void closeSize(ItemConfiguration2Binding binding) {
        binding.sideIndicatorsWrap.setVisibility(0);
        binding.sidesLayout.setVisibility(0);
        binding.sizesLayout.setVisibility(8);
        Translation translation = MainActivity.INSTANCE.get_term_translation("sides");
        if (translation != null) {
            binding.setConfigTitle(translation.getTranslation());
        } else {
            binding.setConfigTitle(getString(com.example.digitalkiosk.R.string.sides_title));
        }
    }

    public final void setOnSubmitListener(OnSubmitListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.onSubmitListener = listener;
    }
}
