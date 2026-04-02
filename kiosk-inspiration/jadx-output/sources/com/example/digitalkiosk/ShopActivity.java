package com.example.digitalkiosk;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.example.digitalkiosk.adapters.CartAdapter;
import com.example.digitalkiosk.adapters.CategoryAdapter;
import com.example.digitalkiosk.adapters.InnerBannerAdapter;
import com.example.digitalkiosk.adapters.ItemAdapter;
import com.example.digitalkiosk.adapters.SubCategoryAdapter;
import com.example.digitalkiosk.databinding.ActivityShopBinding;
import com.example.digitalkiosk.fragments.CancelOrderFragment;
import com.example.digitalkiosk.fragments.CompleteOrderFragment;
import com.example.digitalkiosk.fragments.InactivityFragment;
import com.example.digitalkiosk.fragments.ItemConfigFragment;
import com.example.digitalkiosk.fragments.ItemExtrasFragment;
import com.example.digitalkiosk.fragments.SidesFragment;
import com.example.digitalkiosk.fragments.VoucherFragment;
import com.example.digitalkiosk.models.BannerSlide;
import com.example.digitalkiosk.models.Cart;
import com.example.digitalkiosk.models.CartItem;
import com.example.digitalkiosk.models.Category;
import com.example.digitalkiosk.models.Currency;
import com.example.digitalkiosk.models.Item;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.ItemSide;
import com.example.digitalkiosk.models.ItemToAdd;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.models.Voucher;
import com.example.digitalkiosk.network.ApiClient;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.helpers.StripeHealthCheckerDefaultConfig;
import com.stripe.stripeterminal.external.callable.Cancelable;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.apache.http.message.TokenParser;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: ShopActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u0000 R2\u00020\u0001:\u0001RB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u000105H\u0014J\b\u00106\u001a\u000203H\u0014J\b\u00107\u001a\u000203H\u0016J\b\u00108\u001a\u000203H\u0014J\b\u00109\u001a\u000203H\u0014J\u0006\u0010:\u001a\u000203J\u000e\u0010;\u001a\u0002032\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@J\u0016\u0010A\u001a\u0002032\u0006\u0010#\u001a\u00020$2\u0006\u0010B\u001a\u00020CJ\u0006\u0010D\u001a\u000203J\u000e\u0010E\u001a\u0002032\u0006\u0010F\u001a\u00020GJ\u000e\u0010H\u001a\u0002032\u0006\u0010I\u001a\u00020\fJ\u000e\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MJ\u0006\u0010N\u001a\u000203J\u0010\u0010O\u001a\u0002032\u0006\u0010P\u001a\u00020=H\u0016J\u0006\u0010Q\u001a\u000203R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000bj\b\u0012\u0004\u0012\u00020\u0010`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u000bj\b\u0012\u0004\u0012\u00020\u0018`\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001b\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u000bj\b\u0012\u0004\u0012\u00020\u001c`\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082.¢\u0006\u0002\n\u0000R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001c\u0010+\u001a\u0004\u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010(\"\u0004\b-\u0010*R\u0011\u0010.\u001a\u00020/¢\u0006\b\n\u0000\u001a\u0004\b0\u00101¨\u0006S"}, d2 = {"Lcom/example/digitalkiosk/ShopActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "binding", "Lcom/example/digitalkiosk/databinding/ActivityShopBinding;", "getBinding", "()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;", "setBinding", "(Lcom/example/digitalkiosk/databinding/ActivityShopBinding;)V", "categories", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Category;", "Lkotlin/collections/ArrayList;", "subCategories", FirebaseAnalytics.Param.ITEMS, "Lcom/example/digitalkiosk/models/Item;", "categoryAdapter", "Lcom/example/digitalkiosk/adapters/CategoryAdapter;", "subCategoryAdapter", "Lcom/example/digitalkiosk/adapters/SubCategoryAdapter;", "itemAdapter", "Lcom/example/digitalkiosk/adapters/ItemAdapter;", "cartItems", "Lcom/example/digitalkiosk/models/CartItem;", "cartAdapter", "Lcom/example/digitalkiosk/adapters/CartAdapter;", "imageList", "Lcom/example/digitalkiosk/models/BannerSlide;", "innerBannerAdapter", "Lcom/example/digitalkiosk/adapters/InnerBannerAdapter;", "sliderHandler", "Landroid/os/Handler;", "fm", "Landroidx/fragment/app/FragmentManager;", "cartIcon", "Landroid/widget/ImageView;", "timer", "Landroid/os/CountDownTimer;", "getTimer", "()Landroid/os/CountDownTimer;", "setTimer", "(Landroid/os/CountDownTimer;)V", "paymentTimer", "getPaymentTimer", "setPaymentTimer", "sliderRunnable", "Ljava/lang/Runnable;", "getSliderRunnable", "()Ljava/lang/Runnable;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onUserInteraction", "onPause", "onStop", "inactivityTimer", "toggleCart", "visible", "", "addToCart", "itemToAdd", "Lcom/example/digitalkiosk/models/ItemToAdd;", "animateCart", "targetView", "Landroid/view/View;", "updateCart", "handleCartResponse", "cart", "Lcom/example/digitalkiosk/models/Cart;", "selectCategory", "category", "convertAmountToFormat", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "itemsUpdated", "onWindowFocusChanged", "hasFocus", "hideSystemUI", "Companion", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShopActivity extends AppCompatActivity {
    private static boolean bag_active;
    private static int bag_added;
    private static Currency currency;
    private static PaymentIntent currentPaymentIntent;
    private static ItemToAdd itemToAdd;
    private static Cancelable paymentCancelable;
    private static Category selectedCategory;
    private static Category selectedSubCategory;
    private static Voucher voucher;
    public ActivityShopBinding binding;
    private CartAdapter cartAdapter;
    private ImageView cartIcon;
    private CategoryAdapter categoryAdapter;
    private FragmentManager fm;
    private ArrayList<BannerSlide> imageList;
    private InnerBannerAdapter innerBannerAdapter;
    private ItemAdapter itemAdapter;
    private CountDownTimer paymentTimer;
    private Handler sliderHandler;
    private SubCategoryAdapter subCategoryAdapter;
    private CountDownTimer timer;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static boolean processing = true;
    private final ArrayList<Category> categories = new ArrayList<>();
    private final ArrayList<Category> subCategories = new ArrayList<>();
    private final ArrayList<Item> items = new ArrayList<>();
    private ArrayList<CartItem> cartItems = new ArrayList<>();
    private final Runnable sliderRunnable = new Runnable() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda6
        @Override // java.lang.Runnable
        public final void run() {
            ShopActivity.sliderRunnable$lambda$0(this.f$0);
        }
    };

    public final ActivityShopBinding getBinding() {
        ActivityShopBinding activityShopBinding = this.binding;
        if (activityShopBinding != null) {
            return activityShopBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(ActivityShopBinding activityShopBinding) {
        Intrinsics.checkNotNullParameter(activityShopBinding, "<set-?>");
        this.binding = activityShopBinding;
    }

    public final CountDownTimer getTimer() {
        return this.timer;
    }

    public final void setTimer(CountDownTimer countDownTimer) {
        this.timer = countDownTimer;
    }

    public final CountDownTimer getPaymentTimer() {
        return this.paymentTimer;
    }

    public final void setPaymentTimer(CountDownTimer countDownTimer) {
        this.paymentTimer = countDownTimer;
    }

    public final Runnable getSliderRunnable() {
        return this.sliderRunnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sliderRunnable$lambda$0(ShopActivity shopActivity) {
        ViewPager2 innerBanner = shopActivity.getBinding().innerBanner;
        Intrinsics.checkNotNullExpressionValue(innerBanner, "innerBanner");
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            innerBanner = shopActivity.getBinding().handicapBanner;
        }
        int currentItem = innerBanner.getCurrentItem();
        ArrayList<BannerSlide> arrayList = shopActivity.imageList;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageList");
            arrayList = null;
        }
        if (currentItem == arrayList.size() - 1) {
            innerBanner.setCurrentItem(0);
        } else {
            innerBanner.setCurrentItem(innerBanner.getCurrentItem() + 1);
        }
    }

    /* JADX INFO: compiled from: ShopActivity.kt */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001c\u00104\u001a\u0004\u0018\u000105X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109¨\u0006:"}, d2 = {"Lcom/example/digitalkiosk/ShopActivity$Companion;", "", "<init>", "()V", "selectedCategory", "Lcom/example/digitalkiosk/models/Category;", "getSelectedCategory", "()Lcom/example/digitalkiosk/models/Category;", "setSelectedCategory", "(Lcom/example/digitalkiosk/models/Category;)V", "selectedSubCategory", "getSelectedSubCategory", "setSelectedSubCategory", "processing", "", "getProcessing", "()Z", "setProcessing", "(Z)V", "bag_active", "getBag_active", "setBag_active", "voucher", "Lcom/example/digitalkiosk/models/Voucher;", "getVoucher", "()Lcom/example/digitalkiosk/models/Voucher;", "setVoucher", "(Lcom/example/digitalkiosk/models/Voucher;)V", "itemToAdd", "Lcom/example/digitalkiosk/models/ItemToAdd;", "getItemToAdd", "()Lcom/example/digitalkiosk/models/ItemToAdd;", "setItemToAdd", "(Lcom/example/digitalkiosk/models/ItemToAdd;)V", "bag_added", "", "getBag_added", "()I", "setBag_added", "(I)V", "paymentCancelable", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "getPaymentCancelable", "()Lcom/stripe/stripeterminal/external/callable/Cancelable;", "setPaymentCancelable", "(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V", "currentPaymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "getCurrentPaymentIntent", "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "setCurrentPaymentIntent", "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V", FirebaseAnalytics.Param.CURRENCY, "Lcom/example/digitalkiosk/models/Currency;", "getCurrency", "()Lcom/example/digitalkiosk/models/Currency;", "setCurrency", "(Lcom/example/digitalkiosk/models/Currency;)V", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Category getSelectedCategory() {
            return ShopActivity.selectedCategory;
        }

        public final void setSelectedCategory(Category category) {
            ShopActivity.selectedCategory = category;
        }

        public final Category getSelectedSubCategory() {
            return ShopActivity.selectedSubCategory;
        }

        public final void setSelectedSubCategory(Category category) {
            ShopActivity.selectedSubCategory = category;
        }

        public final boolean getProcessing() {
            return ShopActivity.processing;
        }

        public final void setProcessing(boolean z) {
            ShopActivity.processing = z;
        }

        public final boolean getBag_active() {
            return ShopActivity.bag_active;
        }

        public final void setBag_active(boolean z) {
            ShopActivity.bag_active = z;
        }

        public final Voucher getVoucher() {
            return ShopActivity.voucher;
        }

        public final void setVoucher(Voucher voucher) {
            ShopActivity.voucher = voucher;
        }

        public final ItemToAdd getItemToAdd() {
            return ShopActivity.itemToAdd;
        }

        public final void setItemToAdd(ItemToAdd itemToAdd) {
            ShopActivity.itemToAdd = itemToAdd;
        }

        public final int getBag_added() {
            return ShopActivity.bag_added;
        }

        public final void setBag_added(int i) {
            ShopActivity.bag_added = i;
        }

        public final Cancelable getPaymentCancelable() {
            return ShopActivity.paymentCancelable;
        }

        public final void setPaymentCancelable(Cancelable cancelable) {
            ShopActivity.paymentCancelable = cancelable;
        }

        public final PaymentIntent getCurrentPaymentIntent() {
            return ShopActivity.currentPaymentIntent;
        }

        public final void setCurrentPaymentIntent(PaymentIntent paymentIntent) {
            ShopActivity.currentPaymentIntent = paymentIntent;
        }

        public final Currency getCurrency() {
            return ShopActivity.currency;
        }

        public final void setCurrency(Currency currency) {
            ShopActivity.currency = currency;
        }
    }

    /* JADX WARN: Type inference failed for: r2v15, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v16, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v9, types: [com.example.digitalkiosk.ShopActivity$onCreate$5] */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        if (Intrinsics.areEqual(OptionActivity.INSTANCE.getOrder_type(), "take-away") || Intrinsics.areEqual(OptionActivity.INSTANCE.getOrder_type(), "pick-up")) {
            bag_added = 1;
        } else {
            bag_added = 0;
        }
        FragmentManager fragmentManager = null;
        voucher = null;
        selectedCategory = null;
        selectedSubCategory = null;
        super.onCreate(savedInstanceState);
        hideSystemUI();
        setBinding((ActivityShopBinding) DataBindingUtil.setContentView(this, R.layout.activity_shop));
        this.cartIcon = getBinding().cartIcon;
        KioskSetting kioskSetting = OptionActivity.INSTANCE.getKioskSetting();
        if (kioskSetting != null && kioskSetting.getSandbox_mode()) {
            getBinding().header.setVisibility(8);
            getBinding().testMode.setVisibility(0);
        }
        this.sliderHandler = new Handler();
        this.imageList = new ArrayList<>();
        ArrayList<BannerSlide> arrayList = this.imageList;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageList");
            arrayList = null;
        }
        InnerBannerAdapter innerBannerAdapter = new InnerBannerAdapter(arrayList);
        this.innerBannerAdapter = innerBannerAdapter;
        innerBannerAdapter.setOnClickListener(new InnerBannerAdapter.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.1
            @Override // com.example.digitalkiosk.adapters.InnerBannerAdapter.OnClickListener
            public void onClick(int category) {
                Object next;
                if (category != 0) {
                    Iterator it = ShopActivity.this.categories.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        } else {
                            next = it.next();
                            if (((Category) next).getId() == category) {
                                break;
                            }
                        }
                    }
                    Category category2 = (Category) next;
                    if (category2 != null) {
                        ShopActivity.this.selectCategory(category2);
                    }
                }
            }
        });
        if (OptionActivity.INSTANCE.getHandicap_on()) {
            ViewPager2 viewPager2 = getBinding().handicapBanner;
            InnerBannerAdapter innerBannerAdapter2 = this.innerBannerAdapter;
            if (innerBannerAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("innerBannerAdapter");
                innerBannerAdapter2 = null;
            }
            viewPager2.setAdapter(innerBannerAdapter2);
            ApiClient.INSTANCE.handicap_banners$app_release(HomeActivity.INSTANCE.getSelected_language() > 0 ? Integer.valueOf(HomeActivity.INSTANCE.getSelected_language()) : null, new Callback<ArrayList<BannerSlide>>() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.2
                @Override // retrofit2.Callback
                public void onFailure(Call<ArrayList<BannerSlide>> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ArrayList<BannerSlide>> call, Response<ArrayList<BannerSlide>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ArrayList<BannerSlide> arrayListBody = response.body();
                    if (arrayListBody != null) {
                        ArrayList arrayList2 = ShopActivity.this.imageList;
                        InnerBannerAdapter innerBannerAdapter3 = null;
                        if (arrayList2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageList");
                            arrayList2 = null;
                        }
                        arrayList2.clear();
                        ArrayList arrayList3 = ShopActivity.this.imageList;
                        if (arrayList3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageList");
                            arrayList3 = null;
                        }
                        arrayList3.addAll(arrayListBody);
                        InnerBannerAdapter innerBannerAdapter4 = ShopActivity.this.innerBannerAdapter;
                        if (innerBannerAdapter4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("innerBannerAdapter");
                        } else {
                            innerBannerAdapter3 = innerBannerAdapter4;
                        }
                        innerBannerAdapter3.notifyDataSetChanged();
                        ShopActivity.this.getBinding().handicapIndicators.setViewPager(ShopActivity.this.getBinding().handicapBanner);
                        ViewPager2 viewPager22 = ShopActivity.this.getBinding().handicapBanner;
                        final ShopActivity shopActivity = ShopActivity.this;
                        viewPager22.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$2$onResponse$1
                            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                            public void onPageSelected(int position) {
                                super.onPageSelected(position);
                                Handler handler = shopActivity.sliderHandler;
                                Handler handler2 = null;
                                if (handler == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("sliderHandler");
                                    handler = null;
                                }
                                handler.removeCallbacks(shopActivity.getSliderRunnable());
                                Handler handler3 = shopActivity.sliderHandler;
                                if (handler3 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("sliderHandler");
                                } else {
                                    handler2 = handler3;
                                }
                                handler2.postDelayed(shopActivity.getSliderRunnable(), 3000L);
                            }
                        });
                    }
                }
            });
        } else {
            ViewPager2 viewPager22 = getBinding().innerBanner;
            InnerBannerAdapter innerBannerAdapter3 = this.innerBannerAdapter;
            if (innerBannerAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("innerBannerAdapter");
                innerBannerAdapter3 = null;
            }
            viewPager22.setAdapter(innerBannerAdapter3);
            ApiClient.INSTANCE.inner_banners$app_release(HomeActivity.INSTANCE.getSelected_language() > 0 ? Integer.valueOf(HomeActivity.INSTANCE.getSelected_language()) : null, new Callback<ArrayList<BannerSlide>>() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.3
                @Override // retrofit2.Callback
                public void onFailure(Call<ArrayList<BannerSlide>> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ArrayList<BannerSlide>> call, Response<ArrayList<BannerSlide>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    ArrayList<BannerSlide> arrayListBody = response.body();
                    if (arrayListBody != null) {
                        ArrayList arrayList2 = ShopActivity.this.imageList;
                        InnerBannerAdapter innerBannerAdapter4 = null;
                        if (arrayList2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageList");
                            arrayList2 = null;
                        }
                        arrayList2.clear();
                        ArrayList arrayList3 = ShopActivity.this.imageList;
                        if (arrayList3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("imageList");
                            arrayList3 = null;
                        }
                        arrayList3.addAll(arrayListBody);
                        InnerBannerAdapter innerBannerAdapter5 = ShopActivity.this.innerBannerAdapter;
                        if (innerBannerAdapter5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("innerBannerAdapter");
                        } else {
                            innerBannerAdapter4 = innerBannerAdapter5;
                        }
                        innerBannerAdapter4.notifyDataSetChanged();
                        ShopActivity.this.getBinding().innerIndicators.setViewPager(ShopActivity.this.getBinding().innerBanner);
                        ViewPager2 viewPager23 = ShopActivity.this.getBinding().innerBanner;
                        final ShopActivity shopActivity = ShopActivity.this;
                        viewPager23.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$3$onResponse$1
                            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                            public void onPageSelected(int position) {
                                super.onPageSelected(position);
                                Handler handler = shopActivity.sliderHandler;
                                Handler handler2 = null;
                                if (handler == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("sliderHandler");
                                    handler = null;
                                }
                                handler.removeCallbacks(shopActivity.getSliderRunnable());
                                Handler handler3 = shopActivity.sliderHandler;
                                if (handler3 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("sliderHandler");
                                } else {
                                    handler2 = handler3;
                                }
                                handler2.postDelayed(shopActivity.getSliderRunnable(), 3000L);
                            }
                        });
                    }
                }
            });
        }
        ShopActivity shopActivity = this;
        final Animation animationLoadAnimation = AnimationUtils.loadAnimation(shopActivity, R.anim.shake);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Log.d("TimerTesting", "Your way Animation Run");
                ShopActivity.this.getBinding().subCatButtons.startAnimation(animationLoadAnimation);
            }
        });
        new CountDownTimer() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.5
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3000L, 1000L);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                ShopActivity.this.getBinding().subCatButtons.startAnimation(animationLoadAnimation);
            }
        }.start();
        getBinding().setHandicapOn(Boolean.valueOf(OptionActivity.INSTANCE.getHandicap_on()));
        RecyclerView categoriesButtons = getBinding().categoriesButtons;
        Intrinsics.checkNotNullExpressionValue(categoriesButtons, "categoriesButtons");
        categoriesButtons.setLayoutManager(new LinearLayoutManager(shopActivity));
        CategoryAdapter categoryAdapter = new CategoryAdapter(this.categories, shopActivity);
        this.categoryAdapter = categoryAdapter;
        categoriesButtons.setAdapter(categoryAdapter);
        RecyclerView subCatButtons = getBinding().subCatButtons;
        Intrinsics.checkNotNullExpressionValue(subCatButtons, "subCatButtons");
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(shopActivity);
        flexboxLayoutManager.setFlexWrap(1);
        flexboxLayoutManager.setJustifyContent(2);
        subCatButtons.setLayoutManager(flexboxLayoutManager);
        SubCategoryAdapter subCategoryAdapter = new SubCategoryAdapter(this.subCategories);
        this.subCategoryAdapter = subCategoryAdapter;
        subCatButtons.setAdapter(subCategoryAdapter);
        this.fm = getSupportFragmentManager();
        RecyclerView itemsButtons = getBinding().itemsButtons;
        Intrinsics.checkNotNullExpressionValue(itemsButtons, "itemsButtons");
        itemsButtons.setLayoutManager(new GridLayoutManager(shopActivity, 3));
        Translation translation = MainActivity.INSTANCE.get_term_translation("want_something_more");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = "Want Something More?";
        if (translation != null) {
            objectRef.element = translation.getTranslation();
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("coffee_ice_cream_on_side");
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = "Coffee or Ice Cream on the Side?";
        if (translation2 != null) {
            objectRef2.element = translation2.getTranslation();
        }
        ArrayList<Item> arrayList2 = this.items;
        FragmentManager fragmentManager2 = this.fm;
        if (fragmentManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fm");
        } else {
            fragmentManager = fragmentManager2;
        }
        ItemAdapter itemAdapter = new ItemAdapter(arrayList2, shopActivity, fragmentManager);
        this.itemAdapter = itemAdapter;
        itemAdapter.setOnClickListener(new ItemAdapter.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.6
            @Override // com.example.digitalkiosk.adapters.ItemAdapter.OnClickListener
            public void onClick(final Item item, View itemImage) {
                Intrinsics.checkNotNullParameter(item, "item");
                Intrinsics.checkNotNullParameter(itemImage, "itemImage");
                Log.d("API", item.getType());
                if (!item.getDetails_present()) {
                    ShopActivity.INSTANCE.setItemToAdd(new ItemToAdd(item.getId(), item.getType(), null, null, null, null, 60, null));
                    ItemToAdd itemToAdd2 = ShopActivity.INSTANCE.getItemToAdd();
                    if (itemToAdd2 != null) {
                        ShopActivity shopActivity2 = ShopActivity.this;
                        shopActivity2.addToCart(itemToAdd2);
                        ImageView imageView = shopActivity2.cartIcon;
                        if (imageView == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("cartIcon");
                            imageView = null;
                        }
                        RelativeLayout expandCartIcon = shopActivity2.getBinding().expandCartIcon;
                        Intrinsics.checkNotNullExpressionValue(expandCartIcon, "expandCartIcon");
                        shopActivity2.animateCart(imageView, expandCartIcon);
                        return;
                    }
                    return;
                }
                ApiClient apiClient = ApiClient.INSTANCE;
                int id = item.getId();
                String type = item.getType();
                Integer numValueOf = Integer.valueOf(HomeActivity.INSTANCE.getSelected_language());
                final ShopActivity shopActivity3 = ShopActivity.this;
                final Ref.ObjectRef<String> objectRef3 = objectRef;
                final Ref.ObjectRef<String> objectRef4 = objectRef2;
                apiClient.get_item_details$app_release(id, type, numValueOf, new Callback<ItemDetails>() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$6$onClick$2
                    @Override // retrofit2.Callback
                    public void onFailure(Call<ItemDetails> call, Throwable t) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(Call<ItemDetails> call, Response<ItemDetails> response) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        ItemDetails itemDetailsBody = response.body();
                        Intrinsics.checkNotNull(itemDetailsBody);
                        final ItemDetails itemDetails = itemDetailsBody;
                        ArrayList arrayList3 = new ArrayList();
                        Iterator<ItemSide> it = itemDetails.getSides().iterator();
                        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                        while (it.hasNext()) {
                            Intrinsics.checkNotNullExpressionValue(it.next(), "next(...)");
                            arrayList3.add(new ArrayList());
                        }
                        ShopActivity.INSTANCE.setItemToAdd(new ItemToAdd(item.getId(), item.getType(), new ArrayList(), new ArrayList(), "", arrayList3));
                        Log.d("API", itemDetails.toString());
                        FragmentManager fragmentManager3 = null;
                        if (itemDetails.getExtras().size() > 0) {
                            ItemExtrasFragment itemExtrasFragment = new ItemExtrasFragment(itemDetails, shopActivity3.getTimer());
                            itemExtrasFragment.setCancelable(false);
                            FragmentManager fragmentManager4 = shopActivity3.fm;
                            if (fragmentManager4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("fm");
                            } else {
                                fragmentManager3 = fragmentManager4;
                            }
                            itemExtrasFragment.show(fragmentManager3, "Extras Fragment");
                            final ShopActivity shopActivity4 = shopActivity3;
                            final Ref.ObjectRef<String> objectRef5 = objectRef3;
                            final Ref.ObjectRef<String> objectRef6 = objectRef4;
                            itemExtrasFragment.setOnSubmitListener(new ItemExtrasFragment.OnSubmitListener() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$6$onClick$2$onResponse$1
                                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
                                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                 */
                                @Override // com.example.digitalkiosk.fragments.ItemExtrasFragment.OnSubmitListener
                                public void onSubmit() {
                                    FragmentManager fragmentManager5 = null;
                                    ImageView imageView2 = null;
                                    if (itemDetails.getSides().size() > 0 || itemDetails.getSizes().getMedium().getEnabled() || itemDetails.getSizes().getLarge().getEnabled() || itemDetails.getSizes().getXl().getEnabled()) {
                                        ItemConfigFragment itemConfigFragment = new ItemConfigFragment(itemDetails, shopActivity4.getTimer());
                                        itemConfigFragment.setCancelable(false);
                                        FragmentManager fragmentManager6 = shopActivity4.fm;
                                        if (fragmentManager6 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("fm");
                                        } else {
                                            fragmentManager5 = fragmentManager6;
                                        }
                                        itemConfigFragment.show(fragmentManager5, "Config Fragment");
                                        final ItemDetails itemDetails2 = itemDetails;
                                        final Ref.ObjectRef<String> objectRef7 = objectRef5;
                                        final ShopActivity shopActivity5 = shopActivity4;
                                        final Ref.ObjectRef<String> objectRef8 = objectRef6;
                                        itemConfigFragment.setOnSubmitListener(new ItemConfigFragment.OnSubmitListener() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1
                                            @Override // com.example.digitalkiosk.fragments.ItemConfigFragment.OnSubmitListener
                                            public void onSubmit() {
                                                ItemToAdd itemToAdd3 = ShopActivity.INSTANCE.getItemToAdd();
                                                FragmentManager fragmentManager7 = null;
                                                if (itemToAdd3 != null) {
                                                    ShopActivity shopActivity6 = shopActivity5;
                                                    shopActivity6.addToCart(itemToAdd3);
                                                    ImageView imageView3 = shopActivity6.cartIcon;
                                                    if (imageView3 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("cartIcon");
                                                        imageView3 = null;
                                                    }
                                                    RelativeLayout expandCartIcon2 = shopActivity6.getBinding().expandCartIcon;
                                                    Intrinsics.checkNotNullExpressionValue(expandCartIcon2, "expandCartIcon");
                                                    shopActivity6.animateCart(imageView3, expandCartIcon2);
                                                }
                                                if (itemDetails2.getAttributes().getWant_more() != null) {
                                                    SidesFragment sidesFragment = new SidesFragment(Integer.parseInt(itemDetails2.getAttributes().getWant_more()), objectRef7.element, itemDetails2.getAttributes().getCoffee_icecream(), shopActivity5.getTimer());
                                                    FragmentManager fragmentManager8 = shopActivity5.fm;
                                                    if (fragmentManager8 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("fm");
                                                    } else {
                                                        fragmentManager7 = fragmentManager8;
                                                    }
                                                    sidesFragment.show(fragmentManager7, "Want More");
                                                    return;
                                                }
                                                if (itemDetails2.getAttributes().getCoffee_icecream() != null) {
                                                    SidesFragment sidesFragment2 = new SidesFragment(Integer.parseInt(itemDetails2.getAttributes().getCoffee_icecream()), objectRef8.element, null, shopActivity5.getTimer());
                                                    FragmentManager fragmentManager9 = shopActivity5.fm;
                                                    if (fragmentManager9 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("fm");
                                                    } else {
                                                        fragmentManager7 = fragmentManager9;
                                                    }
                                                    sidesFragment2.show(fragmentManager7, "Coffee Icecream");
                                                }
                                            }
                                        });
                                        return;
                                    }
                                    ItemToAdd itemToAdd3 = ShopActivity.INSTANCE.getItemToAdd();
                                    if (itemToAdd3 != null) {
                                        ShopActivity shopActivity6 = shopActivity4;
                                        shopActivity6.addToCart(itemToAdd3);
                                        ImageView imageView3 = shopActivity6.cartIcon;
                                        if (imageView3 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("cartIcon");
                                        } else {
                                            imageView2 = imageView3;
                                        }
                                        RelativeLayout expandCartIcon2 = shopActivity6.getBinding().expandCartIcon;
                                        Intrinsics.checkNotNullExpressionValue(expandCartIcon2, "expandCartIcon");
                                        shopActivity6.animateCart(imageView2, expandCartIcon2);
                                    }
                                }
                            });
                            return;
                        }
                        if (itemDetails.getSides().size() > 0 || itemDetails.getSizes().getMedium().getEnabled() || itemDetails.getSizes().getLarge().getEnabled() || itemDetails.getSizes().getXl().getEnabled()) {
                            ItemConfigFragment itemConfigFragment = new ItemConfigFragment(itemDetails, shopActivity3.getTimer());
                            itemConfigFragment.setCancelable(false);
                            FragmentManager fragmentManager5 = shopActivity3.fm;
                            if (fragmentManager5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("fm");
                            } else {
                                fragmentManager3 = fragmentManager5;
                            }
                            itemConfigFragment.show(fragmentManager3, "Config Fragment");
                            final Ref.ObjectRef<String> objectRef7 = objectRef3;
                            final ShopActivity shopActivity5 = shopActivity3;
                            final Ref.ObjectRef<String> objectRef8 = objectRef4;
                            itemConfigFragment.setOnSubmitListener(new ItemConfigFragment.OnSubmitListener() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$6$onClick$2$onResponse$2
                                @Override // com.example.digitalkiosk.fragments.ItemConfigFragment.OnSubmitListener
                                public void onSubmit() {
                                    ItemToAdd itemToAdd3 = ShopActivity.INSTANCE.getItemToAdd();
                                    FragmentManager fragmentManager6 = null;
                                    if (itemToAdd3 != null) {
                                        ShopActivity shopActivity6 = shopActivity5;
                                        shopActivity6.addToCart(itemToAdd3);
                                        ImageView imageView2 = shopActivity6.cartIcon;
                                        if (imageView2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("cartIcon");
                                            imageView2 = null;
                                        }
                                        RelativeLayout expandCartIcon2 = shopActivity6.getBinding().expandCartIcon;
                                        Intrinsics.checkNotNullExpressionValue(expandCartIcon2, "expandCartIcon");
                                        shopActivity6.animateCart(imageView2, expandCartIcon2);
                                    }
                                    if (itemDetails.getAttributes().getWant_more() != null) {
                                        SidesFragment sidesFragment = new SidesFragment(Integer.parseInt(itemDetails.getAttributes().getWant_more()), objectRef7.element, itemDetails.getAttributes().getCoffee_icecream(), shopActivity5.getTimer());
                                        FragmentManager fragmentManager7 = shopActivity5.fm;
                                        if (fragmentManager7 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("fm");
                                        } else {
                                            fragmentManager6 = fragmentManager7;
                                        }
                                        sidesFragment.show(fragmentManager6, "Want More");
                                        return;
                                    }
                                    if (itemDetails.getAttributes().getCoffee_icecream() != null) {
                                        SidesFragment sidesFragment2 = new SidesFragment(Integer.parseInt(itemDetails.getAttributes().getCoffee_icecream()), objectRef8.element, null, shopActivity5.getTimer());
                                        FragmentManager fragmentManager8 = shopActivity5.fm;
                                        if (fragmentManager8 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("fm");
                                        } else {
                                            fragmentManager6 = fragmentManager8;
                                        }
                                        sidesFragment2.show(fragmentManager6, "Coffee Icecream");
                                    }
                                }
                            });
                        }
                    }
                });
            }
        });
        itemsButtons.setAdapter(this.itemAdapter);
        CategoryAdapter categoryAdapter2 = this.categoryAdapter;
        if (categoryAdapter2 != null) {
            categoryAdapter2.setOnClickListener(new CategoryAdapter.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.7
                @Override // com.example.digitalkiosk.adapters.CategoryAdapter.OnClickListener
                public void onClick(Category model) {
                    Intrinsics.checkNotNullParameter(model, "model");
                    ShopActivity.this.selectCategory(model);
                }
            });
        }
        SubCategoryAdapter subCategoryAdapter2 = this.subCategoryAdapter;
        if (subCategoryAdapter2 != null) {
            subCategoryAdapter2.setOnClickListener(new SubCategoryAdapter.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.8
                @Override // com.example.digitalkiosk.adapters.SubCategoryAdapter.OnClickListener
                public void onClick(Category model) {
                    if (ShopActivity.INSTANCE.getProcessing() || Intrinsics.areEqual(model, ShopActivity.INSTANCE.getSelectedSubCategory())) {
                        return;
                    }
                    ShopActivity.INSTANCE.setSelectedSubCategory(model);
                    SubCategoryAdapter subCategoryAdapter3 = ShopActivity.this.subCategoryAdapter;
                    if (subCategoryAdapter3 != null) {
                        subCategoryAdapter3.notifyDataSetChanged();
                    }
                    Category selectedCategory2 = model == null ? ShopActivity.INSTANCE.getSelectedCategory() : ShopActivity.INSTANCE.getSelectedSubCategory();
                    if (selectedCategory2 == null) {
                        ShopActivity.this.items.clear();
                        ShopActivity.this.itemsUpdated();
                        return;
                    }
                    ShopActivity.INSTANCE.setProcessing(true);
                    ApiClient apiClient = ApiClient.INSTANCE;
                    int id = selectedCategory2.getId();
                    int selected_language = HomeActivity.INSTANCE.getSelected_language();
                    String id2 = TimeZone.getDefault().getID();
                    Intrinsics.checkNotNullExpressionValue(id2, "getID(...)");
                    final ShopActivity shopActivity2 = ShopActivity.this;
                    apiClient.get_category_items$app_release(id, selected_language, id2, new Callback<ArrayList<Item>>() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$8$onClick$1
                        @Override // retrofit2.Callback
                        public void onFailure(Call<ArrayList<Item>> call, Throwable t) {
                            Intrinsics.checkNotNullParameter(call, "call");
                            Intrinsics.checkNotNullParameter(t, "t");
                        }

                        @Override // retrofit2.Callback
                        public void onResponse(Call<ArrayList<Item>> call, Response<ArrayList<Item>> response) {
                            Intrinsics.checkNotNullParameter(call, "call");
                            Intrinsics.checkNotNullParameter(response, "response");
                            shopActivity2.items.clear();
                            ArrayList arrayList3 = shopActivity2.items;
                            ArrayList<Item> arrayListBody = response.body();
                            Intrinsics.checkNotNull(arrayListBody);
                            arrayList3.addAll(arrayListBody);
                            shopActivity2.itemsUpdated();
                            ShopActivity.INSTANCE.setProcessing(false);
                        }
                    });
                }
            });
        }
        ApiClient.INSTANCE.kiosk_settings$app_release(new Callback<KioskSetting>() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.9
            @Override // retrofit2.Callback
            public void onFailure(Call<KioskSetting> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<KioskSetting> call, Response<KioskSetting> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                KioskSetting kioskSettingBody = response.body();
                Intrinsics.checkNotNull(kioskSettingBody);
                KioskSetting kioskSetting2 = kioskSettingBody;
                ShopActivity.this.getBinding().setKiosksetting(kioskSetting2);
                ShopActivity.INSTANCE.setCurrency(kioskSetting2.getCurrency());
                ShopActivity.INSTANCE.setBag_active(kioskSetting2.getBag_active());
                MainActivity.INSTANCE.setPrintLines(kioskSetting2.getPrinter_lines());
                ApiClient apiClient = ApiClient.INSTANCE;
                int selected_language = HomeActivity.INSTANCE.getSelected_language();
                final ShopActivity shopActivity2 = ShopActivity.this;
                apiClient.get_categories$app_release(selected_language, new Callback<ArrayList<Category>>() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$9$onResponse$1
                    @Override // retrofit2.Callback
                    public void onFailure(Call<ArrayList<Category>> call2, Throwable t) {
                        Intrinsics.checkNotNullParameter(call2, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(Call<ArrayList<Category>> call2, Response<ArrayList<Category>> response2) {
                        Intrinsics.checkNotNullParameter(call2, "call");
                        Intrinsics.checkNotNullParameter(response2, "response");
                        shopActivity2.categories.clear();
                        ArrayList arrayList3 = shopActivity2.categories;
                        ArrayList<Category> arrayListBody = response2.body();
                        Intrinsics.checkNotNull(arrayListBody);
                        arrayList3.addAll(arrayListBody);
                        CategoryAdapter categoryAdapter3 = shopActivity2.categoryAdapter;
                        if (categoryAdapter3 != null) {
                            categoryAdapter3.notifyDataSetChanged();
                        }
                    }
                });
                ApiClient apiClient2 = ApiClient.INSTANCE;
                int selected_language2 = HomeActivity.INSTANCE.getSelected_language();
                String id = TimeZone.getDefault().getID();
                Intrinsics.checkNotNullExpressionValue(id, "getID(...)");
                final ShopActivity shopActivity3 = ShopActivity.this;
                apiClient2.get_most_selling_items$app_release(selected_language2, id, new Callback<ArrayList<Item>>() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$9$onResponse$2
                    @Override // retrofit2.Callback
                    public void onResponse(Call<ArrayList<Item>> call2, Response<ArrayList<Item>> response2) {
                        Intrinsics.checkNotNullParameter(call2, "call");
                        Intrinsics.checkNotNullParameter(response2, "response");
                        shopActivity3.items.clear();
                        ArrayList arrayList3 = shopActivity3.items;
                        ArrayList<Item> arrayListBody = response2.body();
                        Intrinsics.checkNotNull(arrayListBody);
                        arrayList3.addAll(arrayListBody);
                        shopActivity3.itemsUpdated();
                        ShopActivity.INSTANCE.setProcessing(false);
                    }

                    @Override // retrofit2.Callback
                    public void onFailure(Call<ArrayList<Item>> call2, Throwable t) {
                        Intrinsics.checkNotNullParameter(call2, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                        Log.d("API", String.valueOf(t.getMessage()));
                    }
                });
            }
        });
        getBinding().setItemsTitle(MainActivity.INSTANCE.get_term_translation("most_selling"));
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("your_order");
        if (translation3 != null) {
            getBinding().cartYourOrder.setText(translation3.getTranslation());
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        getBinding().expandCart.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShopActivity.onCreate$lambda$1(this.f$0, booleanRef, view);
            }
        });
        getBinding().expandCartIcon.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShopActivity.onCreate$lambda$2(this.f$0, booleanRef, view);
            }
        });
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("cancel_order");
        if (translation4 != null) {
            getBinding().cancelOrder.setText(translation4.getTranslation());
        }
        getBinding().cancelOrder.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShopActivity.onCreate$lambda$3(this.f$0, view);
            }
        });
        CartAdapter cartAdapter = new CartAdapter(this.cartItems, shopActivity);
        this.cartAdapter = cartAdapter;
        cartAdapter.setOnRemoveListener(new CartAdapter.OnRemoveListener() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.13
            @Override // com.example.digitalkiosk.adapters.CartAdapter.OnRemoveListener
            public void onRemove(CartItem model) {
                int iIntValue;
                Intrinsics.checkNotNullParameter(model, "model");
                if (ShopActivity.INSTANCE.getVoucher() != null) {
                    Voucher voucher2 = ShopActivity.INSTANCE.getVoucher();
                    Integer numValueOf = voucher2 != null ? Integer.valueOf(voucher2.getId()) : null;
                    Intrinsics.checkNotNull(numValueOf);
                    iIntValue = numValueOf.intValue();
                } else {
                    iIntValue = 0;
                }
                ApiClient apiClient = ApiClient.INSTANCE;
                int id = model.getId();
                int selected_language = HomeActivity.INSTANCE.getSelected_language();
                final ShopActivity shopActivity2 = ShopActivity.this;
                apiClient.remove_from_cart$app_release(id, iIntValue, selected_language, new Callback<Cart>() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$13$onRemove$1
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
                        shopActivity2.handleCartResponse(cartBody);
                    }
                });
            }
        });
        getBinding().cart.setAdapter(this.cartAdapter);
        getBinding().cart.setLayoutManager(new LinearLayoutManager(shopActivity));
        Translation translation5 = MainActivity.INSTANCE.get_term_translation("complete_order");
        if (translation5 != null) {
            getBinding().acceptOrder.setText(translation5.getTranslation());
        }
        Translation translation6 = MainActivity.INSTANCE.get_term_translation("footer_back");
        if (translation6 != null) {
            getBinding().backButton.setText(translation6.getTranslation());
        }
        getBinding().backButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShopActivity.onCreate$lambda$4(this.f$0, view);
            }
        });
        Translation translation7 = MainActivity.INSTANCE.get_term_translation("voucher");
        if (translation7 != null) {
            getBinding().voucherButton.setText(translation7.getTranslation());
        }
        getBinding().voucherButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShopActivity.onCreate$lambda$5(this.f$0, view);
            }
        });
        getBinding().handicapButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShopActivity.onCreate$lambda$6(this.f$0, view);
            }
        });
        updateCart();
        this.timer = new CountDownTimer() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.17
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
            }

            {
                super(StripeHealthCheckerDefaultConfig.ONLINE_STABLE_RETRY_DELAY_MS, 1000L);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.os.CountDownTimer
            public void onFinish() {
                CountDownTimer timer = ShopActivity.this.getTimer();
                InactivityFragment inactivityFragment = timer != null ? new InactivityFragment(timer, false, 2, 0 == true ? 1 : 0) : null;
                if (inactivityFragment != null) {
                    inactivityFragment.setCancelable(false);
                    FragmentTransaction fragmentTransactionBeginTransaction = ShopActivity.this.getSupportFragmentManager().beginTransaction();
                    Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
                    inactivityFragment.show(fragmentTransactionBeginTransaction, "Inactivity Warning");
                }
            }
        };
        this.paymentTimer = new CountDownTimer() { // from class: com.example.digitalkiosk.ShopActivity.onCreate.18
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
            }

            {
                super(180000L, 1000L);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                CountDownTimer paymentTimer = ShopActivity.this.getPaymentTimer();
                InactivityFragment inactivityFragment = paymentTimer != null ? new InactivityFragment(paymentTimer, true) : null;
                if (inactivityFragment != null) {
                    inactivityFragment.setCancelable(false);
                    FragmentTransaction fragmentTransactionBeginTransaction = ShopActivity.this.getSupportFragmentManager().beginTransaction();
                    Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
                    inactivityFragment.show(fragmentTransactionBeginTransaction, "Inactivity Warning");
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(ShopActivity shopActivity, Ref.BooleanRef booleanRef, View view) {
        shopActivity.toggleCart(booleanRef.element);
        booleanRef.element = !booleanRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$2(ShopActivity shopActivity, Ref.BooleanRef booleanRef, View view) {
        shopActivity.toggleCart(booleanRef.element);
        booleanRef.element = !booleanRef.element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$3(ShopActivity shopActivity, View view) {
        CancelOrderFragment cancelOrderFragment = new CancelOrderFragment(shopActivity.timer);
        FragmentManager fragmentManager = shopActivity.fm;
        if (fragmentManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fm");
            fragmentManager = null;
        }
        cancelOrderFragment.show(fragmentManager, "Cancel Order Prompt");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$4(ShopActivity shopActivity, View view) {
        CountDownTimer countDownTimer = shopActivity.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        shopActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$5(final ShopActivity shopActivity, View view) {
        VoucherFragment voucherFragment = new VoucherFragment(shopActivity.timer);
        voucherFragment.setCancelable(false);
        FragmentManager fragmentManager = shopActivity.fm;
        if (fragmentManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fm");
            fragmentManager = null;
        }
        voucherFragment.show(fragmentManager, "Voucher Dialog");
        voucherFragment.setOnVoucherApplied(new VoucherFragment.OnVoucherApplied() { // from class: com.example.digitalkiosk.ShopActivity$onCreate$15$1
            @Override // com.example.digitalkiosk.fragments.VoucherFragment.OnVoucherApplied
            public void onApply() {
                this.this$0.updateCart();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$6(ShopActivity shopActivity, View view) {
        CountDownTimer countDownTimer = shopActivity.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        OptionActivity.INSTANCE.setHandicap_on(!OptionActivity.INSTANCE.getHandicap_on());
        Intent intent = shopActivity.getIntent();
        shopActivity.finish();
        shopActivity.startActivity(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        inactivityTimer();
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        super.onUserInteraction();
        inactivityTimer();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.paymentTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        super.onPause();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.paymentTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        super.onStop();
    }

    public final void inactivityTimer() {
        this.fm = getSupportFragmentManager();
        CountDownTimer countDownTimer = this.timer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.timer;
        if (countDownTimer2 != null) {
            countDownTimer2.start();
        }
    }

    public final void toggleCart(boolean visible) {
        if (!visible) {
            getBinding().cart.setVisibility(0);
            getBinding().arrowDown.setVisibility(0);
            getBinding().arrowUp.setVisibility(8);
        } else {
            getBinding().cart.setVisibility(8);
            getBinding().arrowUp.setVisibility(0);
            getBinding().arrowDown.setVisibility(8);
        }
    }

    public final void addToCart(ItemToAdd itemToAdd2) {
        int iIntValue;
        Intrinsics.checkNotNullParameter(itemToAdd2, "itemToAdd");
        Voucher voucher2 = voucher;
        if (voucher2 != null) {
            Integer numValueOf = voucher2 != null ? Integer.valueOf(voucher2.getId()) : null;
            Intrinsics.checkNotNull(numValueOf);
            iIntValue = numValueOf.intValue();
        } else {
            iIntValue = 0;
        }
        ApiClient.INSTANCE.add_to_cart$app_release(itemToAdd2, iIntValue, HomeActivity.INSTANCE.getSelected_language(), new Callback<Cart>() { // from class: com.example.digitalkiosk.ShopActivity.addToCart.1
            @Override // retrofit2.Callback
            public void onResponse(Call<Cart> call, Response<Cart> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                Cart cartBody = response.body();
                Intrinsics.checkNotNull(cartBody);
                ShopActivity.this.handleCartResponse(cartBody);
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<Cart> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                Log.d("API", String.valueOf(t.getMessage()));
            }
        });
    }

    public final void animateCart(final ImageView cartIcon, View targetView) {
        Intrinsics.checkNotNullParameter(cartIcon, "cartIcon");
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        cartIcon.getLocationOnScreen(new int[2]);
        targetView.getLocationOnScreen(new int[2]);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, r0[0] - r1[0], 0.0f, r0[1] - r1[1]);
        translateAnimation.setDuration(800L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.example.digitalkiosk.ShopActivity.animateCart.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                cartIcon.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                cartIcon.setVisibility(8);
            }
        });
        cartIcon.startAnimation(translateAnimation);
    }

    public final void updateCart() {
        int iIntValue;
        Log.d("API", "Cart Called");
        Voucher voucher2 = voucher;
        if (voucher2 != null) {
            Integer numValueOf = voucher2 != null ? Integer.valueOf(voucher2.getId()) : null;
            Intrinsics.checkNotNull(numValueOf);
            iIntValue = numValueOf.intValue();
        } else {
            iIntValue = 0;
        }
        ApiClient.INSTANCE.get_cart$app_release(0, iIntValue, HomeActivity.INSTANCE.getSelected_language(), new Callback<Cart>() { // from class: com.example.digitalkiosk.ShopActivity.updateCart.1
            @Override // retrofit2.Callback
            public void onResponse(Call<Cart> call, Response<Cart> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                Cart cartBody = response.body();
                Intrinsics.checkNotNull(cartBody);
                Cart cart = cartBody;
                Log.d("API", cart.toString());
                ShopActivity.this.handleCartResponse(cart);
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<Cart> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                Log.d("API", String.valueOf(t.getMessage()));
            }
        });
    }

    public final void handleCartResponse(Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        this.cartItems.clear();
        this.cartItems.addAll(cart.getItems());
        CartAdapter cartAdapter = this.cartAdapter;
        if (cartAdapter != null) {
            cartAdapter.notifyDataSetChanged();
        }
        if (cart.getTotal() > 0.0f) {
            getBinding().orderTotal.setText(convertAmountToFormat(cart.getTotal()));
            getBinding().orderTotal.setVisibility(0);
        } else {
            getBinding().orderTotal.setText("");
            getBinding().orderTotal.setVisibility(8);
        }
        if (cart.getItems().size() > 0) {
            getBinding().acceptOrder.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.ShopActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShopActivity.handleCartResponse$lambda$7(this.f$0, view);
                }
            });
        } else {
            getBinding().acceptOrder.setOnClickListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleCartResponse$lambda$7(ShopActivity shopActivity, View view) {
        CompleteOrderFragment completeOrderFragment = new CompleteOrderFragment(shopActivity.timer, shopActivity.paymentTimer);
        FragmentManager fragmentManager = shopActivity.fm;
        if (fragmentManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fm");
            fragmentManager = null;
        }
        completeOrderFragment.show(fragmentManager, "Complete Order");
    }

    public final void selectCategory(Category category) {
        Intrinsics.checkNotNullParameter(category, "category");
        if (processing || Intrinsics.areEqual(category, selectedCategory)) {
            return;
        }
        processing = true;
        selectedCategory = category;
        selectedSubCategory = null;
        getBinding().setItemsTitle(new Translation("category_name", category.getName()));
        CategoryAdapter categoryAdapter = this.categoryAdapter;
        if (categoryAdapter != null) {
            categoryAdapter.notifyDataSetChanged();
        }
        this.subCategories.clear();
        ApiClient.INSTANCE.get_sub_categories$app_release(category.getId(), HomeActivity.INSTANCE.getSelected_language(), new Callback<ArrayList<Category>>() { // from class: com.example.digitalkiosk.ShopActivity.selectCategory.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ArrayList<Category>> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ArrayList<Category>> call, Response<ArrayList<Category>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ShopActivity.this.subCategories.clear();
                ArrayList arrayList = ShopActivity.this.subCategories;
                ArrayList<Category> arrayListBody = response.body();
                Intrinsics.checkNotNull(arrayListBody);
                arrayList.addAll(arrayListBody);
                SubCategoryAdapter subCategoryAdapter = ShopActivity.this.subCategoryAdapter;
                if (subCategoryAdapter != null) {
                    subCategoryAdapter.notifyDataSetChanged();
                }
            }
        });
        ApiClient apiClient = ApiClient.INSTANCE;
        int id = category.getId();
        int selected_language = HomeActivity.INSTANCE.getSelected_language();
        String id2 = TimeZone.getDefault().getID();
        Intrinsics.checkNotNullExpressionValue(id2, "getID(...)");
        apiClient.get_category_items$app_release(id, selected_language, id2, new Callback<ArrayList<Item>>() { // from class: com.example.digitalkiosk.ShopActivity.selectCategory.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ArrayList<Item>> call, Throwable t) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ArrayList<Item>> call, Response<ArrayList<Item>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                ShopActivity.this.items.clear();
                ArrayList arrayList = ShopActivity.this.items;
                ArrayList<Item> arrayListBody = response.body();
                Intrinsics.checkNotNull(arrayListBody);
                arrayList.addAll(arrayListBody);
                ShopActivity.this.itemsUpdated();
                ShopActivity.INSTANCE.setProcessing(false);
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String convertAmountToFormat(float amount) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(amount)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        Currency currency2 = currency;
        if (currency2 != null) {
            String strReplace$default = Intrinsics.areEqual(currency2 != null ? currency2.getFormat() : null, "comma") ? StringsKt.replace$default(str, ".", ",", false, 4, (Object) null) : str;
            String position = currency2 != null ? currency2.getPosition() : null;
            if (position != null) {
                switch (position.hashCode()) {
                    case -1834249522:
                        if (position.equals("left_space")) {
                            return currency2.getSymbol() + TokenParser.SP + strReplace$default;
                        }
                        break;
                    case -68021981:
                        if (position.equals("right_space")) {
                            return strReplace$default + TokenParser.SP + currency2.getSymbol();
                        }
                        break;
                    case 3317767:
                        if (position.equals("left")) {
                            return currency2.getSymbol() + strReplace$default;
                        }
                        break;
                    case 108511772:
                        if (position.equals("right")) {
                            return strReplace$default + currency2.getSymbol();
                        }
                        break;
                }
            }
        }
        return str;
    }

    public final void itemsUpdated() {
        ItemAdapter itemAdapter = this.itemAdapter;
        if (itemAdapter != null) {
            itemAdapter.notifyDataSetChanged();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        hideSystemUI();
    }

    public final void hideSystemUI() {
        getWindow().getDecorView().setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
    }
}
