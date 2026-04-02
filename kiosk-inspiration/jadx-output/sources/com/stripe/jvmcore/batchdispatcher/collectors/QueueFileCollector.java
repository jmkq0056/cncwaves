package com.stripe.jvmcore.batchdispatcher.collectors;

import com.squareup.tape2.QueueFile;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.sun.jna.platform.win32.WinError;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: QueueFileCollector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 F*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\u0003FGHB;\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fBC\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u0013J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0002J\u000e\u0010(\u001a\u00020)H\u0086@¢\u0006\u0002\u0010*J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010-J1\u0010+\u001a\u00020)2\"\u0010.\u001a\u001e\b\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000100\u0012\u0006\u0012\u0004\u0018\u0001020/H\u0016¢\u0006\u0002\u00103J$\u00104\u001a\u00020)2\u0006\u00105\u001a\u0002062\f\u00107\u001a\b\u0012\u0004\u0012\u00028\u000008H\u0096@¢\u0006\u0002\u00109J\u0014\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000008H\u0096@¢\u0006\u0002\u0010*J\u0016\u0010;\u001a\u00020)2\f\u00107\u001a\b\u0012\u0004\u0012\u00028\u00000<H\u0002J\u0010\u0010=\u001a\u00020\u001e2\u0006\u0010\b\u001a\u00020\nH\u0002J\u000e\u0010>\u001a\u00020)H\u0096@¢\u0006\u0002\u0010*J\b\u0010?\u001a\u00020@H\u0002J\u001c\u0010A\u001a\u00020)2\f\u00107\u001a\b\u0012\u0004\u0012\u00028\u000008H\u0096@¢\u0006\u0002\u0010BJ\b\u0010C\u001a\u00020DH\u0002J\b\u0010E\u001a\u00020)H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u0015X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\b\u001a\n \u0018*\u0004\u0018\u00010\n0\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u001f\u001a\u0004\u0018\u00010 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u001c\u001a\u0004\b!\u0010\"¨\u0006I"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;", "T", "Lcom/stripe/jvmcore/batchdispatcher/Collector;", "Lkotlinx/coroutines/CoroutineScope;", "serializer", "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;", "configuration", "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;", "file", "Ldagger/Lazy;", "Ljava/io/File;", "loggerExceptionListener", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V", "fileProvider", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "kotlin.jvm.PlatformType", "getFile", "()Ljava/io/File;", "file$delegate", "Lkotlin/Lazy;", "queueFile", "Lcom/squareup/tape2/QueueFile;", "usedBytesMethod", "Ljava/lang/reflect/Method;", "getUsedBytesMethod", "()Ljava/lang/reflect/Method;", "usedBytesMethod$delegate", "canAdd", "", "bytes", "", "close", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collect", "record", "(Ljava/lang/Object;)V", "recordSupplier", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "", "(Lkotlin/jvm/functions/Function1;)V", "handleExceptionOnBatch", "throwable", "", "batch", "", "(Ljava/lang/Throwable;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "peek", "populateBatch", "", "prepareQueueFile", "pruneIfNeeded", "queueFilename", "", "remove", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "usedBytes", "", "validateConfiguration", "Companion", "Configuration", "Serializer", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class QueueFileCollector<T> implements Collector<T>, CoroutineScope {
    private static final Companion Companion = new Companion(null);
    private final Configuration configuration;
    private final CoroutineContext coroutineContext;
    private final CoroutineDispatcher dispatcher;

    /* JADX INFO: renamed from: file$delegate, reason: from kotlin metadata */
    private final Lazy file;
    private final LogWriter logWriter;
    private final LoggerExceptionListener loggerExceptionListener;
    private QueueFile queueFile;
    private final Serializer<T> serializer;

    /* JADX INFO: renamed from: usedBytesMethod$delegate, reason: from kotlin metadata */
    private final Lazy usedBytesMethod;

    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\bf\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00020\u0005H&¢\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00028\u0001H&¢\u0006\u0002\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;", "T", "", "fromBytes", "bytes", "", "([B)Ljava/lang/Object;", "toBytes", "record", "(Ljava/lang/Object;)[B", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Serializer<T> {
        T fromBytes(byte[] bytes);

        byte[] toBytes(T record);
    }

    public QueueFileCollector(Serializer<T> serializer, Configuration configuration, final dagger.Lazy<File> fileProvider, CoroutineDispatcher dispatcher, LoggerExceptionListener loggerExceptionListener, LogWriter logWriter) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(fileProvider, "fileProvider");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(loggerExceptionListener, "loggerExceptionListener");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        this.serializer = serializer;
        this.configuration = configuration;
        this.dispatcher = dispatcher;
        this.loggerExceptionListener = loggerExceptionListener;
        this.logWriter = logWriter;
        this.usedBytesMethod = LazyKt.lazy(new Function0<Method>(this) { // from class: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$usedBytesMethod$2
            final /* synthetic */ QueueFileCollector<T> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Method invoke() {
                Object objM817constructorimpl;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Method declaredMethod = QueueFile.class.getDeclaredMethod("usedBytes", new Class[0]);
                    declaredMethod.setAccessible(true);
                    objM817constructorimpl = Result.m817constructorimpl(declaredMethod);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
                }
                QueueFileCollector<T> queueFileCollector = this.this$0;
                Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
                if (thM820exceptionOrNullimpl != null) {
                    LogWriter logWriter2 = ((QueueFileCollector) queueFileCollector).logWriter;
                    String str = QueueFileCollectorKt.TAG;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    logWriter2.e(str, "Failed to lookup private QueueFile#usedBytes() API.", thM820exceptionOrNullimpl);
                    objM817constructorimpl = null;
                }
                return (Method) objM817constructorimpl;
            }
        });
        this.coroutineContext = SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(dispatcher);
        this.file = LazyKt.lazy(new Function0<File>() { // from class: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$file$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final File invoke() {
                return fileProvider.get();
            }
        });
        validateConfiguration();
        BuildersKt__Builders_commonKt.launch$default(this, dispatcher, null, new AnonymousClass1(this, null), 2, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public QueueFileCollector(Serializer<T> serializer, Configuration configuration, dagger.Lazy<File> file, LoggerExceptionListener loggerExceptionListener, LogWriter logWriter) {
        this(serializer, configuration, file, Companion.createDefaultTapeDispatcher(), loggerExceptionListener, logWriter);
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(loggerExceptionListener, "loggerExceptionListener");
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
    }

    private final Method getUsedBytesMethod() {
        return (Method) this.usedBytesMethod.getValue();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getFile() {
        return (File) this.file.getValue();
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$1, reason: invalid class name */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$1", f = "QueueFileCollector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ QueueFileCollector<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(QueueFileCollector<T> queueFileCollector, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = queueFileCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objM817constructorimpl;
            Object objM817constructorimpl2;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            QueueFileCollector<T> queueFileCollector = this.this$0;
            try {
                Result.Companion companion = Result.INSTANCE;
                File file = queueFileCollector.getFile();
                Intrinsics.checkNotNullExpressionValue(file, "access$getFile(...)");
                objM817constructorimpl = Result.m817constructorimpl(queueFileCollector.prepareQueueFile(file));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM817constructorimpl = Result.m817constructorimpl(ResultKt.createFailure(th));
            }
            QueueFileCollector<T> queueFileCollector2 = this.this$0;
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(objM817constructorimpl);
            if (thM820exceptionOrNullimpl != null) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    LogWriter logWriter = ((QueueFileCollector) queueFileCollector2).logWriter;
                    String str = QueueFileCollectorKt.TAG;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    logWriter.e(str, queueFileCollector2.getFile().getName() + " failed to restore, deleting:", thM820exceptionOrNullimpl);
                    queueFileCollector2.getFile().delete();
                    File file2 = queueFileCollector2.getFile();
                    Intrinsics.checkNotNullExpressionValue(file2, "access$getFile(...)");
                    objM817constructorimpl2 = Result.m817constructorimpl(queueFileCollector2.prepareQueueFile(file2));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM817constructorimpl2 = Result.m817constructorimpl(ResultKt.createFailure(th2));
                }
                objM817constructorimpl = objM817constructorimpl2;
            }
            ResultKt.throwOnFailure(objM817constructorimpl);
            ((QueueFileCollector) queueFileCollector).queueFile = (QueueFile) objM817constructorimpl;
            LogWriter logWriter2 = ((QueueFileCollector) this.this$0).logWriter;
            String str2 = QueueFileCollectorKt.TAG;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            StringBuilder sbAppend = new StringBuilder().append(this.this$0.getFile().getName()).append(" ready to use with ");
            QueueFile queueFile = ((QueueFileCollector) this.this$0).queueFile;
            if (queueFile == null) {
                Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                queueFile = null;
            }
            logWriter2.v(str2, sbAppend.append(queueFile.size()).append(" entries and ").append(this.this$0.usedBytes()).append(" bytes.").toString());
            return Unit.INSTANCE;
        }
    }

    private final void validateConfiguration() {
        if (this.configuration.getMaxBatchBytes() <= 0) {
            throw new IllegalArgumentException(("maxBatchBytes must be non-zero and positive: " + this.configuration.getMaxBatchBytes()).toString());
        }
        if (this.configuration.getMaxEntryBytes() <= 0) {
            throw new IllegalArgumentException(("maxEntryBytes must be non-zero and positive: " + this.configuration.getMaxEntryBytes()).toString());
        }
        if (this.configuration.getMaxFileBytes() <= 0) {
            throw new IllegalArgumentException(("maxFileBytes must be non-zero and positive: " + this.configuration.getMaxFileBytes()).toString());
        }
        if (this.configuration.getPruneFileBytes() <= 0) {
            throw new IllegalArgumentException(("pruneFileBytes must be non-zero and positive: " + this.configuration.getPruneFileBytes()).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final QueueFile prepareQueueFile(File file) throws IOException {
        QueueFile queueFileBuild = new QueueFile.Builder(file).zero(true).forceLegacy(false).build();
        Intrinsics.checkNotNullExpressionValue(queueFileBuild, "build(...)");
        return queueFileBuild;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$collect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "T"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$collect$1", f = "QueueFileCollector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02591 extends SuspendLambda implements Function1<Continuation<? super Result<? extends T>>, Object> {
        final /* synthetic */ T $record;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02591(T t, Continuation<? super C02591> continuation) {
            super(1, continuation);
            this.$record = t;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C02591(this.$record, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Result<? extends T>> continuation) {
            return ((C02591) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Result.Companion companion = Result.INSTANCE;
            return Result.m816boximpl(Result.m817constructorimpl(this.$record));
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Collector
    public void collect(T record) {
        collect((Function1) new C02591(record, null));
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$collect$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$collect$2", f = "QueueFileCollector.kt", i = {}, l = {WinError.ERROR_IS_JOINED}, m = "invokeSuspend", n = {}, s = {})
    static final class C02602 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super Result<? extends T>>, Object> $recordSupplier;
        int label;
        final /* synthetic */ QueueFileCollector<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02602(Function1<? super Continuation<? super Result<? extends T>>, ? extends Object> function1, QueueFileCollector<T> queueFileCollector, Continuation<? super C02602> continuation) {
            super(2, continuation);
            this.$recordSupplier = function1;
            this.this$0 = queueFileCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02602(this.$recordSupplier, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02602) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Continuation<? super Result<? extends T>>, Object> function1 = this.$recordSupplier;
                this.label = 1;
                obj = function1.invoke(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Object value = ((Result) obj).getValue();
            QueueFileCollector<T> queueFileCollector = this.this$0;
            Throwable thM820exceptionOrNullimpl = Result.m820exceptionOrNullimpl(value);
            if (thM820exceptionOrNullimpl == null) {
                byte[] bytes = ((QueueFileCollector) this.this$0).serializer.toBytes(value);
                QueueFile queueFile = null;
                if (!this.this$0.canAdd(bytes)) {
                    bytes = null;
                }
                if (bytes != null) {
                    QueueFile queueFile2 = ((QueueFileCollector) this.this$0).queueFile;
                    if (queueFile2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                    } else {
                        queueFile = queueFile2;
                    }
                    queueFile.add(bytes);
                }
                return Unit.INSTANCE;
            }
            LogWriter logWriter = ((QueueFileCollector) queueFileCollector).logWriter;
            String str = QueueFileCollectorKt.TAG;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            logWriter.w(str, queueFileCollector.queueFilename() + " dropping entry because the supplier returned a failure:", thM820exceptionOrNullimpl);
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Collector
    public void collect(Function1<? super Continuation<? super Result<? extends T>>, ? extends Object> recordSupplier) {
        Intrinsics.checkNotNullParameter(recordSupplier, "recordSupplier");
        BuildersKt__Builders_commonKt.launch$default(this, this.dispatcher, null, new C02602(recordSupplier, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean canAdd(byte[] bytes) {
        if (bytes.length > this.configuration.getMaxEntryBytes()) {
            LogWriter logWriter = this.logWriter;
            String str = QueueFileCollectorKt.TAG;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            logWriter.w(str, queueFilename() + " dropping entry of " + bytes.length + " bytes beyond max entry size of " + this.configuration.getMaxEntryBytes() + " bytes.");
            return false;
        }
        if (((long) bytes.length) + usedBytes() <= this.configuration.getMaxFileBytes()) {
            return true;
        }
        LogWriter logWriter2 = this.logWriter;
        String str2 = QueueFileCollectorKt.TAG;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        logWriter2.w(str2, queueFilename() + " dropping entry of " + bytes.length + " bytes beyond max file size of " + this.configuration.getMaxFileBytes() + " bytes.");
        return false;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$peek$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$peek$2", f = "QueueFileCollector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02612 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends T>>, Object> {
        int label;
        final /* synthetic */ QueueFileCollector<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02612(QueueFileCollector<T> queueFileCollector, Continuation<? super C02612> continuation) {
            super(2, continuation);
            this.this$0 = queueFileCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02612(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<? extends T>> continuation) {
            return ((C02612) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ArrayList arrayList = new ArrayList();
            QueueFile queueFile = null;
            try {
                this.this$0.populateBatch(arrayList);
                if (!arrayList.isEmpty()) {
                    LogWriter logWriter = ((QueueFileCollector) this.this$0).logWriter;
                    String str = QueueFileCollectorKt.TAG;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    logWriter.v(str, this.this$0.queueFilename() + " batch of size " + arrayList.size() + " generated.");
                }
                return arrayList;
            } catch (IOException e) {
                LogWriter logWriter2 = ((QueueFileCollector) this.this$0).logWriter;
                String str2 = QueueFileCollectorKt.TAG;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                logWriter2.e(str2, this.this$0.queueFilename() + " failed to read, file appears to be corrupt, dropping.", e);
                QueueFile queueFile2 = ((QueueFileCollector) this.this$0).queueFile;
                if (queueFile2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                } else {
                    queueFile = queueFile2;
                }
                queueFile.clear();
                return CollectionsKt.emptyList();
            } catch (OutOfMemoryError e2) {
                LogWriter logWriter3 = ((QueueFileCollector) this.this$0).logWriter;
                String str3 = QueueFileCollectorKt.TAG;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                logWriter3.e(str3, this.this$0.queueFilename() + " oom error, file appears to be corrupt, dropping.", e2);
                QueueFile queueFile3 = ((QueueFileCollector) this.this$0).queueFile;
                if (queueFile3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                } else {
                    queueFile = queueFile3;
                }
                queueFile.clear();
                ((QueueFileCollector) this.this$0).loggerExceptionListener.onFileOutOfMemoryError(this.this$0.queueFilename(), e2);
                return CollectionsKt.emptyList();
            }
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Collector
    public Object peek(Continuation<? super List<? extends T>> continuation) {
        return BuildersKt.withContext(this.dispatcher, new C02612(this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void populateBatch(List<T> batch) {
        QueueFile queueFile = this.queueFile;
        QueueFile queueFile2 = null;
        if (queueFile == null) {
            Intrinsics.throwUninitializedPropertyAccessException("queueFile");
            queueFile = null;
        }
        long length = 0;
        for (byte[] bArr : queueFile) {
            length += (long) bArr.length;
            if (length > this.configuration.getMaxBatchBytes()) {
                if (batch.isEmpty()) {
                    LogWriter logWriter = this.logWriter;
                    String str = QueueFileCollectorKt.TAG;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    logWriter.w(str, queueFilename() + " adding an entry to prevent starvation.");
                    Serializer<T> serializer = this.serializer;
                    Intrinsics.checkNotNull(bArr);
                    batch.add(serializer.fromBytes(bArr));
                }
                QueueFile queueFile3 = this.queueFile;
                if (queueFile3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                } else {
                    queueFile2 = queueFile3;
                }
                int size = queueFile2.size() - batch.size();
                LogWriter logWriter2 = this.logWriter;
                String str2 = QueueFileCollectorKt.TAG;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                logWriter2.w(str2, queueFilename() + " pruned " + size + " batch entries due to over sized batch. Batch Entries: " + batch.size() + " using " + length + " / " + this.configuration.getMaxBatchBytes());
                return;
            }
            Serializer<T> serializer2 = this.serializer;
            Intrinsics.checkNotNull(bArr);
            batch.add(serializer2.fromBytes(bArr));
        }
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$remove$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$remove$2", f = "QueueFileCollector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02632 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<T> $batch;
        int label;
        final /* synthetic */ QueueFileCollector<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02632(List<? extends T> list, QueueFileCollector<T> queueFileCollector, Continuation<? super C02632> continuation) {
            super(2, continuation);
            this.$batch = list;
            this.this$0 = queueFileCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02632(this.$batch, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02632) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            int size = this.$batch.size();
            QueueFile queueFile = ((QueueFileCollector) this.this$0).queueFile;
            QueueFile queueFile2 = null;
            if (queueFile == null) {
                Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                queueFile = null;
            }
            int iMin = Math.min(size, queueFile.size());
            if (iMin != this.$batch.size()) {
                LogWriter logWriter = ((QueueFileCollector) this.this$0).logWriter;
                String str = QueueFileCollectorKt.TAG;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                logWriter.e(str, this.this$0.queueFilename() + " trying to remove " + this.$batch.size() + " entries which is too many, removing " + iMin + " instead.");
            }
            QueueFile queueFile3 = ((QueueFileCollector) this.this$0).queueFile;
            if (queueFile3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("queueFile");
            } else {
                queueFile2 = queueFile3;
            }
            queueFile2.remove(iMin);
            LogWriter logWriter2 = ((QueueFileCollector) this.this$0).logWriter;
            String str2 = QueueFileCollectorKt.TAG;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            logWriter2.v(str2, this.this$0.queueFilename() + " removed " + iMin + " entries.");
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Collector
    public Object remove(List<? extends T> list, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.dispatcher, new C02632(list, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$pruneIfNeeded$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$pruneIfNeeded$2", f = "QueueFileCollector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02622 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ QueueFileCollector<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02622(QueueFileCollector<T> queueFileCollector, Continuation<? super C02622> continuation) {
            super(2, continuation);
            this.this$0 = queueFileCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02622(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02622) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            int i = 0;
            while (true) {
                QueueFile queueFile = ((QueueFileCollector) this.this$0).queueFile;
                QueueFile queueFile2 = null;
                if (queueFile == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                    queueFile = null;
                }
                if (queueFile.isEmpty() || this.this$0.usedBytes() <= ((QueueFileCollector) this.this$0).configuration.getPruneFileBytes()) {
                    break;
                }
                QueueFile queueFile3 = ((QueueFileCollector) this.this$0).queueFile;
                if (queueFile3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                } else {
                    queueFile2 = queueFile3;
                }
                queueFile2.remove();
                i++;
            }
            if (i > 0) {
                LogWriter logWriter = ((QueueFileCollector) this.this$0).logWriter;
                String str = QueueFileCollectorKt.TAG;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                logWriter.w(str, this.this$0.queueFilename() + " pruned " + i + " file entries due to over sized file.");
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Collector
    public Object pruneIfNeeded(Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.dispatcher, new C02622(this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    @Override // com.stripe.jvmcore.batchdispatcher.Collector
    public Object handleExceptionOnBatch(Throwable th, List<? extends T> list, Continuation<? super Unit> continuation) throws IOException {
        this.loggerExceptionListener.onDispatchExceptionError(queueFilename(), th, list.size());
        if (th instanceof OutOfMemoryError) {
            QueueFile queueFile = this.queueFile;
            if (queueFile == null) {
                Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                queueFile = null;
            }
            queueFile.clear();
            return Unit.INSTANCE;
        }
        Object objRemove = remove(list, continuation);
        return objRemove == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRemove : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$close$2, reason: invalid class name */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$close$2", f = "QueueFileCollector.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ QueueFileCollector<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(QueueFileCollector<T> queueFileCollector, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = queueFileCollector;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                QueueFile queueFile = ((QueueFileCollector) this.this$0).queueFile;
                if (queueFile == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("queueFile");
                    queueFile = null;
                }
                queueFile.close();
                LogWriter logWriter = ((QueueFileCollector) this.this$0).logWriter;
                String str = QueueFileCollectorKt.TAG;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                logWriter.v(str, this.this$0.queueFilename() + " closed.");
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final Object close(Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.dispatcher, new AnonymousClass2(this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long usedBytes() throws IllegalAccessException, InvocationTargetException {
        Method usedBytesMethod = getUsedBytesMethod();
        if (usedBytesMethod == null) {
            return 0L;
        }
        QueueFile queueFile = this.queueFile;
        if (queueFile == null) {
            Intrinsics.throwUninitializedPropertyAccessException("queueFile");
            queueFile = null;
        }
        Object objInvoke = usedBytesMethod.invoke(queueFile, new Object[0]);
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) objInvoke).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String queueFilename() {
        QueueFile queueFile = this.queueFile;
        if (queueFile == null) {
            Intrinsics.throwUninitializedPropertyAccessException("queueFile");
            queueFile = null;
        }
        String name = queueFile.file().getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002¨\u0006\u0005"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;", "", "()V", "createDefaultTapeDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CoroutineDispatcher createDefaultTapeDispatcher() {
            ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$Companion$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    return QueueFileCollector.Companion.createDefaultTapeDispatcher$lambda$1(runnable);
                }
            });
            Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
            return ExecutorsKt.from(executorServiceNewSingleThreadExecutor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Thread createDefaultTapeDispatcher$lambda$1(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setDaemon(true);
            threadNewThread.setName("stripe-terminal-tape-dispatcher");
            return threadNewThread;
        }
    }

    /* JADX INFO: compiled from: QueueFileCollector.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000  2\u00020\u0001:\u0001 B5\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÂ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÂ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÂ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÂ\u0003¢\u0006\u0002\u0010\u0013J>\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\nR\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\n¨\u0006!"}, d2 = {"Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;", "", "overrideMaxBatchBytes", "", "overrideMaxEntryBytes", "overrideMaxFileBytes", "overridePruneFileBytes", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "maxBatchBytes", "getMaxBatchBytes", "()J", "maxEntryBytes", "getMaxEntryBytes", "maxFileBytes", "getMaxFileBytes", "Ljava/lang/Long;", "pruneFileBytes", "getPruneFileBytes", "component1", "()Ljava/lang/Long;", "component2", "component3", "component4", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "batchdispatcher"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Configuration {
        private static final long DEFAULT_MAX_BATCH_BYTES = 3145728;
        public static final long DEFAULT_MAX_ENTRY_BYTES = 1048576;
        private static final long DEFAULT_MAX_FILE_BYTES = 33554432;
        private static final long DEFAULT_PRUNE_FILE_BYTES = 31457280;
        private final long maxBatchBytes;
        private final long maxEntryBytes;
        private final long maxFileBytes;
        private final Long overrideMaxBatchBytes;
        private final Long overrideMaxEntryBytes;
        private final Long overrideMaxFileBytes;
        private final Long overridePruneFileBytes;
        private final long pruneFileBytes;

        public Configuration() {
            this(null, null, null, null, 15, null);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        private final Long getOverrideMaxBatchBytes() {
            return this.overrideMaxBatchBytes;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        private final Long getOverrideMaxEntryBytes() {
            return this.overrideMaxEntryBytes;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        private final Long getOverrideMaxFileBytes() {
            return this.overrideMaxFileBytes;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        private final Long getOverridePruneFileBytes() {
            return this.overridePruneFileBytes;
        }

        public static /* synthetic */ Configuration copy$default(Configuration configuration, Long l, Long l2, Long l3, Long l4, int i, Object obj) {
            if ((i & 1) != 0) {
                l = configuration.overrideMaxBatchBytes;
            }
            if ((i & 2) != 0) {
                l2 = configuration.overrideMaxEntryBytes;
            }
            if ((i & 4) != 0) {
                l3 = configuration.overrideMaxFileBytes;
            }
            if ((i & 8) != 0) {
                l4 = configuration.overridePruneFileBytes;
            }
            return configuration.copy(l, l2, l3, l4);
        }

        public final Configuration copy(Long overrideMaxBatchBytes, Long overrideMaxEntryBytes, Long overrideMaxFileBytes, Long overridePruneFileBytes) {
            return new Configuration(overrideMaxBatchBytes, overrideMaxEntryBytes, overrideMaxFileBytes, overridePruneFileBytes);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Configuration)) {
                return false;
            }
            Configuration configuration = (Configuration) other;
            return Intrinsics.areEqual(this.overrideMaxBatchBytes, configuration.overrideMaxBatchBytes) && Intrinsics.areEqual(this.overrideMaxEntryBytes, configuration.overrideMaxEntryBytes) && Intrinsics.areEqual(this.overrideMaxFileBytes, configuration.overrideMaxFileBytes) && Intrinsics.areEqual(this.overridePruneFileBytes, configuration.overridePruneFileBytes);
        }

        public int hashCode() {
            Long l = this.overrideMaxBatchBytes;
            int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
            Long l2 = this.overrideMaxEntryBytes;
            int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
            Long l3 = this.overrideMaxFileBytes;
            int iHashCode3 = (iHashCode2 + (l3 == null ? 0 : l3.hashCode())) * 31;
            Long l4 = this.overridePruneFileBytes;
            return iHashCode3 + (l4 != null ? l4.hashCode() : 0);
        }

        public String toString() {
            return "Configuration(overrideMaxBatchBytes=" + this.overrideMaxBatchBytes + ", overrideMaxEntryBytes=" + this.overrideMaxEntryBytes + ", overrideMaxFileBytes=" + this.overrideMaxFileBytes + ", overridePruneFileBytes=" + this.overridePruneFileBytes + ')';
        }

        public Configuration(Long l, Long l2, Long l3, Long l4) {
            this.overrideMaxBatchBytes = l;
            this.overrideMaxEntryBytes = l2;
            this.overrideMaxFileBytes = l3;
            this.overridePruneFileBytes = l4;
            this.maxBatchBytes = l != null ? l.longValue() : DEFAULT_MAX_BATCH_BYTES;
            this.maxEntryBytes = l2 != null ? l2.longValue() : DEFAULT_MAX_ENTRY_BYTES;
            this.maxFileBytes = l3 != null ? l3.longValue() : DEFAULT_MAX_FILE_BYTES;
            this.pruneFileBytes = l4 != null ? l4.longValue() : DEFAULT_PRUNE_FILE_BYTES;
        }

        public /* synthetic */ Configuration(Long l, Long l2, Long l3, Long l4, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : l, (i & 2) != 0 ? null : l2, (i & 4) != 0 ? null : l3, (i & 8) != 0 ? null : l4);
        }

        public final long getMaxBatchBytes() {
            return this.maxBatchBytes;
        }

        public final long getMaxEntryBytes() {
            return this.maxEntryBytes;
        }

        public final long getMaxFileBytes() {
            return this.maxFileBytes;
        }

        public final long getPruneFileBytes() {
            return this.pruneFileBytes;
        }
    }
}
