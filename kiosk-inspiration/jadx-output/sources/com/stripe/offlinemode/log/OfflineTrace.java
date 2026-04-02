package com.stripe.offlinemode.log;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineTrace.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00052\u00020\u0001:\b\u0005\u0006\u0007\b\t\n\u000b\fB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004\u0082\u0001\u0007\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace;", "Lcom/stripe/loggingmodels/ApplicationTrace;", FirebaseAnalytics.Param.METHOD, "", "(Ljava/lang/String;)V", "Companion", "Flush", "OfflineActivateReader", "OfflineConfirmPayment", "OfflineConfirmSetupIntent", "OfflineCreatePayment", "OfflineCreateSetupIntent", "OfflineForwarding", "Lcom/stripe/offlinemode/log/OfflineTrace$Flush;", "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineActivateReader;", "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmPayment;", "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmSetupIntent;", "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;", "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreateSetupIntent;", "Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class OfflineTrace extends ApplicationTrace {
    public static final String OFFLINE_TRACE_ID = "offline_mode_trace";

    public /* synthetic */ OfflineTrace(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private OfflineTrace(String str) {
        super("OfflineTrace", str, null, 4, null);
    }

    /* JADX INFO: compiled from: OfflineTrace.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J5\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "entityId", "", "offlineId", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "deviceSerial", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V", "getDeviceSerial", "()Ljava/lang/String;", "getEntityId", "getOfflineId", "getType", "()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class OfflineForwarding extends OfflineTrace {
        private final String deviceSerial;
        private final String entityId;
        private final String offlineId;
        private final OfflineApiRequest.ApiRequestType type;

        public static /* synthetic */ OfflineForwarding copy$default(OfflineForwarding offlineForwarding, String str, String str2, OfflineApiRequest.ApiRequestType apiRequestType, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = offlineForwarding.entityId;
            }
            if ((i & 2) != 0) {
                str2 = offlineForwarding.offlineId;
            }
            if ((i & 4) != 0) {
                apiRequestType = offlineForwarding.type;
            }
            if ((i & 8) != 0) {
                str3 = offlineForwarding.deviceSerial;
            }
            return offlineForwarding.copy(str, str2, apiRequestType, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getEntityId() {
            return this.entityId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getOfflineId() {
            return this.offlineId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final OfflineApiRequest.ApiRequestType getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getDeviceSerial() {
            return this.deviceSerial;
        }

        public final OfflineForwarding copy(String entityId, String offlineId, OfflineApiRequest.ApiRequestType type, String deviceSerial) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(deviceSerial, "deviceSerial");
            return new OfflineForwarding(entityId, offlineId, type, deviceSerial);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof OfflineForwarding)) {
                return false;
            }
            OfflineForwarding offlineForwarding = (OfflineForwarding) other;
            return Intrinsics.areEqual(this.entityId, offlineForwarding.entityId) && Intrinsics.areEqual(this.offlineId, offlineForwarding.offlineId) && this.type == offlineForwarding.type && Intrinsics.areEqual(this.deviceSerial, offlineForwarding.deviceSerial);
        }

        public int hashCode() {
            String str = this.entityId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.offlineId;
            return ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.type.hashCode()) * 31) + this.deviceSerial.hashCode();
        }

        public String toString() {
            return "OfflineForwarding(entityId=" + this.entityId + ", offlineId=" + this.offlineId + ", type=" + this.type + ", deviceSerial=" + this.deviceSerial + ')';
        }

        public final String getEntityId() {
            return this.entityId;
        }

        public final String getOfflineId() {
            return this.offlineId;
        }

        public final OfflineApiRequest.ApiRequestType getType() {
            return this.type;
        }

        public final String getDeviceSerial() {
            return this.deviceSerial;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OfflineForwarding(String str, String str2, OfflineApiRequest.ApiRequestType type, String deviceSerial) {
            super("forwarding", null);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(deviceSerial, "deviceSerial");
            this.entityId = str;
            this.offlineId = str2;
            this.type = type;
            this.deviceSerial = deviceSerial;
        }
    }

    /* JADX INFO: compiled from: OfflineTrace.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreatePayment;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "()V", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflineCreatePayment extends OfflineTrace {
        public static final OfflineCreatePayment INSTANCE = new OfflineCreatePayment();

        private OfflineCreatePayment() {
            super("create_payment", null);
        }
    }

    /* JADX INFO: compiled from: OfflineTrace.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmPayment;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "()V", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflineConfirmPayment extends OfflineTrace {
        public static final OfflineConfirmPayment INSTANCE = new OfflineConfirmPayment();

        private OfflineConfirmPayment() {
            super("confirm_payment", null);
        }
    }

    /* JADX INFO: compiled from: OfflineTrace.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace$OfflineCreateSetupIntent;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "()V", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflineCreateSetupIntent extends OfflineTrace {
        public static final OfflineCreateSetupIntent INSTANCE = new OfflineCreateSetupIntent();

        private OfflineCreateSetupIntent() {
            super("create_setup_intent", null);
        }
    }

    /* JADX INFO: compiled from: OfflineTrace.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace$OfflineConfirmSetupIntent;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "()V", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflineConfirmSetupIntent extends OfflineTrace {
        public static final OfflineConfirmSetupIntent INSTANCE = new OfflineConfirmSetupIntent();

        private OfflineConfirmSetupIntent() {
            super("confirm_setup_intent", null);
        }
    }

    /* JADX INFO: compiled from: OfflineTrace.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace$OfflineActivateReader;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "()V", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class OfflineActivateReader extends OfflineTrace {
        public static final OfflineActivateReader INSTANCE = new OfflineActivateReader();

        private OfflineActivateReader() {
            super("activate_reader", null);
        }
    }

    /* JADX INFO: compiled from: OfflineTrace.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineTrace$Flush;", "Lcom/stripe/offlinemode/log/OfflineTrace;", "()V", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Flush extends OfflineTrace {
        public static final Flush INSTANCE = new Flush();

        private Flush() {
            super("flush", null);
        }
    }
}
