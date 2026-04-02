package com.stripe.stripeterminal.external.models;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.Map;
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
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Charge.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\bU\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u0092\u00012\u00060\u0001j\u0002`\u0002:\u0004\u0091\u0001\u0092\u0001B\u0089\u0003\b\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\r\u001a\u00020\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0019\u001a\u00020\u0010\u0012\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u0010\u0012\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\b\u0010!\u001a\u0004\u0018\u00010\"\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010&\u001a\u00020\u0010\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010+\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010.\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010/\u001a\u0004\u0018\u000100¢\u0006\u0002\u00101B¯\u0003\b\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\t\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0010\u0012\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010&\u001a\u00020\u0010\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u00102J\t\u0010_\u001a\u00020\u0007HÆ\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010g\u001a\u00020\u0010HÆ\u0003J\u0017\u0010h\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001bHÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010j\u001a\u00020\tHÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010l\u001a\u00020\u0010HÆ\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\"HÆ\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010s\u001a\u00020\u0010HÆ\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010u\u001a\u00020\tHÆ\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010}\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u007f\u001a\u00020\tHÆ\u0003J\f\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0010HÆ\u0003J\n\u0010\u0082\u0001\u001a\u00020\tHÆ\u0003J´\u0003\u0010\u0083\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\r\u001a\u00020\t2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0019\u001a\u00020\u00102\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u001e\u001a\u00020\u00102\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010&\u001a\u00020\u00102\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0016\u0010\u0084\u0001\u001a\u00020\u00102\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001HÖ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0004HÖ\u0001J\n\u0010\u0088\u0001\u001a\u00020\u0007HÖ\u0001J.\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u008b\u0001\u001a\u00020\u00002\b\u0010\u008c\u0001\u001a\u00030\u008d\u00012\b\u0010\u008e\u0001\u001a\u00030\u008f\u0001HÁ\u0001¢\u0006\u0003\b\u0090\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b5\u00104R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b8\u00107R\u0011\u0010\r\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b9\u00104R\u0013\u0010.\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b:\u00107R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b;\u00107R\u0013\u0010-\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b<\u00107R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u0011\u0010\u0011\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b?\u00104R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b@\u00107R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bA\u00107R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bB\u00107R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bC\u00107R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bD\u00107R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bE\u00107R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\bF\u00107R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bG\u00107R\u0011\u0010\u0019\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\bH\u0010>R\u001f\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\bI\u0010JR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bK\u00107R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bL\u00107R\u0011\u0010\u001e\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\bM\u0010>R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bN\u0010O\u001a\u0004\bP\u00107R\u0013\u0010!\u001a\u0004\u0018\u00010\"¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010RR\u001e\u0010 \u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bS\u0010O\u001a\u0004\bT\u00107R\u0013\u0010#\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bU\u00107R\u0013\u0010$\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bV\u00107R\u0013\u0010%\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bW\u00107R\u0011\u0010&\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\bX\u0010>R\u0013\u0010'\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bY\u00107R\u0013\u0010(\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bZ\u00107R\u0013\u0010,\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b[\u00107R\u0013\u0010)\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\\\u00107R\u0013\u0010*\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b]\u00107R\u0013\u0010+\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b^\u00107¨\u0006\u0093\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Charge;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "seen1", "", "seen2", OfflineStorageConstantsKt.ID, "", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "amountRefunded", "application", "applicationFee", "applicationFeeAmount", "balanceTransaction", "captured", "", "created", FirebaseAnalytics.Param.CURRENCY, "customer", "description", "dispute", "failureCode", "failureMessage", "invoice", "livemode", "metadata", "", "onBehalfOf", "order", "paid", "paymentIntentId", "paymentMethodId", "paymentMethodDetails", "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "receiptEmail", "receiptNumber", "receiptUrl", "refunded", "review", "statementDescriptor", NotificationCompat.CATEGORY_STATUS, "transfer", "transferGroup", "statementDescriptorSuffix", "calculatedStatementDescriptor", "authorizationCode", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAmount", "()J", "getAmountRefunded", "getApplication", "()Ljava/lang/String;", "getApplicationFee", "getApplicationFeeAmount", "getAuthorizationCode", "getBalanceTransaction", "getCalculatedStatementDescriptor", "getCaptured", "()Z", "getCreated", "getCurrency", "getCustomer", "getDescription", "getDispute", "getFailureCode", "getFailureMessage", "getId", "getInvoice", "getLivemode", "getMetadata", "()Ljava/util/Map;", "getOnBehalfOf", "getOrder", "getPaid", "getPaymentIntentId$annotations", "()V", "getPaymentIntentId", "getPaymentMethodDetails", "()Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;", "getPaymentMethodId$annotations", "getPaymentMethodId", "getReceiptEmail", "getReceiptNumber", "getReceiptUrl", "getRefunded", "getReview", "getStatementDescriptor", "getStatementDescriptorSuffix", "getStatus", "getTransfer", "getTransferGroup", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$public_release", "$serializer", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class Charge implements java.io.Serializable {
    private final long amount;
    private final long amountRefunded;
    private final String application;
    private final String applicationFee;
    private final long applicationFeeAmount;
    private final String authorizationCode;
    private final String balanceTransaction;
    private final String calculatedStatementDescriptor;
    private final boolean captured;
    private final long created;
    private final String currency;
    private final String customer;
    private final String description;
    private final String dispute;
    private final String failureCode;
    private final String failureMessage;
    private final String id;
    private final String invoice;
    private final boolean livemode;
    private final Map<String, String> metadata;
    private final String onBehalfOf;
    private final String order;
    private final boolean paid;
    private final String paymentIntentId;
    private final PaymentMethodDetails paymentMethodDetails;
    private final String paymentMethodId;
    private final String receiptEmail;
    private final String receiptNumber;
    private final String receiptUrl;
    private final boolean refunded;
    private final String review;
    private final String statementDescriptor;
    private final String statementDescriptorSuffix;
    private final String status;
    private final String transfer;
    private final String transferGroup;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Charge copy$default(Charge charge, String str, long j, long j2, String str2, String str3, long j3, String str4, boolean z, long j4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z2, Map map, String str12, String str13, boolean z3, String str14, String str15, PaymentMethodDetails paymentMethodDetails, String str16, String str17, String str18, boolean z4, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, int i, int i2, Object obj) {
        String str27;
        String str28;
        String str29;
        boolean z5;
        String str30;
        String str31;
        PaymentMethodDetails paymentMethodDetails2;
        String str32;
        String str33;
        String str34;
        boolean z6;
        String str35;
        String str36;
        String str37;
        String str38;
        String str39;
        String str40;
        String str41;
        String str42;
        boolean z7;
        long j5;
        String str43;
        String str44;
        String str45;
        String str46;
        String str47;
        String str48;
        boolean z8;
        Map map2;
        String str49;
        String str50 = (i & 1) != 0 ? charge.id : str;
        long j6 = (i & 2) != 0 ? charge.amount : j;
        long j7 = (i & 4) != 0 ? charge.amountRefunded : j2;
        String str51 = (i & 8) != 0 ? charge.application : str2;
        String str52 = (i & 16) != 0 ? charge.applicationFee : str3;
        long j8 = (i & 32) != 0 ? charge.applicationFeeAmount : j3;
        String str53 = (i & 64) != 0 ? charge.balanceTransaction : str4;
        boolean z9 = (i & 128) != 0 ? charge.captured : z;
        long j9 = (i & 256) != 0 ? charge.created : j4;
        String str54 = (i & 512) != 0 ? charge.currency : str5;
        String str55 = str50;
        String str56 = (i & 1024) != 0 ? charge.customer : str6;
        String str57 = (i & 2048) != 0 ? charge.description : str7;
        String str58 = (i & 4096) != 0 ? charge.dispute : str8;
        String str59 = (i & 8192) != 0 ? charge.failureCode : str9;
        String str60 = (i & 16384) != 0 ? charge.failureMessage : str10;
        String str61 = (i & 32768) != 0 ? charge.invoice : str11;
        boolean z10 = (i & 65536) != 0 ? charge.livemode : z2;
        Map map3 = (i & 131072) != 0 ? charge.metadata : map;
        String str62 = (i & 262144) != 0 ? charge.onBehalfOf : str12;
        String str63 = (i & 524288) != 0 ? charge.order : str13;
        boolean z11 = (i & 1048576) != 0 ? charge.paid : z3;
        String str64 = (i & 2097152) != 0 ? charge.paymentIntentId : str14;
        String str65 = (i & 4194304) != 0 ? charge.paymentMethodId : str15;
        PaymentMethodDetails paymentMethodDetails3 = (i & 8388608) != 0 ? charge.paymentMethodDetails : paymentMethodDetails;
        String str66 = (i & 16777216) != 0 ? charge.receiptEmail : str16;
        String str67 = (i & 33554432) != 0 ? charge.receiptNumber : str17;
        String str68 = (i & 67108864) != 0 ? charge.receiptUrl : str18;
        boolean z12 = (i & 134217728) != 0 ? charge.refunded : z4;
        String str69 = (i & 268435456) != 0 ? charge.review : str19;
        String str70 = (i & 536870912) != 0 ? charge.statementDescriptor : str20;
        String str71 = (i & 1073741824) != 0 ? charge.status : str21;
        String str72 = (i & Integer.MIN_VALUE) != 0 ? charge.transfer : str22;
        String str73 = (i2 & 1) != 0 ? charge.transferGroup : str23;
        String str74 = (i2 & 2) != 0 ? charge.statementDescriptorSuffix : str24;
        String str75 = (i2 & 4) != 0 ? charge.calculatedStatementDescriptor : str25;
        if ((i2 & 8) != 0) {
            str28 = str75;
            str27 = charge.authorizationCode;
            z5 = z11;
            str30 = str64;
            str31 = str65;
            paymentMethodDetails2 = paymentMethodDetails3;
            str32 = str66;
            str33 = str67;
            str34 = str68;
            z6 = z12;
            str35 = str69;
            str36 = str70;
            str37 = str71;
            str38 = str72;
            str39 = str73;
            str40 = str74;
            str41 = str60;
            str42 = str53;
            z7 = z9;
            j5 = j9;
            str43 = str54;
            str44 = str56;
            str45 = str57;
            str46 = str58;
            str47 = str59;
            str48 = str61;
            z8 = z10;
            map2 = map3;
            str49 = str62;
            str29 = str63;
        } else {
            str27 = str26;
            str28 = str75;
            str29 = str63;
            z5 = z11;
            str30 = str64;
            str31 = str65;
            paymentMethodDetails2 = paymentMethodDetails3;
            str32 = str66;
            str33 = str67;
            str34 = str68;
            z6 = z12;
            str35 = str69;
            str36 = str70;
            str37 = str71;
            str38 = str72;
            str39 = str73;
            str40 = str74;
            str41 = str60;
            str42 = str53;
            z7 = z9;
            j5 = j9;
            str43 = str54;
            str44 = str56;
            str45 = str57;
            str46 = str58;
            str47 = str59;
            str48 = str61;
            z8 = z10;
            map2 = map3;
            str49 = str62;
        }
        return charge.copy(str55, j6, j7, str51, str52, j8, str42, z7, j5, str43, str44, str45, str46, str47, str41, str48, z8, map2, str49, str29, z5, str30, str31, paymentMethodDetails2, str32, str33, str34, z6, str35, str36, str37, str38, str39, str40, str28, str27);
    }

    @SerialName("paymentIntent")
    public static /* synthetic */ void getPaymentIntentId$annotations() {
    }

    @SerialName("paymentMethod")
    public static /* synthetic */ void getPaymentMethodId$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getCustomer() {
        return this.customer;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getDispute() {
        return this.dispute;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getFailureCode() {
        return this.failureCode;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getFailureMessage() {
        return this.failureMessage;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getInvoice() {
        return this.invoice;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final boolean getLivemode() {
        return this.livemode;
    }

    public final Map<String, String> component18() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getOnBehalfOf() {
        return this.onBehalfOf;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getOrder() {
        return this.order;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final boolean getPaid() {
        return this.paid;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getPaymentMethodId() {
        return this.paymentMethodId;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final PaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getReceiptEmail() {
        return this.receiptEmail;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getReceiptNumber() {
        return this.receiptNumber;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final String getReceiptUrl() {
        return this.receiptUrl;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final boolean getRefunded() {
        return this.refunded;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final String getReview() {
        return this.review;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getAmountRefunded() {
        return this.amountRefunded;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final String getStatementDescriptor() {
        return this.statementDescriptor;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final String getTransfer() {
        return this.transfer;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final String getTransferGroup() {
        return this.transferGroup;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final String getStatementDescriptorSuffix() {
        return this.statementDescriptorSuffix;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final String getCalculatedStatementDescriptor() {
        return this.calculatedStatementDescriptor;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getApplication() {
        return this.application;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getApplicationFee() {
        return this.applicationFee;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getApplicationFeeAmount() {
        return this.applicationFeeAmount;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getBalanceTransaction() {
        return this.balanceTransaction;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getCaptured() {
        return this.captured;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final long getCreated() {
        return this.created;
    }

    public final Charge copy(String id, long amount, long amountRefunded, String application, String applicationFee, long applicationFeeAmount, String balanceTransaction, boolean captured, long created, String currency, String customer, String description, String dispute, String failureCode, String failureMessage, String invoice, boolean livemode, Map<String, String> metadata, String onBehalfOf, String order, boolean paid, String paymentIntentId, String paymentMethodId, PaymentMethodDetails paymentMethodDetails, String receiptEmail, String receiptNumber, String receiptUrl, boolean refunded, String review, String statementDescriptor, String status, String transfer, String transferGroup, String statementDescriptorSuffix, String calculatedStatementDescriptor, String authorizationCode) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new Charge(id, amount, amountRefunded, application, applicationFee, applicationFeeAmount, balanceTransaction, captured, created, currency, customer, description, dispute, failureCode, failureMessage, invoice, livemode, metadata, onBehalfOf, order, paid, paymentIntentId, paymentMethodId, paymentMethodDetails, receiptEmail, receiptNumber, receiptUrl, refunded, review, statementDescriptor, status, transfer, transferGroup, statementDescriptorSuffix, calculatedStatementDescriptor, authorizationCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Charge)) {
            return false;
        }
        Charge charge = (Charge) other;
        return Intrinsics.areEqual(this.id, charge.id) && this.amount == charge.amount && this.amountRefunded == charge.amountRefunded && Intrinsics.areEqual(this.application, charge.application) && Intrinsics.areEqual(this.applicationFee, charge.applicationFee) && this.applicationFeeAmount == charge.applicationFeeAmount && Intrinsics.areEqual(this.balanceTransaction, charge.balanceTransaction) && this.captured == charge.captured && this.created == charge.created && Intrinsics.areEqual(this.currency, charge.currency) && Intrinsics.areEqual(this.customer, charge.customer) && Intrinsics.areEqual(this.description, charge.description) && Intrinsics.areEqual(this.dispute, charge.dispute) && Intrinsics.areEqual(this.failureCode, charge.failureCode) && Intrinsics.areEqual(this.failureMessage, charge.failureMessage) && Intrinsics.areEqual(this.invoice, charge.invoice) && this.livemode == charge.livemode && Intrinsics.areEqual(this.metadata, charge.metadata) && Intrinsics.areEqual(this.onBehalfOf, charge.onBehalfOf) && Intrinsics.areEqual(this.order, charge.order) && this.paid == charge.paid && Intrinsics.areEqual(this.paymentIntentId, charge.paymentIntentId) && Intrinsics.areEqual(this.paymentMethodId, charge.paymentMethodId) && Intrinsics.areEqual(this.paymentMethodDetails, charge.paymentMethodDetails) && Intrinsics.areEqual(this.receiptEmail, charge.receiptEmail) && Intrinsics.areEqual(this.receiptNumber, charge.receiptNumber) && Intrinsics.areEqual(this.receiptUrl, charge.receiptUrl) && this.refunded == charge.refunded && Intrinsics.areEqual(this.review, charge.review) && Intrinsics.areEqual(this.statementDescriptor, charge.statementDescriptor) && Intrinsics.areEqual(this.status, charge.status) && Intrinsics.areEqual(this.transfer, charge.transfer) && Intrinsics.areEqual(this.transferGroup, charge.transferGroup) && Intrinsics.areEqual(this.statementDescriptorSuffix, charge.statementDescriptorSuffix) && Intrinsics.areEqual(this.calculatedStatementDescriptor, charge.calculatedStatementDescriptor) && Intrinsics.areEqual(this.authorizationCode, charge.authorizationCode);
    }

    public int hashCode() {
        int iHashCode = ((((this.id.hashCode() * 31) + Long.hashCode(this.amount)) * 31) + Long.hashCode(this.amountRefunded)) * 31;
        String str = this.application;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.applicationFee;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + Long.hashCode(this.applicationFeeAmount)) * 31;
        String str3 = this.balanceTransaction;
        int iHashCode4 = (((((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + Boolean.hashCode(this.captured)) * 31) + Long.hashCode(this.created)) * 31;
        String str4 = this.currency;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.customer;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.description;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.dispute;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.failureCode;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.failureMessage;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.invoice;
        int iHashCode11 = (((iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31) + Boolean.hashCode(this.livemode)) * 31;
        Map<String, String> map = this.metadata;
        int iHashCode12 = (iHashCode11 + (map == null ? 0 : map.hashCode())) * 31;
        String str11 = this.onBehalfOf;
        int iHashCode13 = (iHashCode12 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.order;
        int iHashCode14 = (((iHashCode13 + (str12 == null ? 0 : str12.hashCode())) * 31) + Boolean.hashCode(this.paid)) * 31;
        String str13 = this.paymentIntentId;
        int iHashCode15 = (iHashCode14 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.paymentMethodId;
        int iHashCode16 = (iHashCode15 + (str14 == null ? 0 : str14.hashCode())) * 31;
        PaymentMethodDetails paymentMethodDetails = this.paymentMethodDetails;
        int iHashCode17 = (iHashCode16 + (paymentMethodDetails == null ? 0 : paymentMethodDetails.hashCode())) * 31;
        String str15 = this.receiptEmail;
        int iHashCode18 = (iHashCode17 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.receiptNumber;
        int iHashCode19 = (iHashCode18 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.receiptUrl;
        int iHashCode20 = (((iHashCode19 + (str17 == null ? 0 : str17.hashCode())) * 31) + Boolean.hashCode(this.refunded)) * 31;
        String str18 = this.review;
        int iHashCode21 = (iHashCode20 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.statementDescriptor;
        int iHashCode22 = (iHashCode21 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.status;
        int iHashCode23 = (iHashCode22 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.transfer;
        int iHashCode24 = (iHashCode23 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.transferGroup;
        int iHashCode25 = (iHashCode24 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.statementDescriptorSuffix;
        int iHashCode26 = (iHashCode25 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.calculatedStatementDescriptor;
        int iHashCode27 = (iHashCode26 + (str24 == null ? 0 : str24.hashCode())) * 31;
        String str25 = this.authorizationCode;
        return iHashCode27 + (str25 != null ? str25.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Charge(id=");
        sb.append(this.id).append(", amount=").append(this.amount).append(", amountRefunded=").append(this.amountRefunded).append(", application=").append(this.application).append(", applicationFee=").append(this.applicationFee).append(", applicationFeeAmount=").append(this.applicationFeeAmount).append(", balanceTransaction=").append(this.balanceTransaction).append(", captured=").append(this.captured).append(", created=").append(this.created).append(", currency=").append(this.currency).append(", customer=").append(this.customer).append(", description=");
        sb.append(this.description).append(", dispute=").append(this.dispute).append(", failureCode=").append(this.failureCode).append(", failureMessage=").append(this.failureMessage).append(", invoice=").append(this.invoice).append(", livemode=").append(this.livemode).append(", metadata=").append(this.metadata).append(", onBehalfOf=").append(this.onBehalfOf).append(", order=").append(this.order).append(", paid=").append(this.paid).append(", paymentIntentId=").append(this.paymentIntentId).append(", paymentMethodId=").append(this.paymentMethodId);
        sb.append(", paymentMethodDetails=").append(this.paymentMethodDetails).append(", receiptEmail=").append(this.receiptEmail).append(", receiptNumber=").append(this.receiptNumber).append(", receiptUrl=").append(this.receiptUrl).append(", refunded=").append(this.refunded).append(", review=").append(this.review).append(", statementDescriptor=").append(this.statementDescriptor).append(", status=").append(this.status).append(", transfer=").append(this.transfer).append(", transferGroup=").append(this.transferGroup).append(", statementDescriptorSuffix=").append(this.statementDescriptorSuffix).append(", calculatedStatementDescriptor=");
        sb.append(this.calculatedStatementDescriptor).append(", authorizationCode=").append(this.authorizationCode).append(')');
        return sb.toString();
    }

    /* JADX INFO: compiled from: Charge.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Charge$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/stripeterminal/external/models/Charge;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Charge> serializer() {
            return Charge$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Charge(int i, int i2, String str, long j, long j2, String str2, String str3, long j3, String str4, boolean z, long j4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z2, Map map, String str12, String str13, boolean z3, @SerialName("paymentIntent") String str14, @SerialName("paymentMethod") String str15, PaymentMethodDetails paymentMethodDetails, String str16, String str17, String str18, boolean z4, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwArrayMissingFieldException(new int[]{i, i2}, new int[]{1, 0}, Charge$$serializer.INSTANCE.getDescriptor());
        }
        this.id = str;
        if ((i & 2) == 0) {
            this.amount = 0L;
        } else {
            this.amount = j;
        }
        if ((i & 4) == 0) {
            this.amountRefunded = 0L;
        } else {
            this.amountRefunded = j2;
        }
        if ((i & 8) == 0) {
            this.application = null;
        } else {
            this.application = str2;
        }
        if ((i & 16) == 0) {
            this.applicationFee = null;
        } else {
            this.applicationFee = str3;
        }
        if ((i & 32) == 0) {
            this.applicationFeeAmount = 0L;
        } else {
            this.applicationFeeAmount = j3;
        }
        if ((i & 64) == 0) {
            this.balanceTransaction = null;
        } else {
            this.balanceTransaction = str4;
        }
        if ((i & 128) == 0) {
            this.captured = false;
        } else {
            this.captured = z;
        }
        if ((i & 256) == 0) {
            this.created = 0L;
        } else {
            this.created = j4;
        }
        if ((i & 512) == 0) {
            this.currency = null;
        } else {
            this.currency = str5;
        }
        if ((i & 1024) == 0) {
            this.customer = null;
        } else {
            this.customer = str6;
        }
        if ((i & 2048) == 0) {
            this.description = null;
        } else {
            this.description = str7;
        }
        if ((i & 4096) == 0) {
            this.dispute = null;
        } else {
            this.dispute = str8;
        }
        if ((i & 8192) == 0) {
            this.failureCode = null;
        } else {
            this.failureCode = str9;
        }
        if ((i & 16384) == 0) {
            this.failureMessage = null;
        } else {
            this.failureMessage = str10;
        }
        if ((32768 & i) == 0) {
            this.invoice = null;
        } else {
            this.invoice = str11;
        }
        if ((65536 & i) == 0) {
            this.livemode = false;
        } else {
            this.livemode = z2;
        }
        if ((131072 & i) == 0) {
            this.metadata = null;
        } else {
            this.metadata = map;
        }
        if ((262144 & i) == 0) {
            this.onBehalfOf = null;
        } else {
            this.onBehalfOf = str12;
        }
        if ((524288 & i) == 0) {
            this.order = null;
        } else {
            this.order = str13;
        }
        if ((1048576 & i) == 0) {
            this.paid = false;
        } else {
            this.paid = z3;
        }
        if ((2097152 & i) == 0) {
            this.paymentIntentId = null;
        } else {
            this.paymentIntentId = str14;
        }
        if ((4194304 & i) == 0) {
            this.paymentMethodId = null;
        } else {
            this.paymentMethodId = str15;
        }
        if ((8388608 & i) == 0) {
            this.paymentMethodDetails = null;
        } else {
            this.paymentMethodDetails = paymentMethodDetails;
        }
        if ((16777216 & i) == 0) {
            this.receiptEmail = null;
        } else {
            this.receiptEmail = str16;
        }
        if ((33554432 & i) == 0) {
            this.receiptNumber = null;
        } else {
            this.receiptNumber = str17;
        }
        if ((67108864 & i) == 0) {
            this.receiptUrl = null;
        } else {
            this.receiptUrl = str18;
        }
        if ((134217728 & i) == 0) {
            this.refunded = false;
        } else {
            this.refunded = z4;
        }
        if ((268435456 & i) == 0) {
            this.review = null;
        } else {
            this.review = str19;
        }
        if ((536870912 & i) == 0) {
            this.statementDescriptor = null;
        } else {
            this.statementDescriptor = str20;
        }
        if ((1073741824 & i) == 0) {
            this.status = null;
        } else {
            this.status = str21;
        }
        if ((i & Integer.MIN_VALUE) == 0) {
            this.transfer = null;
        } else {
            this.transfer = str22;
        }
        if ((i2 & 1) == 0) {
            this.transferGroup = null;
        } else {
            this.transferGroup = str23;
        }
        if ((i2 & 2) == 0) {
            this.statementDescriptorSuffix = null;
        } else {
            this.statementDescriptorSuffix = str24;
        }
        if ((i2 & 4) == 0) {
            this.calculatedStatementDescriptor = null;
        } else {
            this.calculatedStatementDescriptor = str25;
        }
        if ((i2 & 8) == 0) {
            this.authorizationCode = null;
        } else {
            this.authorizationCode = str26;
        }
    }

    public Charge(String id, long j, long j2, String str, String str2, long j3, String str3, boolean z, long j4, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z2, Map<String, String> map, String str11, String str12, boolean z3, String str13, String str14, PaymentMethodDetails paymentMethodDetails, String str15, String str16, String str17, boolean z4, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.amount = j;
        this.amountRefunded = j2;
        this.application = str;
        this.applicationFee = str2;
        this.applicationFeeAmount = j3;
        this.balanceTransaction = str3;
        this.captured = z;
        this.created = j4;
        this.currency = str4;
        this.customer = str5;
        this.description = str6;
        this.dispute = str7;
        this.failureCode = str8;
        this.failureMessage = str9;
        this.invoice = str10;
        this.livemode = z2;
        this.metadata = map;
        this.onBehalfOf = str11;
        this.order = str12;
        this.paid = z3;
        this.paymentIntentId = str13;
        this.paymentMethodId = str14;
        this.paymentMethodDetails = paymentMethodDetails;
        this.receiptEmail = str15;
        this.receiptNumber = str16;
        this.receiptUrl = str17;
        this.refunded = z4;
        this.review = str18;
        this.statementDescriptor = str19;
        this.status = str20;
        this.transfer = str21;
        this.transferGroup = str22;
        this.statementDescriptorSuffix = str23;
        this.calculatedStatementDescriptor = str24;
        this.authorizationCode = str25;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$public_release(Charge self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeStringElement(serialDesc, 0, self.id);
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.amount != 0) {
            output.encodeLongElement(serialDesc, 1, self.amount);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.amountRefunded != 0) {
            output.encodeLongElement(serialDesc, 2, self.amountRefunded);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.application != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, StringSerializer.INSTANCE, self.application);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.applicationFee != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, StringSerializer.INSTANCE, self.applicationFee);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.applicationFeeAmount != 0) {
            output.encodeLongElement(serialDesc, 5, self.applicationFeeAmount);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.balanceTransaction != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, StringSerializer.INSTANCE, self.balanceTransaction);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.captured) {
            output.encodeBooleanElement(serialDesc, 7, self.captured);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.created != 0) {
            output.encodeLongElement(serialDesc, 8, self.created);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.currency != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, StringSerializer.INSTANCE, self.currency);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.customer != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, StringSerializer.INSTANCE, self.customer);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.description != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, StringSerializer.INSTANCE, self.description);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 12) || self.dispute != null) {
            output.encodeNullableSerializableElement(serialDesc, 12, StringSerializer.INSTANCE, self.dispute);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 13) || self.failureCode != null) {
            output.encodeNullableSerializableElement(serialDesc, 13, StringSerializer.INSTANCE, self.failureCode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 14) || self.failureMessage != null) {
            output.encodeNullableSerializableElement(serialDesc, 14, StringSerializer.INSTANCE, self.failureMessage);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 15) || self.invoice != null) {
            output.encodeNullableSerializableElement(serialDesc, 15, StringSerializer.INSTANCE, self.invoice);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 16) || self.livemode) {
            output.encodeBooleanElement(serialDesc, 16, self.livemode);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 17) || self.metadata != null) {
            output.encodeNullableSerializableElement(serialDesc, 17, kSerializerArr[17], self.metadata);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 18) || self.onBehalfOf != null) {
            output.encodeNullableSerializableElement(serialDesc, 18, StringSerializer.INSTANCE, self.onBehalfOf);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 19) || self.order != null) {
            output.encodeNullableSerializableElement(serialDesc, 19, StringSerializer.INSTANCE, self.order);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 20) || self.paid) {
            output.encodeBooleanElement(serialDesc, 20, self.paid);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 21) || self.paymentIntentId != null) {
            output.encodeNullableSerializableElement(serialDesc, 21, StringSerializer.INSTANCE, self.paymentIntentId);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 22) || self.paymentMethodId != null) {
            output.encodeNullableSerializableElement(serialDesc, 22, StringSerializer.INSTANCE, self.paymentMethodId);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 23) || self.paymentMethodDetails != null) {
            output.encodeNullableSerializableElement(serialDesc, 23, PaymentMethodDetails$$serializer.INSTANCE, self.paymentMethodDetails);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 24) || self.receiptEmail != null) {
            output.encodeNullableSerializableElement(serialDesc, 24, StringSerializer.INSTANCE, self.receiptEmail);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 25) || self.receiptNumber != null) {
            output.encodeNullableSerializableElement(serialDesc, 25, StringSerializer.INSTANCE, self.receiptNumber);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 26) || self.receiptUrl != null) {
            output.encodeNullableSerializableElement(serialDesc, 26, StringSerializer.INSTANCE, self.receiptUrl);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 27) || self.refunded) {
            output.encodeBooleanElement(serialDesc, 27, self.refunded);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 28) || self.review != null) {
            output.encodeNullableSerializableElement(serialDesc, 28, StringSerializer.INSTANCE, self.review);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 29) || self.statementDescriptor != null) {
            output.encodeNullableSerializableElement(serialDesc, 29, StringSerializer.INSTANCE, self.statementDescriptor);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 30) || self.status != null) {
            output.encodeNullableSerializableElement(serialDesc, 30, StringSerializer.INSTANCE, self.status);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 31) || self.transfer != null) {
            output.encodeNullableSerializableElement(serialDesc, 31, StringSerializer.INSTANCE, self.transfer);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 32) || self.transferGroup != null) {
            output.encodeNullableSerializableElement(serialDesc, 32, StringSerializer.INSTANCE, self.transferGroup);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 33) || self.statementDescriptorSuffix != null) {
            output.encodeNullableSerializableElement(serialDesc, 33, StringSerializer.INSTANCE, self.statementDescriptorSuffix);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 34) || self.calculatedStatementDescriptor != null) {
            output.encodeNullableSerializableElement(serialDesc, 34, StringSerializer.INSTANCE, self.calculatedStatementDescriptor);
        }
        if (!output.shouldEncodeElementDefault(serialDesc, 35) && self.authorizationCode == null) {
            return;
        }
        output.encodeNullableSerializableElement(serialDesc, 35, StringSerializer.INSTANCE, self.authorizationCode);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ Charge(String str, long j, long j2, String str2, String str3, long j3, String str4, boolean z, long j4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z2, Map map, String str12, String str13, boolean z3, String str14, String str15, PaymentMethodDetails paymentMethodDetails, String str16, String str17, String str18, boolean z4, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        long j5 = (i & 2) != 0 ? 0L : j;
        long j6 = (i & 4) != 0 ? 0L : j2;
        String str27 = (i & 8) != 0 ? null : str2;
        String str28 = (i & 16) != 0 ? null : str3;
        long j7 = (i & 32) != 0 ? 0L : j3;
        String str29 = (i & 64) != 0 ? null : str4;
        boolean z5 = (i & 128) != 0 ? false : z;
        long j8 = (i & 256) == 0 ? j4 : 0L;
        String str30 = (i & 512) != 0 ? null : str5;
        String str31 = (i & 1024) != 0 ? null : str6;
        String str32 = (i & 2048) != 0 ? null : str7;
        this(str, j5, j6, str27, str28, j7, str29, z5, j8, str30, str31, str32, (i & 4096) != 0 ? null : str8, (i & 8192) != 0 ? null : str9, (i & 16384) != 0 ? null : str10, (i & 32768) != 0 ? null : str11, (i & 65536) != 0 ? false : z2, (i & 131072) != 0 ? null : map, (i & 262144) != 0 ? null : str12, (i & 524288) != 0 ? null : str13, (i & 1048576) != 0 ? false : z3, (i & 2097152) != 0 ? null : str14, (i & 4194304) != 0 ? null : str15, (i & 8388608) != 0 ? null : paymentMethodDetails, (i & 16777216) != 0 ? null : str16, (i & 33554432) != 0 ? null : str17, (i & 67108864) != 0 ? null : str18, (i & 134217728) != 0 ? false : z4, (i & 268435456) != 0 ? null : str19, (i & 536870912) != 0 ? null : str20, (i & 1073741824) != 0 ? null : str21, (i & Integer.MIN_VALUE) != 0 ? null : str22, (i2 & 1) != 0 ? null : str23, (i2 & 2) != 0 ? null : str24, (i2 & 4) != 0 ? null : str25, (i2 & 8) != 0 ? null : str26);
    }

    public final String getId() {
        return this.id;
    }

    public final long getAmount() {
        return this.amount;
    }

    public final long getAmountRefunded() {
        return this.amountRefunded;
    }

    public final String getApplication() {
        return this.application;
    }

    public final String getApplicationFee() {
        return this.applicationFee;
    }

    public final long getApplicationFeeAmount() {
        return this.applicationFeeAmount;
    }

    public final String getBalanceTransaction() {
        return this.balanceTransaction;
    }

    public final boolean getCaptured() {
        return this.captured;
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

    public final String getDispute() {
        return this.dispute;
    }

    public final String getFailureCode() {
        return this.failureCode;
    }

    public final String getFailureMessage() {
        return this.failureMessage;
    }

    public final String getInvoice() {
        return this.invoice;
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

    public final String getOrder() {
        return this.order;
    }

    public final boolean getPaid() {
        return this.paid;
    }

    public final String getPaymentIntentId() {
        return this.paymentIntentId;
    }

    public final String getPaymentMethodId() {
        return this.paymentMethodId;
    }

    public final PaymentMethodDetails getPaymentMethodDetails() {
        return this.paymentMethodDetails;
    }

    public final String getReceiptEmail() {
        return this.receiptEmail;
    }

    public final String getReceiptNumber() {
        return this.receiptNumber;
    }

    public final String getReceiptUrl() {
        return this.receiptUrl;
    }

    public final boolean getRefunded() {
        return this.refunded;
    }

    public final String getReview() {
        return this.review;
    }

    public final String getStatementDescriptor() {
        return this.statementDescriptor;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getTransfer() {
        return this.transfer;
    }

    public final String getTransferGroup() {
        return this.transferGroup;
    }

    public final String getStatementDescriptorSuffix() {
        return this.statementDescriptorSuffix;
    }

    public final String getCalculatedStatementDescriptor() {
        return this.calculatedStatementDescriptor;
    }

    public final String getAuthorizationCode() {
        return this.authorizationCode;
    }
}
