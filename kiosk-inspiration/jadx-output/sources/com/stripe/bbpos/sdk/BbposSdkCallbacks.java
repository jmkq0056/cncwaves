package com.stripe.bbpos.sdk;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BbposSdkCallbacks.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0017\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/stripe/bbpos/sdk/BbposSdkCallbacks;", "", "(Ljava/lang/String;I)V", "OnError", "OnRequestDisplayAsterisk", "OnRequestDisplayText", "OnRequestFinalConfirm", "OnRequestManualPanEntry", "OnRequestOnlineProcess", "OnRequestPinEntry", "OnRequestProduceAudioTone", "OnRequestSelectAccountType", "OnRequestSelectApplication", "OnReturnAccessiblePINPadTouchEvent", "OnReturnBatchData", "OnReturnCheckCardResult", "OnReturnCancelCheckCardResult", "OnReturnDeviceInfo", "OnReturnPinEntryResult", "OnReturnReadTerminalSettingResult", "OnReturnReversalData", "OnReturnTransactionResult", "OnReturnSetPinPadButtonsResult", "OnWaitingForCard", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposSdkCallbacks {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BbposSdkCallbacks[] $VALUES;
    public static final BbposSdkCallbacks OnError = new BbposSdkCallbacks("OnError", 0);
    public static final BbposSdkCallbacks OnRequestDisplayAsterisk = new BbposSdkCallbacks("OnRequestDisplayAsterisk", 1);
    public static final BbposSdkCallbacks OnRequestDisplayText = new BbposSdkCallbacks("OnRequestDisplayText", 2);
    public static final BbposSdkCallbacks OnRequestFinalConfirm = new BbposSdkCallbacks("OnRequestFinalConfirm", 3);
    public static final BbposSdkCallbacks OnRequestManualPanEntry = new BbposSdkCallbacks("OnRequestManualPanEntry", 4);
    public static final BbposSdkCallbacks OnRequestOnlineProcess = new BbposSdkCallbacks("OnRequestOnlineProcess", 5);
    public static final BbposSdkCallbacks OnRequestPinEntry = new BbposSdkCallbacks("OnRequestPinEntry", 6);
    public static final BbposSdkCallbacks OnRequestProduceAudioTone = new BbposSdkCallbacks("OnRequestProduceAudioTone", 7);
    public static final BbposSdkCallbacks OnRequestSelectAccountType = new BbposSdkCallbacks("OnRequestSelectAccountType", 8);
    public static final BbposSdkCallbacks OnRequestSelectApplication = new BbposSdkCallbacks("OnRequestSelectApplication", 9);
    public static final BbposSdkCallbacks OnReturnAccessiblePINPadTouchEvent = new BbposSdkCallbacks("OnReturnAccessiblePINPadTouchEvent", 10);
    public static final BbposSdkCallbacks OnReturnBatchData = new BbposSdkCallbacks("OnReturnBatchData", 11);
    public static final BbposSdkCallbacks OnReturnCheckCardResult = new BbposSdkCallbacks("OnReturnCheckCardResult", 12);
    public static final BbposSdkCallbacks OnReturnCancelCheckCardResult = new BbposSdkCallbacks("OnReturnCancelCheckCardResult", 13);
    public static final BbposSdkCallbacks OnReturnDeviceInfo = new BbposSdkCallbacks("OnReturnDeviceInfo", 14);
    public static final BbposSdkCallbacks OnReturnPinEntryResult = new BbposSdkCallbacks("OnReturnPinEntryResult", 15);
    public static final BbposSdkCallbacks OnReturnReadTerminalSettingResult = new BbposSdkCallbacks("OnReturnReadTerminalSettingResult", 16);
    public static final BbposSdkCallbacks OnReturnReversalData = new BbposSdkCallbacks("OnReturnReversalData", 17);
    public static final BbposSdkCallbacks OnReturnTransactionResult = new BbposSdkCallbacks("OnReturnTransactionResult", 18);
    public static final BbposSdkCallbacks OnReturnSetPinPadButtonsResult = new BbposSdkCallbacks("OnReturnSetPinPadButtonsResult", 19);
    public static final BbposSdkCallbacks OnWaitingForCard = new BbposSdkCallbacks("OnWaitingForCard", 20);

    private static final /* synthetic */ BbposSdkCallbacks[] $values() {
        return new BbposSdkCallbacks[]{OnError, OnRequestDisplayAsterisk, OnRequestDisplayText, OnRequestFinalConfirm, OnRequestManualPanEntry, OnRequestOnlineProcess, OnRequestPinEntry, OnRequestProduceAudioTone, OnRequestSelectAccountType, OnRequestSelectApplication, OnReturnAccessiblePINPadTouchEvent, OnReturnBatchData, OnReturnCheckCardResult, OnReturnCancelCheckCardResult, OnReturnDeviceInfo, OnReturnPinEntryResult, OnReturnReadTerminalSettingResult, OnReturnReversalData, OnReturnTransactionResult, OnReturnSetPinPadButtonsResult, OnWaitingForCard};
    }

    public static EnumEntries<BbposSdkCallbacks> getEntries() {
        return $ENTRIES;
    }

    public static BbposSdkCallbacks valueOf(String str) {
        return (BbposSdkCallbacks) Enum.valueOf(BbposSdkCallbacks.class, str);
    }

    public static BbposSdkCallbacks[] values() {
        return (BbposSdkCallbacks[]) $VALUES.clone();
    }

    private BbposSdkCallbacks(String str, int i) {
    }

    static {
        BbposSdkCallbacks[] bbposSdkCallbacksArr$values = $values();
        $VALUES = bbposSdkCallbacksArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bbposSdkCallbacksArr$values);
    }
}
