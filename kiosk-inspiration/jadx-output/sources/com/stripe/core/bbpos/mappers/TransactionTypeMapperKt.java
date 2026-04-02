package com.stripe.core.bbpos.mappers;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.sdk.TransactionType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionTypeMapper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"convert", "Lcom/bbpos/bbdevice/BBDeviceController$TransactionType;", "Lcom/stripe/bbpos/sdk/TransactionType;", "sdk_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TransactionTypeMapperKt {

    /* JADX INFO: compiled from: TransactionTypeMapper.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionType.values().length];
            try {
                iArr[TransactionType.TRANSACTION_TYPE_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionType.GOODS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionType.SERVICES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransactionType.CASHBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransactionType.INQUIRY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransactionType.TRANSFER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TransactionType.PAYMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TransactionType.REFUND.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[TransactionType.VOID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[TransactionType.REVERSAL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[TransactionType.CASH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final BBDeviceController.TransactionType convert(TransactionType transactionType) {
        Intrinsics.checkNotNullParameter(transactionType, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[transactionType.ordinal()]) {
            case 1:
                return null;
            case 2:
                return BBDeviceController.TransactionType.GOODS;
            case 3:
                return BBDeviceController.TransactionType.SERVICES;
            case 4:
                return BBDeviceController.TransactionType.CASHBACK;
            case 5:
                return BBDeviceController.TransactionType.INQUIRY;
            case 6:
                return BBDeviceController.TransactionType.TRANSFER;
            case 7:
                return BBDeviceController.TransactionType.PAYMENT;
            case 8:
                return BBDeviceController.TransactionType.REFUND;
            case 9:
                return BBDeviceController.TransactionType.VOID;
            case 10:
                return BBDeviceController.TransactionType.REVERSAL;
            case 11:
                return BBDeviceController.TransactionType.CASH;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
