package com.example.digitalkiosk.fragments;

import android.R;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import coil.Coil;
import coil.request.ImageRequest;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.example.digitalkiosk.HomeActivity;
import com.example.digitalkiosk.MainActivity;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.PrinterService;
import com.example.digitalkiosk.models.Currency;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Order;
import com.example.digitalkiosk.models.OrderItem;
import com.example.digitalkiosk.models.PrinterLine;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.msprintsdk.PrintCmd;
import com.example.digitalkiosk.msprintsdk.UsbDriver;
import com.example.digitalkiosk.msprintsdk.UtilsTools;
import com.google.common.base.Ascii;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.sun.jna.platform.win32.WinError;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.apache.http.message.TokenParser;

/* JADX INFO: compiled from: SuccessOrderFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0016\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;", "Landroidx/fragment/app/DialogFragment;", "order", "Lcom/example/digitalkiosk/models/Order;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Lcom/example/digitalkiosk/models/Order;Landroid/os/CountDownTimer;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "environmentFriendlyPrint", "usbDriver", "Lcom/example/digitalkiosk/msprintsdk/UsbDriver;", "Companion", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SuccessOrderFragment extends DialogFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Order order;
    private final CountDownTimer shoptimer;

    public /* synthetic */ SuccessOrderFragment(Order order, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(order, (i & 2) != 0 ? null : countDownTimer);
    }

    public SuccessOrderFragment(Order order, CountDownTimer countDownTimer) {
        Intrinsics.checkNotNullParameter(order, "order");
        this.order = order;
        this.shoptimer = countDownTimer;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R.style.Theme.Black.NoTitleBar.Fullscreen);
    }

    /* JADX WARN: Type inference failed for: r5v13, types: [com.example.digitalkiosk.fragments.SuccessOrderFragment$onCreateView$timer$1] */
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(WinError.ERROR_CLUSTER_NETWORK_NOT_FOUND_FOR_IP);
        }
        View viewInflate = inflater.inflate(com.example.digitalkiosk.R.layout.success_order, container);
        ImageView imageView = (ImageView) viewInflate.findViewById(com.example.digitalkiosk.R.id.logo);
        Intrinsics.checkNotNull(imageView);
        KioskSetting kioskSetting = OptionActivity.INSTANCE.getKioskSetting();
        Coil.imageLoader(imageView.getContext()).enqueue(new ImageRequest.Builder(imageView.getContext()).data(kioskSetting != null ? kioskSetting.getApp_logo() : null).target(imageView).build());
        TextView textView = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.order_placement_text);
        TextView textView2 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.cashpay_message);
        TextView textView3 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.cardpay_message);
        TextView textView4 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.order_number);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(com.example.digitalkiosk.R.id.environment_section);
        final Button button = (Button) viewInflate.findViewById(com.example.digitalkiosk.R.id.print_button);
        final LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(com.example.digitalkiosk.R.id.green_button);
        TextView textView5 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.protect_environment_title);
        TextView textView6 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.protect_environment_subtitle_1);
        TextView textView7 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.protect_environment_subtitle_2);
        TextView textView8 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.protect_environment_footer_1);
        TextView textView9 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.protect_environment_footer_2);
        TextView textView10 = (TextView) viewInflate.findViewById(com.example.digitalkiosk.R.id.save_environment_button_text);
        textView4.setText(String.valueOf(this.order.getOrder_number()));
        if (Intrinsics.areEqual(this.order.getPayment_method(), "cash")) {
            textView2.setVisibility(0);
        } else if (Intrinsics.areEqual(this.order.getPayment_method(), "card")) {
            textView3.setVisibility(0);
        }
        KioskSetting kioskSetting2 = OptionActivity.INSTANCE.getKioskSetting();
        final long j = (kioskSetting2 == null || !kioskSetting2.getEnvironment_friendly_print_enabled()) ? 10000L : 120000L;
        final ?? r5 = new CountDownTimer(j) { // from class: com.example.digitalkiosk.fragments.SuccessOrderFragment$onCreateView$timer$1
            @Override // android.os.CountDownTimer
            public void onTick(long p0) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                CountDownTimer countDownTimer = this.this$0.shoptimer;
                if (countDownTimer != null) {
                    countDownTimer.cancel();
                }
                OptionActivity.INSTANCE.setSelected_table(null);
                OptionActivity.INSTANCE.setOrder_type("");
                OptionActivity.INSTANCE.setPhone_number(null);
                Intent intent = new Intent(this.this$0.getContext(), (Class<?>) HomeActivity.class);
                intent.addFlags(268468224);
                this.this$0.startActivity(intent);
            }
        };
        r5.start();
        KioskSetting kioskSetting3 = OptionActivity.INSTANCE.getKioskSetting();
        if (kioskSetting3 == null || !kioskSetting3.getEnvironment_friendly_print_enabled()) {
            PrinterService.INSTANCE.printReceipt(this.order);
        }
        KioskSetting kioskSetting4 = OptionActivity.INSTANCE.getKioskSetting();
        if (kioskSetting4 != null && kioskSetting4.getEnvironment_friendly_print_enabled()) {
            linearLayout.setVisibility(0);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.SuccessOrderFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SuccessOrderFragment.onCreateView$lambda$1(button, this, r5, view);
                }
            });
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.fragments.SuccessOrderFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SuccessOrderFragment.onCreateView$lambda$2(linearLayout2, this, r5, view);
                }
            });
        }
        Translation translation = MainActivity.INSTANCE.get_term_translation("order_placed");
        if (translation != null) {
            textView.setText(translation.getTranslation());
        }
        Translation translation2 = MainActivity.INSTANCE.get_term_translation("order_cash_message");
        if (translation2 != null) {
            textView2.setText(translation2.getTranslation());
        }
        Translation translation3 = MainActivity.INSTANCE.get_term_translation("order_non_cash_message");
        if (translation3 != null) {
            textView3.setText(translation3.getTranslation());
        }
        Translation translation4 = MainActivity.INSTANCE.get_term_translation("protect_environment_title");
        if (translation4 != null) {
            textView5.setText(translation4.getTranslation());
        }
        Translation translation5 = MainActivity.INSTANCE.get_term_translation("protect_environment_subtitle_1");
        if (translation5 != null) {
            textView6.setText(translation5.getTranslation());
        }
        Translation translation6 = MainActivity.INSTANCE.get_term_translation("protect_environment_subtitle_2");
        if (translation6 != null) {
            textView7.setText(translation6.getTranslation());
        }
        Translation translation7 = MainActivity.INSTANCE.get_term_translation("print_receipt_button");
        if (translation7 != null) {
            button.setText(translation7.getTranslation());
        }
        Translation translation8 = MainActivity.INSTANCE.get_term_translation("save_environment_no_receipt_button");
        if (translation8 != null) {
            textView10.setText(translation8.getTranslation());
        }
        Translation translation9 = MainActivity.INSTANCE.get_term_translation("protect_environment_footer_1");
        if (translation9 != null) {
            textView8.setText(translation9.getTranslation());
        }
        Translation translation10 = MainActivity.INSTANCE.get_term_translation("protect_environment_footer_2");
        if (translation10 != null) {
            textView9.setText(translation10.getTranslation());
        }
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1(Button button, SuccessOrderFragment successOrderFragment, SuccessOrderFragment$onCreateView$timer$1 successOrderFragment$onCreateView$timer$1, View view) {
        button.setOnClickListener(null);
        PrinterService.INSTANCE.printReceipt(successOrderFragment.order);
        CountDownTimer countDownTimer = successOrderFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        successOrderFragment$onCreateView$timer$1.cancel();
        OptionActivity.INSTANCE.setSelected_table(null);
        OptionActivity.INSTANCE.setOrder_type("");
        OptionActivity.INSTANCE.setPhone_number(null);
        Intent intent = new Intent(successOrderFragment.getContext(), (Class<?>) HomeActivity.class);
        intent.addFlags(268468224);
        successOrderFragment.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$2(LinearLayout linearLayout, SuccessOrderFragment successOrderFragment, SuccessOrderFragment$onCreateView$timer$1 successOrderFragment$onCreateView$timer$1, View view) {
        linearLayout.setOnClickListener(null);
        PrinterService.INSTANCE.environmentFriendlyPrint(successOrderFragment.order);
        CountDownTimer countDownTimer = successOrderFragment.shoptimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        successOrderFragment$onCreateView$timer$1.cancel();
        OptionActivity.INSTANCE.setSelected_table(null);
        OptionActivity.INSTANCE.setOrder_type("");
        OptionActivity.INSTANCE.setPhone_number(null);
        Intent intent = new Intent(successOrderFragment.getContext(), (Class<?>) HomeActivity.class);
        intent.addFlags(268468224);
        successOrderFragment.startActivity(intent);
    }

    public final void environmentFriendlyPrint(UsbDriver usbDriver, Order order) {
        Intrinsics.checkNotNullParameter(usbDriver, "usbDriver");
        Intrinsics.checkNotNullParameter(order, "order");
        int iUsbDriverCheck = usbDriver.usbDriverCheck();
        if (iUsbDriverCheck != -1 && iUsbDriverCheck != 1) {
            usbDriver.write(PrintCmd.SetClean());
            usbDriver.write(PrintCmd.PrintFeedline(1));
            usbDriver.closeUsbDevice();
        }
        int iUsbDriverCheck2 = usbDriver.usbDriverCheck();
        if (iUsbDriverCheck2 == -1 || iUsbDriverCheck2 == 1) {
            return;
        }
        usbDriver.write(PrintCmd.SetClean());
        usbDriver.write(PrintCmd.PrintFeedline(4));
        usbDriver.write(PrintCmd.SetAlignment(1));
        usbDriver.write(PrintCmd.SetBold(1));
        usbDriver.write(PrintCmd.SetSizetext(5, 5));
        usbDriver.write(PrintCmd.PrintString(new StringBuilder(String.valueOf(order.getOrder_number())).toString(), 0));
        usbDriver.write(PrintCmd.PrintFeedline(4));
        usbDriver.write(PrintCmd.PrintCutpaper(0));
        usbDriver.closeUsbDevice();
    }

    /* JADX INFO: compiled from: SuccessOrderFragment.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ \u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¨\u0006\u0013"}, d2 = {"Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$Companion;", "", "<init>", "()V", "printReceipt", "", "usbDriver", "Lcom/example/digitalkiosk/msprintsdk/UsbDriver;", "order", "Lcom/example/digitalkiosk/models/Order;", "addReceiptItem", "name", "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "addSpacing", "data", "totalLength", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void printReceipt(UsbDriver usbDriver, Order order) {
            String translation;
            String translation2;
            String translation3;
            String translation4;
            String translation5;
            String translation6;
            String translation7;
            String translation8;
            String translation9;
            String translation10;
            String translation11;
            String translation12;
            String translation13;
            String translation14;
            String translation15;
            String translation16;
            String translation17;
            StringBuilder sb;
            String str;
            int i;
            Intrinsics.checkNotNullParameter(usbDriver, "usbDriver");
            Intrinsics.checkNotNullParameter(order, "order");
            Log.d("PrinterTest", "Printed Order " + order.getId());
            Translation translation18 = MainActivity.INSTANCE.get_term_translation("receipt_title");
            if (translation18 == null) {
                translation = "receipt";
            } else {
                translation = translation18.getTranslation();
            }
            Translation translation19 = MainActivity.INSTANCE.get_term_translation("receipt_takeaway");
            if (translation19 == null) {
                translation2 = "Take Away";
            } else {
                translation2 = translation19.getTranslation();
            }
            Translation translation20 = MainActivity.INSTANCE.get_term_translation("receipt_dine_in");
            if (translation20 == null) {
                translation3 = "Dine In";
            } else {
                translation3 = translation20.getTranslation();
            }
            Translation translation21 = MainActivity.INSTANCE.get_term_translation("receipt_pickup");
            if (translation21 == null) {
                translation4 = "Pick Up";
            } else {
                translation4 = translation21.getTranslation();
            }
            Translation translation22 = MainActivity.INSTANCE.get_term_translation("pickup_phone_number_receipt");
            if (translation22 == null) {
                translation5 = "Phone Number";
            } else {
                translation5 = translation22.getTranslation();
            }
            Translation translation23 = MainActivity.INSTANCE.get_term_translation("receipt_order_type");
            if (translation23 == null) {
                translation6 = "Order Type";
            } else {
                translation6 = translation23.getTranslation();
            }
            Translation translation24 = MainActivity.INSTANCE.get_term_translation("receipt_kiosk_id");
            if (translation24 == null) {
                translation7 = "Kiosk ID";
            } else {
                translation7 = translation24.getTranslation();
            }
            Translation translation25 = MainActivity.INSTANCE.get_term_translation("receipt_table_number");
            if (translation25 == null) {
                translation8 = "Table Number";
            } else {
                translation8 = translation25.getTranslation();
            }
            Translation translation26 = MainActivity.INSTANCE.get_term_translation("receipt_pickup_time");
            if (translation26 == null) {
                translation9 = "Pickup Time";
            } else {
                translation9 = translation26.getTranslation();
            }
            Translation translation27 = MainActivity.INSTANCE.get_term_translation("receipt_items");
            if (translation27 == null) {
                translation10 = "Items";
            } else {
                translation10 = translation27.getTranslation();
            }
            Translation translation28 = MainActivity.INSTANCE.get_term_translation("receipt_total");
            if (translation28 == null) {
                translation11 = "Total";
            } else {
                translation11 = translation28.getTranslation();
            }
            Translation translation29 = MainActivity.INSTANCE.get_term_translation("receipt_items_total");
            if (translation29 == null) {
                translation12 = "Items Total (Including Tax)";
            } else {
                translation12 = translation29.getTranslation();
            }
            String str2 = translation2;
            Translation translation30 = MainActivity.INSTANCE.get_term_translation("receipt_card_fees");
            if (translation30 == null) {
                translation13 = "Card Fees";
            } else {
                translation13 = translation30.getTranslation();
            }
            String str3 = translation3;
            Translation translation31 = MainActivity.INSTANCE.get_term_translation("receipt_discount_voucher");
            if (translation31 == null) {
                translation14 = "Discount Voucher";
            } else {
                translation14 = translation31.getTranslation();
            }
            String str4 = translation4;
            Translation translation32 = MainActivity.INSTANCE.get_term_translation("receipt_tax");
            if (translation32 == null) {
                translation15 = "Tax";
            } else {
                translation15 = translation32.getTranslation();
            }
            Translation translation33 = MainActivity.INSTANCE.get_term_translation("receipt_tax_amount");
            if (translation33 == null) {
                translation16 = "Amount";
            } else {
                translation16 = translation33.getTranslation();
            }
            String str5 = translation16;
            Translation translation34 = MainActivity.INSTANCE.get_term_translation("receipt_tax_included");
            if (translation34 == null) {
                translation17 = "Incl. Tax";
            } else {
                translation17 = translation34.getTranslation();
            }
            int iUsbDriverCheck = usbDriver.usbDriverCheck();
            String str6 = translation17;
            String str7 = translation15;
            if (iUsbDriverCheck != -1 && iUsbDriverCheck != 1) {
                usbDriver.write(PrintCmd.SetClean());
                usbDriver.write(PrintCmd.PrintFeedline(1));
                usbDriver.closeUsbDevice();
            }
            int iUsbDriverCheck2 = usbDriver.usbDriverCheck();
            if (iUsbDriverCheck2 == -1 || iUsbDriverCheck2 == 1) {
                return;
            }
            usbDriver.write(PrintCmd.SetClean());
            usbDriver.write(PrintCmd.PrintFeedline(4));
            usbDriver.write(PrintCmd.SetAlignment(1));
            usbDriver.write(PrintCmd.SetBold(1));
            usbDriver.write(PrintCmd.SetSizetext(5, 5));
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(String.valueOf(order.getOrder_number())).toString(), 0));
            usbDriver.write(PrintCmd.PrintFeedline(4));
            usbDriver.write(PrintCmd.SetClean());
            usbDriver.write(PrintCmd.SetAlignment(1));
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getCafe_name() + AbstractJsonLexerKt.COMMA).toString(), 0));
            String str8 = translation14;
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getCafe_address() + AbstractJsonLexerKt.COMMA).toString(), 0));
            if (order.getCafe_zipcode() != null) {
                sb = new StringBuilder(order.getCafe_zipcode() + TokenParser.SP + order.getCafe_city() + AbstractJsonLexerKt.COMMA);
            } else {
                sb = new StringBuilder(order.getCafe_city() + AbstractJsonLexerKt.COMMA);
            }
            usbDriver.write(PrintCmd.PrintString(sb.toString(), 0));
            if (order.getCafe_vat() != null) {
                usbDriver.write(PrintCmd.PrintString(new StringBuilder("VAT " + order.getCafe_vat()).toString(), 0));
            }
            usbDriver.write(PrintCmd.PrintFeedline(4));
            usbDriver.write(PrintCmd.SetSizetext(2, 2));
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(translation).toString(), 0));
            usbDriver.write(PrintCmd.PrintFeedline(2));
            usbDriver.write(PrintCmd.SetClean());
            if (Intrinsics.areEqual(order.getOrder_type(), "dine-in")) {
                str = str3;
            } else {
                str = Intrinsics.areEqual(order.getOrder_type(), "pick-up") ? str4 : str2;
            }
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(translation6 + ": " + str).toString(), 0));
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(translation7 + ": " + order.getKiosk_id()).toString(), 0));
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getFormatted_date()).toString(), 0));
            if (Intrinsics.areEqual(order.getOrder_type(), "dine-in") && order.getDinein_table() != null) {
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(translation8 + ": " + order.getDinein_table()).toString(), 0));
            }
            if (Intrinsics.areEqual(order.getOrder_type(), "pick-up") && order.getPickup_time() != null) {
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(translation9 + ": " + order.getPickup_time()).toString(), 0));
            }
            if (Intrinsics.areEqual(order.getOrder_type(), "pick-up") && order.getPickup_number() != null) {
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(translation5 + ": " + order.getPickup_number()).toString(), 0));
            }
            usbDriver.write(PrintCmd.PrintFeedline(1));
            usbDriver.write(PrintCmd.SetHTseat(new byte[]{15, Ascii.EM, 35}, 3));
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(translation10).toString(), 1));
            usbDriver.write(PrintCmd.PrintNextHT());
            usbDriver.write(PrintCmd.PrintNextHT());
            usbDriver.write(PrintCmd.PrintNextHT());
            usbDriver.write(PrintCmd.PrintString(new StringBuilder("   " + translation11).toString(), 0));
            Iterator<OrderItem> it = order.getItems().iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                OrderItem next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                OrderItem orderItem = next;
                String name = orderItem.getName();
                if (orderItem.getQuantity() != null) {
                    name = orderItem.getQuantity() + TokenParser.SP + name;
                }
                addReceiptItem("  " + name, orderItem.getSubtotal(), usbDriver);
                if (orderItem.getSub_items() != null) {
                    Iterator<OrderItem> it2 = orderItem.getSub_items().iterator();
                    Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
                    while (it2.hasNext()) {
                        OrderItem next2 = it2.next();
                        Intrinsics.checkNotNullExpressionValue(next2, "next(...)");
                        OrderItem orderItem2 = next2;
                        if (orderItem2.getSubtotal() == 0.0f) {
                            Integer.valueOf(usbDriver.write(PrintCmd.PrintString(new StringBuilder("    " + orderItem2.getQuantity() + TokenParser.SP + orderItem2.getName()).toString(), 0)));
                        } else {
                            addReceiptItem("    " + (orderItem2.getQuantity() + TokenParser.SP + orderItem2.getName()), orderItem2.getSubtotal(), usbDriver);
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
            }
            usbDriver.write(PrintCmd.PrintFeedline(1));
            addReceiptItem(translation12, order.getAmount() - order.getCard_fee(), usbDriver);
            if (order.getCard_fee() > 0.0f) {
                usbDriver.write(PrintCmd.PrintFeedline(1));
                addReceiptItem(translation13, order.getCard_fee(), usbDriver);
            }
            if (order.getVoucher_name() != null) {
                usbDriver.write(PrintCmd.PrintFeedline(1));
                String str9 = str8 + TokenParser.SP + order.getVoucher_name();
                Float voucher_discount_amount = order.getVoucher_discount_amount();
                Intrinsics.checkNotNull(voucher_discount_amount);
                addReceiptItem(str9, voucher_discount_amount.floatValue(), usbDriver);
            }
            usbDriver.write(PrintCmd.PrintFeedline(1));
            usbDriver.write(PrintCmd.PrintNextHT());
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str7 + '%', 8)).toString(), 1));
            usbDriver.write(PrintCmd.PrintNextHT());
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str5, 8)).toString(), 1));
            usbDriver.write(PrintCmd.PrintNextHT());
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str7, 8)).toString(), 0));
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(str6).toString(), 1));
            usbDriver.write(PrintCmd.PrintNextHT());
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str10 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getTax_percent())}, 1));
            Intrinsics.checkNotNullExpressionValue(str10, "format(...)");
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str10, 8)).toString(), 1));
            usbDriver.write(PrintCmd.PrintNextHT());
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String str11 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getAmount() - order.getCard_fee())}, 1));
            Intrinsics.checkNotNullExpressionValue(str11, "format(...)");
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str11, 8)).toString(), 1));
            usbDriver.write(PrintCmd.PrintNextHT());
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
            String str12 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getTax())}, 1));
            Intrinsics.checkNotNullExpressionValue(str12, "format(...)");
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str12, 8)).toString(), 0));
            if (order.getStripe_details() != null) {
                usbDriver.write(PrintCmd.PrintFeedline(6));
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getStripe_details().getLocation_name()).toString(), 0));
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getStripe_details().getLocation_address1()).toString(), 0));
                if (!Intrinsics.areEqual(order.getStripe_details().getLocation_address2(), "")) {
                    usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getStripe_details().getLocation_address2()).toString(), 0));
                }
                String str13 = order.getStripe_details().getLocation_postal_code() != null ? "" + order.getStripe_details().getLocation_postal_code() : "";
                if (order.getStripe_details().getLocation_state() != null) {
                    if (!Intrinsics.areEqual(str13, "")) {
                        str13 = str13 + TokenParser.SP;
                    }
                    str13 = str13 + order.getStripe_details().getLocation_state();
                }
                if (order.getStripe_details().getLocation_city() != null) {
                    if (!Intrinsics.areEqual(str13, "")) {
                        str13 = str13 + TokenParser.SP;
                    }
                    str13 = str13 + order.getStripe_details().getLocation_city();
                }
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(str13).toString(), 0));
                usbDriver.write(PrintCmd.PrintFeedline(1));
                usbDriver.write(PrintCmd.SetHTseat(new byte[]{12, Ascii.DC4}, 2));
                StringBuilder sb2 = new StringBuilder(order.getStripe_details().getDate());
                usbDriver.write(PrintCmd.PrintString(sb2.toString(), 1));
                if (sb2.length() <= 12) {
                    usbDriver.write(PrintCmd.PrintNextHT());
                }
                usbDriver.write(PrintCmd.PrintNextHT());
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(order.getStripe_details().getTime(), 8)).toString(), 0));
                usbDriver.write(PrintCmd.PrintFeedline(1));
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(str5).toString(), 1));
                usbDriver.write(PrintCmd.PrintNextHT());
                Currency currency = MainActivity.INSTANCE.getCurrency();
                String symbol = currency != null ? currency.getSymbol() : null;
                Intrinsics.checkNotNull(symbol);
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(symbol).toString(), 1));
                usbDriver.write(PrintCmd.PrintNextHT());
                StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
                String str14 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getAmount())}, 1));
                Intrinsics.checkNotNullExpressionValue(str14, "format(...)");
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str14, 8)).toString(), 0));
                usbDriver.write(PrintCmd.PrintFeedline(2));
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getStripe_details().getCard_brand()).toString(), 0));
                usbDriver.write(PrintCmd.PrintString(new StringBuilder(order.getStripe_details().getRead_method()).toString(), 0));
                i = 0;
                usbDriver.write(PrintCmd.PrintString(new StringBuilder("XXXX XXXX XXXX " + order.getStripe_details().getLast4()).toString(), 0));
            } else {
                i = 0;
            }
            usbDriver.write(PrintCmd.PrintFeedline(2));
            usbDriver.write(PrintCmd.SetAlignment(1));
            usbDriver.write(PrintCmd.PrintString("--------------------------------------------", i));
            Iterator<PrinterLine> it3 = MainActivity.INSTANCE.getPrintLines().iterator();
            Intrinsics.checkNotNullExpressionValue(it3, "iterator(...)");
            while (it3.hasNext()) {
                PrinterLine next3 = it3.next();
                Intrinsics.checkNotNullExpressionValue(next3, "next(...)");
                PrinterLine printerLine = next3;
                usbDriver.write(PrintCmd.SetClean());
                StringBuilder sb3 = new StringBuilder(printerLine.getValue());
                if (Intrinsics.areEqual(printerLine.getType(), PrinterTextParser.ATTR_BARCODE_TEXT_POSITION)) {
                    usbDriver.write(PrintCmd.SetAlignment(1));
                    usbDriver.write(PrintCmd.PrintString(sb3.toString(), 0));
                } else if (Intrinsics.areEqual(printerLine.getType(), "qr")) {
                    usbDriver.write(PrintCmd.PrintFeedline(1));
                    usbDriver.write(PrintCmd.SetLinespace(0));
                    usbDriver.write(PrintCmd.PrintQrcode(UtilsTools.unicodeToUtf8(sb3.toString()), 15, 5, 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintString("                                            ", 0));
                    usbDriver.write(PrintCmd.PrintFeedline(1));
                }
            }
            usbDriver.write(PrintCmd.PrintFeedline(2));
            usbDriver.write(PrintCmd.SetClean());
            usbDriver.write(PrintCmd.SetAlignment(1));
            usbDriver.write(PrintCmd.PrintString("--------------------------------------------", 0));
            usbDriver.write(PrintCmd.PrintFeedline(10));
            usbDriver.write(PrintCmd.PrintCutpaper(0));
            usbDriver.closeUsbDevice();
            Log.d("PrinterTest", "Print Completed");
        }

        private final void addReceiptItem(String name, float amount, UsbDriver usbDriver) {
            StringBuilder sb = new StringBuilder(name);
            usbDriver.write(PrintCmd.PrintString(sb.toString(), 1));
            if (sb.length() <= 15) {
                usbDriver.write(PrintCmd.PrintNextHT());
            }
            if (sb.length() <= 25) {
                usbDriver.write(PrintCmd.PrintNextHT());
            }
            if (sb.length() <= 35) {
                usbDriver.write(PrintCmd.PrintNextHT());
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(amount)}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            usbDriver.write(PrintCmd.PrintString(new StringBuilder(addSpacing(str, 8)).toString(), 0));
        }

        private final String addSpacing(String data, int totalLength) {
            int length = totalLength - data.length();
            String str = "";
            int i = 1;
            if (1 <= length) {
                while (true) {
                    str = str + TokenParser.SP;
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
            return str + data;
        }
    }
}
