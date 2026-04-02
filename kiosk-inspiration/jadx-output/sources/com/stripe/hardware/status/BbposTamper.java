package com.stripe.hardware.status;

import androidx.core.app.NotificationCompat;
import com.sun.jna.platform.win32.Ddeml;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: compiled from: BbposTamper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003JA\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u001f"}, d2 = {"Lcom/stripe/hardware/status/BbposTamper;", "Lcom/stripe/hardware/status/ReaderException;", "error", "", "mode", NotificationCompat.CATEGORY_STATUS, "time", "tamperType", "Lcom/stripe/hardware/status/TamperType;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;)V", "getError", "()Ljava/lang/String;", "getMode", "getStatus", "getTamperType", "()Lcom/stripe/hardware/status/TamperType;", "getTime", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class BbposTamper extends ReaderException {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private static final Regex TAMPER_MODE_REGEX;
    private static final Regex TAMPER_STATUS_REGEX;
    private static final Regex TAMPER_TIME_REGEX;
    private final String error;
    private final String mode;
    private final String status;
    private final TamperType tamperType;
    private final String time;

    public static /* synthetic */ BbposTamper copy$default(BbposTamper bbposTamper, String str, String str2, String str3, String str4, TamperType tamperType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = bbposTamper.error;
        }
        if ((i & 2) != 0) {
            str2 = bbposTamper.mode;
        }
        if ((i & 4) != 0) {
            str3 = bbposTamper.status;
        }
        if ((i & 8) != 0) {
            str4 = bbposTamper.time;
        }
        if ((i & 16) != 0) {
            tamperType = bbposTamper.tamperType;
        }
        TamperType tamperType2 = tamperType;
        String str5 = str3;
        return bbposTamper.copy(str, str2, str5, str4, tamperType2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getError() {
        return this.error;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMode() {
        return this.mode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTime() {
        return this.time;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final TamperType getTamperType() {
        return this.tamperType;
    }

    public final BbposTamper copy(String error, String mode, String status, String time, TamperType tamperType) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(tamperType, "tamperType");
        return new BbposTamper(error, mode, status, time, tamperType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BbposTamper)) {
            return false;
        }
        BbposTamper bbposTamper = (BbposTamper) other;
        return Intrinsics.areEqual(this.error, bbposTamper.error) && Intrinsics.areEqual(this.mode, bbposTamper.mode) && Intrinsics.areEqual(this.status, bbposTamper.status) && Intrinsics.areEqual(this.time, bbposTamper.time) && this.tamperType == bbposTamper.tamperType;
    }

    public int hashCode() {
        int iHashCode = this.error.hashCode() * 31;
        String str = this.mode;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.status;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.time;
        return ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.tamperType.hashCode();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "BbposTamper(error=" + this.error + ", mode=" + this.mode + ", status=" + this.status + ", time=" + this.time + ", tamperType=" + this.tamperType + ')';
    }

    public final String getError() {
        return this.error;
    }

    public final String getMode() {
        return this.mode;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getTime() {
        return this.time;
    }

    public final TamperType getTamperType() {
        return this.tamperType;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BbposTamper(String error, String str, String str2, String str3, TamperType tamperType) {
        super(error, null, 2, null);
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(tamperType, "tamperType");
        this.error = error;
        this.mode = str;
        this.status = str2;
        this.time = str3;
        this.tamperType = tamperType;
    }

    /* JADX INFO: compiled from: BbposTamper.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/hardware/status/BbposTamper$Companion;", "", "()V", "TAMPER_MODE_REGEX", "Lkotlin/text/Regex;", "TAMPER_STATUS_REGEX", "TAMPER_TIME_REGEX", "fromErrorMessage", "Lcom/stripe/hardware/status/BbposTamper;", "errorMessage", "", "getTamperRegex", "name", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: BbposTamper.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[BbposErrorMode.values().length];
                try {
                    iArr[BbposErrorMode.Key.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[BbposErrorMode.Config.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[BbposErrorMode.Firmware.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[BbposErrorMode.UnrecoverableTamper.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[BbposErrorMode.Unknown.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BbposTamper fromErrorMessage(String errorMessage) {
            String str;
            String str2;
            TamperType tamperType;
            MatchResult.Destructured destructured;
            String str3;
            MatchResult.Destructured destructured2;
            String str4;
            MatchResult.Destructured destructured3;
            String str5;
            Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
            String str6 = errorMessage;
            MatchResult matchResultFind$default = Regex.find$default(BbposTamper.TAMPER_MODE_REGEX, str6, 0, 2, null);
            if (matchResultFind$default == null || (destructured3 = matchResultFind$default.getDestructured()) == null || (str5 = destructured3.getMatch().getGroupValues().get(1)) == null) {
                str = null;
            } else {
                String str7 = str5;
                if (str7.length() == 0) {
                    str7 = null;
                }
                str = str7;
            }
            MatchResult matchResultFind$default2 = Regex.find$default(BbposTamper.TAMPER_STATUS_REGEX, str6, 0, 2, null);
            if (matchResultFind$default2 == null || (destructured2 = matchResultFind$default2.getDestructured()) == null || (str4 = destructured2.getMatch().getGroupValues().get(1)) == null) {
                str2 = null;
            } else {
                String str8 = str4;
                if (str8.length() == 0) {
                    str8 = null;
                }
                str2 = str8;
            }
            MatchResult matchResultFind$default3 = Regex.find$default(BbposTamper.TAMPER_TIME_REGEX, str6, 0, 2, null);
            if (matchResultFind$default3 != null && (destructured = matchResultFind$default3.getDestructured()) != null && (str3 = destructured.getMatch().getGroupValues().get(1)) != null) {
                String str9 = str3;
                str = str9.length() != 0 ? str9 : null;
            }
            String str10 = str;
            int i = WhenMappings.$EnumSwitchMapping$0[BbposErrorMode.INSTANCE.getErrorMode(str).ordinal()];
            if (i == 1) {
                tamperType = TamperType.KeyIntegrityCheck;
            } else if (i == 2) {
                tamperType = TamperType.ConfigIntegrityCheck;
            } else if (i == 3) {
                tamperType = TamperType.FirmwareIntegrityCheck;
            } else if (i == 4) {
                tamperType = TamperType.UnrecoverableTamper;
            } else {
                if (i != 5) {
                    throw new NoWhenBranchMatchedException();
                }
                tamperType = TamperType.Unknown;
            }
            return new BbposTamper(errorMessage, str, str2, str10, tamperType);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Regex getTamperRegex(String name) {
            return new Regex("Tamper " + name + " : ([0-9]+)");
        }
    }

    static {
        Companion companion = new Companion(null);
        INSTANCE = companion;
        TAMPER_MODE_REGEX = companion.getTamperRegex("Mode");
        TAMPER_STATUS_REGEX = companion.getTamperRegex(Ddeml.SZDDESYS_ITEM_STATUS);
        TAMPER_TIME_REGEX = companion.getTamperRegex("Time");
    }
}
