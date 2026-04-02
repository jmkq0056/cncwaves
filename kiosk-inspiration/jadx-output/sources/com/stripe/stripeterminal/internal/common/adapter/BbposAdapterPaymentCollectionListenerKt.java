package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.hardware.ReaderConfiguration;
import com.stripe.stripeterminal.external.models.ReaderInputOptions;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposAdapterPaymentCollectionListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"translateReaderType", "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;", "readerType", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "adapter_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class BbposAdapterPaymentCollectionListenerKt {

    /* JADX INFO: compiled from: BbposAdapterPaymentCollectionListener.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReaderConfiguration.ReaderType.values().length];
            try {
                iArr[ReaderConfiguration.ReaderType.MAGSTRIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReaderConfiguration.ReaderType.ICC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReaderConfiguration.ReaderType.NFC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReaderConfiguration.ReaderType.MANUAL_ENTRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final ReaderInputOptions.ReaderInputOption translateReaderType(ReaderConfiguration.ReaderType readerType) {
        Intrinsics.checkNotNullParameter(readerType, "readerType");
        int i = WhenMappings.$EnumSwitchMapping$0[readerType.ordinal()];
        if (i == 1) {
            return ReaderInputOptions.ReaderInputOption.SWIPE;
        }
        if (i == 2) {
            return ReaderInputOptions.ReaderInputOption.INSERT;
        }
        if (i == 3) {
            return ReaderInputOptions.ReaderInputOption.TAP;
        }
        if (i == 4) {
            return ReaderInputOptions.ReaderInputOption.MANUAL_ENTRY;
        }
        throw new NoWhenBranchMatchedException();
    }
}
