package com.stripe.jvmcore.logging;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.proto.ProtoFlattener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.LogEvent;
import com.stripe.proto.model.common.InstantPb;
import com.stripe.proto.model.observability.schema.Payload;
import com.stripe.proto.model.observability.schema.android.Event;
import com.stripe.time.Clock;
import dagger.Lazy;
import java.io.File;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: EventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 #2\u00020\u0001:\u0001#BI\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0002J\u000e\u0010!\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\"R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/jvmcore/logging/EventLogger;", "", "batchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/api/gator/LogEvent;", "clock", "Lcom/stripe/time/Clock;", "protoFlattener", "Lcom/stripe/jvmcore/proto/ProtoFlattener;", "legacyFileProvider", "Ldagger/Lazy;", "Ljava/io/File;", "maxEntryBytes", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Ldagger/Lazy;JLkotlinx/coroutines/CoroutineScope;Lcom/stripe/logwriter/LogWriter;)V", "deleteLegacyFileIfPresent", "Lkotlinx/coroutines/Job;", "init", "", "logAndroidEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/proto/model/observability/schema/android/Event;", "logAndroidReaderEvent", "Lcom/stripe/proto/model/observability/schema/androidreader/Event;", "logCrashEvent", "Lcom/stripe/proto/model/observability/schema/crash/Event;", "logEvent", "payload", "Lcom/stripe/proto/model/observability/schema/Payload;", "logPowerEvent", "Lcom/stripe/proto/model/observability/schema/power/Event;", "Companion", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EventLogger {
    private static final String TAG = "EventLogger";
    private final BatchDispatcher<LogEvent> batchDispatcher;
    private final Clock clock;
    private final Lazy<File> legacyFileProvider;
    private final LogWriter logWriter;
    private final long maxEntryBytes;
    private final ProtoFlattener protoFlattener;
    private final CoroutineScope scope;

    public EventLogger(BatchDispatcher<LogEvent> batchDispatcher, Clock clock, ProtoFlattener protoFlattener, Lazy<File> legacyFileProvider, long j, CoroutineScope scope, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(batchDispatcher, "batchDispatcher");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(protoFlattener, "protoFlattener");
        Intrinsics.checkNotNullParameter(legacyFileProvider, "legacyFileProvider");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.batchDispatcher = batchDispatcher;
        this.clock = clock;
        this.protoFlattener = protoFlattener;
        this.legacyFileProvider = legacyFileProvider;
        this.maxEntryBytes = j;
        this.scope = scope;
        this.logWriter = logWriter;
    }

    public final void init() {
        deleteLegacyFileIfPresent();
        this.batchDispatcher.init();
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.logging.EventLogger$deleteLegacyFileIfPresent$1, reason: invalid class name */
    /* JADX INFO: compiled from: EventLogger.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.logging.EventLogger$deleteLegacyFileIfPresent$1", f = "EventLogger.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = EventLogger.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            EventLogger eventLogger = EventLogger.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                File file = (File) eventLogger.legacyFileProvider.get();
                if (file.exists()) {
                    file.delete();
                }
                Result.m817constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            return Unit.INSTANCE;
        }
    }

    private final Job deleteLegacyFileIfPresent() {
        return BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logAndroidEvent(Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        logEvent(new Payload(null, null, new com.stripe.proto.model.observability.schema.android.Payload(event, null, 2, 0 == true ? 1 : 0), null, null, null, 59, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logAndroidReaderEvent(com.stripe.proto.model.observability.schema.androidreader.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        logEvent(new Payload(new com.stripe.proto.model.observability.schema.androidreader.Payload(event, null, 2, 0 == true ? 1 : 0), null, null, null, null, null, 62, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logCrashEvent(com.stripe.proto.model.observability.schema.crash.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        logEvent(new Payload(null, null, null, new com.stripe.proto.model.observability.schema.crash.Payload(event, null, 2, 0 == true ? 1 : 0), null, null, 55, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void logPowerEvent(com.stripe.proto.model.observability.schema.power.Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        logEvent(new Payload(null, new com.stripe.proto.model.observability.schema.power.Payload(event, null, 2, 0 == true ? 1 : 0), null, null, null, null, 61, null));
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.logging.EventLogger$logEvent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EventLogger.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/stripe/proto/api/gator/LogEvent;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.logging.EventLogger$logEvent$1", f = "EventLogger.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02641 extends SuspendLambda implements Function1<Continuation<? super Result<? extends LogEvent>>, Object> {
        final /* synthetic */ Payload $payload;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02641(Payload payload, Continuation<? super C02641> continuation) {
            super(1, continuation);
            this.$payload = payload;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return EventLogger.this.new C02641(this.$payload, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Result<? extends LogEvent>> continuation) {
            return invoke2((Continuation<? super Result<LogEvent>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<? super Result<LogEvent>> continuation) {
            return ((C02641) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM817constructorimpl;
            int length;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            EventLogger eventLogger = EventLogger.this;
            Payload payload = this.$payload;
            try {
                Result.Companion companion = Result.INSTANCE;
                length = payload.encode().length;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            if (length < eventLogger.maxEntryBytes) {
                objM817constructorimpl = Result.m817constructorimpl(Unit.INSTANCE);
                EventLogger eventLogger2 = EventLogger.this;
                Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
                if (thM820exceptionOrNullimpl != null) {
                    LogWriter logWriter = eventLogger2.logWriter;
                    String str = EventLogger.TAG;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$cp(...)");
                    logWriter.e(str, "Failed to determine protobuf size in bytes.", thM820exceptionOrNullimpl);
                    Result.Companion companion3 = Result.INSTANCE;
                    return Result.m816boximpl(Result.m817constructorimpl(ResultKt.createFailure(thM820exceptionOrNullimpl)));
                }
                Object objM492flattenToKeyValueMapIoAF18A = EventLogger.this.protoFlattener.m492flattenToKeyValueMapIoAF18A(this.$payload);
                EventLogger eventLogger3 = EventLogger.this;
                Throwable thM820exceptionOrNullimpl2 = Result.m820exceptionOrNullimpl(objM492flattenToKeyValueMapIoAF18A);
                if (thM820exceptionOrNullimpl2 != null) {
                    LogWriter logWriter2 = eventLogger3.logWriter;
                    String str2 = EventLogger.TAG;
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$cp(...)");
                    logWriter2.e(str2, "Failed to convert event payload to JSON pairs.", thM820exceptionOrNullimpl2);
                    Result.Companion companion4 = Result.INSTANCE;
                    return Result.m816boximpl(Result.m817constructorimpl(ResultKt.createFailure(thM820exceptionOrNullimpl2)));
                }
                Map map = (Map) objM492flattenToKeyValueMapIoAF18A;
                Result.Companion companion5 = Result.INSTANCE;
                return Result.m816boximpl(Result.m817constructorimpl(new LogEvent(new InstantPb(EventLogger.this.clock.currentTimeMillis(), null, 2, null), map, null, 4, null)));
            }
            String str3 = "Dropping an event payload that is " + length + " bytes.";
            LogWriter logWriter3 = eventLogger.logWriter;
            String str4 = EventLogger.TAG;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$cp(...)");
            logWriter3.w(str4, str3);
            Result.Companion companion6 = Result.INSTANCE;
            return Result.m816boximpl(Result.m817constructorimpl(ResultKt.createFailure(new IllegalStateException(str3))));
        }
    }

    private final void logEvent(Payload payload) {
        this.batchDispatcher.add(new C02641(payload, null));
    }
}
