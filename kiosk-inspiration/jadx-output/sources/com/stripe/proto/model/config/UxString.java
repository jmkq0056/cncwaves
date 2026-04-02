package com.stripe.proto.model.config;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: UxString.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\bP\b\u0086\u0081\u0002\u0018\u0000 S2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001SB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bR¨\u0006T"}, d2 = {"Lcom/stripe/proto/model/config/UxString;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INVALID_UXSTRING", "MESSAGE_ACTIVATE_READER", "MESSAGE_USE_FOLLOWING_CODE", "MESSAGE_READY_TO_GO", "MESSAGE_ACCEPT_PAYMENTS", "MESSAGE_NO_INTERNET_CONNECTION", "MESSAGE_NO_INTERNET_ADVICE", "MESSAGE_DOWNLOADING_UPDATE", "MESSAGE_WAIT_SEVERAL_MINUTES", "MESSAGE_CONNECTING", "MESSAGE_PROCESSING", "MESSAGE_CHECKING_FOR_UPDATE", "MESSAGE_DOWNLOADING_UPDATE_ADVICE", "MESSAGE_PREPARING_UPDATE", "MESSAGE_INSTALLING_UPDATE", "MESSAGE_INSTALLING_UPDATE_ADVICE", "MESSAGE_SCANNING", "MESSAGE_THANK_YOU", "MESSAGE_REMOVE_CARD", "MESSAGE_PLEASE_WAIT", "MESSAGE_COMPLETING_YOUR_ORDER", "MESSAGE_INSERT_OR_SWIPE", "MESSAGE_INSERT_TAP_OR_SWIPE", "MESSAGE_INSERT_OR_SWIPE_TO_PAY", "MESSAGE_INSERT_TAP_OR_SWIPE_TO_PAY", "MESSAGE_INSERT_OR_TAP_TO_REFUND", "MESSAGE_TOTALING_YOUR_REFUND", "MESSAGE_TOTALING_YOUR_ORDER", "MESSAGE_ENTER_PIN", "MESSAGE_TIP", "MESSAGE_TIP_CUSTOM", "MESSAGE_TIP_SKIP", "MESSAGE_TIP_CONTINUE", "MESSAGE_CONNECT_TO_NETWORK", "MESSAGE_UNSUPPORTED_NETWORKS", "MESSAGE_ENTER_WIFI_PASSWORD", "MESSAGE_PASSWORD_PLACEHOLDER", "MESSAGE_RESCAN", "MESSAGE_USE_WIFI", "MESSAGE_PLACEHOLDER_PASSWORD", "MESSAGE_KEYBOARD_MAIN_INSTR", "MESSAGE_KEYBOARD_SUB_INSTR", "MESSAGE_INCORRECT_PASSWORD", "MESSAGE_CONNECTED_TO", "MESSAGE_SOMETHING_WRONG", "MESSAGE_PAYMENT_NOT_THROUGH", "MESSAGE_REFUND_NOT_THROUGH", "MESSAGE_SWIPE_AGAIN", "MESSAGE_INVALID_CARD", "MESSAGE_INVALID_PIN", "MESSAGE_FINAL_INVALID_PIN", "MESSAGE_PIN_RETRIES", "MESSAGE_BAD_INSERT", "MESSAGE_PLEASE_INSERT", "MESSAGE_SERVICE_NOT_ALLOWED", "MESSAGE_CALL_ISSUER", "MESSAGE_PAYMENT_DECLINED", "MESSAGE_REFUND_DECLINED", "MESSAGE_CARD_DECLINED", "MESSAGE_EXPIRED_CARD", "MESSAGE_REFER_TO_DEVICE", "MESSAGE_CHOOSE_AN_ACCOUNT", "MESSAGE_CHOOSE_AN_OPTION", "MESSAGE_SIGN_BELOW", "MESSAGE_DEFAULT", "MESSAGE_SAVINGS", "MESSAGE_CHECK_OR_DEBIT", "MESSAGE_CREDIT", "MESSAGE_DONE", "MESSAGE_CLEAR", "MESSAGE_BACKSPACE", "MESSAGE_ENTER", "MESSAGE_CARD", "SUMMARY_CHARGED_TO", "SUMMARY_REFUNDED_TO", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UxString implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ UxString[] $VALUES;
    public static final ProtoAdapter<UxString> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final UxString INVALID_UXSTRING;
    public static final UxString MESSAGE_ACCEPT_PAYMENTS;
    public static final UxString MESSAGE_ACTIVATE_READER;
    public static final UxString MESSAGE_BACKSPACE;
    public static final UxString MESSAGE_BAD_INSERT;
    public static final UxString MESSAGE_CALL_ISSUER;
    public static final UxString MESSAGE_CARD;
    public static final UxString MESSAGE_CARD_DECLINED;
    public static final UxString MESSAGE_CHECKING_FOR_UPDATE;
    public static final UxString MESSAGE_CHECK_OR_DEBIT;
    public static final UxString MESSAGE_CHOOSE_AN_ACCOUNT;
    public static final UxString MESSAGE_CHOOSE_AN_OPTION;
    public static final UxString MESSAGE_CLEAR;
    public static final UxString MESSAGE_COMPLETING_YOUR_ORDER;
    public static final UxString MESSAGE_CONNECTED_TO;
    public static final UxString MESSAGE_CONNECTING;
    public static final UxString MESSAGE_CONNECT_TO_NETWORK;
    public static final UxString MESSAGE_CREDIT;
    public static final UxString MESSAGE_DEFAULT;
    public static final UxString MESSAGE_DONE;
    public static final UxString MESSAGE_DOWNLOADING_UPDATE;
    public static final UxString MESSAGE_DOWNLOADING_UPDATE_ADVICE;
    public static final UxString MESSAGE_ENTER;
    public static final UxString MESSAGE_ENTER_PIN;
    public static final UxString MESSAGE_ENTER_WIFI_PASSWORD;
    public static final UxString MESSAGE_EXPIRED_CARD;
    public static final UxString MESSAGE_FINAL_INVALID_PIN;
    public static final UxString MESSAGE_INCORRECT_PASSWORD;
    public static final UxString MESSAGE_INSERT_OR_SWIPE;
    public static final UxString MESSAGE_INSERT_OR_SWIPE_TO_PAY;
    public static final UxString MESSAGE_INSERT_OR_TAP_TO_REFUND;
    public static final UxString MESSAGE_INSERT_TAP_OR_SWIPE;
    public static final UxString MESSAGE_INSERT_TAP_OR_SWIPE_TO_PAY;
    public static final UxString MESSAGE_INSTALLING_UPDATE;
    public static final UxString MESSAGE_INSTALLING_UPDATE_ADVICE;
    public static final UxString MESSAGE_INVALID_CARD;
    public static final UxString MESSAGE_INVALID_PIN;
    public static final UxString MESSAGE_KEYBOARD_MAIN_INSTR;
    public static final UxString MESSAGE_KEYBOARD_SUB_INSTR;
    public static final UxString MESSAGE_NO_INTERNET_ADVICE;
    public static final UxString MESSAGE_NO_INTERNET_CONNECTION;
    public static final UxString MESSAGE_PASSWORD_PLACEHOLDER;
    public static final UxString MESSAGE_PAYMENT_DECLINED;
    public static final UxString MESSAGE_PAYMENT_NOT_THROUGH;
    public static final UxString MESSAGE_PIN_RETRIES;
    public static final UxString MESSAGE_PLACEHOLDER_PASSWORD;
    public static final UxString MESSAGE_PLEASE_INSERT;
    public static final UxString MESSAGE_PLEASE_WAIT;
    public static final UxString MESSAGE_PREPARING_UPDATE;
    public static final UxString MESSAGE_PROCESSING;
    public static final UxString MESSAGE_READY_TO_GO;
    public static final UxString MESSAGE_REFER_TO_DEVICE;
    public static final UxString MESSAGE_REFUND_DECLINED;
    public static final UxString MESSAGE_REFUND_NOT_THROUGH;
    public static final UxString MESSAGE_REMOVE_CARD;
    public static final UxString MESSAGE_RESCAN;
    public static final UxString MESSAGE_SAVINGS;
    public static final UxString MESSAGE_SCANNING;
    public static final UxString MESSAGE_SERVICE_NOT_ALLOWED;
    public static final UxString MESSAGE_SIGN_BELOW;
    public static final UxString MESSAGE_SOMETHING_WRONG;
    public static final UxString MESSAGE_SWIPE_AGAIN;
    public static final UxString MESSAGE_THANK_YOU;
    public static final UxString MESSAGE_TIP;
    public static final UxString MESSAGE_TIP_CONTINUE;
    public static final UxString MESSAGE_TIP_CUSTOM;
    public static final UxString MESSAGE_TIP_SKIP;
    public static final UxString MESSAGE_TOTALING_YOUR_ORDER;
    public static final UxString MESSAGE_TOTALING_YOUR_REFUND;
    public static final UxString MESSAGE_UNSUPPORTED_NETWORKS;
    public static final UxString MESSAGE_USE_FOLLOWING_CODE;
    public static final UxString MESSAGE_USE_WIFI;
    public static final UxString MESSAGE_WAIT_SEVERAL_MINUTES;
    public static final UxString SUMMARY_CHARGED_TO;
    public static final UxString SUMMARY_REFUNDED_TO;
    private final int value;

    private static final /* synthetic */ UxString[] $values() {
        return new UxString[]{INVALID_UXSTRING, MESSAGE_ACTIVATE_READER, MESSAGE_USE_FOLLOWING_CODE, MESSAGE_READY_TO_GO, MESSAGE_ACCEPT_PAYMENTS, MESSAGE_NO_INTERNET_CONNECTION, MESSAGE_NO_INTERNET_ADVICE, MESSAGE_DOWNLOADING_UPDATE, MESSAGE_WAIT_SEVERAL_MINUTES, MESSAGE_CONNECTING, MESSAGE_PROCESSING, MESSAGE_CHECKING_FOR_UPDATE, MESSAGE_DOWNLOADING_UPDATE_ADVICE, MESSAGE_PREPARING_UPDATE, MESSAGE_INSTALLING_UPDATE, MESSAGE_INSTALLING_UPDATE_ADVICE, MESSAGE_SCANNING, MESSAGE_THANK_YOU, MESSAGE_REMOVE_CARD, MESSAGE_PLEASE_WAIT, MESSAGE_COMPLETING_YOUR_ORDER, MESSAGE_INSERT_OR_SWIPE, MESSAGE_INSERT_TAP_OR_SWIPE, MESSAGE_INSERT_OR_SWIPE_TO_PAY, MESSAGE_INSERT_TAP_OR_SWIPE_TO_PAY, MESSAGE_INSERT_OR_TAP_TO_REFUND, MESSAGE_TOTALING_YOUR_REFUND, MESSAGE_TOTALING_YOUR_ORDER, MESSAGE_ENTER_PIN, MESSAGE_TIP, MESSAGE_TIP_CUSTOM, MESSAGE_TIP_SKIP, MESSAGE_TIP_CONTINUE, MESSAGE_CONNECT_TO_NETWORK, MESSAGE_UNSUPPORTED_NETWORKS, MESSAGE_ENTER_WIFI_PASSWORD, MESSAGE_PASSWORD_PLACEHOLDER, MESSAGE_RESCAN, MESSAGE_USE_WIFI, MESSAGE_PLACEHOLDER_PASSWORD, MESSAGE_KEYBOARD_MAIN_INSTR, MESSAGE_KEYBOARD_SUB_INSTR, MESSAGE_INCORRECT_PASSWORD, MESSAGE_CONNECTED_TO, MESSAGE_SOMETHING_WRONG, MESSAGE_PAYMENT_NOT_THROUGH, MESSAGE_REFUND_NOT_THROUGH, MESSAGE_SWIPE_AGAIN, MESSAGE_INVALID_CARD, MESSAGE_INVALID_PIN, MESSAGE_FINAL_INVALID_PIN, MESSAGE_PIN_RETRIES, MESSAGE_BAD_INSERT, MESSAGE_PLEASE_INSERT, MESSAGE_SERVICE_NOT_ALLOWED, MESSAGE_CALL_ISSUER, MESSAGE_PAYMENT_DECLINED, MESSAGE_REFUND_DECLINED, MESSAGE_CARD_DECLINED, MESSAGE_EXPIRED_CARD, MESSAGE_REFER_TO_DEVICE, MESSAGE_CHOOSE_AN_ACCOUNT, MESSAGE_CHOOSE_AN_OPTION, MESSAGE_SIGN_BELOW, MESSAGE_DEFAULT, MESSAGE_SAVINGS, MESSAGE_CHECK_OR_DEBIT, MESSAGE_CREDIT, MESSAGE_DONE, MESSAGE_CLEAR, MESSAGE_BACKSPACE, MESSAGE_ENTER, MESSAGE_CARD, SUMMARY_CHARGED_TO, SUMMARY_REFUNDED_TO};
    }

    @JvmStatic
    public static final UxString fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<UxString> getEntries() {
        return $ENTRIES;
    }

    public static UxString valueOf(String str) {
        return (UxString) Enum.valueOf(UxString.class, str);
    }

    public static UxString[] values() {
        return (UxString[]) $VALUES.clone();
    }

    private UxString(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final UxString uxString = new UxString("INVALID_UXSTRING", 0, 0);
        INVALID_UXSTRING = uxString;
        MESSAGE_ACTIVATE_READER = new UxString("MESSAGE_ACTIVATE_READER", 1, 1);
        MESSAGE_USE_FOLLOWING_CODE = new UxString("MESSAGE_USE_FOLLOWING_CODE", 2, 2);
        MESSAGE_READY_TO_GO = new UxString("MESSAGE_READY_TO_GO", 3, 3);
        MESSAGE_ACCEPT_PAYMENTS = new UxString("MESSAGE_ACCEPT_PAYMENTS", 4, 4);
        MESSAGE_NO_INTERNET_CONNECTION = new UxString("MESSAGE_NO_INTERNET_CONNECTION", 5, 5);
        MESSAGE_NO_INTERNET_ADVICE = new UxString("MESSAGE_NO_INTERNET_ADVICE", 6, 6);
        MESSAGE_DOWNLOADING_UPDATE = new UxString("MESSAGE_DOWNLOADING_UPDATE", 7, 7);
        MESSAGE_WAIT_SEVERAL_MINUTES = new UxString("MESSAGE_WAIT_SEVERAL_MINUTES", 8, 8);
        MESSAGE_CONNECTING = new UxString("MESSAGE_CONNECTING", 9, 9);
        MESSAGE_PROCESSING = new UxString("MESSAGE_PROCESSING", 10, 10);
        MESSAGE_CHECKING_FOR_UPDATE = new UxString("MESSAGE_CHECKING_FOR_UPDATE", 11, 48);
        MESSAGE_DOWNLOADING_UPDATE_ADVICE = new UxString("MESSAGE_DOWNLOADING_UPDATE_ADVICE", 12, 57);
        MESSAGE_PREPARING_UPDATE = new UxString("MESSAGE_PREPARING_UPDATE", 13, 58);
        MESSAGE_INSTALLING_UPDATE = new UxString("MESSAGE_INSTALLING_UPDATE", 14, 59);
        MESSAGE_INSTALLING_UPDATE_ADVICE = new UxString("MESSAGE_INSTALLING_UPDATE_ADVICE", 15, 60);
        MESSAGE_SCANNING = new UxString("MESSAGE_SCANNING", 16, 49);
        MESSAGE_THANK_YOU = new UxString("MESSAGE_THANK_YOU", 17, 11);
        MESSAGE_REMOVE_CARD = new UxString("MESSAGE_REMOVE_CARD", 18, 12);
        MESSAGE_PLEASE_WAIT = new UxString("MESSAGE_PLEASE_WAIT", 19, 13);
        MESSAGE_COMPLETING_YOUR_ORDER = new UxString("MESSAGE_COMPLETING_YOUR_ORDER", 20, 14);
        MESSAGE_INSERT_OR_SWIPE = new UxString("MESSAGE_INSERT_OR_SWIPE", 21, 15);
        MESSAGE_INSERT_TAP_OR_SWIPE = new UxString("MESSAGE_INSERT_TAP_OR_SWIPE", 22, 16);
        MESSAGE_INSERT_OR_SWIPE_TO_PAY = new UxString("MESSAGE_INSERT_OR_SWIPE_TO_PAY", 23, 17);
        MESSAGE_INSERT_TAP_OR_SWIPE_TO_PAY = new UxString("MESSAGE_INSERT_TAP_OR_SWIPE_TO_PAY", 24, 18);
        MESSAGE_INSERT_OR_TAP_TO_REFUND = new UxString("MESSAGE_INSERT_OR_TAP_TO_REFUND", 25, 70);
        MESSAGE_TOTALING_YOUR_REFUND = new UxString("MESSAGE_TOTALING_YOUR_REFUND", 26, 69);
        MESSAGE_TOTALING_YOUR_ORDER = new UxString("MESSAGE_TOTALING_YOUR_ORDER", 27, 62);
        MESSAGE_ENTER_PIN = new UxString("MESSAGE_ENTER_PIN", 28, 19);
        MESSAGE_TIP = new UxString("MESSAGE_TIP", 29, 42);
        MESSAGE_TIP_CUSTOM = new UxString("MESSAGE_TIP_CUSTOM", 30, 45);
        MESSAGE_TIP_SKIP = new UxString("MESSAGE_TIP_SKIP", 31, 46);
        MESSAGE_TIP_CONTINUE = new UxString("MESSAGE_TIP_CONTINUE", 32, 47);
        MESSAGE_CONNECT_TO_NETWORK = new UxString("MESSAGE_CONNECT_TO_NETWORK", 33, 50);
        MESSAGE_UNSUPPORTED_NETWORKS = new UxString("MESSAGE_UNSUPPORTED_NETWORKS", 34, 51);
        MESSAGE_ENTER_WIFI_PASSWORD = new UxString("MESSAGE_ENTER_WIFI_PASSWORD", 35, 52);
        MESSAGE_PASSWORD_PLACEHOLDER = new UxString("MESSAGE_PASSWORD_PLACEHOLDER", 36, 53);
        MESSAGE_RESCAN = new UxString("MESSAGE_RESCAN", 37, 56);
        MESSAGE_USE_WIFI = new UxString("MESSAGE_USE_WIFI", 38, 61);
        MESSAGE_PLACEHOLDER_PASSWORD = new UxString("MESSAGE_PLACEHOLDER_PASSWORD", 39, 63);
        MESSAGE_KEYBOARD_MAIN_INSTR = new UxString("MESSAGE_KEYBOARD_MAIN_INSTR", 40, 64);
        MESSAGE_KEYBOARD_SUB_INSTR = new UxString("MESSAGE_KEYBOARD_SUB_INSTR", 41, 65);
        MESSAGE_INCORRECT_PASSWORD = new UxString("MESSAGE_INCORRECT_PASSWORD", 42, 66);
        MESSAGE_CONNECTED_TO = new UxString("MESSAGE_CONNECTED_TO", 43, 67);
        MESSAGE_SOMETHING_WRONG = new UxString("MESSAGE_SOMETHING_WRONG", 44, 20);
        MESSAGE_PAYMENT_NOT_THROUGH = new UxString("MESSAGE_PAYMENT_NOT_THROUGH", 45, 21);
        MESSAGE_REFUND_NOT_THROUGH = new UxString("MESSAGE_REFUND_NOT_THROUGH", 46, 72);
        MESSAGE_SWIPE_AGAIN = new UxString("MESSAGE_SWIPE_AGAIN", 47, 22);
        MESSAGE_INVALID_CARD = new UxString("MESSAGE_INVALID_CARD", 48, 23);
        MESSAGE_INVALID_PIN = new UxString("MESSAGE_INVALID_PIN", 49, 24);
        MESSAGE_FINAL_INVALID_PIN = new UxString("MESSAGE_FINAL_INVALID_PIN", 50, 25);
        MESSAGE_PIN_RETRIES = new UxString("MESSAGE_PIN_RETRIES", 51, 74);
        MESSAGE_BAD_INSERT = new UxString("MESSAGE_BAD_INSERT", 52, 26);
        MESSAGE_PLEASE_INSERT = new UxString("MESSAGE_PLEASE_INSERT", 53, 27);
        MESSAGE_SERVICE_NOT_ALLOWED = new UxString("MESSAGE_SERVICE_NOT_ALLOWED", 54, 28);
        MESSAGE_CALL_ISSUER = new UxString("MESSAGE_CALL_ISSUER", 55, 29);
        MESSAGE_PAYMENT_DECLINED = new UxString("MESSAGE_PAYMENT_DECLINED", 56, 30);
        MESSAGE_REFUND_DECLINED = new UxString("MESSAGE_REFUND_DECLINED", 57, 71);
        MESSAGE_CARD_DECLINED = new UxString("MESSAGE_CARD_DECLINED", 58, 31);
        MESSAGE_EXPIRED_CARD = new UxString("MESSAGE_EXPIRED_CARD", 59, 32);
        MESSAGE_REFER_TO_DEVICE = new UxString("MESSAGE_REFER_TO_DEVICE", 60, 33);
        MESSAGE_CHOOSE_AN_ACCOUNT = new UxString("MESSAGE_CHOOSE_AN_ACCOUNT", 61, 34);
        MESSAGE_CHOOSE_AN_OPTION = new UxString("MESSAGE_CHOOSE_AN_OPTION", 62, 35);
        MESSAGE_SIGN_BELOW = new UxString("MESSAGE_SIGN_BELOW", 63, 37);
        MESSAGE_DEFAULT = new UxString("MESSAGE_DEFAULT", 64, 38);
        MESSAGE_SAVINGS = new UxString("MESSAGE_SAVINGS", 65, 39);
        MESSAGE_CHECK_OR_DEBIT = new UxString("MESSAGE_CHECK_OR_DEBIT", 66, 40);
        MESSAGE_CREDIT = new UxString("MESSAGE_CREDIT", 67, 41);
        MESSAGE_DONE = new UxString("MESSAGE_DONE", 68, 43);
        MESSAGE_CLEAR = new UxString("MESSAGE_CLEAR", 69, 44);
        MESSAGE_BACKSPACE = new UxString("MESSAGE_BACKSPACE", 70, 54);
        MESSAGE_ENTER = new UxString("MESSAGE_ENTER", 71, 55);
        MESSAGE_CARD = new UxString("MESSAGE_CARD", 72, 73);
        SUMMARY_CHARGED_TO = new UxString("SUMMARY_CHARGED_TO", 73, 36);
        SUMMARY_REFUNDED_TO = new UxString("SUMMARY_REFUNDED_TO", 74, 68);
        UxString[] uxStringArr$values = $values();
        $VALUES = uxStringArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(uxStringArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UxString.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<UxString>(orCreateKotlinClass, syntax, uxString) { // from class: com.stripe.proto.model.config.UxString$Companion$ADAPTER$1
            {
                UxString uxString2 = uxString;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public UxString fromValue(int value) {
                return UxString.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: UxString.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/UxString$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/UxString;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final UxString fromValue(int value) {
            switch (value) {
                case 0:
                    return UxString.INVALID_UXSTRING;
                case 1:
                    return UxString.MESSAGE_ACTIVATE_READER;
                case 2:
                    return UxString.MESSAGE_USE_FOLLOWING_CODE;
                case 3:
                    return UxString.MESSAGE_READY_TO_GO;
                case 4:
                    return UxString.MESSAGE_ACCEPT_PAYMENTS;
                case 5:
                    return UxString.MESSAGE_NO_INTERNET_CONNECTION;
                case 6:
                    return UxString.MESSAGE_NO_INTERNET_ADVICE;
                case 7:
                    return UxString.MESSAGE_DOWNLOADING_UPDATE;
                case 8:
                    return UxString.MESSAGE_WAIT_SEVERAL_MINUTES;
                case 9:
                    return UxString.MESSAGE_CONNECTING;
                case 10:
                    return UxString.MESSAGE_PROCESSING;
                case 11:
                    return UxString.MESSAGE_THANK_YOU;
                case 12:
                    return UxString.MESSAGE_REMOVE_CARD;
                case 13:
                    return UxString.MESSAGE_PLEASE_WAIT;
                case 14:
                    return UxString.MESSAGE_COMPLETING_YOUR_ORDER;
                case 15:
                    return UxString.MESSAGE_INSERT_OR_SWIPE;
                case 16:
                    return UxString.MESSAGE_INSERT_TAP_OR_SWIPE;
                case 17:
                    return UxString.MESSAGE_INSERT_OR_SWIPE_TO_PAY;
                case 18:
                    return UxString.MESSAGE_INSERT_TAP_OR_SWIPE_TO_PAY;
                case 19:
                    return UxString.MESSAGE_ENTER_PIN;
                case 20:
                    return UxString.MESSAGE_SOMETHING_WRONG;
                case 21:
                    return UxString.MESSAGE_PAYMENT_NOT_THROUGH;
                case 22:
                    return UxString.MESSAGE_SWIPE_AGAIN;
                case 23:
                    return UxString.MESSAGE_INVALID_CARD;
                case 24:
                    return UxString.MESSAGE_INVALID_PIN;
                case 25:
                    return UxString.MESSAGE_FINAL_INVALID_PIN;
                case 26:
                    return UxString.MESSAGE_BAD_INSERT;
                case 27:
                    return UxString.MESSAGE_PLEASE_INSERT;
                case 28:
                    return UxString.MESSAGE_SERVICE_NOT_ALLOWED;
                case 29:
                    return UxString.MESSAGE_CALL_ISSUER;
                case 30:
                    return UxString.MESSAGE_PAYMENT_DECLINED;
                case 31:
                    return UxString.MESSAGE_CARD_DECLINED;
                case 32:
                    return UxString.MESSAGE_EXPIRED_CARD;
                case 33:
                    return UxString.MESSAGE_REFER_TO_DEVICE;
                case 34:
                    return UxString.MESSAGE_CHOOSE_AN_ACCOUNT;
                case 35:
                    return UxString.MESSAGE_CHOOSE_AN_OPTION;
                case 36:
                    return UxString.SUMMARY_CHARGED_TO;
                case 37:
                    return UxString.MESSAGE_SIGN_BELOW;
                case 38:
                    return UxString.MESSAGE_DEFAULT;
                case 39:
                    return UxString.MESSAGE_SAVINGS;
                case 40:
                    return UxString.MESSAGE_CHECK_OR_DEBIT;
                case 41:
                    return UxString.MESSAGE_CREDIT;
                case 42:
                    return UxString.MESSAGE_TIP;
                case 43:
                    return UxString.MESSAGE_DONE;
                case 44:
                    return UxString.MESSAGE_CLEAR;
                case 45:
                    return UxString.MESSAGE_TIP_CUSTOM;
                case 46:
                    return UxString.MESSAGE_TIP_SKIP;
                case 47:
                    return UxString.MESSAGE_TIP_CONTINUE;
                case 48:
                    return UxString.MESSAGE_CHECKING_FOR_UPDATE;
                case 49:
                    return UxString.MESSAGE_SCANNING;
                case 50:
                    return UxString.MESSAGE_CONNECT_TO_NETWORK;
                case 51:
                    return UxString.MESSAGE_UNSUPPORTED_NETWORKS;
                case 52:
                    return UxString.MESSAGE_ENTER_WIFI_PASSWORD;
                case 53:
                    return UxString.MESSAGE_PASSWORD_PLACEHOLDER;
                case 54:
                    return UxString.MESSAGE_BACKSPACE;
                case 55:
                    return UxString.MESSAGE_ENTER;
                case 56:
                    return UxString.MESSAGE_RESCAN;
                case 57:
                    return UxString.MESSAGE_DOWNLOADING_UPDATE_ADVICE;
                case 58:
                    return UxString.MESSAGE_PREPARING_UPDATE;
                case 59:
                    return UxString.MESSAGE_INSTALLING_UPDATE;
                case 60:
                    return UxString.MESSAGE_INSTALLING_UPDATE_ADVICE;
                case 61:
                    return UxString.MESSAGE_USE_WIFI;
                case 62:
                    return UxString.MESSAGE_TOTALING_YOUR_ORDER;
                case 63:
                    return UxString.MESSAGE_PLACEHOLDER_PASSWORD;
                case 64:
                    return UxString.MESSAGE_KEYBOARD_MAIN_INSTR;
                case 65:
                    return UxString.MESSAGE_KEYBOARD_SUB_INSTR;
                case 66:
                    return UxString.MESSAGE_INCORRECT_PASSWORD;
                case 67:
                    return UxString.MESSAGE_CONNECTED_TO;
                case 68:
                    return UxString.SUMMARY_REFUNDED_TO;
                case 69:
                    return UxString.MESSAGE_TOTALING_YOUR_REFUND;
                case 70:
                    return UxString.MESSAGE_INSERT_OR_TAP_TO_REFUND;
                case 71:
                    return UxString.MESSAGE_REFUND_DECLINED;
                case 72:
                    return UxString.MESSAGE_REFUND_NOT_THROUGH;
                case 73:
                    return UxString.MESSAGE_CARD;
                case 74:
                    return UxString.MESSAGE_PIN_RETRIES;
                default:
                    return null;
            }
        }
    }
}
