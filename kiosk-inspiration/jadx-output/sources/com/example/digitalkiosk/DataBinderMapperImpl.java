package com.example.digitalkiosk;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.example.digitalkiosk.databinding.ActivityHomeBindingImpl;
import com.example.digitalkiosk.databinding.ActivityOptionBindingImpl;
import com.example.digitalkiosk.databinding.ActivityShopBindingImpl;
import com.example.digitalkiosk.databinding.CardPaymentBindingImpl;
import com.example.digitalkiosk.databinding.CategoryButtonBindingImpl;
import com.example.digitalkiosk.databinding.CompleteOrderBindingImpl;
import com.example.digitalkiosk.databinding.InnerBannerBindingImpl;
import com.example.digitalkiosk.databinding.ItemButtonBindingImpl;
import com.example.digitalkiosk.databinding.ItemConfiguration2BindingImpl;
import com.example.digitalkiosk.databinding.ItemConfigurationBindingImpl;
import com.example.digitalkiosk.databinding.ItemConfigurationStepBindingImpl;
import com.example.digitalkiosk.databinding.ItemExtraBindingImpl;
import com.example.digitalkiosk.databinding.ItemIngredientBindingImpl;
import com.example.digitalkiosk.databinding.LanguageButtonBindingImpl;
import com.example.digitalkiosk.databinding.MainBannerBindingImpl;
import com.example.digitalkiosk.databinding.OptionLayoutHandicapBindingImpl;
import com.example.digitalkiosk.databinding.OptionLayoutNohandicapBindingImpl;
import com.example.digitalkiosk.databinding.SizeButtonBindingImpl;
import com.example.digitalkiosk.databinding.SubcategoryButtonBindingImpl;
import com.example.digitalkiosk.databinding.TableButtonBindingImpl;
import com.example.digitalkiosk.databinding.VoucherBindingImpl;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import io.ktor.http.LinkHeader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DataBinderMapperImpl extends DataBinderMapper {
    private static final SparseIntArray INTERNAL_LAYOUT_ID_LOOKUP;
    private static final int LAYOUT_ACTIVITYHOME = 1;
    private static final int LAYOUT_ACTIVITYOPTION = 2;
    private static final int LAYOUT_ACTIVITYSHOP = 3;
    private static final int LAYOUT_CARDPAYMENT = 4;
    private static final int LAYOUT_CATEGORYBUTTON = 5;
    private static final int LAYOUT_COMPLETEORDER = 6;
    private static final int LAYOUT_INNERBANNER = 7;
    private static final int LAYOUT_ITEMBUTTON = 8;
    private static final int LAYOUT_ITEMCONFIGURATION = 9;
    private static final int LAYOUT_ITEMCONFIGURATION2 = 10;
    private static final int LAYOUT_ITEMCONFIGURATIONSTEP = 11;
    private static final int LAYOUT_ITEMEXTRA = 12;
    private static final int LAYOUT_ITEMINGREDIENT = 13;
    private static final int LAYOUT_LANGUAGEBUTTON = 14;
    private static final int LAYOUT_MAINBANNER = 15;
    private static final int LAYOUT_OPTIONLAYOUTHANDICAP = 16;
    private static final int LAYOUT_OPTIONLAYOUTNOHANDICAP = 17;
    private static final int LAYOUT_SIZEBUTTON = 18;
    private static final int LAYOUT_SUBCATEGORYBUTTON = 19;
    private static final int LAYOUT_TABLEBUTTON = 20;
    private static final int LAYOUT_VOUCHER = 21;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(21);
        INTERNAL_LAYOUT_ID_LOOKUP = sparseIntArray;
        sparseIntArray.put(R.layout.activity_home, 1);
        sparseIntArray.put(R.layout.activity_option, 2);
        sparseIntArray.put(R.layout.activity_shop, 3);
        sparseIntArray.put(R.layout.card_payment, 4);
        sparseIntArray.put(R.layout.category_button, 5);
        sparseIntArray.put(R.layout.complete_order, 6);
        sparseIntArray.put(R.layout.inner_banner, 7);
        sparseIntArray.put(R.layout.item_button, 8);
        sparseIntArray.put(R.layout.item_configuration, 9);
        sparseIntArray.put(R.layout.item_configuration_2, 10);
        sparseIntArray.put(R.layout.item_configuration_step, 11);
        sparseIntArray.put(R.layout.item_extra, 12);
        sparseIntArray.put(R.layout.item_ingredient, 13);
        sparseIntArray.put(R.layout.language_button, 14);
        sparseIntArray.put(R.layout.main_banner, 15);
        sparseIntArray.put(R.layout.option_layout_handicap, 16);
        sparseIntArray.put(R.layout.option_layout_nohandicap, 17);
        sparseIntArray.put(R.layout.size_button, 18);
        sparseIntArray.put(R.layout.subcategory_button, 19);
        sparseIntArray.put(R.layout.table_button, 20);
        sparseIntArray.put(R.layout.voucher, 21);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = INTERNAL_LAYOUT_ID_LOOKUP.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        switch (i2) {
            case 1:
                if ("layout/activity_home_0".equals(tag)) {
                    return new ActivityHomeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_home is invalid. Received: " + tag);
            case 2:
                if ("layout/activity_option_0".equals(tag)) {
                    return new ActivityOptionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_option is invalid. Received: " + tag);
            case 3:
                if ("layout/activity_shop_0".equals(tag)) {
                    return new ActivityShopBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_shop is invalid. Received: " + tag);
            case 4:
                if ("layout/card_payment_0".equals(tag)) {
                    return new CardPaymentBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for card_payment is invalid. Received: " + tag);
            case 5:
                if ("layout/category_button_0".equals(tag)) {
                    return new CategoryButtonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for category_button is invalid. Received: " + tag);
            case 6:
                if ("layout/complete_order_0".equals(tag)) {
                    return new CompleteOrderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for complete_order is invalid. Received: " + tag);
            case 7:
                if ("layout/inner_banner_0".equals(tag)) {
                    return new InnerBannerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for inner_banner is invalid. Received: " + tag);
            case 8:
                if ("layout/item_button_0".equals(tag)) {
                    return new ItemButtonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_button is invalid. Received: " + tag);
            case 9:
                if ("layout/item_configuration_0".equals(tag)) {
                    return new ItemConfigurationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_configuration is invalid. Received: " + tag);
            case 10:
                if ("layout/item_configuration_2_0".equals(tag)) {
                    return new ItemConfiguration2BindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_configuration_2 is invalid. Received: " + tag);
            case 11:
                if ("layout/item_configuration_step_0".equals(tag)) {
                    return new ItemConfigurationStepBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_configuration_step is invalid. Received: " + tag);
            case 12:
                if ("layout/item_extra_0".equals(tag)) {
                    return new ItemExtraBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_extra is invalid. Received: " + tag);
            case 13:
                if ("layout/item_ingredient_0".equals(tag)) {
                    return new ItemIngredientBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_ingredient is invalid. Received: " + tag);
            case 14:
                if ("layout/language_button_0".equals(tag)) {
                    return new LanguageButtonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for language_button is invalid. Received: " + tag);
            case 15:
                if ("layout/main_banner_0".equals(tag)) {
                    return new MainBannerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for main_banner is invalid. Received: " + tag);
            case 16:
                if ("layout/option_layout_handicap_0".equals(tag)) {
                    return new OptionLayoutHandicapBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for option_layout_handicap is invalid. Received: " + tag);
            case 17:
                if ("layout/option_layout_nohandicap_0".equals(tag)) {
                    return new OptionLayoutNohandicapBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for option_layout_nohandicap is invalid. Received: " + tag);
            case 18:
                if ("layout/size_button_0".equals(tag)) {
                    return new SizeButtonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for size_button is invalid. Received: " + tag);
            case 19:
                if ("layout/subcategory_button_0".equals(tag)) {
                    return new SubcategoryButtonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for subcategory_button is invalid. Received: " + tag);
            case 20:
                if ("layout/table_button_0".equals(tag)) {
                    return new TableButtonBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for table_button is invalid. Received: " + tag);
            case 21:
                if ("layout/voucher_0".equals(tag)) {
                    return new VoucherBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for voucher is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || INTERNAL_LAYOUT_ID_LOOKUP.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = InnerLayoutIdLookup.sKeys.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return InnerBrLookup.sKeys.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    private static class InnerBrLookup {
        static final SparseArray<String> sKeys;

        private InnerBrLookup() {
        }

        static {
            SparseArray<String> sparseArray = new SparseArray<>(58);
            sKeys = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
            sparseArray.put(2, BbposDeviceControllerImpl.AMOUNT_PARAM_NAME);
            sparseArray.put(3, "cancel_button_text");
            sparseArray.put(4, "capslock");
            sparseArray.put(5, "category");
            sparseArray.put(6, "chooseYourOption");
            sparseArray.put(7, "choose_your_option");
            sparseArray.put(8, "code");
            sparseArray.put(9, "completed");
            sparseArray.put(10, "config_title");
            sparseArray.put(11, "count");
            sparseArray.put(12, "darkshade");
            sparseArray.put(13, "description_text");
            sparseArray.put(14, "dineIn");
            sparseArray.put(15, "dine_in");
            sparseArray.put(16, "double_size");
            sparseArray.put(17, "drinks_available");
            sparseArray.put(18, "drinks_tab_title");
            sparseArray.put(19, "extra");
            sparseArray.put(20, "extra_term");
            sparseArray.put(21, "first");
            sparseArray.put(22, "handicap_on");
            sparseArray.put(23, "image");
            sparseArray.put(24, "is_large");
            sparseArray.put(25, "is_medium");
            sparseArray.put(26, "is_xl");
            sparseArray.put(27, "item");
            sparseArray.put(28, "items_title");
            sparseArray.put(29, "kiosksetting");
            sparseArray.put(30, "language");
            sparseArray.put(31, "language_loaded");
            sparseArray.put(32, "last");
            sparseArray.put(33, "logoUrl");
            sparseArray.put(34, "next_button_text");
            sparseArray.put(35, "opacity");
            sparseArray.put(36, "pickLater");
            sparseArray.put(37, "pick_later");
            sparseArray.put(38, FirebaseAnalytics.Param.QUANTITY);
            sparseArray.put(39, "selectYourOption");
            sparseArray.put(40, "select_your_option");
            sparseArray.put(41, "selected");
            sparseArray.put(42, "selectedCategory");
            sparseArray.put(43, "sides_available");
            sparseArray.put(44, "sides_tab_title");
            sparseArray.put(45, "size");
            sparseArray.put(46, "size_tab_title");
            sparseArray.put(47, "sold_out_translation");
            sparseArray.put(48, "subtitle");
            sparseArray.put(49, "tab");
            sparseArray.put(50, "tab_position");
            sparseArray.put(51, "takeAway");
            sparseArray.put(52, "take_away");
            sparseArray.put(53, "tap_text");
            sparseArray.put(54, "timerCount");
            sparseArray.put(55, LinkHeader.Parameters.Title);
            sparseArray.put(56, "tripple_size");
            sparseArray.put(57, "voucher_applied");
        }
    }

    private static class InnerLayoutIdLookup {
        static final HashMap<String, Integer> sKeys;

        private InnerLayoutIdLookup() {
        }

        static {
            HashMap<String, Integer> map = new HashMap<>(21);
            sKeys = map;
            map.put("layout/activity_home_0", Integer.valueOf(R.layout.activity_home));
            map.put("layout/activity_option_0", Integer.valueOf(R.layout.activity_option));
            map.put("layout/activity_shop_0", Integer.valueOf(R.layout.activity_shop));
            map.put("layout/card_payment_0", Integer.valueOf(R.layout.card_payment));
            map.put("layout/category_button_0", Integer.valueOf(R.layout.category_button));
            map.put("layout/complete_order_0", Integer.valueOf(R.layout.complete_order));
            map.put("layout/inner_banner_0", Integer.valueOf(R.layout.inner_banner));
            map.put("layout/item_button_0", Integer.valueOf(R.layout.item_button));
            map.put("layout/item_configuration_0", Integer.valueOf(R.layout.item_configuration));
            map.put("layout/item_configuration_2_0", Integer.valueOf(R.layout.item_configuration_2));
            map.put("layout/item_configuration_step_0", Integer.valueOf(R.layout.item_configuration_step));
            map.put("layout/item_extra_0", Integer.valueOf(R.layout.item_extra));
            map.put("layout/item_ingredient_0", Integer.valueOf(R.layout.item_ingredient));
            map.put("layout/language_button_0", Integer.valueOf(R.layout.language_button));
            map.put("layout/main_banner_0", Integer.valueOf(R.layout.main_banner));
            map.put("layout/option_layout_handicap_0", Integer.valueOf(R.layout.option_layout_handicap));
            map.put("layout/option_layout_nohandicap_0", Integer.valueOf(R.layout.option_layout_nohandicap));
            map.put("layout/size_button_0", Integer.valueOf(R.layout.size_button));
            map.put("layout/subcategory_button_0", Integer.valueOf(R.layout.subcategory_button));
            map.put("layout/table_button_0", Integer.valueOf(R.layout.table_button));
            map.put("layout/voucher_0", Integer.valueOf(R.layout.voucher));
        }
    }
}
