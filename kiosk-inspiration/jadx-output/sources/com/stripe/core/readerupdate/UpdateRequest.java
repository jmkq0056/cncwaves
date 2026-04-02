package com.stripe.core.readerupdate;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.stripe.loggingmodels.ApplicationTrace;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: UpdateRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nBC\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0002\u0010\tR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateRequest;", "Lcom/stripe/loggingmodels/ApplicationTrace;", FirebaseAnalytics.Param.METHOD, "", "fromVersion", "toVersion", "hardwareVersion", "tags", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateRequest extends ApplicationTrace {
    public static final String CURRENT_VERSION_TAG_KEY = "CurrentVersion";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String HARDWARE_VERSION_TAG_KEY = "HardwareVersion";
    public static final String TAG_UNKNOWN = "unknown";
    public static final String TARGET_VERSION_TAG_KEY = "TargetVersion";
    private final String fromVersion;
    private final String hardwareVersion;
    private final String toVersion;

    public /* synthetic */ UpdateRequest(String str, String str2, String str3, String str4, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, map);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* synthetic */ UpdateRequest(String str, String str2, String str3, String str4, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 16) != 0) {
            Pair[] pairArr = new Pair[3];
            pairArr[0] = TuplesKt.to(TARGET_VERSION_TAG_KEY, str3 == null ? "unknown" : str3);
            pairArr[1] = TuplesKt.to(CURRENT_VERSION_TAG_KEY, str2 == null ? "unknown" : str2);
            pairArr[2] = TuplesKt.to("HardwareVersion", str4 != null ? str4 : "unknown");
            map = MapsKt.mapOf(pairArr);
        }
        this(str, str2, str3, str4, map);
    }

    private UpdateRequest(String str, String str2, String str3, String str4, Map<String, String> map) {
        super("UpdateRequest", str, map);
        this.fromVersion = str2;
        this.toVersion = str3;
        this.hardwareVersion = str4;
    }

    /* JADX INFO: compiled from: UpdateRequest.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004J*\u0010\r\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004J*\u0010\u000e\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004J*\u0010\u000f\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateRequest$Companion;", "", "()V", "CURRENT_VERSION_TAG_KEY", "", "HARDWARE_VERSION_TAG_KEY", "TAG_UNKNOWN", "TARGET_VERSION_TAG_KEY", "config", "Lcom/stripe/core/readerupdate/UpdateRequest;", "fromVersion", "toVersion", "hardwareVersion", "firmware", UserMetadata.KEYDATA_FILENAME, "settings", "updatePackage", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UpdateRequest updatePackage() {
            return new UpdateRequest("updatePackage", null, null, null, MapsKt.emptyMap(), null);
        }

        public static /* synthetic */ UpdateRequest keys$default(Companion companion, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            return companion.keys(str, str2, str3);
        }

        public final UpdateRequest keys(String fromVersion, String toVersion, String hardwareVersion) {
            return new UpdateRequest("keyUpdate", fromVersion, toVersion, hardwareVersion, null, 16, null);
        }

        public static /* synthetic */ UpdateRequest config$default(Companion companion, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            return companion.config(str, str2, str3);
        }

        public final UpdateRequest config(String fromVersion, String toVersion, String hardwareVersion) {
            return new UpdateRequest("configUpdate", fromVersion, toVersion, hardwareVersion, null, 16, null);
        }

        public static /* synthetic */ UpdateRequest firmware$default(Companion companion, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            return companion.firmware(str, str2, str3);
        }

        public final UpdateRequest firmware(String fromVersion, String toVersion, String hardwareVersion) {
            return new UpdateRequest("firmwareUpdate", fromVersion, toVersion, hardwareVersion, null, 16, null);
        }

        public static /* synthetic */ UpdateRequest settings$default(Companion companion, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            return companion.settings(str, str2, str3);
        }

        public final UpdateRequest settings(String fromVersion, String toVersion, String hardwareVersion) {
            return new UpdateRequest("settingsUpdate", fromVersion, toVersion, hardwareVersion, null, 16, null);
        }
    }
}
