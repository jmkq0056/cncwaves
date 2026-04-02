package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SetupAttempt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 P2\u00060\u0001j\u0002`\u0002:\u0002OPB\u0099\u0001\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0001\u0010\u000b\u001a\u00020\f\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\u0002\u0010\u001aBu\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\u0002\u0010\u001bJ\t\u00105\u001a\u00020\u0006HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u00107\u001a\u00020\u0015HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010:\u001a\u00020\tHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010<\u001a\u00020\fHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010?\u001a\u00020\u0010HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u008f\u0001\u0010A\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÆ\u0001J\u0013\u0010B\u001a\u00020\f2\b\u0010C\u001a\u0004\u0018\u00010DHÖ\u0003J\t\u0010E\u001a\u00020\u0004HÖ\u0001J\t\u0010F\u001a\u00020\u0006HÖ\u0001J&\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020MHÁ\u0001¢\u0006\u0002\bNR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010\u001fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001fR\u001c\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b%\u0010\u001d\u001a\u0004\b\u000b\u0010&R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b'\u0010\u001d\u001a\u0004\b(\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b+\u0010\u001d\u001a\u0004\b,\u0010\u001fR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010\u001d\u001a\u0004\b0\u0010\u001fR\u0011\u0010\u0014\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n\u0000\u001a\u0004\b3\u00104¨\u0006Q"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupAttempt;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", OfflineStorageConstantsKt.ID, "", "applicationId", "created", "", "customerId", "isLiveMode", "", "onBehalfOfId", "paymentMethodId", "paymentMethodDetails", "Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;", "setupError", "Lcom/stripe/stripeterminal/external/models/SetupError;", "setupIntentId", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;", "usage", "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/SetupError;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;)V", "getApplicationId$annotations", "()V", "getApplicationId", "()Ljava/lang/String;", "getCreated", "()J", "getCustomerId$annotations", "getCustomerId", "getId", "isLiveMode$annotations", "()Z", "getOnBehalfOfId$annotations", "getOnBehalfOfId", "getPaymentMethodDetails", "()Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;", "getPaymentMethodId$annotations", "getPaymentMethodId", "getSetupError", "()Lcom/stripe/stripeterminal/external/models/SetupError;", "getSetupIntentId$annotations", "getSetupIntentId", "getStatus", "()Lcom/stripe/stripeterminal/external/models/SetupAttemptStatus;", "getUsage", "()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class SetupAttempt implements java.io.Serializable {
    private final String applicationId;
    private final long created;
    private final String customerId;
    private final String id;
    private final boolean isLiveMode;
    private final String onBehalfOfId;
    private final SetupIntentPaymentMethodDetails paymentMethodDetails;
    private final String paymentMethodId;
    private final SetupError setupError;
    private final String setupIntentId;
    private final SetupAttemptStatus status;
    private final SetupIntentUsage usage;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, SetupAttemptStatus.INSTANCE.serializer(), SetupIntentUsage.INSTANCE.serializer()};

    public static /* synthetic */ SetupAttempt copy$default(SetupAttempt setupAttempt, String str, String str2, long j, String str3, boolean z, String str4, String str5, SetupIntentPaymentMethodDetails setupIntentPaymentMethodDetails, SetupError setupError, String str6, SetupAttemptStatus setupAttemptStatus, SetupIntentUsage setupIntentUsage, int i, Object obj) {
        if ((i & 1) != 0) {
            str = setupAttempt.id;
        }
        return setupAttempt.copy(str, (i & 2) != 0 ? setupAttempt.applicationId : str2, (i & 4) != 0 ? setupAttempt.created : j, (i & 8) != 0 ? setupAttempt.customerId : str3, (i & 16) != 0 ? setupAttempt.isLiveMode : z, (i & 32) != 0 ? setupAttempt.onBehalfOfId : str4, (i & 64) != 0 ? setupAttempt.paymentMethodId : str5, (i & 128) != 0 ? setupAttempt.paymentMethodDetails : setupIntentPaymentMethodDetails, (i & 256) != 0 ? setupAttempt.setupError : setupError, (i & 512) != 0 ? setupAttempt.setupIntentId : str6, (i & 1024) != 0 ? setupAttempt.status : setupAttemptStatus, (i & 2048) != 0 ? setupAttempt.usage : setupIntentUsage);
    }

    @SerialName("application")
    public static /* synthetic */ void getApplicationId$annotations() {
    }

    @SerialName("customer")
    public static /* synthetic */ void getCustomerId$annotations() {
    }

    @SerialName("onBehalfOf")
    public static /* synthetic */ void getOnBehalfOfId$annotations() {
    }

    @SerialName("paymentMethod")
    public static /* synthetic */ void getPaymentMethodId$annotations() {
    }

    @SerialName("setupIntent")
    public static /* synthetic */ void getSetupIntentId$annotations() {
    }

    @SerialName("livemode")
    public static /* synthetic */ void isLiveMode$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getSetupIntentId() {
        return this.setupIntentId;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final SetupAttemptStatus getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final SetupIntentUsage getUsage() {
        return this.usage;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApplicationId() {
        return this.applicationId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCustomerId() {
        return this.customerId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getIsLiveMode() {
        return this.isLiveMode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getOnBehalfOfId() {
        return this.onBehalfOfId;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getPaymentMethodId() {
        return this.paymentMethodId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final SetupIntentPaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final SetupError getSetupError() {
        return this.setupError;
    }

    public final SetupAttempt copy(String id, String applicationId, long created, String customerId, boolean isLiveMode, String onBehalfOfId, String paymentMethodId, SetupIntentPaymentMethodDetails paymentMethodDetails, SetupError setupError, String setupIntentId, SetupAttemptStatus status, SetupIntentUsage usage) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(paymentMethodDetails, "paymentMethodDetails");
        Intrinsics.checkNotNullParameter(status, "status");
        return new SetupAttempt(id, applicationId, created, customerId, isLiveMode, onBehalfOfId, paymentMethodId, paymentMethodDetails, setupError, setupIntentId, status, usage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupAttempt)) {
            return false;
        }
        SetupAttempt setupAttempt = (SetupAttempt) other;
        return Intrinsics.areEqual(this.id, setupAttempt.id) && Intrinsics.areEqual(this.applicationId, setupAttempt.applicationId) && this.created == setupAttempt.created && Intrinsics.areEqual(this.customerId, setupAttempt.customerId) && this.isLiveMode == setupAttempt.isLiveMode && Intrinsics.areEqual(this.onBehalfOfId, setupAttempt.onBehalfOfId) && Intrinsics.areEqual(this.paymentMethodId, setupAttempt.paymentMethodId) && Intrinsics.areEqual(this.paymentMethodDetails, setupAttempt.paymentMethodDetails) && Intrinsics.areEqual(this.setupError, setupAttempt.setupError) && Intrinsics.areEqual(this.setupIntentId, setupAttempt.setupIntentId) && this.status == setupAttempt.status && this.usage == setupAttempt.usage;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.applicationId;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Long.hashCode(this.created)) * 31;
        String str2 = this.customerId;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + Boolean.hashCode(this.isLiveMode)) * 31;
        String str3 = this.onBehalfOfId;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.paymentMethodId;
        int iHashCode5 = (((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.paymentMethodDetails.hashCode()) * 31;
        SetupError setupError = this.setupError;
        int iHashCode6 = (iHashCode5 + (setupError == null ? 0 : setupError.hashCode())) * 31;
        String str5 = this.setupIntentId;
        int iHashCode7 = (((iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.status.hashCode()) * 31;
        SetupIntentUsage setupIntentUsage = this.usage;
        return iHashCode7 + (setupIntentUsage != null ? setupIntentUsage.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SetupAttempt(id=");
        sb.append(this.id).append(", applicationId=").append(this.applicationId).append(", created=").append(this.created).append(", customerId=").append(this.customerId).append(", isLiveMode=").append(this.isLiveMode).append(", onBehalfOfId=").append(this.onBehalfOfId).append(", paymentMethodId=").append(this.paymentMethodId).append(", paymentMethodDetails=").append(this.paymentMethodDetails).append(", setupError=").append(this.setupError).append(", setupIntentId=").append(this.setupIntentId).append(", status=").append(this.status).append(", usage=");
        sb.append(this.usage).append(')');
        return sb.toString();
    }

    /* JADX INFO: compiled from: SetupAttempt.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupAttempt;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SetupAttempt> serializer() {
            return SetupAttempt$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SetupAttempt(int i, String str, @SerialName("application") String str2, long j, @SerialName("customer") String str3, @SerialName("livemode") boolean z, @SerialName("onBehalfOf") String str4, @SerialName("paymentMethod") String str5, SetupIntentPaymentMethodDetails setupIntentPaymentMethodDetails, SetupError setupError, @SerialName("setupIntent") String str6, SetupAttemptStatus setupAttemptStatus, SetupIntentUsage setupIntentUsage, SerializationConstructorMarker serializationConstructorMarker) {
        if (4095 != (i & 4095)) {
            PluginExceptionsKt.throwMissingFieldException(i, 4095, SetupAttempt$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        this.applicationId = str2;
        this.created = j;
        this.customerId = str3;
        this.isLiveMode = z;
        this.onBehalfOfId = str4;
        this.paymentMethodId = str5;
        this.paymentMethodDetails = setupIntentPaymentMethodDetails;
        this.setupError = setupError;
        this.setupIntentId = str6;
        this.status = setupAttemptStatus;
        this.usage = setupIntentUsage;
    }

    public SetupAttempt(String id, String str, long j, String str2, boolean z, String str3, String str4, SetupIntentPaymentMethodDetails paymentMethodDetails, SetupError setupError, String str5, SetupAttemptStatus status, SetupIntentUsage setupIntentUsage) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(paymentMethodDetails, "paymentMethodDetails");
        Intrinsics.checkNotNullParameter(status, "status");
        this.id = id;
        this.applicationId = str;
        this.created = j;
        this.customerId = str2;
        this.isLiveMode = z;
        this.onBehalfOfId = str3;
        this.paymentMethodId = str4;
        this.paymentMethodDetails = paymentMethodDetails;
        this.setupError = setupError;
        this.setupIntentId = str5;
        this.status = status;
        this.usage = setupIntentUsage;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(SetupAttempt self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.id);
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.applicationId);
        output.encodeLongElement(serialDesc, 2, self.created);
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.customerId);
        output.encodeBooleanElement(serialDesc, 4, self.isLiveMode);
        output.encodeNullableSerializableElement(serialDesc, 5, StringSerializer.INSTANCE, self.onBehalfOfId);
        output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.paymentMethodId);
        output.encodeSerializableElement(serialDesc, 7, SetupIntentPaymentMethodDetails$$serializer.INSTANCE, self.paymentMethodDetails);
        output.encodeNullableSerializableElement(serialDesc, 8, SetupError$$serializer.INSTANCE, self.setupError);
        output.encodeNullableSerializableElement(serialDesc, 9, StringSerializer.INSTANCE, self.setupIntentId);
        output.encodeSerializableElement(serialDesc, 10, kSerializerArr[10], self.status);
        output.encodeNullableSerializableElement(serialDesc, 11, kSerializerArr[11], self.usage);
    }

    public final String getId() {
        return this.id;
    }

    public final String getApplicationId() {
        return this.applicationId;
    }

    public final long getCreated() {
        return this.created;
    }

    public final String getCustomerId() {
        return this.customerId;
    }

    public final boolean isLiveMode() {
        return this.isLiveMode;
    }

    public final String getOnBehalfOfId() {
        return this.onBehalfOfId;
    }

    public final String getPaymentMethodId() {
        return this.paymentMethodId;
    }

    public final SetupIntentPaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }

    public final SetupError getSetupError() {
        return this.setupError;
    }

    public final String getSetupIntentId() {
        return this.setupIntentId;
    }

    public final SetupAttemptStatus getStatus() {
        return this.status;
    }

    public final SetupIntentUsage getUsage() {
        return this.usage;
    }
}
