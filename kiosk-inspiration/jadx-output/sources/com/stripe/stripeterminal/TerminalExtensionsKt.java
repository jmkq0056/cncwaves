package com.stripe.stripeterminal;

import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: TerminalExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a@\u0010\u0007\u001a\u00020\u0001*\u00020\u00062\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a@\u0010\u0013\u001a\u00020\u0001*\u00020\u00062\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0012\u001a$\u0010\u0015\u001a\u00020\u0016*\u00020\u00172\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u0018"}, d2 = {"deleteIfExists", "Lkotlinx/coroutines/Job;", "legacyTracesFile", "Lkotlin/Function0;", "Ljava/io/File;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "autoSubmitLoop", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "intervalDelay", "Lkotlin/time/Duration;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "autoSubmitLoop-exY8QGI", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;JLkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/Job;", "flushPendingLogsLoop", "flushPendingLogsLoop-exY8QGI", "initLoggers", "", "Lcom/stripe/stripeterminal/TerminalComponent;", "sdkmanager_publish"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TerminalExtensionsKt {
    public static /* synthetic */ void initLoggers$default(TerminalComponent terminalComponent, Function0 function0, CoroutineScope coroutineScope, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineScope = CoroutineScopeKt.CoroutineScope(Dispatchers.getIO());
        }
        initLoggers(terminalComponent, function0, coroutineScope);
    }

    public static final void initLoggers(TerminalComponent terminalComponent, Function0<? extends File> legacyTracesFile, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(terminalComponent, "<this>");
        Intrinsics.checkNotNullParameter(legacyTracesFile, "legacyTracesFile");
        Intrinsics.checkNotNullParameter(scope, "scope");
        terminalComponent.getLogInitializer().initialize();
        deleteIfExists(legacyTracesFile, scope);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.TerminalExtensionsKt$deleteIfExists$1, reason: invalid class name */
    /* JADX INFO: compiled from: TerminalExtensions.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.TerminalExtensionsKt$deleteIfExists$1", f = "TerminalExtensions.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<File> $legacyTracesFile;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function0<? extends File> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$legacyTracesFile = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$legacyTracesFile, continuation);
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
            Function0<File> function0 = this.$legacyTracesFile;
            try {
                Result.Companion companion = Result.INSTANCE;
                File fileInvoke = function0.invoke();
                File file = fileInvoke;
                if (file.exists()) {
                    file.delete();
                }
                Result.m817constructorimpl(fileInvoke);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            return Unit.INSTANCE;
        }
    }

    private static final Job deleteIfExists(Function0<? extends File> function0, CoroutineScope coroutineScope) {
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(function0, null), 3, null);
    }

    /* JADX INFO: renamed from: flushPendingLogsLoop-exY8QGI$default, reason: not valid java name */
    public static /* synthetic */ Job m504flushPendingLogsLoopexY8QGI$default(CoroutineScope coroutineScope, SimpleLogger simpleLogger, long j, CoroutineDispatcher coroutineDispatcher, int i, Object obj) {
        if ((i & 4) != 0) {
            coroutineDispatcher = Dispatchers.getIO();
        }
        return m503flushPendingLogsLoopexY8QGI(coroutineScope, simpleLogger, j, coroutineDispatcher);
    }

    /* JADX INFO: renamed from: flushPendingLogsLoop-exY8QGI, reason: not valid java name */
    public static final Job m503flushPendingLogsLoopexY8QGI(CoroutineScope flushPendingLogsLoop, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger, long j, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(flushPendingLogsLoop, "$this$flushPendingLogsLoop");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return BuildersKt__Builders_commonKt.launch$default(flushPendingLogsLoop, dispatcher, null, new TerminalExtensionsKt$flushPendingLogsLoop$1(logger, j, null), 2, null);
    }

    /* JADX INFO: renamed from: autoSubmitLoop-exY8QGI$default, reason: not valid java name */
    public static /* synthetic */ Job m502autoSubmitLoopexY8QGI$default(CoroutineScope coroutineScope, SimpleLogger simpleLogger, long j, CoroutineDispatcher coroutineDispatcher, int i, Object obj) {
        if ((i & 4) != 0) {
            coroutineDispatcher = Dispatchers.getIO();
        }
        return m501autoSubmitLoopexY8QGI(coroutineScope, simpleLogger, j, coroutineDispatcher);
    }

    /* JADX INFO: renamed from: autoSubmitLoop-exY8QGI, reason: not valid java name */
    public static final Job m501autoSubmitLoopexY8QGI(CoroutineScope autoSubmitLoop, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger, long j, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(autoSubmitLoop, "$this$autoSubmitLoop");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        return BuildersKt__Builders_commonKt.launch$default(autoSubmitLoop, dispatcher, null, new TerminalExtensionsKt$autoSubmitLoop$1(logger, j, null), 2, null);
    }
}
