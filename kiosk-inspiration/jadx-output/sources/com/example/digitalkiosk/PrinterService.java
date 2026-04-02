package com.example.digitalkiosk;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.dantsu.escposprinter.EscPosPrinter;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;
import com.dantsu.escposprinter.exceptions.EscPosParserException;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.example.digitalkiosk.PrinterService;
import com.example.digitalkiosk.models.Currency;
import com.example.digitalkiosk.models.KioskMeta;
import com.example.digitalkiosk.models.Order;
import com.example.digitalkiosk.models.OrderItem;
import com.example.digitalkiosk.models.PrinterLine;
import com.example.digitalkiosk.models.TestPrintQueueResponse;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.network.ApiClient;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import org.apache.http.message.TokenParser;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: PrinterService.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\r"}, d2 = {"Lcom/example/digitalkiosk/PrinterService;", "Landroid/app/Service;", "<init>", "()V", "onStartCommand", "", "intent", "Landroid/content/Intent;", "flags", "startId", "onBind", "Landroid/os/IBinder;", "Companion", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PrinterService extends Service {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX INFO: compiled from: PrinterService.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0005¨\u0006\n"}, d2 = {"Lcom/example/digitalkiosk/PrinterService$Companion;", "", "<init>", "()V", "printReceipt", "", "order", "Lcom/example/digitalkiosk/models/Order;", "environmentFriendlyPrint", "testPrint", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v122, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v145, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v155, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v163, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v174, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v183, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v195, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v204, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v213, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v27, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v41, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v52, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v73, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v78, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v85, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v94, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v42, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v46, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v6, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r3v14, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r3v60, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r3v69, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r7v23, types: [T, java.lang.String] */
        public final void printReceipt(Order order) {
            String str;
            float f;
            Iterator<OrderItem> it;
            Intrinsics.checkNotNullParameter(order, "order");
            final EscPosPrinter escPosPrinterConnectPrinter = MainActivity.INSTANCE.connectPrinter();
            if (escPosPrinterConnectPrinter != null) {
                Translation translation = MainActivity.INSTANCE.get_term_translation("receipt_title");
                String translation2 = translation != null ? translation.getTranslation() : "receipt";
                Translation translation3 = MainActivity.INSTANCE.get_term_translation("receipt_takeaway");
                String translation4 = translation3 != null ? translation3.getTranslation() : "Take Away";
                Translation translation5 = MainActivity.INSTANCE.get_term_translation("receipt_dine_in");
                String translation6 = translation5 != null ? translation5.getTranslation() : "Dine In";
                Translation translation7 = MainActivity.INSTANCE.get_term_translation("receipt_pickup");
                String translation8 = translation7 != null ? translation7.getTranslation() : "Pick Up";
                Translation translation9 = MainActivity.INSTANCE.get_term_translation("pickup_phone_number_receipt");
                String translation10 = translation9 != null ? translation9.getTranslation() : "Phone Number";
                Translation translation11 = MainActivity.INSTANCE.get_term_translation("receipt_order_type");
                String translation12 = translation11 != null ? translation11.getTranslation() : "Order Type";
                Translation translation13 = MainActivity.INSTANCE.get_term_translation("receipt_kiosk_id");
                String translation14 = translation13 != null ? translation13.getTranslation() : "Kiosk ID";
                Translation translation15 = MainActivity.INSTANCE.get_term_translation("receipt_table_number");
                String translation16 = translation15 != null ? translation15.getTranslation() : "Table Number";
                Translation translation17 = MainActivity.INSTANCE.get_term_translation("receipt_pickup_time");
                String translation18 = translation17 != null ? translation17.getTranslation() : "Pickup Time";
                Translation translation19 = MainActivity.INSTANCE.get_term_translation("receipt_items");
                String translation20 = translation19 != null ? translation19.getTranslation() : "Items";
                Translation translation21 = MainActivity.INSTANCE.get_term_translation("receipt_total");
                String translation22 = translation21 != null ? translation21.getTranslation() : "Total";
                Translation translation23 = MainActivity.INSTANCE.get_term_translation("receipt_items_total");
                String translation24 = translation23 != null ? translation23.getTranslation() : "Items Total (Including Tax)";
                Translation translation25 = MainActivity.INSTANCE.get_term_translation("receipt_card_fees");
                String translation26 = translation25 != null ? translation25.getTranslation() : "Card Fees";
                Translation translation27 = MainActivity.INSTANCE.get_term_translation("receipt_discount_voucher");
                String translation28 = translation27 != null ? translation27.getTranslation() : "Discount Voucher";
                String str2 = translation4;
                Translation translation29 = MainActivity.INSTANCE.get_term_translation("receipt_tax");
                String translation30 = translation29 != null ? translation29.getTranslation() : "Tax";
                String str3 = translation6;
                Translation translation31 = MainActivity.INSTANCE.get_term_translation("receipt_tax_amount");
                String translation32 = translation31 != null ? translation31.getTranslation() : "Amount";
                String str4 = translation8;
                Translation translation33 = MainActivity.INSTANCE.get_term_translation("receipt_tax_included");
                String translation34 = translation33 != null ? translation33.getTranslation() : "Incl. Tax";
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                String str5 = translation34;
                objectRef.element = "\n\n\n\n[C]<b><font size='big-2'>" + order.getOrder_number() + "</font></b>\n\n\n\n\n[C]" + order.getCafe_name() + ",\n[C]" + order.getCafe_address() + ",\n";
                String str6 = translation32;
                if (order.getCafe_zipcode() != null) {
                    str = translation30;
                    objectRef.element = ((String) objectRef.element) + "[C]" + order.getCafe_zipcode() + TokenParser.SP + order.getCafe_city() + ",\n";
                } else {
                    str = translation30;
                    objectRef.element = ((String) objectRef.element) + "[C]" + order.getCafe_city() + '\n';
                }
                if (order.getCafe_vat() != null) {
                    objectRef.element = ((String) objectRef.element) + "[C]VAT " + order.getCafe_vat() + '\n';
                }
                objectRef.element = ((String) objectRef.element) + "\n\n\n\n[C]<font size='big'>" + translation2 + "</font>\n\n\n";
                String str7 = Intrinsics.areEqual(order.getOrder_type(), "dine-in") ? str3 : Intrinsics.areEqual(order.getOrder_type(), "pick-up") ? str4 : str2;
                String str8 = "[C]";
                objectRef.element = ((String) objectRef.element) + "[L]" + translation12 + ": " + str7 + "\n[L]" + translation14 + ": " + order.getKiosk_id() + "\n[L]" + order.getFormatted_date() + '\n';
                if (Intrinsics.areEqual(order.getOrder_type(), "dine-in") && order.getDinein_table() != null) {
                    objectRef.element = ((String) objectRef.element) + "[L]" + translation16 + ": " + order.getDinein_table() + '\n';
                }
                if (Intrinsics.areEqual(order.getOrder_type(), "pick-up") && order.getPickup_time() != null) {
                    objectRef.element = ((String) objectRef.element) + "[L]" + translation18 + ": " + order.getPickup_time() + '\n';
                }
                if (Intrinsics.areEqual(order.getOrder_type(), "pick-up") && order.getPickup_number() != null) {
                    objectRef.element = ((String) objectRef.element) + "[L]" + translation10 + ": " + order.getPickup_number() + '\n';
                }
                objectRef.element = ((String) objectRef.element) + "\n[L]" + translation20 + "[R]" + translation22 + '\n';
                Iterator<OrderItem> it2 = order.getItems().iterator();
                Intrinsics.checkNotNullExpressionValue(it2, "iterator(...)");
                while (it2.hasNext()) {
                    OrderItem next = it2.next();
                    Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                    OrderItem orderItem = next;
                    String name = orderItem.getName();
                    if (orderItem.getQuantity() != null) {
                        f = 0.0f;
                        name = orderItem.getQuantity() + TokenParser.SP + name;
                    } else {
                        f = 0.0f;
                    }
                    StringBuilder sbAppend = new StringBuilder().append((String) objectRef.element).append("[L]  ").append(name).append("[R]");
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String str9 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(orderItem.getSubtotal())}, 1));
                    Intrinsics.checkNotNullExpressionValue(str9, "format(...)");
                    objectRef.element = sbAppend.append(str9).append('\n').toString();
                    if (orderItem.getSub_items() != null) {
                        Iterator<OrderItem> it3 = orderItem.getSub_items().iterator();
                        Intrinsics.checkNotNullExpressionValue(it3, "iterator(...)");
                        while (it3.hasNext()) {
                            OrderItem next2 = it3.next();
                            Intrinsics.checkNotNullExpressionValue(next2, "next(...)");
                            OrderItem orderItem2 = next2;
                            if (orderItem2.getSubtotal() == f) {
                                objectRef.element = ((String) objectRef.element) + "[L]    " + orderItem2.getQuantity() + TokenParser.SP + orderItem2.getName() + '\n';
                                it2 = it2;
                            } else {
                                Iterator<OrderItem> it4 = it2;
                                String name2 = orderItem2.getName();
                                if (orderItem2.getQuantity() != null) {
                                    it = it3;
                                    name2 = orderItem2.getQuantity() + TokenParser.SP + name2;
                                } else {
                                    it = it3;
                                }
                                StringBuilder sbAppend2 = new StringBuilder().append((String) objectRef.element).append("[L]    ").append(name2).append("[R]");
                                StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                                String str10 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(orderItem2.getSubtotal())}, 1));
                                Intrinsics.checkNotNullExpressionValue(str10, "format(...)");
                                objectRef.element = sbAppend2.append(str10).append('\n').toString();
                                it2 = it4;
                                it3 = it;
                            }
                        }
                    }
                }
                StringBuilder sbAppend3 = new StringBuilder().append((String) objectRef.element).append("\n[L]").append(translation24).append("[R]");
                StringCompanionObject stringCompanionObject3 = StringCompanionObject.INSTANCE;
                String str11 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getAmount() - order.getCard_fee())}, 1));
                Intrinsics.checkNotNullExpressionValue(str11, "format(...)");
                objectRef.element = sbAppend3.append(str11).append('\n').toString();
                if (order.getCard_fee() > 0.0f) {
                    StringBuilder sbAppend4 = new StringBuilder("\n").append((String) objectRef.element).append("\n[L]").append(translation26).append("[R]");
                    StringCompanionObject stringCompanionObject4 = StringCompanionObject.INSTANCE;
                    String str12 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getCard_fee())}, 1));
                    Intrinsics.checkNotNullExpressionValue(str12, "format(...)");
                    objectRef.element = sbAppend4.append(str12).append('\n').toString();
                }
                if (order.getVoucher_name() != null) {
                    StringBuilder sbAppend5 = new StringBuilder("\n").append((String) objectRef.element).append("\n[L]").append(translation28).append(TokenParser.SP).append(order.getVoucher_name()).append("[R]");
                    StringCompanionObject stringCompanionObject5 = StringCompanionObject.INSTANCE;
                    Float voucher_discount_amount = order.getVoucher_discount_amount();
                    Intrinsics.checkNotNull(voucher_discount_amount);
                    String str13 = String.format("%.2f", Arrays.copyOf(new Object[]{voucher_discount_amount}, 1));
                    Intrinsics.checkNotNullExpressionValue(str13, "format(...)");
                    objectRef.element = sbAppend5.append(str13).append('\n').toString();
                }
                String str14 = str;
                StringBuilder sbAppend6 = new StringBuilder().append((String) objectRef.element).append("\n[L][R]").append(str14).append("%[R]").append(str6).append("[R]").append(str14).append("\n[L]").append(str5).append("[R]");
                StringCompanionObject stringCompanionObject6 = StringCompanionObject.INSTANCE;
                String str15 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getTax_percent())}, 1));
                Intrinsics.checkNotNullExpressionValue(str15, "format(...)");
                StringBuilder sbAppend7 = sbAppend6.append(str15).append("[R]");
                StringCompanionObject stringCompanionObject7 = StringCompanionObject.INSTANCE;
                String str16 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getAmount() - order.getCard_fee())}, 1));
                Intrinsics.checkNotNullExpressionValue(str16, "format(...)");
                StringBuilder sbAppend8 = sbAppend7.append(str16).append("[R]");
                StringCompanionObject stringCompanionObject8 = StringCompanionObject.INSTANCE;
                String str17 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getTax())}, 1));
                Intrinsics.checkNotNullExpressionValue(str17, "format(...)");
                objectRef.element = sbAppend8.append(str17).append('\n').toString();
                if (order.getStripe_details() != null) {
                    objectRef.element = ((String) objectRef.element) + "\n\n\n\n\n\n[L]" + order.getStripe_details().getLocation_name() + "\n[L]" + order.getStripe_details().getLocation_address1() + '\n';
                    if (!Intrinsics.areEqual(order.getStripe_details().getLocation_address2(), "")) {
                        objectRef.element = ((String) objectRef.element) + "[L]" + order.getStripe_details().getLocation_address2() + '\n';
                    }
                    String str18 = order.getStripe_details().getLocation_postal_code() != null ? "" + order.getStripe_details().getLocation_postal_code() : "";
                    if (order.getStripe_details().getLocation_state() != null) {
                        if (!Intrinsics.areEqual(str18, "")) {
                            str18 = str18 + TokenParser.SP;
                        }
                        str18 = str18 + order.getStripe_details().getLocation_state();
                    }
                    if (order.getStripe_details().getLocation_city() != null) {
                        if (!Intrinsics.areEqual(str18, "")) {
                            str18 = str18 + TokenParser.SP;
                        }
                        str18 = str18 + order.getStripe_details().getLocation_city();
                    }
                    StringBuilder sbAppend9 = new StringBuilder().append((String) objectRef.element).append("[L]").append(str18).append("\n\n[L]").append(order.getStripe_details().getDate()).append("[L][L]").append(order.getStripe_details().getTime()).append("[L]\n\n[L]").append(str6).append("[L]");
                    Currency currency = MainActivity.INSTANCE.getCurrency();
                    String symbol = currency != null ? currency.getSymbol() : null;
                    Intrinsics.checkNotNull(symbol);
                    StringBuilder sbAppend10 = sbAppend9.append(symbol).append("[L]");
                    StringCompanionObject stringCompanionObject9 = StringCompanionObject.INSTANCE;
                    String str19 = String.format("%.2f", Arrays.copyOf(new Object[]{Float.valueOf(order.getAmount())}, 1));
                    Intrinsics.checkNotNullExpressionValue(str19, "format(...)");
                    objectRef.element = sbAppend10.append(str19).append("[L]\n\n\n[L]").append(order.getStripe_details().getCard_brand()).append("\n[L]").append(order.getStripe_details().getRead_method()).append("\n[L]").append(order.getStripe_details().getLast4()).append('\n').toString();
                }
                objectRef.element = ((String) objectRef.element) + "\n\n[C]--------------------------------------------\n";
                Iterator<PrinterLine> it5 = MainActivity.INSTANCE.getPrintLines().iterator();
                Intrinsics.checkNotNullExpressionValue(it5, "iterator(...)");
                while (it5.hasNext()) {
                    PrinterLine next3 = it5.next();
                    Intrinsics.checkNotNullExpressionValue(next3, "next(...)");
                    PrinterLine printerLine = next3;
                    if (Intrinsics.areEqual(printerLine.getType(), PrinterTextParser.ATTR_BARCODE_TEXT_POSITION)) {
                        objectRef.element = ((String) objectRef.element) + str8 + printerLine.getValue() + '\n';
                    } else {
                        String str20 = str8;
                        if (Intrinsics.areEqual(printerLine.getType(), "qr")) {
                            objectRef.element = ((String) objectRef.element) + "\n[C]<qrcode size='30'>" + printerLine.getValue() + "</qrcode>\n\n";
                        }
                        str8 = str20;
                    }
                }
                objectRef.element = ((String) objectRef.element) + "\n\n[C]--------------------------------------------\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
                new Thread(new Runnable() { // from class: com.example.digitalkiosk.PrinterService$Companion$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() throws EscPosBarcodeException, EscPosEncodingException, InterruptedException, EscPosParserException, EscPosConnectionException {
                        PrinterService.Companion.printReceipt$lambda$0(escPosPrinterConnectPrinter, objectRef);
                    }
                }).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final void printReceipt$lambda$0(EscPosPrinter escPosPrinter, Ref.ObjectRef objectRef) throws EscPosBarcodeException, EscPosEncodingException, InterruptedException, EscPosParserException, EscPosConnectionException {
            escPosPrinter.printFormattedText((String) objectRef.element);
            Thread.sleep(200L);
            escPosPrinter.printFormattedTextAndCut("", 35.0f);
            escPosPrinter.disconnectPrinter();
            MainActivity.INSTANCE.checkPrinterPaperStatus();
        }

        public final void environmentFriendlyPrint(Order order) {
            Intrinsics.checkNotNullParameter(order, "order");
            final EscPosPrinter escPosPrinterConnectPrinter = MainActivity.INSTANCE.connectPrinter();
            if (escPosPrinterConnectPrinter != null) {
                final String str = "\n\n\n\n[C]<b><font size='big'>" + order.getOrder_number() + "</font></b>\n";
                new Thread(new Runnable() { // from class: com.example.digitalkiosk.PrinterService$Companion$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() throws EscPosBarcodeException, EscPosEncodingException, InterruptedException, EscPosParserException, EscPosConnectionException {
                        PrinterService.Companion.environmentFriendlyPrint$lambda$1(escPosPrinterConnectPrinter, str);
                    }
                }).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void environmentFriendlyPrint$lambda$1(EscPosPrinter escPosPrinter, String str) throws EscPosBarcodeException, EscPosEncodingException, InterruptedException, EscPosParserException, EscPosConnectionException {
            escPosPrinter.printFormattedText(str);
            Thread.sleep(200L);
            escPosPrinter.printFormattedTextAndCut("", 10.0f);
            escPosPrinter.disconnectPrinter();
            MainActivity.INSTANCE.checkPrinterPaperStatus();
        }

        public final void testPrint() {
            final EscPosPrinter escPosPrinterConnectPrinter = MainActivity.INSTANCE.connectPrinter();
            if (escPosPrinterConnectPrinter != null) {
                new Thread(new Runnable() { // from class: com.example.digitalkiosk.PrinterService$Companion$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() throws EscPosBarcodeException, InterruptedException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
                        PrinterService.Companion.testPrint$lambda$2(escPosPrinterConnectPrinter);
                    }
                }).start();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void testPrint$lambda$2(EscPosPrinter escPosPrinter) throws EscPosBarcodeException, InterruptedException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
            escPosPrinter.printCharsetEncodingCharacters(MainActivity.INSTANCE.getPrinterCodepage());
            Thread.sleep(200L);
            escPosPrinter.printFormattedTextAndCut("", 10.0f);
            escPosPrinter.disconnectPrinter();
            MainActivity.INSTANCE.checkPrinterPaperStatus();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        new Thread(new Runnable() { // from class: com.example.digitalkiosk.PrinterService$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                PrinterService.onStartCommand$lambda$0();
            }
        }).start();
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStartCommand$lambda$0() throws InterruptedException {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        while (true) {
            if (booleanRef.element) {
                ApiClient.INSTANCE.get_test_print_queue$app_release(new Callback<TestPrintQueueResponse>() { // from class: com.example.digitalkiosk.PrinterService$onStartCommand$1$1
                    @Override // retrofit2.Callback
                    public void onFailure(Call<TestPrintQueueResponse> p0, Throwable p1) {
                        Intrinsics.checkNotNullParameter(p0, "p0");
                        Intrinsics.checkNotNullParameter(p1, "p1");
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(Call<TestPrintQueueResponse> p0, Response<TestPrintQueueResponse> p1) {
                        TestPrintQueueResponse testPrintQueueResponseBody;
                        Intrinsics.checkNotNullParameter(p0, "p0");
                        Intrinsics.checkNotNullParameter(p1, "p1");
                        if (p1.code() == 200 && (testPrintQueueResponseBody = p1.body()) != null && testPrintQueueResponseBody.getPrint()) {
                            PrinterService.INSTANCE.testPrint();
                        }
                    }
                });
                Thread.sleep(1000L);
                ApiClient.INSTANCE.customer_receipts_queue$app_release(new Callback<ArrayList<KioskMeta>>() { // from class: com.example.digitalkiosk.PrinterService$onStartCommand$1$2
                    @Override // retrofit2.Callback
                    public void onFailure(Call<ArrayList<KioskMeta>> call, Throwable t) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(Call<ArrayList<KioskMeta>> call, Response<ArrayList<KioskMeta>> response) {
                        ArrayList<KioskMeta> arrayListBody;
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        if (response.code() != 200 || (arrayListBody = response.body()) == null || arrayListBody.size() <= 0) {
                            return;
                        }
                        booleanRef.element = false;
                        ApiClient apiClient = ApiClient.INSTANCE;
                        int id = arrayListBody.get(0).getId();
                        final Ref.BooleanRef booleanRef2 = booleanRef;
                        apiClient.customer_receipts_queue_print$app_release(id, new Callback<Order>() { // from class: com.example.digitalkiosk.PrinterService$onStartCommand$1$2$onResponse$1
                            @Override // retrofit2.Callback
                            public void onResponse(Call<Order> call2, Response<Order> response2) {
                                Order orderBody;
                                Intrinsics.checkNotNullParameter(call2, "call");
                                Intrinsics.checkNotNullParameter(response2, "response");
                                booleanRef2.element = true;
                                if (response2.code() != 200 || (orderBody = response2.body()) == null) {
                                    return;
                                }
                                PrinterService.INSTANCE.printReceipt(orderBody);
                            }

                            @Override // retrofit2.Callback
                            public void onFailure(Call<Order> call2, Throwable t) {
                                Intrinsics.checkNotNullParameter(call2, "call");
                                Intrinsics.checkNotNullParameter(t, "t");
                                booleanRef2.element = true;
                            }
                        });
                    }
                });
            }
            Thread.sleep(2000L);
        }
    }
}
