package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.json.ApiErrorSerializer;
import com.stripe.stripeterminal.external.json.PaymentMethodTypesSerializer;
import com.stripe.stripeterminal.external.json.PaymentMethodUnionSerializer;
import com.stripe.stripeterminal.external.models.PaymentMethodUnion;
import com.stripe.stripeterminal.internal.models.PaymentMethodData;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.Transient;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: PaymentIntent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\bF\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 Î\u00012\u00060\u0001j\u0002`\u0002:\u0004Í\u0001Î\u0001B\u0087\u0003\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010!\u001a\u0004\u0018\u00010\"\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010'\u001a\u0004\u0018\u00010(\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010*\u001a\u0004\u0018\u00010+\u0012\b\u0010,\u001a\u0004\u0018\u00010\t\u0012\b\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010.\u001a\u0004\u0018\u00010/\u0012\u0010\b\u0001\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101\u0012\b\u00103\u001a\u0004\u0018\u000104\u0012\b\u00105\u001a\u0004\u0018\u00010\t\u0012\b\u00106\u001a\u0004\u0018\u000107¢\u0006\u0002\u00108B·\u0003\b\u0000\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\b\b\u0002\u0010\u000e\u001a\u00020\t\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u0015\u001a\u00020\t\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u0007\u0012\u000e\b\u0002\u00100\u001a\b\u0012\u0004\u0012\u00020201\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000104\u0012\n\b\u0002\u00105\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010:J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0012\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0012HÀ\u0003¢\u0006\u0003\b\u0098\u0001J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\n\u0010\u009b\u0001\u001a\u00020\tHÆ\u0003J\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010\u001bHÆ\u0003J\n\u0010¡\u0001\u001a\u00020\u001dHÆ\u0003J\n\u0010¢\u0001\u001a\u00020\tHÆ\u0003J\u0018\u0010£\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001fHÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0012\u0010¥\u0001\u001a\u0004\u0018\u00010\"HÀ\u0003¢\u0006\u0003\b¦\u0001J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010«\u0001\u001a\u0004\u0018\u00010(HÆ\u0003J\f\u0010¬\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010\u00ad\u0001\u001a\u0004\u0018\u00010+HÆ\u0003J\n\u0010®\u0001\u001a\u00020\tHÆ\u0003J\u0011\u0010¯\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010BJ\f\u0010°\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010±\u0001\u001a\u0004\u0018\u00010/HÆ\u0003J\f\u0010²\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010³\u0001\u001a\b\u0012\u0004\u0012\u00020201HÆ\u0003J\f\u0010´\u0001\u001a\u0004\u0018\u000104HÆ\u0003J\u0011\u0010µ\u0001\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010BJ\n\u0010¶\u0001\u001a\u00020\tHÆ\u0003J\f\u0010·\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\n\u0010¸\u0001\u001a\u00020\tHÆ\u0003J\n\u0010¹\u0001\u001a\u00020\tHÆ\u0003J\f\u0010º\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\f\u0010»\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003JÂ\u0003\u0010¼\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\r\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\t2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0015\u001a\u00020\t2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\u0016\b\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u00072\u000e\b\u0002\u00100\u001a\b\u0012\u0004\u0012\u000202012\n\b\u0002\u00103\u001a\u0004\u0018\u0001042\n\b\u0002\u00105\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0003\u0010½\u0001J\u0016\u0010¾\u0001\u001a\u00020\u001d2\n\u0010¿\u0001\u001a\u0005\u0018\u00010À\u0001HÖ\u0003J\u000e\u0010Á\u0001\u001a\t\u0012\u0005\u0012\u00030Â\u000101J\n\u0010Ã\u0001\u001a\u00020\u0004HÖ\u0001J\n\u0010Ä\u0001\u001a\u00020\u0007HÖ\u0001J.\u0010Å\u0001\u001a\u00030Æ\u00012\u0007\u0010Ç\u0001\u001a\u00020\u00002\b\u0010È\u0001\u001a\u00030É\u00012\b\u0010Ê\u0001\u001a\u00030Ë\u0001HÁ\u0001¢\u0006\u0003\bÌ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b=\u0010<R\u0013\u0010*\u001a\u0004\u0018\u00010+¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u0011\u0010\u000b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b@\u0010<R\u0015\u00105\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010C\u001a\u0004\bA\u0010BR\u0015\u0010,\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010C\u001a\u0004\bD\u0010BR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bE\u0010FR\u0011\u0010\r\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\bG\u0010<R\u0011\u0010\u000e\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\bH\u0010<R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bI\u0010FR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010FR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bK\u0010LR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bM\u0010FR$\u0010N\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bU\u0010FR\u0011\u0010\u0015\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\bV\u0010<R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bW\u0010FR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bX\u0010FR\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bY\u0010FR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010FR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b[\u0010FR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010]R\u0011\u0010\u001c\u001a\u00020\u001d¢\u0006\b\n\u0000\u001a\u0004\b^\u0010RR\u001f\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f¢\u0006\b\n\u0000\u001a\u0004\b_\u0010`R\u0013\u00103\u001a\u0004\u0018\u000104¢\u0006\b\n\u0000\u001a\u0004\ba\u0010bR,\u0010e\u001a\u00020d2\u0006\u0010c\u001a\u00020d8\u0006@GX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bf\u0010P\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR0\u0010l\u001a\u0004\u0018\u00010k2\b\u0010c\u001a\u0004\u0018\u00010k8\u0006@GX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bm\u0010P\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR\u0013\u0010 \u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\br\u0010FR\u001e\u0010s\u001a\u0004\u0018\u00010t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bu\u0010P\u001a\u0004\bv\u0010wR0\u0010x\u001a\u0004\u0018\u00010y2\b\u0010x\u001a\u0004\u0018\u00010y8\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bz\u0010P\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R \u0010\u007f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0080\u0001\u0010P\u001a\u0005\b\u0081\u0001\u0010FR\u0015\u0010.\u001a\u0004\u0018\u00010/¢\u0006\n\n\u0000\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R%\u00100\u001a\b\u0012\u0004\u0012\u000202018\u0006X\u0087\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b\u0084\u0001\u0010P\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R!\u0010!\u001a\u0004\u0018\u00010\"8\u0000X\u0081\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b\u0087\u0001\u0010P\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0014\u0010#\u001a\u0004\u0018\u00010\u0007¢\u0006\t\n\u0000\u001a\u0005\b\u008a\u0001\u0010FR\u0014\u0010$\u001a\u0004\u0018\u00010\u0007¢\u0006\t\n\u0000\u001a\u0005\b\u008b\u0001\u0010FR\u0014\u0010%\u001a\u0004\u0018\u00010\u0007¢\u0006\t\n\u0000\u001a\u0005\b\u008c\u0001\u0010FR\u0014\u0010&\u001a\u0004\u0018\u00010\u0007¢\u0006\t\n\u0000\u001a\u0005\b\u008d\u0001\u0010FR\u0014\u0010-\u001a\u0004\u0018\u00010\u0007¢\u0006\t\n\u0000\u001a\u0005\b\u008e\u0001\u0010FR \u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001\"\u0006\b\u0091\u0001\u0010\u0092\u0001R \u00109\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0093\u0001\u0010P\u001a\u0005\b\u0094\u0001\u0010FR\u0014\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\t\n\u0000\u001a\u0005\b\u0095\u0001\u0010F¨\u0006Ï\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "seen2", OfflineStorageConstantsKt.ID, "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "amountCapturable", "amountReceived", "application", "applicationFeeAmount", "canceledAt", "cancellationReason", "captureMethod", "charges", "Lcom/stripe/stripeterminal/external/models/ChargesList;", "clientSecret", "confirmationMethod", "created", FirebaseAnalytics.Param.CURRENCY, "customer", "description", "invoice", "lastPaymentError", "Lcom/stripe/stripeterminal/external/api/ApiError;", "livemode", "", "metadata", "", "onBehalfOf", "paymentMethodUnion", "Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;", "receiptEmail", "review", "setupFutureUsage", "statementDescriptor", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;", "transferGroup", "amountDetails", "Lcom/stripe/stripeterminal/external/models/AmountDetails;", "amountTip", "statementDescriptorSuffix", "paymentMethodOptions", "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;", "paymentMethodTypes", "", "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;", "nextAction", "Lcom/stripe/stripeterminal/external/models/NextAction;", "amountRequested", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILjava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "stripeAccountId", "(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)V", "getAmount", "()J", "getAmountCapturable", "getAmountDetails", "()Lcom/stripe/stripeterminal/external/models/AmountDetails;", "getAmountReceived", "getAmountRequested", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getAmountTip", "getApplication", "()Ljava/lang/String;", "getApplicationFeeAmount", "getCanceledAt", "getCancellationReason", "getCaptureMethod", "getCharges$public_release", "()Lcom/stripe/stripeterminal/external/models/ChargesList;", "getClientSecret", "collectedOffline", "getCollectedOffline$annotations", "()V", "getCollectedOffline", "()Z", "setCollectedOffline", "(Z)V", "getConfirmationMethod", "getCreated", "getCurrency", "getCustomer", "getDescription", "getId", "getInvoice", "getLastPaymentError", "()Lcom/stripe/stripeterminal/external/api/ApiError;", "getLivemode", "getMetadata", "()Ljava/util/Map;", "getNextAction", "()Lcom/stripe/stripeterminal/external/models/NextAction;", "<set-?>", "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "offlineBehavior", "getOfflineBehavior$annotations", "getOfflineBehavior", "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;", "setOfflineBehavior", "(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "offlineDetails", "getOfflineDetails$annotations", "getOfflineDetails", "()Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "setOfflineDetails", "(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V", "getOnBehalfOf", "paymentMethod", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "getPaymentMethod$annotations", "getPaymentMethod", "()Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "paymentMethodData", "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "getPaymentMethodData$annotations", "getPaymentMethodData", "()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;", "setPaymentMethodData", "(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V", "paymentMethodId", "getPaymentMethodId$annotations", "getPaymentMethodId", "getPaymentMethodOptions", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;", "getPaymentMethodTypes$annotations", "getPaymentMethodTypes", "()Ljava/util/List;", "getPaymentMethodUnion$public_release$annotations", "getPaymentMethodUnion$public_release", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;", "getReceiptEmail", "getReview", "getSetupFutureUsage", "getStatementDescriptor", "getStatementDescriptorSuffix", "getStatus", "()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;", "setStatus", "(Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;)V", "getStripeAccountId$annotations", "getStripeAccountId", "getTransferGroup", "component1", "component10", "component10$public_release", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component22$public_release", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "equals", "other", "", "getCharges", "Lcom/stripe/stripeterminal/external/models/Charge;", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class PaymentIntent implements java.io.Serializable {
    private final long amount;
    private final long amountCapturable;
    private final AmountDetails amountDetails;
    private final long amountReceived;
    private final Long amountRequested;
    private final Long amountTip;
    private final String application;
    private final long applicationFeeAmount;
    private final long canceledAt;
    private final String cancellationReason;
    private final String captureMethod;
    private final ChargesList charges;
    private final String clientSecret;
    private boolean collectedOffline;
    private final String confirmationMethod;
    private final long created;
    private final String currency;
    private final String customer;
    private final String description;
    private final String id;
    private final String invoice;
    private final ApiError lastPaymentError;
    private final boolean livemode;
    private final Map<String, String> metadata;
    private final NextAction nextAction;
    private OfflineBehavior offlineBehavior;
    private OfflineDetails offlineDetails;
    private final String onBehalfOf;
    private final PaymentMethod paymentMethod;
    private PaymentMethodData paymentMethodData;
    private final String paymentMethodId;
    private final PaymentMethodOptions paymentMethodOptions;
    private final List<PaymentMethodType> paymentMethodTypes;
    private final PaymentMethodUnion paymentMethodUnion;
    private final String receiptEmail;
    private final String review;
    private final String setupFutureUsage;
    private final String statementDescriptor;
    private final String statementDescriptorSuffix;
    private PaymentIntentStatus status;
    private final String stripeAccountId;
    private final String transferGroup;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE), null, null, null, null, null, null, PaymentIntentStatus.INSTANCE.serializer(), null, null, null, null, null, null, null, null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PaymentIntent copy$default(PaymentIntent paymentIntent, String str, long j, long j2, long j3, String str2, long j4, long j5, String str3, String str4, ChargesList chargesList, String str5, String str6, long j6, String str7, String str8, String str9, String str10, ApiError apiError, boolean z, Map map, String str11, PaymentMethodUnion paymentMethodUnion, String str12, String str13, String str14, String str15, PaymentIntentStatus paymentIntentStatus, String str16, AmountDetails amountDetails, Long l, String str17, PaymentMethodOptions paymentMethodOptions, String str18, List list, NextAction nextAction, Long l2, int i, int i2, Object obj) {
        Long l3;
        NextAction nextAction2;
        ApiError apiError2;
        boolean z2;
        Map map2;
        String str19;
        PaymentMethodUnion paymentMethodUnion2;
        String str20;
        String str21;
        String str22;
        String str23;
        PaymentIntentStatus paymentIntentStatus2;
        String str24;
        AmountDetails amountDetails2;
        Long l4;
        String str25;
        PaymentMethodOptions paymentMethodOptions2;
        String str26;
        List list2;
        String str27;
        String str28;
        String str29;
        String str30;
        long j7;
        long j8;
        String str31;
        String str32;
        ChargesList chargesList2;
        String str33;
        String str34;
        long j9;
        String str35;
        String str36 = (i & 1) != 0 ? paymentIntent.id : str;
        long j10 = (i & 2) != 0 ? paymentIntent.amount : j;
        long j11 = (i & 4) != 0 ? paymentIntent.amountCapturable : j2;
        long j12 = (i & 8) != 0 ? paymentIntent.amountReceived : j3;
        String str37 = (i & 16) != 0 ? paymentIntent.application : str2;
        long j13 = (i & 32) != 0 ? paymentIntent.applicationFeeAmount : j4;
        long j14 = (i & 64) != 0 ? paymentIntent.canceledAt : j5;
        String str38 = (i & 128) != 0 ? paymentIntent.cancellationReason : str3;
        String str39 = (i & 256) != 0 ? paymentIntent.captureMethod : str4;
        String str40 = str36;
        ChargesList chargesList3 = (i & 512) != 0 ? paymentIntent.charges : chargesList;
        String str41 = (i & 1024) != 0 ? paymentIntent.clientSecret : str5;
        String str42 = (i & 2048) != 0 ? paymentIntent.confirmationMethod : str6;
        long j15 = j10;
        long j16 = (i & 4096) != 0 ? paymentIntent.created : j6;
        String str43 = (i & 8192) != 0 ? paymentIntent.currency : str7;
        long j17 = j16;
        String str44 = (i & 16384) != 0 ? paymentIntent.customer : str8;
        String str45 = (32768 & i) != 0 ? paymentIntent.description : str9;
        String str46 = (i & 65536) != 0 ? paymentIntent.invoice : str10;
        ApiError apiError3 = (i & 131072) != 0 ? paymentIntent.lastPaymentError : apiError;
        boolean z3 = (i & 262144) != 0 ? paymentIntent.livemode : z;
        Map map3 = (i & 524288) != 0 ? paymentIntent.metadata : map;
        String str47 = (i & 1048576) != 0 ? paymentIntent.onBehalfOf : str11;
        PaymentMethodUnion paymentMethodUnion3 = (i & 2097152) != 0 ? paymentIntent.paymentMethodUnion : paymentMethodUnion;
        String str48 = (i & 4194304) != 0 ? paymentIntent.receiptEmail : str12;
        String str49 = (i & 8388608) != 0 ? paymentIntent.review : str13;
        String str50 = (i & 16777216) != 0 ? paymentIntent.setupFutureUsage : str14;
        String str51 = (i & 33554432) != 0 ? paymentIntent.statementDescriptor : str15;
        PaymentIntentStatus paymentIntentStatus3 = (i & 67108864) != 0 ? paymentIntent.status : paymentIntentStatus;
        String str52 = (i & 134217728) != 0 ? paymentIntent.transferGroup : str16;
        AmountDetails amountDetails3 = (i & 268435456) != 0 ? paymentIntent.amountDetails : amountDetails;
        Long l5 = (i & 536870912) != 0 ? paymentIntent.amountTip : l;
        String str53 = (i & 1073741824) != 0 ? paymentIntent.statementDescriptorSuffix : str17;
        PaymentMethodOptions paymentMethodOptions3 = (i & Integer.MIN_VALUE) != 0 ? paymentIntent.paymentMethodOptions : paymentMethodOptions;
        String str54 = (i2 & 1) != 0 ? paymentIntent.stripeAccountId : str18;
        List list3 = (i2 & 2) != 0 ? paymentIntent.paymentMethodTypes : list;
        NextAction nextAction3 = (i2 & 4) != 0 ? paymentIntent.nextAction : nextAction;
        if ((i2 & 8) != 0) {
            nextAction2 = nextAction3;
            l3 = paymentIntent.amountRequested;
            z2 = z3;
            map2 = map3;
            str19 = str47;
            paymentMethodUnion2 = paymentMethodUnion3;
            str20 = str48;
            str21 = str49;
            str22 = str50;
            str23 = str51;
            paymentIntentStatus2 = paymentIntentStatus3;
            str24 = str52;
            amountDetails2 = amountDetails3;
            l4 = l5;
            str25 = str53;
            paymentMethodOptions2 = paymentMethodOptions3;
            str26 = str54;
            list2 = list3;
            str27 = str44;
            str28 = str45;
            str29 = str43;
            str30 = str37;
            j7 = j13;
            j8 = j14;
            str31 = str38;
            str32 = str39;
            chargesList2 = chargesList3;
            str33 = str41;
            str34 = str42;
            j9 = j17;
            str35 = str46;
            apiError2 = apiError3;
        } else {
            l3 = l2;
            nextAction2 = nextAction3;
            apiError2 = apiError3;
            z2 = z3;
            map2 = map3;
            str19 = str47;
            paymentMethodUnion2 = paymentMethodUnion3;
            str20 = str48;
            str21 = str49;
            str22 = str50;
            str23 = str51;
            paymentIntentStatus2 = paymentIntentStatus3;
            str24 = str52;
            amountDetails2 = amountDetails3;
            l4 = l5;
            str25 = str53;
            paymentMethodOptions2 = paymentMethodOptions3;
            str26 = str54;
            list2 = list3;
            str27 = str44;
            str28 = str45;
            str29 = str43;
            str30 = str37;
            j7 = j13;
            j8 = j14;
            str31 = str38;
            str32 = str39;
            chargesList2 = chargesList3;
            str33 = str41;
            str34 = str42;
            j9 = j17;
            str35 = str46;
        }
        return paymentIntent.copy(str40, j15, j11, j12, str30, j7, j8, str31, str32, chargesList2, str33, str34, j9, str29, str27, str28, str35, apiError2, z2, map2, str19, paymentMethodUnion2, str20, str21, str22, str23, paymentIntentStatus2, str24, amountDetails2, l4, str25, paymentMethodOptions2, str26, list2, nextAction2, l3);
    }

    @Transient
    public static /* synthetic */ void getCollectedOffline$annotations() {
    }

    @Transient
    public static /* synthetic */ void getOfflineBehavior$annotations() {
    }

    @Transient
    public static /* synthetic */ void getOfflineDetails$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPaymentMethod$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPaymentMethodData$annotations() {
    }

    @Transient
    public static /* synthetic */ void getPaymentMethodId$annotations() {
    }

    @Serializable(with = PaymentMethodTypesSerializer.class)
    public static /* synthetic */ void getPaymentMethodTypes$annotations() {
    }

    @SerialName("paymentMethod")
    public static /* synthetic */ void getPaymentMethodUnion$public_release$annotations() {
    }

    @Transient
    public static /* synthetic */ void getStripeAccountId$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10$public_release, reason: from getter */
    public final ChargesList getCharges() {
        return this.charges;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getClientSecret() {
        return this.clientSecret;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getConfirmationMethod() {
        return this.confirmationMethod;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final long getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getCustomer() {
        return this.customer;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getInvoice() {
        return this.invoice;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final ApiError getLastPaymentError() {
        return this.lastPaymentError;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final boolean getLivemode() {
        return this.livemode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    public final Map<String, String> component20() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getOnBehalfOf() {
        return this.onBehalfOf;
    }

    /* JADX INFO: renamed from: component22$public_release, reason: from getter */
    public final PaymentMethodUnion getPaymentMethodUnion() {
        return this.paymentMethodUnion;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getReceiptEmail() {
        return this.receiptEmail;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getReview() {
        return this.review;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getSetupFutureUsage() {
        return this.setupFutureUsage;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getStatementDescriptor() {
        return this.statementDescriptor;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final PaymentIntentStatus getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final String getTransferGroup() {
        return this.transferGroup;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final AmountDetails getAmountDetails() {
        return this.amountDetails;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getAmountCapturable() {
        return this.amountCapturable;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final Long getAmountTip() {
        return this.amountTip;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final String getStatementDescriptorSuffix() {
        return this.statementDescriptorSuffix;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final PaymentMethodOptions getPaymentMethodOptions() {
        return this.paymentMethodOptions;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final String getStripeAccountId() {
        return this.stripeAccountId;
    }

    public final List<PaymentMethodType> component34() {
        return this.paymentMethodTypes;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final NextAction getNextAction() {
        return this.nextAction;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final Long getAmountRequested() {
        return this.amountRequested;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getAmountReceived() {
        return this.amountReceived;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getApplication() {
        return this.application;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getApplicationFeeAmount() {
        return this.applicationFeeAmount;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getCanceledAt() {
        return this.canceledAt;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getCancellationReason() {
        return this.cancellationReason;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCaptureMethod() {
        return this.captureMethod;
    }

    public final PaymentIntent copy(String id, long amount, long amountCapturable, long amountReceived, String application, long applicationFeeAmount, long canceledAt, String cancellationReason, String captureMethod, ChargesList charges, String clientSecret, String confirmationMethod, long created, String currency, String customer, String description, String invoice, ApiError lastPaymentError, boolean livemode, Map<String, String> metadata, String onBehalfOf, PaymentMethodUnion paymentMethodUnion, String receiptEmail, String review, String setupFutureUsage, String statementDescriptor, PaymentIntentStatus status, String transferGroup, AmountDetails amountDetails, Long amountTip, String statementDescriptorSuffix, PaymentMethodOptions paymentMethodOptions, String stripeAccountId, List<? extends PaymentMethodType> paymentMethodTypes, NextAction nextAction, Long amountRequested) {
        Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
        return new PaymentIntent(id, amount, amountCapturable, amountReceived, application, applicationFeeAmount, canceledAt, cancellationReason, captureMethod, charges, clientSecret, confirmationMethod, created, currency, customer, description, invoice, lastPaymentError, livemode, metadata, onBehalfOf, paymentMethodUnion, receiptEmail, review, setupFutureUsage, statementDescriptor, status, transferGroup, amountDetails, amountTip, statementDescriptorSuffix, paymentMethodOptions, stripeAccountId, paymentMethodTypes, nextAction, amountRequested);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentIntent)) {
            return false;
        }
        PaymentIntent paymentIntent = (PaymentIntent) other;
        return Intrinsics.areEqual(this.id, paymentIntent.id) && this.amount == paymentIntent.amount && this.amountCapturable == paymentIntent.amountCapturable && this.amountReceived == paymentIntent.amountReceived && Intrinsics.areEqual(this.application, paymentIntent.application) && this.applicationFeeAmount == paymentIntent.applicationFeeAmount && this.canceledAt == paymentIntent.canceledAt && Intrinsics.areEqual(this.cancellationReason, paymentIntent.cancellationReason) && Intrinsics.areEqual(this.captureMethod, paymentIntent.captureMethod) && Intrinsics.areEqual(this.charges, paymentIntent.charges) && Intrinsics.areEqual(this.clientSecret, paymentIntent.clientSecret) && Intrinsics.areEqual(this.confirmationMethod, paymentIntent.confirmationMethod) && this.created == paymentIntent.created && Intrinsics.areEqual(this.currency, paymentIntent.currency) && Intrinsics.areEqual(this.customer, paymentIntent.customer) && Intrinsics.areEqual(this.description, paymentIntent.description) && Intrinsics.areEqual(this.invoice, paymentIntent.invoice) && Intrinsics.areEqual(this.lastPaymentError, paymentIntent.lastPaymentError) && this.livemode == paymentIntent.livemode && Intrinsics.areEqual(this.metadata, paymentIntent.metadata) && Intrinsics.areEqual(this.onBehalfOf, paymentIntent.onBehalfOf) && Intrinsics.areEqual(this.paymentMethodUnion, paymentIntent.paymentMethodUnion) && Intrinsics.areEqual(this.receiptEmail, paymentIntent.receiptEmail) && Intrinsics.areEqual(this.review, paymentIntent.review) && Intrinsics.areEqual(this.setupFutureUsage, paymentIntent.setupFutureUsage) && Intrinsics.areEqual(this.statementDescriptor, paymentIntent.statementDescriptor) && this.status == paymentIntent.status && Intrinsics.areEqual(this.transferGroup, paymentIntent.transferGroup) && Intrinsics.areEqual(this.amountDetails, paymentIntent.amountDetails) && Intrinsics.areEqual(this.amountTip, paymentIntent.amountTip) && Intrinsics.areEqual(this.statementDescriptorSuffix, paymentIntent.statementDescriptorSuffix) && Intrinsics.areEqual(this.paymentMethodOptions, paymentIntent.paymentMethodOptions) && Intrinsics.areEqual(this.stripeAccountId, paymentIntent.stripeAccountId) && Intrinsics.areEqual(this.paymentMethodTypes, paymentIntent.paymentMethodTypes) && Intrinsics.areEqual(this.nextAction, paymentIntent.nextAction) && Intrinsics.areEqual(this.amountRequested, paymentIntent.amountRequested);
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (((((((str == null ? 0 : str.hashCode()) * 31) + Long.hashCode(this.amount)) * 31) + Long.hashCode(this.amountCapturable)) * 31) + Long.hashCode(this.amountReceived)) * 31;
        String str2 = this.application;
        int iHashCode2 = (((((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + Long.hashCode(this.applicationFeeAmount)) * 31) + Long.hashCode(this.canceledAt)) * 31;
        String str3 = this.cancellationReason;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.captureMethod;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ChargesList chargesList = this.charges;
        int iHashCode5 = (iHashCode4 + (chargesList == null ? 0 : chargesList.hashCode())) * 31;
        String str5 = this.clientSecret;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.confirmationMethod;
        int iHashCode7 = (((iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31) + Long.hashCode(this.created)) * 31;
        String str7 = this.currency;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.customer;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.description;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.invoice;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        ApiError apiError = this.lastPaymentError;
        int iHashCode12 = (((iHashCode11 + (apiError == null ? 0 : apiError.hashCode())) * 31) + Boolean.hashCode(this.livemode)) * 31;
        Map<String, String> map = this.metadata;
        int iHashCode13 = (iHashCode12 + (map == null ? 0 : map.hashCode())) * 31;
        String str11 = this.onBehalfOf;
        int iHashCode14 = (iHashCode13 + (str11 == null ? 0 : str11.hashCode())) * 31;
        PaymentMethodUnion paymentMethodUnion = this.paymentMethodUnion;
        int iHashCode15 = (iHashCode14 + (paymentMethodUnion == null ? 0 : paymentMethodUnion.hashCode())) * 31;
        String str12 = this.receiptEmail;
        int iHashCode16 = (iHashCode15 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.review;
        int iHashCode17 = (iHashCode16 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.setupFutureUsage;
        int iHashCode18 = (iHashCode17 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.statementDescriptor;
        int iHashCode19 = (iHashCode18 + (str15 == null ? 0 : str15.hashCode())) * 31;
        PaymentIntentStatus paymentIntentStatus = this.status;
        int iHashCode20 = (iHashCode19 + (paymentIntentStatus == null ? 0 : paymentIntentStatus.hashCode())) * 31;
        String str16 = this.transferGroup;
        int iHashCode21 = (iHashCode20 + (str16 == null ? 0 : str16.hashCode())) * 31;
        AmountDetails amountDetails = this.amountDetails;
        int iHashCode22 = (iHashCode21 + (amountDetails == null ? 0 : amountDetails.hashCode())) * 31;
        Long l = this.amountTip;
        int iHashCode23 = (iHashCode22 + (l == null ? 0 : l.hashCode())) * 31;
        String str17 = this.statementDescriptorSuffix;
        int iHashCode24 = (iHashCode23 + (str17 == null ? 0 : str17.hashCode())) * 31;
        PaymentMethodOptions paymentMethodOptions = this.paymentMethodOptions;
        int iHashCode25 = (iHashCode24 + (paymentMethodOptions == null ? 0 : paymentMethodOptions.hashCode())) * 31;
        String str18 = this.stripeAccountId;
        int iHashCode26 = (((iHashCode25 + (str18 == null ? 0 : str18.hashCode())) * 31) + this.paymentMethodTypes.hashCode()) * 31;
        NextAction nextAction = this.nextAction;
        int iHashCode27 = (iHashCode26 + (nextAction == null ? 0 : nextAction.hashCode())) * 31;
        Long l2 = this.amountRequested;
        return iHashCode27 + (l2 != null ? l2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PaymentIntent(id=");
        sb.append(this.id).append(", amount=").append(this.amount).append(", amountCapturable=").append(this.amountCapturable).append(", amountReceived=").append(this.amountReceived).append(", application=").append(this.application).append(", applicationFeeAmount=").append(this.applicationFeeAmount).append(", canceledAt=").append(this.canceledAt).append(", cancellationReason=").append(this.cancellationReason).append(", captureMethod=").append(this.captureMethod).append(", charges=").append(this.charges).append(", clientSecret=").append(this.clientSecret).append(", confirmationMethod=");
        sb.append(this.confirmationMethod).append(", created=").append(this.created).append(", currency=").append(this.currency).append(", customer=").append(this.customer).append(", description=").append(this.description).append(", invoice=").append(this.invoice).append(", lastPaymentError=").append(this.lastPaymentError).append(", livemode=").append(this.livemode).append(", metadata=").append(this.metadata).append(", onBehalfOf=").append(this.onBehalfOf).append(", paymentMethodUnion=").append(this.paymentMethodUnion).append(", receiptEmail=").append(this.receiptEmail);
        sb.append(", review=").append(this.review).append(", setupFutureUsage=").append(this.setupFutureUsage).append(", statementDescriptor=").append(this.statementDescriptor).append(", status=").append(this.status).append(", transferGroup=").append(this.transferGroup).append(", amountDetails=").append(this.amountDetails).append(", amountTip=").append(this.amountTip).append(", statementDescriptorSuffix=").append(this.statementDescriptorSuffix).append(", paymentMethodOptions=").append(this.paymentMethodOptions).append(", stripeAccountId=").append(this.stripeAccountId).append(", paymentMethodTypes=").append(this.paymentMethodTypes).append(", nextAction=");
        sb.append(this.nextAction).append(", amountRequested=").append(this.amountRequested).append(')');
        return sb.toString();
    }

    /* JADX INFO: compiled from: PaymentIntent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/PaymentIntent$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PaymentIntent> serializer() {
            return PaymentIntent$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ PaymentIntent(int i, int i2, String str, long j, long j2, long j3, String str2, long j4, long j5, String str3, String str4, ChargesList chargesList, String str5, String str6, long j6, String str7, String str8, String str9, String str10, ApiError apiError, boolean z, Map map, String str11, @SerialName("paymentMethod") PaymentMethodUnion paymentMethodUnion, String str12, String str13, String str14, String str15, PaymentIntentStatus paymentIntentStatus, String str16, AmountDetails amountDetails, Long l, String str17, PaymentMethodOptions paymentMethodOptions, @Serializable(with = PaymentMethodTypesSerializer.class) List list, NextAction nextAction, Long l2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwArrayMissingFieldException(new int[]{i, i2}, new int[]{1, 0}, PaymentIntent$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        if ((i & 2) == 0) {
            this.amount = 0L;
        } else {
            this.amount = j;
        }
        if ((i & 4) == 0) {
            this.amountCapturable = 0L;
        } else {
            this.amountCapturable = j2;
        }
        if ((i & 8) == 0) {
            this.amountReceived = 0L;
        } else {
            this.amountReceived = j3;
        }
        if ((i & 16) == 0) {
            this.application = null;
        } else {
            this.application = str2;
        }
        if ((i & 32) == 0) {
            this.applicationFeeAmount = 0L;
        } else {
            this.applicationFeeAmount = j4;
        }
        if ((i & 64) == 0) {
            this.canceledAt = 0L;
        } else {
            this.canceledAt = j5;
        }
        if ((i & 128) == 0) {
            this.cancellationReason = null;
        } else {
            this.cancellationReason = str3;
        }
        if ((i & 256) == 0) {
            this.captureMethod = null;
        } else {
            this.captureMethod = str4;
        }
        if ((i & 512) == 0) {
            this.charges = null;
        } else {
            this.charges = chargesList;
        }
        if ((i & 1024) == 0) {
            this.clientSecret = null;
        } else {
            this.clientSecret = str5;
        }
        if ((i & 2048) == 0) {
            this.confirmationMethod = null;
        } else {
            this.confirmationMethod = str6;
        }
        if ((i & 4096) == 0) {
            this.created = 0L;
        } else {
            this.created = j6;
        }
        if ((i & 8192) == 0) {
            this.currency = null;
        } else {
            this.currency = str7;
        }
        if ((i & 16384) == 0) {
            this.customer = null;
        } else {
            this.customer = str8;
        }
        if ((32768 & i) == 0) {
            this.description = null;
        } else {
            this.description = str9;
        }
        if ((65536 & i) == 0) {
            this.invoice = null;
        } else {
            this.invoice = str10;
        }
        if ((131072 & i) == 0) {
            this.lastPaymentError = null;
        } else {
            this.lastPaymentError = apiError;
        }
        if ((262144 & i) == 0) {
            this.livemode = false;
        } else {
            this.livemode = z;
        }
        if ((524288 & i) == 0) {
            this.metadata = null;
        } else {
            this.metadata = map;
        }
        if ((1048576 & i) == 0) {
            this.onBehalfOf = null;
        } else {
            this.onBehalfOf = str11;
        }
        if ((2097152 & i) == 0) {
            this.paymentMethodUnion = null;
        } else {
            this.paymentMethodUnion = paymentMethodUnion;
        }
        if ((4194304 & i) == 0) {
            this.receiptEmail = null;
        } else {
            this.receiptEmail = str12;
        }
        if ((8388608 & i) == 0) {
            this.review = null;
        } else {
            this.review = str13;
        }
        if ((16777216 & i) == 0) {
            this.setupFutureUsage = null;
        } else {
            this.setupFutureUsage = str14;
        }
        if ((33554432 & i) == 0) {
            this.statementDescriptor = null;
        } else {
            this.statementDescriptor = str15;
        }
        if ((67108864 & i) == 0) {
            this.status = null;
        } else {
            this.status = paymentIntentStatus;
        }
        if ((134217728 & i) == 0) {
            this.transferGroup = null;
        } else {
            this.transferGroup = str16;
        }
        if ((268435456 & i) == 0) {
            this.amountDetails = null;
        } else {
            this.amountDetails = amountDetails;
        }
        if ((536870912 & i) == 0) {
            this.amountTip = null;
        } else {
            this.amountTip = l;
        }
        if ((1073741824 & i) == 0) {
            this.statementDescriptorSuffix = null;
        } else {
            this.statementDescriptorSuffix = str17;
        }
        if ((i & Integer.MIN_VALUE) == 0) {
            this.paymentMethodOptions = null;
        } else {
            this.paymentMethodOptions = paymentMethodOptions;
        }
        this.stripeAccountId = null;
        this.paymentMethodTypes = (i2 & 1) == 0 ? CollectionsKt.emptyList() : list;
        if ((i2 & 2) == 0) {
            this.nextAction = null;
        } else {
            this.nextAction = nextAction;
        }
        if ((i2 & 4) == 0) {
            this.amountRequested = null;
        } else {
            this.amountRequested = l2;
        }
        PaymentMethodUnion paymentMethodUnion2 = this.paymentMethodUnion;
        this.paymentMethodId = paymentMethodUnion2 != null ? paymentMethodUnion2.getId() : null;
        PaymentMethodUnion paymentMethodUnion3 = this.paymentMethodUnion;
        PaymentMethodUnion.Expanded expanded = paymentMethodUnion3 instanceof PaymentMethodUnion.Expanded ? (PaymentMethodUnion.Expanded) paymentMethodUnion3 : null;
        this.paymentMethod = expanded != null ? expanded.getPaymentMethod() : null;
        this.paymentMethodData = null;
        this.offlineDetails = null;
        this.collectedOffline = false;
        this.offlineBehavior = OfflineBehavior.PREFER_ONLINE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PaymentIntent(String str, long j, long j2, long j3, String str2, long j4, long j5, String str3, String str4, ChargesList chargesList, String str5, String str6, long j6, String str7, String str8, String str9, String str10, ApiError apiError, boolean z, Map<String, String> map, String str11, PaymentMethodUnion paymentMethodUnion, String str12, String str13, String str14, String str15, PaymentIntentStatus paymentIntentStatus, String str16, AmountDetails amountDetails, Long l, String str17, PaymentMethodOptions paymentMethodOptions, String str18, List<? extends PaymentMethodType> paymentMethodTypes, NextAction nextAction, Long l2) {
        Intrinsics.checkNotNullParameter(paymentMethodTypes, "paymentMethodTypes");
        this.id = str;
        this.amount = j;
        this.amountCapturable = j2;
        this.amountReceived = j3;
        this.application = str2;
        this.applicationFeeAmount = j4;
        this.canceledAt = j5;
        this.cancellationReason = str3;
        this.captureMethod = str4;
        this.charges = chargesList;
        this.clientSecret = str5;
        this.confirmationMethod = str6;
        this.created = j6;
        this.currency = str7;
        this.customer = str8;
        this.description = str9;
        this.invoice = str10;
        this.lastPaymentError = apiError;
        this.livemode = z;
        this.metadata = map;
        this.onBehalfOf = str11;
        this.paymentMethodUnion = paymentMethodUnion;
        this.receiptEmail = str12;
        this.review = str13;
        this.setupFutureUsage = str14;
        this.statementDescriptor = str15;
        this.status = paymentIntentStatus;
        this.transferGroup = str16;
        this.amountDetails = amountDetails;
        this.amountTip = l;
        this.statementDescriptorSuffix = str17;
        this.paymentMethodOptions = paymentMethodOptions;
        this.stripeAccountId = str18;
        this.paymentMethodTypes = paymentMethodTypes;
        this.nextAction = nextAction;
        this.amountRequested = l2;
        this.paymentMethodId = paymentMethodUnion != null ? paymentMethodUnion.getId() : null;
        PaymentMethodUnion.Expanded expanded = paymentMethodUnion instanceof PaymentMethodUnion.Expanded ? (PaymentMethodUnion.Expanded) paymentMethodUnion : null;
        this.paymentMethod = expanded != null ? expanded.getPaymentMethod() : null;
        this.offlineBehavior = OfflineBehavior.PREFER_ONLINE;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(PaymentIntent self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeNullableSerializableElement(serialDesc, 0, StringSerializer.INSTANCE, self.id);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.amount != 0) {
            output.encodeLongElement(serialDesc, 1, self.amount);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.amountCapturable != 0) {
            output.encodeLongElement(serialDesc, 2, self.amountCapturable);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.amountReceived != 0) {
            output.encodeLongElement(serialDesc, 3, self.amountReceived);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.application != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.application);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.applicationFeeAmount != 0) {
            output.encodeLongElement(serialDesc, 5, self.applicationFeeAmount);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.canceledAt != 0) {
            output.encodeLongElement(serialDesc, 6, self.canceledAt);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.cancellationReason != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, StringSerializer.INSTANCE, self.cancellationReason);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.captureMethod != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, StringSerializer.INSTANCE, self.captureMethod);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.charges != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, ChargesList$$serializer.INSTANCE, self.charges);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.clientSecret != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, StringSerializer.INSTANCE, self.clientSecret);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.confirmationMethod != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, StringSerializer.INSTANCE, self.confirmationMethod);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) || self.created != 0) {
            output.encodeLongElement(serialDesc, 12, self.created);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 13) || self.currency != null) {
            output.encodeNullableSerializableElement(serialDesc, 13, StringSerializer.INSTANCE, self.currency);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 14) || self.customer != null) {
            output.encodeNullableSerializableElement(serialDesc, 14, StringSerializer.INSTANCE, self.customer);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.description != null) {
            output.encodeNullableSerializableElement(serialDesc, 15, StringSerializer.INSTANCE, self.description);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 16) || self.invoice != null) {
            output.encodeNullableSerializableElement(serialDesc, 16, StringSerializer.INSTANCE, self.invoice);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 17) || self.lastPaymentError != null) {
            output.encodeNullableSerializableElement(serialDesc, 17, ApiErrorSerializer.INSTANCE, self.lastPaymentError);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 18) || self.livemode) {
            output.encodeBooleanElement(serialDesc, 18, self.livemode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 19) || self.metadata != null) {
            output.encodeNullableSerializableElement(serialDesc, 19, kSerializerArr[19], self.metadata);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 20) || self.onBehalfOf != null) {
            output.encodeNullableSerializableElement(serialDesc, 20, StringSerializer.INSTANCE, self.onBehalfOf);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 21) || self.paymentMethodUnion != null) {
            output.encodeNullableSerializableElement(serialDesc, 21, PaymentMethodUnionSerializer.INSTANCE, self.paymentMethodUnion);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 22) || self.receiptEmail != null) {
            output.encodeNullableSerializableElement(serialDesc, 22, StringSerializer.INSTANCE, self.receiptEmail);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 23) || self.review != null) {
            output.encodeNullableSerializableElement(serialDesc, 23, StringSerializer.INSTANCE, self.review);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 24) || self.setupFutureUsage != null) {
            output.encodeNullableSerializableElement(serialDesc, 24, StringSerializer.INSTANCE, self.setupFutureUsage);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 25) || self.statementDescriptor != null) {
            output.encodeNullableSerializableElement(serialDesc, 25, StringSerializer.INSTANCE, self.statementDescriptor);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 26) || self.status != null) {
            output.encodeNullableSerializableElement(serialDesc, 26, kSerializerArr[26], self.status);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 27) || self.transferGroup != null) {
            output.encodeNullableSerializableElement(serialDesc, 27, StringSerializer.INSTANCE, self.transferGroup);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 28) || self.amountDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 28, AmountDetails$$serializer.INSTANCE, self.amountDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 29) || self.amountTip != null) {
            output.encodeNullableSerializableElement(serialDesc, 29, LongSerializer.INSTANCE, self.amountTip);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 30) || self.statementDescriptorSuffix != null) {
            output.encodeNullableSerializableElement(serialDesc, 30, StringSerializer.INSTANCE, self.statementDescriptorSuffix);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 31) || self.paymentMethodOptions != null) {
            output.encodeNullableSerializableElement(serialDesc, 31, PaymentMethodOptions$$serializer.INSTANCE, self.paymentMethodOptions);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 32) || !Intrinsics.areEqual(self.paymentMethodTypes, CollectionsKt.emptyList())) {
            output.encodeSerializableElement(serialDesc, 32, PaymentMethodTypesSerializer.INSTANCE, self.paymentMethodTypes);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 33) || self.nextAction != null) {
            output.encodeNullableSerializableElement(serialDesc, 33, NextAction$$serializer.INSTANCE, self.nextAction);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 34) && self.amountRequested == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 34, LongSerializer.INSTANCE, self.amountRequested);
    }

    public final String getId() {
        return this.id;
    }

    public final long getAmount() {
        return this.amount;
    }

    public final long getAmountCapturable() {
        return this.amountCapturable;
    }

    public final long getAmountReceived() {
        return this.amountReceived;
    }

    public final String getApplication() {
        return this.application;
    }

    public final long getApplicationFeeAmount() {
        return this.applicationFeeAmount;
    }

    public final long getCanceledAt() {
        return this.canceledAt;
    }

    public final String getCancellationReason() {
        return this.cancellationReason;
    }

    public final String getCaptureMethod() {
        return this.captureMethod;
    }

    public final ChargesList getCharges$public_release() {
        return this.charges;
    }

    public final String getClientSecret() {
        return this.clientSecret;
    }

    public final String getConfirmationMethod() {
        return this.confirmationMethod;
    }

    public final long getCreated() {
        return this.created;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getCustomer() {
        return this.customer;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getInvoice() {
        return this.invoice;
    }

    public final ApiError getLastPaymentError() {
        return this.lastPaymentError;
    }

    public final boolean getLivemode() {
        return this.livemode;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    public final String getOnBehalfOf() {
        return this.onBehalfOf;
    }

    public final PaymentMethodUnion getPaymentMethodUnion$public_release() {
        return this.paymentMethodUnion;
    }

    public final String getReceiptEmail() {
        return this.receiptEmail;
    }

    public final String getReview() {
        return this.review;
    }

    public final String getSetupFutureUsage() {
        return this.setupFutureUsage;
    }

    public final String getStatementDescriptor() {
        return this.statementDescriptor;
    }

    public final PaymentIntentStatus getStatus() {
        return this.status;
    }

    public final void setStatus(PaymentIntentStatus paymentIntentStatus) {
        this.status = paymentIntentStatus;
    }

    public final String getTransferGroup() {
        return this.transferGroup;
    }

    public final AmountDetails getAmountDetails() {
        return this.amountDetails;
    }

    public final Long getAmountTip() {
        return this.amountTip;
    }

    public final String getStatementDescriptorSuffix() {
        return this.statementDescriptorSuffix;
    }

    public final PaymentMethodOptions getPaymentMethodOptions() {
        return this.paymentMethodOptions;
    }

    public final String getStripeAccountId() {
        return this.stripeAccountId;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ PaymentIntent(String str, long j, long j2, long j3, String str2, long j4, long j5, String str3, String str4, ChargesList chargesList, String str5, String str6, long j6, String str7, String str8, String str9, String str10, ApiError apiError, boolean z, Map map, String str11, PaymentMethodUnion paymentMethodUnion, String str12, String str13, String str14, String str15, PaymentIntentStatus paymentIntentStatus, String str16, AmountDetails amountDetails, Long l, String str17, PaymentMethodOptions paymentMethodOptions, String str18, List list, NextAction nextAction, Long l2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j7 = (i & 2) != 0 ? 0L : j;
        long j8 = (i & 4) != 0 ? 0L : j2;
        long j9 = (i & 8) != 0 ? 0L : j3;
        String str19 = (i & 16) != 0 ? null : str2;
        long j10 = (i & 32) != 0 ? 0L : j4;
        long j11 = (i & 64) != 0 ? 0L : j5;
        String str20 = (i & 128) != 0 ? null : str3;
        String str21 = (i & 256) != 0 ? null : str4;
        ChargesList chargesList2 = (i & 512) != 0 ? null : chargesList;
        String str22 = (i & 1024) != 0 ? null : str5;
        String str23 = str19;
        String str24 = (i & 2048) != 0 ? null : str6;
        long j12 = (i & 4096) != 0 ? 0L : j6;
        String str25 = (i & 8192) != 0 ? null : str7;
        long j13 = j7;
        long j14 = j8;
        long j15 = j9;
        long j16 = j10;
        long j17 = j11;
        String str26 = str20;
        this(str, j13, j14, j15, str23, j16, j17, str26, str21, chargesList2, str22, str24, j12, str25, (i & 16384) != 0 ? null : str8, (i & 32768) != 0 ? null : str9, (i & 65536) != 0 ? null : str10, (i & 131072) != 0 ? null : apiError, (i & 262144) != 0 ? false : z, (i & 524288) != 0 ? null : map, (i & 1048576) != 0 ? null : str11, (i & 2097152) != 0 ? null : paymentMethodUnion, (i & 4194304) != 0 ? null : str12, (i & 8388608) != 0 ? null : str13, (i & 16777216) != 0 ? null : str14, (i & 33554432) != 0 ? null : str15, (i & 67108864) != 0 ? null : paymentIntentStatus, (i & 134217728) != 0 ? null : str16, (i & 268435456) != 0 ? null : amountDetails, (i & 536870912) != 0 ? null : l, (i & 1073741824) != 0 ? null : str17, (i & Integer.MIN_VALUE) != 0 ? null : paymentMethodOptions, (i2 & 1) != 0 ? null : str18, (i2 & 2) != 0 ? CollectionsKt.emptyList() : list, (i2 & 4) != 0 ? null : nextAction, (i2 & 8) != 0 ? null : l2);
    }

    public final List<PaymentMethodType> getPaymentMethodTypes() {
        return this.paymentMethodTypes;
    }

    public final NextAction getNextAction() {
        return this.nextAction;
    }

    public final Long getAmountRequested() {
        return this.amountRequested;
    }

    public final String getPaymentMethodId() {
        return this.paymentMethodId;
    }

    public final PaymentMethod getPaymentMethod() {
        return this.paymentMethod;
    }

    public final PaymentMethodData getPaymentMethodData() {
        return this.paymentMethodData;
    }

    public final void setPaymentMethodData(PaymentMethodData paymentMethodData) {
        this.paymentMethodData = paymentMethodData;
        this.status = PaymentIntentStatus.REQUIRES_CONFIRMATION;
    }

    public final OfflineDetails getOfflineDetails() {
        return this.offlineDetails;
    }

    public final void setOfflineDetails(OfflineDetails offlineDetails) {
        this.offlineDetails = offlineDetails;
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

    public final List<Charge> getCharges() {
        List<Charge> listListOf;
        ChargesList chargesList = this.charges;
        if (chargesList != null) {
            Charge[] data$public_release = chargesList.getData$public_release();
            listListOf = CollectionsKt.listOf(Arrays.copyOf(data$public_release, data$public_release.length));
        } else {
            listListOf = null;
        }
        return listListOf == null ? CollectionsKt.emptyList() : listListOf;
    }
}
