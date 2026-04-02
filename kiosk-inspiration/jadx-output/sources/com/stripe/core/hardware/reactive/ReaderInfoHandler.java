package com.stripe.core.hardware.reactive;

import com.stripe.core.hardware.ReaderInfoController;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: compiled from: ReaderInfoHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB1\b\u0017\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fB?\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011¢\u0006\u0002\u0010\u0012J\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0086@ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001dR&\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u001f"}, d2 = {"Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;", "", "io", "Lio/reactivex/rxjava3/core/Scheduler;", "readerInfoController", "Lcom/stripe/core/hardware/ReaderInfoController;", "readerStatusListener", "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lio/reactivex/rxjava3/core/Scheduler;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/BbposDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;", "fetchReaderInfo", "Lkotlin/Result;", "Lcom/stripe/hardware/status/ReaderInfo;", "fetchReaderInfo-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderInfoHandler {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long FETCH_TIMEOUT;
    private final HealthLogger<BbposDomain, BbposDomain.Builder, ReaderScope, ReaderScope.Builder> healthLogger;
    private final Scheduler io;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final ReaderInfoController readerInfoController;
    private final ReactiveReaderStatusListener readerStatusListener;

    public ReaderInfoHandler(Scheduler io2, ReaderInfoController readerInfoController, ReactiveReaderStatusListener readerStatusListener, HealthLoggerBuilder healthLoggerBuilder, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(readerInfoController, "readerInfoController");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.io = io2;
        this.readerInfoController = readerInfoController;
        this.readerStatusListener = readerStatusListener;
        this.logger = logger;
        this.healthLogger = new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, BbposDomain.class, BbposDomain.Builder.class, new Function2<HealthMetric.Builder, BbposDomain, Unit>() { // from class: com.stripe.core.hardware.reactive.ReaderInfoHandler$healthLogger$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, BbposDomain bbposDomain) {
                invoke2(builder, bbposDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, BbposDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.bbpos = domain;
            }
        }), ReaderScope.class, ReaderScope.Builder.class, new Function2<BbposDomain.Builder, ReaderScope, Unit>() { // from class: com.stripe.core.hardware.reactive.ReaderInfoHandler$healthLogger$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(BbposDomain.Builder builder, ReaderScope readerScope) {
                invoke2(builder, readerScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BbposDomain.Builder withScope, ReaderScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.reader_ = scope;
            }
        }).build();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: fetchReaderInfo-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m462fetchReaderInfoIoAF18A(kotlin.coroutines.Continuation<? super kotlin.Result<com.stripe.hardware.status.ReaderInfo>> r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$1
            if (r0 == 0) goto L14
            r0 = r10
            com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$1 r0 = (com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$1 r0 = new com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$1
            r0.<init>(r9, r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r1 = r0.L$1
            com.stripe.jvmcore.logging.PendingTimer r1 = (com.stripe.jvmcore.logging.PendingTimer) r1
            java.lang.Object r0 = r0.L$0
            r2 = r0
            com.stripe.core.hardware.reactive.ReaderInfoHandler r2 = (com.stripe.core.hardware.reactive.ReaderInfoHandler) r2
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L33
            goto L69
        L33:
            r0 = move-exception
            goto L73
        L35:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L3d:
            kotlin.ResultKt.throwOnFailure(r10)
            com.stripe.jvmcore.logging.HealthLogger<com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain$Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope$Builder> r10 = r9.healthLogger
            com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1 r2 = new kotlin.jvm.functions.Function2<com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope.Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer, kotlin.Unit>() { // from class: com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1
                static {
                    /*
                        com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1 r0 = new com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1) com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1.INSTANCE com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 2
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ kotlin.Unit invoke(com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope.Builder r1, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer r2) {
                    /*
                        r0 = this;
                        com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope$Builder r1 = (com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope.Builder) r1
                        com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer r2 = (com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer) r2
                        r0.invoke2(r1, r2)
                        kotlin.Unit r1 = kotlin.Unit.INSTANCE
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope.Builder r2, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer r3) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "$this$startTimer"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        java.lang.String r0 = "event"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                        r2.request_reader_info = r3
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$fetchTimer$1.invoke2(com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope$Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer):void");
                }
            }
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r4 = 0
            com.stripe.jvmcore.logging.PendingTimer r10 = com.stripe.jvmcore.logging.HealthLogger.startTimer$default(r10, r4, r2, r3, r4)
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L70
            r2 = r9
            com.stripe.core.hardware.reactive.ReaderInfoHandler r2 = (com.stripe.core.hardware.reactive.ReaderInfoHandler) r2     // Catch: java.lang.Throwable -> L70
            long r5 = com.stripe.core.hardware.reactive.ReaderInfoHandler.FETCH_TIMEOUT     // Catch: java.lang.Throwable -> L70
            com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$2$1 r2 = new com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$2$1     // Catch: java.lang.Throwable -> L70
            r2.<init>(r9, r4)     // Catch: java.lang.Throwable -> L70
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2     // Catch: java.lang.Throwable -> L70
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L70
            r0.L$1 = r10     // Catch: java.lang.Throwable -> L70
            r0.label = r3     // Catch: java.lang.Throwable -> L70
            java.lang.Object r0 = kotlinx.coroutines.TimeoutKt.m2329withTimeoutKLykuaI(r5, r2, r0)     // Catch: java.lang.Throwable -> L70
            if (r0 != r1) goto L66
            return r1
        L66:
            r2 = r9
            r1 = r10
            r10 = r0
        L69:
            com.stripe.hardware.status.ReaderInfo r10 = (com.stripe.hardware.status.ReaderInfo) r10     // Catch: java.lang.Throwable -> L33
            java.lang.Object r10 = kotlin.Result.m817constructorimpl(r10)     // Catch: java.lang.Throwable -> L33
            goto L7e
        L70:
            r0 = move-exception
            r2 = r9
            r1 = r10
        L73:
            r10 = r0
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            java.lang.Object r10 = kotlin.ResultKt.createFailure(r10)
            java.lang.Object r10 = kotlin.Result.m817constructorimpl(r10)
        L7e:
            r7 = r2
            java.lang.Throwable r8 = kotlin.Result.m820exceptionOrNullimpl(r10)
            if (r8 == 0) goto L9d
            com.stripe.jvmcore.logging.HealthLogger<com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain$Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope$Builder> r0 = r7.healthLogger
            com.stripe.loggingmodels.Outcome$GenericError r2 = com.stripe.loggingmodels.Outcome.GenericError.INSTANCE
            com.stripe.loggingmodels.Outcome r2 = (com.stripe.loggingmodels.Outcome) r2
            r5 = 12
            r6 = 0
            r3 = 0
            r4 = 0
            com.stripe.jvmcore.logging.HealthLogger.endTimer$default(r0, r1, r2, r3, r4, r5, r6)
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r0 = r7.logger
            r2 = 0
            kotlin.Pair[] r2 = new kotlin.Pair[r2]
            java.lang.String r3 = "Failed to fetch reader info"
            r0.e(r3, r8, r2)
        L9d:
            boolean r0 = kotlin.Result.m824isSuccessimpl(r10)
            if (r0 == 0) goto Lb1
            r0 = r10
            com.stripe.hardware.status.ReaderInfo r0 = (com.stripe.hardware.status.ReaderInfo) r0
            com.stripe.jvmcore.logging.HealthLogger<com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.BbposDomain$Builder, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope, com.stripe.proto.terminal.clientlogger.pub.message.health.domains.bbpos.ReaderScope$Builder> r0 = r7.healthLogger
            r5 = 14
            r6 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            com.stripe.jvmcore.logging.HealthLogger.endTimer$default(r0, r1, r2, r3, r4, r5, r6)
        Lb1:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.ReaderInfoHandler.m462fetchReaderInfoIoAF18A(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: compiled from: ReaderInfoHandler.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\t"}, d2 = {"Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$Companion;", "", "()V", "FETCH_TIMEOUT", "Lkotlin/time/Duration;", "getFETCH_TIMEOUT-UwyO8pc$annotations", "getFETCH_TIMEOUT-UwyO8pc", "()J", "J", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: renamed from: getFETCH_TIMEOUT-UwyO8pc$annotations, reason: not valid java name */
        public static /* synthetic */ void m463getFETCH_TIMEOUTUwyO8pc$annotations() {
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getFETCH_TIMEOUT-UwyO8pc, reason: not valid java name */
        public final long m464getFETCH_TIMEOUTUwyO8pc() {
            return ReaderInfoHandler.FETCH_TIMEOUT;
        }
    }

    static {
        Duration.Companion companion = Duration.INSTANCE;
        FETCH_TIMEOUT = DurationKt.toDuration(3, DurationUnit.SECONDS);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Inject
    public ReaderInfoHandler(@IO Scheduler io2, ReaderInfoController readerInfoController, ReactiveReaderStatusListener readerStatusListener, HealthLoggerBuilder healthLoggerBuilder, LoggerFactory loggerFactory) {
        this(io2, readerInfoController, readerStatusListener, healthLoggerBuilder, loggerFactory.create(Reflection.getOrCreateKotlinClass(ReaderInfoHandler.class)));
        Intrinsics.checkNotNullParameter(io2, "io");
        Intrinsics.checkNotNullParameter(readerInfoController, "readerInfoController");
        Intrinsics.checkNotNullParameter(readerStatusListener, "readerStatusListener");
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
    }
}
