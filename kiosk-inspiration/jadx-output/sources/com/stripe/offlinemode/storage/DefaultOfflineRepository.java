package com.stripe.offlinemode.storage;

import android.database.SQLException;
import android.database.sqlite.SQLiteFullException;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.view.InputDeviceCompat;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.google.android.gms.common.internal.ImagesContract;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore;
import com.stripe.offlinemode.cipher.OfflineAccountConfigCipher;
import com.stripe.offlinemode.cipher.OfflineApiRequestCipher;
import com.stripe.offlinemode.cipher.OfflineConnectionCipher;
import com.stripe.offlinemode.cipher.OfflineDataMismatchException;
import com.stripe.offlinemode.cipher.OfflineDecryptionException;
import com.stripe.offlinemode.cipher.OfflineLocationCipher;
import com.stripe.offlinemode.cipher.OfflineReaderCipher;
import com.stripe.offlinemode.helpers.OfflineRequestHelper;
import com.stripe.offlinemode.log.OfflineMetricTags;
import com.stripe.offlinemode.models.OfflineForwardingRequest;
import com.stripe.offlinemode.models.OfflineRequestsToSync;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.time.Clock;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: DefaultOfflineRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ê\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 µ\u00012\u00020\u0001:\u0004µ\u0001¶\u0001B©\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\"\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0\u001fj\u0002`$\u0012\u000e\u0010%\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030&¢\u0006\u0002\u0010'J\u000e\u00106\u001a\b\u0012\u0004\u0012\u00020807H\u0016J\b\u0010Z\u001a\u00020[H\u0016J\u0016\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020^H\u0096@¢\u0006\u0002\u0010_J\u0016\u0010`\u001a\u00020[2\u0006\u0010a\u001a\u000200H\u0096@¢\u0006\u0002\u0010bJ\u0016\u0010c\u001a\b\u0012\u0004\u0012\u00020d0G2\u0006\u0010a\u001a\u000200H\u0016J\u001a\u0010e\u001a\u0004\u0018\u00010f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0002J\u001c\u0010k\u001a\b\u0012\u0004\u0012\u00020l0L2\u0006\u0010a\u001a\u000200H\u0096@¢\u0006\u0002\u0010bJ\n\u0010m\u001a\u0004\u0018\u00010MH\u0016J\u0012\u0010,\u001a\u00020)2\b\u0010a\u001a\u0004\u0018\u000100H\u0002J\u0010\u0010n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010007H\u0016J\u001e\u0010o\u001a\b\u0012\u0004\u0012\u0002080L2\b\u0010p\u001a\u0004\u0018\u000109H\u0082@¢\u0006\u0002\u0010qJ\u0010\u0010r\u001a\u00020f2\u0006\u0010s\u001a\u000200H\u0016J\u0010\u0010t\u001a\u00020j2\u0006\u0010u\u001a\u000209H\u0016J\u001e\u0010v\u001a\u00020l2\u0006\u0010w\u001a\u00020H2\u0006\u0010x\u001a\u000209H\u0082@¢\u0006\u0002\u0010yJ,\u0010z\u001a\u0016\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020j\u0012\u0004\u0012\u00020f\u0018\u00010{2\u0006\u0010|\u001a\u00020d2\u0006\u0010a\u001a\u000200H\u0016J\u0012\u0010}\u001a\u0004\u0018\u00010f2\u0006\u0010~\u001a\u000200H\u0016J\u0012\u0010\u007f\u001a\u0004\u0018\u00010f2\u0006\u0010i\u001a\u00020jH\u0016J \u0010\u0080\u0001\u001a\u00020f2\u0006\u0010s\u001a\u0002002\u0006\u0010a\u001a\u000200H\u0082@¢\u0006\u0003\u0010\u0081\u0001J\u0018\u0010\u0082\u0001\u001a\u00020M2\r\u0010\u0083\u0001\u001a\b\u0012\u0004\u0012\u00020H0GH\u0002J.\u0010\u0084\u0001\u001a\u0010\u0012\u0004\u0012\u000200\u0012\u0005\u0012\u00030\u0086\u00010\u0085\u00012\u0006\u0010a\u001a\u0002002\r\u0010\u0087\u0001\u001a\b\u0012\u0004\u0012\u0002000GH\u0016J%\u0010\u0088\u0001\u001a\u000f\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u0002090\u0085\u00012\r\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020H0GH\u0002J\u0013\u0010\u008a\u0001\u001a\u0002082\b\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002J\u0013\u0010\u008a\u0001\u001a\u0002082\b\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J%\u0010\u008f\u0001\u001a\u0002082\t\u0010\u0090\u0001\u001a\u0004\u0018\u0001002\u0007\u0010\u0091\u0001\u001a\u0002002\u0006\u0010a\u001a\u000200H\u0016J\u001c\u0010\u0092\u0001\u001a\u00020[2\b\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u000200H\u0002J\u001d\u0010\u0096\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020j0G0L2\u0006\u0010a\u001a\u000200H\u0016J\u001d\u0010\u0097\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020f0G0L2\u0006\u0010a\u001a\u000200H\u0016J\u0018\u0010\u0098\u0001\u001a\t\u0012\u0005\u0012\u00030\u0099\u00010L2\u0006\u0010a\u001a\u000200H\u0016J\u001d\u0010\u009a\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020h0G0L2\u0006\u0010a\u001a\u000200H\u0016J\u0011\u0010\u009b\u0001\u001a\u00020[2\u0006\u0010a\u001a\u000200H\u0016J\u0012\u0010\u009c\u0001\u001a\u00020[2\u0007\u0010\u009d\u0001\u001a\u00020^H\u0016J\"\u0010\u009e\u0001\u001a\u0002092\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020j2\u0007\u0010\u009f\u0001\u001a\u00020fH\u0017J\u0019\u0010 \u0001\u001a\u00030¡\u00012\u0007\u0010¢\u0001\u001a\u00020^H\u0096@¢\u0006\u0002\u0010_J#\u0010£\u0001\u001a\u00020[2\b\u0010¤\u0001\u001a\u00030¥\u00012\u0007\u0010¦\u0001\u001a\u00020^H\u0097@¢\u0006\u0003\u0010§\u0001J\"\u0010¨\u0001\u001a\u00020[2\u0006\u0010~\u001a\u0002002\b\u0010©\u0001\u001a\u00030ª\u0001H\u0096@¢\u0006\u0003\u0010«\u0001JF\u0010¬\u0001\u001a\u0003H\u00ad\u0001\"\u0007\b\u0000\u0010\u00ad\u0001\u0018\u00012\u0007\u0010\u0095\u0001\u001a\u0002002\u0010\b\u0002\u0010®\u0001\u001a\t\u0012\u0004\u0012\u00020[0¯\u00012\u000f\u0010°\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00ad\u00010¯\u0001H\u0082\b¢\u0006\u0003\u0010±\u0001J\u0014\u0010²\u0001\u001a\u000208*\u00020HH\u0082@¢\u0006\u0003\u0010³\u0001J\u0013\u0010´\u0001\u001a\u000208*\u00020^H\u0082@¢\u0006\u0002\u0010_R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010+\u001a\u00020)2\u0006\u0010*\u001a\u00020)8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00101\u001a\u0002002\u0006\u0010*\u001a\u0002008V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0014\u00106\u001a\b\u0012\u0004\u0012\u00020807X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010:\u001a\u0002092\u0006\u0010*\u001a\u0002098V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010?\u001a\u000208X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR*\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0\u001fj\u0002`$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010D\u001a\u000208X\u0096D¢\u0006\b\n\u0000\u001a\u0004\bD\u0010AR\u0016\u0010%\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030&X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010E\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020H0G0FX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090JX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010K\u001a\b\u0012\u0004\u0012\u00020M0L8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u0010OR\u0010\u0010P\u001a\u0004\u0018\u00010QX\u0082\u000e¢\u0006\u0002\n\u0000R!\u0010R\u001a\b\u0012\u0004\u0012\u00020)078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010V\u001a\u0004\bS\u0010TR'\u0010W\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020H0G078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010V\u001a\u0004\bX\u0010T¨\u0006·\u0001"}, d2 = {"Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "offlineReaderDao", "Lcom/stripe/offlinemode/storage/OfflineReaderDao;", "offlineConnectionDao", "Lcom/stripe/offlinemode/storage/OfflineConnectionDao;", "offlineLocationDao", "Lcom/stripe/offlinemode/storage/OfflineLocationDao;", "offlineApiRequestDao", "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;", "offlineAccountConfigDao", "Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;", "offlineReaderCipher", "Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;", "offlineConnectionCipher", "Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;", "offlineLocationCipher", "Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;", "offlineApiRequestCipher", "Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;", "offlineAccountConfigCipher", "Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;", "offlineRequestHelper", "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "offlineKeyValueStore", "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;", "clock", "Lcom/stripe/time/Clock;", "discreteLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;", "logger", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "(Lcom/stripe/offlinemode/storage/OfflineReaderDao;Lcom/stripe/offlinemode/storage/OfflineConnectionDao;Lcom/stripe/offlinemode/storage/OfflineLocationDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V", "_accountOfflineConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "value", "accountOfflineConfig", "getAccountOfflineConfig", "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;", "setAccountOfflineConfig", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V", "", "activeAccountId", "getActiveAccountId", "()Ljava/lang/String;", "setActiveAccountId", "(Ljava/lang/String;)V", "activeReaderOfflineEnabledFlow", "Lkotlinx/coroutines/flow/StateFlow;", "", "", "currentConnectionId", "getCurrentConnectionId", "()J", "setCurrentConnectionId", "(J)V", "currentConnectionSupportsOfflineSetupIntents", "getCurrentConnectionSupportsOfflineSetupIntents", "()Z", "setCurrentConnectionSupportsOfflineSetupIntents", "(Z)V", "isSupported", "manuallyFetchedUnprocessedOfflinePaymentsFlow", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;", "offlineConnectionIdFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "offlineRequestStatsFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/offlinemode/storage/OfflineEntityStats;", "getOfflineRequestStatsFlow", "()Lkotlinx/coroutines/flow/Flow;", "saveAccountOfflineConfigJob", "Lkotlinx/coroutines/Job;", "savedAccountOfflineConfigFlow", "getSavedAccountOfflineConfigFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "savedAccountOfflineConfigFlow$delegate", "Lkotlin/Lazy;", "unprocessedApiRequestsFlow", "getUnprocessedApiRequestsFlow", "unprocessedApiRequestsFlow$delegate", "clearCache", "", "delete", "toDelete", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteExpiredEntities", "accountId", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "discoverOfflineReaderList", "Lcom/stripe/stripeterminal/external/models/Reader;", "extractEmbeddedOfflineLocation", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "offlineReader", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "offlineConnection", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "fetchNextToForward", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;", "forceBlockingUpdateOfflinePaymentStats", "getActiveAccountFlow", "getActiveReaderOfflineEnabledFlow", "offlineConnectionId", "(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLatestOfflineLocationForReader", "serialNumber", "getOfflineConnection", "connectionId", "getOfflineConnectionAndReaderForPaymentRequest", "offlinePIREntity", "mostRecentRowId", "(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getOfflineConnectionEntitiesIfSaved", "Lkotlin/Triple;", OfflineStorageConstantsKt.READER, "getOfflineLocationByStripeId", "stripeLocationId", "getOfflineLocationForConnection", "getOfflineLocationForReader", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getOfflineRequestStats", "offlineApiRequests", "getSavedLocationsMap", "", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "serials", "groupOfflinePaymentAmountsByCurrency", "offlinePaymentRequests", "isExpired", "offlineLocationEntity", "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;", "offlineReaderEntity", "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;", "isOfflineEnabledForLocationAndReader", "locationId", "readerSerial", "logError", "error", "", "errorMessage", "offlineConnections", "offlineLocations", "offlinePaymentRequestsToSync", "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;", "offlineReaders", "restoreSoftDeletedPayments", "saveOfflineApiRequest", "offlineApiRequest", "saveOfflineConnectionEntities", "offlineLocation", "softDelete", "", "toSoftDelete", "updateOfflineConfirmRequestWithOnlineEntity", "forwardedEntity", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;", "createRequest", "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateOfflineLocationWithConfig", "config", "Lcom/stripe/device/OfflineLocationConfigs;", "(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "wrapErrorsAsTerminalException", "T", "doFinally", "Lkotlin/Function0;", "block", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "hasMoreRelatedRequests", "(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "validatePendingCreateRequirement", "Companion", "ForwardedEntityDetails", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineRepository implements OfflineRepository {
    private static final String SIMULATED_READER_SERIAL_NUMBER_SUFFIX = "SIMULATOR";
    private OfflineConfigPb.AccountOfflineConfigPb _accountOfflineConfig;
    private final StateFlow<Boolean> activeReaderOfflineEnabledFlow;
    private final Clock clock;
    private boolean currentConnectionSupportsOfflineSetupIntents;
    private final HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger;
    private final CoroutineDispatcher dispatcher;
    private final boolean isSupported;
    private final Logger<?, ?> logger;
    private final MutableSharedFlow<List<OfflineApiRequestEntity>> manuallyFetchedUnprocessedOfflinePaymentsFlow;
    private final OfflineAccountConfigCipher offlineAccountConfigCipher;
    private final OfflineAccountConfigDao offlineAccountConfigDao;
    private final OfflineApiRequestCipher offlineApiRequestCipher;
    private final OfflineApiRequestDao offlineApiRequestDao;
    private final OfflineConnectionCipher offlineConnectionCipher;
    private final OfflineConnectionDao offlineConnectionDao;
    private final MutableStateFlow<Long> offlineConnectionIdFlow;
    private final OfflineKeyValueStore offlineKeyValueStore;
    private final OfflineLocationCipher offlineLocationCipher;
    private final OfflineLocationDao offlineLocationDao;
    private final OfflineReaderCipher offlineReaderCipher;
    private final OfflineReaderDao offlineReaderDao;
    private final OfflineRequestHelper offlineRequestHelper;
    private Job saveAccountOfflineConfigJob;

    /* JADX INFO: renamed from: savedAccountOfflineConfigFlow$delegate, reason: from kotlin metadata */
    private final Lazy savedAccountOfflineConfigFlow;

    /* JADX INFO: renamed from: unprocessedApiRequestsFlow$delegate, reason: from kotlin metadata */
    private final Lazy unprocessedApiRequestsFlow;

    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OfflineApiRequest.ApiRequestType.values().length];
            try {
                iArr[OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$delete$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0, 0}, l = {WinError.ERROR_UNEXPECTED_MM_MAP_ERROR}, m = "delete", n = {"this", "errorMessage$iv"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.delete(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$deleteExpiredEntities$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 3, 3}, l = {877, 887, 889, 892}, m = "deleteExpiredEntities", n = {"this", "accountId", "errorMessage$iv", "this", "accountId", "errorMessage$iv", "$this$deleteExpiredEntities_u24lambda_u2467_u24lambda_u2466", "this", "accountId", "errorMessage$iv", "this", "errorMessage$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$4", "L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class C03111 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        C03111(Continuation<? super C03111> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.deleteExpiredEntities(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0}, l = {TypedValues.Custom.TYPE_REFERENCE}, m = "getActiveReaderOfflineEnabledFlow", n = {"this"}, s = {"L$0"})
    static final class C03121 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03121(Continuation<? super C03121> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.getActiveReaderOfflineEnabledFlow(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3}, l = {WinError.ERROR_INVALID_DEVICE_OBJECT_PARAMETER, WinError.ERROR_HIBERNATION_FAILURE, 660, WinError.ERROR_EXTRANEOUS_INFORMATION}, m = "getOfflineConnectionAndReaderForPaymentRequest", n = {"this", "offlinePIREntity", "errorMessage$iv", "entityId", "mostRecentRowId", "this", "offlinePIREntity", "errorMessage$iv", "entityId", "offlineConnection", "mostRecentRowId", "this", "offlinePIREntity", "errorMessage$iv", "entityId", "offlineReader", "offlineConnection", "mostRecentRowId", "this", "offlinePIREntity", "errorMessage$iv", "mostRecentRowId"}, s = {"L$0", "L$1", "L$2", "L$3", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "J$0", "L$0", "L$1", "L$2", "J$0"})
    static final class C03141 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        C03141(Continuation<? super C03141> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.getOfflineConnectionAndReaderForPaymentRequest(null, 0L, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$getOfflineLocationForReader$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0, 0, 1, 1, 2, 2}, l = {930, 936, 942}, m = "getOfflineLocationForReader", n = {"this", "serialNumber", "this", "serialNumber", "this", "serialNumber"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    static final class C03151 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03151(Continuation<? super C03151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.getOfflineLocationForReader(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$softDelete$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0, 0}, l = {WinError.ERROR_IO_PRIVILEGE_FAILED}, m = "softDelete", n = {"this", "errorMessage$iv"}, s = {"L$0", "L$1"})
    static final class C03171 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03171(Continuation<? super C03171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.softDelete(null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1}, l = {WinError.ERROR_REGISTRY_QUOTA_LIMIT, WinError.ERROR_SYSTEM_IMAGE_BAD_SIGNATURE, WinError.ERROR_VDM_HARD_ERROR, WinError.ERROR_VDM_HARD_ERROR}, m = "updateOfflineConfirmRequestWithOnlineEntity", n = {"this", "createRequest", "this_$iv", "errorMessage$iv", "entityId", "clientSecret", ImagesContract.URL, "this", "createRequest", "this_$iv", "errorMessage$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3"})
    static final class C03181 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        C03181(Continuation<? super C03181> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.updateOfflineConfirmRequestWithOnlineEntity(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$updateOfflineLocationWithConfig$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {0, 0, 0, 0, 1, 1}, l = {WinError.ERROR_DBG_TERMINATE_THREAD, WinError.ERROR_FATAL_APP_EXIT}, m = "updateOfflineLocationWithConfig", n = {"this", "stripeLocationId", "config", "errorMessage", "this", "errorMessage"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1"})
    static final class C03191 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C03191(Continuation<? super C03191> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.updateOfflineLocationWithConfig(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$validatePendingCreateRequirement$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository", f = "DefaultOfflineRepository.kt", i = {}, l = {989}, m = "validatePendingCreateRequirement", n = {}, s = {})
    static final class C03201 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03201(Continuation<? super C03201> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DefaultOfflineRepository.this.validatePendingCreateRequirement(null, this);
        }
    }

    public DefaultOfflineRepository(OfflineReaderDao offlineReaderDao, OfflineConnectionDao offlineConnectionDao, OfflineLocationDao offlineLocationDao, OfflineApiRequestDao offlineApiRequestDao, OfflineAccountConfigDao offlineAccountConfigDao, OfflineReaderCipher offlineReaderCipher, OfflineConnectionCipher offlineConnectionCipher, OfflineLocationCipher offlineLocationCipher, OfflineApiRequestCipher offlineApiRequestCipher, OfflineAccountConfigCipher offlineAccountConfigCipher, OfflineRequestHelper offlineRequestHelper, CoroutineDispatcher dispatcher, OfflineKeyValueStore offlineKeyValueStore, Clock clock, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, Logger<?, ?> logger) {
        Intrinsics.checkNotNullParameter(offlineReaderDao, "offlineReaderDao");
        Intrinsics.checkNotNullParameter(offlineConnectionDao, "offlineConnectionDao");
        Intrinsics.checkNotNullParameter(offlineLocationDao, "offlineLocationDao");
        Intrinsics.checkNotNullParameter(offlineApiRequestDao, "offlineApiRequestDao");
        Intrinsics.checkNotNullParameter(offlineAccountConfigDao, "offlineAccountConfigDao");
        Intrinsics.checkNotNullParameter(offlineReaderCipher, "offlineReaderCipher");
        Intrinsics.checkNotNullParameter(offlineConnectionCipher, "offlineConnectionCipher");
        Intrinsics.checkNotNullParameter(offlineLocationCipher, "offlineLocationCipher");
        Intrinsics.checkNotNullParameter(offlineApiRequestCipher, "offlineApiRequestCipher");
        Intrinsics.checkNotNullParameter(offlineAccountConfigCipher, "offlineAccountConfigCipher");
        Intrinsics.checkNotNullParameter(offlineRequestHelper, "offlineRequestHelper");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(offlineKeyValueStore, "offlineKeyValueStore");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(discreteLogger, "discreteLogger");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.offlineReaderDao = offlineReaderDao;
        this.offlineConnectionDao = offlineConnectionDao;
        this.offlineLocationDao = offlineLocationDao;
        this.offlineApiRequestDao = offlineApiRequestDao;
        this.offlineAccountConfigDao = offlineAccountConfigDao;
        this.offlineReaderCipher = offlineReaderCipher;
        this.offlineConnectionCipher = offlineConnectionCipher;
        this.offlineLocationCipher = offlineLocationCipher;
        this.offlineApiRequestCipher = offlineApiRequestCipher;
        this.offlineAccountConfigCipher = offlineAccountConfigCipher;
        this.offlineRequestHelper = offlineRequestHelper;
        this.dispatcher = dispatcher;
        this.offlineKeyValueStore = offlineKeyValueStore;
        this.clock = clock;
        this.discreteLogger = discreteLogger;
        this.logger = logger;
        MutableStateFlow<Long> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this.offlineConnectionIdFlow = MutableStateFlow;
        this.activeReaderOfflineEnabledFlow = FlowKt.stateIn(FlowKt.transformLatest(MutableStateFlow, new DefaultOfflineRepository$special$$inlined$flatMapLatest$1(null, this)), CoroutineScopeKt.CoroutineScope(dispatcher), SharingStarted.INSTANCE.getEagerly(), false);
        this.manuallyFetchedUnprocessedOfflinePaymentsFlow = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 6, null);
        this.unprocessedApiRequestsFlow = LazyKt.lazy(new Function0<StateFlow<? extends List<? extends OfflineApiRequestEntity>>>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$unprocessedApiRequestsFlow$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final StateFlow<? extends List<? extends OfflineApiRequestEntity>> invoke() {
                return FlowKt.stateIn(FlowKt__ErrorsKt.retry$default(FlowKt.m2361catch(FlowKt.transformLatest(this.this$0.getActiveAccountFlow(), new DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1(null, this.this$0)), new AnonymousClass2(this.this$0, null)), 0L, null, 3, null), CoroutineScopeKt.CoroutineScope(this.this$0.dispatcher), SharingStarted.INSTANCE.getEagerly(), CollectionsKt.emptyList());
            }

            /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$unprocessedApiRequestsFlow$2$2, reason: invalid class name */
            /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;", NotificationCompat.CATEGORY_ERROR, ""}, k = 3, mv = {1, 9, 0}, xi = 48)
            @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$unprocessedApiRequestsFlow$2$2", f = "DefaultOfflineRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<? super List<? extends OfflineApiRequestEntity>>, Throwable, Continuation<? super Unit>, Object> {
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ DefaultOfflineRepository this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(DefaultOfflineRepository defaultOfflineRepository, Continuation<? super AnonymousClass2> continuation) {
                    super(3, continuation);
                    this.this$0 = defaultOfflineRepository;
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends OfflineApiRequestEntity>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
                    return invoke2((FlowCollector<? super List<OfflineApiRequestEntity>>) flowCollector, th, continuation);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final Object invoke2(FlowCollector<? super List<OfflineApiRequestEntity>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
                    anonymousClass2.L$0 = th;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    Throwable th = (Throwable) this.L$0;
                    this.this$0.logError(th, "Failed to get stored offline payments");
                    throw th;
                }
            }
        });
        this.isSupported = true;
        this.savedAccountOfflineConfigFlow = LazyKt.lazy(new Function0<StateFlow<? extends OfflineConfigPb.AccountOfflineConfigPb>>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$savedAccountOfflineConfigFlow$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final StateFlow<? extends OfflineConfigPb.AccountOfflineConfigPb> invoke() {
                Flow flowTransformLatest = FlowKt.transformLatest(this.this$0.getActiveAccountFlow(), new DefaultOfflineRepository$savedAccountOfflineConfigFlow$2$invoke$$inlined$flatMapLatest$1(null, this.this$0));
                CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(this.this$0.dispatcher);
                SharingStarted eagerly = SharingStarted.INSTANCE.getEagerly();
                DefaultOfflineRepository defaultOfflineRepository = this.this$0;
                return FlowKt.stateIn(flowTransformLatest, CoroutineScope, eagerly, defaultOfflineRepository.getAccountOfflineConfig(defaultOfflineRepository.offlineKeyValueStore.getAccountId()));
            }
        });
    }

    private final StateFlow<List<OfflineApiRequestEntity>> getUnprocessedApiRequestsFlow() {
        return (StateFlow) this.unprocessedApiRequestsFlow.getValue();
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /* JADX INFO: renamed from: isSupported, reason: from getter */
    public boolean getIsSupported() {
        return this.isSupported;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public boolean getCurrentConnectionSupportsOfflineSetupIntents() {
        return this.currentConnectionSupportsOfflineSetupIntents;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setCurrentConnectionSupportsOfflineSetupIntents(boolean z) {
        this.currentConnectionSupportsOfflineSetupIntents = z;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public String getActiveAccountId() throws TerminalException {
        String value = this.offlineKeyValueStore.getSavedAccountIdStateFlow().getValue();
        if (value != null) {
            return value;
        }
        throw new TerminalException(TerminalErrorCode.NO_LAST_SEEN_ACCOUNT, "Account id must not be null, connect to reader while online.", null, null, 12, null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setActiveAccountId(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.offlineKeyValueStore.saveAccountId(value);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public long getCurrentConnectionId() throws IllegalAccessException, InstantiationException, TerminalException {
        try {
            Long value = this.offlineConnectionIdFlow.getValue();
            if (value != null) {
                return value.longValue();
            }
            throw new IllegalStateException("Connection id is null".toString());
        } catch (Throwable th) {
            logError(th, "Missing connection id");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Missing connection id", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setCurrentConnectionId(long j) {
        this.offlineConnectionIdFlow.setValue(Long.valueOf(j));
    }

    private final StateFlow<OfflineConfigPb.AccountOfflineConfigPb> getSavedAccountOfflineConfigFlow() {
        return (StateFlow) this.savedAccountOfflineConfigFlow.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OfflineConfigPb.AccountOfflineConfigPb getAccountOfflineConfig(String accountId) throws IllegalAccessException, InstantiationException {
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb;
        try {
            if (accountId == null) {
                return new OfflineConfigPb.AccountOfflineConfigPb(0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, null, null, null, null, 0, false, null, null, false, false, null, false, null, 134217727, null);
            }
            OfflineAccountConfigEntity forAccountId = this.offlineAccountConfigDao.getForAccountId(accountId);
            if (forAccountId != null && (accountOfflineConfigPb = this.offlineAccountConfigCipher.decrypt(forAccountId).account_offline_config) != null) {
                return accountOfflineConfigPb;
            }
            return new OfflineConfigPb.AccountOfflineConfigPb(0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, null, null, null, null, 0, false, null, null, false, false, null, false, null, 134217727, null);
        } catch (Throwable th) {
            logError(th, "Failed to get stored offline account config");
            return new OfflineConfigPb.AccountOfflineConfigPb(0, null, 0, 0, 0, 0, null, false, false, null, null, false, null, null, null, null, null, null, 0, false, null, null, false, false, null, false, null, 134217727, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineConfigPb.AccountOfflineConfigPb getAccountOfflineConfig() {
        OfflineConfigPb.AccountOfflineConfigPb accountOfflineConfigPb = this._accountOfflineConfig;
        return accountOfflineConfigPb == null ? getSavedAccountOfflineConfigFlow().getValue() : accountOfflineConfigPb;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void setAccountOfflineConfig(OfflineConfigPb.AccountOfflineConfigPb value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this._accountOfflineConfig = value;
        Job job = this.saveAccountOfflineConfigJob;
        if (job != null && job.isActive()) {
            JobKt__JobKt.cancel$default(job, "Received new account offline config. Canceling previously queued write to DB.", null, 2, null);
        }
        new MutablePropertyReference0Impl(this) { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$accountOfflineConfig$4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return ((DefaultOfflineRepository) this.receiver).saveAccountOfflineConfigJob;
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ((DefaultOfflineRepository) this.receiver).saveAccountOfflineConfigJob = (Job) obj;
            }
        }.set(BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.dispatcher), null, null, new DefaultOfflineRepository$accountOfflineConfig$2(this, value, null), 3, null));
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<OfflineEntityStats> getOfflineRequestStatsFlow() {
        final StateFlow<List<OfflineApiRequestEntity>> unprocessedApiRequestsFlow = getUnprocessedApiRequestsFlow();
        return FlowKt.m2361catch(new Flow<OfflineEntityStats>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1

            /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;
                final /* synthetic */ DefaultOfflineRepository this$0;

                /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1$2", f = "DefaultOfflineRepository.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, DefaultOfflineRepository defaultOfflineRepository) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = defaultOfflineRepository;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.stripeterminal.external.models.TerminalException {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1$2$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1$2$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4b
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        java.util.List r5 = (java.util.List) r5
                        com.stripe.offlinemode.storage.DefaultOfflineRepository r2 = r4.this$0
                        com.stripe.offlinemode.storage.OfflineEntityStats r5 = com.stripe.offlinemode.storage.DefaultOfflineRepository.access$getOfflineRequestStats(r2, r5)
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4b
                        return r1
                    L4b:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super OfflineEntityStats> flowCollector, Continuation continuation) {
                Object objCollect = unprocessedApiRequestsFlow.collect(new AnonymousClass2(flowCollector, this), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        }, new DefaultOfflineRepository$offlineRequestStatsFlow$2(this, null));
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void clearCache() {
        this._accountOfflineConfig = null;
        this.offlineKeyValueStore.clear();
        this.offlineConnectionIdFlow.setValue(null);
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public StateFlow<String> getActiveAccountFlow() {
        return this.offlineKeyValueStore.getSavedAccountIdStateFlow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OfflineEntityStats getOfflineRequestStats(List<OfflineApiRequestEntity> offlineApiRequests) throws IllegalAccessException, InstantiationException, TerminalException {
        List<OfflineApiRequestEntity> list = offlineApiRequests;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((OfflineApiRequestEntity) obj).getType() == OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        Map<String, Long> mapGroupOfflinePaymentAmountsByCurrency = groupOfflinePaymentAmountsByCurrency(arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : list) {
            if (((OfflineApiRequestEntity) obj2).getType() == OfflineApiRequest.ApiRequestType.CONFIRM_SETUP_INTENT) {
                arrayList3.add(obj2);
            }
        }
        return new OfflineEntityStats(arrayList3.size(), arrayList2.size(), mapGroupOfflinePaymentAmountsByCurrency);
    }

    private final Map<String, Long> groupOfflinePaymentAmountsByCurrency(List<OfflineApiRequestEntity> offlinePaymentRequests) throws IllegalAccessException, InstantiationException, TerminalException {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = offlinePaymentRequests.iterator();
            while (it.hasNext()) {
                PaymentIntent paymentIntent = this.offlineApiRequestCipher.decrypt((OfflineApiRequestEntity) it.next()).payment_intent;
                if (paymentIntent != null) {
                    arrayList.add(paymentIntent);
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : arrayList) {
                String str = ((PaymentIntent) obj).currency;
                if (str == null) {
                    throw new IllegalStateException("Payment intent must have a currency".toString());
                }
                Object obj2 = linkedHashMap.get(str);
                if (obj2 == null) {
                    obj2 = (List) new ArrayList();
                    linkedHashMap.put(str, obj2);
                }
                List list = (List) obj2;
                Long l = ((PaymentIntent) obj).amount;
                if (l == null) {
                    throw new IllegalStateException("Payment intent must have an amount".toString());
                }
                list.add(Long.valueOf(l.longValue()));
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.mapCapacity(linkedHashMap.size()));
            for (Object obj3 : linkedHashMap.entrySet()) {
                linkedHashMap2.put(((Map.Entry) obj3).getKey(), Long.valueOf(CollectionsKt.sumOfLong((List) ((Map.Entry) obj3).getValue())));
            }
            return linkedHashMap2;
        } catch (Throwable th) {
            logError(th, "Failed to fetch offline payments by currency");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch offline payments by currency", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public long saveOfflineConnectionEntities(OfflineReader offlineReader, OfflineConnection offlineConnection, OfflineLocation offlineLocation) throws Throwable {
        Intrinsics.checkNotNullParameter(offlineReader, "offlineReader");
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        Intrinsics.checkNotNullParameter(offlineLocation, "offlineLocation");
        try {
            try {
                try {
                    return ((Number) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$saveOfflineConnectionEntities$1$1(this, offlineReader, offlineLocation, offlineConnection, null))).longValue();
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    logError(th2, "Failed to save offline reader and connection");
                    if (th2 instanceof TerminalException) {
                        throw th2;
                    }
                    throw new TerminalException(th2 instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to save offline reader and connection", th2, null, 8, null);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$getLatestOfflineLocationForReader$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getLatestOfflineLocationForReader$1", f = "DefaultOfflineRepository.kt", i = {}, l = {345}, m = "invokeSuspend", n = {}, s = {})
    static final class C03131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OfflineLocation>, Object> {
        final /* synthetic */ String $serialNumber;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03131(String str, Continuation<? super C03131> continuation) {
            super(2, continuation);
            this.$serialNumber = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineRepository.this.new C03131(this.$serialNumber, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OfflineLocation> continuation) {
            return ((C03131) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws TerminalException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            DefaultOfflineRepository defaultOfflineRepository = DefaultOfflineRepository.this;
            this.label = 1;
            Object offlineLocationForReader = defaultOfflineRepository.getOfflineLocationForReader(this.$serialNumber, defaultOfflineRepository.getActiveAccountId(), this);
            return offlineLocationForReader == coroutine_suspended ? coroutine_suspended : offlineLocationForReader;
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getLatestOfflineLocationForReader(String serialNumber) {
        Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
        return (OfflineLocation) BuildersKt.runBlocking(this.dispatcher, new C03131(serialNumber, null));
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public List<Reader> discoverOfflineReaderList(String accountId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        try {
            return (List) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$discoverOfflineReaderList$1$1(this, accountId, null));
        } catch (Throwable th) {
            logError(th, "Failed to fetch offline reader list");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch offline reader list", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void saveOfflineApiRequest(OfflineApiRequest offlineApiRequest) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(offlineApiRequest, "offlineApiRequest");
        try {
            ((Number) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$saveOfflineApiRequest$1$1(this, offlineApiRequest, null))).longValue();
        } catch (Throwable th) {
            logError(th, "Failed to save offline payment intent requests");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to save offline payment intent requests", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<OfflineRequestsToSync> offlinePaymentRequestsToSync(String accountId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        final String str = "Failed to fetch offline payment intent requests";
        try {
            final Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(this.offlineApiRequestDao.getByAccountId(accountId));
            return new Flow<OfflineRequestsToSync>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ String $errorMessage$inlined;
                    final /* synthetic */ FlowCollector $this_unsafeFlow;
                    final /* synthetic */ DefaultOfflineRepository this$0;

                    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1$2", f = "DefaultOfflineRepository.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, DefaultOfflineRepository defaultOfflineRepository, String str) {
                        this.$this_unsafeFlow = flowCollector;
                        this.this$0 = defaultOfflineRepository;
                        this.$errorMessage$inlined = str;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r9, kotlin.coroutines.Continuation r10) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.stripeterminal.external.models.TerminalException {
                        /*
                            Method dump skipped, instruction units count: 250
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super OfflineRequestsToSync> flowCollector, Continuation continuation) {
                    Object objCollect = flowDistinctUntilChanged.collect(new AnonymousClass2(flowCollector, this, str), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
        } catch (Throwable th) {
            logError(th, "Failed to fetch offline payment intent requests");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch offline payment intent requests", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineReader>> offlineReaders(String accountId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        final String str = "Failed to fetch offline readers";
        try {
            final Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(this.offlineReaderDao.getByAccountId(accountId));
            return (Flow) new Flow<List<? extends OfflineReader>>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ String $errorMessage$inlined;
                    final /* synthetic */ FlowCollector $this_unsafeFlow;
                    final /* synthetic */ DefaultOfflineRepository this$0;

                    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1$2", f = "DefaultOfflineRepository.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, DefaultOfflineRepository defaultOfflineRepository, String str) {
                        this.$this_unsafeFlow = flowCollector;
                        this.this$0 = defaultOfflineRepository;
                        this.$errorMessage$inlined = str;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.stripeterminal.external.models.TerminalException {
                        /*
                            r7 = this;
                            boolean r0 = r9 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r9
                            com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1$2$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r9 = r0.label
                            int r9 = r9 - r2
                            r0.label = r9
                            goto L19
                        L14:
                            com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1$2$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1$2$1
                            r0.<init>(r9)
                        L19:
                            java.lang.Object r9 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r9)
                            goto L78
                        L2a:
                            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                            r8.<init>(r9)
                            throw r8
                        L32:
                            kotlin.ResultKt.throwOnFailure(r9)
                            kotlinx.coroutines.flow.FlowCollector r9 = r7.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            java.util.List r8 = (java.util.List) r8
                            java.lang.Iterable r8 = (java.lang.Iterable) r8     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.DefaultOfflineRepository r2 = r7.this$0     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.cipher.OfflineReaderCipher r2 = com.stripe.offlinemode.storage.DefaultOfflineRepository.access$getOfflineReaderCipher$p(r2)     // Catch: java.lang.Throwable -> L7b
                            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L7b
                            r5 = 10
                            int r5 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r8, r5)     // Catch: java.lang.Throwable -> L7b
                            r4.<init>(r5)     // Catch: java.lang.Throwable -> L7b
                            java.util.Collection r4 = (java.util.Collection) r4     // Catch: java.lang.Throwable -> L7b
                            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L7b
                        L55:
                            boolean r5 = r8.hasNext()     // Catch: java.lang.Throwable -> L7b
                            if (r5 == 0) goto L6d
                            java.lang.Object r5 = r8.next()     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.OfflineReaderEntity r5 = (com.stripe.offlinemode.storage.OfflineReaderEntity) r5     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.OfflineEntity r5 = (com.stripe.offlinemode.storage.OfflineEntity) r5     // Catch: java.lang.Throwable -> L7b
                            com.squareup.wire.Message r5 = r2.decrypt(r5)     // Catch: java.lang.Throwable -> L7b
                            com.stripe.proto.model.offline_mode.OfflineReader r5 = (com.stripe.proto.model.offline_mode.OfflineReader) r5     // Catch: java.lang.Throwable -> L7b
                            r4.add(r5)     // Catch: java.lang.Throwable -> L7b
                            goto L55
                        L6d:
                            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Throwable -> L7b
                            r0.label = r3
                            java.lang.Object r8 = r9.emit(r4, r0)
                            if (r8 != r1) goto L78
                            return r1
                        L78:
                            kotlin.Unit r8 = kotlin.Unit.INSTANCE
                            return r8
                        L7b:
                            r0 = move-exception
                            r8 = r0
                            r3 = r8
                            com.stripe.offlinemode.storage.DefaultOfflineRepository r8 = r7.this$0
                            java.lang.String r9 = r7.$errorMessage$inlined
                            com.stripe.offlinemode.storage.DefaultOfflineRepository.access$logError(r8, r3, r9)
                            boolean r8 = r3 instanceof com.stripe.stripeterminal.external.models.TerminalException
                            if (r8 != 0) goto L9f
                            boolean r8 = r3 instanceof android.database.sqlite.SQLiteFullException
                            if (r8 == 0) goto L90
                            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE
                            goto L92
                        L90:
                            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNEXPECTED_SDK_ERROR
                        L92:
                            r1 = r8
                            com.stripe.stripeterminal.external.models.TerminalException r0 = new com.stripe.stripeterminal.external.models.TerminalException
                            java.lang.String r2 = r7.$errorMessage$inlined
                            r5 = 8
                            r6 = 0
                            r4 = 0
                            r0.<init>(r1, r2, r3, r4, r5, r6)
                            throw r0
                        L9f:
                            throw r3
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super List<? extends OfflineReader>> flowCollector, Continuation continuation) {
                    Object objCollect = flowDistinctUntilChanged.collect(new AnonymousClass2(flowCollector, this, str), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
        } catch (Throwable th) {
            logError(th, "Failed to fetch offline readers");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch offline readers", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineConnection>> offlineConnections(String accountId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        final String str = "Failed to fetch offline connections";
        try {
            final Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(this.offlineConnectionDao.getByAccountId(accountId));
            return (Flow) new Flow<List<? extends OfflineConnection>>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ String $errorMessage$inlined;
                    final /* synthetic */ FlowCollector $this_unsafeFlow;
                    final /* synthetic */ DefaultOfflineRepository this$0;

                    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1$2", f = "DefaultOfflineRepository.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, DefaultOfflineRepository defaultOfflineRepository, String str) {
                        this.$this_unsafeFlow = flowCollector;
                        this.this$0 = defaultOfflineRepository;
                        this.$errorMessage$inlined = str;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.stripeterminal.external.models.TerminalException {
                        /*
                            r7 = this;
                            boolean r0 = r9 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r9
                            com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1$2$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r9 = r0.label
                            int r9 = r9 - r2
                            r0.label = r9
                            goto L19
                        L14:
                            com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1$2$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1$2$1
                            r0.<init>(r9)
                        L19:
                            java.lang.Object r9 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r9)
                            goto L78
                        L2a:
                            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                            r8.<init>(r9)
                            throw r8
                        L32:
                            kotlin.ResultKt.throwOnFailure(r9)
                            kotlinx.coroutines.flow.FlowCollector r9 = r7.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            java.util.List r8 = (java.util.List) r8
                            java.lang.Iterable r8 = (java.lang.Iterable) r8     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.DefaultOfflineRepository r2 = r7.this$0     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.cipher.OfflineConnectionCipher r2 = com.stripe.offlinemode.storage.DefaultOfflineRepository.access$getOfflineConnectionCipher$p(r2)     // Catch: java.lang.Throwable -> L7b
                            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L7b
                            r5 = 10
                            int r5 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r8, r5)     // Catch: java.lang.Throwable -> L7b
                            r4.<init>(r5)     // Catch: java.lang.Throwable -> L7b
                            java.util.Collection r4 = (java.util.Collection) r4     // Catch: java.lang.Throwable -> L7b
                            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L7b
                        L55:
                            boolean r5 = r8.hasNext()     // Catch: java.lang.Throwable -> L7b
                            if (r5 == 0) goto L6d
                            java.lang.Object r5 = r8.next()     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.OfflineConnectionEntity r5 = (com.stripe.offlinemode.storage.OfflineConnectionEntity) r5     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.OfflineEntity r5 = (com.stripe.offlinemode.storage.OfflineEntity) r5     // Catch: java.lang.Throwable -> L7b
                            com.squareup.wire.Message r5 = r2.decrypt(r5)     // Catch: java.lang.Throwable -> L7b
                            com.stripe.proto.model.offline_mode.OfflineConnection r5 = (com.stripe.proto.model.offline_mode.OfflineConnection) r5     // Catch: java.lang.Throwable -> L7b
                            r4.add(r5)     // Catch: java.lang.Throwable -> L7b
                            goto L55
                        L6d:
                            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Throwable -> L7b
                            r0.label = r3
                            java.lang.Object r8 = r9.emit(r4, r0)
                            if (r8 != r1) goto L78
                            return r1
                        L78:
                            kotlin.Unit r8 = kotlin.Unit.INSTANCE
                            return r8
                        L7b:
                            r0 = move-exception
                            r8 = r0
                            r3 = r8
                            com.stripe.offlinemode.storage.DefaultOfflineRepository r8 = r7.this$0
                            java.lang.String r9 = r7.$errorMessage$inlined
                            com.stripe.offlinemode.storage.DefaultOfflineRepository.access$logError(r8, r3, r9)
                            boolean r8 = r3 instanceof com.stripe.stripeterminal.external.models.TerminalException
                            if (r8 != 0) goto L9f
                            boolean r8 = r3 instanceof android.database.sqlite.SQLiteFullException
                            if (r8 == 0) goto L90
                            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE
                            goto L92
                        L90:
                            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNEXPECTED_SDK_ERROR
                        L92:
                            r1 = r8
                            com.stripe.stripeterminal.external.models.TerminalException r0 = new com.stripe.stripeterminal.external.models.TerminalException
                            java.lang.String r2 = r7.$errorMessage$inlined
                            r5 = 8
                            r6 = 0
                            r4 = 0
                            r0.<init>(r1, r2, r3, r4, r5, r6)
                            throw r0
                        L9f:
                            throw r3
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super List<? extends OfflineConnection>> flowCollector, Continuation continuation) {
                    Object objCollect = flowDistinctUntilChanged.collect(new AnonymousClass2(flowCollector, this, str), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
        } catch (Throwable th) {
            logError(th, "Failed to fetch offline connections");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch offline connections", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Flow<List<OfflineLocation>> offlineLocations(String accountId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        final String str = "Failed to fetch offline connections";
        try {
            final Flow flowDistinctUntilChanged = FlowKt.distinctUntilChanged(this.offlineLocationDao.getByAccountId(accountId));
            return (Flow) new Flow<List<? extends OfflineLocation>>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1

                /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 9, 0}, xi = 48)
                public static final class AnonymousClass2<T> implements FlowCollector {
                    final /* synthetic */ String $errorMessage$inlined;
                    final /* synthetic */ FlowCollector $this_unsafeFlow;
                    final /* synthetic */ DefaultOfflineRepository this$0;

                    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1$2$1, reason: invalid class name */
                    /* JADX INFO: compiled from: Emitters.kt */
                    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
                    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1$2", f = "DefaultOfflineRepository.kt", i = {}, l = {219}, m = "emit", n = {}, s = {})
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, DefaultOfflineRepository defaultOfflineRepository, String str) {
                        this.$this_unsafeFlow = flowCollector;
                        this.this$0 = defaultOfflineRepository;
                        this.$errorMessage$inlined = str;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) throws java.lang.IllegalAccessException, java.lang.InstantiationException, com.stripe.stripeterminal.external.models.TerminalException {
                        /*
                            r7 = this;
                            boolean r0 = r9 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r9
                            com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1$2$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r9 = r0.label
                            int r9 = r9 - r2
                            r0.label = r9
                            goto L19
                        L14:
                            com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1$2$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1$2$1
                            r0.<init>(r9)
                        L19:
                            java.lang.Object r9 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r9)
                            goto L78
                        L2a:
                            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                            r8.<init>(r9)
                            throw r8
                        L32:
                            kotlin.ResultKt.throwOnFailure(r9)
                            kotlinx.coroutines.flow.FlowCollector r9 = r7.$this_unsafeFlow
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            java.util.List r8 = (java.util.List) r8
                            java.lang.Iterable r8 = (java.lang.Iterable) r8     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.DefaultOfflineRepository r2 = r7.this$0     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.cipher.OfflineLocationCipher r2 = com.stripe.offlinemode.storage.DefaultOfflineRepository.access$getOfflineLocationCipher$p(r2)     // Catch: java.lang.Throwable -> L7b
                            java.util.ArrayList r4 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L7b
                            r5 = 10
                            int r5 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r8, r5)     // Catch: java.lang.Throwable -> L7b
                            r4.<init>(r5)     // Catch: java.lang.Throwable -> L7b
                            java.util.Collection r4 = (java.util.Collection) r4     // Catch: java.lang.Throwable -> L7b
                            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> L7b
                        L55:
                            boolean r5 = r8.hasNext()     // Catch: java.lang.Throwable -> L7b
                            if (r5 == 0) goto L6d
                            java.lang.Object r5 = r8.next()     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.OfflineLocationEntity r5 = (com.stripe.offlinemode.storage.OfflineLocationEntity) r5     // Catch: java.lang.Throwable -> L7b
                            com.stripe.offlinemode.storage.OfflineEntity r5 = (com.stripe.offlinemode.storage.OfflineEntity) r5     // Catch: java.lang.Throwable -> L7b
                            com.squareup.wire.Message r5 = r2.decrypt(r5)     // Catch: java.lang.Throwable -> L7b
                            com.stripe.proto.model.offline_mode.OfflineLocation r5 = (com.stripe.proto.model.offline_mode.OfflineLocation) r5     // Catch: java.lang.Throwable -> L7b
                            r4.add(r5)     // Catch: java.lang.Throwable -> L7b
                            goto L55
                        L6d:
                            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Throwable -> L7b
                            r0.label = r3
                            java.lang.Object r8 = r9.emit(r4, r0)
                            if (r8 != r1) goto L78
                            return r1
                        L78:
                            kotlin.Unit r8 = kotlin.Unit.INSTANCE
                            return r8
                        L7b:
                            r0 = move-exception
                            r8 = r0
                            r3 = r8
                            com.stripe.offlinemode.storage.DefaultOfflineRepository r8 = r7.this$0
                            java.lang.String r9 = r7.$errorMessage$inlined
                            com.stripe.offlinemode.storage.DefaultOfflineRepository.access$logError(r8, r3, r9)
                            boolean r8 = r3 instanceof com.stripe.stripeterminal.external.models.TerminalException
                            if (r8 != 0) goto L9f
                            boolean r8 = r3 instanceof android.database.sqlite.SQLiteFullException
                            if (r8 == 0) goto L90
                            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE
                            goto L92
                        L90:
                            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNEXPECTED_SDK_ERROR
                        L92:
                            r1 = r8
                            com.stripe.stripeterminal.external.models.TerminalException r0 = new com.stripe.stripeterminal.external.models.TerminalException
                            java.lang.String r2 = r7.$errorMessage$inlined
                            r5 = 8
                            r6 = 0
                            r4 = 0
                            r0.<init>(r1, r2, r3, r4, r5, r6)
                            throw r0
                        L9f:
                            throw r3
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super List<? extends OfflineLocation>> flowCollector, Continuation continuation) {
                    Object objCollect = flowDistinctUntilChanged.collect(new AnonymousClass2(flowCollector, this, str), continuation);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }
            };
        } catch (Throwable th) {
            logError(th, "Failed to fetch offline connections");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch offline connections", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineConnection getOfflineConnection(long connectionId) throws IllegalAccessException, InstantiationException, TerminalException {
        String str = "Failed to fetch offline connection with ID " + connectionId;
        try {
            return (OfflineConnection) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$getOfflineConnection$1$1(this, connectionId, null));
        } catch (Throwable th) {
            logError(th, str);
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, str, th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getOfflineLocationForConnection(OfflineConnection offlineConnection) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(offlineConnection, "offlineConnection");
        String str = "Failed to fetch offline location for connection " + offlineConnection.id;
        try {
            return (OfflineLocation) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$getOfflineLocationForConnection$1$1(this, offlineConnection, null));
        } catch (Throwable th) {
            logError(th, str);
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, str, th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineLocation getOfflineLocationByStripeId(String stripeLocationId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(stripeLocationId, "stripeLocationId");
        String str = "Failed to fetch offline location with Stripe ID " + stripeLocationId;
        try {
            return (OfflineLocation) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$getOfflineLocationByStripeId$1$1(this, stripeLocationId, null));
        } catch (Throwable th) {
            logError(th, str);
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, str, th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Object fetchNextToForward(String str, Continuation<? super Flow<OfflineForwardingRequest>> continuation) throws IllegalAccessException, InstantiationException, TerminalException {
        try {
            return FlowKt.flowCombine(FlowKt.filterNotNull(FlowKt.distinctUntilChanged(this.offlineApiRequestDao.fetchNextPaymentToForward(str))), FlowKt.distinctUntilChanged(FlowKt.filterNotNull(this.offlineApiRequestDao.getMostRecentRowId(str))), new DefaultOfflineRepository$fetchNextToForward$2$1(this));
        } catch (Throwable th) {
            logError(th, "Failed to fetch the next offline entity to forward");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to fetch the next offline entity to forward", th, null, 8, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object delete(com.stripe.proto.model.offline_mode.OfflineApiRequest r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r9
            com.stripe.offlinemode.storage.DefaultOfflineRepository$delete$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.stripe.offlinemode.storage.DefaultOfflineRepository$delete$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$delete$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r8 = r0.L$1
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r0 = r0.L$0
            r1 = r0
            com.stripe.offlinemode.storage.DefaultOfflineRepository r1 = (com.stripe.offlinemode.storage.DefaultOfflineRepository) r1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L33
            goto L6c
        L33:
            r0 = move-exception
            r9 = r0
            r2 = r8
            r3 = r9
            goto L82
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.String r9 = "Failed to delete offline payment intent request."
            com.stripe.offlinemode.storage.OfflineApiRequestDao r2 = r7.offlineApiRequestDao     // Catch: java.lang.Throwable -> L7d
            java.lang.String r4 = r8.offline_id     // Catch: java.lang.Throwable -> L7d
            if (r4 != 0) goto L5b
            java.lang.String r4 = r8.stripe_entity_id     // Catch: java.lang.Throwable -> L7d
            r8 = 0
            if (r4 == 0) goto L5a
            r5 = r4
            java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.Throwable -> L7d
            int r5 = r5.length()     // Catch: java.lang.Throwable -> L7d
            if (r5 <= 0) goto L5a
            goto L5b
        L5a:
            r4 = r8
        L5b:
            if (r4 == 0) goto L71
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L7d
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L7d
            r0.label = r3     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r8 = r2.deleteByOfflineOrPaymentIntentId(r4, r0)     // Catch: java.lang.Throwable -> L7d
            if (r8 != r1) goto L6a
            return r1
        L6a:
            r1 = r7
            r8 = r9
        L6c:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L33
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L71:
            java.lang.String r8 = "One of offline or payment intent id must not be null."
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L7d
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L7d
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L7d
            throw r0     // Catch: java.lang.Throwable -> L7d
        L7d:
            r0 = move-exception
            r8 = r0
            r1 = r7
            r3 = r8
            r2 = r9
        L82:
            access$logError(r1, r3, r2)
            boolean r8 = r3 instanceof com.stripe.stripeterminal.external.models.TerminalException
            if (r8 != 0) goto L9d
            boolean r8 = r3 instanceof android.database.sqlite.SQLiteFullException
            if (r8 == 0) goto L90
            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE
            goto L92
        L90:
            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNEXPECTED_SDK_ERROR
        L92:
            r1 = r8
            com.stripe.stripeterminal.external.models.TerminalException r0 = new com.stripe.stripeterminal.external.models.TerminalException
            r5 = 8
            r6 = 0
            r4 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6)
            throw r0
        L9d:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.delete(com.stripe.proto.model.offline_mode.OfflineApiRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object softDelete(com.stripe.proto.model.offline_mode.OfflineApiRequest r8, kotlin.coroutines.Continuation<? super java.lang.Integer> r9) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository.C03171
            if (r0 == 0) goto L14
            r0 = r9
            com.stripe.offlinemode.storage.DefaultOfflineRepository$softDelete$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository.C03171) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.stripe.offlinemode.storage.DefaultOfflineRepository$softDelete$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$softDelete$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r8 = r0.L$1
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r0 = r0.L$0
            r1 = r0
            com.stripe.offlinemode.storage.DefaultOfflineRepository r1 = (com.stripe.offlinemode.storage.DefaultOfflineRepository) r1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L33
            goto L73
        L33:
            r0 = move-exception
            r9 = r0
            r2 = r8
            r3 = r9
            goto L8f
        L38:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.String r9 = "Failed to soft delete offline payment intent request."
            com.stripe.offlinemode.storage.OfflineApiRequestDao r2 = r7.offlineApiRequestDao     // Catch: java.lang.Throwable -> L8a
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L8a
            java.lang.String r5 = r8.offline_id     // Catch: java.lang.Throwable -> L8a
            if (r5 != 0) goto L5d
            java.lang.String r5 = r8.stripe_entity_id     // Catch: java.lang.Throwable -> L8a
            r8 = 0
            if (r5 == 0) goto L5c
            r6 = r5
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6     // Catch: java.lang.Throwable -> L8a
            int r6 = r6.length()     // Catch: java.lang.Throwable -> L8a
            if (r6 <= 0) goto L5c
            goto L5d
        L5c:
            r5 = r8
        L5d:
            if (r5 == 0) goto L7e
            r8 = 0
            r4[r8] = r5     // Catch: java.lang.Throwable -> L8a
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L8a
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L8a
            r0.label = r3     // Catch: java.lang.Throwable -> L8a
            java.lang.Object r8 = r2.softDeleteByIntentId(r4, r0)     // Catch: java.lang.Throwable -> L8a
            if (r8 != r1) goto L6f
            return r1
        L6f:
            r1 = r9
            r9 = r8
            r8 = r1
            r1 = r7
        L73:
            java.lang.Number r9 = (java.lang.Number) r9     // Catch: java.lang.Throwable -> L33
            int r9 = r9.intValue()     // Catch: java.lang.Throwable -> L33
            java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r9)     // Catch: java.lang.Throwable -> L33
            return r8
        L7e:
            java.lang.String r8 = "One of offline or payment intent id must not be null."
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L8a
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L8a
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L8a
            throw r0     // Catch: java.lang.Throwable -> L8a
        L8a:
            r0 = move-exception
            r8 = r0
            r1 = r7
            r3 = r8
            r2 = r9
        L8f:
            access$logError(r1, r3, r2)
            boolean r8 = r3 instanceof com.stripe.stripeterminal.external.models.TerminalException
            if (r8 != 0) goto Laa
            boolean r8 = r3 instanceof android.database.sqlite.SQLiteFullException
            if (r8 == 0) goto L9d
            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE
            goto L9f
        L9d:
            com.stripe.stripeterminal.external.models.TerminalErrorCode r8 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNEXPECTED_SDK_ERROR
        L9f:
            r1 = r8
            com.stripe.stripeterminal.external.models.TerminalException r0 = new com.stripe.stripeterminal.external.models.TerminalException
            r5 = 8
            r6 = 0
            r4 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6)
            throw r0
        Laa:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.softDelete(com.stripe.proto.model.offline_mode.OfflineApiRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0280, code lost:
    
        if (r2.deleteByRowId(r6, r4) == r5) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0189 A[Catch: all -> 0x0260, TryCatch #0 {all -> 0x0260, blocks: (B:61:0x025d, B:42:0x0174, B:44:0x0178, B:46:0x0185, B:48:0x0189, B:50:0x01dc, B:52:0x01e0, B:54:0x0218, B:56:0x0237, B:58:0x0243), top: B:90:0x0174 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01e0 A[Catch: all -> 0x0260, TryCatch #0 {all -> 0x0260, blocks: (B:61:0x025d, B:42:0x0174, B:44:0x0178, B:46:0x0185, B:48:0x0189, B:50:0x01dc, B:52:0x01e0, B:54:0x0218, B:56:0x0237, B:58:0x0243), top: B:90:0x0174 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0298 A[Catch: all -> 0x02af, TryCatch #4 {all -> 0x02af, blocks: (B:76:0x0291, B:78:0x0298, B:80:0x029c, B:82:0x02a1, B:83:0x02ad, B:81:0x029f, B:84:0x02ae), top: B:97:0x0291 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02ae A[Catch: all -> 0x02af, TRY_LEAVE, TryCatch #4 {all -> 0x02af, blocks: (B:76:0x0291, B:78:0x0298, B:80:0x029c, B:82:0x02a1, B:83:0x02ad, B:81:0x029f, B:84:0x02ae), top: B:97:0x0291 }] */
    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object updateOfflineConfirmRequestWithOnlineEntity(com.stripe.offlinemode.models.OfflineForwardingResponse.Success r65, com.stripe.proto.model.offline_mode.OfflineApiRequest r66, kotlin.coroutines.Continuation<? super kotlin.Unit> r67) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.updateOfflineConfirmRequestWithOnlineEntity(com.stripe.offlinemode.models.OfflineForwardingResponse$Success, com.stripe.proto.model.offline_mode.OfflineApiRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0107 A[Catch: all -> 0x0203, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0203, blocks: (B:46:0x0107, B:84:0x0208, B:85:0x021e), top: B:98:0x0105 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013d A[Catch: all -> 0x01e7, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x01e7, blocks: (B:51:0x013d, B:80:0x01ec, B:81:0x0202), top: B:107:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x017c A[Catch: all -> 0x01e2, TryCatch #0 {all -> 0x01e2, blocks: (B:55:0x016b, B:57:0x016f, B:62:0x0182, B:74:0x01cb, B:75:0x01e1, B:60:0x017c), top: B:97:0x016b }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0182 A[Catch: all -> 0x01e2, TRY_LEAVE, TryCatch #0 {all -> 0x01e2, blocks: (B:55:0x016b, B:57:0x016f, B:62:0x0182, B:74:0x01cb, B:75:0x01e1, B:60:0x017c), top: B:97:0x016b }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01cb A[Catch: all -> 0x01e2, TRY_ENTER, TryCatch #0 {all -> 0x01e2, blocks: (B:55:0x016b, B:57:0x016f, B:62:0x0182, B:74:0x01cb, B:75:0x01e1, B:60:0x017c), top: B:97:0x016b }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ec A[Catch: all -> 0x01e7, TRY_ENTER, TryCatch #6 {all -> 0x01e7, blocks: (B:51:0x013d, B:80:0x01ec, B:81:0x0202), top: B:107:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0208 A[Catch: all -> 0x0203, TRY_ENTER, TryCatch #1 {all -> 0x0203, blocks: (B:46:0x0107, B:84:0x0208, B:85:0x021e), top: B:98:0x0105 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getOfflineConnectionAndReaderForPaymentRequest(com.stripe.offlinemode.storage.OfflineApiRequestEntity r21, long r22, kotlin.coroutines.Continuation<? super com.stripe.offlinemode.models.OfflineForwardingRequest> r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.getOfflineConnectionAndReaderForPaymentRequest(com.stripe.offlinemode.storage.OfflineApiRequestEntity, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0097 A[Catch: all -> 0x0198, TRY_ENTER, TryCatch #1 {all -> 0x0198, blocks: (B:30:0x0097, B:32:0x00b3, B:34:0x00b7, B:36:0x00bf, B:38:0x0110, B:40:0x0114, B:42:0x011b, B:44:0x0121, B:46:0x012b, B:48:0x0131, B:50:0x0142, B:52:0x0148, B:54:0x015d, B:63:0x019d, B:64:0x01b9), top: B:78:0x0095 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x019d A[Catch: all -> 0x0198, TRY_ENTER, TryCatch #1 {all -> 0x0198, blocks: (B:30:0x0097, B:32:0x00b3, B:34:0x00b7, B:36:0x00bf, B:38:0x0110, B:40:0x0114, B:42:0x011b, B:44:0x0121, B:46:0x012b, B:48:0x0131, B:50:0x0142, B:52:0x0148, B:54:0x015d, B:63:0x019d, B:64:0x01b9), top: B:78:0x0095 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object updateOfflineLocationWithConfig(java.lang.String r35, com.stripe.device.OfflineLocationConfigs r36, kotlin.coroutines.Continuation<? super kotlin.Unit> r37) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.updateOfflineLocationWithConfig(java.lang.String, com.stripe.device.OfflineLocationConfigs, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Triple<OfflineReader, OfflineConnection, OfflineLocation> getOfflineConnectionEntitiesIfSaved(Reader reader, String accountId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        try {
            return (Triple) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1(this, accountId, reader, null));
        } catch (Throwable th) {
            logError(th, "Failed to get offline reader and connection pair");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to get offline reader and connection pair", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public Map<String, ApiLocationPb> getSavedLocationsMap(String accountId, List<String> serials) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(serials, "serials");
        try {
            return (Map) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$getSavedLocationsMap$1$1(this, accountId, serials, null));
        } catch (Throwable th) {
            logError(th, "Failed to get saved locations for account");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to get saved locations for account", th, null, 8, null);
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public boolean isOfflineEnabledForLocationAndReader(String locationId, String readerSerial, String accountId) throws Throwable {
        Intrinsics.checkNotNullParameter(readerSerial, "readerSerial");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        try {
            try {
                try {
                    return ((Boolean) BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1(locationId, this, readerSerial, accountId, null))).booleanValue();
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    logError(th2, "Failed to get offline reader.");
                    if (th2 instanceof TerminalException) {
                        throw th2;
                    }
                    throw new TerminalException(th2 instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to get offline reader.", th2, null, 8, null);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public StateFlow<Boolean> activeReaderOfflineEnabledFlow() {
        return this.activeReaderOfflineEnabledFlow;
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public void restoreSoftDeletedPayments(String accountId) throws IllegalAccessException, InstantiationException, TerminalException {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        try {
            BuildersKt.runBlocking(this.dispatcher, new DefaultOfflineRepository$restoreSoftDeletedPayments$1$1(this, accountId, null));
            Unit unit = Unit.INSTANCE;
        } catch (Throwable th) {
            logError(th, "Failed to restore deleted payments");
            if (th instanceof TerminalException) {
                throw th;
            }
            throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Failed to restore deleted payments", th, null, 8, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    @Override // com.stripe.offlinemode.storage.OfflineRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object deleteExpiredEntities(java.lang.String r18, kotlin.coroutines.Continuation<? super kotlin.Unit> r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.deleteExpiredEntities(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.stripe.offlinemode.storage.OfflineRepository
    public OfflineEntityStats forceBlockingUpdateOfflinePaymentStats() {
        String value = getActiveAccountFlow().getValue();
        if (value != null) {
            return (OfflineEntityStats) BuildersKt__BuildersKt.runBlocking$default(null, new DefaultOfflineRepository$forceBlockingUpdateOfflinePaymentStats$1$1(this, value, null), 1, null);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getActiveReaderOfflineEnabledFlow(java.lang.Long r5, kotlin.coroutines.Continuation<? super kotlinx.coroutines.flow.Flow<java.lang.Boolean>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository.C03121
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository.C03121) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r5 = r0.L$0
            com.stripe.offlinemode.storage.DefaultOfflineRepository r5 = (com.stripe.offlinemode.storage.DefaultOfflineRepository) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4f
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            if (r5 == 0) goto L7b
            java.lang.Number r5 = (java.lang.Number) r5
            long r5 = r5.longValue()
            com.stripe.offlinemode.storage.OfflineConnectionDao r2 = r4.offlineConnectionDao
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r2.getById(r5, r0)
            if (r6 != r1) goto L4e
            return r1
        L4e:
            r5 = r4
        L4f:
            com.stripe.offlinemode.storage.OfflineConnectionEntity r6 = (com.stripe.offlinemode.storage.OfflineConnectionEntity) r6
            if (r6 == 0) goto L7b
            com.stripe.offlinemode.storage.OfflineLocationDao r0 = r5.offlineLocationDao
            long r1 = r6.getLocationId()
            kotlinx.coroutines.flow.Flow r6 = r0.getByIdFlow(r1)
            if (r6 == 0) goto L7b
            kotlinx.coroutines.flow.Flow r6 = kotlinx.coroutines.flow.FlowKt.distinctUntilChanged(r6)
            if (r6 == 0) goto L7b
            com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1
            r0.<init>()
            kotlinx.coroutines.flow.Flow r0 = (kotlinx.coroutines.flow.Flow) r0
            com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$5 r6 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$5
            r1 = 0
            r6.<init>(r1)
            kotlin.jvm.functions.Function3 r6 = (kotlin.jvm.functions.Function3) r6
            kotlinx.coroutines.flow.Flow r5 = kotlinx.coroutines.flow.FlowKt.m2361catch(r0, r6)
            if (r5 == 0) goto L7b
            return r5
        L7b:
            r5 = 0
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            kotlinx.coroutines.flow.Flow r5 = kotlinx.coroutines.flow.FlowKt.flowOf(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.getActiveReaderOfflineEnabledFlow(java.lang.Long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$5, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "error", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$5", f = "DefaultOfflineRepository.kt", i = {}, l = {924}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function3<FlowCollector<? super Boolean>, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super Boolean> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass5 anonymousClass5 = DefaultOfflineRepository.this.new AnonymousClass5(continuation);
            anonymousClass5.L$0 = flowCollector;
            anonymousClass5.L$1 = th;
            return anonymousClass5.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                DefaultOfflineRepository.this.logger.w((Throwable) this.L$1, "Failed to get active reader offline config.", new Pair[0]);
                this.L$0 = null;
                this.label = 1;
                if (flowCollector.emit(Boxing.boxBoolean(false), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getOfflineLocationForReader(java.lang.String r19, java.lang.String r20, kotlin.coroutines.Continuation<? super com.stripe.proto.model.offline_mode.OfflineLocation> r21) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.getOfflineLocationForReader(java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isExpired(OfflineReaderEntity offlineReaderEntity) {
        return offlineReaderEntity.getLastActivatedAt().before(new Date(this.clock.currentTimeMillis() - 2592000000L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isExpired(OfflineLocationEntity offlineLocationEntity) {
        return offlineLocationEntity.getLastActivatedAt().before(new Date(this.clock.currentTimeMillis() - OfflineStorageConstantsKt.LOCATION_LAST_ACTIVATED_THRESHOLD_MS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object hasMoreRelatedRequests(OfflineApiRequestEntity offlineApiRequestEntity, Continuation<? super Boolean> continuation) {
        int i = WhenMappings.$EnumSwitchMapping$0[offlineApiRequestEntity.getType().ordinal()];
        if (i != 1 && i != 2) {
            return this.offlineApiRequestDao.hasMoreRequestsAfter(offlineApiRequestEntity.getEntityId(), offlineApiRequestEntity.getId(), offlineApiRequestEntity.getAccountId(), continuation);
        }
        return Boxing.boxBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object validatePendingCreateRequirement(com.stripe.proto.model.offline_mode.OfflineApiRequest r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.stripe.offlinemode.storage.DefaultOfflineRepository.C03201
            if (r0 == 0) goto L14
            r0 = r6
            com.stripe.offlinemode.storage.DefaultOfflineRepository$validatePendingCreateRequirement$1 r0 = (com.stripe.offlinemode.storage.DefaultOfflineRepository.C03201) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.stripe.offlinemode.storage.DefaultOfflineRepository$validatePendingCreateRequirement$1 r0 = new com.stripe.offlinemode.storage.DefaultOfflineRepository$validatePendingCreateRequirement$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L66
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.String r6 = r5.stripe_entity_id
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6
            if (r6 == 0) goto L41
            int r6 = r6.length()
            if (r6 != 0) goto L70
        L41:
            java.lang.String r6 = r5.offline_id
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6
            if (r6 == 0) goto L70
            int r6 = r6.length()
            if (r6 != 0) goto L4e
            goto L70
        L4e:
            com.stripe.proto.model.offline_mode.OfflineApiRequest$ApiRequestType r6 = r5.type
            com.stripe.proto.model.offline_mode.OfflineApiRequest$ApiRequestType r2 = com.stripe.proto.model.offline_mode.OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT
            if (r6 != r2) goto L70
            com.stripe.offlinemode.storage.OfflineApiRequestDao r6 = r4.offlineApiRequestDao
            java.lang.String r5 = r5.offline_id
            kotlin.jvm.internal.Intrinsics.checkNotNull(r5)
            com.stripe.proto.model.offline_mode.OfflineApiRequest$ApiRequestType r2 = com.stripe.proto.model.offline_mode.OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT
            r0.label = r3
            java.lang.Object r6 = r6.getByOfflineIdAndType(r5, r2, r0)
            if (r6 != r1) goto L66
            return r1
        L66:
            com.stripe.offlinemode.storage.OfflineApiRequestEntity r6 = (com.stripe.offlinemode.storage.OfflineApiRequestEntity) r6
            if (r6 == 0) goto L71
            boolean r5 = r6.getDeleted()
            if (r5 != 0) goto L71
        L70:
            r3 = 0
        L71:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.DefaultOfflineRepository.validatePendingCreateRequirement(com.stripe.proto.model.offline_mode.OfflineApiRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OfflineLocation extractEmbeddedOfflineLocation(OfflineReader offlineReader, OfflineConnection offlineConnection) {
        ApiLocationPb apiLocationPb = offlineConnection.location;
        if (apiLocationPb == null) {
            return null;
        }
        OfflineConfigPb.ReaderOfflineConfigPb readerOfflineConfigPb = offlineReader.reader_offline_config;
        return new OfflineLocation(0L, offlineReader.account_id, offlineConnection.created_at, offlineReader.last_activated_at, null, null, null, apiLocationPb, readerOfflineConfigPb != null ? readerOfflineConfigPb.enabled : false, null, InputDeviceCompat.SOURCE_DPAD, null);
    }

    static /* synthetic */ Object wrapErrorsAsTerminalException$default(DefaultOfflineRepository defaultOfflineRepository, String str, Function0 function0, Function0 function02, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository.wrapErrorsAsTerminalException.1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        try {
            return function02.invoke();
        } catch (Throwable th) {
            try {
                defaultOfflineRepository.logError(th, str);
                if (th instanceof TerminalException) {
                    throw th;
                }
                throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, str, th, null, 8, null);
            } finally {
                function0.invoke();
            }
        }
    }

    private final /* synthetic */ <T> T wrapErrorsAsTerminalException(String errorMessage, Function0<Unit> doFinally, Function0<? extends T> block) {
        try {
            return block.invoke();
        } catch (Throwable th) {
            try {
                logError(th, errorMessage);
                if (th instanceof TerminalException) {
                    throw th;
                }
                throw new TerminalException(th instanceof SQLiteFullException ? TerminalErrorCode.OFFLINE_PAYMENTS_DATABASE_TOO_LARGE : TerminalErrorCode.UNEXPECTED_SDK_ERROR, errorMessage, th, null, 8, null);
            } finally {
                doFinally.invoke();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logError(Throwable error, String errorMessage) throws IllegalAccessException, InstantiationException {
        if (error instanceof OfflineDataMismatchException) {
            HealthLogger.incrementCounter$default(this.discreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.TABLE, ((OfflineDataMismatchException) error).getTable())), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository.logError.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(it, "it");
                    incrementCounter.record_data_mismatch = it;
                }
            }, 5, null);
        } else if (error instanceof OfflineDecryptionException) {
            HealthLogger.incrementCounter$default(this.discreteLogger, null, MapsKt.mapOf(TuplesKt.to(OfflineMetricTags.TABLE, ((OfflineDecryptionException) error).getTable())), null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository.logError.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(it, "it");
                    incrementCounter.decryption_error = it;
                }
            }, 5, null);
        } else if (error instanceof SQLException) {
            HealthLogger.incrementCounter$default(this.discreteLogger, null, null, null, new Function2<DiscreteScope.Builder, Counter, Unit>() { // from class: com.stripe.offlinemode.storage.DefaultOfflineRepository.logError.3
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
                    invoke2(builder, counter);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
                    Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
                    Intrinsics.checkNotNullParameter(it, "it");
                    incrementCounter.database_error = it;
                }
            }, 7, null);
        }
        this.logger.e("DefaultOfflineRepository Error:: " + errorMessage, error, new Pair[0]);
    }

    /* JADX INFO: compiled from: DefaultOfflineRepository.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J5\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;", "", "entityId", "", "clientSecret", "requestType", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", ImagesContract.URL, "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V", "getClientSecret", "()Ljava/lang/String;", "getEntityId", "getRequestType", "()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "getUrl", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class ForwardedEntityDetails {
        private final String clientSecret;
        private final String entityId;
        private final OfflineApiRequest.ApiRequestType requestType;
        private final String url;

        public static /* synthetic */ ForwardedEntityDetails copy$default(ForwardedEntityDetails forwardedEntityDetails, String str, String str2, OfflineApiRequest.ApiRequestType apiRequestType, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = forwardedEntityDetails.entityId;
            }
            if ((i & 2) != 0) {
                str2 = forwardedEntityDetails.clientSecret;
            }
            if ((i & 4) != 0) {
                apiRequestType = forwardedEntityDetails.requestType;
            }
            if ((i & 8) != 0) {
                str3 = forwardedEntityDetails.url;
            }
            return forwardedEntityDetails.copy(str, str2, apiRequestType, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getEntityId() {
            return this.entityId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getClientSecret() {
            return this.clientSecret;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final OfflineApiRequest.ApiRequestType getRequestType() {
            return this.requestType;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        public final ForwardedEntityDetails copy(String entityId, String clientSecret, OfflineApiRequest.ApiRequestType requestType, String url) {
            Intrinsics.checkNotNullParameter(requestType, "requestType");
            Intrinsics.checkNotNullParameter(url, "url");
            return new ForwardedEntityDetails(entityId, clientSecret, requestType, url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ForwardedEntityDetails)) {
                return false;
            }
            ForwardedEntityDetails forwardedEntityDetails = (ForwardedEntityDetails) other;
            return Intrinsics.areEqual(this.entityId, forwardedEntityDetails.entityId) && Intrinsics.areEqual(this.clientSecret, forwardedEntityDetails.clientSecret) && this.requestType == forwardedEntityDetails.requestType && Intrinsics.areEqual(this.url, forwardedEntityDetails.url);
        }

        public int hashCode() {
            String str = this.entityId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.clientSecret;
            return ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.requestType.hashCode()) * 31) + this.url.hashCode();
        }

        public String toString() {
            return "ForwardedEntityDetails(entityId=" + this.entityId + ", clientSecret=" + this.clientSecret + ", requestType=" + this.requestType + ", url=" + this.url + ')';
        }

        public ForwardedEntityDetails(String str, String str2, OfflineApiRequest.ApiRequestType requestType, String url) {
            Intrinsics.checkNotNullParameter(requestType, "requestType");
            Intrinsics.checkNotNullParameter(url, "url");
            this.entityId = str;
            this.clientSecret = str2;
            this.requestType = requestType;
            this.url = url;
        }

        public final String getEntityId() {
            return this.entityId;
        }

        public final String getClientSecret() {
            return this.clientSecret;
        }

        public final OfflineApiRequest.ApiRequestType getRequestType() {
            return this.requestType;
        }

        public final String getUrl() {
            return this.url;
        }
    }
}
