package com.stripe.core.hardware.reactive.emv;

import com.stripe.proto.model.common.BBPosHardware;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: compiled from: ClientConfigDataSource.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0017\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"storedConfigSource", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;", "Lcom/stripe/proto/model/common/BBPosHardware;", "getStoredConfigSource", "(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;", "hardware-reactive_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ClientConfigDataSourceKt {

    /* JADX INFO: compiled from: ClientConfigDataSource.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BBPosHardware.values().length];
            try {
                iArr[BBPosHardware.CHIPPER2X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BBPosHardware.STRIPEM2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BBPosHardware.WISEPAD3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BBPosHardware.CHIPPER1X.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BBPosHardware.WISECUBE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BBPosHardware.WISEPAD3S.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[BBPosHardware.WISEPOSPLUS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[BBPosHardware.WISEPOS_E.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[BBPosHardware.WISEPOS_E_DEBUG.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[BBPosHardware.WISEPOS_E_DEVKIT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[BBPosHardware.SHOPIFY_ETNA.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[BBPosHardware.SHOPIFY_ETNA_DEBUG.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[BBPosHardware.STRIPE_S700.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[BBPosHardware.STRIPE_S700_DEBUG.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[BBPosHardware.STRIPE_S700_DEVKIT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[BBPosHardware.STRIPE_S710.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[BBPosHardware.STRIPE_S710_DEBUG.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[BBPosHardware.STRIPE_S710_DEVKIT.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[BBPosHardware.S7.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[BBPosHardware.S7_DEBUG.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[BBPosHardware.BBPOS_MODEL_NOT_SET.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ClientConfigDataSource getStoredConfigSource(BBPosHardware bBPosHardware) {
        switch (bBPosHardware == null ? -1 : WhenMappings.$EnumSwitchMapping$0[bBPosHardware.ordinal()]) {
            case -1:
            case 21:
                return ClientConfigDataSource.EMV_TAG_MERCHANT_NAME;
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
            case 2:
            case 3:
                return ClientConfigDataSource.EMV_TAG_CONFIG_HASH;
            case 4:
            case 5:
            case 6:
                return ClientConfigDataSource.EMV_TAG_MERCHANT_NAME;
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
                return ClientConfigDataSource.SHARED_PREFS;
        }
    }
}
