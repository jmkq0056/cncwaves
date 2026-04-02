package com.stripe.stripeterminal.internal.common.remotereadercontrollers;

import com.squareup.wire.Message;
import com.stripe.jvmcore.crpcclient.CrpcResponse;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.sun.jna.Callback;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: AsyncQueryJob.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u0000 \"*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002*\u0012\b\u0001\u0010\u0003*\f\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\b\u00030\u0002*\u0012\b\u0002\u0010\u0004*\f\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\b\u00030\u0002*\u0012\b\u0003\u0010\u0005*\f\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\b\u00030\u0002*\u0004\b\u0004\u0010\u00062\u00020\u0007:\u0002\"#B=\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0002\u0010\u0011J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018H$J\u001b\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00040\u001a2\u0006\u0010\u001b\u001a\u00028\u0003H$¢\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00028\u0004H\u0082@¢\u0006\u0002\u0010 J\u000e\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00030\u0018H$R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013j\u0002`\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;", "JobRequest", "Lcom/squareup/wire/Message;", "JobResponse", "QueryRequest", "QueryResponse", "CallbackType", "", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", Callback.METHOD_NAME, "Lkotlin/Function1;", "", "onFailure", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "executeJobRequest", "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;", "getQueryResult", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "queryResponse", "(Lcom/squareup/wire/Message;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "launch", "Lkotlinx/coroutines/Job;", "makeJobRequest", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queryJobRequest", "Companion", "QueryResult", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class AsyncQueryJob<JobRequest extends Message<JobRequest, ?>, JobResponse extends Message<JobResponse, ?>, QueryRequest extends Message<QueryRequest, ?>, QueryResponse extends Message<QueryResponse, ?>, CallbackType> {
    private static final long QUERY_INTERVAL_MS = 250;
    private final Function1<CallbackType, Unit> callback;
    private final CoroutineScope coroutineScope;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final Function1<TerminalException, Unit> onFailure;

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$makeJobRequest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AsyncQueryJob.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob", f = "AsyncQueryJob.kt", i = {0}, l = {294}, m = "makeJobRequest", n = {"this"}, s = {"L$0"})
    static final class C03981 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AsyncQueryJob<JobRequest, JobResponse, QueryRequest, QueryResponse, CallbackType> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03981(AsyncQueryJob<JobRequest, JobResponse, QueryRequest, QueryResponse, CallbackType> asyncQueryJob, Continuation<? super C03981> continuation) {
            super(continuation);
            this.this$0 = asyncQueryJob;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.makeJobRequest(this);
        }
    }

    protected abstract CrpcResponse<JobResponse> executeJobRequest();

    protected abstract QueryResult<CallbackType> getQueryResult(QueryResponse queryResponse);

    protected abstract CrpcResponse<QueryResponse> queryJobRequest();

    /* JADX WARN: Multi-variable type inference failed */
    public AsyncQueryJob(CoroutineScope coroutineScope, LoggerFactory loggerFactory, Function1<? super CallbackType, Unit> callback, Function1<? super TerminalException, Unit> onFailure) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(onFailure, "onFailure");
        this.coroutineScope = coroutineScope;
        this.callback = callback;
        this.onFailure = onFailure;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(AsyncQueryJob.class));
    }

    /* JADX INFO: compiled from: AsyncQueryJob.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0005\u0010\u00012\u00020\u0002:\u0004\u0004\u0005\u0006\u0007B\u0007\b\u0004¢\u0006\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "CallbackType", "", "()V", "QueryResultCanceled", "QueryResultError", "QueryResultPending", "QueryResultSucceeded", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultError;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class QueryResult<CallbackType> {
        public /* synthetic */ QueryResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: AsyncQueryJob.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0006\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;", "CallbackType", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "()V", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class QueryResultCanceled<CallbackType> extends QueryResult<CallbackType> {
            public QueryResultCanceled() {
                super(null);
            }
        }

        private QueryResult() {
        }

        /* JADX INFO: compiled from: AsyncQueryJob.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0006\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;", "CallbackType", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "()V", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class QueryResultPending<CallbackType> extends QueryResult<CallbackType> {
            public QueryResultPending() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: AsyncQueryJob.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0006\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0006¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00028\u0006HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00060\u00002\b\b\u0002\u0010\u0003\u001a\u00028\u0006HÆ\u0001¢\u0006\u0002\u0010\nJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0013\u0010\u0003\u001a\u00028\u0006¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0013"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;", "CallbackType", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "data", "(Ljava/lang/Object;)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;", "equals", "", "other", "", "hashCode", "", "toString", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class QueryResultSucceeded<CallbackType> extends QueryResult<CallbackType> {
            private final CallbackType data;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ QueryResultSucceeded copy$default(QueryResultSucceeded queryResultSucceeded, Object obj, int i, Object obj2) {
                if ((i & 1) != 0) {
                    obj = queryResultSucceeded.data;
                }
                return queryResultSucceeded.copy(obj);
            }

            public final CallbackType component1() {
                return this.data;
            }

            public final QueryResultSucceeded<CallbackType> copy(CallbackType data) {
                return new QueryResultSucceeded<>(data);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof QueryResultSucceeded) && Intrinsics.areEqual(this.data, ((QueryResultSucceeded) other).data);
            }

            public int hashCode() {
                CallbackType callbacktype = this.data;
                if (callbacktype == null) {
                    return 0;
                }
                return callbacktype.hashCode();
            }

            public String toString() {
                return "QueryResultSucceeded(data=" + this.data + ')';
            }

            public QueryResultSucceeded(CallbackType callbacktype) {
                super(null);
                this.data = callbacktype;
            }

            public final CallbackType getData() {
                return this.data;
            }
        }

        /* JADX INFO: compiled from: AsyncQueryJob.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0006\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultError;", "CallbackType", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;", "error", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "(Lcom/stripe/stripeterminal/external/models/TerminalException;)V", "getError", "()Lcom/stripe/stripeterminal/external/models/TerminalException;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class QueryResultError<CallbackType> extends QueryResult<CallbackType> {
            private final TerminalException error;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public QueryResultError(TerminalException error) {
                super(null);
                Intrinsics.checkNotNullParameter(error, "error");
                this.error = error;
            }

            public final TerminalException getError() {
                return this.error;
            }
        }
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$launch$1, reason: invalid class name */
    /* JADX INFO: compiled from: AsyncQueryJob.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0012\b\u0000\u0010\u0002*\f\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\b\u00030\u0003\"\u0012\b\u0001\u0010\u0004*\f\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\b\u00030\u0003\"\u0012\b\u0002\u0010\u0005*\f\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\b\u00030\u0003\"\u0012\b\u0003\u0010\u0006*\f\u0012\u0004\u0012\u0002H\u0006\u0012\u0002\b\u00030\u0003\"\u0004\b\u0004\u0010\u0007*\u00020\bH\u008a@"}, d2 = {"<anonymous>", "", "JobRequest", "Lcom/squareup/wire/Message;", "JobResponse", "QueryRequest", "QueryResponse", "CallbackType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$launch$1", f = "AsyncQueryJob.kt", i = {}, l = {243}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ AsyncQueryJob<JobRequest, JobResponse, QueryRequest, QueryResponse, CallbackType> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AsyncQueryJob<JobRequest, JobResponse, QueryRequest, QueryResponse, CallbackType> asyncQueryJob, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = asyncQueryJob;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function1 function1;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function1 function12 = ((AsyncQueryJob) this.this$0).callback;
                    this.L$0 = function12;
                    this.label = 1;
                    Object objMakeJobRequest = this.this$0.makeJobRequest(this);
                    if (objMakeJobRequest == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    function1 = function12;
                    obj = objMakeJobRequest;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    function1 = (Function1) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                function1.invoke(obj);
            } catch (TerminalException e) {
                ((AsyncQueryJob) this.this$0).onFailure.invoke(e);
            } catch (CancellationException e2) {
                ((AsyncQueryJob) this.this$0).onFailure.invoke(new TerminalException(TerminalErrorCode.CANCELED, "Job was canceled", e2, null, 8, null));
            } catch (Throwable th) {
                ((AsyncQueryJob) this.this$0).onFailure.invoke(new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Unexpected SDK error", th, null, 8, null));
            }
            return Unit.INSTANCE;
        }
    }

    public final Job launch() {
        return BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new AnonymousClass1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object makeJobRequest(kotlin.coroutines.Continuation<? super CallbackType> r8) throws com.stripe.stripeterminal.external.models.TerminalException {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.C03981
            if (r0 == 0) goto L14
            r0 = r8
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$makeJobRequest$1 r0 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.C03981) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$makeJobRequest$1 r0 = new com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$makeJobRequest$1
            r0.<init>(r7, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r2 = r0.L$0
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob r2 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4d
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L36:
            kotlin.ResultKt.throwOnFailure(r8)
            com.stripe.jvmcore.logging.terminal.log.SimpleLogger<com.stripe.loggingmodels.ApplicationTrace, com.stripe.loggingmodels.ApplicationTraceResult> r8 = r7.logger
            r2 = 0
            kotlin.Pair[] r2 = new kotlin.Pair[r2]
            java.lang.String r4 = "makeJobRequest"
            r8.d(r4, r2)
            com.stripe.jvmcore.crpcclient.CrpcResponse r8 = r7.executeJobRequest()
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.CrpcResponseExtensions r2 = com.stripe.stripeterminal.internal.common.remotereadercontrollers.CrpcResponseExtensions.INSTANCE
            r2.withJackrabbitResponse(r8)
            r2 = r7
        L4d:
            com.stripe.jvmcore.crpcclient.CrpcResponse r8 = r2.queryJobRequest()
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.CrpcResponseExtensions r4 = com.stripe.stripeterminal.internal.common.remotereadercontrollers.CrpcResponseExtensions.INSTANCE
            com.squareup.wire.Message r8 = r4.withJackrabbitResponse(r8)
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$QueryResult r8 = r2.getQueryResult(r8)
            boolean r4 = r8 instanceof com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.QueryResult.QueryResultSucceeded
            if (r4 == 0) goto L66
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$QueryResult$QueryResultSucceeded r8 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.QueryResult.QueryResultSucceeded) r8
            java.lang.Object r8 = r8.getData()
            return r8
        L66:
            boolean r4 = r8 instanceof com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.QueryResult.QueryResultCanceled
            if (r4 != 0) goto L86
            boolean r4 = r8 instanceof com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.QueryResult.QueryResultError
            if (r4 != 0) goto L7f
            boolean r8 = r8 instanceof com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.QueryResult.QueryResultPending
            if (r8 == 0) goto L4d
            r0.L$0 = r2
            r0.label = r3
            r4 = 250(0xfa, double:1.235E-321)
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r4, r0)
            if (r8 != r1) goto L4d
            return r1
        L7f:
            com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$QueryResult$QueryResultError r8 = (com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.QueryResult.QueryResultError) r8
            com.stripe.stripeterminal.external.models.TerminalException r8 = r8.getError()
            throw r8
        L86:
            com.stripe.stripeterminal.external.models.TerminalException r0 = new com.stripe.stripeterminal.external.models.TerminalException
            com.stripe.stripeterminal.external.models.TerminalErrorCode r1 = com.stripe.stripeterminal.external.models.TerminalErrorCode.CANCELED
            r5 = 12
            r6 = 0
            java.lang.String r2 = "Job was canceled"
            r3 = 0
            r4 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob.makeJobRequest(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
