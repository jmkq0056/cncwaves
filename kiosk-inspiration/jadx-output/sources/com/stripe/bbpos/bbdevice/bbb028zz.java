package com.stripe.bbpos.bbdevice;

import com.stripe.bbpos.bbdevice.aaa003zz;
import com.stripe.hardware.emv.TlvMap;
import com.sun.jna.platform.win32.WinError;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class bbb028zz extends bbb005zz {
    bbb028zz(aaa003zz aaa003zzVar, aaa011zz aaa011zzVar) {
        super(aaa003zzVar, aaa011zzVar);
    }

    void aaa000(List<ccc067zz> list, boolean z) {
        String str;
        aaa003zz.aaa006zz aaa006zzVar;
        ccc067zz ccc067zzVarAaa000 = ccc068zz.aaa000(list, "DF0D");
        ccc067zz ccc067zzVarAaa0002 = ccc068zz.aaa000(list, "DF8746");
        ccc067zz ccc067zzVarAaa0003 = ccc068zz.aaa000(list, "DF875E");
        ccc067zz ccc067zzVarAaa0004 = ccc068zz.aaa000(list, "DF8675");
        ccc067zz ccc067zzVarAaa0005 = ccc068zz.aaa000(list, "DF8924");
        String str2 = "";
        if (ccc067zzVarAaa000 == null) {
            str = "";
        } else {
            try {
                str = ccc067zzVarAaa000.aaa001;
            } catch (Exception unused) {
                this.aaa001.aaa000(ccc010zz.aaa009, (byte) 12);
                return;
            }
        }
        int i = Integer.parseInt(str, 16);
        String strAaa003 = ccc067zzVarAaa0002 == null ? "" : ccc071zz.aaa003(ccc067zzVarAaa0002.aaa001);
        String str3 = ccc067zzVarAaa0003 == null ? "" : ccc067zzVarAaa0003.aaa001;
        if (ccc067zzVarAaa0004 != null) {
            str2 = ccc067zzVarAaa0004.aaa001;
        }
        if (ccc067zzVarAaa0005 != null && ccc071zz.aaa008(ccc067zzVarAaa0005.aaa001)) {
            i = Integer.parseInt(ccc067zzVarAaa0005.aaa001, 16);
        }
        if (ccc071zz.aaa001(str3).equalsIgnoreCase(TlvMap.SET_BUZZER_DISABLED_VALUE)) {
            this.aaa000.aaa011.aaa013(true);
        }
        if (ccc071zz.aaa001(str2).equalsIgnoreCase("AB")) {
            this.aaa001.aaa000(ccc010zz.aaa009, (byte) 0);
            return;
        }
        if (!ccc071zz.aaa008(strAaa003)) {
            strAaa003 = "en";
        }
        switch (i) {
            case 1:
                aaa006zzVar = aaa003zz.aaa006zz.AMOUNT;
                break;
            case 2:
                aaa006zzVar = aaa003zz.aaa006zz.AMOUNT_OK_OR_NOT;
                break;
            case 3:
                aaa006zzVar = aaa003zz.aaa006zz.APPROVED;
                break;
            case 4:
                aaa006zzVar = aaa003zz.aaa006zz.CALL_YOUR_BANK;
                break;
            case 5:
                aaa006zzVar = aaa003zz.aaa006zz.CANCEL_OR_ENTER;
                break;
            case 6:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_ERROR;
                break;
            case 7:
                aaa006zzVar = aaa003zz.aaa006zz.DECLINED;
                break;
            case 8:
                aaa006zzVar = aaa003zz.aaa006zz.ENTER_AMOUNT;
                break;
            case 9:
                if (this.aaa000.aaa011.aaa014().aaa005().equals("010000")) {
                    this.aaa001.aaa000(ccc010zz.aaa009, (byte) 0);
                    return;
                }
                aaa006zzVar = aaa003zz.aaa006zz.ENTER_PIN;
                break;
            case 10:
                aaa006zzVar = aaa003zz.aaa006zz.INCORRECT_PIN;
                break;
            case 11:
                aaa006zzVar = aaa003zz.aaa006zz.INSERT_CARD;
                break;
            case 12:
                aaa006zzVar = aaa003zz.aaa006zz.NOT_ACCEPTED;
                break;
            case 13:
                aaa006zzVar = aaa003zz.aaa006zz.PIN_OK;
                break;
            case 14:
                aaa006zzVar = aaa003zz.aaa006zz.PLEASE_WAIT;
                break;
            case 15:
                aaa006zzVar = aaa003zz.aaa006zz.PROCESSING_ERROR;
                break;
            case 16:
                aaa006zzVar = aaa003zz.aaa006zz.REMOVE_CARD;
                break;
            case 17:
                aaa006zzVar = aaa003zz.aaa006zz.INSERT_SWIPE_OR_TRY_ANOTHER_CARD;
                break;
            case 18:
                aaa006zzVar = aaa003zz.aaa006zz.USE_MAG_STRIPE;
                break;
            case 19:
                aaa006zzVar = aaa003zz.aaa006zz.TRY_AGAIN;
                break;
            case 20:
                aaa006zzVar = aaa003zz.aaa006zz.REFER_TO_YOUR_PAYMENT_DEVICE;
                break;
            case 21:
                aaa006zzVar = aaa003zz.aaa006zz.TRANSACTION_TERMINATED;
                break;
            case 22:
                aaa006zzVar = aaa003zz.aaa006zz.TRY_ANOTHER_INTERFACE;
                break;
            case 23:
                aaa006zzVar = aaa003zz.aaa006zz.ONLINE_REQUIRED;
                break;
            case 24:
                aaa006zzVar = aaa003zz.aaa006zz.PROCESSING;
                break;
            case 25:
                aaa006zzVar = aaa003zz.aaa006zz.WELCOME;
                break;
            case 26:
                aaa006zzVar = aaa003zz.aaa006zz.MULTIPLE_CARDS_DETECTED;
                break;
            case 27:
                aaa006zzVar = aaa003zz.aaa006zz.CAPK_LOADING_FAILED;
                break;
            case 28:
            case 29:
            case 30:
            case 41:
            case 42:
            case 53:
            default:
                this.aaa001.aaa000(ccc010zz.aaa009, (byte) 12);
                return;
            case 31:
                aaa006zzVar = aaa003zz.aaa006zz.LAST_PIN_TRY;
                break;
            case 32:
                aaa006zzVar = aaa003zz.aaa006zz.INSERT_OR_TAP_CARD;
                break;
            case 33:
                aaa006zzVar = aaa003zz.aaa006zz.SELECT_ACCOUNT;
                break;
            case 34:
                aaa006zzVar = aaa003zz.aaa006zz.APPROVED_PLEASE_SIGN;
                break;
            case 35:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 36:
                aaa006zzVar = aaa003zz.aaa006zz.REMOVE_CARD;
                break;
            case 37:
                aaa006zzVar = aaa003zz.aaa006zz.AUTHORISING;
                break;
            case 38:
                aaa006zzVar = aaa003zz.aaa006zz.INSERT_SWIPE_OR_TRY_ANOTHER_CARD;
                break;
            case 39:
                aaa006zzVar = aaa003zz.aaa006zz.INSERT_OR_SWIPE_CARD;
                break;
            case 40:
                aaa006zzVar = aaa003zz.aaa006zz.MULTIPLE_CARDS_DETECTED;
                break;
            case 43:
                aaa006zzVar = aaa003zz.aaa006zz.TIMEOUT;
                break;
            case 44:
                aaa006zzVar = aaa003zz.aaa006zz.APPLICATION_EXPIRED;
                break;
            case 45:
                aaa006zzVar = aaa003zz.aaa006zz.FINAL_CONFIRM;
                break;
            case 46:
                aaa006zzVar = aaa003zz.aaa006zz.SHOW_THANK_YOU;
                break;
            case 47:
                aaa006zzVar = aaa003zz.aaa006zz.REMOVE_CARD;
                break;
            case 48:
                aaa006zzVar = aaa003zz.aaa006zz.PIN_TRY_LIMIT_EXCEEDED;
                break;
            case 49:
                aaa006zzVar = aaa003zz.aaa006zz.NOT_ICC_CARD;
                break;
            case 50:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_INSERTED;
                break;
            case 51:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_REMOVED;
                break;
            case 52:
                aaa006zzVar = aaa003zz.aaa006zz.NO_EMV_APPS;
                break;
            case 54:
                aaa006zzVar = aaa003zz.aaa006zz.TOO_MANY_TAPS;
                break;
            case 55:
                aaa006zzVar = aaa003zz.aaa006zz.INCORRECT_CARD_DATA;
                break;
            case 56:
                aaa006zzVar = aaa003zz.aaa006zz.ERROR_STATUS_WORD;
                break;
            case 57:
                aaa006zzVar = aaa003zz.aaa006zz.CTL_NO_EMV_APPS;
                break;
            case 58:
                aaa006zzVar = aaa003zz.aaa006zz.CTL_APP_NOT_SUPPORTED;
                break;
            case 59:
                aaa006zzVar = aaa003zz.aaa006zz.CTL_TRANSACTION_LIMIT_EXCEEDED;
                break;
            case 60:
                aaa006zzVar = aaa003zz.aaa006zz.INVALID_INPUT;
                break;
            case 61:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 62:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 63:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 64:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 65:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 66:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 67:
                aaa006zzVar = aaa003zz.aaa006zz.TAP_CARD_AGAIN;
                break;
            case 68:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_IS_STILL_INSERTED;
                break;
            case 69:
                aaa006zzVar = aaa003zz.aaa006zz.INVALID_INPUT;
                break;
            case 70:
                aaa006zzVar = aaa003zz.aaa006zz.DPAS_CDCVM;
                break;
            case 71:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_NOT_ADMITTED;
                break;
            case 72:
                aaa006zzVar = aaa003zz.aaa006zz.INVALID_TRANSACTION;
                break;
            case 73:
                aaa006zzVar = aaa003zz.aaa006zz.INVALID_CARD_NUMBER;
                break;
            case 74:
                aaa006zzVar = aaa003zz.aaa006zz.SYSTEM_MALFUNCTION;
                break;
            case 75:
                aaa006zzVar = aaa003zz.aaa006zz.EXPIRED_CARD;
                break;
            case 76:
                aaa006zzVar = aaa003zz.aaa006zz.TRANSACTION_NOT_PERMITTED;
                break;
            case 77:
                aaa006zzVar = aaa003zz.aaa006zz.INVALID_FUNCTION;
                break;
            case 78:
                aaa006zzVar = aaa003zz.aaa006zz.INVALID_CARD;
                break;
            case 79:
                aaa006zzVar = aaa003zz.aaa006zz.WRONG_CARD;
                break;
            case 80:
                aaa006zzVar = aaa003zz.aaa006zz.TERMINAL_NOT_PERMITTED;
                break;
            case 81:
                aaa006zzVar = aaa003zz.aaa006zz.ORIGINAL_AMOUNT_INCORRECT;
                break;
            case 82:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_NOT_READABLE;
                break;
            case 83:
                aaa006zzVar = aaa003zz.aaa006zz.AUTHENTICATION_REQUIRED;
                break;
            case 84:
                aaa006zzVar = aaa003zz.aaa006zz.DECLINED_WITH_RESPONSE_CODE_05;
                break;
            case WinError.ERROR_ALREADY_ASSIGNED /* 85 */:
                aaa006zzVar = aaa003zz.aaa006zz.NOT_ACCEPTED_TRY_AGAIN;
                break;
            case 86:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_ERROR_PLEASE_ENTER_PIN_AGAIN;
                break;
            case 87:
                aaa006zzVar = aaa003zz.aaa006zz.CARD_ERROR_PLEASE_REMOVE_CARD;
                break;
            case 88:
                aaa006zzVar = aaa003zz.aaa006zz.NOT_ACCEPTED_PLEASE_REMOVE_CARD;
                break;
            case 89:
                aaa006zzVar = aaa003zz.aaa006zz.PROCESSING_ERROR_PLEASE_REMOVE_CARD;
                break;
        }
        this.aaa001.aaa000(ccc010zz.aaa009, (byte) 0);
        if (z) {
            return;
        }
        this.aaa000.aaa000(aaa006zzVar, strAaa003);
    }
}
