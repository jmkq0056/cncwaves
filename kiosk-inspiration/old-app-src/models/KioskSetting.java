package com.example.digitalkiosk.models;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KioskSetting.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b@\b\u0086\b\u0018\u00002\u00020\u0001BÇ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0016\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u0006\u0012\u0006\u0010\u001b\u001a\u00020\u0006\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u000b¢\u0006\u0004\b\u001f\u0010 J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\t\u0010@\u001a\u00020\u0006HÆ\u0003J\t\u0010A\u001a\u00020\u0006HÆ\u0003J\t\u0010B\u001a\u00020\u0006HÆ\u0003J\t\u0010C\u001a\u00020\u0006HÆ\u0003J\t\u0010D\u001a\u00020\u000bHÆ\u0003J\t\u0010E\u001a\u00020\u0006HÆ\u0003J\t\u0010F\u001a\u00020\u0006HÆ\u0003J\t\u0010G\u001a\u00020\u0006HÆ\u0003J\t\u0010H\u001a\u00020\u0006HÆ\u0003J\t\u0010I\u001a\u00020\u0006HÆ\u0003J\t\u0010J\u001a\u00020\u0006HÆ\u0003J\t\u0010K\u001a\u00020\u0003HÆ\u0003J\t\u0010L\u001a\u00020\u0014HÆ\u0003J\t\u0010M\u001a\u00020\u0006HÆ\u0003J\u0019\u0010N\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019HÆ\u0003J\t\u0010O\u001a\u00020\u0006HÆ\u0003J\t\u0010P\u001a\u00020\u0006HÆ\u0003J\t\u0010Q\u001a\u00020\u0003HÆ\u0003J\t\u0010R\u001a\u00020\u0003HÆ\u0003J\t\u0010S\u001a\u00020\u000bHÆ\u0003Jõ\u0001\u0010T\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00062\u0018\b\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00062\b\b\u0002\u0010\u001b\u001a\u00020\u00062\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u000bHÆ\u0001J\u0013\u0010U\u001a\u00020\u00062\b\u0010V\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010W\u001a\u00020\u000bHÖ\u0001J\t\u0010X\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\"R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b'\u0010%R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b(\u0010%R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0011\u0010\f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b+\u0010%R\u0011\u0010\r\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b,\u0010%R\u0011\u0010\u000e\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b-\u0010%R\u0011\u0010\u000f\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b.\u0010%R\u0011\u0010\u0010\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b/\u0010%R\u0011\u0010\u0011\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b0\u0010%R\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\"R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0011\u0010\u0015\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b4\u0010%R!\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u0010\u001a\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b7\u0010%R\u001a\u0010\u001b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010%\"\u0004\b9\u0010:R\u0011\u0010\u001c\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b;\u0010\"R\u0011\u0010\u001d\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b<\u0010\"R\u0011\u0010\u001e\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b=\u0010*¨\u0006Y"}, d2 = {"Lcom/example/digitalkiosk/models/KioskSetting;", "", "app_logo", "", "video", "takeaway_enabled", "", "dinein_enabled", "picklater_enabled", "dinein_tables", "pick_later_minutes", "", "bag_active", "bag_force", "cash_enabled", "paypal_enabled", "card_enabled", "mobilepay_enabled", "stripe_reader", FirebaseAnalytics.Param.CURRENCY, "Lcom/example/digitalkiosk/models/Currency;", "direct_payment_enabled", "printer_lines", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/PrinterLine;", "Lkotlin/collections/ArrayList;", "environment_friendly_print_enabled", "sandbox_mode", "printer_type", "activated_printer", "printer_codepage", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZZZIZZZZZZLjava/lang/String;Lcom/example/digitalkiosk/models/Currency;ZLjava/util/ArrayList;ZZLjava/lang/String;Ljava/lang/String;I)V", "getApp_logo", "()Ljava/lang/String;", "getVideo", "getTakeaway_enabled", "()Z", "getDinein_enabled", "getPicklater_enabled", "getDinein_tables", "getPick_later_minutes", "()I", "getBag_active", "getBag_force", "getCash_enabled", "getPaypal_enabled", "getCard_enabled", "getMobilepay_enabled", "getStripe_reader", "getCurrency", "()Lcom/example/digitalkiosk/models/Currency;", "getDirect_payment_enabled", "getPrinter_lines", "()Ljava/util/ArrayList;", "getEnvironment_friendly_print_enabled", "getSandbox_mode", "setSandbox_mode", "(Z)V", "getPrinter_type", "getActivated_printer", "getPrinter_codepage", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class KioskSetting {
    private final String activated_printer;
    private final String app_logo;
    private final boolean bag_active;
    private final boolean bag_force;
    private final boolean card_enabled;
    private final boolean cash_enabled;
    private final Currency currency;
    private final boolean dinein_enabled;
    private final boolean dinein_tables;
    private final boolean direct_payment_enabled;
    private final boolean environment_friendly_print_enabled;
    private final boolean mobilepay_enabled;
    private final boolean paypal_enabled;
    private final int pick_later_minutes;
    private final boolean picklater_enabled;
    private final int printer_codepage;
    private final ArrayList<PrinterLine> printer_lines;
    private final String printer_type;
    private boolean sandbox_mode;
    private final String stripe_reader;
    private final boolean takeaway_enabled;
    private final String video;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ KioskSetting copy$default(KioskSetting kioskSetting, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, int i, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, String str3, Currency currency, boolean z11, ArrayList arrayList, boolean z12, boolean z13, String str4, String str5, int i2, int i3, Object obj) {
        int i4;
        String str6;
        String str7 = (i3 & 1) != 0 ? kioskSetting.app_logo : str;
        String str8 = (i3 & 2) != 0 ? kioskSetting.video : str2;
        boolean z14 = (i3 & 4) != 0 ? kioskSetting.takeaway_enabled : z;
        boolean z15 = (i3 & 8) != 0 ? kioskSetting.dinein_enabled : z2;
        boolean z16 = (i3 & 16) != 0 ? kioskSetting.picklater_enabled : z3;
        boolean z17 = (i3 & 32) != 0 ? kioskSetting.dinein_tables : z4;
        int i5 = (i3 & 64) != 0 ? kioskSetting.pick_later_minutes : i;
        boolean z18 = (i3 & 128) != 0 ? kioskSetting.bag_active : z5;
        boolean z19 = (i3 & 256) != 0 ? kioskSetting.bag_force : z6;
        boolean z20 = (i3 & 512) != 0 ? kioskSetting.cash_enabled : z7;
        boolean z21 = (i3 & 1024) != 0 ? kioskSetting.paypal_enabled : z8;
        boolean z22 = (i3 & 2048) != 0 ? kioskSetting.card_enabled : z9;
        boolean z23 = (i3 & 4096) != 0 ? kioskSetting.mobilepay_enabled : z10;
        String str9 = (i3 & 8192) != 0 ? kioskSetting.stripe_reader : str3;
        String str10 = str7;
        Currency currency2 = (i3 & 16384) != 0 ? kioskSetting.currency : currency;
        boolean z24 = (i3 & 32768) != 0 ? kioskSetting.direct_payment_enabled : z11;
        ArrayList arrayList2 = (i3 & 65536) != 0 ? kioskSetting.printer_lines : arrayList;
        boolean z25 = (i3 & 131072) != 0 ? kioskSetting.environment_friendly_print_enabled : z12;
        boolean z26 = (i3 & 262144) != 0 ? kioskSetting.sandbox_mode : z13;
        String str11 = (i3 & 524288) != 0 ? kioskSetting.printer_type : str4;
        String str12 = (i3 & 1048576) != 0 ? kioskSetting.activated_printer : str5;
        if ((i3 & 2097152) != 0) {
            str6 = str12;
            i4 = kioskSetting.printer_codepage;
        } else {
            i4 = i2;
            str6 = str12;
        }
        return kioskSetting.copy(str10, str8, z14, z15, z16, z17, i5, z18, z19, z20, z21, z22, z23, str9, currency2, z24, arrayList2, z25, z26, str11, str6, i4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getApp_logo() {
        return this.app_logo;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getCash_enabled() {
        return this.cash_enabled;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getPaypal_enabled() {
        return this.paypal_enabled;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getCard_enabled() {
        return this.card_enabled;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final boolean getMobilepay_enabled() {
        return this.mobilepay_enabled;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getStripe_reader() {
        return this.stripe_reader;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Currency getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final boolean getDirect_payment_enabled() {
        return this.direct_payment_enabled;
    }

    public final ArrayList<PrinterLine> component17() {
        return this.printer_lines;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final boolean getEnvironment_friendly_print_enabled() {
        return this.environment_friendly_print_enabled;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final boolean getSandbox_mode() {
        return this.sandbox_mode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVideo() {
        return this.video;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getPrinter_type() {
        return this.printer_type;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getActivated_printer() {
        return this.activated_printer;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final int getPrinter_codepage() {
        return this.printer_codepage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getTakeaway_enabled() {
        return this.takeaway_enabled;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getDinein_enabled() {
        return this.dinein_enabled;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getPicklater_enabled() {
        return this.picklater_enabled;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getDinein_tables() {
        return this.dinein_tables;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final int getPick_later_minutes() {
        return this.pick_later_minutes;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getBag_active() {
        return this.bag_active;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getBag_force() {
        return this.bag_force;
    }

    public final KioskSetting copy(String app_logo, String video, boolean takeaway_enabled, boolean dinein_enabled, boolean picklater_enabled, boolean dinein_tables, int pick_later_minutes, boolean bag_active, boolean bag_force, boolean cash_enabled, boolean paypal_enabled, boolean card_enabled, boolean mobilepay_enabled, String stripe_reader, Currency currency, boolean direct_payment_enabled, ArrayList<PrinterLine> printer_lines, boolean environment_friendly_print_enabled, boolean sandbox_mode, String printer_type, String activated_printer, int printer_codepage) {
        Intrinsics.checkNotNullParameter(app_logo, "app_logo");
        Intrinsics.checkNotNullParameter(video, "video");
        Intrinsics.checkNotNullParameter(stripe_reader, "stripe_reader");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(printer_lines, "printer_lines");
        Intrinsics.checkNotNullParameter(printer_type, "printer_type");
        Intrinsics.checkNotNullParameter(activated_printer, "activated_printer");
        return new KioskSetting(app_logo, video, takeaway_enabled, dinein_enabled, picklater_enabled, dinein_tables, pick_later_minutes, bag_active, bag_force, cash_enabled, paypal_enabled, card_enabled, mobilepay_enabled, stripe_reader, currency, direct_payment_enabled, printer_lines, environment_friendly_print_enabled, sandbox_mode, printer_type, activated_printer, printer_codepage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof KioskSetting)) {
            return false;
        }
        KioskSetting kioskSetting = (KioskSetting) other;
        return Intrinsics.areEqual(this.app_logo, kioskSetting.app_logo) && Intrinsics.areEqual(this.video, kioskSetting.video) && this.takeaway_enabled == kioskSetting.takeaway_enabled && this.dinein_enabled == kioskSetting.dinein_enabled && this.picklater_enabled == kioskSetting.picklater_enabled && this.dinein_tables == kioskSetting.dinein_tables && this.pick_later_minutes == kioskSetting.pick_later_minutes && this.bag_active == kioskSetting.bag_active && this.bag_force == kioskSetting.bag_force && this.cash_enabled == kioskSetting.cash_enabled && this.paypal_enabled == kioskSetting.paypal_enabled && this.card_enabled == kioskSetting.card_enabled && this.mobilepay_enabled == kioskSetting.mobilepay_enabled && Intrinsics.areEqual(this.stripe_reader, kioskSetting.stripe_reader) && Intrinsics.areEqual(this.currency, kioskSetting.currency) && this.direct_payment_enabled == kioskSetting.direct_payment_enabled && Intrinsics.areEqual(this.printer_lines, kioskSetting.printer_lines) && this.environment_friendly_print_enabled == kioskSetting.environment_friendly_print_enabled && this.sandbox_mode == kioskSetting.sandbox_mode && Intrinsics.areEqual(this.printer_type, kioskSetting.printer_type) && Intrinsics.areEqual(this.activated_printer, kioskSetting.activated_printer) && this.printer_codepage == kioskSetting.printer_codepage;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((this.app_logo.hashCode() * 31) + this.video.hashCode()) * 31) + Boolean.hashCode(this.takeaway_enabled)) * 31) + Boolean.hashCode(this.dinein_enabled)) * 31) + Boolean.hashCode(this.picklater_enabled)) * 31) + Boolean.hashCode(this.dinein_tables)) * 31) + Integer.hashCode(this.pick_later_minutes)) * 31) + Boolean.hashCode(this.bag_active)) * 31) + Boolean.hashCode(this.bag_force)) * 31) + Boolean.hashCode(this.cash_enabled)) * 31) + Boolean.hashCode(this.paypal_enabled)) * 31) + Boolean.hashCode(this.card_enabled)) * 31) + Boolean.hashCode(this.mobilepay_enabled)) * 31) + this.stripe_reader.hashCode()) * 31) + this.currency.hashCode()) * 31) + Boolean.hashCode(this.direct_payment_enabled)) * 31) + this.printer_lines.hashCode()) * 31) + Boolean.hashCode(this.environment_friendly_print_enabled)) * 31) + Boolean.hashCode(this.sandbox_mode)) * 31) + this.printer_type.hashCode()) * 31) + this.activated_printer.hashCode()) * 31) + Integer.hashCode(this.printer_codepage);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("KioskSetting(app_logo=");
        sb.append(this.app_logo).append(", video=").append(this.video).append(", takeaway_enabled=").append(this.takeaway_enabled).append(", dinein_enabled=").append(this.dinein_enabled).append(", picklater_enabled=").append(this.picklater_enabled).append(", dinein_tables=").append(this.dinein_tables).append(", pick_later_minutes=").append(this.pick_later_minutes).append(", bag_active=").append(this.bag_active).append(", bag_force=").append(this.bag_force).append(", cash_enabled=").append(this.cash_enabled).append(", paypal_enabled=").append(this.paypal_enabled).append(", card_enabled=");
        sb.append(this.card_enabled).append(", mobilepay_enabled=").append(this.mobilepay_enabled).append(", stripe_reader=").append(this.stripe_reader).append(", currency=").append(this.currency).append(", direct_payment_enabled=").append(this.direct_payment_enabled).append(", printer_lines=").append(this.printer_lines).append(", environment_friendly_print_enabled=").append(this.environment_friendly_print_enabled).append(", sandbox_mode=").append(this.sandbox_mode).append(", printer_type=").append(this.printer_type).append(", activated_printer=").append(this.activated_printer).append(", printer_codepage=").append(this.printer_codepage).append(')');
        return sb.toString();
    }

    public KioskSetting(String app_logo, String video, boolean z, boolean z2, boolean z3, boolean z4, int i, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, String stripe_reader, Currency currency, boolean z11, ArrayList<PrinterLine> printer_lines, boolean z12, boolean z13, String printer_type, String activated_printer, int i2) {
        Intrinsics.checkNotNullParameter(app_logo, "app_logo");
        Intrinsics.checkNotNullParameter(video, "video");
        Intrinsics.checkNotNullParameter(stripe_reader, "stripe_reader");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(printer_lines, "printer_lines");
        Intrinsics.checkNotNullParameter(printer_type, "printer_type");
        Intrinsics.checkNotNullParameter(activated_printer, "activated_printer");
        this.app_logo = app_logo;
        this.video = video;
        this.takeaway_enabled = z;
        this.dinein_enabled = z2;
        this.picklater_enabled = z3;
        this.dinein_tables = z4;
        this.pick_later_minutes = i;
        this.bag_active = z5;
        this.bag_force = z6;
        this.cash_enabled = z7;
        this.paypal_enabled = z8;
        this.card_enabled = z9;
        this.mobilepay_enabled = z10;
        this.stripe_reader = stripe_reader;
        this.currency = currency;
        this.direct_payment_enabled = z11;
        this.printer_lines = printer_lines;
        this.environment_friendly_print_enabled = z12;
        this.sandbox_mode = z13;
        this.printer_type = printer_type;
        this.activated_printer = activated_printer;
        this.printer_codepage = i2;
    }

    public final String getApp_logo() {
        return this.app_logo;
    }

    public final String getVideo() {
        return this.video;
    }

    public final boolean getTakeaway_enabled() {
        return this.takeaway_enabled;
    }

    public final boolean getDinein_enabled() {
        return this.dinein_enabled;
    }

    public final boolean getPicklater_enabled() {
        return this.picklater_enabled;
    }

    public final boolean getDinein_tables() {
        return this.dinein_tables;
    }

    public final int getPick_later_minutes() {
        return this.pick_later_minutes;
    }

    public final boolean getBag_active() {
        return this.bag_active;
    }

    public final boolean getBag_force() {
        return this.bag_force;
    }

    public final boolean getCash_enabled() {
        return this.cash_enabled;
    }

    public final boolean getPaypal_enabled() {
        return this.paypal_enabled;
    }

    public final boolean getCard_enabled() {
        return this.card_enabled;
    }

    public final boolean getMobilepay_enabled() {
        return this.mobilepay_enabled;
    }

    public final String getStripe_reader() {
        return this.stripe_reader;
    }

    public final Currency getCurrency() {
        return this.currency;
    }

    public final boolean getDirect_payment_enabled() {
        return this.direct_payment_enabled;
    }

    public final ArrayList<PrinterLine> getPrinter_lines() {
        return this.printer_lines;
    }

    public final boolean getEnvironment_friendly_print_enabled() {
        return this.environment_friendly_print_enabled;
    }

    public final boolean getSandbox_mode() {
        return this.sandbox_mode;
    }

    public final void setSandbox_mode(boolean z) {
        this.sandbox_mode = z;
    }

    public final String getPrinter_type() {
        return this.printer_type;
    }

    public final String getActivated_printer() {
        return this.activated_printer;
    }

    public final int getPrinter_codepage() {
        return this.printer_codepage;
    }
}
