package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.CurrencyCode;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: compiled from: CurrencyCodeMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002¢\u0006\u0002\u0010\u0005\u001a\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0007H\u0000¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"parseCurrencyCode", "", "Lcom/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;", BbposDeviceControllerImpl.CURRENCY_CODE_PARAM_NAME, "Lcom/stripe/currency/CurrencyCode;", "(Lcom/stripe/currency/CurrencyCode;)[Lcom/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;", "convert", "", "(I)[Lcom/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CurrencyCodeMapperKt {

    /* JADX INFO: compiled from: CurrencyCodeMapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CurrencyCode.values().length];
            try {
                iArr[CurrencyCode.VND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CurrencyCode.AED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CurrencyCode.MAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CurrencyCode.BBD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CurrencyCode.BMD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CurrencyCode.BND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[CurrencyCode.BSD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[CurrencyCode.BZD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[CurrencyCode.FJD.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[CurrencyCode.GYD.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[CurrencyCode.HKD.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[CurrencyCode.JMD.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[CurrencyCode.KYD.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[CurrencyCode.LRD.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[CurrencyCode.NAD.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[CurrencyCode.SBD.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[CurrencyCode.SRD.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[CurrencyCode.TTD.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[CurrencyCode.TWD.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[CurrencyCode.USD.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[CurrencyCode.XCD.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[CurrencyCode.ZWL.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[CurrencyCode.AUD.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[CurrencyCode.CHE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[CurrencyCode.EUR.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[CurrencyCode.ISK.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[CurrencyCode.SEK.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[CurrencyCode.DKK.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[CurrencyCode.NOK.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[CurrencyCode.MDL.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[CurrencyCode.RON.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[CurrencyCode.ILS.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[CurrencyCode.ARS.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[CurrencyCode.CLP.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[CurrencyCode.COP.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[CurrencyCode.CUP.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[CurrencyCode.DOP.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[CurrencyCode.MXN.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[CurrencyCode.PHP.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[CurrencyCode.UYU.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[CurrencyCode.EGP.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[CurrencyCode.FKP.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[CurrencyCode.GBP.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[CurrencyCode.LBP.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[CurrencyCode.SDG.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[CurrencyCode.SHP.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[CurrencyCode.SSP.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[CurrencyCode.SYP.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[CurrencyCode.BRL.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[CurrencyCode.COU.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[CurrencyCode.SAR.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[CurrencyCode.INR.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[CurrencyCode.LKR.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[CurrencyCode.MUR.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[CurrencyCode.NPR.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[CurrencyCode.PKR.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[CurrencyCode.SCR.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[CurrencyCode.IDR.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[CurrencyCode.PEN.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[CurrencyCode.KPW.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[CurrencyCode.KRW.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[CurrencyCode.JPY.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[CurrencyCode.CNY.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[CurrencyCode.PLN.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BBDeviceController.CurrencyCharacter[] convert(int i) {
        CurrencyCode byCode = CurrencyCode.INSTANCE.getByCode(i);
        if (byCode == null) {
            byCode = CurrencyCode.UNDEFINED;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[byCode.ordinal()]) {
            case 1:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.DONG};
            case 2:
            case 3:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.DIRHAM};
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.DOLLAR};
            case 23:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.A, BBDeviceController.CurrencyCharacter.DOLLAR};
            case 24:
            case 25:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.EURO};
            case 26:
            case 27:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.KRONA};
            case 28:
            case 29:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.KRONE};
            case 30:
            case 31:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.LEI};
            case 32:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.NEW_SHEKEL};
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.PESO};
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.POUND};
            case 49:
            case 50:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.REAL};
            case 51:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.RIYAL};
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.RUPEE};
            case 58:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.RUPIAH};
            case 59:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.SOL};
            case 60:
            case 61:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.WON};
            case 62:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.YEN};
            case 63:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.YUAN};
            case 64:
                return new BBDeviceController.CurrencyCharacter[]{BBDeviceController.CurrencyCharacter.ZLOTY};
            default:
                return parseCurrencyCode(byCode);
        }
    }

    private static final BBDeviceController.CurrencyCharacter[] parseCurrencyCode(CurrencyCode currencyCode) {
        BBDeviceController.CurrencyCharacter[] currencyCharacterArr = {BBDeviceController.CurrencyCharacter.SPACE};
        try {
            if (currencyCode != CurrencyCode.UNDEFINED) {
                String strName = currencyCode.name();
                ArrayList arrayList = new ArrayList(strName.length());
                for (int i = 0; i < strName.length(); i++) {
                    arrayList.add(BBDeviceController.CurrencyCharacter.valueOf(String.valueOf(strName.charAt(i))));
                }
                return (BBDeviceController.CurrencyCharacter[]) arrayList.toArray(new BBDeviceController.CurrencyCharacter[0]);
            }
        } catch (Throwable unused) {
        }
        return currencyCharacterArr;
    }
}
