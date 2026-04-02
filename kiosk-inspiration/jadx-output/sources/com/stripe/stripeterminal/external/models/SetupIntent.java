package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.json.ApiErrorSerializer;
import com.stripe.stripeterminal.external.json.SetupAttemptUnionSerializer;
import com.stripe.stripeterminal.external.models.SetupAttemptUnion;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: SetupIntent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u009a\u00012\u00060\u0001j\u0002`\u0002:\u0004\u0099\u0001\u009a\u0001B\u0081\u0002\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\b\b\u0001\u0010\u001e\u001a\u00020\u001f\u0012\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\"\u001a\u0004\u0018\u00010#\u0012\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010%\u001a\u0004\u0018\u00010&¢\u0006\u0002\u0010'Bá\u0001\b\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u001b\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001f\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\"\u001a\u0004\u0018\u00010#\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010(J\u000b\u0010v\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0019HÆ\u0003J\t\u0010{\u001a\u00020\u001bHÆ\u0003J\u0010\u0010|\u001a\u0004\u0018\u00010\u001dHÀ\u0003¢\u0006\u0002\b}J\t\u0010~\u001a\u00020\u001fHÆ\u0003J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0081\u0001\u001a\u0004\u0018\u00010#HÆ\u0003J\f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\f\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0016\u0010\u0087\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rHÆ\u0003J\f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u000fHÆ\u0003J\f\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012HÆ\u0003J\u0084\u0002\u0010\u008b\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0016\u0010\u008c\u0001\u001a\u00020\u001f2\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001HÖ\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0004HÖ\u0001J\n\u0010\u0090\u0001\u001a\u00020\u0006HÖ\u0001J.\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00002\b\u0010\u0094\u0001\u001a\u00030\u0095\u00012\b\u0010\u0096\u0001\u001a\u00030\u0097\u0001HÁ\u0001¢\u0006\u0003\b\u0098\u0001R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u0010*\u001a\u0004\b0\u0010,R$\u00101\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b2\u0010*\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b9\u0010*\u001a\u0004\b:\u0010,R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b;\u0010,R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b<\u0010,R\u001c\u0010\u001e\u001a\u00020\u001f8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u0010*\u001a\u0004\b\u001e\u00104R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u0013\u0010@\u001a\u0004\u0018\u00010A8F¢\u0006\u0006\u001a\u0004\bB\u0010CR\u0013\u0010D\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\bE\u0010,R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bF\u0010*\u001a\u0004\bG\u0010HR\u001e\u0010 \u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bI\u0010*\u001a\u0004\bJ\u0010,R\u001d\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\r¢\u0006\b\n\u0000\u001a\u0004\bK\u0010LR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\bM\u0010NR,\u0010Q\u001a\u00020P2\u0006\u0010O\u001a\u00020P8\u0006@GX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bR\u0010*\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR0\u0010X\u001a\u0004\u0018\u00010W2\b\u0010O\u001a\u0004\u0018\u00010W8\u0006@GX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bY\u0010*\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R\u001e\u0010!\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b^\u0010*\u001a\u0004\b_\u0010,R0\u0010b\u001a\u0004\u0018\u00010a2\b\u0010`\u001a\u0004\u0018\u00010a8\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bc\u0010*\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bh\u0010*\u001a\u0004\bi\u0010,R\u0013\u0010\"\u001a\u0004\u0018\u00010#¢\u0006\b\n\u0000\u001a\u0004\bj\u0010kR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012¢\u0006\b\n\u0000\u001a\u0004\bl\u0010mR\u001e\u0010$\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bn\u0010*\u001a\u0004\bo\u0010,R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\bt\u0010u¨\u0006\u009b\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntent;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", OfflineStorageConstantsKt.ID, "", "clientSecret", "customerId", "description", "lastSetupError", "Lcom/stripe/stripeterminal/external/api/ApiError;", "metadata", "", "nextAction", "Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;", "paymentMethodId", "paymentMethodTypes", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;", "usage", "Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;", "applicationId", "cancellationReason", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "created", "", "latestAttemptUnion", "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;", "isLiveMode", "", "mandateId", "onBehalfOfId", "paymentMethodOptions", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;", "singleUseMandateId", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;)V", "getApplicationId$annotations", "()V", "getApplicationId", "()Ljava/lang/String;", "getCancellationReason", "()Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;", "getClientSecret$annotations", "getClientSecret", "collectedOffline", "getCollectedOffline$annotations", "getCollectedOffline", "()Z", "setCollectedOffline", "(Z)V", "getCreated", "()J", "getCustomerId$annotations", "getCustomerId", "getDescription", "getId", "isLiveMode$annotations", "getLastSetupError", "()Lcom/stripe/stripeterminal/external/api/ApiError;", "latestAttempt", "Lcom/stripe/stripeterminal/external/models/SetupAttempt;", "getLatestAttempt", "()Lcom/stripe/stripeterminal/external/models/SetupAttempt;", "latestAttemptId", "getLatestAttemptId", "getLatestAttemptUnion$public_release$annotations", "getLatestAttemptUnion$public_release", "()Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;", "getMandateId$annotations", "getMandateId", "getMetadata", "()Ljava/util/Map;", "getNextAction", "()Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;", "<set-?>", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "offlineBehavior", "getOfflineBehavior$annotations", "getOfflineBehavior", "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "setOfflineBehavior", "(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "offlineDetails", "getOfflineDetails$annotations", "getOfflineDetails", "()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "setOfflineDetails", "(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V", "getOnBehalfOfId$annotations", "getOnBehalfOfId", "value", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "paymentMethodData", "getPaymentMethodData$annotations", "getPaymentMethodData", "()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "setPaymentMethodData", "(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V", "getPaymentMethodId$annotations", "getPaymentMethodId", "getPaymentMethodOptions", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;", "getPaymentMethodTypes", "()Ljava/util/List;", "getSingleUseMandateId$annotations", "getSingleUseMandateId", "getStatus", "()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;", "setStatus", "(Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;)V", "getUsage", "()Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component15$public_release", "component16", "component17", "component18", "component19", "component2", "component20", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class SetupIntent implements java.io.Serializable {
    private final String applicationId;
    private final SetupIntentCancellationReason cancellationReason;
    private final String clientSecret;
    private boolean collectedOffline;
    private final long created;
    private final String customerId;
    private final String description;
    private final String id;
    private final boolean isLiveMode;
    private final ApiError lastSetupError;
    private final SetupAttemptUnion latestAttemptUnion;
    private final String mandateId;
    private final Map<String, String> metadata;
    private final SetupIntentNextAction nextAction;
    private OfflineBehavior offlineBehavior;
    private SetupIntentOfflineDetails offlineDetails;
    private final String onBehalfOfId;
    private PaymentMethodData paymentMethodData;
    private final String paymentMethodId;
    private final PaymentMethodOptions paymentMethodOptions;
    private final List<String> paymentMethodTypes;
    private final String singleUseMandateId;
    private SetupIntentStatus status;
    private final SetupIntentUsage usage;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE), null, null, new ArrayListSerializer(StringSerializer.INSTANCE), SetupIntentStatus.INSTANCE.serializer(), SetupIntentUsage.INSTANCE.serializer(), null, SetupIntentCancellationReason.INSTANCE.serializer(), null, null, null, null, null, null, null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SetupIntent copy$default(SetupIntent setupIntent, String str, String str2, String str3, String str4, ApiError apiError, Map map, SetupIntentNextAction setupIntentNextAction, String str5, List list, SetupIntentStatus setupIntentStatus, SetupIntentUsage setupIntentUsage, String str6, SetupIntentCancellationReason setupIntentCancellationReason, long j, SetupAttemptUnion setupAttemptUnion, boolean z, String str7, String str8, PaymentMethodOptions paymentMethodOptions, String str9, int i, Object obj) {
        String str10;
        PaymentMethodOptions paymentMethodOptions2;
        String str11 = (i & 1) != 0 ? setupIntent.id : str;
        String str12 = (i & 2) != 0 ? setupIntent.clientSecret : str2;
        String str13 = (i & 4) != 0 ? setupIntent.customerId : str3;
        String str14 = (i & 8) != 0 ? setupIntent.description : str4;
        ApiError apiError2 = (i & 16) != 0 ? setupIntent.lastSetupError : apiError;
        Map map2 = (i & 32) != 0 ? setupIntent.metadata : map;
        SetupIntentNextAction setupIntentNextAction2 = (i & 64) != 0 ? setupIntent.nextAction : setupIntentNextAction;
        String str15 = (i & 128) != 0 ? setupIntent.paymentMethodId : str5;
        List list2 = (i & 256) != 0 ? setupIntent.paymentMethodTypes : list;
        SetupIntentStatus setupIntentStatus2 = (i & 512) != 0 ? setupIntent.status : setupIntentStatus;
        SetupIntentUsage setupIntentUsage2 = (i & 1024) != 0 ? setupIntent.usage : setupIntentUsage;
        String str16 = (i & 2048) != 0 ? setupIntent.applicationId : str6;
        SetupIntentCancellationReason setupIntentCancellationReason2 = (i & 4096) != 0 ? setupIntent.cancellationReason : setupIntentCancellationReason;
        String str17 = str11;
        String str18 = str12;
        long j2 = (i & 8192) != 0 ? setupIntent.created : j;
        SetupAttemptUnion setupAttemptUnion2 = (i & 16384) != 0 ? setupIntent.latestAttemptUnion : setupAttemptUnion;
        boolean z2 = (i & 32768) != 0 ? setupIntent.isLiveMode : z;
        String str19 = (i & 65536) != 0 ? setupIntent.mandateId : str7;
        String str20 = (i & 131072) != 0 ? setupIntent.onBehalfOfId : str8;
        PaymentMethodOptions paymentMethodOptions3 = (i & 262144) != 0 ? setupIntent.paymentMethodOptions : paymentMethodOptions;
        if ((i & 524288) != 0) {
            paymentMethodOptions2 = paymentMethodOptions3;
            str10 = setupIntent.singleUseMandateId;
        } else {
            str10 = str9;
            paymentMethodOptions2 = paymentMethodOptions3;
        }
        return setupIntent.copy(str17, str18, str13, str14, apiError2, map2, setupIntentNextAction2, str15, list2, setupIntentStatus2, setupIntentUsage2, str16, setupIntentCancellationReason2, j2, setupAttemptUnion2, z2, str19, str20, paymentMethodOptions2, str10);
    }

    @SerialName("application")
    public static /* synthetic */ void getApplicationId$annotations() {
    }

    public static /* synthetic */ void getClientSecret$annotations() {
    }

    @Transient
    public static /* synthetic */ void getCollectedOffline$annotations() {
    }

    @SerialName("customer")
    public static /* synthetic */ void getCustomerId$annotations() {
    }

    @SerialName("latestAttempt")
    public static /* synthetic */ void getLatestAttemptUnion$public_release$annotations() {
    }

    @SerialName("mandate")
    public static /* synthetic */ void getMandateId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getOfflineBehavior$annotations() {
    }

    @Transient
    public static /* synthetic */ void getOfflineDetails$annotations() {
    }

    @SerialName("onBehalfOf")
    public static /* synthetic */ void getOnBehalfOfId$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPaymentMethodData$annotations() {
    }

    @SerialName("paymentMethod")
    public static /* synthetic */ void getPaymentMethodId$annotations() {
    }

    @SerialName("singleUseMandate")
    public static /* synthetic */ void getSingleUseMandateId$annotations() {
    }

    @SerialName("livemode")
    public static /* synthetic */ void isLiveMode$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final SetupIntentStatus getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final SetupIntentUsage getUsage() {
        return this.usage;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getApplicationId() {
        return this.applicationId;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final SetupIntentCancellationReason getCancellationReason() {
        return this.cancellationReason;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final long getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component15$public_release, reason: from getter */
    public final SetupAttemptUnion getLatestAttemptUnion() {
        return this.latestAttemptUnion;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final boolean getIsLiveMode() {
        return this.isLiveMode;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getMandateId() {
        return this.mandateId;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getOnBehalfOfId() {
        return this.onBehalfOfId;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final PaymentMethodOptions getPaymentMethodOptions() {
        return this.paymentMethodOptions;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getClientSecret() {
        return this.clientSecret;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getSingleUseMandateId() {
        return this.singleUseMandateId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCustomerId() {
        return this.customerId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final ApiError getLastSetupError() {
        return this.lastSetupError;
    }

    public final Map<String, String> component6() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final SetupIntentNextAction getNextAction() {
        return this.nextAction;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPaymentMethodId() {
        return this.paymentMethodId;
    }

    public final List<String> component9() {
        return this.paymentMethodTypes;
    }

    public final SetupIntent copy(String id, String clientSecret, String customerId, String description, ApiError lastSetupError, Map<String, String> metadata, SetupIntentNextAction nextAction, String paymentMethodId, List<String> paymentMethodTypes, SetupIntentStatus status, SetupIntentUsage usage, String applicationId, SetupIntentCancellationReason cancellationReason, long created, SetupAttemptUnion latestAttemptUnion, boolean isLiveMode, String mandateId, String onBehalfOfId, PaymentMethodOptions paymentMethodOptions, String singleUseMandateId) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
        return new SetupIntent(id, clientSecret, customerId, description, lastSetupError, metadata, nextAction, paymentMethodId, paymentMethodTypes, status, usage, applicationId, cancellationReason, created, latestAttemptUnion, isLiveMode, mandateId, onBehalfOfId, paymentMethodOptions, singleUseMandateId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupIntent)) {
            return false;
        }
        SetupIntent setupIntent = (SetupIntent) other;
        return Intrinsics.areEqual(this.id, setupIntent.id) && Intrinsics.areEqual(this.clientSecret, setupIntent.clientSecret) && Intrinsics.areEqual(this.customerId, setupIntent.customerId) && Intrinsics.areEqual(this.description, setupIntent.description) && Intrinsics.areEqual(this.lastSetupError, setupIntent.lastSetupError) && Intrinsics.areEqual(this.metadata, setupIntent.metadata) && Intrinsics.areEqual(this.nextAction, setupIntent.nextAction) && Intrinsics.areEqual(this.paymentMethodId, setupIntent.paymentMethodId) && Intrinsics.areEqual(this.paymentMethodTypes, setupIntent.paymentMethodTypes) && this.status == setupIntent.status && this.usage == setupIntent.usage && Intrinsics.areEqual(this.applicationId, setupIntent.applicationId) && this.cancellationReason == setupIntent.cancellationReason && this.created == setupIntent.created && Intrinsics.areEqual(this.latestAttemptUnion, setupIntent.latestAttemptUnion) && this.isLiveMode == setupIntent.isLiveMode && Intrinsics.areEqual(this.mandateId, setupIntent.mandateId) && Intrinsics.areEqual(this.onBehalfOfId, setupIntent.onBehalfOfId) && Intrinsics.areEqual(this.paymentMethodOptions, setupIntent.paymentMethodOptions) && Intrinsics.areEqual(this.singleUseMandateId, setupIntent.singleUseMandateId);
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.clientSecret;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.customerId;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.description;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ApiError apiError = this.lastSetupError;
        int iHashCode5 = (((iHashCode4 + (apiError == null ? 0 : apiError.hashCode())) * 31) + this.metadata.hashCode()) * 31;
        SetupIntentNextAction setupIntentNextAction = this.nextAction;
        int iHashCode6 = (iHashCode5 + (setupIntentNextAction == null ? 0 : setupIntentNextAction.hashCode())) * 31;
        String str5 = this.paymentMethodId;
        int iHashCode7 = (((iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.paymentMethodTypes.hashCode()) * 31;
        SetupIntentStatus setupIntentStatus = this.status;
        int iHashCode8 = (iHashCode7 + (setupIntentStatus == null ? 0 : setupIntentStatus.hashCode())) * 31;
        SetupIntentUsage setupIntentUsage = this.usage;
        int iHashCode9 = (iHashCode8 + (setupIntentUsage == null ? 0 : setupIntentUsage.hashCode())) * 31;
        String str6 = this.applicationId;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        SetupIntentCancellationReason setupIntentCancellationReason = this.cancellationReason;
        int iHashCode11 = (((iHashCode10 + (setupIntentCancellationReason == null ? 0 : setupIntentCancellationReason.hashCode())) * 31) + Long.hashCode(this.created)) * 31;
        SetupAttemptUnion setupAttemptUnion = this.latestAttemptUnion;
        int iHashCode12 = (((iHashCode11 + (setupAttemptUnion == null ? 0 : setupAttemptUnion.hashCode())) * 31) + Boolean.hashCode(this.isLiveMode)) * 31;
        String str7 = this.mandateId;
        int iHashCode13 = (iHashCode12 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.onBehalfOfId;
        int iHashCode14 = (iHashCode13 + (str8 == null ? 0 : str8.hashCode())) * 31;
        PaymentMethodOptions paymentMethodOptions = this.paymentMethodOptions;
        int iHashCode15 = (iHashCode14 + (paymentMethodOptions == null ? 0 : paymentMethodOptions.hashCode())) * 31;
        String str9 = this.singleUseMandateId;
        return iHashCode15 + (str9 != null ? str9.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SetupIntent(id=");
        sb.append(this.id).append(", clientSecret=").append(this.clientSecret).append(", customerId=").append(this.customerId).append(", description=").append(this.description).append(", lastSetupError=").append(this.lastSetupError).append(", metadata=").append(this.metadata).append(", nextAction=").append(this.nextAction).append(", paymentMethodId=").append(this.paymentMethodId).append(", paymentMethodTypes=").append(this.paymentMethodTypes).append(", status=").append(this.status).append(", usage=").append(this.usage).append(", applicationId=");
        sb.append(this.applicationId).append(", cancellationReason=").append(this.cancellationReason).append(", created=").append(this.created).append(", latestAttemptUnion=").append(this.latestAttemptUnion).append(", isLiveMode=").append(this.isLiveMode).append(", mandateId=").append(this.mandateId).append(", onBehalfOfId=").append(this.onBehalfOfId).append(", paymentMethodOptions=").append(this.paymentMethodOptions).append(", singleUseMandateId=").append(this.singleUseMandateId).append(')');
        return sb.toString();
    }

    /* JADX INFO: compiled from: SetupIntent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/SetupIntent$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<SetupIntent> serializer() {
            return SetupIntent$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ SetupIntent(int i, String str, String str2, @SerialName("customer") String str3, String str4, ApiError apiError, Map map, SetupIntentNextAction setupIntentNextAction, @SerialName("paymentMethod") String str5, List list, SetupIntentStatus setupIntentStatus, SetupIntentUsage setupIntentUsage, @SerialName("application") String str6, SetupIntentCancellationReason setupIntentCancellationReason, long j, @SerialName("latestAttempt") SetupAttemptUnion setupAttemptUnion, @SerialName("livemode") boolean z, @SerialName("mandate") String str7, @SerialName("onBehalfOf") String str8, PaymentMethodOptions paymentMethodOptions, @SerialName("singleUseMandate") String str9, SerializationConstructorMarker serializationConstructorMarker) {
        if (1007327 != (i & 1007327)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1007327, SetupIntent$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        this.clientSecret = str2;
        this.customerId = str3;
        this.description = str4;
        this.lastSetupError = apiError;
        if ((i & 32) == 0) {
            this.metadata = MapsKt.emptyMap();
        } else {
            this.metadata = map;
        }
        this.nextAction = setupIntentNextAction;
        this.paymentMethodId = str5;
        if ((i & 256) == 0) {
            this.paymentMethodTypes = CollectionsKt.emptyList();
        } else {
            this.paymentMethodTypes = list;
        }
        this.status = setupIntentStatus;
        this.usage = setupIntentUsage;
        this.applicationId = str6;
        this.cancellationReason = setupIntentCancellationReason;
        this.created = (i & 8192) == 0 ? 0L : j;
        this.latestAttemptUnion = setupAttemptUnion;
        if ((i & 32768) == 0) {
            this.isLiveMode = false;
        } else {
            this.isLiveMode = z;
        }
        this.mandateId = str7;
        this.onBehalfOfId = str8;
        this.paymentMethodOptions = paymentMethodOptions;
        this.singleUseMandateId = str9;
        this.paymentMethodData = null;
        this.offlineDetails = null;
        this.collectedOffline = false;
        this.offlineBehavior = OfflineBehavior.PREFER_ONLINE;
    }

    public SetupIntent(String str, String str2, String str3, String str4, ApiError apiError, Map<String, String> metadata, SetupIntentNextAction setupIntentNextAction, String str5, List<String> paymentMethodTypes, SetupIntentStatus setupIntentStatus, SetupIntentUsage setupIntentUsage, String str6, SetupIntentCancellationReason setupIntentCancellationReason, long j, SetupAttemptUnion setupAttemptUnion, boolean z, String str7, String str8, PaymentMethodOptions paymentMethodOptions, String str9) {
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
        this.id = str;
        this.clientSecret = str2;
        this.customerId = str3;
        this.description = str4;
        this.lastSetupError = apiError;
        this.metadata = metadata;
        this.nextAction = setupIntentNextAction;
        this.paymentMethodId = str5;
        this.paymentMethodTypes = paymentMethodTypes;
        this.status = setupIntentStatus;
        this.usage = setupIntentUsage;
        this.applicationId = str6;
        this.cancellationReason = setupIntentCancellationReason;
        this.created = j;
        this.latestAttemptUnion = setupAttemptUnion;
        this.isLiveMode = z;
        this.mandateId = str7;
        this.onBehalfOfId = str8;
        this.paymentMethodOptions = paymentMethodOptions;
        this.singleUseMandateId = str9;
        this.offlineBehavior = OfflineBehavior.PREFER_ONLINE;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(SetupIntent self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.id);
        output.encodeNullableSerializableElement(serialDesc, 1, StringSerializer.INSTANCE, self.clientSecret);
        output.encodeNullableSerializableElement(serialDesc, 2, StringSerializer.INSTANCE, self.customerId);
        output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.description);
        output.encodeNullableSerializableElement(serialDesc, 4, ApiErrorSerializer.INSTANCE, self.lastSetupError);
        if (output.shouldEncodeElementDefault(serialDesc, 5) || !Intrinsics.areEqual(self.metadata, MapsKt.emptyMap())) {
            output.encodeSerializableElement(serialDesc, 5, kSerializerArr[5], self.metadata);
        }
        output.encodeNullableSerializableElement(serialDesc, 6, SetupIntentNextAction$$serializer.INSTANCE, self.nextAction);
        output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.paymentMethodId);
        if (output.shouldEncodeElementDefault(serialDesc, 8) || !Intrinsics.areEqual(self.paymentMethodTypes, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 8, kSerializerArr[8], self.paymentMethodTypes);
        }
        output.encodeNullableSerializableElement(serialDesc, 9, kSerializerArr[9], self.status);
        output.encodeNullableSerializableElement(serialDesc, 10, kSerializerArr[10], self.usage);
        output.encodeNullableSerializableElement(serialDesc, 11, StringSerializer.INSTANCE, self.applicationId);
        output.encodeNullableSerializableElement(serialDesc, 12, kSerializerArr[12], self.cancellationReason);
        if (output.shouldEncodeElementDefault(serialDesc, 13) || self.created != 0) {
            output.encodeLongElement(serialDesc, 13, self.created);
        }
        output.encodeNullableSerializableElement(serialDesc, 14, SetupAttemptUnionSerializer.INSTANCE, self.latestAttemptUnion);
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.isLiveMode) {
            output.encodeBooleanElement(serialDesc, 15, self.isLiveMode);
        }
        output.encodeNullableSerializableElement(serialDesc, 16, StringSerializer.INSTANCE, self.mandateId);
        output.encodeNullableSerializableElement(serialDesc, 17, StringSerializer.INSTANCE, self.onBehalfOfId);
        output.encodeNullableSerializableElement(serialDesc, 18, PaymentMethodOptions$$serializer.INSTANCE, self.paymentMethodOptions);
        output.encodeNullableSerializableElement(serialDesc, 19, StringSerializer.INSTANCE, self.singleUseMandateId);
    }

    public final String getId() {
        return this.id;
    }

    public final String getClientSecret() {
        return this.clientSecret;
    }

    public final String getCustomerId() {
        return this.customerId;
    }

    public final String getDescription() {
        return this.description;
    }

    public final ApiError getLastSetupError() {
        return this.lastSetupError;
    }

    public /* synthetic */ SetupIntent(String str, String str2, String str3, String str4, ApiError apiError, Map map, SetupIntentNextAction setupIntentNextAction, String str5, List list, SetupIntentStatus setupIntentStatus, SetupIntentUsage setupIntentUsage, String str6, SetupIntentCancellationReason setupIntentCancellationReason, long j, SetupAttemptUnion setupAttemptUnion, boolean z, String str7, String str8, PaymentMethodOptions paymentMethodOptions, String str9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, apiError, (i & 32) != 0 ? MapsKt.emptyMap() : map, setupIntentNextAction, str5, (i & 256) != 0 ? CollectionsKt.emptyList() : list, setupIntentStatus, setupIntentUsage, str6, setupIntentCancellationReason, (i & 8192) != 0 ? 0L : j, setupAttemptUnion, (i & 32768) != 0 ? false : z, str7, str8, paymentMethodOptions, str9);
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final SetupIntentNextAction getNextAction() {
        return this.nextAction;
    }

    public final String getPaymentMethodId() {
        return this.paymentMethodId;
    }

    public final List<String> getPaymentMethodTypes() {
        return this.paymentMethodTypes;
    }

    public final SetupIntentStatus getStatus() {
        return this.status;
    }

    public final void setStatus(SetupIntentStatus setupIntentStatus) {
        this.status = setupIntentStatus;
    }

    public final SetupIntentUsage getUsage() {
        return this.usage;
    }

    public final String getApplicationId() {
        return this.applicationId;
    }

    public final SetupIntentCancellationReason getCancellationReason() {
        return this.cancellationReason;
    }

    public final long getCreated() {
        return this.created;
    }

    public final SetupAttemptUnion getLatestAttemptUnion$public_release() {
        return this.latestAttemptUnion;
    }

    public final boolean isLiveMode() {
        return this.isLiveMode;
    }

    public final String getMandateId() {
        return this.mandateId;
    }

    public final String getOnBehalfOfId() {
        return this.onBehalfOfId;
    }

    public final PaymentMethodOptions getPaymentMethodOptions() {
        return this.paymentMethodOptions;
    }

    public final String getSingleUseMandateId() {
        return this.singleUseMandateId;
    }

    public final PaymentMethodData getPaymentMethodData() {
        return this.paymentMethodData;
    }

    public final void setPaymentMethodData(PaymentMethodData paymentMethodData) {
        this.paymentMethodData = paymentMethodData;
        this.status = SetupIntentStatus.REQUIRES_CONFIRMATION;
    }

    public final SetupAttempt getLatestAttempt() {
        SetupAttemptUnion setupAttemptUnion = this.latestAttemptUnion;
        SetupAttemptUnion.Expanded expanded = setupAttemptUnion instanceof SetupAttemptUnion.Expanded ? (SetupAttemptUnion.Expanded) setupAttemptUnion : null;
        if (expanded != null) {
            return expanded.getSetupAttempt();
        }
        return null;
    }

    public final String getLatestAttemptId() {
        SetupAttemptUnion setupAttemptUnion = this.latestAttemptUnion;
        if (setupAttemptUnion != null) {
            return setupAttemptUnion.getId();
        }
        return null;
    }

    public final SetupIntentOfflineDetails getOfflineDetails() {
        return this.offlineDetails;
    }

    public final void setOfflineDetails(SetupIntentOfflineDetails setupIntentOfflineDetails) {
        this.offlineDetails = setupIntentOfflineDetails;
    }

    public final boolean getCollectedOffline() {
        return this.collectedOffline;
    }

    public final void setCollectedOffline(boolean z) {
        this.collectedOffline = z;
    }

    public final OfflineBehavior getOfflineBehavior() {
        return this.offlineBehavior;
    }

    public final void setOfflineBehavior(OfflineBehavior offlineBehavior) {
        Intrinsics.checkNotNullParameter(offlineBehavior, "<set-?>");
        this.offlineBehavior = offlineBehavior;
    }
}
