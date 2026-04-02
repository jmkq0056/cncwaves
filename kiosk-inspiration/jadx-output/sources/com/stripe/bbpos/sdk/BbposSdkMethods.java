package com.stripe.bbpos.sdk;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: BbposSdkMethods.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/stripe/bbpos/sdk/BbposSdkMethods;", "", "(Ljava/lang/String;I)V", "CancelCheckCard", "CancelPinEntry", "CancelSelectAccountType", "CancelSelectApplication", "CheckCard", "GetDeviceInfo", "ReadTerminalSetting", "SelectAccountType", "SelectApplication", "SendFinalConfirmResult", "SendOnlineProcessResult", "SetPinPadButtons", "StartEmv", "StartPinEntry", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposSdkMethods {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BbposSdkMethods[] $VALUES;
    public static final BbposSdkMethods CancelCheckCard = new BbposSdkMethods("CancelCheckCard", 0);
    public static final BbposSdkMethods CancelPinEntry = new BbposSdkMethods("CancelPinEntry", 1);
    public static final BbposSdkMethods CancelSelectAccountType = new BbposSdkMethods("CancelSelectAccountType", 2);
    public static final BbposSdkMethods CancelSelectApplication = new BbposSdkMethods("CancelSelectApplication", 3);
    public static final BbposSdkMethods CheckCard = new BbposSdkMethods("CheckCard", 4);
    public static final BbposSdkMethods GetDeviceInfo = new BbposSdkMethods("GetDeviceInfo", 5);
    public static final BbposSdkMethods ReadTerminalSetting = new BbposSdkMethods("ReadTerminalSetting", 6);
    public static final BbposSdkMethods SelectAccountType = new BbposSdkMethods("SelectAccountType", 7);
    public static final BbposSdkMethods SelectApplication = new BbposSdkMethods("SelectApplication", 8);
    public static final BbposSdkMethods SendFinalConfirmResult = new BbposSdkMethods("SendFinalConfirmResult", 9);
    public static final BbposSdkMethods SendOnlineProcessResult = new BbposSdkMethods("SendOnlineProcessResult", 10);
    public static final BbposSdkMethods SetPinPadButtons = new BbposSdkMethods("SetPinPadButtons", 11);
    public static final BbposSdkMethods StartEmv = new BbposSdkMethods("StartEmv", 12);
    public static final BbposSdkMethods StartPinEntry = new BbposSdkMethods("StartPinEntry", 13);

    private static final /* synthetic */ BbposSdkMethods[] $values() {
        return new BbposSdkMethods[]{CancelCheckCard, CancelPinEntry, CancelSelectAccountType, CancelSelectApplication, CheckCard, GetDeviceInfo, ReadTerminalSetting, SelectAccountType, SelectApplication, SendFinalConfirmResult, SendOnlineProcessResult, SetPinPadButtons, StartEmv, StartPinEntry};
    }

    public static EnumEntries<BbposSdkMethods> getEntries() {
        return $ENTRIES;
    }

    public static BbposSdkMethods valueOf(String str) {
        return (BbposSdkMethods) Enum.valueOf(BbposSdkMethods.class, str);
    }

    public static BbposSdkMethods[] values() {
        return (BbposSdkMethods[]) $VALUES.clone();
    }

    private BbposSdkMethods(String str, int i) {
    }

    static {
        BbposSdkMethods[] bbposSdkMethodsArr$values = $values();
        $VALUES = bbposSdkMethodsArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(bbposSdkMethodsArr$values);
    }
}
