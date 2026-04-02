package io.ktor.utils.io;

import androidx.concurrent.futures.AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.logging.type.LogSeverity;
import com.sun.jna.platform.win32.LMErr;
import com.sun.jna.platform.win32.WinError;
import io.ktor.utils.io.bits.Memory;
import io.ktor.utils.io.core.Buffer;
import io.ktor.utils.io.core.BufferPrimitivesJvmKt;
import io.ktor.utils.io.core.BytePacketBuilder;
import io.ktor.utils.io.core.ByteReadPacket;
import io.ktor.utils.io.core.OutputArraysJVMKt;
import io.ktor.utils.io.core.internal.ChunkBuffer;
import io.ktor.utils.io.core.internal.UnsafeKt;
import io.ktor.utils.io.internal.CancellableReusableContinuation;
import io.ktor.utils.io.internal.ClosedElement;
import io.ktor.utils.io.internal.FailedLookAhead;
import io.ktor.utils.io.internal.JoiningState;
import io.ktor.utils.io.internal.ObjectPoolKt;
import io.ktor.utils.io.internal.ReadSessionImpl;
import io.ktor.utils.io.internal.ReadWriteBufferState;
import io.ktor.utils.io.internal.RingBufferCapacity;
import io.ktor.utils.io.internal.TerminatedLookAhead;
import io.ktor.utils.io.internal.WriteSessionImpl;
import io.ktor.utils.io.pool.ObjectPool;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ClosedReceiveChannelException;

/* JADX INFO: compiled from: ByteBufferChannel.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ò\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0004\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\bB\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0010\u0018\u0000 ó\u00022\u00030õ\u00022\u00030ö\u00022\u00030÷\u00022\u00020k2\u00030ø\u00022\u00030ù\u0002:\u0002ó\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004B)\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0003\u0010\fJ\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0017¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0019J\u0013\u0010\u001b\u001a\u00020\u0014H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u0014H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001cJ\u0013\u0010\u001e\u001a\u00020\u0014H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001cJ/\u0010\"\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\n2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 H\u0082@ø\u0001\u0000¢\u0006\u0004\b\"\u0010#J\u0011\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b%\u0010&J'\u0010*\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\nH\u0000¢\u0006\u0004\b(\u0010)J\u0019\u0010-\u001a\u00020\u00052\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b-\u0010.J\u0019\u0010/\u001a\u00020\u00052\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b/\u0010.JP\u00105\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u000526\u00104\u001a2\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u000501H\u0082\b¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0004\b7\u00108J-\u0010@\u001a\u00020:2\u0006\u00109\u001a\u00020\u00002\u0006\u0010;\u001a\u00020:2\b\u0010=\u001a\u0004\u0018\u00010<H\u0080@ø\u0001\u0000¢\u0006\u0004\b>\u0010?J\u000f\u0010D\u001a\u00020AH\u0000¢\u0006\u0004\bB\u0010CJ,\u0010G\u001a\u00020\u00142\u0017\u0010F\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bEH\u0082Hø\u0001\u0000¢\u0006\u0004\bG\u0010HJ4\u0010I\u001a\u00020\u00142\u0006\u0010=\u001a\u00020<2\u0017\u0010!\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bEH\u0082Hø\u0001\u0000¢\u0006\u0004\bI\u0010JJ\u001b\u0010L\u001a\u00020:2\u0006\u0010K\u001a\u00020:H\u0096@ø\u0001\u0000¢\u0006\u0004\bL\u0010MJ#\u0010O\u001a\u00020:2\u0006\u0010N\u001a\u00020:2\u0006\u0010K\u001a\u00020:H\u0082@ø\u0001\u0000¢\u0006\u0004\bO\u0010PJA\u0010S\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\u0017\u0010R\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bEH\u0082\b¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0014H\u0016¢\u0006\u0004\bU\u0010VJ\u0017\u0010X\u001a\u00020\u00142\u0006\u0010W\u001a\u00020\nH\u0016¢\u0006\u0004\bX\u00108J\u0017\u0010Y\u001a\u00020\u00142\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\u0014H\u0016¢\u0006\u0004\b[\u0010VJ\u0017\u0010]\u001a\u00020\u00142\u0006\u0010\\\u001a\u00020\nH\u0002¢\u0006\u0004\b]\u00108J\u0011\u0010`\u001a\u0004\u0018\u00010<H\u0000¢\u0006\u0004\b^\u0010_J#\u0010d\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u00002\u0006\u0010a\u001a\u00020\u0005H\u0080@ø\u0001\u0000¢\u0006\u0004\bb\u0010cJ+\u0010e\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u00002\u0006\u0010a\u001a\u00020\u00052\u0006\u0010=\u001a\u00020<H\u0082@ø\u0001\u0000¢\u0006\u0004\be\u0010fJ.\u0010i\u001a\u00028\u0000\"\u0004\b\u0000\u0010g2\u0017\u00104\u001a\u0013\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00028\u00000 ¢\u0006\u0002\bEH\u0017¢\u0006\u0004\bi\u0010jJB\u0010n\u001a\u00028\u0000\"\u0004\b\u0000\u0010g2'\u00104\u001a#\b\u0001\u0012\u0004\u0012\u00020k\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000l\u0012\u0006\u0012\u0004\u0018\u00010m01¢\u0006\u0002\bEH\u0097@ø\u0001\u0000¢\u0006\u0004\bn\u0010oJ\u000f\u0010p\u001a\u00020\bH\u0002¢\u0006\u0004\bp\u0010qJA\u0010x\u001a\u00020:2\u0006\u0010s\u001a\u00020r2\u0006\u0010t\u001a\u00020:2\u0006\u0010u\u001a\u00020:2\u0006\u0010\u001f\u001a\u00020:2\u0006\u0010K\u001a\u00020:H\u0096@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0004\bv\u0010wJ\u001f\u0010|\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010y\u001a\u00020\nH\u0000¢\u0006\u0004\bz\u0010{J/\u0010~\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\n2\u0012\u0010}\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 H\u0096@ø\u0001\u0000¢\u0006\u0004\b~\u0010#J/\u0010\u0081\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0001\u001a\u00020\u007f2\b\b\u0002\u00107\u001a\u00020\n2\b\b\u0002\u0010K\u001a\u00020\nH\u0002¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u001b\u0010\u0081\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0001\u001a\u00020\u0001H\u0002¢\u0006\u0006\b\u0081\u0001\u0010\u0083\u0001J-\u0010\u0081\u0001\u001a\u00020\n2\b\u0010\u0080\u0001\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0002¢\u0006\u0006\b\u0081\u0001\u0010\u0086\u0001J \u0010\u0088\u0001\u001a\u00020\n2\b\u0010\u0080\u0001\u001a\u00030\u0087\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u001f\u0010\u0088\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0001\u001a\u00020\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0088\u0001\u0010\u008a\u0001J1\u0010\u0088\u0001\u001a\u00020\n2\b\u0010\u0080\u0001\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0088\u0001\u0010\u008b\u0001J.\u0010\u0088\u0001\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 H\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u008c\u0001J \u0010\u008d\u0001\u001a\u00020\n2\b\u0010\u0080\u0001\u001a\u00030\u0087\u0001H\u0082@ø\u0001\u0000¢\u0006\u0006\b\u008d\u0001\u0010\u0089\u0001J\u001f\u0010\u008d\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0001\u001a\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0006\b\u008d\u0001\u0010\u008a\u0001J1\u0010\u008d\u0001\u001a\u00020\n2\b\u0010\u0080\u0001\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b\u008d\u0001\u0010\u008b\u0001J1\u0010\u008e\u0001\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\n2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 H\u0082@ø\u0001\u0000¢\u0006\u0005\b\u008e\u0001\u0010#J\u0015\u0010\u008f\u0001\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0005\b\u008f\u0001\u0010\u001cJ\u0016\u0010\u0091\u0001\u001a\u00030\u0090\u0001H\u0086@ø\u0001\u0000¢\u0006\u0005\b\u0091\u0001\u0010\u001cJ\u0016\u0010\u0093\u0001\u001a\u00030\u0092\u0001H\u0086@ø\u0001\u0000¢\u0006\u0005\b\u0093\u0001\u0010\u001cJ\u0016\u0010\u0095\u0001\u001a\u00030\u0094\u0001H\u0086@ø\u0001\u0000¢\u0006\u0005\b\u0095\u0001\u0010\u001cJ(\u0010\u0096\u0001\u001a\u00020\u00142\b\u0010\u0080\u0001\u001a\u00030\u0087\u00012\u0006\u0010\u0017\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u001f\u0010\u0096\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0001\u001a\u00020\u0001H\u0086@ø\u0001\u0000¢\u0006\u0006\b\u0096\u0001\u0010\u008a\u0001J1\u0010\u0096\u0001\u001a\u00020\u00142\b\u0010\u0080\u0001\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0006\b\u0096\u0001\u0010\u008b\u0001J(\u0010\u0098\u0001\u001a\u00020\u00142\b\u0010\u0080\u0001\u001a\u00030\u0087\u00012\u0006\u0010\u0017\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b\u0098\u0001\u0010\u0097\u0001J(\u0010\u0098\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0001\u001a\u00020\u00012\u0007\u0010\u0099\u0001\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b\u0098\u0001\u0010\u009a\u0001J1\u0010\u0098\u0001\u001a\u00020\u00142\b\u0010\u0080\u0001\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b\u0098\u0001\u0010\u008b\u0001J\u0015\u0010\u009b\u0001\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0005\b\u009b\u0001\u0010\u001cJ\u0015\u0010\u009c\u0001\u001a\u00020:H\u0086@ø\u0001\u0000¢\u0006\u0005\b\u009c\u0001\u0010\u001cJ\u001e\u0010\u009e\u0001\u001a\u00030\u009d\u00012\u0006\u0010Q\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0005\b\u009e\u0001\u0010\u0019J1\u0010¡\u0001\u001a\u00030\u009d\u00012\u0006\u0010Q\u001a\u00020\n2\b\u0010 \u0001\u001a\u00030\u009f\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0006\b¡\u0001\u0010¢\u0001JC\u0010¦\u0001\u001a\u00028\u0000\"\n\b\u0000\u0010¤\u0001*\u00030£\u00012\u0006\u0010Q\u001a\u00020\n2\u0018\u0010¥\u0001\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00028\u00000 ¢\u0006\u0002\bEH\u0082Hø\u0001\u0000¢\u0006\u0005\b¦\u0001\u0010#J\u001e\u0010§\u0001\u001a\u00030\u009d\u00012\u0006\u0010;\u001a\u00020:H\u0096@ø\u0001\u0000¢\u0006\u0005\b§\u0001\u0010MJ\u001e\u0010¨\u0001\u001a\u00030\u009d\u00012\u0006\u0010;\u001a\u00020:H\u0082@ø\u0001\u0000¢\u0006\u0005\b¨\u0001\u0010MJ,\u0010ª\u0001\u001a\u00020\u00142\u0018\u0010}\u001a\u0014\u0012\u0005\u0012\u00030©\u0001\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bEH\u0017¢\u0006\u0006\bª\u0001\u0010«\u0001J\u0016\u0010\u00ad\u0001\u001a\u00030¬\u0001H\u0086@ø\u0001\u0000¢\u0006\u0005\b\u00ad\u0001\u0010\u001cJ\u001d\u0010®\u0001\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0005\b®\u0001\u0010\u0019J\u001d\u0010¯\u0001\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0005\b¯\u0001\u0010\u0019J\u001d\u0010°\u0001\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0005\b°\u0001\u0010\u0019J\u001b\u0010±\u0001\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\nH\u0082\b¢\u0006\u0006\b±\u0001\u0010²\u0001J?\u0010´\u0001\u001a\u00020\u00142(\u0010}\u001a$\b\u0001\u0012\u0005\u0012\u00030³\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140l\u0012\u0006\u0012\u0004\u0018\u00010m01¢\u0006\u0002\bEH\u0097@ø\u0001\u0000¢\u0006\u0005\b´\u0001\u0010oJ \u0010¶\u0001\u001a\u0005\u0018\u00010µ\u00012\u0006\u0010;\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0005\b¶\u0001\u0010\u0019J8\u0010»\u0001\u001a\u00020\u0005\"\u000f\b\u0000\u0010¹\u0001*\b0·\u0001j\u0003`¸\u00012\u0007\u0010º\u0001\u001a\u00028\u00002\u0006\u0010;\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0006\b»\u0001\u0010¼\u0001J-\u0010½\u0001\u001a\u00020\u00052\r\u0010º\u0001\u001a\b0·\u0001j\u0003`¸\u00012\u0006\u0010;\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b½\u0001\u0010¼\u0001J-\u0010¾\u0001\u001a\u00020\u00052\r\u0010º\u0001\u001a\b0·\u0001j\u0003`¸\u00012\u0006\u0010;\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b¾\u0001\u0010¼\u0001J2\u0010¿\u0001\u001a\u00020\u00052\u001d\u0010!\u001a\u0019\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000501¢\u0006\u0002\bEH\u0082\b¢\u0006\u0006\b¿\u0001\u0010À\u0001J\u001a\u0010Á\u0001\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\bH\u0002¢\u0006\u0006\bÁ\u0001\u0010Â\u0001J\u001b\u0010Ã\u0001\u001a\u00030\u009d\u00012\u0006\u0010;\u001a\u00020:H\u0002¢\u0006\u0006\bÃ\u0001\u0010Ä\u0001J&\u0010Ç\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010Å\u0001\u001a\u00020\n2\u0007\u0010Æ\u0001\u001a\u00020\nH\u0016¢\u0006\u0006\bÇ\u0001\u0010È\u0001J\u0012\u0010Ë\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0006\bÉ\u0001\u0010Ê\u0001J&\u0010Î\u0001\u001a\u0004\u0018\u00010\u00002\u0007\u0010Ì\u0001\u001a\u00020\u00002\u0007\u0010Í\u0001\u001a\u00020<H\u0002¢\u0006\u0006\bÎ\u0001\u0010Ï\u0001J\u0011\u0010Ð\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÐ\u0001\u0010VJ\u0011\u0010Ò\u0001\u001a\u00020\u0014H\u0000¢\u0006\u0005\bÑ\u0001\u0010VJ\u001c\u0010Ó\u0001\u001a\u00020\u00142\b\u0010,\u001a\u0004\u0018\u00010+H\u0002¢\u0006\u0006\bÓ\u0001\u0010Ô\u0001J\u0011\u0010Õ\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÕ\u0001\u0010VJ#\u0010Õ\u0001\u001a\u00020\u00142\u000e\u0010×\u0001\u001a\t\u0012\u0004\u0012\u00020+0Ö\u0001H\u0082\b¢\u0006\u0006\bÕ\u0001\u0010Ø\u0001J\u0011\u0010Ù\u0001\u001a\u00020\u0014H\u0002¢\u0006\u0005\bÙ\u0001\u0010VJ#\u0010Û\u0001\u001a\u00020<2\u0007\u0010Ú\u0001\u001a\u00020\u00002\u0006\u0010a\u001a\u00020\u0005H\u0002¢\u0006\u0006\bÛ\u0001\u0010Ü\u0001J\u0014\u0010Ý\u0001\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0006\bÝ\u0001\u0010Þ\u0001J\u0014\u0010à\u0001\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0006\bß\u0001\u0010Þ\u0001J\u0012\u0010á\u0001\u001a\u00020\u0005H\u0002¢\u0006\u0006\bá\u0001\u0010â\u0001J\u0013\u0010ã\u0001\u001a\u00030³\u0001H\u0016¢\u0006\u0006\bã\u0001\u0010ä\u0001J(\u0010æ\u0001\u001a\u00020m2\u0006\u0010Q\u001a\u00020\n2\r\u0010å\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050lH\u0002¢\u0006\u0005\bæ\u0001\u0010\u0019J\u0013\u0010ç\u0001\u001a\u00030µ\u0001H\u0016¢\u0006\u0006\bç\u0001\u0010è\u0001J\u001a\u0010é\u0001\u001a\u00020\u00052\u0006\u0010=\u001a\u00020<H\u0002¢\u0006\u0006\bé\u0001\u0010ê\u0001J\u001b\u0010ì\u0001\u001a\u00020\u00052\u0007\u0010ë\u0001\u001a\u00020\u0005H\u0002¢\u0006\u0006\bì\u0001\u0010í\u0001J\u0012\u0010ï\u0001\u001a\u00020\u0005H\u0000¢\u0006\u0006\bî\u0001\u0010â\u0001J\u001c\u0010ñ\u0001\u001a\u00020\n2\b\u0010ð\u0001\u001a\u00030\u009d\u0001H\u0002¢\u0006\u0006\bñ\u0001\u0010ò\u0001J\u001d\u0010ô\u0001\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020\nH\u0080@ø\u0001\u0000¢\u0006\u0005\bó\u0001\u0010\u0019J1\u0010õ\u0001\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\n2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 H\u0096@ø\u0001\u0000¢\u0006\u0005\bõ\u0001\u0010#J\u001a\u0010ö\u0001\u001a\u00020\n2\u0006\u00109\u001a\u00020\u007fH\u0002¢\u0006\u0006\bö\u0001\u0010÷\u0001J\u001a\u0010ö\u0001\u001a\u00020\n2\u0006\u00109\u001a\u00020\u0001H\u0002¢\u0006\u0006\bö\u0001\u0010\u0083\u0001J,\u0010ö\u0001\u001a\u00020\n2\u0007\u00109\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0002¢\u0006\u0006\bö\u0001\u0010\u0086\u0001J\u001f\u0010ø\u0001\u001a\u00020\n2\u0007\u00109\u001a\u00030\u0087\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\bø\u0001\u0010\u0089\u0001J\u001e\u0010ø\u0001\u001a\u00020\n2\u0006\u00109\u001a\u00020\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\bø\u0001\u0010\u008a\u0001J0\u0010ø\u0001\u001a\u00020\n2\u0007\u00109\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0006\bø\u0001\u0010\u008b\u0001J.\u0010ø\u0001\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 H\u0016¢\u0006\u0006\bø\u0001\u0010\u008c\u0001J\u001f\u0010ù\u0001\u001a\u00020\n2\u0007\u00109\u001a\u00030\u0087\u0001H\u0082@ø\u0001\u0000¢\u0006\u0006\bù\u0001\u0010\u0089\u0001J\u001e\u0010ù\u0001\u001a\u00020\n2\u0006\u00109\u001a\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0006\bù\u0001\u0010\u008a\u0001J \u0010û\u0001\u001a\u00020\u00142\b\u0010ú\u0001\u001a\u00030\u0090\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\bû\u0001\u0010ü\u0001J \u0010þ\u0001\u001a\u00020\u00142\b\u0010ý\u0001\u001a\u00030\u0092\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\bþ\u0001\u0010ÿ\u0001J \u0010\u0081\u0002\u001a\u00020\u00142\b\u0010\u0080\u0002\u001a\u00030\u0094\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0081\u0002\u0010\u0082\u0002J7\u0010\u0088\u0002\u001a\u00020\u00142\u0007\u0010\u0083\u0002\u001a\u00020r2\u0007\u0010\u0084\u0002\u001a\u00020\n2\u0007\u0010\u0085\u0002\u001a\u00020\nH\u0096@ø\u0001\u0001ø\u0001\u0000ø\u0001\u0000¢\u0006\u0006\b\u0086\u0002\u0010\u0087\u0002J\u001e\u0010\u0088\u0002\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u007fH\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0088\u0002\u0010\u0089\u0002J\u001e\u0010\u0088\u0002\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0088\u0002\u0010\u008a\u0001J0\u0010\u0088\u0002\u001a\u00020\u00142\u0007\u00109\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0088\u0002\u0010\u008b\u0001J\u001e\u0010\u008a\u0002\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u007fH\u0082@ø\u0001\u0000¢\u0006\u0006\b\u008a\u0002\u0010\u0089\u0002J\u001e\u0010\u008a\u0002\u001a\u00020\u00142\u0006\u00109\u001a\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0006\b\u008a\u0002\u0010\u008a\u0001J0\u0010\u008a\u0002\u001a\u00020\u00142\u0007\u00109\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b\u008a\u0002\u0010\u008b\u0001J\u001e\u0010\u008c\u0002\u001a\u00020\u00142\u0007\u0010\u008b\u0002\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0005\b\u008c\u0002\u0010\u0019J\u001e\u0010\u008e\u0002\u001a\u00020\u00142\u0007\u0010\u008d\u0002\u001a\u00020:H\u0096@ø\u0001\u0000¢\u0006\u0005\b\u008e\u0002\u0010MJ \u0010\u008f\u0002\u001a\u00020\u00142\b\u0010ð\u0001\u001a\u00030\u009d\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u008f\u0002\u0010\u0090\u0002J \u0010\u0091\u0002\u001a\u00020\u00142\b\u0010ð\u0001\u001a\u00030\u009d\u0001H\u0082@ø\u0001\u0000¢\u0006\u0006\b\u0091\u0002\u0010\u0090\u0002JQ\u0010\u0093\u0002\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020\n2\u0017\u0010F\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bE2\u0018\u0010\u0092\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bEH\u0082Hø\u0001\u0000¢\u0006\u0006\b\u0093\u0002\u0010\u0094\u0002J \u0010\u0096\u0002\u001a\u00020\u00142\b\u0010\u0095\u0002\u001a\u00030¬\u0001H\u0096@ø\u0001\u0000¢\u0006\u0006\b\u0096\u0002\u0010\u0097\u0002J0\u0010\u0098\u0002\u001a\u00020\n2\u0007\u00109\u001a\u00030\u0084\u00012\u0006\u0010u\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0006\b\u0098\u0002\u0010\u008b\u0001J\u001d\u0010\u0098\u0002\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020\nH\u0082@ø\u0001\u0000¢\u0006\u0005\b\u0098\u0002\u0010\u0019J*\u0010\u009b\u0002\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020\n2\u000e\u0010\u009a\u0002\u001a\t\u0012\u0004\u0012\u00020\u00140\u0099\u0002H\u0002¢\u0006\u0006\b\u009b\u0002\u0010\u009c\u0002J\u001a\u0010\u009d\u0002\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\nH\u0002¢\u0006\u0006\b\u009d\u0002\u0010²\u0001J>\u0010\u009e\u0002\u001a\u00020\u00142'\u00104\u001a#\b\u0001\u0012\u0004\u0012\u00020$\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140l\u0012\u0006\u0012\u0004\u0018\u00010m01¢\u0006\u0002\bEH\u0097@ø\u0001\u0000¢\u0006\u0005\b\u009e\u0002\u0010oJ)\u0010\u009f\u0002\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050 H\u0096@ø\u0001\u0000¢\u0006\u0005\b\u009f\u0002\u0010HJ7\u0010 \u0002\u001a\u00020\u00052\u0007\u0010\u0080\u0001\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050 H\u0002¢\u0006\u0006\b \u0002\u0010¡\u0002J&\u0010¢\u0002\u001a\u00020\u00052\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050 H\u0002¢\u0006\u0006\b¢\u0002\u0010£\u0002J)\u0010¤\u0002\u001a\u00020\u00142\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050 H\u0082@ø\u0001\u0000¢\u0006\u0005\b¤\u0002\u0010HJ9\u0010¦\u0002\u001a\u00020\u00142$\u0010!\u001a \u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00140¥\u0002¢\u0006\u0002\bEH\u0082\b¢\u0006\u0006\b¦\u0002\u0010§\u0002J%\u0010¨\u0002\u001a\u00020\u0014*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\nH\u0002¢\u0006\u0005\b¨\u0002\u0010)J%\u0010©\u0002\u001a\u00020\u0014*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\nH\u0002¢\u0006\u0005\b©\u0002\u0010)J\u0015\u0010ª\u0002\u001a\u00020\u0014*\u00020\u0001H\u0002¢\u0006\u0005\bª\u0002\u0010\u0004J\u001f\u0010¬\u0002\u001a\u00020\n*\u00020\u00012\u0007\u0010«\u0002\u001a\u00020\nH\u0002¢\u0006\u0006\b¬\u0002\u0010\u00ad\u0002J(\u0010°\u0002\u001a\u00020\u0014*\u00020\u00012\u0007\u0010®\u0002\u001a\u00020\n2\u0007\u0010¯\u0002\u001a\u00020\nH\u0002¢\u0006\u0006\b°\u0002\u0010±\u0002J\u001d\u0010²\u0002\u001a\u00020\u0014*\u00020\u00012\u0006\u0010\u0017\u001a\u00020\nH\u0002¢\u0006\u0005\b²\u0002\u0010{J@\u0010³\u0002\u001a\u00020\u0005*\u00020\u00012\u0006\u0010Q\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0017\u0010R\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bEH\u0082\b¢\u0006\u0006\b³\u0002\u0010´\u0002J]\u0010µ\u0002\u001a\u00020\u0014*\u00020\u00012\u0006\u0010Q\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0017\u0010F\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bE2\u0018\u0010\u0092\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140 ¢\u0006\u0002\bEH\u0082Hø\u0001\u0000¢\u0006\u0006\bµ\u0002\u0010¶\u0002R\u001b\u0010·\u0002\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0002\u0010¸\u0002R\u001d\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\u000f\n\u0005\b\u0006\u0010¹\u0002\u001a\u0006\bº\u0002\u0010â\u0001R\u0017\u0010½\u0002\u001a\u00020\n8VX\u0096\u0004¢\u0006\b\u001a\u0006\b»\u0002\u0010¼\u0002R\u0017\u0010¿\u0002\u001a\u00020\n8VX\u0096\u0004¢\u0006\b\u001a\u0006\b¾\u0002\u0010¼\u0002R0\u0010Æ\u0002\u001a\u0005\u0018\u00010À\u00022\n\u0010Á\u0002\u001a\u0005\u0018\u00010À\u00028B@BX\u0082\u000e¢\u0006\u0010\u001a\u0006\bÂ\u0002\u0010Ã\u0002\"\u0006\bÄ\u0002\u0010Å\u0002R\u0019\u0010É\u0002\u001a\u0004\u0018\u00010+8VX\u0096\u0004¢\u0006\b\u001a\u0006\bÇ\u0002\u0010È\u0002R\u0017\u0010Ê\u0002\u001a\u00020\u00058VX\u0096\u0004¢\u0006\b\u001a\u0006\bÊ\u0002\u0010â\u0001R\u0017\u0010Ë\u0002\u001a\u00020\u00058VX\u0096\u0004¢\u0006\b\u001a\u0006\bË\u0002\u0010â\u0001R\u001b\u0010Í\u0001\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0001\u0010Ì\u0002R\u001b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\t\u0010Í\u0002R:\u0010Ò\u0002\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010l2\u000f\u0010Á\u0002\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010l8B@BX\u0082\u000e¢\u0006\u0010\u001a\u0006\bÎ\u0002\u0010Ï\u0002\"\u0006\bÐ\u0002\u0010Ñ\u0002R\u0019\u0010Ó\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0002\u0010Ô\u0002R\u001f\u0010ª\u0001\u001a\u00030Õ\u00028\u0002X\u0082\u0004¢\u0006\u000f\n\u0006\bª\u0001\u0010Ö\u0002\u0012\u0005\b×\u0002\u0010VR\u001e\u0010Ù\u0002\u001a\t\u0012\u0004\u0012\u00020\u00050Ø\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÙ\u0002\u0010Ú\u0002R\u001d\u0010\u000b\u001a\u00020\n8\u0000X\u0080\u0004¢\u0006\u000f\n\u0005\b\u000b\u0010Ô\u0002\u001a\u0006\bÛ\u0002\u0010¼\u0002R\u0016\u0010Ý\u0002\u001a\u00020A8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bÜ\u0002\u0010CR2\u0010ß\u0002\u001a\u00020:2\u0007\u0010Þ\u0002\u001a\u00020:8\u0016@PX\u0096\u000e¢\u0006\u0018\n\u0006\bß\u0002\u0010à\u0002\u001a\u0006\bá\u0002\u0010â\u0002\"\u0006\bã\u0002\u0010ä\u0002R2\u0010å\u0002\u001a\u00020:2\u0007\u0010Þ\u0002\u001a\u00020:8\u0016@PX\u0096\u000e¢\u0006\u0018\n\u0006\bå\u0002\u0010à\u0002\u001a\u0006\bæ\u0002\u0010â\u0002\"\u0006\bç\u0002\u0010ä\u0002R:\u0010ê\u0002\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010l2\u000f\u0010Á\u0002\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010l8B@BX\u0082\u000e¢\u0006\u0010\u001a\u0006\bè\u0002\u0010Ï\u0002\"\u0006\bé\u0002\u0010Ñ\u0002R\u0019\u0010ë\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0002\u0010Ô\u0002R\u0018\u0010í\u0002\u001a\u00030ì\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bí\u0002\u0010î\u0002R\u001e\u0010ï\u0002\u001a\t\u0012\u0004\u0012\u00020\u00140Ø\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bï\u0002\u0010Ú\u0002R)\u0010ð\u0002\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140l\u0012\u0004\u0012\u00020m0 8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bð\u0002\u0010ñ\u0002R\u0019\u0010ò\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bò\u0002\u0010Ô\u0002\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006ô\u0002"}, d2 = {"Lio/ktor/utils/io/ByteBufferChannel;", "Ljava/nio/ByteBuffer;", FirebaseAnalytics.Param.CONTENT, "<init>", "(Ljava/nio/ByteBuffer;)V", "", "autoFlush", "Lio/ktor/utils/io/pool/ObjectPool;", "Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;", "pool", "", "reservedSize", "(ZLio/ktor/utils/io/pool/ObjectPool;I)V", "buffer", "Lio/ktor/utils/io/internal/RingBufferCapacity;", "capacity", "afterBufferVisited", "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;)I", "Lkotlinx/coroutines/Job;", "job", "", "attachJob", "(Lkotlinx/coroutines/Job;)V", "n", "awaitAtLeast", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitAtLeastSuspend", "awaitClose", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitContent", "awaitFreeSpace", "min", "Lkotlin/Function1;", "block", "awaitFreeSpaceOrDelegate", "(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lio/ktor/utils/io/WriterSuspendSession;", "beginWriteSession", "()Lio/ktor/utils/io/WriterSuspendSession;", "count", "bytesWrittenFromSession$ktor_io", "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V", "bytesWrittenFromSession", "", "cause", "cancel", "(Ljava/lang/Throwable;)Z", "close", "last", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "visitor", "consumeEachBufferRangeFast", "(ZLkotlin/jvm/functions/Function2;)Z", "consumed", "(I)V", "src", "", "limit", "Lio/ktor/utils/io/internal/JoiningState;", "joined", "copyDirect$ktor_io", "(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/JoiningState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "copyDirect", "Lio/ktor/utils/io/internal/ReadWriteBufferState;", "currentState$ktor_io", "()Lio/ktor/utils/io/internal/ReadWriteBufferState;", "currentState", "Lkotlin/ExtensionFunctionType;", "channelWriter", "delegatePrimitive", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "delegateSuspend", "(Lio/ktor/utils/io/internal/JoiningState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "max", "discard", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "discarded0", "discardSuspend", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "size", "writer", "doWritePrimitive", "(ILjava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/functions/Function1;)V", "endReadSession", "()V", "written", "endWriteSession", "ensureClosedJoined", "(Lio/ktor/utils/io/internal/JoiningState;)V", "flush", "minWriteSize", "flushImpl", "getJoining$ktor_io", "()Lio/ktor/utils/io/internal/JoiningState;", "getJoining", "delegateClose", "joinFrom$ktor_io", "(Lio/ktor/utils/io/ByteBufferChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinFrom", "joinFromSuspend", "(Lio/ktor/utils/io/ByteBufferChannel;ZLio/ktor/utils/io/internal/JoiningState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lio/ktor/utils/io/LookAheadSession;", "lookAhead", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lio/ktor/utils/io/LookAheadSuspendSession;", "Lkotlin/coroutines/Continuation;", "", "lookAheadSuspend", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "newBuffer", "()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;", "Lio/ktor/utils/io/bits/Memory;", FirebaseAnalytics.Param.DESTINATION, "destinationOffset", TypedValues.CycleType.S_WAVE_OFFSET, "peekTo-lBXzO7A", "(Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "peekTo", "lockedSpace", "prepareWriteBuffer$ktor_io", "(Ljava/nio/ByteBuffer;I)V", "prepareWriteBuffer", "consumer", "read", "Lio/ktor/utils/io/core/Buffer;", "dst", "readAsMuchAsPossible", "(Lio/ktor/utils/io/core/Buffer;II)I", "(Ljava/nio/ByteBuffer;)I", "", "length", "([BII)I", "Lio/ktor/utils/io/core/internal/ChunkBuffer;", "readAvailable", "(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(ILkotlin/jvm/functions/Function1;)I", "readAvailableSuspend", "readBlockSuspend", "readBoolean", "", "readByte", "", "readDouble", "", "readFloat", "readFully", "(Lio/ktor/utils/io/core/internal/ChunkBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readFullySuspend", "rc0", "(Ljava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readInt", "readLong", "Lio/ktor/utils/io/core/ByteReadPacket;", "readPacket", "Lio/ktor/utils/io/core/BytePacketBuilder;", "builder", "readPacketSuspend", "(ILio/ktor/utils/io/core/BytePacketBuilder;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "T", "getter", "readPrimitive", "readRemaining", "readRemainingSuspend", "Lio/ktor/utils/io/ReadSession;", "readSession", "(Lkotlin/jvm/functions/Function1;)V", "", "readShort", "readSuspend", "readSuspendImpl", "readSuspendLoop", "readSuspendPredicate", "(I)Z", "Lio/ktor/utils/io/SuspendableReadSession;", "readSuspendableSession", "", "readUTF8Line", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "A", "out", "readUTF8LineTo", "(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readUTF8LineToAscii", "readUTF8LineToUtf8Suspend", "reading", "(Lkotlin/jvm/functions/Function2;)Z", "releaseBuffer", "(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V", "remainingPacket", "(J)Lio/ktor/utils/io/core/ByteReadPacket;", "skip", "atLeast", "request", "(II)Ljava/nio/ByteBuffer;", "resolveChannelInstance$ktor_io", "()Lio/ktor/utils/io/ByteBufferChannel;", "resolveChannelInstance", "current", "joining", "resolveDelegation", "(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/internal/JoiningState;)Lio/ktor/utils/io/ByteBufferChannel;", "restoreStateAfterRead", "restoreStateAfterWrite$ktor_io", "restoreStateAfterWrite", "resumeClosed", "(Ljava/lang/Throwable;)V", "resumeReadOp", "Lkotlin/Function0;", "exception", "(Lkotlin/jvm/functions/Function0;)V", "resumeWriteOp", "delegate", "setupDelegateTo", "(Lio/ktor/utils/io/ByteBufferChannel;Z)Lio/ktor/utils/io/internal/JoiningState;", "setupStateForRead", "()Ljava/nio/ByteBuffer;", "setupStateForWrite$ktor_io", "setupStateForWrite", "shouldResumeReadOp", "()Z", "startReadSession", "()Lio/ktor/utils/io/SuspendableReadSession;", "continuation", "suspensionForSize", "toString", "()Ljava/lang/String;", "tryCompleteJoining", "(Lio/ktor/utils/io/internal/JoiningState;)Z", "forceTermination", "tryReleaseBuffer", "(Z)Z", "tryTerminate$ktor_io", "tryTerminate", "packet", "tryWritePacketPart", "(Lio/ktor/utils/io/core/ByteReadPacket;)I", "tryWriteSuspend$ktor_io", "tryWriteSuspend", "write", "writeAsMuchAsPossible", "(Lio/ktor/utils/io/core/Buffer;)I", "writeAvailable", "writeAvailableSuspend", PrinterTextParser.TAGS_FORMAT_TEXT_BOLD, "writeByte", "(BLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "d", "writeDouble", "(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "writeFloat", "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "memory", "startIndex", "endIndex", "writeFully-JT6ljtQ", "(Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeFully", "(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeFullySuspend", "i", "writeInt", "l", "writeLong", "writePacket", "(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writePacketSuspend", "bufferWriter", "writePrimitive", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "s", "writeShort", "(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeSuspend", "Lkotlinx/coroutines/CancellableContinuation;", "c", "writeSuspendBlock", "(ILkotlinx/coroutines/CancellableContinuation;)V", "writeSuspendPredicate", "writeSuspendSession", "writeWhile", "writeWhileLoop", "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/functions/Function1;)Z", "writeWhileNoSuspend", "(Lkotlin/jvm/functions/Function1;)Z", "writeWhileSuspend", "Lkotlin/Function3;", "writing", "(Lkotlin/jvm/functions/Function3;)V", "bytesRead", "bytesWritten", "carry", "idx", "carryIndex", "(Ljava/nio/ByteBuffer;I)I", "position", "available", "prepareBuffer", "(Ljava/nio/ByteBuffer;II)V", "rollBytes", "tryWritePrimitive", "(Ljava/nio/ByteBuffer;ILio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/functions/Function1;)Z", "writeSuspendPrimitive", "(Ljava/nio/ByteBuffer;ILio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "attachedJob", "Lkotlinx/coroutines/Job;", "Z", "getAutoFlush", "getAvailableForRead", "()I", "availableForRead", "getAvailableForWrite", "availableForWrite", "Lio/ktor/utils/io/internal/ClosedElement;", "value", "getClosed", "()Lio/ktor/utils/io/internal/ClosedElement;", "setClosed", "(Lio/ktor/utils/io/internal/ClosedElement;)V", "closed", "getClosedCause", "()Ljava/lang/Throwable;", "closedCause", "isClosedForRead", "isClosedForWrite", "Lio/ktor/utils/io/internal/JoiningState;", "Lio/ktor/utils/io/pool/ObjectPool;", "getReadOp", "()Lkotlin/coroutines/Continuation;", "setReadOp", "(Lkotlin/coroutines/Continuation;)V", "readOp", "readPosition", "I", "Lio/ktor/utils/io/internal/ReadSessionImpl;", "Lio/ktor/utils/io/internal/ReadSessionImpl;", "getReadSession$annotations", "Lio/ktor/utils/io/internal/CancellableReusableContinuation;", "readSuspendContinuationCache", "Lio/ktor/utils/io/internal/CancellableReusableContinuation;", "getReservedSize$ktor_io", "getState", RemoteConfigConstants.ResponseFieldKey.STATE, "<set-?>", "totalBytesRead", "J", "getTotalBytesRead", "()J", "setTotalBytesRead$ktor_io", "(J)V", "totalBytesWritten", "getTotalBytesWritten", "setTotalBytesWritten$ktor_io", "getWriteOp", "setWriteOp", "writeOp", "writePosition", "Lio/ktor/utils/io/internal/WriteSessionImpl;", "writeSession", "Lio/ktor/utils/io/internal/WriteSessionImpl;", "writeSuspendContinuationCache", "writeSuspension", "Lkotlin/jvm/functions/Function1;", "writeSuspensionSize", "Companion", "ktor-io", "Lio/ktor/utils/io/ByteChannel;", "Lio/ktor/utils/io/ByteReadChannel;", "Lio/ktor/utils/io/ByteWriteChannel;", "Lio/ktor/utils/io/HasReadSession;", "Lio/ktor/utils/io/HasWriteSession;"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class ByteBufferChannel implements ByteChannel, ByteReadChannel, ByteWriteChannel, LookAheadSuspendSession, HasReadSession, HasWriteSession {
    private static final int ReservedLongIndex = -8;
    private volatile /* synthetic */ Object _closed;
    private volatile /* synthetic */ Object _readOp;
    private volatile /* synthetic */ Object _state;
    volatile /* synthetic */ Object _writeOp;
    private volatile Job attachedJob;
    private final boolean autoFlush;
    private volatile JoiningState joining;
    private final ObjectPool<ReadWriteBufferState.Initial> pool;
    private int readPosition;
    private final ReadSessionImpl readSession;
    private final CancellableReusableContinuation<Boolean> readSuspendContinuationCache;
    private final int reservedSize;
    private volatile long totalBytesRead;
    private volatile long totalBytesWritten;
    private int writePosition;
    private final WriteSessionImpl writeSession;
    private final CancellableReusableContinuation<Unit> writeSuspendContinuationCache;
    private final Function1<Continuation<? super Unit>, Object> writeSuspension;
    private volatile int writeSuspensionSize;
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_state");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closed$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_closed");
    private static final /* synthetic */ AtomicReferenceFieldUpdater _readOp$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_readOp");
    static final /* synthetic */ AtomicReferenceFieldUpdater _writeOp$FU = AtomicReferenceFieldUpdater.newUpdater(ByteBufferChannel.class, Object.class, "_writeOp");

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$awaitAtLeastSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0}, l = {1871}, m = "awaitAtLeastSuspend", n = {"this"}, s = {"L$0"})
    static final class C05821 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05821(Continuation<? super C05821> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.awaitAtLeastSuspend(0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0}, l = {1512, 1513}, m = "awaitFreeSpaceOrDelegate", n = {"this", "block", "min"}, s = {"L$0", "L$1", "I$0"})
    static final class C05831 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05831(Continuation<? super C05831> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.awaitFreeSpaceOrDelegate(0, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$discardSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0}, l = {WinError.RPC_S_INVALID_BINDING}, m = "discardSuspend", n = {"this", "discarded", "max"}, s = {"L$0", "L$1", "J$0"})
    static final class C05841 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05841(Continuation<? super C05841> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.discardSuspend(0L, 0L, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$joinFromSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0}, l = {WinError.ERROR_MAGAZINE_NOT_PRESENT, WinError.ERROR_POINT_NOT_FOUND}, m = "joinFromSuspend", n = {"this", "src", "delegateClose"}, s = {"L$0", "L$1", "Z$0"})
    static final class C05851 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C05851(Continuation<? super C05851> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.joinFromSuspend(null, false, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$lookAheadSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {2, 2, 2, 2, 5, 5}, l = {WinError.ERROR_TRUST_FAILURE, WinError.ERROR_NETLOGON_NOT_STARTED, WinError.ERROR_UNKNOWN_PRINTER_DRIVER, WinError.ERROR_PRINTER_ALREADY_EXISTS, WinError.ERROR_INVALID_DATATYPE, WinError.ERROR_NOLOGON_WORKSTATION_TRUST_ACCOUNT}, m = "lookAheadSuspend$suspendImpl", n = {"$this", "visitor", "result", "this_$iv", "$this", "result"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1"})
    static final class C05861<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C05861(Continuation<? super C05861> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.lookAheadSuspend$suspendImpl(ByteBufferChannel.this, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0}, l = {WinError.ERROR_DRIVERS_LEAKING_LOCKED_PAGES, WinError.ERROR_WAIT_3}, m = "readAvailableSuspend", n = {"this", "dst", TypedValues.CycleType.S_WAVE_OFFSET, "length"}, s = {"L$0", "L$1", "I$0", "I$1"})
    static final class C05871 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05871(Continuation<? super C05871> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readAvailableSuspend(null, 0, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$2, reason: invalid class name */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {WinError.ERROR_USER_APC, WinError.ERROR_REPARSE}, m = "readAvailableSuspend", n = {"this", "dst"}, s = {"L$0", "L$1"})
    static final class AnonymousClass2 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readAvailableSuspend((ByteBuffer) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3, reason: invalid class name */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {WinError.ERROR_NOTIFY_CLEANUP, WinError.ERROR_PAGE_FAULT_COPY_ON_WRITE}, m = "readAvailableSuspend", n = {"this", "dst"}, s = {"L$0", "L$1"})
    static final class AnonymousClass3 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readAvailableSuspend((ChunkBuffer) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0}, l = {WinError.RPC_S_OBJECT_NOT_FOUND, WinError.RPC_S_NO_BINDINGS}, m = "readBlockSuspend", n = {"this", "block", "min"}, s = {"L$0", "L$1", "I$0"})
    static final class C05881 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05881(Continuation<? super C05881> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readBlockSuspend(0, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readBoolean$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {}, l = {818}, m = "readBoolean", n = {}, s = {})
    static final class C05891 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C05891(Continuation<? super C05891> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readBoolean(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readByte$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {2437}, m = "readByte", n = {"this_$iv", "size$iv"}, s = {"L$0", "I$0"})
    static final class C05901 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05901(Continuation<? super C05901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readByte(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readDouble$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {2437}, m = "readDouble", n = {"this_$iv", "size$iv"}, s = {"L$0", "I$0"})
    static final class C05911 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05911(Continuation<? super C05911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readDouble(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readFloat$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {2437}, m = "readFloat", n = {"this_$iv", "size$iv"}, s = {"L$0", "I$0"})
    static final class C05921 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05921(Continuation<? super C05921> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readFloat(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0}, l = {WinError.ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT}, m = "readFullySuspend", n = {"this", "dst", "copied"}, s = {"L$0", "L$1", "I$0"})
    static final class C05931 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05931(Continuation<? super C05931> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readFullySuspend((ByteBuffer) null, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readFullySuspend$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0}, l = {608}, m = "readFullySuspend", n = {"this", "dst", "n", "copied"}, s = {"L$0", "L$1", "I$0", "I$1"})
    static final class C05942 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05942(Continuation<? super C05942> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readFullySuspend((ChunkBuffer) null, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readFullySuspend$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0, 0}, l = {WinError.ERROR_EVALUATION_EXPIRATION}, m = "readFullySuspend", n = {"this", "dst", "currentOffset", "currentLength", "consumed"}, s = {"L$0", "L$1", "I$0", "I$1", "I$2"})
    static final class C05953 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C05953(Continuation<? super C05953> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readFullySuspend(null, 0, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readInt$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {2437}, m = "readInt", n = {"this_$iv", "size$iv"}, s = {"L$0", "I$0"})
    static final class C05961 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05961(Continuation<? super C05961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readInt(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readLong$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {2437}, m = "readLong", n = {"this_$iv", "size$iv"}, s = {"L$0", "I$0"})
    static final class C05971 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C05971(Continuation<? super C05971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readLong(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0}, l = {LogSeverity.EMERGENCY_VALUE}, m = "readPacketSuspend", n = {"this", "builder", "buffer", "remaining"}, s = {"L$0", "L$1", "L$2", "I$0"})
    static final class C05981 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C05981(Continuation<? super C05981> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readPacketSuspend(0, null, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readRemainingSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0, 0}, l = {2093}, m = "readRemainingSuspend", n = {"this", "builder$iv", "remaining", "$this$writeWhile$iv", "tail$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C05991 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C05991(Continuation<? super C05991> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readRemainingSuspend(0L, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readShort$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {2437}, m = "readShort", n = {"this_$iv", "size$iv"}, s = {"L$0", "I$0"})
    static final class C06011 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06011(Continuation<? super C06011> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readShort(this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {LMErr.NERR_UserInGroup}, m = "readSuspendImpl", n = {"this", "size"}, s = {"L$0", "I$0"})
    static final class C06021 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06021(Continuation<? super C06021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readSuspendImpl(0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {LMErr.NERR_ServiceNotCtrl}, m = "readSuspendLoop", n = {"this", "size"}, s = {"L$0", "I$0"})
    static final class C06031 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06031(Continuation<? super C06031> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readSuspendLoop(0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readUTF8Line$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0}, l = {2055}, m = "readUTF8Line$suspendImpl", n = {"sb"}, s = {"L$0"})
    static final class C06051 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06051(Continuation<? super C06051> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.readUTF8Line$suspendImpl(ByteBufferChannel.this, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readUTF8LineToUtf8Suspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1}, l = {1960, 2036}, m = "readUTF8LineToUtf8Suspend", n = {"this", "out", "consumed", "required", "caret", "newLine", "output", "transferBuffer", "transferredRemaining", "limit", "this", "consumed", "caret", "newLine"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3"})
    static final class C06061 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;
        /* synthetic */ Object result;

        C06061(Continuation<? super C06061> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.readUTF8LineToUtf8Suspend(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$write$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0}, l = {1507}, m = "write$suspendImpl", n = {"$this", "block", "min"}, s = {"L$0", "L$1", "I$0"})
    static final class C06091 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06091(Continuation<? super C06091> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.write$suspendImpl(ByteBufferChannel.this, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {WinError.ERROR_SERVICE_MARKED_FOR_DELETE, WinError.ERROR_ALREADY_RUNNING_LKG, WinError.ERROR_BOOT_ALREADY_ACCEPTED}, m = "writeAvailableSuspend", n = {"this", "src"}, s = {"L$0", "L$1"})
    static final class C06101 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06101(Continuation<? super C06101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeAvailableSuspend((ByteBuffer) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {WinError.ERROR_CANNOT_DETECT_DRIVER_FAILURE, WinError.ERROR_NO_RECOVERY_PROGRAM, WinError.ERROR_NOT_SAFEBOOT_SERVICE}, m = "writeAvailableSuspend", n = {"this", "src"}, s = {"L$0", "L$1"})
    static final class C06113 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06113(Continuation<? super C06113> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeAvailableSuspend((ChunkBuffer) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeByte$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {3, 3, 3, 4, 4, 4, 4, 4, 7, 7, 7}, l = {936, 936, 936, 2426, LMErr.NERR_UPSInvalidConfig, 936, 936, LMErr.NERR_ImageParamErr}, m = "writeByte$suspendImpl", n = {"joined$iv$iv", "this_$iv$iv$iv", PrinterTextParser.TAGS_FORMAT_TEXT_BOLD, "capacity$iv", "this_$iv$iv", "$this$writeSuspendPrimitive$iv$iv", PrinterTextParser.TAGS_FORMAT_TEXT_BOLD, "size$iv", "joined$iv$iv$iv", "this_$iv$iv$iv$iv", PrinterTextParser.TAGS_FORMAT_TEXT_BOLD}, s = {"L$0", "L$1", "B$0", "L$0", "L$1", "L$2", "B$0", "I$0", "L$0", "L$1", "B$0"})
    static final class C06121 extends ContinuationImpl {
        byte B$0;
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C06121(Continuation<? super C06121> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.writeByte$suspendImpl(ByteBufferChannel.this, (byte) 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {WinError.ERROR_NO_UNICODE_TRANSLATION, WinError.ERROR_SHUTDOWN_IN_PROGRESS}, m = "writeFullySuspend", n = {"this", "src"}, s = {"L$0", "L$1"})
    static final class C06131 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06131(Continuation<? super C06131> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeFullySuspend((ByteBuffer) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {WinError.ERROR_FLOPPY_WRONG_CYLINDER, WinError.ERROR_FLOPPY_BAD_REGISTERS}, m = "writeFullySuspend", n = {"this", "src"}, s = {"L$0", "L$1"})
    static final class C06143 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06143(Continuation<? super C06143> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeFullySuspend((Buffer) null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5, reason: invalid class name */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0}, l = {WinError.ERROR_INVALID_COMBOBOX_MESSAGE}, m = "writeFullySuspend", n = {"this", "src", "currentOffset", "currentLength"}, s = {"L$0", "L$1", "I$0", "I$1"})
    static final class AnonymousClass5 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeFullySuspend(null, 0, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeInt$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {3, 3, 3, 4, 4, 4, 4, 4, 7, 7, 7}, l = {944, 944, 944, 2426, LMErr.NERR_UPSInvalidConfig, 944, 944, LMErr.NERR_ImageParamErr}, m = "writeInt$suspendImpl", n = {"joined$iv$iv", "this_$iv$iv$iv", "i", "capacity$iv", "this_$iv$iv", "$this$writeSuspendPrimitive$iv$iv", "i", "size$iv", "joined$iv$iv$iv", "this_$iv$iv$iv$iv", "i"}, s = {"L$0", "L$1", "I$0", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "I$0"})
    static final class C06151 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C06151(Continuation<? super C06151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.writeInt$suspendImpl(ByteBufferChannel.this, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeLong$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {3, 3, 3, 4, 4, 4, 4, 4, 7, 7, 7}, l = {948, 948, 948, 2426, LMErr.NERR_UPSInvalidConfig, 948, 948, LMErr.NERR_ImageParamErr}, m = "writeLong$suspendImpl", n = {"joined$iv$iv", "this_$iv$iv$iv", "l", "capacity$iv", "this_$iv$iv", "$this$writeSuspendPrimitive$iv$iv", "l", "size$iv", "joined$iv$iv$iv", "this_$iv$iv$iv$iv", "l"}, s = {"L$0", "L$1", "J$0", "L$0", "L$1", "L$2", "J$0", "I$0", "L$0", "L$1", "J$0"})
    static final class C06161 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C06161(Continuation<? super C06161> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.writeLong$suspendImpl(ByteBufferChannel.this, 0L, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writePacketSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 1}, l = {WinError.RPC_S_MAX_CALLS_TOO_SMALL, WinError.RPC_S_PROTSEQ_NOT_FOUND}, m = "writePacketSuspend", n = {"this", "packet", "packet"}, s = {"L$0", "L$1", "L$0"})
    static final class C06171 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06171(Continuation<? super C06171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writePacketSuspend(null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeShort$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {3, 3, 3, 4, 4, 4, 4, 4, 7, 7, 7}, l = {940, 940, 940, 2426, LMErr.NERR_UPSInvalidConfig, 940, 940, LMErr.NERR_ImageParamErr}, m = "writeShort$suspendImpl", n = {"joined$iv$iv", "this_$iv$iv$iv", "s", "capacity$iv", "this_$iv$iv", "$this$writeSuspendPrimitive$iv$iv", "s", "size$iv", "joined$iv$iv$iv", "this_$iv$iv$iv$iv", "s"}, s = {"L$0", "L$1", "S$0", "L$0", "L$1", "L$2", "S$0", "I$0", "L$0", "L$1", "S$0"})
    static final class C06181 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        short S$0;
        int label;
        /* synthetic */ Object result;

        C06181(Continuation<? super C06181> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.writeShort$suspendImpl(ByteBufferChannel.this, (short) 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0}, l = {WinError.ERROR_INVALID_SPI_VALUE, WinError.ERROR_HWNDS_HAVE_DIFF_PARENT}, m = "writeSuspend", n = {"this", "src", TypedValues.CycleType.S_WAVE_OFFSET, "length"}, s = {"L$0", "L$1", "I$0", "I$1"})
    static final class C06191 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C06191(Continuation<? super C06191> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeSuspend(null, 0, 0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeSuspend$3, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0}, l = {2412}, m = "writeSuspend", n = {"this", "size"}, s = {"L$0", "I$0"})
    static final class C06203 extends ContinuationImpl {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06203(Continuation<? super C06203> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeSuspend(0, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeSuspendSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0}, l = {1835}, m = "writeSuspendSession$suspendImpl", n = {"session"}, s = {"L$0"})
    static final class C06211 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06211(Continuation<? super C06211> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.writeSuspendSession$suspendImpl(ByteBufferChannel.this, null, this);
        }
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$writeWhileSuspend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel", f = "ByteBufferChannel.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, l = {1537, 1549}, m = "writeWhileSuspend", n = {"this", "block", "continueWriting", "this_$iv", "current$iv", "capacity$iv", "capacity", "dst", "$this$writeWhileSuspend_u24lambda_u2497", "before$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "J$0"})
    static final class C06221 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;
        /* synthetic */ Object result;

        C06221(Continuation<? super C06221> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ByteBufferChannel.this.writeWhileSuspend(null, this);
        }
    }

    private static /* synthetic */ void getReadSession$annotations() {
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object awaitContent(Continuation<? super Unit> continuation) {
        return awaitContent$suspendImpl(this, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object awaitFreeSpace(Continuation<? super Unit> continuation) {
        return awaitFreeSpace$suspendImpl(this, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object discard(long j, Continuation<? super Long> continuation) {
        return discard$suspendImpl(this, j, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Deprecated(message = "Use read { } instead.")
    public <R> Object lookAheadSuspend(Function2<? super LookAheadSuspendSession, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        return lookAheadSuspend$suspendImpl(this, function2, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    /* JADX INFO: renamed from: peekTo-lBXzO7A, reason: not valid java name */
    public Object mo531peekTolBXzO7A(ByteBuffer byteBuffer, long j, long j2, long j3, long j4, Continuation<? super Long> continuation) {
        return m529peekTolBXzO7A$suspendImpl(this, byteBuffer, j, j2, j3, j4, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object read(int i, Function1<? super ByteBuffer, Unit> function1, Continuation<? super Unit> continuation) {
        return read$suspendImpl(this, i, function1, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object readAvailable(ChunkBuffer chunkBuffer, Continuation<? super Integer> continuation) {
        return readAvailable$suspendImpl(this, chunkBuffer, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object readAvailable(ByteBuffer byteBuffer, Continuation<? super Integer> continuation) {
        return readAvailable$suspendImpl(this, byteBuffer, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object readAvailable(byte[] bArr, int i, int i2, Continuation<? super Integer> continuation) {
        return readAvailable$suspendImpl(this, bArr, i, i2, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object readFully(ChunkBuffer chunkBuffer, int i, Continuation<? super Unit> continuation) {
        return readFully$suspendImpl(this, chunkBuffer, i, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object readPacket(int i, Continuation<? super ByteReadPacket> continuation) {
        return readPacket$suspendImpl(this, i, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object readRemaining(long j, Continuation<? super ByteReadPacket> continuation) {
        return readRemaining$suspendImpl(this, j, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Deprecated(message = "Use read { } instead.")
    public Object readSuspendableSession(Function2<? super SuspendableReadSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        return readSuspendableSession$suspendImpl(this, function2, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public Object readUTF8Line(int i, Continuation<? super String> continuation) {
        return readUTF8Line$suspendImpl(this, i, continuation);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public <A extends Appendable> Object readUTF8LineTo(A a, int i, Continuation<? super Boolean> continuation) {
        return readUTF8LineToAscii(a, i, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object write(int i, Function1<? super ByteBuffer, Unit> function1, Continuation<? super Unit> continuation) {
        return write$suspendImpl(this, i, function1, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeAvailable(ChunkBuffer chunkBuffer, Continuation<? super Integer> continuation) {
        return writeAvailable$suspendImpl(this, chunkBuffer, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeAvailable(ByteBuffer byteBuffer, Continuation<? super Integer> continuation) {
        return writeAvailable$suspendImpl(this, byteBuffer, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeAvailable(byte[] bArr, int i, int i2, Continuation<? super Integer> continuation) {
        return writeAvailable$suspendImpl(this, bArr, i, i2, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeByte(byte b, Continuation<? super Unit> continuation) {
        return writeByte$suspendImpl(this, b, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeDouble(double d, Continuation<? super Unit> continuation) {
        return writeDouble$suspendImpl(this, d, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeFloat(float f, Continuation<? super Unit> continuation) {
        return writeFloat$suspendImpl(this, f, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeFully(Buffer buffer, Continuation<? super Unit> continuation) {
        return writeFully$suspendImpl(this, buffer, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeFully(ByteBuffer byteBuffer, Continuation<? super Unit> continuation) {
        return writeFully$suspendImpl(this, byteBuffer, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeFully(byte[] bArr, int i, int i2, Continuation<? super Unit> continuation) {
        return writeFully$suspendImpl(this, bArr, i, i2, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    /* JADX INFO: renamed from: writeFully-JT6ljtQ, reason: not valid java name */
    public Object mo532writeFullyJT6ljtQ(ByteBuffer byteBuffer, int i, int i2, Continuation<? super Unit> continuation) {
        return m530writeFullyJT6ljtQ$suspendImpl(this, byteBuffer, i, i2, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeInt(int i, Continuation<? super Unit> continuation) {
        return writeInt$suspendImpl(this, i, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeLong(long j, Continuation<? super Unit> continuation) {
        return writeLong$suspendImpl(this, j, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writePacket(ByteReadPacket byteReadPacket, Continuation<? super Unit> continuation) {
        return writePacket$suspendImpl(this, byteReadPacket, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeShort(short s, Continuation<? super Unit> continuation) {
        return writeShort$suspendImpl(this, s, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    @Deprecated(message = "Use write { } instead.")
    public Object writeSuspendSession(Function2<? super WriterSuspendSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        return writeSuspendSession$suspendImpl(this, function2, continuation);
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public Object writeWhile(Function1<? super ByteBuffer, Boolean> function1, Continuation<? super Unit> continuation) {
        return writeWhile$suspendImpl(this, function1, continuation);
    }

    public ByteBufferChannel(boolean z, ObjectPool<ReadWriteBufferState.Initial> pool, int i) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        this.autoFlush = z;
        this.pool = pool;
        this.reservedSize = i;
        this._state = ReadWriteBufferState.IdleEmpty.INSTANCE;
        this._closed = null;
        this._readOp = null;
        this._writeOp = null;
        this.readSession = new ReadSessionImpl(this);
        this.writeSession = new WriteSessionImpl(this);
        this.readSuspendContinuationCache = new CancellableReusableContinuation<>();
        this.writeSuspendContinuationCache = new CancellableReusableContinuation<>();
        this.writeSuspension = new Function1<Continuation<? super Unit>, Object>() { // from class: io.ktor.utils.io.ByteBufferChannel$writeSuspension$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super Unit> ucont) throws Throwable {
                Throwable sendException;
                Intrinsics.checkNotNullParameter(ucont, "ucont");
                int i2 = this.this$0.writeSuspensionSize;
                while (true) {
                    ClosedElement closed = this.this$0.getClosed();
                    if (closed != null && (sendException = closed.getSendException()) != null) {
                        ByteBufferChannelKt.rethrowClosed(sendException);
                        throw new KotlinNothingValueException();
                    }
                    if (!this.this$0.writeSuspendPredicate(i2)) {
                        Result.Companion companion = Result.INSTANCE;
                        ucont.resumeWith(Result.m817constructorimpl(Unit.INSTANCE));
                        break;
                    }
                    ByteBufferChannel byteBufferChannel = this.this$0;
                    Continuation continuationIntercepted = IntrinsicsKt.intercepted(ucont);
                    ByteBufferChannel byteBufferChannel2 = this.this$0;
                    while (byteBufferChannel.getWriteOp() == null) {
                        if (byteBufferChannel2.writeSuspendPredicate(i2)) {
                            if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(ByteBufferChannel._writeOp$FU, byteBufferChannel, null, continuationIntercepted)) {
                                if (byteBufferChannel2.writeSuspendPredicate(i2) || !AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(ByteBufferChannel._writeOp$FU, byteBufferChannel, continuationIntercepted, null)) {
                                    break;
                                }
                            }
                        }
                    }
                    throw new IllegalStateException("Operation is already in progress".toString());
                }
                this.this$0.flushImpl(i2);
                if (this.this$0.shouldResumeReadOp()) {
                    this.this$0.resumeReadOp();
                }
                return IntrinsicsKt.getCOROUTINE_SUSPENDED();
            }
        };
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public boolean getAutoFlush() {
        return this.autoFlush;
    }

    public /* synthetic */ ByteBufferChannel(boolean z, ObjectPool objectPool, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i2 & 2) != 0 ? ObjectPoolKt.getBufferObjectPool() : objectPool, (i2 & 4) != 0 ? 8 : i);
    }

    /* JADX INFO: renamed from: getReservedSize$ktor_io, reason: from getter */
    public final int getReservedSize() {
        return this.reservedSize;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel(ByteBuffer content) {
        this(false, ObjectPoolKt.getBufferObjectNoPool(), 0);
        Intrinsics.checkNotNullParameter(content, "content");
        ByteBuffer byteBufferSlice = content.slice();
        Intrinsics.checkNotNullExpressionValue(byteBufferSlice, "content.slice()");
        ReadWriteBufferState.Initial initial = new ReadWriteBufferState.Initial(byteBufferSlice, 0);
        initial.capacity.resetForRead();
        this._state = initial.startWriting$ktor_io();
        restoreStateAfterWrite$ktor_io();
        ByteWriteChannelKt.close(this);
        tryTerminate$ktor_io();
    }

    private final ReadWriteBufferState getState() {
        return (ReadWriteBufferState) this._state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClosedElement getClosed() {
        return (ClosedElement) this._closed;
    }

    private final void setClosed(ClosedElement closedElement) {
        this._closed = closedElement;
    }

    private final Continuation<Boolean> getReadOp() {
        return (Continuation) this._readOp;
    }

    private final void setReadOp(Continuation<? super Boolean> continuation) {
        this._readOp = continuation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Continuation<Unit> getWriteOp() {
        return (Continuation) this._writeOp;
    }

    private final void setWriteOp(Continuation<? super Unit> continuation) {
        this._writeOp = continuation;
    }

    public final ReadWriteBufferState currentState$ktor_io() {
        return getState();
    }

    /* JADX INFO: renamed from: getJoining$ktor_io, reason: from getter */
    public final JoiningState getJoining() {
        return this.joining;
    }

    @Override // io.ktor.utils.io.ByteChannel
    @Deprecated(message = DeprecationKt.IO_DEPRECATION_MESSAGE)
    public void attachJob(Job job) {
        Intrinsics.checkNotNullParameter(job, "job");
        Job job2 = this.attachedJob;
        if (job2 != null) {
            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
        }
        this.attachedJob = job;
        Job.DefaultImpls.invokeOnCompletion$default(job, true, false, new Function1<Throwable, Unit>() { // from class: io.ktor.utils.io.ByteBufferChannel.attachJob.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                ByteBufferChannel.this.attachedJob = null;
                if (th == null) {
                    return;
                }
                ByteBufferChannel.this.cancel(ExceptionUtilsKt.unwrapCancellationException(th));
            }
        }, 2, null);
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    /* JADX INFO: renamed from: getAvailableForRead */
    public int get_availableForRead() {
        return getState().capacity._availableForRead$internal;
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public int getAvailableForWrite() {
        return getState().capacity._availableForWrite$internal;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean isClosedForRead() {
        return getState() == ReadWriteBufferState.Terminated.INSTANCE && getClosed() != null;
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public boolean isClosedForWrite() {
        return getClosed() != null;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    /* JADX INFO: renamed from: getTotalBytesRead, reason: from getter */
    public long get_totalBytesRead() {
        return this.totalBytesRead;
    }

    public void setTotalBytesRead$ktor_io(long j) {
        this.totalBytesRead = j;
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    /* JADX INFO: renamed from: getTotalBytesWritten, reason: from getter */
    public long get_totalBytesWritten() {
        return this.totalBytesWritten;
    }

    public void setTotalBytesWritten$ktor_io(long j) {
        this.totalBytesWritten = j;
    }

    @Override // io.ktor.utils.io.ByteReadChannel, io.ktor.utils.io.ByteWriteChannel
    public Throwable getClosedCause() {
        ClosedElement closed = getClosed();
        if (closed != null) {
            return closed.getCause();
        }
        return null;
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public boolean close(Throwable cause) {
        ClosedElement closedElement;
        JoiningState joiningState;
        if (getClosed() != null) {
            return false;
        }
        if (cause == null) {
            closedElement = ClosedElement.INSTANCE.getEmptyCause();
        } else {
            closedElement = new ClosedElement(cause);
        }
        getState().capacity.flush();
        if (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_closed$FU, this, null, closedElement)) {
            return false;
        }
        getState().capacity.flush();
        if (getState().capacity.isEmpty() || cause != null) {
            tryTerminate$ktor_io();
        }
        resumeClosed(cause);
        if (getState() == ReadWriteBufferState.Terminated.INSTANCE && (joiningState = this.joining) != null) {
            ensureClosedJoined(joiningState);
        }
        if (cause != null) {
            Job job = this.attachedJob;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.readSuspendContinuationCache.close(cause);
            this.writeSuspendContinuationCache.close(cause);
            return true;
        }
        this.writeSuspendContinuationCache.close(new ClosedWriteChannelException(ByteBufferChannelKt.DEFAULT_CLOSE_MESSAGE));
        this.readSuspendContinuationCache.close(Boolean.valueOf(getState().capacity.flush()));
        return true;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public boolean cancel(Throwable cause) {
        if (cause == null) {
            cause = new CancellationException("Channel has been cancelled");
        }
        return close(cause);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void flushImpl(int minWriteSize) {
        ReadWriteBufferState state;
        ByteBufferChannel delegatedTo;
        JoiningState joiningState = this.joining;
        if (joiningState != null && (delegatedTo = joiningState.getDelegatedTo()) != null) {
            delegatedTo.flush();
        }
        do {
            state = getState();
            if (state == ReadWriteBufferState.Terminated.INSTANCE) {
                return;
            } else {
                state.capacity.flush();
            }
        } while (state != getState());
        int i = state.capacity._availableForWrite$internal;
        if (state.capacity._availableForRead$internal >= 1) {
            resumeReadOp();
        }
        JoiningState joiningState2 = this.joining;
        if (i >= minWriteSize) {
            if (joiningState2 == null || getState() == ReadWriteBufferState.Terminated.INSTANCE) {
                resumeWriteOp();
            }
        }
    }

    @Override // io.ktor.utils.io.ByteWriteChannel
    public void flush() {
        flushImpl(1);
    }

    public final void prepareWriteBuffer$ktor_io(ByteBuffer buffer, int lockedSpace) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        prepareBuffer(buffer, this.writePosition, lockedSpace);
    }

    private final void prepareBuffer(ByteBuffer byteBuffer, int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        byteBuffer.limit(RangesKt.coerceAtMost(i2 + i, byteBuffer.capacity() - this.reservedSize));
        byteBuffer.position(i);
    }

    public final ByteBuffer setupStateForWrite$ktor_io() throws Throwable {
        Object obj;
        ReadWriteBufferState readWriteBufferState;
        ReadWriteBufferState.Writing writingStartWriting$ktor_io;
        Continuation<Unit> writeOp = getWriteOp();
        if (writeOp != null) {
            throw new IllegalStateException("Write operation is already in progress: " + writeOp);
        }
        ReadWriteBufferState readWriteBufferState2 = null;
        ReadWriteBufferState.Initial initialNewBuffer = null;
        do {
            obj = this._state;
            readWriteBufferState = (ReadWriteBufferState) obj;
            if (this.joining != null) {
                if (initialNewBuffer != null) {
                    releaseBuffer(initialNewBuffer);
                }
                return null;
            }
            if (getClosed() != null) {
                if (initialNewBuffer != null) {
                    releaseBuffer(initialNewBuffer);
                }
                ClosedElement closed = getClosed();
                Intrinsics.checkNotNull(closed);
                ByteBufferChannelKt.rethrowClosed(closed.getSendException());
                throw new KotlinNothingValueException();
            }
            if (readWriteBufferState == ReadWriteBufferState.IdleEmpty.INSTANCE) {
                if (initialNewBuffer == null) {
                    initialNewBuffer = newBuffer();
                }
                writingStartWriting$ktor_io = initialNewBuffer.startWriting$ktor_io();
            } else {
                if (readWriteBufferState == ReadWriteBufferState.Terminated.INSTANCE) {
                    if (initialNewBuffer != null) {
                        releaseBuffer(initialNewBuffer);
                    }
                    if (this.joining != null) {
                        return null;
                    }
                    ClosedElement closed2 = getClosed();
                    Intrinsics.checkNotNull(closed2);
                    ByteBufferChannelKt.rethrowClosed(closed2.getSendException());
                    throw new KotlinNothingValueException();
                }
                writingStartWriting$ktor_io = readWriteBufferState.startWriting$ktor_io();
            }
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$FU, this, obj, writingStartWriting$ktor_io));
        if (getClosed() != null) {
            restoreStateAfterWrite$ktor_io();
            tryTerminate$ktor_io();
            ClosedElement closed3 = getClosed();
            Intrinsics.checkNotNull(closed3);
            ByteBufferChannelKt.rethrowClosed(closed3.getSendException());
            throw new KotlinNothingValueException();
        }
        ByteBuffer writeBuffer = writingStartWriting$ktor_io.getWriteBuffer();
        if (initialNewBuffer != null) {
            if (readWriteBufferState == null) {
                Intrinsics.throwUninitializedPropertyAccessException("old");
            } else {
                readWriteBufferState2 = readWriteBufferState;
            }
            if (readWriteBufferState2 != ReadWriteBufferState.IdleEmpty.INSTANCE) {
                releaseBuffer(initialNewBuffer);
            }
        }
        prepareBuffer(writeBuffer, this.writePosition, writingStartWriting$ktor_io.capacity._availableForWrite$internal);
        return writeBuffer;
    }

    private final JoiningState setupDelegateTo(ByteBufferChannel delegate, boolean delegateClose) {
        if (this == delegate) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        JoiningState joiningState = new JoiningState(delegate, delegateClose);
        this.joining = joiningState;
        ClosedElement closed = getClosed();
        if (closed == null) {
            flush();
            return joiningState;
        }
        if (closed.getCause() != null) {
            delegate.close(closed.getCause());
            return joiningState;
        }
        if (delegateClose && getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            ByteWriteChannelKt.close(delegate);
            return joiningState;
        }
        delegate.flush();
        return joiningState;
    }

    private final boolean tryCompleteJoining(JoiningState joined) {
        if (!tryReleaseBuffer(true)) {
            return false;
        }
        ensureClosedJoined(joined);
        Continuation continuation = (Continuation) _readOp$FU.getAndSet(this, null);
        if (continuation != null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m817constructorimpl(ResultKt.createFailure(new IllegalStateException("Joining is in progress"))));
        }
        resumeWriteOp();
        return true;
    }

    public final boolean tryTerminate$ktor_io() {
        if (getClosed() == null || !tryReleaseBuffer(false)) {
            return false;
        }
        JoiningState joiningState = this.joining;
        if (joiningState != null) {
            ensureClosedJoined(joiningState);
        }
        resumeReadOp();
        resumeWriteOp();
        return true;
    }

    private final int carryIndex(ByteBuffer byteBuffer, int i) {
        return i >= byteBuffer.capacity() - this.reservedSize ? i - (byteBuffer.capacity() - this.reservedSize) : i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void writing(kotlin.jvm.functions.Function3<? super io.ktor.utils.io.ByteBufferChannel, ? super java.nio.ByteBuffer, ? super io.ktor.utils.io.internal.RingBufferCapacity, kotlin.Unit> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            io.ktor.utils.io.internal.JoiningState r0 = r7.joining
            if (r0 == 0) goto La
            io.ktor.utils.io.ByteBufferChannel r0 = r7.resolveDelegation(r7, r0)
            if (r0 != 0) goto Lb
        La:
            r0 = r7
        Lb:
            java.nio.ByteBuffer r1 = r0.setupStateForWrite$ktor_io()
            if (r1 != 0) goto L12
            return
        L12:
            io.ktor.utils.io.internal.ReadWriteBufferState r2 = r0.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r2 = r2.capacity
            long r3 = r0.get_totalBytesWritten()
            io.ktor.utils.io.internal.ClosedElement r5 = r0.getClosed()     // Catch: java.lang.Throwable -> L57
            if (r5 != 0) goto L4a
            r8.invoke(r0, r1, r2)     // Catch: java.lang.Throwable -> L57
            boolean r8 = r2.isFull()
            if (r8 != 0) goto L31
            boolean r8 = r0.getAutoFlush()
            if (r8 == 0) goto L34
        L31:
            r0.flush()
        L34:
            if (r0 == r7) goto L43
            long r1 = r7.get_totalBytesWritten()
            long r5 = r0.get_totalBytesWritten()
            long r5 = r5 - r3
            long r1 = r1 + r5
            r7.setTotalBytesWritten$ktor_io(r1)
        L43:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            return
        L4a:
            java.lang.Throwable r8 = r5.getSendException()     // Catch: java.lang.Throwable -> L57
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r8)     // Catch: java.lang.Throwable -> L57
            kotlin.KotlinNothingValueException r8 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L57
            r8.<init>()     // Catch: java.lang.Throwable -> L57
            throw r8     // Catch: java.lang.Throwable -> L57
        L57:
            r8 = move-exception
            boolean r1 = r2.isFull()
            if (r1 != 0) goto L64
            boolean r1 = r0.getAutoFlush()
            if (r1 == 0) goto L67
        L64:
            r0.flush()
        L67:
            if (r0 == r7) goto L76
            long r1 = r7.get_totalBytesWritten()
            long r5 = r0.get_totalBytesWritten()
            long r5 = r5 - r3
            long r1 = r1 + r5
            r7.setTotalBytesWritten$ktor_io(r1)
        L76:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writing(kotlin.jvm.functions.Function3):void");
    }

    private final boolean reading(Function2<? super ByteBuffer, ? super RingBufferCapacity, Boolean> block) throws Throwable {
        ByteBuffer byteBuffer = setupStateForRead();
        if (byteBuffer == null) {
            return false;
        }
        RingBufferCapacity ringBufferCapacity = getState().capacity;
        try {
            if (ringBufferCapacity._availableForRead$internal == 0) {
                return false;
            }
            return block.invoke(byteBuffer, ringBufferCapacity).booleanValue();
        } finally {
            restoreStateAfterRead();
            tryTerminate$ktor_io();
        }
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public final Object readFully(byte[] bArr, int i, int i2, Continuation<? super Unit> continuation) throws Throwable {
        int asMuchAsPossible = readAsMuchAsPossible(bArr, i, i2);
        if (asMuchAsPossible < i2) {
            Object fullySuspend = readFullySuspend(bArr, i + asMuchAsPossible, i2 - asMuchAsPossible, continuation);
            return fullySuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? fullySuspend : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public final Object readFully(ByteBuffer byteBuffer, Continuation<? super Integer> continuation) throws Throwable {
        int asMuchAsPossible = readAsMuchAsPossible(byteBuffer);
        return !byteBuffer.hasRemaining() ? Boxing.boxInt(asMuchAsPossible) : readFullySuspend(byteBuffer, asMuchAsPossible, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0055 -> B:21:0x0058). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readFullySuspend(java.nio.ByteBuffer r6, int r7, kotlin.coroutines.Continuation<? super java.lang.Integer> r8) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C05931
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05931) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$1
            java.nio.ByteBuffer r7 = (java.nio.ByteBuffer) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L58
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r5
        L40:
            boolean r8 = r6.hasRemaining()
            if (r8 == 0) goto L88
            r0.L$0 = r2
            r0.L$1 = r6
            r0.I$0 = r7
            r0.label = r3
            java.lang.Object r8 = r2.readSuspend(r3, r0)
            if (r8 != r1) goto L55
            return r1
        L55:
            r4 = r7
            r7 = r6
            r6 = r4
        L58:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L69
            int r8 = r2.readAsMuchAsPossible(r7)
            int r6 = r6 + r8
            r4 = r7
            r7 = r6
            r6 = r4
            goto L40
        L69:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r6 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r0 = "Unexpected EOF: expected "
            r8.<init>(r0)
            int r7 = r7.remaining()
            java.lang.StringBuilder r7 = r8.append(r7)
            java.lang.String r8 = " more bytes"
            java.lang.StringBuilder r7 = r7.append(r8)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        L88:
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readFullySuspend(java.nio.ByteBuffer, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object readFully$suspendImpl(ByteBufferChannel byteBufferChannel, ChunkBuffer chunkBuffer, int i, Continuation<? super Unit> continuation) throws Throwable {
        int asMuchAsPossible$default = readAsMuchAsPossible$default(byteBufferChannel, chunkBuffer, 0, i, 2, null);
        if (asMuchAsPossible$default == i) {
            return Unit.INSTANCE;
        }
        Object fullySuspend = byteBufferChannel.readFullySuspend(chunkBuffer, i - asMuchAsPossible$default, continuation);
        return fullySuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? fullySuspend : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0063 -> B:22:0x0067). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readFullySuspend(io.ktor.utils.io.core.internal.ChunkBuffer r12, int r13, kotlin.coroutines.Continuation<? super kotlin.Unit> r14) throws java.lang.Throwable {
        /*
            r11 = this;
            boolean r0 = r14 instanceof io.ktor.utils.io.ByteBufferChannel.C05942
            if (r0 == 0) goto L14
            r0 = r14
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$2 r0 = (io.ktor.utils.io.ByteBufferChannel.C05942) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$2 r0 = new io.ktor.utils.io.ByteBufferChannel$readFullySuspend$2
            r0.<init>(r14)
        L19:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            int r12 = r0.I$1
            int r13 = r0.I$0
            java.lang.Object r2 = r0.L$1
            io.ktor.utils.io.core.internal.ChunkBuffer r2 = (io.ktor.utils.io.core.internal.ChunkBuffer) r2
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r4 = (io.ktor.utils.io.ByteBufferChannel) r4
            kotlin.ResultKt.throwOnFailure(r14)
            goto L67
        L36:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L3e:
            kotlin.ResultKt.throwOnFailure(r14)
            r14 = 0
            r4 = r11
        L43:
            r2 = r12
            io.ktor.utils.io.core.Buffer r2 = (io.ktor.utils.io.core.Buffer) r2
            int r5 = r2.getLimit()
            int r2 = r2.getWritePosition()
            if (r5 <= r2) goto L9a
            if (r14 >= r13) goto L9a
            r0.L$0 = r4
            r0.L$1 = r12
            r0.I$0 = r13
            r0.I$1 = r14
            r0.label = r3
            java.lang.Object r2 = r4.readSuspend(r3, r0)
            if (r2 != r1) goto L63
            return r1
        L63:
            r10 = r2
            r2 = r12
            r12 = r14
            r14 = r10
        L67:
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r14 = r14.booleanValue()
            if (r14 == 0) goto L7e
            r5 = r2
            io.ktor.utils.io.core.Buffer r5 = (io.ktor.utils.io.core.Buffer) r5
            int r7 = r13 - r12
            r8 = 2
            r9 = 0
            r6 = 0
            int r14 = readAsMuchAsPossible$default(r4, r5, r6, r7, r8, r9)
            int r14 = r14 + r12
            r12 = r2
            goto L43
        L7e:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r14 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unexpected EOF: expected "
            r0.<init>(r1)
            int r13 = r13 - r12
            java.lang.StringBuilder r12 = r0.append(r13)
            java.lang.String r13 = " more bytes"
            java.lang.StringBuilder r12 = r12.append(r13)
            java.lang.String r12 = r12.toString()
            r14.<init>(r12)
            throw r14
        L9a:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readFullySuspend(io.ktor.utils.io.core.internal.ChunkBuffer, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0058 -> B:19:0x005f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readFullySuspend(byte[] r7, int r8, int r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.ByteBufferChannel.C05953
            if (r0 == 0) goto L14
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$3 r0 = (io.ktor.utils.io.ByteBufferChannel.C05953) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readFullySuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$readFullySuspend$3
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            int r7 = r0.I$2
            int r8 = r0.I$1
            int r9 = r0.I$0
            java.lang.Object r2 = r0.L$1
            byte[] r2 = (byte[]) r2
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r4 = (io.ktor.utils.io.ByteBufferChannel) r4
            kotlin.ResultKt.throwOnFailure(r10)
            goto L5f
        L38:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = 0
            r4 = r6
        L45:
            r0.L$0 = r4
            r0.L$1 = r7
            r0.I$0 = r8
            r0.I$1 = r9
            r0.I$2 = r10
            r0.label = r3
            java.lang.Object r2 = r4.readSuspend(r3, r0)
            if (r2 != r1) goto L58
            return r1
        L58:
            r5 = r2
            r2 = r7
            r7 = r10
            r10 = r5
            r5 = r9
            r9 = r8
            r8 = r5
        L5f:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L77
            int r9 = r9 + r7
            int r7 = r8 - r7
            int r10 = r4.readAsMuchAsPossible(r2, r9, r7)
            if (r10 < r7) goto L73
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L73:
            r8 = r9
            r9 = r7
            r7 = r2
            goto L45
        L77:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r7 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "Unexpected EOF: expected "
            r9.<init>(r10)
            java.lang.StringBuilder r8 = r9.append(r8)
            java.lang.String r9 = " more bytes"
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readFullySuspend(byte[], int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object readAvailable$suspendImpl(ByteBufferChannel byteBufferChannel, byte[] bArr, int i, int i2, Continuation<? super Integer> continuation) throws Throwable {
        int asMuchAsPossible = byteBufferChannel.readAsMuchAsPossible(bArr, i, i2);
        if (asMuchAsPossible == 0 && byteBufferChannel.getClosed() != null) {
            asMuchAsPossible = byteBufferChannel.getState().capacity.flush() ? byteBufferChannel.readAsMuchAsPossible(bArr, i, i2) : -1;
        } else if (asMuchAsPossible <= 0 && i2 != 0) {
            return byteBufferChannel.readAvailableSuspend(bArr, i, i2, continuation);
        }
        return Boxing.boxInt(asMuchAsPossible);
    }

    static /* synthetic */ Object readAvailable$suspendImpl(ByteBufferChannel byteBufferChannel, ByteBuffer byteBuffer, Continuation<? super Integer> continuation) throws Throwable {
        int asMuchAsPossible = byteBufferChannel.readAsMuchAsPossible(byteBuffer);
        if (asMuchAsPossible == 0 && byteBufferChannel.getClosed() != null) {
            asMuchAsPossible = byteBufferChannel.getState().capacity.flush() ? byteBufferChannel.readAsMuchAsPossible(byteBuffer) : -1;
        } else if (asMuchAsPossible <= 0 && byteBuffer.hasRemaining()) {
            return byteBufferChannel.readAvailableSuspend(byteBuffer, continuation);
        }
        return Boxing.boxInt(asMuchAsPossible);
    }

    static /* synthetic */ Object readAvailable$suspendImpl(ByteBufferChannel byteBufferChannel, ChunkBuffer chunkBuffer, Continuation<? super Integer> continuation) {
        ChunkBuffer chunkBuffer2 = chunkBuffer;
        int asMuchAsPossible$default = readAsMuchAsPossible$default(byteBufferChannel, chunkBuffer2, 0, 0, 6, null);
        if (asMuchAsPossible$default == 0 && byteBufferChannel.getClosed() != null) {
            asMuchAsPossible$default = byteBufferChannel.getState().capacity.flush() ? readAsMuchAsPossible$default(byteBufferChannel, chunkBuffer2, 0, 0, 6, null) : -1;
        } else if (asMuchAsPossible$default <= 0 && chunkBuffer2.getLimit() > chunkBuffer2.getWritePosition()) {
            return byteBufferChannel.readAvailableSuspend(chunkBuffer, continuation);
        }
        return Boxing.boxInt(asMuchAsPossible$default);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAvailableSuspend(byte[] r6, int r7, int r8, kotlin.coroutines.Continuation<? super java.lang.Integer> r9) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r9 instanceof io.ktor.utils.io.ByteBufferChannel.C05871
            if (r0 == 0) goto L14
            r0 = r9
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05871) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            int r8 = r0.I$1
            int r7 = r0.I$0
            java.lang.Object r6 = r0.L$1
            byte[] r6 = (byte[]) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5a
        L45:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.I$0 = r7
            r0.I$1 = r8
            r0.label = r4
            java.lang.Object r9 = r5.readSuspend(r4, r0)
            if (r9 != r1) goto L59
            goto L75
        L59:
            r2 = r5
        L5a:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L68
            r6 = -1
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            return r6
        L68:
            r9 = 0
            r0.L$0 = r9
            r0.L$1 = r9
            r0.label = r3
            java.lang.Object r6 = r2.readAvailable(r6, r7, r8, r0)
            if (r6 != r1) goto L76
        L75:
            return r1
        L76:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readAvailableSuspend(byte[], int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAvailableSuspend(java.nio.ByteBuffer r6, kotlin.coroutines.Continuation<? super java.lang.Integer> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel.AnonymousClass2
            if (r0 == 0) goto L14
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$2 r0 = (io.ktor.utils.io.ByteBufferChannel.AnonymousClass2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$2 r0 = new io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$2
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            return r7
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$1
            java.nio.ByteBuffer r6 = (java.nio.ByteBuffer) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L52
        L41:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r5.readSuspend(r4, r0)
            if (r7 != r1) goto L51
            goto L6d
        L51:
            r2 = r5
        L52:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L60
            r6 = -1
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            return r6
        L60:
            r7 = 0
            r0.L$0 = r7
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r6 = r2.readAvailable(r6, r0)
            if (r6 != r1) goto L6e
        L6d:
            return r1
        L6e:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readAvailableSuspend(java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAvailableSuspend(io.ktor.utils.io.core.internal.ChunkBuffer r6, kotlin.coroutines.Continuation<? super java.lang.Integer> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel.AnonymousClass3
            if (r0 == 0) goto L14
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3 r0 = (io.ktor.utils.io.ByteBufferChannel.AnonymousClass3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$readAvailableSuspend$3
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            return r7
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$1
            io.ktor.utils.io.core.internal.ChunkBuffer r6 = (io.ktor.utils.io.core.internal.ChunkBuffer) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L52
        L41:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r5.readSuspend(r4, r0)
            if (r7 != r1) goto L51
            goto L6d
        L51:
            r2 = r5
        L52:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L60
            r6 = -1
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            return r6
        L60:
            r7 = 0
            r0.L$0 = r7
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r6 = r2.readAvailable(r6, r0)
            if (r6 != r1) goto L6e
        L6d:
            return r1
        L6e:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readAvailableSuspend(io.ktor.utils.io.core.internal.ChunkBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object readPacket$suspendImpl(ByteBufferChannel byteBufferChannel, int i, Continuation<? super ByteReadPacket> continuation) throws Throwable {
        Throwable cause;
        ClosedElement closed = byteBufferChannel.getClosed();
        if (closed != null && (cause = closed.getCause()) != null) {
            ByteBufferChannelKt.rethrowClosed(cause);
            throw new KotlinNothingValueException();
        }
        if (i == 0) {
            return ByteReadPacket.INSTANCE.getEmpty();
        }
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
        ByteBuffer byteBufferBorrow = ObjectPoolKt.getBufferPool().borrow();
        while (i > 0) {
            try {
                byteBufferBorrow.clear();
                if (byteBufferBorrow.remaining() > i) {
                    byteBufferBorrow.limit(i);
                }
                int asMuchAsPossible = byteBufferChannel.readAsMuchAsPossible(byteBufferBorrow);
                if (asMuchAsPossible == 0) {
                    break;
                }
                byteBufferBorrow.flip();
                OutputArraysJVMKt.writeFully(bytePacketBuilder, byteBufferBorrow);
                i -= asMuchAsPossible;
            } catch (Throwable th) {
                ObjectPoolKt.getBufferPool().recycle(byteBufferBorrow);
                bytePacketBuilder.release();
                throw th;
            }
        }
        if (i == 0) {
            ObjectPoolKt.getBufferPool().recycle(byteBufferBorrow);
            return bytePacketBuilder.build();
        }
        return byteBufferChannel.readPacketSuspend(i, bytePacketBuilder, byteBufferBorrow, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004b A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {all -> 0x0085, blocks: (B:26:0x0068, B:20:0x004b, B:22:0x0054, B:23:0x0057, B:27:0x0079), top: B:37:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0079 A[Catch: all -> 0x0085, TRY_LEAVE, TryCatch #0 {all -> 0x0085, blocks: (B:26:0x0068, B:20:0x004b, B:22:0x0054, B:23:0x0057, B:27:0x0079), top: B:37:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0065 -> B:37:0x0068). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readPacketSuspend(int r7, io.ktor.utils.io.core.BytePacketBuilder r8, java.nio.ByteBuffer r9, kotlin.coroutines.Continuation<? super io.ktor.utils.io.core.ByteReadPacket> r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.ByteBufferChannel.C05981
            if (r0 == 0) goto L14
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05981) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L45
            if (r2 != r3) goto L3d
            int r7 = r0.I$0
            java.lang.Object r8 = r0.L$2
            java.nio.ByteBuffer r8 = (java.nio.ByteBuffer) r8
            java.lang.Object r9 = r0.L$1
            io.ktor.utils.io.core.BytePacketBuilder r9 = (io.ktor.utils.io.core.BytePacketBuilder) r9
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3b
            r5 = r9
            r9 = r8
            r8 = r5
            goto L68
        L3b:
            r7 = move-exception
            goto L89
        L3d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L45:
            kotlin.ResultKt.throwOnFailure(r10)
            r2 = r6
        L49:
            if (r7 <= 0) goto L79
            r9.clear()     // Catch: java.lang.Throwable -> L85
            int r10 = r9.remaining()     // Catch: java.lang.Throwable -> L85
            if (r10 <= r7) goto L57
            r9.limit(r7)     // Catch: java.lang.Throwable -> L85
        L57:
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L85
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L85
            r0.L$2 = r9     // Catch: java.lang.Throwable -> L85
            r0.I$0 = r7     // Catch: java.lang.Throwable -> L85
            r0.label = r3     // Catch: java.lang.Throwable -> L85
            java.lang.Object r10 = r2.readFully(r9, r0)     // Catch: java.lang.Throwable -> L85
            if (r10 != r1) goto L68
            return r1
        L68:
            java.lang.Number r10 = (java.lang.Number) r10     // Catch: java.lang.Throwable -> L85
            int r10 = r10.intValue()     // Catch: java.lang.Throwable -> L85
            r9.flip()     // Catch: java.lang.Throwable -> L85
            r4 = r8
            io.ktor.utils.io.core.Output r4 = (io.ktor.utils.io.core.Output) r4     // Catch: java.lang.Throwable -> L85
            io.ktor.utils.io.core.OutputArraysJVMKt.writeFully(r4, r9)     // Catch: java.lang.Throwable -> L85
            int r7 = r7 - r10
            goto L49
        L79:
            io.ktor.utils.io.core.ByteReadPacket r7 = r8.build()     // Catch: java.lang.Throwable -> L85
            io.ktor.utils.io.pool.ObjectPool r8 = io.ktor.utils.io.internal.ObjectPoolKt.getBufferPool()
            r8.recycle(r9)
            return r7
        L85:
            r7 = move-exception
            r5 = r9
            r9 = r8
            r8 = r5
        L89:
            r9.release()     // Catch: java.lang.Throwable -> L8d
            throw r7     // Catch: java.lang.Throwable -> L8d
        L8d:
            r7 = move-exception
            io.ktor.utils.io.pool.ObjectPool r9 = io.ktor.utils.io.internal.ObjectPoolKt.getBufferPool()
            r9.recycle(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readPacketSuspend(int, io.ktor.utils.io.core.BytePacketBuilder, java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readBoolean(kotlin.coroutines.Continuation<? super java.lang.Boolean> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof io.ktor.utils.io.ByteBufferChannel.C05891
            if (r0 == 0) goto L14
            r0 = r5
            io.ktor.utils.io.ByteBufferChannel$readBoolean$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05891) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r5 = r0.label
            int r5 = r5 - r2
            r0.label = r5
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readBoolean$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readBoolean$1
            r0.<init>(r5)
        L19:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3e
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L32:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.label = r3
            java.lang.Object r5 = r4.readByte(r0)
            if (r5 != r1) goto L3e
            return r1
        L3e:
            java.lang.Number r5 = (java.lang.Number) r5
            byte r5 = r5.byteValue()
            if (r5 == 0) goto L47
            goto L48
        L47:
            r3 = 0
        L48:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readBoolean(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Byte] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0097 -> B:40:0x009a). Please report as a decompilation issue!!! */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readByte(kotlin.coroutines.Continuation<? super java.lang.Byte> r10) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.ByteBufferChannel.C05901
            if (r0 == 0) goto L14
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$readByte$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05901) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readByte$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readByte$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            int r2 = r0.I$0
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r4 = (io.ktor.utils.io.ByteBufferChannel) r4
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9a
        L31:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L39:
            kotlin.ResultKt.throwOnFailure(r10)
            r4 = r9
            r2 = r3
        L3e:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            java.nio.ByteBuffer r5 = r4.setupStateForRead()
            r6 = 0
            if (r5 != 0) goto L4b
            goto L7b
        L4b:
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r4.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            int r8 = r7._availableForRead$internal     // Catch: java.lang.Throwable -> Lbe
            if (r8 != 0) goto L5c
        L55:
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            goto L7b
        L5c:
            boolean r8 = r7.tryReadExact(r2)     // Catch: java.lang.Throwable -> Lbe
            if (r8 != 0) goto L63
            goto L55
        L63:
            int r6 = r5.remaining()     // Catch: java.lang.Throwable -> Lbe
            if (r6 >= r2) goto L6c
            r4.rollBytes(r5, r2)     // Catch: java.lang.Throwable -> Lbe
        L6c:
            byte r6 = r5.get()     // Catch: java.lang.Throwable -> Lbe
            java.lang.Byte r6 = kotlin.coroutines.jvm.internal.Boxing.boxByte(r6)     // Catch: java.lang.Throwable -> Lbe
            r10.element = r6     // Catch: java.lang.Throwable -> Lbe
            r4.bytesRead(r5, r7, r2)     // Catch: java.lang.Throwable -> Lbe
            r6 = r3
            goto L55
        L7b:
            if (r6 == 0) goto L8d
            T r0 = r10.element
            if (r0 != 0) goto L88
            java.lang.String r10 = "result"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r10)
            r10 = 0
            return r10
        L88:
            T r10 = r10.element
            java.lang.Number r10 = (java.lang.Number) r10
            return r10
        L8d:
            r0.L$0 = r4
            r0.I$0 = r2
            r0.label = r3
            java.lang.Object r10 = r4.readSuspend(r2, r0)
            if (r10 != r1) goto L9a
            return r1
        L9a:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto La3
            goto L3e
        La3:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r10 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "EOF while "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r1 = " bytes expected"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r10.<init>(r0)
            throw r10
        Lbe:
            r10 = move-exception
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readByte(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Short] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0098 -> B:40:0x009b). Please report as a decompilation issue!!! */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readShort(kotlin.coroutines.Continuation<? super java.lang.Short> r10) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.ByteBufferChannel.C06011
            if (r0 == 0) goto L14
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$readShort$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06011) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readShort$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readShort$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            int r2 = r0.I$0
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r4 = (io.ktor.utils.io.ByteBufferChannel) r4
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9b
        L31:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L39:
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = 2
            r4 = r9
            r2 = r10
        L3f:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            java.nio.ByteBuffer r5 = r4.setupStateForRead()
            r6 = 0
            if (r5 != 0) goto L4c
            goto L7c
        L4c:
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r4.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            int r8 = r7._availableForRead$internal     // Catch: java.lang.Throwable -> Lbf
            if (r8 != 0) goto L5d
        L56:
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            goto L7c
        L5d:
            boolean r8 = r7.tryReadExact(r2)     // Catch: java.lang.Throwable -> Lbf
            if (r8 != 0) goto L64
            goto L56
        L64:
            int r6 = r5.remaining()     // Catch: java.lang.Throwable -> Lbf
            if (r6 >= r2) goto L6d
            r4.rollBytes(r5, r2)     // Catch: java.lang.Throwable -> Lbf
        L6d:
            short r6 = r5.getShort()     // Catch: java.lang.Throwable -> Lbf
            java.lang.Short r6 = kotlin.coroutines.jvm.internal.Boxing.boxShort(r6)     // Catch: java.lang.Throwable -> Lbf
            r10.element = r6     // Catch: java.lang.Throwable -> Lbf
            r4.bytesRead(r5, r7, r2)     // Catch: java.lang.Throwable -> Lbf
            r6 = r3
            goto L56
        L7c:
            if (r6 == 0) goto L8e
            T r0 = r10.element
            if (r0 != 0) goto L89
            java.lang.String r10 = "result"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r10)
            r10 = 0
            return r10
        L89:
            T r10 = r10.element
            java.lang.Number r10 = (java.lang.Number) r10
            return r10
        L8e:
            r0.L$0 = r4
            r0.I$0 = r2
            r0.label = r3
            java.lang.Object r10 = r4.readSuspend(r2, r0)
            if (r10 != r1) goto L9b
            return r1
        L9b:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto La4
            goto L3f
        La4:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r10 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "EOF while "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r1 = " bytes expected"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r10.<init>(r0)
            throw r10
        Lbf:
            r10 = move-exception
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readShort(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Integer] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0098 -> B:40:0x009b). Please report as a decompilation issue!!! */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readInt(kotlin.coroutines.Continuation<? super java.lang.Integer> r10) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.ByteBufferChannel.C05961
            if (r0 == 0) goto L14
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$readInt$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05961) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readInt$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readInt$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            int r2 = r0.I$0
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r4 = (io.ktor.utils.io.ByteBufferChannel) r4
            kotlin.ResultKt.throwOnFailure(r10)
            goto L9b
        L31:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L39:
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = 4
            r4 = r9
            r2 = r10
        L3f:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            java.nio.ByteBuffer r5 = r4.setupStateForRead()
            r6 = 0
            if (r5 != 0) goto L4c
            goto L7c
        L4c:
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r4.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            int r8 = r7._availableForRead$internal     // Catch: java.lang.Throwable -> Lbf
            if (r8 != 0) goto L5d
        L56:
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            goto L7c
        L5d:
            boolean r8 = r7.tryReadExact(r2)     // Catch: java.lang.Throwable -> Lbf
            if (r8 != 0) goto L64
            goto L56
        L64:
            int r6 = r5.remaining()     // Catch: java.lang.Throwable -> Lbf
            if (r6 >= r2) goto L6d
            r4.rollBytes(r5, r2)     // Catch: java.lang.Throwable -> Lbf
        L6d:
            int r6 = r5.getInt()     // Catch: java.lang.Throwable -> Lbf
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)     // Catch: java.lang.Throwable -> Lbf
            r10.element = r6     // Catch: java.lang.Throwable -> Lbf
            r4.bytesRead(r5, r7, r2)     // Catch: java.lang.Throwable -> Lbf
            r6 = r3
            goto L56
        L7c:
            if (r6 == 0) goto L8e
            T r0 = r10.element
            if (r0 != 0) goto L89
            java.lang.String r10 = "result"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r10)
            r10 = 0
            return r10
        L89:
            T r10 = r10.element
            java.lang.Number r10 = (java.lang.Number) r10
            return r10
        L8e:
            r0.L$0 = r4
            r0.I$0 = r2
            r0.label = r3
            java.lang.Object r10 = r4.readSuspend(r2, r0)
            if (r10 != r1) goto L9b
            return r1
        L9b:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto La4
            goto L3f
        La4:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r10 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "EOF while "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r1 = " bytes expected"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r10.<init>(r0)
            throw r10
        Lbf:
            r10 = move-exception
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readInt(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0099 -> B:40:0x009c). Please report as a decompilation issue!!! */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readLong(kotlin.coroutines.Continuation<? super java.lang.Long> r11) throws java.lang.Throwable {
        /*
            r10 = this;
            boolean r0 = r11 instanceof io.ktor.utils.io.ByteBufferChannel.C05971
            if (r0 == 0) goto L14
            r0 = r11
            io.ktor.utils.io.ByteBufferChannel$readLong$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05971) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readLong$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readLong$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            int r2 = r0.I$0
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r4 = (io.ktor.utils.io.ByteBufferChannel) r4
            kotlin.ResultKt.throwOnFailure(r11)
            goto L9c
        L31:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L39:
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = 8
            r4 = r10
            r2 = r11
        L40:
            kotlin.jvm.internal.Ref$ObjectRef r11 = new kotlin.jvm.internal.Ref$ObjectRef
            r11.<init>()
            java.nio.ByteBuffer r5 = r4.setupStateForRead()
            r6 = 0
            if (r5 != 0) goto L4d
            goto L7d
        L4d:
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r4.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            int r8 = r7._availableForRead$internal     // Catch: java.lang.Throwable -> Lc0
            if (r8 != 0) goto L5e
        L57:
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            goto L7d
        L5e:
            boolean r8 = r7.tryReadExact(r2)     // Catch: java.lang.Throwable -> Lc0
            if (r8 != 0) goto L65
            goto L57
        L65:
            int r6 = r5.remaining()     // Catch: java.lang.Throwable -> Lc0
            if (r6 >= r2) goto L6e
            r4.rollBytes(r5, r2)     // Catch: java.lang.Throwable -> Lc0
        L6e:
            long r8 = r5.getLong()     // Catch: java.lang.Throwable -> Lc0
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r8)     // Catch: java.lang.Throwable -> Lc0
            r11.element = r6     // Catch: java.lang.Throwable -> Lc0
            r4.bytesRead(r5, r7, r2)     // Catch: java.lang.Throwable -> Lc0
            r6 = r3
            goto L57
        L7d:
            if (r6 == 0) goto L8f
            T r0 = r11.element
            if (r0 != 0) goto L8a
            java.lang.String r11 = "result"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r11)
            r11 = 0
            return r11
        L8a:
            T r11 = r11.element
            java.lang.Number r11 = (java.lang.Number) r11
            return r11
        L8f:
            r0.L$0 = r4
            r0.I$0 = r2
            r0.label = r3
            java.lang.Object r11 = r4.readSuspend(r2, r0)
            if (r11 != r1) goto L9c
            return r1
        L9c:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto La5
            goto L40
        La5:
            kotlinx.coroutines.channels.ClosedReceiveChannelException r11 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "EOF while "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r1 = " bytes expected"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            r11.<init>(r0)
            throw r11
        Lc0:
            r11 = move-exception
            r4.restoreStateAfterRead()
            r4.tryTerminate$ktor_io()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readLong(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Integer] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00a4 -> B:40:0x00a7). Please report as a decompilation issue!!! */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readFloat(kotlin.coroutines.Continuation<? super java.lang.Float> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readFloat(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00a5 -> B:40:0x00a8). Please report as a decompilation issue!!! */
    @Override // io.ktor.utils.io.ByteReadChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readDouble(kotlin.coroutines.Continuation<? super java.lang.Double> r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readDouble(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T extends Number> Object readPrimitive(int i, Function1<? super ByteBuffer, ? extends T> function1, Continuation<? super T> continuation) throws Throwable {
        do {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            ByteBuffer byteBuffer = setupStateForRead();
            boolean zBooleanValue = false;
            if (byteBuffer != null) {
                RingBufferCapacity ringBufferCapacity = getState().capacity;
                try {
                    if (ringBufferCapacity._availableForRead$internal != 0) {
                        if (ringBufferCapacity.tryReadExact(i)) {
                            if (byteBuffer.remaining() < i) {
                                rollBytes(byteBuffer, i);
                            }
                            objectRef.element = function1.invoke(byteBuffer);
                            bytesRead(byteBuffer, ringBufferCapacity, i);
                            zBooleanValue = true;
                        }
                        Boolean boolValueOf = Boolean.valueOf(zBooleanValue);
                        Boolean bool = boolValueOf;
                        zBooleanValue = boolValueOf.booleanValue();
                    }
                } finally {
                    restoreStateAfterRead();
                    tryTerminate$ktor_io();
                }
            }
            if (zBooleanValue) {
                if (objectRef.element != 0) {
                    return (Number) objectRef.element;
                }
                Intrinsics.throwUninitializedPropertyAccessException("result");
                return null;
            }
        } while (((Boolean) readSuspend(i, continuation)).booleanValue());
        throw new ClosedReceiveChannelException("EOF while " + i + " bytes expected");
    }

    private final void rollBytes(ByteBuffer byteBuffer, int i) {
        int iRemaining = byteBuffer.remaining();
        byteBuffer.limit(byteBuffer.position() + i);
        int i2 = i - iRemaining;
        for (int i3 = 0; i3 < i2; i3++) {
            byteBuffer.put((byteBuffer.capacity() - 8) + i3, byteBuffer.get(i3));
        }
    }

    private final void carry(ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity() - this.reservedSize;
        int iPosition = byteBuffer.position();
        for (int i = iCapacity; i < iPosition; i++) {
            byteBuffer.put(i - iCapacity, byteBuffer.get(i));
        }
    }

    public final void bytesWrittenFromSession$ktor_io(ByteBuffer buffer, RingBufferCapacity capacity, int count) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(capacity, "capacity");
        bytesWritten(buffer, capacity, count);
    }

    private final void bytesWritten(ByteBuffer byteBuffer, RingBufferCapacity ringBufferCapacity, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.writePosition = carryIndex(byteBuffer, this.writePosition + i);
        ringBufferCapacity.completeWrite(i);
        setTotalBytesWritten$ktor_io(get_totalBytesWritten() + ((long) i));
    }

    private final void bytesRead(ByteBuffer byteBuffer, RingBufferCapacity ringBufferCapacity, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.readPosition = carryIndex(byteBuffer, this.readPosition + i);
        ringBufferCapacity.completeRead(i);
        setTotalBytesRead$ktor_io(get_totalBytesRead() + ((long) i));
        resumeWriteOp();
    }

    public final ByteBufferChannel resolveChannelInstance$ktor_io() {
        ByteBufferChannel byteBufferChannelResolveDelegation;
        JoiningState joiningState = this.joining;
        return (joiningState == null || (byteBufferChannelResolveDelegation = resolveDelegation(this, joiningState)) == null) ? this : byteBufferChannelResolveDelegation;
    }

    private final ByteBufferChannel resolveDelegation(ByteBufferChannel current, JoiningState joining) {
        while (current.getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            current = joining.getDelegatedTo();
            joining = current.joining;
            if (joining == null) {
                return current;
            }
        }
        return null;
    }

    private final Object delegateSuspend(JoiningState joiningState, Function1<? super ByteBufferChannel, Unit> function1, Continuation<? super Unit> continuation) throws Throwable {
        while (getState() != ReadWriteBufferState.Terminated.INSTANCE) {
            writeSuspend(1, continuation);
        }
        function1.invoke(joiningState.getDelegatedTo());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        if (r10.writeByte(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a5, code lost:
    
        if (r10.getDelegatedTo().writeByte(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c2, code lost:
    
        if (r2.getDelegatedTo().writeByte(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0121, code lost:
    
        if (r9.getDelegatedTo().writeByte(r10, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0141, code lost:
    
        if (r2.getDelegatedTo().writeByte(r8, r0) == r1) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fb A[PHI: r2 r6 r8 r9 r10
      0x00fb: PHI (r2v10 java.nio.ByteBuffer) = (r2v9 java.nio.ByteBuffer), (r2v14 java.nio.ByteBuffer) binds: [B:47:0x00f8, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00fb: PHI (r6v2 io.ktor.utils.io.internal.RingBufferCapacity) = (r6v1 io.ktor.utils.io.internal.RingBufferCapacity), (r6v4 io.ktor.utils.io.internal.RingBufferCapacity) binds: [B:47:0x00f8, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00fb: PHI (r8v13 io.ktor.utils.io.ByteBufferChannel) = (r8v11 io.ktor.utils.io.ByteBufferChannel), (r8v19 io.ktor.utils.io.ByteBufferChannel) binds: [B:47:0x00f8, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00fb: PHI (r9v14 int) = (r9v12 int), (r9v21 int) binds: [B:47:0x00f8, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00fb: PHI (r10v13 byte) = (r10v12 byte), (r10v17 byte) binds: [B:47:0x00f8, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012f A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f8 -> B:49:0x00fb). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object writeByte$suspendImpl(io.ktor.utils.io.ByteBufferChannel r8, byte r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeByte$suspendImpl(io.ktor.utils.io.ByteBufferChannel, byte, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        if (r10.writeShort(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a5, code lost:
    
        if (r10.getDelegatedTo().writeShort(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c2, code lost:
    
        if (r2.getDelegatedTo().writeShort(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011e, code lost:
    
        if (r10.getDelegatedTo().writeShort(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013f, code lost:
    
        if (r2.getDelegatedTo().writeShort(r8, r0) == r1) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f8 A[PHI: r2 r6 r8 r9 r10
      0x00f8: PHI (r2v7 int) = (r2v6 int), (r2v13 int) binds: [B:47:0x00f5, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00f8: PHI (r6v4 io.ktor.utils.io.internal.RingBufferCapacity) = (r6v3 io.ktor.utils.io.internal.RingBufferCapacity), (r6v6 io.ktor.utils.io.internal.RingBufferCapacity) binds: [B:47:0x00f5, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00f8: PHI (r8v13 io.ktor.utils.io.ByteBufferChannel) = (r8v11 io.ktor.utils.io.ByteBufferChannel), (r8v19 io.ktor.utils.io.ByteBufferChannel) binds: [B:47:0x00f5, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00f8: PHI (r9v13 short) = (r9v11 short), (r9v20 short) binds: [B:47:0x00f5, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]
      0x00f8: PHI (r10v11 java.nio.ByteBuffer) = (r10v10 java.nio.ByteBuffer), (r10v14 java.nio.ByteBuffer) binds: [B:47:0x00f5, B:15:0x0050] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012d A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f5 -> B:49:0x00f8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object writeShort$suspendImpl(io.ktor.utils.io.ByteBufferChannel r8, short r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeShort$suspendImpl(io.ktor.utils.io.ByteBufferChannel, short, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0082, code lost:
    
        if (r10.writeInt(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a4, code lost:
    
        if (r8.writeInt(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c0, code lost:
    
        if (r8.writeInt(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011b, code lost:
    
        if (r8.writeInt(r9, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013b, code lost:
    
        if (r9.writeInt(r8, r0) == r1) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6 A[PHI: r2 r3 r6 r8 r9
      0x00f6: PHI (r2v10 java.nio.ByteBuffer) = (r2v9 java.nio.ByteBuffer), (r2v15 java.nio.ByteBuffer) binds: [B:47:0x00f3, B:15:0x0051] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r3v4 int) = (r3v2 int), (r3v8 int) binds: [B:47:0x00f3, B:15:0x0051] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r6v5 io.ktor.utils.io.internal.RingBufferCapacity) = (r6v4 io.ktor.utils.io.internal.RingBufferCapacity), (r6v7 io.ktor.utils.io.internal.RingBufferCapacity) binds: [B:47:0x00f3, B:15:0x0051] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r8v12 io.ktor.utils.io.ByteBufferChannel) = (r8v10 io.ktor.utils.io.ByteBufferChannel), (r8v18 io.ktor.utils.io.ByteBufferChannel) binds: [B:47:0x00f3, B:15:0x0051] A[DONT_GENERATE, DONT_INLINE]
      0x00f6: PHI (r9v9 int) = (r9v7 int), (r9v13 int) binds: [B:47:0x00f3, B:15:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012a A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f3 -> B:49:0x00f6). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object writeInt$suspendImpl(io.ktor.utils.io.ByteBufferChannel r8, int r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeInt$suspendImpl(io.ktor.utils.io.ByteBufferChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
    
        if (r13.writeLong(r11, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a5, code lost:
    
        if (r10.writeLong(r11, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c1, code lost:
    
        if (r10.writeLong(r11, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011f, code lost:
    
        if (r10.writeLong(r12, r0) == r1) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013f, code lost:
    
        if (r12.writeLong(r10, r0) == r1) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fa A[PHI: r2 r7 r10 r11 r12
      0x00fa: PHI (r2v10 java.nio.ByteBuffer) = (r2v9 java.nio.ByteBuffer), (r2v14 java.nio.ByteBuffer) binds: [B:47:0x00f7, B:15:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x00fa: PHI (r7v2 io.ktor.utils.io.internal.RingBufferCapacity) = (r7v1 io.ktor.utils.io.internal.RingBufferCapacity), (r7v4 io.ktor.utils.io.internal.RingBufferCapacity) binds: [B:47:0x00f7, B:15:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x00fa: PHI (r10v12 io.ktor.utils.io.ByteBufferChannel) = (r10v10 io.ktor.utils.io.ByteBufferChannel), (r10v18 io.ktor.utils.io.ByteBufferChannel) binds: [B:47:0x00f7, B:15:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x00fa: PHI (r11v8 int) = (r11v6 int), (r11v14 int) binds: [B:47:0x00f7, B:15:0x0052] A[DONT_GENERATE, DONT_INLINE]
      0x00fa: PHI (r12v4 long) = (r12v3 long), (r12v6 long) binds: [B:47:0x00f7, B:15:0x0052] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x012e A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f7 -> B:49:0x00fa). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object writeLong$suspendImpl(io.ktor.utils.io.ByteBufferChannel r10, long r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeLong$suspendImpl(io.ktor.utils.io.ByteBufferChannel, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object writeDouble$suspendImpl(ByteBufferChannel byteBufferChannel, double d, Continuation<? super Unit> continuation) {
        Object objWriteLong = byteBufferChannel.writeLong(Double.doubleToRawLongBits(d), continuation);
        return objWriteLong == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteLong : Unit.INSTANCE;
    }

    static /* synthetic */ Object writeFloat$suspendImpl(ByteBufferChannel byteBufferChannel, float f, Continuation<? super Unit> continuation) {
        Object objWriteInt = byteBufferChannel.writeInt(Float.floatToRawIntBits(f), continuation);
        return objWriteInt == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteInt : Unit.INSTANCE;
    }

    private final Object writePrimitive(int i, Function1<? super ByteBufferChannel, Unit> function1, Function1<? super ByteBuffer, Unit> function12, Continuation<? super Unit> continuation) throws Throwable {
        JoiningState joiningState = this.joining;
        if (joiningState != null) {
            ByteBufferChannel byteBufferChannelResolveDelegation = resolveDelegation(this, joiningState);
            if (byteBufferChannelResolveDelegation != null) {
                function1.invoke(byteBufferChannelResolveDelegation);
                return Unit.INSTANCE;
            }
        }
        ByteBuffer byteBuffer = setupStateForWrite$ktor_io();
        if (byteBuffer != null) {
            RingBufferCapacity ringBufferCapacity = getState().capacity;
            if (ringBufferCapacity.tryWriteExact(i)) {
                prepareWriteBuffer$ktor_io(byteBuffer, i);
                if (byteBuffer.remaining() < i) {
                    byteBuffer.limit(byteBuffer.capacity());
                    function12.invoke(byteBuffer);
                    carry(byteBuffer);
                } else {
                    function12.invoke(byteBuffer);
                }
                bytesWritten(byteBuffer, ringBufferCapacity, i);
                Unit unit = Unit.INSTANCE;
                if (ringBufferCapacity.isFull() || getAutoFlush()) {
                    flush();
                }
                restoreStateAfterWrite$ktor_io();
                tryTerminate$ktor_io();
                return Unit.INSTANCE;
            }
            while (true) {
                try {
                    writeSuspend(i, continuation);
                    if (this.joining != null) {
                        restoreStateAfterWrite$ktor_io();
                        JoiningState joiningState2 = this.joining;
                        Intrinsics.checkNotNull(joiningState2);
                        if (getState() == ReadWriteBufferState.Terminated.INSTANCE) {
                            function1.invoke(joiningState2.getDelegatedTo());
                            Unit unit2 = Unit.INSTANCE;
                        } else {
                            while (getState() != ReadWriteBufferState.Terminated.INSTANCE) {
                                writeSuspend(1, continuation);
                            }
                            function1.invoke(joiningState2.getDelegatedTo());
                            Unit unit3 = Unit.INSTANCE;
                            Unit unit4 = Unit.INSTANCE;
                            Unit unit5 = Unit.INSTANCE;
                        }
                        Unit unit6 = Unit.INSTANCE;
                    } else if (ringBufferCapacity.tryWriteExact(i)) {
                        prepareWriteBuffer$ktor_io(byteBuffer, i);
                        if (byteBuffer.remaining() < i) {
                            byteBuffer.limit(byteBuffer.capacity());
                            function12.invoke(byteBuffer);
                            carry(byteBuffer);
                        } else {
                            function12.invoke(byteBuffer);
                        }
                        bytesWritten(byteBuffer, ringBufferCapacity, i);
                        Unit unit7 = Unit.INSTANCE;
                        if (ringBufferCapacity.isFull() || getAutoFlush()) {
                            flush();
                        }
                        restoreStateAfterWrite$ktor_io();
                        tryTerminate$ktor_io();
                        Unit unit8 = Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    restoreStateAfterWrite$ktor_io();
                    tryTerminate$ktor_io();
                    throw th;
                }
            }
            return Unit.INSTANCE;
        }
        JoiningState joiningState3 = this.joining;
        Intrinsics.checkNotNull(joiningState3);
        if (getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            function1.invoke(joiningState3.getDelegatedTo());
            Unit unit9 = Unit.INSTANCE;
        } else {
            while (getState() != ReadWriteBufferState.Terminated.INSTANCE) {
                writeSuspend(1, continuation);
            }
            function1.invoke(joiningState3.getDelegatedTo());
            Unit unit10 = Unit.INSTANCE;
            Unit unit11 = Unit.INSTANCE;
            Unit unit12 = Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    private final boolean tryWritePrimitive(ByteBuffer byteBuffer, int i, RingBufferCapacity ringBufferCapacity, Function1<? super ByteBuffer, Unit> function1) {
        if (!ringBufferCapacity.tryWriteExact(i)) {
            return false;
        }
        prepareWriteBuffer$ktor_io(byteBuffer, i);
        if (byteBuffer.remaining() < i) {
            byteBuffer.limit(byteBuffer.capacity());
            function1.invoke(byteBuffer);
            carry(byteBuffer);
        } else {
            function1.invoke(byteBuffer);
        }
        bytesWritten(byteBuffer, ringBufferCapacity, i);
        if (ringBufferCapacity.isFull() || getAutoFlush()) {
            flush();
        }
        restoreStateAfterWrite$ktor_io();
        tryTerminate$ktor_io();
        return true;
    }

    private final void doWritePrimitive(int size, ByteBuffer buffer, RingBufferCapacity capacity, Function1<? super ByteBuffer, Unit> writer) {
        if (buffer.remaining() < size) {
            buffer.limit(buffer.capacity());
            writer.invoke(buffer);
            carry(buffer);
        } else {
            writer.invoke(buffer);
        }
        bytesWritten(buffer, capacity, size);
        if (capacity.isFull() || getAutoFlush()) {
            flush();
        }
        restoreStateAfterWrite$ktor_io();
        tryTerminate$ktor_io();
    }

    private final Object writeSuspendPrimitive(ByteBuffer byteBuffer, int i, RingBufferCapacity ringBufferCapacity, Function1<? super ByteBufferChannel, Unit> function1, Function1<? super ByteBuffer, Unit> function12, Continuation<? super Unit> continuation) throws Throwable {
        do {
            try {
                writeSuspend(i, continuation);
                if (this.joining != null) {
                    restoreStateAfterWrite$ktor_io();
                    JoiningState joiningState = this.joining;
                    Intrinsics.checkNotNull(joiningState);
                    if (getState() == ReadWriteBufferState.Terminated.INSTANCE) {
                        function1.invoke(joiningState.getDelegatedTo());
                        Unit unit = Unit.INSTANCE;
                    } else {
                        while (getState() != ReadWriteBufferState.Terminated.INSTANCE) {
                            writeSuspend(1, continuation);
                        }
                        function1.invoke(joiningState.getDelegatedTo());
                        Unit unit2 = Unit.INSTANCE;
                        Unit unit3 = Unit.INSTANCE;
                        Unit unit4 = Unit.INSTANCE;
                    }
                    return Unit.INSTANCE;
                }
            } catch (Throwable th) {
                restoreStateAfterWrite$ktor_io();
                tryTerminate$ktor_io();
                throw th;
            }
        } while (!ringBufferCapacity.tryWriteExact(i));
        prepareWriteBuffer$ktor_io(byteBuffer, i);
        if (byteBuffer.remaining() < i) {
            byteBuffer.limit(byteBuffer.capacity());
            function12.invoke(byteBuffer);
            carry(byteBuffer);
        } else {
            function12.invoke(byteBuffer);
        }
        bytesWritten(byteBuffer, ringBufferCapacity, i);
        Unit unit5 = Unit.INSTANCE;
        if (ringBufferCapacity.isFull() || getAutoFlush()) {
            flush();
        }
        restoreStateAfterWrite$ktor_io();
        tryTerminate$ktor_io();
        return Unit.INSTANCE;
    }

    private final Object delegatePrimitive(Function1<? super ByteBufferChannel, Unit> function1, Continuation<? super Unit> continuation) throws Throwable {
        JoiningState joiningState = this.joining;
        Intrinsics.checkNotNull(joiningState);
        if (getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            function1.invoke(joiningState.getDelegatedTo());
            return Unit.INSTANCE;
        }
        while (getState() != ReadWriteBufferState.Terminated.INSTANCE) {
            writeSuspend(1, continuation);
        }
        function1.invoke(joiningState.getDelegatedTo());
        Unit unit = Unit.INSTANCE;
        Unit unit2 = Unit.INSTANCE;
        return Unit.INSTANCE;
    }

    static /* synthetic */ Object awaitFreeSpace$suspendImpl(ByteBufferChannel byteBufferChannel, Continuation<? super Unit> continuation) throws Throwable {
        Object objWriteSuspend = byteBufferChannel.writeSuspend(1, continuation);
        return objWriteSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteSuspend : Unit.INSTANCE;
    }

    static /* synthetic */ Object writeAvailable$suspendImpl(ByteBufferChannel byteBufferChannel, ByteBuffer byteBuffer, Continuation<? super Integer> continuation) throws Throwable {
        ByteBufferChannel byteBufferChannelResolveDelegation;
        ByteBufferChannel byteBufferChannelResolveDelegation2;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (byteBufferChannelResolveDelegation2 = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            return byteBufferChannelResolveDelegation2.writeAvailable(byteBuffer, continuation);
        }
        int iWriteAsMuchAsPossible = byteBufferChannel.writeAsMuchAsPossible(byteBuffer);
        if (iWriteAsMuchAsPossible > 0) {
            return Boxing.boxInt(iWriteAsMuchAsPossible);
        }
        JoiningState joiningState2 = byteBufferChannel.joining;
        return (joiningState2 == null || (byteBufferChannelResolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState2)) == null) ? byteBufferChannel.writeAvailableSuspend(byteBuffer, continuation) : byteBufferChannelResolveDelegation.writeAvailableSuspend(byteBuffer, continuation);
    }

    static /* synthetic */ Object writeAvailable$suspendImpl(ByteBufferChannel byteBufferChannel, ChunkBuffer chunkBuffer, Continuation<? super Integer> continuation) throws Throwable {
        ByteBufferChannel byteBufferChannelResolveDelegation;
        ByteBufferChannel byteBufferChannelResolveDelegation2;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (byteBufferChannelResolveDelegation2 = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            return byteBufferChannelResolveDelegation2.writeAvailable(chunkBuffer, continuation);
        }
        int iWriteAsMuchAsPossible = byteBufferChannel.writeAsMuchAsPossible(chunkBuffer);
        if (iWriteAsMuchAsPossible > 0) {
            return Boxing.boxInt(iWriteAsMuchAsPossible);
        }
        JoiningState joiningState2 = byteBufferChannel.joining;
        return (joiningState2 == null || (byteBufferChannelResolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState2)) == null) ? byteBufferChannel.writeAvailableSuspend(chunkBuffer, continuation) : byteBufferChannelResolveDelegation.writeAvailableSuspend(chunkBuffer, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeAvailableSuspend(java.nio.ByteBuffer r7, kotlin.coroutines.Continuation<? super java.lang.Integer> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C06101
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06101) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L48
            if (r2 == r5) goto L3c
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L3c:
            java.lang.Object r7 = r0.L$1
            java.nio.ByteBuffer r7 = (java.nio.ByteBuffer) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L59
        L48:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r5
            java.lang.Object r8 = r6.writeSuspend(r5, r0)
            if (r8 != r1) goto L58
            goto L7e
        L58:
            r2 = r6
        L59:
            io.ktor.utils.io.internal.JoiningState r8 = r2.joining
            r5 = 0
            if (r8 == 0) goto L72
            io.ktor.utils.io.ByteBufferChannel r8 = r2.resolveDelegation(r2, r8)
            if (r8 == 0) goto L72
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r4
            java.lang.Object r7 = r8.writeAvailableSuspend(r7, r0)
            if (r7 != r1) goto L71
            goto L7e
        L71:
            return r7
        L72:
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r7 = r2.writeAvailable(r7, r0)
            if (r7 != r1) goto L7f
        L7e:
            return r1
        L7f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeAvailableSuspend(java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeAvailableSuspend(io.ktor.utils.io.core.internal.ChunkBuffer r7, kotlin.coroutines.Continuation<? super java.lang.Integer> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C06113
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$3 r0 = (io.ktor.utils.io.ByteBufferChannel.C06113) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$writeAvailableSuspend$3
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L48
            if (r2 == r5) goto L3c
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L3c:
            java.lang.Object r7 = r0.L$1
            io.ktor.utils.io.core.internal.ChunkBuffer r7 = (io.ktor.utils.io.core.internal.ChunkBuffer) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L59
        L48:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r5
            java.lang.Object r8 = r6.writeSuspend(r5, r0)
            if (r8 != r1) goto L58
            goto L7e
        L58:
            r2 = r6
        L59:
            io.ktor.utils.io.internal.JoiningState r8 = r2.joining
            r5 = 0
            if (r8 == 0) goto L72
            io.ktor.utils.io.ByteBufferChannel r8 = r2.resolveDelegation(r2, r8)
            if (r8 == 0) goto L72
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r4
            java.lang.Object r7 = r8.writeAvailableSuspend(r7, r0)
            if (r7 != r1) goto L71
            goto L7e
        L71:
            return r7
        L72:
            r0.L$0 = r5
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r7 = r2.writeAvailable(r7, r0)
            if (r7 != r1) goto L7f
        L7e:
            return r1
        L7f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeAvailableSuspend(io.ktor.utils.io.core.internal.ChunkBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object writeFully$suspendImpl(ByteBufferChannel byteBufferChannel, ByteBuffer byteBuffer, Continuation<? super Unit> continuation) throws Throwable {
        Object objWriteFullySuspend;
        ByteBufferChannel byteBufferChannelResolveDelegation;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState == null || (byteBufferChannelResolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) == null) {
            byteBufferChannel.writeAsMuchAsPossible(byteBuffer);
            return (byteBuffer.hasRemaining() && (objWriteFullySuspend = byteBufferChannel.writeFullySuspend(byteBuffer, continuation)) == IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objWriteFullySuspend : Unit.INSTANCE;
        }
        Object objWriteFully = byteBufferChannelResolveDelegation.writeFully(byteBuffer, continuation);
        return objWriteFully == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteFully : Unit.INSTANCE;
    }

    static /* synthetic */ Object writeFully$suspendImpl(ByteBufferChannel byteBufferChannel, Buffer buffer, Continuation<? super Unit> continuation) throws Throwable {
        byteBufferChannel.writeAsMuchAsPossible(buffer);
        if (buffer.getWritePosition() <= buffer.getReadPosition()) {
            return Unit.INSTANCE;
        }
        Object objWriteFullySuspend = byteBufferChannel.writeFullySuspend(buffer, continuation);
        return objWriteFullySuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteFullySuspend : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: writeFully-JT6ljtQ$suspendImpl, reason: not valid java name */
    static /* synthetic */ Object m530writeFullyJT6ljtQ$suspendImpl(ByteBufferChannel byteBufferChannel, ByteBuffer byteBuffer, int i, int i2, Continuation<? super Unit> continuation) {
        Object objWriteFully = byteBufferChannel.writeFully(Memory.m552slice87lwejk(byteBuffer, i, i2 - i), continuation);
        return objWriteFully == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteFully : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
    
        if (r7.writeFully(r6, r0) == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0055 -> B:22:0x0058). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeFullySuspend(java.nio.ByteBuffer r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel.C06131
            if (r0 == 0) goto L14
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06131) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L70
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$1
            java.nio.ByteBuffer r6 = (java.nio.ByteBuffer) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L58
        L41:
            kotlin.ResultKt.throwOnFailure(r7)
            r2 = r5
        L45:
            boolean r7 = r6.hasRemaining()
            if (r7 == 0) goto L77
            r0.L$0 = r2
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = r2.tryWriteSuspend$ktor_io(r4, r0)
            if (r7 != r1) goto L58
            goto L6f
        L58:
            io.ktor.utils.io.internal.JoiningState r7 = r2.joining
            if (r7 == 0) goto L73
            io.ktor.utils.io.ByteBufferChannel r7 = r2.resolveDelegation(r2, r7)
            if (r7 == 0) goto L73
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r6 = r7.writeFully(r6, r0)
            if (r6 != r1) goto L70
        L6f:
            return r1
        L70:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L73:
            r2.writeAsMuchAsPossible(r6)
            goto L45
        L77:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeFullySuspend(java.nio.ByteBuffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        if (r8.writeFully(r7, r0) == r1) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:22:0x005c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeFullySuspend(io.ktor.utils.io.core.Buffer r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C06143
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3 r0 = (io.ktor.utils.io.ByteBufferChannel.C06143) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$3
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L74
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.L$1
            io.ktor.utils.io.core.Buffer r7 = (io.ktor.utils.io.core.Buffer) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5c
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r6
        L45:
            int r8 = r7.getWritePosition()
            int r5 = r7.getReadPosition()
            if (r8 <= r5) goto L7b
            r0.L$0 = r2
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r2.tryWriteSuspend$ktor_io(r4, r0)
            if (r8 != r1) goto L5c
            goto L73
        L5c:
            io.ktor.utils.io.internal.JoiningState r8 = r2.joining
            if (r8 == 0) goto L77
            io.ktor.utils.io.ByteBufferChannel r8 = r2.resolveDelegation(r2, r8)
            if (r8 == 0) goto L77
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r7 = r8.writeFully(r7, r0)
            if (r7 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L77:
            r2.writeAsMuchAsPossible(r7)
            goto L45
        L7b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeFullySuspend(io.ktor.utils.io.core.Buffer, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitClose(Continuation<? super Unit> continuation) {
        if (getClosed() != null) {
            return Unit.INSTANCE;
        }
        JoiningState joiningState = this.joining;
        if (joiningState == null) {
            if (getClosed() == null) {
                throw new IllegalStateException("Only works for joined.".toString());
            }
            return Unit.INSTANCE;
        }
        Object objAwaitClose = joiningState.awaitClose(continuation);
        return objAwaitClose == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitClose : Unit.INSTANCE;
    }

    public final Object joinFrom$ktor_io(ByteBufferChannel byteBufferChannel, boolean z, Continuation<? super Unit> continuation) throws Throwable {
        if (byteBufferChannel.getClosed() != null && byteBufferChannel.getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            if (z) {
                ClosedElement closed = byteBufferChannel.getClosed();
                Intrinsics.checkNotNull(closed);
                close(closed.getCause());
            }
            return Unit.INSTANCE;
        }
        ClosedElement closed2 = getClosed();
        if (closed2 != null) {
            if (byteBufferChannel.getClosed() == null) {
                ByteBufferChannelKt.rethrowClosed(closed2.getSendException());
                throw new KotlinNothingValueException();
            }
            return Unit.INSTANCE;
        }
        JoiningState joiningState = byteBufferChannel.setupDelegateTo(this, z);
        if (byteBufferChannel.tryCompleteJoining(joiningState)) {
            Object objAwaitClose = byteBufferChannel.awaitClose(continuation);
            return objAwaitClose == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitClose : Unit.INSTANCE;
        }
        Object objJoinFromSuspend = joinFromSuspend(byteBufferChannel, z, joiningState, continuation);
        return objJoinFromSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoinFromSuspend : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
    
        if (r9.awaitClose(r6) == r0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object joinFromSuspend(io.ktor.utils.io.ByteBufferChannel r9, boolean r10, io.ktor.utils.io.internal.JoiningState r11, kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            r8 = this;
            boolean r0 = r12 instanceof io.ktor.utils.io.ByteBufferChannel.C05851
            if (r0 == 0) goto L14
            r0 = r12
            io.ktor.utils.io.ByteBufferChannel$joinFromSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05851) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$joinFromSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$joinFromSuspend$1
            r0.<init>(r12)
        L19:
            r6 = r0
            java.lang.Object r12 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r7 = 2
            r2 = 1
            if (r1 == 0) goto L44
            if (r1 == r2) goto L36
            if (r1 != r7) goto L2e
            kotlin.ResultKt.throwOnFailure(r12)
            goto L81
        L2e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L36:
            boolean r10 = r6.Z$0
            java.lang.Object r9 = r6.L$1
            io.ktor.utils.io.ByteBufferChannel r9 = (io.ktor.utils.io.ByteBufferChannel) r9
            java.lang.Object r11 = r6.L$0
            io.ktor.utils.io.ByteBufferChannel r11 = (io.ktor.utils.io.ByteBufferChannel) r11
            kotlin.ResultKt.throwOnFailure(r12)
            goto L60
        L44:
            kotlin.ResultKt.throwOnFailure(r12)
            r6.L$0 = r8
            r6.L$1 = r9
            r6.Z$0 = r10
            r6.label = r2
            r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r1 = r8
            r2 = r9
            r5 = r11
            java.lang.Object r9 = r1.copyDirect$ktor_io(r2, r3, r5, r6)
            if (r9 != r0) goto L5e
            goto L80
        L5e:
            r11 = r8
            r9 = r2
        L60:
            if (r10 == 0) goto L70
            boolean r10 = r9.isClosedForRead()
            if (r10 == 0) goto L70
            io.ktor.utils.io.ByteWriteChannel r11 = (io.ktor.utils.io.ByteWriteChannel) r11
            io.ktor.utils.io.ByteWriteChannelKt.close(r11)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L70:
            r11.flush()
            r10 = 0
            r6.L$0 = r10
            r6.L$1 = r10
            r6.label = r7
            java.lang.Object r9 = r9.awaitClose(r6)
            if (r9 != r0) goto L81
        L80:
            return r0
        L81:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.joinFromSuspend(io.ktor.utils.io.ByteBufferChannel, boolean, io.ktor.utils.io.internal.JoiningState, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:231:0x0159, code lost:
    
        r4 = r27;
        r7 = r30;
        r14 = r15;
        r12 = r16;
        r8 = r18;
        r27 = r19;
        r11 = r22;
        r16 = r0;
        r15 = r1;
        r0 = r2;
        r2 = r3;
        r3 = r21;
     */
    /* JADX WARN: Path cross not found for [B:136:0x02ed, B:138:0x02f3], limit reached: 228 */
    /* JADX WARN: Path cross not found for [B:138:0x02f3, B:136:0x02ed], limit reached: 228 */
    /* JADX WARN: Path cross not found for [B:144:0x0315, B:150:0x0334], limit reached: 228 */
    /* JADX WARN: Path cross not found for [B:150:0x0334, B:144:0x0315], limit reached: 228 */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02ed A[Catch: all -> 0x03c0, TryCatch #0 {all -> 0x03c0, blocks: (B:134:0x02e7, B:136:0x02ed, B:140:0x02f8, B:141:0x0307, B:138:0x02f3), top: B:204:0x02e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02f8 A[Catch: all -> 0x03c0, TryCatch #0 {all -> 0x03c0, blocks: (B:134:0x02e7, B:136:0x02ed, B:140:0x02f8, B:141:0x0307, B:138:0x02f3), top: B:204:0x02e7 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0315 A[Catch: all -> 0x007c, TRY_ENTER, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x033a A[Catch: all -> 0x007c, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0396 A[Catch: all -> 0x007c, TRY_LEAVE, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03e7 A[Catch: all -> 0x007c, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03ed A[Catch: all -> 0x007c, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03f2 A[Catch: all -> 0x007c, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0408 A[Catch: all -> 0x007c, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0271 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0123 A[Catch: all -> 0x007c, TryCatch #13 {all -> 0x007c, blocks: (B:14:0x0048, B:49:0x011d, B:51:0x0123, B:53:0x0127, B:56:0x012e, B:144:0x0315, B:147:0x031d, B:149:0x0329, B:150:0x0334, B:152:0x033a, B:154:0x0343, B:158:0x036c, B:161:0x0376, B:172:0x0392, B:174:0x0396, B:165:0x037f, B:59:0x013a, B:187:0x03e1, B:189:0x03e7, B:193:0x03f2, B:194:0x03ff, B:195:0x0405, B:191:0x03ed, B:197:0x0408, B:198:0x040b, B:19:0x0073), top: B:230:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x015f A[Catch: all -> 0x03c4, TryCatch #4 {all -> 0x03c4, blocks: (B:64:0x0159, B:66:0x015f, B:68:0x0163), top: B:212:0x0159 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a9 A[Catch: all -> 0x01c3, TRY_LEAVE, TryCatch #3 {all -> 0x01c3, blocks: (B:75:0x01a5, B:77:0x01a9), top: B:210:0x01a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0203 A[Catch: all -> 0x02c2, TRY_LEAVE, TryCatch #2 {all -> 0x02c2, blocks: (B:86:0x01e4, B:90:0x0203), top: B:208:0x01e4 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:149:0x0329 -> B:49:0x011d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:173:0x0394 -> B:177:0x03ba). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:175:0x03b7 -> B:177:0x03ba). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object copyDirect$ktor_io(io.ktor.utils.io.ByteBufferChannel r27, long r28, io.ktor.utils.io.internal.JoiningState r30, kotlin.coroutines.Continuation<? super java.lang.Long> r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1049
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.copyDirect$ktor_io(io.ktor.utils.io.ByteBufferChannel, long, io.ktor.utils.io.internal.JoiningState, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void ensureClosedJoined(JoiningState joined) {
        ClosedElement closed = getClosed();
        if (closed == null) {
            return;
        }
        this.joining = null;
        if (!joined.getDelegateClose()) {
            joined.getDelegatedTo().flush();
            joined.complete();
            return;
        }
        ReadWriteBufferState state = joined.getDelegatedTo().getState();
        boolean z = (state instanceof ReadWriteBufferState.Writing) || (state instanceof ReadWriteBufferState.ReadingWriting);
        if (closed.getCause() != null || !z) {
            joined.getDelegatedTo().close(closed.getCause());
        } else {
            joined.getDelegatedTo().flush();
        }
        joined.complete();
    }

    static /* synthetic */ Object writeFully$suspendImpl(ByteBufferChannel byteBufferChannel, byte[] bArr, int i, int i2, Continuation<? super Unit> continuation) throws Throwable {
        ByteBufferChannel byteBufferChannelResolveDelegation;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (byteBufferChannelResolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            Object objWriteFully = byteBufferChannelResolveDelegation.writeFully(bArr, i, i2, continuation);
            return objWriteFully == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteFully : Unit.INSTANCE;
        }
        while (i2 > 0) {
            int iWriteAsMuchAsPossible = byteBufferChannel.writeAsMuchAsPossible(bArr, i, i2);
            if (iWriteAsMuchAsPossible == 0) {
                break;
            }
            i += iWriteAsMuchAsPossible;
            i2 -= iWriteAsMuchAsPossible;
        }
        if (i2 == 0) {
            return Unit.INSTANCE;
        }
        Object objWriteFullySuspend = byteBufferChannel.writeFullySuspend(bArr, i, i2, continuation);
        return objWriteFullySuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteFullySuspend : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0055 -> B:20:0x0058). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeFullySuspend(byte[] r6, int r7, int r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof io.ktor.utils.io.ByteBufferChannel.AnonymousClass5
            if (r0 == 0) goto L14
            r0 = r9
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5 r0 = (io.ktor.utils.io.ByteBufferChannel.AnonymousClass5) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5 r0 = new io.ktor.utils.io.ByteBufferChannel$writeFullySuspend$5
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3e
            if (r2 != r3) goto L36
            int r6 = r0.I$1
            int r7 = r0.I$0
            java.lang.Object r8 = r0.L$1
            byte[] r8 = (byte[]) r8
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L58
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            r2 = r5
        L42:
            if (r8 <= 0) goto L64
            r0.L$0 = r2
            r0.L$1 = r6
            r0.I$0 = r7
            r0.I$1 = r8
            r0.label = r3
            java.lang.Object r9 = r2.writeAvailable(r6, r7, r8, r0)
            if (r9 != r1) goto L55
            return r1
        L55:
            r4 = r8
            r8 = r6
            r6 = r4
        L58:
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            int r7 = r7 + r9
            int r6 = r6 - r9
            r4 = r8
            r8 = r6
            r6 = r4
            goto L42
        L64:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeFullySuspend(byte[], int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object writeAvailable$suspendImpl(ByteBufferChannel byteBufferChannel, byte[] bArr, int i, int i2, Continuation<? super Integer> continuation) throws Throwable {
        ByteBufferChannel byteBufferChannelResolveDelegation;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (byteBufferChannelResolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            return byteBufferChannelResolveDelegation.writeAvailable(bArr, i, i2, continuation);
        }
        int iWriteAsMuchAsPossible = byteBufferChannel.writeAsMuchAsPossible(bArr, i, i2);
        if (iWriteAsMuchAsPossible > 0) {
            return Boxing.boxInt(iWriteAsMuchAsPossible);
        }
        return byteBufferChannel.writeSuspend(bArr, i, i2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d A[PHI: r2 r7 r8 r9
      0x005d: PHI (r2v3 io.ktor.utils.io.ByteBufferChannel) = (r2v2 io.ktor.utils.io.ByteBufferChannel), (r2v6 io.ktor.utils.io.ByteBufferChannel) binds: [B:19:0x005a, B:16:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x005d: PHI (r7v2 byte[]) = (r7v1 byte[]), (r7v6 byte[]) binds: [B:19:0x005a, B:16:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x005d: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:19:0x005a, B:16:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x005d: PHI (r9v2 int) = (r9v1 int), (r9v5 int) binds: [B:19:0x005a, B:16:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005a -> B:21:0x005d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeSuspend(byte[] r7, int r8, int r9, kotlin.coroutines.Continuation<? super java.lang.Integer> r10) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r10 instanceof io.ktor.utils.io.ByteBufferChannel.C06191
            if (r0 == 0) goto L14
            r0 = r10
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06191) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeSuspend$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L48
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r10)
            return r10
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            int r7 = r0.I$1
            int r8 = r0.I$0
            java.lang.Object r9 = r0.L$1
            byte[] r9 = (byte[]) r9
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r10)
            r5 = r9
            r9 = r7
            r7 = r5
            goto L5d
        L48:
            kotlin.ResultKt.throwOnFailure(r10)
            r2 = r6
        L4c:
            r0.L$0 = r2
            r0.L$1 = r7
            r0.I$0 = r8
            r0.I$1 = r9
            r0.label = r4
            java.lang.Object r10 = r2.tryWriteSuspend$ktor_io(r4, r0)
            if (r10 != r1) goto L5d
            goto L74
        L5d:
            io.ktor.utils.io.internal.JoiningState r10 = r2.joining
            if (r10 == 0) goto L76
            io.ktor.utils.io.ByteBufferChannel r10 = r2.resolveDelegation(r2, r10)
            if (r10 == 0) goto L76
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r7 = r10.writeSuspend(r7, r8, r9, r0)
            if (r7 != r1) goto L75
        L74:
            return r1
        L75:
            return r7
        L76:
            int r10 = r2.writeAsMuchAsPossible(r7, r8, r9)
            if (r10 <= 0) goto L4c
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r10)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeSuspend(byte[], int, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object write$suspendImpl(io.ktor.utils.io.ByteBufferChannel r5, int r6, kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C06091
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$write$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06091) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$write$1 r0 = new io.ktor.utils.io.ByteBufferChannel$write$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            int r5 = r0.I$0
            java.lang.Object r6 = r0.L$1
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
            java.lang.Object r7 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r7 = (io.ktor.utils.io.ByteBufferChannel) r7
            kotlin.ResultKt.throwOnFailure(r8)
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L49
        L38:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L40:
            kotlin.ResultKt.throwOnFailure(r8)
            if (r6 <= 0) goto L80
            r8 = 4088(0xff8, float:5.729E-42)
            if (r6 > r8) goto L61
        L49:
            int r8 = r5.writeAvailable(r6, r7)
            if (r8 < 0) goto L52
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L52:
            r0.L$0 = r5
            r0.L$1 = r7
            r0.I$0 = r6
            r0.label = r3
            java.lang.Object r8 = r5.awaitFreeSpaceOrDelegate(r6, r7, r0)
            if (r8 != r1) goto L49
            return r1
        L61:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r7 = "Min("
            r5.<init>(r7)
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = ") should'nt be greater than (4088)"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r5 = r5.toString()
            r6.<init>(r5)
            throw r6
        L80:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "min should be positive"
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.write$suspendImpl(io.ktor.utils.io.ByteBufferChannel, int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006b, code lost:
    
        if (r8.write(r6, r7, r0) == r1) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitFreeSpaceOrDelegate(int r6, kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C05831
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05831) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1 r0 = new io.ktor.utils.io.ByteBufferChannel$awaitFreeSpaceOrDelegate$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L43
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6e
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$1
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L56
        L43:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r5
            r0.L$1 = r7
            r0.I$0 = r6
            r0.label = r4
            java.lang.Object r8 = r5.writeSuspend(r6, r0)
            if (r8 != r1) goto L55
            goto L6d
        L55:
            r2 = r5
        L56:
            io.ktor.utils.io.internal.JoiningState r8 = r2.joining
            if (r8 == 0) goto L71
            io.ktor.utils.io.ByteBufferChannel r8 = r2.resolveDelegation(r2, r8)
            if (r8 == 0) goto L71
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r6 = r8.write(r6, r7, r0)
            if (r6 != r1) goto L6e
        L6d:
            return r1
        L6e:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L71:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.awaitFreeSpaceOrDelegate(int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object writeWhile$suspendImpl(ByteBufferChannel byteBufferChannel, Function1<? super ByteBuffer, Boolean> function1, Continuation<? super Unit> continuation) throws Throwable {
        if (!byteBufferChannel.writeWhileNoSuspend(function1)) {
            return Unit.INSTANCE;
        }
        ClosedElement closed = byteBufferChannel.getClosed();
        if (closed != null) {
            ByteBufferChannelKt.rethrowClosed(closed.getSendException());
            throw new KotlinNothingValueException();
        }
        Object objWriteWhileSuspend = byteBufferChannel.writeWhileSuspend(function1, continuation);
        return objWriteWhileSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWriteWhileSuspend : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d7, code lost:
    
        if (r4.getClosed() != null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0128, code lost:
    
        if (r5.writeWhile(r0, r2) == r3) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9 A[Catch: all -> 0x0066, TryCatch #0 {all -> 0x0066, blocks: (B:16:0x0060, B:38:0x00c5, B:40:0x00c9, B:42:0x00cf, B:43:0x00d3, B:35:0x00a8), top: B:83:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c2 -> B:38:0x00c5). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeWhileSuspend(kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, java.lang.Boolean> r18, kotlin.coroutines.Continuation<? super kotlin.Unit> r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeWhileSuspend(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean writeWhileLoop(ByteBuffer dst, RingBufferCapacity capacity, Function1<? super ByteBuffer, Boolean> block) {
        int iCapacity = dst.capacity() - this.reservedSize;
        boolean z = true;
        while (z) {
            int iTryWriteAtLeast = capacity.tryWriteAtLeast(1);
            if (iTryWriteAtLeast == 0) {
                break;
            }
            int i = this.writePosition;
            int iCoerceAtMost = RangesKt.coerceAtMost(i + iTryWriteAtLeast, iCapacity);
            dst.limit(iCoerceAtMost);
            dst.position(i);
            try {
                boolean zBooleanValue = block.invoke(dst).booleanValue();
                if (dst.limit() != iCoerceAtMost) {
                    throw new IllegalStateException("Buffer limit modified.".toString());
                }
                int iPosition = dst.position() - i;
                if (iPosition < 0) {
                    throw new IllegalStateException("Position has been moved backward: pushback is not supported.".toString());
                }
                bytesWritten(dst, capacity, iPosition);
                if (iPosition < iTryWriteAtLeast) {
                    capacity.completeRead(iTryWriteAtLeast - iPosition);
                }
                z = zBooleanValue;
            } catch (Throwable th) {
                capacity.completeRead(iTryWriteAtLeast);
                throw th;
            }
        }
        return z;
    }

    @Override // io.ktor.utils.io.HasReadSession
    public SuspendableReadSession startReadSession() {
        return this.readSession;
    }

    @Override // io.ktor.utils.io.HasReadSession
    public void endReadSession() {
        this.readSession.completed();
        ReadWriteBufferState state = getState();
        if ((state instanceof ReadWriteBufferState.Reading) || (state instanceof ReadWriteBufferState.ReadingWriting)) {
            restoreStateAfterRead();
            tryTerminate$ktor_io();
        }
    }

    @Override // io.ktor.utils.io.HasWriteSession
    public WriterSuspendSession beginWriteSession() {
        WriteSessionImpl writeSessionImpl = this.writeSession;
        writeSessionImpl.begin();
        return writeSessionImpl;
    }

    @Override // io.ktor.utils.io.HasWriteSession
    public void endWriteSession(int written) {
        this.writeSession.written(written);
        this.writeSession.complete();
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Deprecated(message = "Use read { } instead.")
    public void readSession(final Function1<? super ReadSession, Unit> consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        lookAhead(new Function1<LookAheadSession, Unit>() { // from class: io.ktor.utils.io.ByteBufferChannel.readSession.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LookAheadSession lookAheadSession) {
                invoke2(lookAheadSession);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LookAheadSession lookAhead) {
                Intrinsics.checkNotNullParameter(lookAhead, "$this$lookAhead");
                try {
                    consumer.invoke(this.readSession);
                } finally {
                    this.readSession.completed();
                }
            }
        });
    }

    /* JADX INFO: renamed from: io.ktor.utils.io.ByteBufferChannel$readSuspendableSession$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ByteBufferChannel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lio/ktor/utils/io/LookAheadSuspendSession;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.ktor.utils.io.ByteBufferChannel$readSuspendableSession$2", f = "ByteBufferChannel.kt", i = {}, l = {WinError.ERROR_UNSUPPORTED_TYPE}, m = "invokeSuspend", n = {}, s = {})
    static final class C06042 extends SuspendLambda implements Function2<LookAheadSuspendSession, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<SuspendableReadSession, Continuation<? super Unit>, Object> $consumer;
        int label;
        final /* synthetic */ ByteBufferChannel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C06042(Function2<? super SuspendableReadSession, ? super Continuation<? super Unit>, ? extends Object> function2, ByteBufferChannel byteBufferChannel, Continuation<? super C06042> continuation) {
            super(2, continuation);
            this.$consumer = function2;
            this.this$0 = byteBufferChannel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C06042(this.$consumer, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(LookAheadSuspendSession lookAheadSuspendSession, Continuation<? super Unit> continuation) {
            return ((C06042) create(lookAheadSuspendSession, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function2<SuspendableReadSession, Continuation<? super Unit>, Object> function2 = this.$consumer;
                    ReadSessionImpl readSessionImpl = this.this$0.readSession;
                    this.label = 1;
                    if (function2.invoke(readSessionImpl, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0.readSession.completed();
                return Unit.INSTANCE;
            } catch (Throwable th) {
                this.this$0.readSession.completed();
                throw th;
            }
        }
    }

    @Deprecated(message = "Use read { } instead.")
    static /* synthetic */ Object readSuspendableSession$suspendImpl(ByteBufferChannel byteBufferChannel, Function2<? super SuspendableReadSession, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object objLookAheadSuspend = byteBufferChannel.lookAheadSuspend(new C06042(function2, byteBufferChannel, null), continuation);
        return objLookAheadSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLookAheadSuspend : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[PHI: r10 r12 r13
      PHI (r10v2 long) = (r10v1 long), (r10v6 long) binds: [B:14:0x003c, B:30:0x0081] A[DONT_GENERATE, DONT_INLINE]
      PHI (r12v2 kotlin.jvm.internal.Ref$LongRef) = (r12v1 kotlin.jvm.internal.Ref$LongRef), (r12v4 kotlin.jvm.internal.Ref$LongRef) binds: [B:14:0x003c, B:30:0x0081] A[DONT_GENERATE, DONT_INLINE]
      PHI (r13v1 io.ktor.utils.io.ByteBufferChannel) = (r13v0 io.ktor.utils.io.ByteBufferChannel), (r13v2 io.ktor.utils.io.ByteBufferChannel) binds: [B:14:0x003c, B:30:0x0081] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0078 -> B:29:0x007b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object discardSuspend(long r10, long r12, kotlin.coroutines.Continuation<? super java.lang.Long> r14) throws java.lang.Throwable {
        /*
            r9 = this;
            boolean r0 = r14 instanceof io.ktor.utils.io.ByteBufferChannel.C05841
            if (r0 == 0) goto L14
            r0 = r14
            io.ktor.utils.io.ByteBufferChannel$discardSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05841) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r14 = r0.label
            int r14 = r14 - r2
            r0.label = r14
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$discardSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$discardSuspend$1
            r0.<init>(r14)
        L19:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            long r10 = r0.J$0
            java.lang.Object r12 = r0.L$1
            kotlin.jvm.internal.Ref$LongRef r12 = (kotlin.jvm.internal.Ref.LongRef) r12
            java.lang.Object r13 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r13 = (io.ktor.utils.io.ByteBufferChannel) r13
            kotlin.ResultKt.throwOnFailure(r14)
            goto L7b
        L34:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3c:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlin.jvm.internal.Ref$LongRef r14 = new kotlin.jvm.internal.Ref$LongRef
            r14.<init>()
            r14.element = r10
            r10 = r12
            r12 = r14
            r13 = r9
        L49:
            long r4 = r12.element
            int r14 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r14 >= 0) goto Lac
            java.nio.ByteBuffer r14 = r13.setupStateForRead()
            if (r14 != 0) goto L56
            goto L66
        L56:
            io.ktor.utils.io.internal.ReadWriteBufferState r2 = r13.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r2 = r2.capacity
            int r4 = r2._availableForRead$internal     // Catch: java.lang.Throwable -> La4
            if (r4 != 0) goto L84
            r13.restoreStateAfterRead()
            r13.tryTerminate$ktor_io()
        L66:
            boolean r14 = r13.isClosedForRead()
            if (r14 != 0) goto Lac
            r0.L$0 = r13
            r0.L$1 = r12
            r0.J$0 = r10
            r0.label = r3
            java.lang.Object r14 = r13.readSuspend(r3, r0)
            if (r14 != r1) goto L7b
            return r1
        L7b:
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r14 = r14.booleanValue()
            if (r14 != 0) goto L49
            goto Lac
        L84:
            long r4 = r12.element     // Catch: java.lang.Throwable -> La4
            long r4 = r10 - r4
            r6 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r4 = java.lang.Math.min(r6, r4)     // Catch: java.lang.Throwable -> La4
            int r4 = (int) r4     // Catch: java.lang.Throwable -> La4
            int r4 = r2.tryReadAtMost(r4)     // Catch: java.lang.Throwable -> La4
            r13.bytesRead(r14, r2, r4)     // Catch: java.lang.Throwable -> La4
            long r5 = r12.element     // Catch: java.lang.Throwable -> La4
            long r7 = (long) r4     // Catch: java.lang.Throwable -> La4
            long r5 = r5 + r7
            r12.element = r5     // Catch: java.lang.Throwable -> La4
            r13.restoreStateAfterRead()
            r13.tryTerminate$ktor_io()
            goto L49
        La4:
            r10 = move-exception
            r13.restoreStateAfterRead()
            r13.tryTerminate$ktor_io()
            throw r10
        Lac:
            long r10 = r12.element
            java.lang.Long r10 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r10)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.discardSuspend(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008d, code lost:
    
        if (r2.read(r6, r7, r0) == r1) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readBlockSuspend(int r6, kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, kotlin.Unit> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C05881
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05881) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readBlockSuspend$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L43
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            goto L90
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$1
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5a
        L43:
            kotlin.ResultKt.throwOnFailure(r8)
            int r8 = kotlin.ranges.RangesKt.coerceAtLeast(r6, r4)
            r0.L$0 = r5
            r0.L$1 = r7
            r0.I$0 = r6
            r0.label = r4
            java.lang.Object r8 = r5.readSuspend(r8, r0)
            if (r8 != r1) goto L59
            goto L8f
        L59:
            r2 = r5
        L5a:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L82
            if (r6 > 0) goto L67
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L67:
            java.io.EOFException r7 = new java.io.EOFException
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r0 = "Got EOF but at least "
            r8.<init>(r0)
            java.lang.StringBuilder r6 = r8.append(r6)
            java.lang.String r8 = " bytes were expected"
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.String r6 = r6.toString()
            r7.<init>(r6)
            throw r7
        L82:
            r8 = 0
            r0.L$0 = r8
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r6 = r2.read(r6, r7, r0)
            if (r6 != r1) goto L90
        L8f:
            return r1
        L90:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readBlockSuspend(int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object writePacket$suspendImpl(ByteBufferChannel byteBufferChannel, ByteReadPacket byteReadPacket, Continuation<? super Unit> continuation) {
        ByteBufferChannel byteBufferChannelResolveDelegation;
        ByteBufferChannel byteBufferChannelResolveDelegation2;
        JoiningState joiningState = byteBufferChannel.joining;
        if (joiningState != null && (byteBufferChannelResolveDelegation2 = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState)) != null) {
            Object objWritePacket = byteBufferChannelResolveDelegation2.writePacket(byteReadPacket, continuation);
            return objWritePacket == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWritePacket : Unit.INSTANCE;
        }
        while (!byteReadPacket.getEndOfInput() && byteBufferChannel.tryWritePacketPart(byteReadPacket) != 0) {
            try {
            } catch (Throwable th) {
                byteReadPacket.release();
                throw th;
            }
        }
        if (byteReadPacket.getRemaining() > 0) {
            JoiningState joiningState2 = byteBufferChannel.joining;
            if (joiningState2 == null || (byteBufferChannelResolveDelegation = byteBufferChannel.resolveDelegation(byteBufferChannel, joiningState2)) == null) {
                Object objWritePacketSuspend = byteBufferChannel.writePacketSuspend(byteReadPacket, continuation);
                return objWritePacketSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWritePacketSuspend : Unit.INSTANCE;
            }
            Object objWritePacket2 = byteBufferChannelResolveDelegation.writePacket(byteReadPacket, continuation);
            return objWritePacket2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWritePacket2 : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0073, code lost:
    
        if (r7.writePacket(r6, r0) == r1) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:13:0x002d, B:35:0x0076, B:18:0x0041, B:28:0x005e, B:30:0x0062, B:32:0x0068, B:38:0x007c, B:23:0x004b, B:25:0x0051), top: B:44:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005b -> B:28:0x005e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writePacketSuspend(io.ktor.utils.io.core.ByteReadPacket r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel.C06171
            if (r0 == 0) goto L14
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$writePacketSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06171) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writePacketSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writePacketSuspend$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$0
            io.ktor.utils.io.core.ByteReadPacket r6 = (io.ktor.utils.io.core.ByteReadPacket) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L45
            goto L76
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            java.lang.Object r6 = r0.L$1
            io.ktor.utils.io.core.ByteReadPacket r6 = (io.ktor.utils.io.core.ByteReadPacket) r6
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L45
            goto L5e
        L45:
            r7 = move-exception
            goto L86
        L47:
            kotlin.ResultKt.throwOnFailure(r7)
            r2 = r5
        L4b:
            boolean r7 = r6.getEndOfInput()     // Catch: java.lang.Throwable -> L45
            if (r7 != 0) goto L80
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L45
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L45
            r0.label = r4     // Catch: java.lang.Throwable -> L45
            java.lang.Object r7 = r2.writeSuspend(r4, r0)     // Catch: java.lang.Throwable -> L45
            if (r7 != r1) goto L5e
            goto L75
        L5e:
            io.ktor.utils.io.internal.JoiningState r7 = r2.joining     // Catch: java.lang.Throwable -> L45
            if (r7 == 0) goto L7c
            io.ktor.utils.io.ByteBufferChannel r7 = r2.resolveDelegation(r2, r7)     // Catch: java.lang.Throwable -> L45
            if (r7 == 0) goto L7c
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L45
            r2 = 0
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L45
            r0.label = r3     // Catch: java.lang.Throwable -> L45
            java.lang.Object r7 = r7.writePacket(r6, r0)     // Catch: java.lang.Throwable -> L45
            if (r7 != r1) goto L76
        L75:
            return r1
        L76:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L45
            r6.release()
            return r7
        L7c:
            r2.tryWritePacketPart(r6)     // Catch: java.lang.Throwable -> L45
            goto L4b
        L80:
            r6.release()
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L86:
            r6.release()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writePacketSuspend(io.ktor.utils.io.core.ByteReadPacket, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    @Deprecated(message = "Use read { } instead.")
    public <R> R lookAhead(Function1<? super LookAheadSession, ? extends R> visitor) {
        Intrinsics.checkNotNullParameter(visitor, "visitor");
        Throwable closedCause = getClosedCause();
        if (closedCause != null) {
            return visitor.invoke(new FailedLookAhead(closedCause));
        }
        if (getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            return visitor.invoke(TerminatedLookAhead.INSTANCE);
        }
        boolean z = false;
        R rInvoke = null;
        if (setupStateForRead() != null) {
            try {
                if (getState().capacity._availableForRead$internal != 0) {
                    rInvoke = visitor.invoke(this);
                    restoreStateAfterRead();
                    tryTerminate$ktor_io();
                    z = true;
                }
            } finally {
                restoreStateAfterRead();
                tryTerminate$ktor_io();
            }
        }
        if (!z) {
            Throwable closedCause2 = getClosedCause();
            return closedCause2 != null ? visitor.invoke(new FailedLookAhead(closedCause2)) : visitor.invoke(TerminatedLookAhead.INSTANCE);
        }
        Intrinsics.checkNotNull(rInvoke);
        return rInvoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0174  */
    @kotlin.Deprecated(message = "Use read { } instead.")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ <R> java.lang.Object lookAheadSuspend$suspendImpl(io.ktor.utils.io.ByteBufferChannel r7, kotlin.jvm.functions.Function2<? super io.ktor.utils.io.LookAheadSuspendSession, ? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r8, kotlin.coroutines.Continuation<? super R> r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.lookAheadSuspend$suspendImpl(io.ktor.utils.io.ByteBufferChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlin.Unit] */
    @kotlin.Deprecated(message = "Use write { } instead.")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object writeSuspendSession$suspendImpl(io.ktor.utils.io.ByteBufferChannel r4, kotlin.jvm.functions.Function2<? super io.ktor.utils.io.WriterSuspendSession, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof io.ktor.utils.io.ByteBufferChannel.C06211
            if (r0 == 0) goto L14
            r0 = r6
            io.ktor.utils.io.ByteBufferChannel$writeSuspendSession$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06211) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeSuspendSession$1 r0 = new io.ktor.utils.io.ByteBufferChannel$writeSuspendSession$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r4 = r0.L$0
            io.ktor.utils.io.internal.WriteSessionImpl r4 = (io.ktor.utils.io.internal.WriteSessionImpl) r4
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L4f
            goto L49
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            io.ktor.utils.io.internal.WriteSessionImpl r4 = r4.writeSession
            r4.begin()
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L4f
            r0.label = r3     // Catch: java.lang.Throwable -> L4f
            java.lang.Object r5 = r5.invoke(r4, r0)     // Catch: java.lang.Throwable -> L4f
            if (r5 != r1) goto L49
            return r1
        L49:
            r4.complete()
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L4f:
            r5 = move-exception
            r4.complete()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeSuspendSession$suspendImpl(io.ktor.utils.io.ByteBufferChannel, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.ktor.utils.io.LookAheadSession
    /* JADX INFO: renamed from: consumed */
    public void mo808consumed(int n) {
        if (n < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        ReadWriteBufferState state = getState();
        if (!state.capacity.tryReadExact(n)) {
            throw new IllegalStateException("Unable to consume " + n + " bytes: not enough available bytes");
        }
        if (n > 0) {
            bytesRead(state.getReadBuffer(), state.capacity, n);
        }
    }

    @Override // io.ktor.utils.io.LookAheadSuspendSession
    public final Object awaitAtLeast(int i, Continuation<? super Boolean> continuation) throws Throwable {
        if (i < 0) {
            throw new IllegalArgumentException(("atLeast parameter shouldn't be negative: " + i).toString());
        }
        if (i > 4088) {
            throw new IllegalArgumentException(("atLeast parameter shouldn't be larger than max buffer size of 4088: " + i).toString());
        }
        if (getState().capacity._availableForRead$internal >= i) {
            if (getState().getIdle() || (getState() instanceof ReadWriteBufferState.Writing)) {
                setupStateForRead();
            }
            return Boxing.boxBoolean(true);
        }
        if (getState().getIdle() || (getState() instanceof ReadWriteBufferState.Writing)) {
            return awaitAtLeastSuspend(i, continuation);
        }
        if (i == 1) {
            return readSuspendImpl(1, continuation);
        }
        return readSuspend(i, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitAtLeastSuspend(int r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.utils.io.ByteBufferChannel.C05821
            if (r0 == 0) goto L14
            r0 = r6
            io.ktor.utils.io.ByteBufferChannel$awaitAtLeastSuspend$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C05821) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$awaitAtLeastSuspend$1 r0 = new io.ktor.utils.io.ByteBufferChannel$awaitAtLeastSuspend$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r5 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r5 = (io.ktor.utils.io.ByteBufferChannel) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r6 = r4.readSuspend(r5, r0)
            if (r6 != r1) goto L44
            return r1
        L44:
            r5 = r4
        L45:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L5a
            io.ktor.utils.io.internal.ReadWriteBufferState r0 = r5.getState()
            boolean r0 = r0.getIdle()
            if (r0 == 0) goto L5a
            r5.setupStateForRead()
        L5a:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.awaitAtLeastSuspend(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // io.ktor.utils.io.LookAheadSession
    public ByteBuffer request(int skip, int atLeast) {
        ReadWriteBufferState state = getState();
        int i = state.capacity._availableForRead$internal;
        int i2 = this.readPosition;
        if (i < atLeast + skip) {
            return null;
        }
        if (state.getIdle() || (!(state instanceof ReadWriteBufferState.Reading) && !(state instanceof ReadWriteBufferState.ReadingWriting))) {
            if (setupStateForRead() == null) {
                return null;
            }
            return request(skip, atLeast);
        }
        ByteBuffer readBuffer = state.getReadBuffer();
        prepareBuffer(readBuffer, carryIndex(readBuffer, i2 + skip), i - skip);
        if (readBuffer.remaining() >= atLeast) {
            return readBuffer;
        }
        return null;
    }

    private final int afterBufferVisited(ByteBuffer buffer, RingBufferCapacity capacity) {
        int iPosition = buffer.position() - this.readPosition;
        if (iPosition <= 0) {
            return iPosition;
        }
        if (!capacity.tryReadExact(iPosition)) {
            throw new IllegalStateException("Consumed more bytes than available");
        }
        bytesRead(buffer, capacity, iPosition);
        prepareBuffer(buffer, this.readPosition, capacity._availableForRead$internal);
        return iPosition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readUTF8LineToAscii(Appendable appendable, int i, Continuation<? super Boolean> continuation) throws Throwable {
        if (getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            Throwable closedCause = getClosedCause();
            if (closedCause != null) {
                throw closedCause;
            }
            return Boxing.boxBoolean(false);
        }
        return readUTF8LineToUtf8Suspend(appendable, i, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(9:79|32|33|83|34|35|81|36|(9:39|44|45|22|(6:24|46|(0)|49|(1:51)|60)(0)|61|(0)(0)|71|72)) */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0120, code lost:
    
        r20 = r5;
        r9 = r18;
        r21 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0126, code lost:
    
        r0 = r16;
        r12 = r17;
        r7 = r19;
        r9 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x013b, code lost:
    
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0180, code lost:
    
        if (r1.read(1, r5, r4) == r3) goto L57;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0119 -> B:44:0x013c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x013b -> B:44:0x013c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readUTF8LineToUtf8Suspend(java.lang.Appendable r23, int r24, kotlin.coroutines.Continuation<? super java.lang.Boolean> r25) {
        /*
            Method dump skipped, instruction units count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readUTF8LineToUtf8Suspend(java.lang.Appendable, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object readUTF8Line$suspendImpl(io.ktor.utils.io.ByteBufferChannel r5, int r6, kotlin.coroutines.Continuation<? super java.lang.String> r7) {
        /*
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel.C06051
            if (r0 == 0) goto L14
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$readUTF8Line$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06051) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readUTF8Line$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readUTF8Line$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r5 = r0.L$0
            java.lang.StringBuilder r5 = (java.lang.StringBuilder) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4f
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r2 = r7
            java.lang.Appendable r2 = (java.lang.Appendable) r2
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r5 = r5.readUTF8LineTo(r2, r6, r0)
            if (r5 != r1) goto L4c
            return r1
        L4c:
            r4 = r7
            r7 = r5
            r5 = r4
        L4f:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r6 = r7.booleanValue()
            if (r6 != 0) goto L59
            r5 = 0
            return r5
        L59:
            java.lang.String r5 = r5.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readUTF8Line$suspendImpl(io.ktor.utils.io.ByteBufferChannel, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    static /* synthetic */ Object readRemaining$suspendImpl(ByteBufferChannel byteBufferChannel, long j, Continuation<? super ByteReadPacket> continuation) throws Throwable {
        if (byteBufferChannel.isClosedForWrite()) {
            Throwable closedCause = byteBufferChannel.getClosedCause();
            if (closedCause != null) {
                ByteBufferChannelKt.rethrowClosed(closedCause);
                throw new KotlinNothingValueException();
            }
            return byteBufferChannel.remainingPacket(j);
        }
        return byteBufferChannel.readRemainingSuspend(j, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b A[Catch: all -> 0x003f, TryCatch #2 {all -> 0x003f, blocks: (B:12:0x003a, B:31:0x00b0, B:36:0x00bd, B:21:0x0068, B:23:0x007b, B:24:0x0081, B:26:0x0097, B:28:0x009d), top: B:54:0x003a, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd A[Catch: all -> 0x003f, TRY_LEAVE, TryCatch #2 {all -> 0x003f, blocks: (B:12:0x003a, B:31:0x00b0, B:36:0x00bd, B:21:0x0068, B:23:0x007b, B:24:0x0081, B:26:0x0097, B:28:0x009d), top: B:54:0x003a, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c2 A[Catch: all -> 0x00d5, TRY_ENTER, TryCatch #0 {all -> 0x00d5, blocks: (B:38:0x00c2, B:40:0x00cb, B:42:0x00d0, B:43:0x00d1, B:44:0x00d4, B:12:0x003a, B:31:0x00b0, B:36:0x00bd, B:21:0x0068, B:23:0x007b, B:24:0x0081, B:26:0x0097, B:28:0x009d), top: B:51:0x0022, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00ad -> B:31:0x00b0). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ba -> B:35:0x00bb). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readRemainingSuspend(long r12, kotlin.coroutines.Continuation<? super io.ktor.utils.io.core.ByteReadPacket> r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readRemainingSuspend(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resumeReadOp() {
        Continuation continuation = (Continuation) _readOp$FU.getAndSet(this, null);
        if (continuation != null) {
            ClosedElement closed = getClosed();
            Throwable cause = closed != null ? closed.getCause() : null;
            if (cause != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m817constructorimpl(ResultKt.createFailure(cause)));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                continuation.resumeWith(Result.m817constructorimpl(true));
            }
        }
    }

    private final void resumeReadOp(Function0<? extends Throwable> exception) {
        Continuation continuation = (Continuation) _readOp$FU.getAndSet(this, null);
        if (continuation != null) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m817constructorimpl(ResultKt.createFailure(exception.invoke())));
        }
    }

    private final void resumeWriteOp() {
        Continuation<Unit> writeOp;
        ClosedElement closed;
        Object objCreateFailure;
        do {
            writeOp = getWriteOp();
            if (writeOp == null) {
                return;
            }
            closed = getClosed();
            if (closed == null && this.joining != null) {
                ReadWriteBufferState state = getState();
                if (!(state instanceof ReadWriteBufferState.Writing) && !(state instanceof ReadWriteBufferState.ReadingWriting) && state != ReadWriteBufferState.Terminated.INSTANCE) {
                    return;
                }
            }
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_writeOp$FU, this, writeOp, null));
        if (closed == null) {
            Result.Companion companion = Result.INSTANCE;
            objCreateFailure = Unit.INSTANCE;
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            objCreateFailure = ResultKt.createFailure(closed.getSendException());
        }
        writeOp.resumeWith(Result.m817constructorimpl(objCreateFailure));
    }

    private final void resumeClosed(Throwable cause) {
        Continuation continuation = (Continuation) _readOp$FU.getAndSet(this, null);
        if (continuation != null) {
            if (cause != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m817constructorimpl(ResultKt.createFailure(cause)));
            } else {
                Boolean boolValueOf = Boolean.valueOf(getState().capacity._availableForRead$internal > 0);
                Result.Companion companion2 = Result.INSTANCE;
                continuation.resumeWith(Result.m817constructorimpl(boolValueOf));
            }
        }
        Continuation continuation2 = (Continuation) _writeOp$FU.getAndSet(this, null);
        if (continuation2 != null) {
            Result.Companion companion3 = Result.INSTANCE;
            if (cause == null) {
                cause = new ClosedWriteChannelException(ByteBufferChannelKt.DEFAULT_CLOSE_MESSAGE);
            }
            continuation2.resumeWith(Result.m817constructorimpl(ResultKt.createFailure(cause)));
        }
    }

    static /* synthetic */ Object awaitContent$suspendImpl(ByteBufferChannel byteBufferChannel, Continuation<? super Unit> continuation) throws Throwable {
        Object suspend = byteBufferChannel.readSuspend(1, continuation);
        return suspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? suspend : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object readSuspend(int i, Continuation<? super Boolean> continuation) throws Throwable {
        if (getState().capacity._availableForRead$internal >= i) {
            return Boxing.boxBoolean(true);
        }
        ClosedElement closed = getClosed();
        if (closed == null) {
            if (i == 1) {
                return readSuspendImpl(1, continuation);
            }
            return readSuspendLoop(i, continuation);
        }
        Throwable cause = closed.getCause();
        if (cause != null) {
            ByteBufferChannelKt.rethrowClosed(cause);
            throw new KotlinNothingValueException();
        }
        RingBufferCapacity ringBufferCapacity = getState().capacity;
        boolean z = ringBufferCapacity.flush() && ringBufferCapacity._availableForRead$internal >= i;
        if (getReadOp() != null) {
            throw new IllegalStateException("Read operation is already in progress");
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0093 -> B:39:0x0096). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readSuspendLoop(int r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.utils.io.ByteBufferChannel.C06031
            if (r0 == 0) goto L14
            r0 = r7
            io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06031) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 != r4) goto L31
            int r6 = r0.I$0
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L96
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            r2 = r5
        L3d:
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r2.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L4c
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r6
        L4c:
            io.ktor.utils.io.internal.ClosedElement r7 = r2.getClosed()
            if (r7 == 0) goto L89
            java.lang.Throwable r0 = r7.getCause()
            if (r0 != 0) goto L7c
            io.ktor.utils.io.internal.ReadWriteBufferState r7 = r2.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r7 = r7.capacity
            boolean r0 = r7.flush()
            if (r0 == 0) goto L69
            int r7 = r7._availableForRead$internal
            if (r7 < r6) goto L69
            r3 = r4
        L69:
            kotlin.coroutines.Continuation r6 = r2.getReadOp()
            if (r6 != 0) goto L74
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        L74:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Read operation is already in progress"
            r6.<init>(r7)
            throw r6
        L7c:
            java.lang.Throwable r6 = r7.getCause()
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r6)
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        L89:
            r0.L$0 = r2
            r0.I$0 = r6
            r0.label = r4
            java.lang.Object r7 = r2.readSuspendImpl(r6, r0)
            if (r7 != r1) goto L96
            return r1
        L96:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 != 0) goto L3d
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readSuspendLoop(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean readSuspendPredicate(int size) {
        ReadWriteBufferState state = getState();
        if (state.capacity._availableForRead$internal >= size) {
            return false;
        }
        if (this.joining == null || getWriteOp() == null) {
            return true;
        }
        return (state == ReadWriteBufferState.IdleEmpty.INSTANCE || (state instanceof ReadWriteBufferState.IdleNonEmpty)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readSuspendImpl(int r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.utils.io.ByteBufferChannel.C06021
            if (r0 == 0) goto L14
            r0 = r6
            io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1 r0 = (io.ktor.utils.io.ByteBufferChannel.C06021) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1 r0 = new io.ktor.utils.io.ByteBufferChannel$readSuspendImpl$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            int r5 = r0.I$0
            java.lang.Object r5 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r5 = (io.ktor.utils.io.ByteBufferChannel) r5
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L30
            return r6
        L30:
            r6 = move-exception
            goto L83
        L32:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            io.ktor.utils.io.internal.ReadWriteBufferState r6 = r4.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r2 = r6.capacity
            int r2 = r2._availableForRead$internal
            if (r2 >= r5) goto L88
            io.ktor.utils.io.internal.JoiningState r2 = r4.joining
            if (r2 == 0) goto L59
            kotlin.coroutines.Continuation r2 = r4.getWriteOp()
            if (r2 == 0) goto L59
            io.ktor.utils.io.internal.ReadWriteBufferState$IdleEmpty r2 = io.ktor.utils.io.internal.ReadWriteBufferState.IdleEmpty.INSTANCE
            if (r6 == r2) goto L88
            boolean r6 = r6 instanceof io.ktor.utils.io.internal.ReadWriteBufferState.IdleNonEmpty
            if (r6 != 0) goto L88
        L59:
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L81
            r0.I$0 = r5     // Catch: java.lang.Throwable -> L81
            r0.label = r3     // Catch: java.lang.Throwable -> L81
            r6 = r0
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6     // Catch: java.lang.Throwable -> L81
            io.ktor.utils.io.internal.CancellableReusableContinuation<java.lang.Boolean> r2 = r4.readSuspendContinuationCache     // Catch: java.lang.Throwable -> L81
            r3 = r2
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3     // Catch: java.lang.Throwable -> L81
            r4.suspensionForSize(r5, r3)     // Catch: java.lang.Throwable -> L81
            kotlin.coroutines.Continuation r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r6)     // Catch: java.lang.Throwable -> L81
            java.lang.Object r5 = r2.completeSuspendBlock(r5)     // Catch: java.lang.Throwable -> L81
            java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Throwable -> L81
            if (r5 != r6) goto L7d
            kotlin.coroutines.Continuation r0 = (kotlin.coroutines.Continuation) r0     // Catch: java.lang.Throwable -> L81
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: java.lang.Throwable -> L81
        L7d:
            if (r5 != r1) goto L80
            return r1
        L80:
            return r5
        L81:
            r6 = move-exception
            r5 = r4
        L83:
            r0 = 0
            r5.setReadOp(r0)
            throw r6
        L88:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.readSuspendImpl(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldResumeReadOp() {
        if (this.joining != null) {
            return getState() == ReadWriteBufferState.IdleEmpty.INSTANCE || (getState() instanceof ReadWriteBufferState.IdleNonEmpty);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean writeSuspendPredicate(int size) {
        JoiningState joiningState = this.joining;
        ReadWriteBufferState state = getState();
        if (getClosed() != null) {
            return false;
        }
        return joiningState == null ? state.capacity._availableForWrite$internal < size && state != ReadWriteBufferState.IdleEmpty.INSTANCE : (state == ReadWriteBufferState.Terminated.INSTANCE || (state instanceof ReadWriteBufferState.Writing) || (state instanceof ReadWriteBufferState.ReadingWriting)) ? false : true;
    }

    public final Object tryWriteSuspend$ktor_io(int i, Continuation<? super Unit> continuation) throws Throwable {
        Throwable sendException;
        if (!writeSuspendPredicate(i)) {
            ClosedElement closed = getClosed();
            if (closed != null && (sendException = closed.getSendException()) != null) {
                ByteBufferChannelKt.rethrowClosed(sendException);
                throw new KotlinNothingValueException();
            }
            return Unit.INSTANCE;
        }
        this.writeSuspensionSize = i;
        if (this.attachedJob != null) {
            Object objInvoke = this.writeSuspension.invoke(continuation);
            if (objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
        }
        CancellableReusableContinuation<Unit> cancellableReusableContinuation = this.writeSuspendContinuationCache;
        this.writeSuspension.invoke(cancellableReusableContinuation);
        Object objCompleteSuspendBlock = cancellableReusableContinuation.completeSuspendBlock(IntrinsicsKt.intercepted(continuation));
        if (objCompleteSuspendBlock == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objCompleteSuspendBlock == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCompleteSuspendBlock : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeSuspend(int r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r8 instanceof io.ktor.utils.io.ByteBufferChannel.C06203
            if (r0 == 0) goto L14
            r0 = r8
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$3 r0 = (io.ktor.utils.io.ByteBufferChannel.C06203) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            io.ktor.utils.io.ByteBufferChannel$writeSuspend$3 r0 = new io.ktor.utils.io.ByteBufferChannel$writeSuspend$3
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            int r7 = r0.I$0
            java.lang.Object r2 = r0.L$0
            io.ktor.utils.io.ByteBufferChannel r2 = (io.ktor.utils.io.ByteBufferChannel) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3c
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r6
        L3c:
            boolean r8 = r2.writeSuspendPredicate(r7)
            if (r8 == 0) goto L6d
            r0.L$0 = r2
            r0.I$0 = r7
            r0.label = r3
            r8 = r0
            kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
            kotlinx.coroutines.CancellableContinuationImpl r4 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r8)
            r4.<init>(r5, r3)
            r4.initCancellability()
            r5 = r4
            kotlinx.coroutines.CancellableContinuation r5 = (kotlinx.coroutines.CancellableContinuation) r5
            access$writeSuspendBlock(r2, r7, r5)
            java.lang.Object r4 = r4.getResult()
            java.lang.Object r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r5) goto L6a
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r8)
        L6a:
            if (r4 != r1) goto L3c
            return r1
        L6d:
            io.ktor.utils.io.internal.ClosedElement r7 = r2.getClosed()
            if (r7 == 0) goto L83
            java.lang.Throwable r7 = r7.getSendException()
            if (r7 != 0) goto L7a
            goto L83
        L7a:
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r7)
            kotlin.KotlinNothingValueException r7 = new kotlin.KotlinNothingValueException
            r7.<init>()
            throw r7
        L83:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeSuspend(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeSuspendBlock(int size, CancellableContinuation<? super Unit> c) throws Throwable {
        Throwable sendException;
        while (true) {
            ClosedElement closed = getClosed();
            if (closed != null && (sendException = closed.getSendException()) != null) {
                ByteBufferChannelKt.rethrowClosed(sendException);
                throw new KotlinNothingValueException();
            }
            if (!writeSuspendPredicate(size)) {
                Result.Companion companion = Result.INSTANCE;
                c.resumeWith(Result.m817constructorimpl(Unit.INSTANCE));
                break;
            }
            while (getWriteOp() == null) {
                if (!writeSuspendPredicate(size)) {
                    break;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _writeOp$FU;
                CancellableContinuation<? super Unit> cancellableContinuation = c;
                if (AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceFieldUpdater, this, null, cancellableContinuation)) {
                    if (writeSuspendPredicate(size) || !AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceFieldUpdater, this, cancellableContinuation, null)) {
                        break;
                    }
                }
            }
            throw new IllegalStateException("Operation is already in progress".toString());
        }
        flushImpl(size);
        if (shouldResumeReadOp()) {
            resumeReadOp();
        }
    }

    private final ReadWriteBufferState.Initial newBuffer() {
        ReadWriteBufferState.Initial initialBorrow = this.pool.borrow();
        initialBorrow.capacity.resetForWrite();
        return initialBorrow;
    }

    private final void releaseBuffer(ReadWriteBufferState.Initial buffer) {
        this.pool.recycle(buffer);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX INFO: renamed from: peekTo-lBXzO7A$suspendImpl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ java.lang.Object m529peekTolBXzO7A$suspendImpl(io.ktor.utils.io.ByteBufferChannel r14, final java.nio.ByteBuffer r15, final long r16, final long r18, long r20, final long r22, kotlin.coroutines.Continuation<? super java.lang.Long> r24) {
        /*
            r0 = r24
            boolean r1 = r0 instanceof io.ktor.utils.io.ByteBufferChannel$peekTo$1
            if (r1 == 0) goto L16
            r1 = r0
            io.ktor.utils.io.ByteBufferChannel$peekTo$1 r1 = (io.ktor.utils.io.ByteBufferChannel$peekTo$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r2 & r3
            if (r2 == 0) goto L16
            int r0 = r1.label
            int r0 = r0 - r3
            r1.label = r0
            goto L1b
        L16:
            io.ktor.utils.io.ByteBufferChannel$peekTo$1 r1 = new io.ktor.utils.io.ByteBufferChannel$peekTo$1
            r1.<init>(r14, r0)
        L1b:
            java.lang.Object r0 = r1.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r3 = r1.label
            r4 = 1
            if (r3 == 0) goto L38
            if (r3 != r4) goto L30
            java.lang.Object r14 = r1.L$0
            kotlin.jvm.internal.Ref$IntRef r14 = (kotlin.jvm.internal.Ref.IntRef) r14
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.io.EOFException -> L63
            goto L63
        L30:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L38:
            kotlin.ResultKt.throwOnFailure(r0)
            kotlin.jvm.internal.Ref$IntRef r13 = new kotlin.jvm.internal.Ref$IntRef
            r13.<init>()
            long r5 = r20 + r18
            r7 = 4088(0xff8, double:2.0197E-320)
            long r5 = kotlin.ranges.RangesKt.coerceAtMost(r5, r7)
            int r0 = (int) r5
            io.ktor.utils.io.ByteBufferChannel$peekTo$2 r5 = new io.ktor.utils.io.ByteBufferChannel$peekTo$2     // Catch: java.io.EOFException -> L62
            r10 = r15
            r11 = r16
            r6 = r18
            r8 = r22
            r5.<init>()     // Catch: java.io.EOFException -> L62
            kotlin.jvm.functions.Function1 r5 = (kotlin.jvm.functions.Function1) r5     // Catch: java.io.EOFException -> L62
            r1.L$0 = r13     // Catch: java.io.EOFException -> L62
            r1.label = r4     // Catch: java.io.EOFException -> L62
            java.lang.Object r14 = r14.read(r0, r5, r1)     // Catch: java.io.EOFException -> L62
            if (r14 != r2) goto L62
            return r2
        L62:
            r14 = r13
        L63:
            int r14 = r14.element
            long r0 = (long) r14
            java.lang.Long r14 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r0)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.m529peekTolBXzO7A$suspendImpl(io.ktor.utils.io.ByteBufferChannel, java.nio.ByteBuffer, long, long, long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public String toString() {
        return "ByteBufferChannel(" + hashCode() + ", " + getState() + ')';
    }

    public final void restoreStateAfterWrite$ktor_io() {
        Object obj;
        ReadWriteBufferState readWriteBufferStateStopWriting$ktor_io;
        ReadWriteBufferState.IdleNonEmpty idleNonEmpty;
        ReadWriteBufferState readWriteBufferState = null;
        do {
            obj = this._state;
            readWriteBufferStateStopWriting$ktor_io = ((ReadWriteBufferState) obj).stopWriting$ktor_io();
            if ((readWriteBufferStateStopWriting$ktor_io instanceof ReadWriteBufferState.IdleNonEmpty) && readWriteBufferStateStopWriting$ktor_io.capacity.isEmpty()) {
                readWriteBufferStateStopWriting$ktor_io = ReadWriteBufferState.IdleEmpty.INSTANCE;
                readWriteBufferState = readWriteBufferStateStopWriting$ktor_io;
            }
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$FU, this, obj, readWriteBufferStateStopWriting$ktor_io));
        if (readWriteBufferStateStopWriting$ktor_io != ReadWriteBufferState.IdleEmpty.INSTANCE || (idleNonEmpty = (ReadWriteBufferState.IdleNonEmpty) readWriteBufferState) == null) {
            return;
        }
        releaseBuffer(idleNonEmpty.getInitial());
    }

    private final ByteBuffer setupStateForRead() throws Throwable {
        Object obj;
        Throwable cause;
        ReadWriteBufferState readWriteBufferStateStartReading$ktor_io;
        Throwable cause2;
        do {
            obj = this._state;
            ReadWriteBufferState readWriteBufferState = (ReadWriteBufferState) obj;
            if (Intrinsics.areEqual(readWriteBufferState, ReadWriteBufferState.Terminated.INSTANCE) ? true : Intrinsics.areEqual(readWriteBufferState, ReadWriteBufferState.IdleEmpty.INSTANCE)) {
                ClosedElement closed = getClosed();
                if (closed == null || (cause = closed.getCause()) == null) {
                    return null;
                }
                ByteBufferChannelKt.rethrowClosed(cause);
                throw new KotlinNothingValueException();
            }
            ClosedElement closed2 = getClosed();
            if (closed2 != null && (cause2 = closed2.getCause()) != null) {
                ByteBufferChannelKt.rethrowClosed(cause2);
                throw new KotlinNothingValueException();
            }
            if (readWriteBufferState.capacity._availableForRead$internal == 0) {
                return null;
            }
            readWriteBufferStateStartReading$ktor_io = readWriteBufferState.startReading$ktor_io();
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$FU, this, obj, readWriteBufferStateStartReading$ktor_io));
        ByteBuffer readBuffer = readWriteBufferStateStartReading$ktor_io.getReadBuffer();
        prepareBuffer(readBuffer, this.readPosition, readWriteBufferStateStartReading$ktor_io.capacity._availableForRead$internal);
        return readBuffer;
    }

    private final void restoreStateAfterRead() {
        Object obj;
        ReadWriteBufferState readWriteBufferStateStopReading$ktor_io;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ReadWriteBufferState readWriteBufferState = null;
        do {
            obj = this._state;
            ReadWriteBufferState readWriteBufferState2 = (ReadWriteBufferState) obj;
            ReadWriteBufferState.IdleNonEmpty idleNonEmpty = (ReadWriteBufferState.IdleNonEmpty) readWriteBufferState;
            if (idleNonEmpty != null) {
                idleNonEmpty.capacity.resetForWrite();
                resumeWriteOp();
                readWriteBufferState = null;
            }
            readWriteBufferStateStopReading$ktor_io = readWriteBufferState2.stopReading$ktor_io();
            if ((readWriteBufferStateStopReading$ktor_io instanceof ReadWriteBufferState.IdleNonEmpty) && getState() == readWriteBufferState2 && readWriteBufferStateStopReading$ktor_io.capacity.tryLockForRelease()) {
                readWriteBufferStateStopReading$ktor_io = ReadWriteBufferState.IdleEmpty.INSTANCE;
                readWriteBufferState = readWriteBufferStateStopReading$ktor_io;
            }
            atomicReferenceFieldUpdater = _state$FU;
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceFieldUpdater, this, obj, readWriteBufferStateStopReading$ktor_io));
        if (readWriteBufferStateStopReading$ktor_io == ReadWriteBufferState.IdleEmpty.INSTANCE) {
            ReadWriteBufferState.IdleNonEmpty idleNonEmpty2 = (ReadWriteBufferState.IdleNonEmpty) readWriteBufferState;
            if (idleNonEmpty2 != null) {
                releaseBuffer(idleNonEmpty2.getInitial());
            }
            resumeWriteOp();
            return;
        }
        if ((readWriteBufferStateStopReading$ktor_io instanceof ReadWriteBufferState.IdleNonEmpty) && readWriteBufferStateStopReading$ktor_io.capacity.isEmpty() && readWriteBufferStateStopReading$ktor_io.capacity.tryLockForRelease() && AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(atomicReferenceFieldUpdater, this, readWriteBufferStateStopReading$ktor_io, ReadWriteBufferState.IdleEmpty.INSTANCE)) {
            readWriteBufferStateStopReading$ktor_io.capacity.resetForWrite();
            releaseBuffer(((ReadWriteBufferState.IdleNonEmpty) readWriteBufferStateStopReading$ktor_io).getInitial());
            resumeWriteOp();
        }
    }

    private final boolean tryReleaseBuffer(boolean forceTermination) {
        Object obj;
        ReadWriteBufferState.Terminated terminated;
        ReadWriteBufferState.Initial initial = null;
        do {
            obj = this._state;
            ReadWriteBufferState readWriteBufferState = (ReadWriteBufferState) obj;
            ClosedElement closed = getClosed();
            if (initial != null) {
                if ((closed != null ? closed.getCause() : null) == null) {
                    initial.capacity.resetForWrite();
                }
                resumeWriteOp();
                initial = null;
            }
            if (readWriteBufferState == ReadWriteBufferState.Terminated.INSTANCE) {
                return true;
            }
            if (readWriteBufferState == ReadWriteBufferState.IdleEmpty.INSTANCE) {
                terminated = ReadWriteBufferState.Terminated.INSTANCE;
            } else if (closed != null && (readWriteBufferState instanceof ReadWriteBufferState.IdleNonEmpty) && (readWriteBufferState.capacity.tryLockForRelease() || closed.getCause() != null)) {
                if (closed.getCause() != null) {
                    readWriteBufferState.capacity.forceLockForRelease();
                }
                initial = ((ReadWriteBufferState.IdleNonEmpty) readWriteBufferState).getInitial();
                terminated = ReadWriteBufferState.Terminated.INSTANCE;
            } else {
                if (!forceTermination || !(readWriteBufferState instanceof ReadWriteBufferState.IdleNonEmpty) || !readWriteBufferState.capacity.tryLockForRelease()) {
                    return false;
                }
                initial = ((ReadWriteBufferState.IdleNonEmpty) readWriteBufferState).getInitial();
                terminated = ReadWriteBufferState.Terminated.INSTANCE;
            }
        } while (!AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0.m(_state$FU, this, obj, terminated));
        if (initial != null && getState() == ReadWriteBufferState.Terminated.INSTANCE) {
            releaseBuffer(initial);
        }
        return true;
    }

    private final int readAsMuchAsPossible(ByteBuffer dst) throws Throwable {
        ByteBuffer byteBuffer = setupStateForRead();
        int i = 0;
        if (byteBuffer == null) {
            return 0;
        }
        RingBufferCapacity ringBufferCapacity = getState().capacity;
        try {
            if (ringBufferCapacity._availableForRead$internal != 0) {
                int iCapacity = byteBuffer.capacity() - this.reservedSize;
                while (true) {
                    int iRemaining = dst.remaining();
                    if (iRemaining == 0) {
                        break;
                    }
                    int i2 = this.readPosition;
                    int iTryReadAtMost = ringBufferCapacity.tryReadAtMost(Math.min(iCapacity - i2, iRemaining));
                    if (iTryReadAtMost == 0) {
                        break;
                    }
                    byteBuffer.limit(i2 + iTryReadAtMost);
                    byteBuffer.position(i2);
                    dst.put(byteBuffer);
                    bytesRead(byteBuffer, ringBufferCapacity, iTryReadAtMost);
                    i += iTryReadAtMost;
                }
            }
            return i;
        } finally {
            restoreStateAfterRead();
            tryTerminate$ktor_io();
        }
    }

    private final int readAsMuchAsPossible(Buffer dst, int consumed, int max) throws Throwable {
        int iTryReadAtMost;
        do {
            ByteBuffer byteBuffer = setupStateForRead();
            boolean z = false;
            if (byteBuffer == null) {
                iTryReadAtMost = 0;
            } else {
                RingBufferCapacity ringBufferCapacity = getState().capacity;
                try {
                    if (ringBufferCapacity._availableForRead$internal == 0) {
                        iTryReadAtMost = 0;
                    } else {
                        int limit = dst.getLimit() - dst.getWritePosition();
                        iTryReadAtMost = ringBufferCapacity.tryReadAtMost(Math.min(byteBuffer.remaining(), Math.min(limit, max)));
                        if (iTryReadAtMost > 0) {
                            if (limit < byteBuffer.remaining()) {
                                byteBuffer.limit(byteBuffer.position() + limit);
                            }
                            BufferPrimitivesJvmKt.writeFully(dst, byteBuffer);
                            bytesRead(byteBuffer, ringBufferCapacity, iTryReadAtMost);
                            z = true;
                        }
                    }
                } finally {
                    restoreStateAfterRead();
                    tryTerminate$ktor_io();
                }
            }
            consumed += iTryReadAtMost;
            max -= iTryReadAtMost;
            if (!z || dst.getLimit() <= dst.getWritePosition()) {
                break;
            }
        } while (getState().capacity._availableForRead$internal > 0);
        return consumed;
    }

    static /* synthetic */ int readAsMuchAsPossible$default(ByteBufferChannel byteBufferChannel, Buffer buffer, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readAsMuchAsPossible");
        }
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = buffer.getLimit() - buffer.getWritePosition();
        }
        return byteBufferChannel.readAsMuchAsPossible(buffer, i, i2);
    }

    private final int readAsMuchAsPossible(byte[] dst, int offset, int length) throws Throwable {
        ByteBuffer byteBuffer = setupStateForRead();
        int i = 0;
        if (byteBuffer == null) {
            return 0;
        }
        RingBufferCapacity ringBufferCapacity = getState().capacity;
        try {
            if (ringBufferCapacity._availableForRead$internal != 0) {
                int iCapacity = byteBuffer.capacity() - this.reservedSize;
                while (true) {
                    int i2 = length - i;
                    if (i2 == 0) {
                        break;
                    }
                    int i3 = this.readPosition;
                    int iTryReadAtMost = ringBufferCapacity.tryReadAtMost(Math.min(iCapacity - i3, i2));
                    if (iTryReadAtMost == 0) {
                        break;
                    }
                    byteBuffer.limit(i3 + iTryReadAtMost);
                    byteBuffer.position(i3);
                    byteBuffer.get(dst, offset + i, iTryReadAtMost);
                    bytesRead(byteBuffer, ringBufferCapacity, iTryReadAtMost);
                    i += iTryReadAtMost;
                }
            }
            return i;
        } finally {
            restoreStateAfterRead();
            tryTerminate$ktor_io();
        }
    }

    @Override // io.ktor.utils.io.ByteReadChannel
    public int readAvailable(int min, Function1<? super ByteBuffer, Unit> block) throws Throwable {
        int iPosition;
        Intrinsics.checkNotNullParameter(block, "block");
        if (min <= 0) {
            throw new IllegalArgumentException("min should be positive".toString());
        }
        if (min > 4088) {
            throw new IllegalArgumentException(("Min(" + min + ") shouldn't be greater than 4088").toString());
        }
        ByteBuffer byteBuffer = setupStateForRead();
        boolean z = false;
        if (byteBuffer == null) {
            iPosition = 0;
        } else {
            RingBufferCapacity ringBufferCapacity = getState().capacity;
            try {
                if (ringBufferCapacity._availableForRead$internal == 0) {
                    iPosition = 0;
                } else {
                    int iTryReadAtLeast = ringBufferCapacity.tryReadAtLeast(min);
                    if (iTryReadAtLeast <= 0 || iTryReadAtLeast < min) {
                        iPosition = 0;
                    } else {
                        int iPosition2 = byteBuffer.position();
                        int iLimit = byteBuffer.limit();
                        block.invoke(byteBuffer);
                        if (iLimit != byteBuffer.limit()) {
                            throw new IllegalStateException("Buffer limit shouldn't be modified.".toString());
                        }
                        iPosition = byteBuffer.position() - iPosition2;
                        if (iPosition < 0) {
                            throw new IllegalStateException("Position shouldn't been moved backwards.".toString());
                        }
                        bytesRead(byteBuffer, ringBufferCapacity, iPosition);
                        if (iPosition < iTryReadAtLeast) {
                            ringBufferCapacity.completeWrite(iTryReadAtLeast - iPosition);
                            ringBufferCapacity.flush();
                        }
                        z = true;
                    }
                }
            } finally {
                restoreStateAfterRead();
                tryTerminate$ktor_io();
            }
        }
        if (z) {
            return iPosition;
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0079 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int writeAsMuchAsPossible(java.nio.ByteBuffer r11) throws java.lang.Throwable {
        /*
            r10 = this;
            io.ktor.utils.io.internal.JoiningState r0 = r10.joining
            if (r0 == 0) goto La
            io.ktor.utils.io.ByteBufferChannel r0 = r10.resolveDelegation(r10, r0)
            if (r0 != 0) goto Lb
        La:
            r0 = r10
        Lb:
            java.nio.ByteBuffer r1 = r0.setupStateForWrite$ktor_io()
            r2 = 0
            if (r1 != 0) goto L13
            return r2
        L13:
            io.ktor.utils.io.internal.ReadWriteBufferState r3 = r0.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r3 = r3.capacity
            long r4 = r0.get_totalBytesWritten()
            io.ktor.utils.io.internal.ClosedElement r6 = r0.getClosed()     // Catch: java.lang.Throwable -> L9f
            if (r6 != 0) goto L92
            r6 = r0
            io.ktor.utils.io.ByteBufferChannel r6 = (io.ktor.utils.io.ByteBufferChannel) r6     // Catch: java.lang.Throwable -> L9f
            int r6 = r11.limit()     // Catch: java.lang.Throwable -> L9f
        L2a:
            int r7 = r11.position()     // Catch: java.lang.Throwable -> L9f
            int r7 = r6 - r7
            if (r7 == 0) goto L67
            int r8 = r1.remaining()     // Catch: java.lang.Throwable -> L9f
            int r7 = java.lang.Math.min(r7, r8)     // Catch: java.lang.Throwable -> L9f
            int r7 = r3.tryWriteAtMost(r7)     // Catch: java.lang.Throwable -> L9f
            if (r7 == 0) goto L67
            if (r7 <= 0) goto L5b
            int r8 = r11.position()     // Catch: java.lang.Throwable -> L9f
            int r8 = r8 + r7
            r11.limit(r8)     // Catch: java.lang.Throwable -> L9f
            r1.put(r11)     // Catch: java.lang.Throwable -> L9f
            int r2 = r2 + r7
            int r7 = r0.writePosition     // Catch: java.lang.Throwable -> L9f
            int r7 = r7 + r2
            int r7 = r0.carryIndex(r1, r7)     // Catch: java.lang.Throwable -> L9f
            int r8 = r3._availableForWrite$internal     // Catch: java.lang.Throwable -> L9f
            r0.prepareBuffer(r1, r7, r8)     // Catch: java.lang.Throwable -> L9f
            goto L2a
        L5b:
            java.lang.String r11 = "Failed requirement."
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L9f
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> L9f
            r1.<init>(r11)     // Catch: java.lang.Throwable -> L9f
            throw r1     // Catch: java.lang.Throwable -> L9f
        L67:
            r11.limit(r6)     // Catch: java.lang.Throwable -> L9f
            r0.bytesWritten(r1, r3, r2)     // Catch: java.lang.Throwable -> L9f
            boolean r11 = r3.isFull()
            if (r11 != 0) goto L79
            boolean r11 = r0.getAutoFlush()
            if (r11 == 0) goto L7c
        L79:
            r0.flush()
        L7c:
            if (r0 == r10) goto L8b
            long r6 = r10.get_totalBytesWritten()
            long r8 = r0.get_totalBytesWritten()
            long r8 = r8 - r4
            long r6 = r6 + r8
            r10.setTotalBytesWritten$ktor_io(r6)
        L8b:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            return r2
        L92:
            java.lang.Throwable r11 = r6.getSendException()     // Catch: java.lang.Throwable -> L9f
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r11)     // Catch: java.lang.Throwable -> L9f
            kotlin.KotlinNothingValueException r11 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L9f
            r11.<init>()     // Catch: java.lang.Throwable -> L9f
            throw r11     // Catch: java.lang.Throwable -> L9f
        L9f:
            r11 = move-exception
            boolean r1 = r3.isFull()
            if (r1 != 0) goto Lac
            boolean r1 = r0.getAutoFlush()
            if (r1 == 0) goto Laf
        Lac:
            r0.flush()
        Laf:
            if (r0 == r10) goto Lbe
            long r1 = r10.get_totalBytesWritten()
            long r6 = r0.get_totalBytesWritten()
            long r6 = r6 - r4
            long r1 = r1 + r6
            r10.setTotalBytesWritten$ktor_io(r1)
        Lbe:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeAsMuchAsPossible(java.nio.ByteBuffer):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005d A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int writeAsMuchAsPossible(io.ktor.utils.io.core.Buffer r11) throws java.lang.Throwable {
        /*
            r10 = this;
            io.ktor.utils.io.internal.JoiningState r0 = r10.joining
            if (r0 == 0) goto La
            io.ktor.utils.io.ByteBufferChannel r0 = r10.resolveDelegation(r10, r0)
            if (r0 != 0) goto Lb
        La:
            r0 = r10
        Lb:
            java.nio.ByteBuffer r1 = r0.setupStateForWrite$ktor_io()
            r2 = 0
            if (r1 != 0) goto L13
            return r2
        L13:
            io.ktor.utils.io.internal.ReadWriteBufferState r3 = r0.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r3 = r3.capacity
            long r4 = r0.get_totalBytesWritten()
            io.ktor.utils.io.internal.ClosedElement r6 = r0.getClosed()     // Catch: java.lang.Throwable -> L83
            if (r6 != 0) goto L76
            r6 = r0
            io.ktor.utils.io.ByteBufferChannel r6 = (io.ktor.utils.io.ByteBufferChannel) r6     // Catch: java.lang.Throwable -> L83
        L26:
            int r6 = r11.getWritePosition()     // Catch: java.lang.Throwable -> L83
            int r7 = r11.getReadPosition()     // Catch: java.lang.Throwable -> L83
            int r6 = r6 - r7
            int r7 = r1.remaining()     // Catch: java.lang.Throwable -> L83
            int r6 = java.lang.Math.min(r6, r7)     // Catch: java.lang.Throwable -> L83
            int r6 = r3.tryWriteAtMost(r6)     // Catch: java.lang.Throwable -> L83
            if (r6 == 0) goto L4e
            io.ktor.utils.io.core.BufferUtilsJvmKt.readFully(r11, r1, r6)     // Catch: java.lang.Throwable -> L83
            int r2 = r2 + r6
            int r6 = r0.writePosition     // Catch: java.lang.Throwable -> L83
            int r6 = r6 + r2
            int r6 = r0.carryIndex(r1, r6)     // Catch: java.lang.Throwable -> L83
            int r7 = r3._availableForWrite$internal     // Catch: java.lang.Throwable -> L83
            r0.prepareBuffer(r1, r6, r7)     // Catch: java.lang.Throwable -> L83
            goto L26
        L4e:
            r0.bytesWritten(r1, r3, r2)     // Catch: java.lang.Throwable -> L83
            boolean r11 = r3.isFull()
            if (r11 != 0) goto L5d
            boolean r11 = r0.getAutoFlush()
            if (r11 == 0) goto L60
        L5d:
            r0.flush()
        L60:
            if (r0 == r10) goto L6f
            long r6 = r10.get_totalBytesWritten()
            long r8 = r0.get_totalBytesWritten()
            long r8 = r8 - r4
            long r6 = r6 + r8
            r10.setTotalBytesWritten$ktor_io(r6)
        L6f:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            return r2
        L76:
            java.lang.Throwable r11 = r6.getSendException()     // Catch: java.lang.Throwable -> L83
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r11)     // Catch: java.lang.Throwable -> L83
            kotlin.KotlinNothingValueException r11 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L83
            r11.<init>()     // Catch: java.lang.Throwable -> L83
            throw r11     // Catch: java.lang.Throwable -> L83
        L83:
            r11 = move-exception
            boolean r1 = r3.isFull()
            if (r1 != 0) goto L90
            boolean r1 = r0.getAutoFlush()
            if (r1 == 0) goto L93
        L90:
            r0.flush()
        L93:
            if (r0 == r10) goto La2
            long r1 = r10.get_totalBytesWritten()
            long r6 = r0.get_totalBytesWritten()
            long r6 = r6 - r4
            long r1 = r1 + r6
            r10.setTotalBytesWritten$ktor_io(r1)
        La2:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeAsMuchAsPossible(io.ktor.utils.io.core.Buffer):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0066 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int writeAsMuchAsPossible(byte[] r9, int r10, int r11) throws java.lang.Throwable {
        /*
            r8 = this;
            io.ktor.utils.io.internal.JoiningState r0 = r8.joining
            if (r0 == 0) goto La
            io.ktor.utils.io.ByteBufferChannel r0 = r8.resolveDelegation(r8, r0)
            if (r0 != 0) goto Lb
        La:
            r0 = r8
        Lb:
            java.nio.ByteBuffer r1 = r0.setupStateForWrite$ktor_io()
            r2 = 0
            if (r1 != 0) goto L13
            return r2
        L13:
            io.ktor.utils.io.internal.ReadWriteBufferState r3 = r0.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r3 = r3.capacity
            long r4 = r0.get_totalBytesWritten()
            io.ktor.utils.io.internal.ClosedElement r6 = r0.getClosed()     // Catch: java.lang.Throwable -> L8c
            if (r6 != 0) goto L7f
            r6 = r0
            io.ktor.utils.io.ByteBufferChannel r6 = (io.ktor.utils.io.ByteBufferChannel) r6     // Catch: java.lang.Throwable -> L8c
        L26:
            int r6 = r11 - r2
            int r7 = r1.remaining()     // Catch: java.lang.Throwable -> L8c
            int r6 = java.lang.Math.min(r6, r7)     // Catch: java.lang.Throwable -> L8c
            int r6 = r3.tryWriteAtMost(r6)     // Catch: java.lang.Throwable -> L8c
            if (r6 == 0) goto L57
            if (r6 <= 0) goto L4b
            int r7 = r10 + r2
            r1.put(r9, r7, r6)     // Catch: java.lang.Throwable -> L8c
            int r2 = r2 + r6
            int r6 = r0.writePosition     // Catch: java.lang.Throwable -> L8c
            int r6 = r6 + r2
            int r6 = r0.carryIndex(r1, r6)     // Catch: java.lang.Throwable -> L8c
            int r7 = r3._availableForWrite$internal     // Catch: java.lang.Throwable -> L8c
            r0.prepareBuffer(r1, r6, r7)     // Catch: java.lang.Throwable -> L8c
            goto L26
        L4b:
            java.lang.String r9 = "Failed requirement."
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L8c
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L8c
            r10.<init>(r9)     // Catch: java.lang.Throwable -> L8c
            throw r10     // Catch: java.lang.Throwable -> L8c
        L57:
            r0.bytesWritten(r1, r3, r2)     // Catch: java.lang.Throwable -> L8c
            boolean r9 = r3.isFull()
            if (r9 != 0) goto L66
            boolean r9 = r0.getAutoFlush()
            if (r9 == 0) goto L69
        L66:
            r0.flush()
        L69:
            if (r0 == r8) goto L78
            long r9 = r8.get_totalBytesWritten()
            long r6 = r0.get_totalBytesWritten()
            long r6 = r6 - r4
            long r9 = r9 + r6
            r8.setTotalBytesWritten$ktor_io(r9)
        L78:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            return r2
        L7f:
            java.lang.Throwable r9 = r6.getSendException()     // Catch: java.lang.Throwable -> L8c
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r9)     // Catch: java.lang.Throwable -> L8c
            kotlin.KotlinNothingValueException r9 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L8c
            r9.<init>()     // Catch: java.lang.Throwable -> L8c
            throw r9     // Catch: java.lang.Throwable -> L8c
        L8c:
            r9 = move-exception
            boolean r10 = r3.isFull()
            if (r10 != 0) goto L99
            boolean r10 = r0.getAutoFlush()
            if (r10 == 0) goto L9c
        L99:
            r0.flush()
        L9c:
            if (r0 == r8) goto Lab
            long r10 = r8.get_totalBytesWritten()
            long r1 = r0.get_totalBytesWritten()
            long r1 = r1 - r4
            long r10 = r10 + r1
            r8.setTotalBytesWritten$ktor_io(r10)
        Lab:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeAsMuchAsPossible(byte[], int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0070 A[DONT_GENERATE] */
    @Override // io.ktor.utils.io.ByteWriteChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int writeAvailable(int r11, kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, kotlin.Unit> r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeAvailable(int, kotlin.jvm.functions.Function1):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0036 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean writeWhileNoSuspend(kotlin.jvm.functions.Function1<? super java.nio.ByteBuffer, java.lang.Boolean> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            io.ktor.utils.io.internal.JoiningState r0 = r7.joining
            if (r0 == 0) goto La
            io.ktor.utils.io.ByteBufferChannel r0 = r7.resolveDelegation(r7, r0)
            if (r0 != 0) goto Lb
        La:
            r0 = r7
        Lb:
            java.nio.ByteBuffer r1 = r0.setupStateForWrite$ktor_io()
            if (r1 != 0) goto L13
            r8 = 1
            return r8
        L13:
            io.ktor.utils.io.internal.ReadWriteBufferState r2 = r0.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r2 = r2.capacity
            long r3 = r0.get_totalBytesWritten()
            io.ktor.utils.io.internal.ClosedElement r5 = r0.getClosed()     // Catch: java.lang.Throwable -> L5c
            if (r5 != 0) goto L4f
            r5 = r0
            io.ktor.utils.io.ByteBufferChannel r5 = (io.ktor.utils.io.ByteBufferChannel) r5     // Catch: java.lang.Throwable -> L5c
            boolean r8 = r0.writeWhileLoop(r1, r2, r8)     // Catch: java.lang.Throwable -> L5c
            boolean r1 = r2.isFull()
            if (r1 != 0) goto L36
            boolean r1 = r0.getAutoFlush()
            if (r1 == 0) goto L39
        L36:
            r0.flush()
        L39:
            if (r0 == r7) goto L48
            long r1 = r7.get_totalBytesWritten()
            long r5 = r0.get_totalBytesWritten()
            long r5 = r5 - r3
            long r1 = r1 + r5
            r7.setTotalBytesWritten$ktor_io(r1)
        L48:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            return r8
        L4f:
            java.lang.Throwable r8 = r5.getSendException()     // Catch: java.lang.Throwable -> L5c
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r8)     // Catch: java.lang.Throwable -> L5c
            kotlin.KotlinNothingValueException r8 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L5c
            r8.<init>()     // Catch: java.lang.Throwable -> L5c
            throw r8     // Catch: java.lang.Throwable -> L5c
        L5c:
            r8 = move-exception
            boolean r1 = r2.isFull()
            if (r1 != 0) goto L69
            boolean r1 = r0.getAutoFlush()
            if (r1 == 0) goto L6c
        L69:
            r0.flush()
        L6c:
            if (r0 == r7) goto L7b
            long r1 = r7.get_totalBytesWritten()
            long r5 = r0.get_totalBytesWritten()
            long r5 = r5 - r3
            long r1 = r1 + r5
            r7.setTotalBytesWritten$ktor_io(r1)
        L7b:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.writeWhileNoSuspend(kotlin.jvm.functions.Function1):boolean");
    }

    static /* synthetic */ Object read$suspendImpl(ByteBufferChannel byteBufferChannel, int i, Function1<? super ByteBuffer, Unit> function1, Continuation<? super Unit> continuation) throws Throwable {
        int i2;
        if (i < 0) {
            throw new IllegalArgumentException("min should be positive or zero".toString());
        }
        ByteBuffer byteBuffer = byteBufferChannel.setupStateForRead();
        if (byteBuffer != null) {
            RingBufferCapacity ringBufferCapacity = byteBufferChannel.getState().capacity;
            try {
                if (ringBufferCapacity._availableForRead$internal != 0 && (i2 = ringBufferCapacity._availableForRead$internal) > 0 && i2 >= i) {
                    int iPosition = byteBuffer.position();
                    int iLimit = byteBuffer.limit();
                    function1.invoke(byteBuffer);
                    if (!(iLimit == byteBuffer.limit())) {
                        throw new IllegalStateException("Buffer limit modified.".toString());
                    }
                    int iPosition2 = byteBuffer.position() - iPosition;
                    if (!(iPosition2 >= 0)) {
                        throw new IllegalStateException("Position has been moved backward: pushback is not supported.".toString());
                    }
                    if (!ringBufferCapacity.tryReadExact(iPosition2)) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    byteBufferChannel.bytesRead(byteBuffer, ringBufferCapacity, iPosition2);
                    z = true;
                }
            } finally {
                byteBufferChannel.restoreStateAfterRead();
                byteBufferChannel.tryTerminate$ktor_io();
            }
        }
        if (!z) {
            if (byteBufferChannel.isClosedForRead() && i > 0) {
                throw new EOFException("Got EOF but at least " + i + " bytes were expected");
            }
            Object blockSuspend = byteBufferChannel.readBlockSuspend(i, function1, continuation);
            return blockSuspend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? blockSuspend : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    static /* synthetic */ Object discard$suspendImpl(ByteBufferChannel byteBufferChannel, long j, Continuation<? super Long> continuation) throws Throwable {
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException(("max shouldn't be negative: " + j).toString());
        }
        ByteBuffer byteBuffer = byteBufferChannel.setupStateForRead();
        if (byteBuffer != null) {
            RingBufferCapacity ringBufferCapacity = byteBufferChannel.getState().capacity;
            try {
                if (ringBufferCapacity._availableForRead$internal != 0) {
                    int iTryReadAtMost = ringBufferCapacity.tryReadAtMost((int) Math.min(2147483647L, j));
                    byteBufferChannel.bytesRead(byteBuffer, ringBufferCapacity, iTryReadAtMost);
                    j2 = iTryReadAtMost;
                }
            } finally {
                byteBufferChannel.restoreStateAfterRead();
                byteBufferChannel.tryTerminate$ktor_io();
            }
        }
        long j3 = j2;
        if (j3 == j || byteBufferChannel.isClosedForRead()) {
            return Boxing.boxLong(j3);
        }
        return byteBufferChannel.discardSuspend(j3, j, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0054 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int tryWritePacketPart(io.ktor.utils.io.core.ByteReadPacket r10) throws java.lang.Throwable {
        /*
            r9 = this;
            io.ktor.utils.io.internal.JoiningState r0 = r9.joining
            if (r0 == 0) goto La
            io.ktor.utils.io.ByteBufferChannel r0 = r9.resolveDelegation(r9, r0)
            if (r0 != 0) goto Lb
        La:
            r0 = r9
        Lb:
            java.nio.ByteBuffer r1 = r0.setupStateForWrite$ktor_io()
            if (r1 != 0) goto L13
            r10 = 0
            return r10
        L13:
            io.ktor.utils.io.internal.ReadWriteBufferState r2 = r0.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r2 = r2.capacity
            long r3 = r0.get_totalBytesWritten()
            io.ktor.utils.io.internal.ClosedElement r5 = r0.getClosed()     // Catch: java.lang.Throwable -> L7a
            if (r5 != 0) goto L6d
            r5 = r0
            io.ktor.utils.io.ByteBufferChannel r5 = (io.ktor.utils.io.ByteBufferChannel) r5     // Catch: java.lang.Throwable -> L7a
            long r5 = r10.getRemaining()     // Catch: java.lang.Throwable -> L7a
            int r7 = r1.remaining()     // Catch: java.lang.Throwable -> L7a
            long r7 = (long) r7     // Catch: java.lang.Throwable -> L7a
            long r5 = java.lang.Math.min(r5, r7)     // Catch: java.lang.Throwable -> L7a
            int r5 = (int) r5     // Catch: java.lang.Throwable -> L7a
            int r5 = r2.tryWriteAtMost(r5)     // Catch: java.lang.Throwable -> L7a
            if (r5 <= 0) goto L48
            int r6 = r1.position()     // Catch: java.lang.Throwable -> L7a
            int r6 = r6 + r5
            r1.limit(r6)     // Catch: java.lang.Throwable -> L7a
            io.ktor.utils.io.core.ByteBuffersKt.readFully(r10, r1)     // Catch: java.lang.Throwable -> L7a
            r0.bytesWritten(r1, r2, r5)     // Catch: java.lang.Throwable -> L7a
        L48:
            boolean r10 = r2.isFull()
            if (r10 != 0) goto L54
            boolean r10 = r0.getAutoFlush()
            if (r10 == 0) goto L57
        L54:
            r0.flush()
        L57:
            if (r0 == r9) goto L66
            long r1 = r9.get_totalBytesWritten()
            long r6 = r0.get_totalBytesWritten()
            long r6 = r6 - r3
            long r1 = r1 + r6
            r9.setTotalBytesWritten$ktor_io(r1)
        L66:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            return r5
        L6d:
            java.lang.Throwable r10 = r5.getSendException()     // Catch: java.lang.Throwable -> L7a
            io.ktor.utils.io.ByteBufferChannelKt.access$rethrowClosed(r10)     // Catch: java.lang.Throwable -> L7a
            kotlin.KotlinNothingValueException r10 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L7a
            r10.<init>()     // Catch: java.lang.Throwable -> L7a
            throw r10     // Catch: java.lang.Throwable -> L7a
        L7a:
            r10 = move-exception
            boolean r1 = r2.isFull()
            if (r1 != 0) goto L87
            boolean r1 = r0.getAutoFlush()
            if (r1 == 0) goto L8a
        L87:
            r0.flush()
        L8a:
            if (r0 == r9) goto L99
            long r1 = r9.get_totalBytesWritten()
            long r5 = r0.get_totalBytesWritten()
            long r5 = r5 - r3
            long r1 = r1 + r5
            r9.setTotalBytesWritten$ktor_io(r1)
        L99:
            r0.restoreStateAfterWrite$ktor_io()
            r0.tryTerminate$ktor_io()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.tryWritePacketPart(io.ktor.utils.io.core.ByteReadPacket):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean consumeEachBufferRangeFast(boolean r6, kotlin.jvm.functions.Function2<? super java.nio.ByteBuffer, ? super java.lang.Boolean, java.lang.Boolean> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            java.nio.ByteBuffer r0 = r5.setupStateForRead()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto La
        L8:
            r6 = r1
            goto L2a
        La:
            io.ktor.utils.io.internal.ReadWriteBufferState r3 = r5.getState()
            io.ktor.utils.io.internal.RingBufferCapacity r3 = r3.capacity
            int r4 = r3._availableForRead$internal     // Catch: java.lang.Throwable -> L61
            if (r4 != 0) goto L1b
            r5.restoreStateAfterRead()
            r5.tryTerminate$ktor_io()
            goto L8
        L1b:
            boolean r1 = r0.hasRemaining()     // Catch: java.lang.Throwable -> L61
            if (r1 != 0) goto L3f
            if (r6 == 0) goto L24
            goto L3f
        L24:
            r5.restoreStateAfterRead()
            r5.tryTerminate$ktor_io()
        L2a:
            if (r6 != 0) goto L3e
            io.ktor.utils.io.internal.ClosedElement r0 = r5.getClosed()
            if (r0 == 0) goto L3e
            java.nio.ByteBuffer r6 = io.ktor.utils.io.internal.ReadWriteBufferStateKt.getEmptyByteBuffer()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            r7.invoke(r6, r0)
            return r2
        L3e:
            return r6
        L3f:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r6)     // Catch: java.lang.Throwable -> L61
            java.lang.Object r1 = r7.invoke(r0, r1)     // Catch: java.lang.Throwable -> L61
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L61
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L61
            r5.afterBufferVisited(r0, r3)     // Catch: java.lang.Throwable -> L61
            if (r1 == 0) goto L5a
            if (r6 == 0) goto L1b
            boolean r1 = r0.hasRemaining()     // Catch: java.lang.Throwable -> L61
            if (r1 != 0) goto L1b
        L5a:
            r5.restoreStateAfterRead()
            r5.tryTerminate$ktor_io()
            return r2
        L61:
            r6 = move-exception
            r5.restoreStateAfterRead()
            r5.tryTerminate$ktor_io()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.consumeEachBufferRangeFast(boolean, kotlin.jvm.functions.Function2):boolean");
    }

    private final ByteReadPacket remainingPacket(long limit) {
        BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
        try {
            BytePacketBuilder bytePacketBuilder2 = bytePacketBuilder;
            ChunkBuffer chunkBufferPrepareWriteHead = UnsafeKt.prepareWriteHead(bytePacketBuilder2, 1, null);
            while (true) {
                try {
                    ChunkBuffer chunkBuffer = chunkBufferPrepareWriteHead;
                    if (chunkBuffer.getLimit() - chunkBuffer.getWritePosition() > limit) {
                        chunkBuffer.resetForWrite((int) limit);
                    }
                    limit -= (long) readAsMuchAsPossible$default(this, chunkBuffer, 0, 0, 6, null);
                    if (limit <= 0 || isClosedForRead()) {
                        break;
                    }
                    chunkBufferPrepareWriteHead = UnsafeKt.prepareWriteHead(bytePacketBuilder2, 1, chunkBufferPrepareWriteHead);
                } catch (Throwable th) {
                    bytePacketBuilder2.afterHeadWrite();
                    throw th;
                }
            }
            bytePacketBuilder2.afterHeadWrite();
            return bytePacketBuilder.build();
        } catch (Throwable th2) {
            bytePacketBuilder.release();
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d6, code lost:
    
        r5 = kotlin.Result.INSTANCE;
        r6.resumeWith(kotlin.Result.m817constructorimpl(true));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object suspensionForSize(int r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.utils.io.ByteBufferChannel.suspensionForSize(int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
