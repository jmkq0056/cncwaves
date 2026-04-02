package com.stripe.bbpos.sdk;

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
/* JADX INFO: compiled from: DisplayText.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\bE\b\u0086\u0081\u0002\u0018\u0000 H2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001HB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bG¨\u0006I"}, d2 = {"Lcom/stripe/bbpos/sdk/DisplayText;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "DISPLAY_TEXT_UNKNOWN", "APPROVED", "CALL_YOUR_BANK", "DECLINED", "ENTER_AMOUNT", "ENTER_PIN", "INCORRECT_PIN", "INSERT_CARD", "NOT_ACCEPTED", "PIN_OK", "PLEASE_WAIT", "REMOVE_CARD", "USE_MAG_STRIPE", "TRY_AGAIN", "REFER_TO_YOUR_PAYMENT_DEVICE", "TRANSACTION_TERMINATED", "PROCESSING", "LAST_PIN_TRY", "SELECT_ACCOUNT", "PRESENT_CARD", "APPROVED_PLEASE_SIGN", "PRESENT_CARD_AGAIN", "AUTHORISING", "INSERT_SWIPE_OR_TRY_ANOTHER_CARD", "INSERT_OR_SWIPE_CARD", "MULTIPLE_CARDS_DETECTED", "TIMEOUT", "APPLICATION_EXPIRED", "FINAL_CONFIRM", "SHOW_THANK_YOU", "PIN_TRY_LIMIT_EXCEEDED", "NOT_ICC_CARD", "CARD_INSERTED", "CARD_REMOVED", "NO_EMV_APPS", "CTL_NO_EMV_APPS", "CTL_APP_NOT_SUPPORTED", "CTL_TRANSACTION_LIMIT_EXCEEDED", "INVALID_INPUT", "CARD_ERROR", "TOO_MANY_TAPS", "INCORRECT_CARD_DATA", "ERROR_STATUS_WORD", "CARD_IS_STILL_INSERTED", "DPAS_CDCVM", "CARD_NOT_ADMITTED", "INVALID_TRANSACTION", "INVALID_CARD_NUMBER", "SYSTEM_MALFUNCTION", "EXPIRED_CARD", "TRANSACTION_NOT_PERMITTED", "INVALID_FUNCTION", "INVALID_CARD", "WRONG_CARD", "TERMINAL_NOT_PERMITTED", "ORIGINAL_AMOUNT_INCORRECT", "CARD_NOT_READABLE", "AUTHENTICATION_REQUIRED", "DECLINED_WITH_RESPONSE_CODE_05", "NOT_ACCEPTED_TRY_AGAIN", "CARD_ERROR_PLEASE_ENTER_PIN_AGAIN", "CARD_ERROR_PLEASE_REMOVE_CARD", "NOT_ACCEPTED_PLEASE_REMOVE_CARD", "PROCESSING_ERROR_PLEASE_REMOVE_CARD", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DisplayText implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DisplayText[] $VALUES;
    public static final ProtoAdapter<DisplayText> ADAPTER;
    public static final DisplayText APPLICATION_EXPIRED;
    public static final DisplayText APPROVED;
    public static final DisplayText APPROVED_PLEASE_SIGN;
    public static final DisplayText AUTHENTICATION_REQUIRED;
    public static final DisplayText AUTHORISING;
    public static final DisplayText CALL_YOUR_BANK;
    public static final DisplayText CARD_ERROR;
    public static final DisplayText CARD_ERROR_PLEASE_ENTER_PIN_AGAIN;
    public static final DisplayText CARD_ERROR_PLEASE_REMOVE_CARD;
    public static final DisplayText CARD_INSERTED;
    public static final DisplayText CARD_IS_STILL_INSERTED;
    public static final DisplayText CARD_NOT_ADMITTED;
    public static final DisplayText CARD_NOT_READABLE;
    public static final DisplayText CARD_REMOVED;
    public static final DisplayText CTL_APP_NOT_SUPPORTED;
    public static final DisplayText CTL_NO_EMV_APPS;
    public static final DisplayText CTL_TRANSACTION_LIMIT_EXCEEDED;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final DisplayText DECLINED;
    public static final DisplayText DECLINED_WITH_RESPONSE_CODE_05;
    public static final DisplayText DISPLAY_TEXT_UNKNOWN;
    public static final DisplayText DPAS_CDCVM;
    public static final DisplayText ENTER_AMOUNT;
    public static final DisplayText ENTER_PIN;
    public static final DisplayText ERROR_STATUS_WORD;
    public static final DisplayText EXPIRED_CARD;
    public static final DisplayText FINAL_CONFIRM;
    public static final DisplayText INCORRECT_CARD_DATA;
    public static final DisplayText INCORRECT_PIN;
    public static final DisplayText INSERT_CARD;
    public static final DisplayText INSERT_OR_SWIPE_CARD;
    public static final DisplayText INSERT_SWIPE_OR_TRY_ANOTHER_CARD;
    public static final DisplayText INVALID_CARD;
    public static final DisplayText INVALID_CARD_NUMBER;
    public static final DisplayText INVALID_FUNCTION;
    public static final DisplayText INVALID_INPUT;
    public static final DisplayText INVALID_TRANSACTION;
    public static final DisplayText LAST_PIN_TRY;
    public static final DisplayText MULTIPLE_CARDS_DETECTED;
    public static final DisplayText NOT_ACCEPTED;
    public static final DisplayText NOT_ACCEPTED_PLEASE_REMOVE_CARD;
    public static final DisplayText NOT_ACCEPTED_TRY_AGAIN;
    public static final DisplayText NOT_ICC_CARD;
    public static final DisplayText NO_EMV_APPS;
    public static final DisplayText ORIGINAL_AMOUNT_INCORRECT;
    public static final DisplayText PIN_OK;
    public static final DisplayText PIN_TRY_LIMIT_EXCEEDED;
    public static final DisplayText PLEASE_WAIT;
    public static final DisplayText PRESENT_CARD;
    public static final DisplayText PRESENT_CARD_AGAIN;
    public static final DisplayText PROCESSING;
    public static final DisplayText PROCESSING_ERROR_PLEASE_REMOVE_CARD;
    public static final DisplayText REFER_TO_YOUR_PAYMENT_DEVICE;
    public static final DisplayText REMOVE_CARD;
    public static final DisplayText SELECT_ACCOUNT;
    public static final DisplayText SHOW_THANK_YOU;
    public static final DisplayText SYSTEM_MALFUNCTION;
    public static final DisplayText TERMINAL_NOT_PERMITTED;
    public static final DisplayText TIMEOUT;
    public static final DisplayText TOO_MANY_TAPS;
    public static final DisplayText TRANSACTION_NOT_PERMITTED;
    public static final DisplayText TRANSACTION_TERMINATED;
    public static final DisplayText TRY_AGAIN;
    public static final DisplayText USE_MAG_STRIPE;
    public static final DisplayText WRONG_CARD;
    private final int value;

    private static final /* synthetic */ DisplayText[] $values() {
        return new DisplayText[]{DISPLAY_TEXT_UNKNOWN, APPROVED, CALL_YOUR_BANK, DECLINED, ENTER_AMOUNT, ENTER_PIN, INCORRECT_PIN, INSERT_CARD, NOT_ACCEPTED, PIN_OK, PLEASE_WAIT, REMOVE_CARD, USE_MAG_STRIPE, TRY_AGAIN, REFER_TO_YOUR_PAYMENT_DEVICE, TRANSACTION_TERMINATED, PROCESSING, LAST_PIN_TRY, SELECT_ACCOUNT, PRESENT_CARD, APPROVED_PLEASE_SIGN, PRESENT_CARD_AGAIN, AUTHORISING, INSERT_SWIPE_OR_TRY_ANOTHER_CARD, INSERT_OR_SWIPE_CARD, MULTIPLE_CARDS_DETECTED, TIMEOUT, APPLICATION_EXPIRED, FINAL_CONFIRM, SHOW_THANK_YOU, PIN_TRY_LIMIT_EXCEEDED, NOT_ICC_CARD, CARD_INSERTED, CARD_REMOVED, NO_EMV_APPS, CTL_NO_EMV_APPS, CTL_APP_NOT_SUPPORTED, CTL_TRANSACTION_LIMIT_EXCEEDED, INVALID_INPUT, CARD_ERROR, TOO_MANY_TAPS, INCORRECT_CARD_DATA, ERROR_STATUS_WORD, CARD_IS_STILL_INSERTED, DPAS_CDCVM, CARD_NOT_ADMITTED, INVALID_TRANSACTION, INVALID_CARD_NUMBER, SYSTEM_MALFUNCTION, EXPIRED_CARD, TRANSACTION_NOT_PERMITTED, INVALID_FUNCTION, INVALID_CARD, WRONG_CARD, TERMINAL_NOT_PERMITTED, ORIGINAL_AMOUNT_INCORRECT, CARD_NOT_READABLE, AUTHENTICATION_REQUIRED, DECLINED_WITH_RESPONSE_CODE_05, NOT_ACCEPTED_TRY_AGAIN, CARD_ERROR_PLEASE_ENTER_PIN_AGAIN, CARD_ERROR_PLEASE_REMOVE_CARD, NOT_ACCEPTED_PLEASE_REMOVE_CARD, PROCESSING_ERROR_PLEASE_REMOVE_CARD};
    }

    @JvmStatic
    public static final DisplayText fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<DisplayText> getEntries() {
        return $ENTRIES;
    }

    public static DisplayText valueOf(String str) {
        return (DisplayText) Enum.valueOf(DisplayText.class, str);
    }

    public static DisplayText[] values() {
        return (DisplayText[]) $VALUES.clone();
    }

    private DisplayText(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final DisplayText displayText = new DisplayText("DISPLAY_TEXT_UNKNOWN", 0, 0);
        DISPLAY_TEXT_UNKNOWN = displayText;
        APPROVED = new DisplayText("APPROVED", 1, 1);
        CALL_YOUR_BANK = new DisplayText("CALL_YOUR_BANK", 2, 2);
        DECLINED = new DisplayText("DECLINED", 3, 3);
        ENTER_AMOUNT = new DisplayText("ENTER_AMOUNT", 4, 4);
        ENTER_PIN = new DisplayText("ENTER_PIN", 5, 5);
        INCORRECT_PIN = new DisplayText("INCORRECT_PIN", 6, 6);
        INSERT_CARD = new DisplayText("INSERT_CARD", 7, 7);
        NOT_ACCEPTED = new DisplayText("NOT_ACCEPTED", 8, 8);
        PIN_OK = new DisplayText("PIN_OK", 9, 9);
        PLEASE_WAIT = new DisplayText("PLEASE_WAIT", 10, 10);
        REMOVE_CARD = new DisplayText("REMOVE_CARD", 11, 11);
        USE_MAG_STRIPE = new DisplayText("USE_MAG_STRIPE", 12, 12);
        TRY_AGAIN = new DisplayText("TRY_AGAIN", 13, 13);
        REFER_TO_YOUR_PAYMENT_DEVICE = new DisplayText("REFER_TO_YOUR_PAYMENT_DEVICE", 14, 14);
        TRANSACTION_TERMINATED = new DisplayText("TRANSACTION_TERMINATED", 15, 15);
        PROCESSING = new DisplayText("PROCESSING", 16, 16);
        LAST_PIN_TRY = new DisplayText("LAST_PIN_TRY", 17, 17);
        SELECT_ACCOUNT = new DisplayText("SELECT_ACCOUNT", 18, 18);
        PRESENT_CARD = new DisplayText("PRESENT_CARD", 19, 19);
        APPROVED_PLEASE_SIGN = new DisplayText("APPROVED_PLEASE_SIGN", 20, 20);
        PRESENT_CARD_AGAIN = new DisplayText("PRESENT_CARD_AGAIN", 21, 21);
        AUTHORISING = new DisplayText("AUTHORISING", 22, 22);
        INSERT_SWIPE_OR_TRY_ANOTHER_CARD = new DisplayText("INSERT_SWIPE_OR_TRY_ANOTHER_CARD", 23, 23);
        INSERT_OR_SWIPE_CARD = new DisplayText("INSERT_OR_SWIPE_CARD", 24, 24);
        MULTIPLE_CARDS_DETECTED = new DisplayText("MULTIPLE_CARDS_DETECTED", 25, 25);
        TIMEOUT = new DisplayText("TIMEOUT", 26, 26);
        APPLICATION_EXPIRED = new DisplayText("APPLICATION_EXPIRED", 27, 27);
        FINAL_CONFIRM = new DisplayText("FINAL_CONFIRM", 28, 28);
        SHOW_THANK_YOU = new DisplayText("SHOW_THANK_YOU", 29, 29);
        PIN_TRY_LIMIT_EXCEEDED = new DisplayText("PIN_TRY_LIMIT_EXCEEDED", 30, 30);
        NOT_ICC_CARD = new DisplayText("NOT_ICC_CARD", 31, 31);
        CARD_INSERTED = new DisplayText("CARD_INSERTED", 32, 32);
        CARD_REMOVED = new DisplayText("CARD_REMOVED", 33, 33);
        NO_EMV_APPS = new DisplayText("NO_EMV_APPS", 34, 34);
        CTL_NO_EMV_APPS = new DisplayText("CTL_NO_EMV_APPS", 35, 35);
        CTL_APP_NOT_SUPPORTED = new DisplayText("CTL_APP_NOT_SUPPORTED", 36, 36);
        CTL_TRANSACTION_LIMIT_EXCEEDED = new DisplayText("CTL_TRANSACTION_LIMIT_EXCEEDED", 37, 37);
        INVALID_INPUT = new DisplayText("INVALID_INPUT", 38, 38);
        CARD_ERROR = new DisplayText("CARD_ERROR", 39, 39);
        TOO_MANY_TAPS = new DisplayText("TOO_MANY_TAPS", 40, 40);
        INCORRECT_CARD_DATA = new DisplayText("INCORRECT_CARD_DATA", 41, 41);
        ERROR_STATUS_WORD = new DisplayText("ERROR_STATUS_WORD", 42, 42);
        CARD_IS_STILL_INSERTED = new DisplayText("CARD_IS_STILL_INSERTED", 43, 43);
        DPAS_CDCVM = new DisplayText("DPAS_CDCVM", 44, 44);
        CARD_NOT_ADMITTED = new DisplayText("CARD_NOT_ADMITTED", 45, 45);
        INVALID_TRANSACTION = new DisplayText("INVALID_TRANSACTION", 46, 46);
        INVALID_CARD_NUMBER = new DisplayText("INVALID_CARD_NUMBER", 47, 47);
        SYSTEM_MALFUNCTION = new DisplayText("SYSTEM_MALFUNCTION", 48, 48);
        EXPIRED_CARD = new DisplayText("EXPIRED_CARD", 49, 49);
        TRANSACTION_NOT_PERMITTED = new DisplayText("TRANSACTION_NOT_PERMITTED", 50, 50);
        INVALID_FUNCTION = new DisplayText("INVALID_FUNCTION", 51, 51);
        INVALID_CARD = new DisplayText("INVALID_CARD", 52, 52);
        WRONG_CARD = new DisplayText("WRONG_CARD", 53, 53);
        TERMINAL_NOT_PERMITTED = new DisplayText("TERMINAL_NOT_PERMITTED", 54, 54);
        ORIGINAL_AMOUNT_INCORRECT = new DisplayText("ORIGINAL_AMOUNT_INCORRECT", 55, 55);
        CARD_NOT_READABLE = new DisplayText("CARD_NOT_READABLE", 56, 56);
        AUTHENTICATION_REQUIRED = new DisplayText("AUTHENTICATION_REQUIRED", 57, 57);
        DECLINED_WITH_RESPONSE_CODE_05 = new DisplayText("DECLINED_WITH_RESPONSE_CODE_05", 58, 58);
        NOT_ACCEPTED_TRY_AGAIN = new DisplayText("NOT_ACCEPTED_TRY_AGAIN", 59, 59);
        CARD_ERROR_PLEASE_ENTER_PIN_AGAIN = new DisplayText("CARD_ERROR_PLEASE_ENTER_PIN_AGAIN", 60, 60);
        CARD_ERROR_PLEASE_REMOVE_CARD = new DisplayText("CARD_ERROR_PLEASE_REMOVE_CARD", 61, 61);
        NOT_ACCEPTED_PLEASE_REMOVE_CARD = new DisplayText("NOT_ACCEPTED_PLEASE_REMOVE_CARD", 62, 62);
        PROCESSING_ERROR_PLEASE_REMOVE_CARD = new DisplayText("PROCESSING_ERROR_PLEASE_REMOVE_CARD", 63, 63);
        DisplayText[] displayTextArr$values = $values();
        $VALUES = displayTextArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(displayTextArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DisplayText.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<DisplayText>(orCreateKotlinClass, syntax, displayText) { // from class: com.stripe.bbpos.sdk.DisplayText$Companion$ADAPTER$1
            {
                DisplayText displayText2 = displayText;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public DisplayText fromValue(int value) {
                return DisplayText.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: DisplayText.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/DisplayText$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/DisplayText;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DisplayText fromValue(int value) {
            switch (value) {
                case 0:
                    return DisplayText.DISPLAY_TEXT_UNKNOWN;
                case 1:
                    return DisplayText.APPROVED;
                case 2:
                    return DisplayText.CALL_YOUR_BANK;
                case 3:
                    return DisplayText.DECLINED;
                case 4:
                    return DisplayText.ENTER_AMOUNT;
                case 5:
                    return DisplayText.ENTER_PIN;
                case 6:
                    return DisplayText.INCORRECT_PIN;
                case 7:
                    return DisplayText.INSERT_CARD;
                case 8:
                    return DisplayText.NOT_ACCEPTED;
                case 9:
                    return DisplayText.PIN_OK;
                case 10:
                    return DisplayText.PLEASE_WAIT;
                case 11:
                    return DisplayText.REMOVE_CARD;
                case 12:
                    return DisplayText.USE_MAG_STRIPE;
                case 13:
                    return DisplayText.TRY_AGAIN;
                case 14:
                    return DisplayText.REFER_TO_YOUR_PAYMENT_DEVICE;
                case 15:
                    return DisplayText.TRANSACTION_TERMINATED;
                case 16:
                    return DisplayText.PROCESSING;
                case 17:
                    return DisplayText.LAST_PIN_TRY;
                case 18:
                    return DisplayText.SELECT_ACCOUNT;
                case 19:
                    return DisplayText.PRESENT_CARD;
                case 20:
                    return DisplayText.APPROVED_PLEASE_SIGN;
                case 21:
                    return DisplayText.PRESENT_CARD_AGAIN;
                case 22:
                    return DisplayText.AUTHORISING;
                case 23:
                    return DisplayText.INSERT_SWIPE_OR_TRY_ANOTHER_CARD;
                case 24:
                    return DisplayText.INSERT_OR_SWIPE_CARD;
                case 25:
                    return DisplayText.MULTIPLE_CARDS_DETECTED;
                case 26:
                    return DisplayText.TIMEOUT;
                case 27:
                    return DisplayText.APPLICATION_EXPIRED;
                case 28:
                    return DisplayText.FINAL_CONFIRM;
                case 29:
                    return DisplayText.SHOW_THANK_YOU;
                case 30:
                    return DisplayText.PIN_TRY_LIMIT_EXCEEDED;
                case 31:
                    return DisplayText.NOT_ICC_CARD;
                case 32:
                    return DisplayText.CARD_INSERTED;
                case 33:
                    return DisplayText.CARD_REMOVED;
                case 34:
                    return DisplayText.NO_EMV_APPS;
                case 35:
                    return DisplayText.CTL_NO_EMV_APPS;
                case 36:
                    return DisplayText.CTL_APP_NOT_SUPPORTED;
                case 37:
                    return DisplayText.CTL_TRANSACTION_LIMIT_EXCEEDED;
                case 38:
                    return DisplayText.INVALID_INPUT;
                case 39:
                    return DisplayText.CARD_ERROR;
                case 40:
                    return DisplayText.TOO_MANY_TAPS;
                case 41:
                    return DisplayText.INCORRECT_CARD_DATA;
                case 42:
                    return DisplayText.ERROR_STATUS_WORD;
                case 43:
                    return DisplayText.CARD_IS_STILL_INSERTED;
                case 44:
                    return DisplayText.DPAS_CDCVM;
                case 45:
                    return DisplayText.CARD_NOT_ADMITTED;
                case 46:
                    return DisplayText.INVALID_TRANSACTION;
                case 47:
                    return DisplayText.INVALID_CARD_NUMBER;
                case 48:
                    return DisplayText.SYSTEM_MALFUNCTION;
                case 49:
                    return DisplayText.EXPIRED_CARD;
                case 50:
                    return DisplayText.TRANSACTION_NOT_PERMITTED;
                case 51:
                    return DisplayText.INVALID_FUNCTION;
                case 52:
                    return DisplayText.INVALID_CARD;
                case 53:
                    return DisplayText.WRONG_CARD;
                case 54:
                    return DisplayText.TERMINAL_NOT_PERMITTED;
                case 55:
                    return DisplayText.ORIGINAL_AMOUNT_INCORRECT;
                case 56:
                    return DisplayText.CARD_NOT_READABLE;
                case 57:
                    return DisplayText.AUTHENTICATION_REQUIRED;
                case 58:
                    return DisplayText.DECLINED_WITH_RESPONSE_CODE_05;
                case 59:
                    return DisplayText.NOT_ACCEPTED_TRY_AGAIN;
                case 60:
                    return DisplayText.CARD_ERROR_PLEASE_ENTER_PIN_AGAIN;
                case 61:
                    return DisplayText.CARD_ERROR_PLEASE_REMOVE_CARD;
                case 62:
                    return DisplayText.NOT_ACCEPTED_PLEASE_REMOVE_CARD;
                case 63:
                    return DisplayText.PROCESSING_ERROR_PLEASE_REMOVE_CARD;
                default:
                    return null;
            }
        }
    }
}
