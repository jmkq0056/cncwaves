package com.stripe.jvmcore.logging;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.loggingmodels.StructuredEventLogger;
import com.stripe.loggingmodels.StructuredEventLoggerInitializer;
import com.stripe.proto.terminal.clientlogger.pub.SearchIndices;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventData;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import com.stripe.time.Clock;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* JADX INFO: compiled from: ObservabilityDataStructuredEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J4\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;", "Lcom/stripe/loggingmodels/StructuredEventLogger;", "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;", "observabilityDataBatchDispatcher", "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "clock", "Lcom/stripe/time/Clock;", "baseSearchIndicesProvider", "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;", "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)V", "init", "", "log", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "loggerName", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;", "searchIndicesReducer", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "logStructuredEvent", "payload", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ObservabilityDataStructuredEventLogger implements StructuredEventLogger, StructuredEventLoggerInitializer {
    private final BaseSearchIndicesProvider baseSearchIndicesProvider;
    private final Clock clock;
    private final BatchDispatcher<ObservabilityData> observabilityDataBatchDispatcher;

    public ObservabilityDataStructuredEventLogger(BatchDispatcher<ObservabilityData> observabilityDataBatchDispatcher, Clock clock, BaseSearchIndicesProvider baseSearchIndicesProvider) {
        Intrinsics.checkNotNullParameter(observabilityDataBatchDispatcher, "observabilityDataBatchDispatcher");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(baseSearchIndicesProvider, "baseSearchIndicesProvider");
        this.observabilityDataBatchDispatcher = observabilityDataBatchDispatcher;
        this.clock = clock;
        this.baseSearchIndicesProvider = baseSearchIndicesProvider;
    }

    @Override // com.stripe.loggingmodels.StructuredEventLoggerInitializer
    public void init() {
        this.observabilityDataBatchDispatcher.init();
    }

    @Override // com.stripe.loggingmodels.StructuredEventLogger
    public void log(EventData event, String loggerName, Metadata.Level level, Function1<? super SearchIndices, SearchIndices> searchIndicesReducer) {
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(loggerName, "loggerName");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(searchIndicesReducer, "searchIndicesReducer");
        DefaultConstructorMarker defaultConstructorMarker = null;
        ByteString byteString = null;
        logStructuredEvent(new ObservabilityData(new com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata(this.clock.currentTimeMillis(), level, loggerName, byteString, 8, defaultConstructorMarker), searchIndicesReducer.invoke(this.baseSearchIndicesProvider.getBaseSearchIndices()), null, null, null, null, event, byteString, WinError.ERROR_INVALID_STARTING_CODESEG, defaultConstructorMarker));
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.logging.ObservabilityDataStructuredEventLogger$logStructuredEvent$1, reason: invalid class name */
    /* JADX INFO: compiled from: ObservabilityDataStructuredEventLogger.kt */
    @kotlin.Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.logging.ObservabilityDataStructuredEventLogger$logStructuredEvent$1", f = "ObservabilityDataStructuredEventLogger.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Result<? extends ObservabilityData>>, Object> {
        final /* synthetic */ ObservabilityData $payload;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ObservabilityData observabilityData, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$payload = observabilityData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$payload, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Result<? extends ObservabilityData>> continuation) {
            return invoke2((Continuation<? super Result<ObservabilityData>>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<? super Result<ObservabilityData>> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Result.Companion companion = Result.INSTANCE;
            return Result.m816boximpl(Result.m817constructorimpl(this.$payload));
        }
    }

    private final void logStructuredEvent(ObservabilityData payload) {
        this.observabilityDataBatchDispatcher.add(new AnonymousClass1(payload, null));
    }
}
