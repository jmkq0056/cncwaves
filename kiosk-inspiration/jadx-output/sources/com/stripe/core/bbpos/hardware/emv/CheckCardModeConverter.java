package com.stripe.core.bbpos.hardware.emv;

import com.stripe.bbpos.sdk.CheckCardMode;
import com.stripe.hardware.ReaderConfiguration;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CheckCardModeConverter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0004¨\u0006\b"}, d2 = {"Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;", "", "()V", "toCheckCardMode", "Lcom/stripe/bbpos/sdk/CheckCardMode;", "", "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;", "toReaderConfiguration", "hardware_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CheckCardModeConverter {
    public static final CheckCardModeConverter INSTANCE = new CheckCardModeConverter();

    /* JADX INFO: compiled from: CheckCardModeConverter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CheckCardMode.values().length];
            try {
                iArr[CheckCardMode.SWIPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CheckCardMode.INSERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CheckCardMode.TAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CheckCardMode.SWIPE_OR_INSERT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CheckCardMode.SWIPE_OR_TAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CheckCardMode.INSERT_OR_TAP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[CheckCardMode.SWIPE_OR_INSERT_OR_TAP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[CheckCardMode.MANUAL_PAN_ENTRY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private CheckCardModeConverter() {
    }

    public final CheckCardMode toCheckCardMode(Set<? extends ReaderConfiguration.ReaderType> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        return Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getSWIPE()) ? CheckCardMode.SWIPE : Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getINSERT()) ? CheckCardMode.INSERT : Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getTAP()) ? CheckCardMode.TAP : Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT()) ? CheckCardMode.SWIPE_OR_INSERT : Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getSWIPE_OR_TAP()) ? CheckCardMode.SWIPE_OR_TAP : Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getINSERT_OR_TAP()) ? CheckCardMode.INSERT_OR_TAP : Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP()) ? CheckCardMode.SWIPE_OR_INSERT_OR_TAP : Intrinsics.areEqual(set, ReaderConfiguration.INSTANCE.getMANUAL_ENTRY()) ? CheckCardMode.MANUAL_PAN_ENTRY : CheckCardMode.SWIPE_OR_INSERT_OR_TAP;
    }

    public final Set<ReaderConfiguration.ReaderType> toReaderConfiguration(CheckCardMode checkCardMode) {
        Intrinsics.checkNotNullParameter(checkCardMode, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[checkCardMode.ordinal()]) {
            case 1:
                return ReaderConfiguration.INSTANCE.getSWIPE();
            case 2:
                return ReaderConfiguration.INSTANCE.getINSERT();
            case 3:
                return ReaderConfiguration.INSTANCE.getTAP();
            case 4:
                return ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT();
            case 5:
                return ReaderConfiguration.INSTANCE.getSWIPE_OR_TAP();
            case 6:
                return ReaderConfiguration.INSTANCE.getINSERT_OR_TAP();
            case 7:
                return ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP();
            case 8:
                return ReaderConfiguration.INSTANCE.getMANUAL_ENTRY();
            default:
                return ReaderConfiguration.INSTANCE.getSWIPE_OR_INSERT_OR_TAP();
        }
    }
}
