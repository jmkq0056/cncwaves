package com.stripe.core.aidlrpcclient;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.stripe.core.aidlrpc.AidlRpc;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AidlServiceConnection.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 &2\u00020\u0001:\u0001&B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\b\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018J\u0012\u0010\u001d\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010 \u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0018\u0010!\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010%\u001a\u00020\u001bR(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\r8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0019R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;", "Landroid/content/ServiceConnection;", "connectionListener", "Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;", "connectionOwner", "", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "value", "Lcom/stripe/core/aidlrpc/AidlRpc;", "aidlService", "getAidlService$aidlrpcclient_release", "()Lcom/stripe/core/aidlrpc/AidlRpc;", "setAidlService$aidlrpcclient_release", "(Lcom/stripe/core/aidlrpc/AidlRpc;)V", "aidlServiceFlow", "Lkotlinx/coroutines/flow/StateFlow;", "aidlServiceMutableFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "isServiceConnected", "", "()Z", "disconnectFromService", "", "unexpected", "onBindingDied", "componentName", "Landroid/content/ComponentName;", "onNullBinding", "onServiceConnected", NotificationCompat.CATEGORY_SERVICE, "Landroid/os/IBinder;", "onServiceDisconnected", "waitForServiceConnected", "Companion", "aidlrpcclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AidlServiceConnection implements ServiceConnection {
    private static final long CONNECTION_TIMEOUT_MS = 60000;
    private final StateFlow<AidlRpc> aidlServiceFlow;
    private final MutableStateFlow<AidlRpc> aidlServiceMutableFlow;
    private final AidlConnectionListener connectionListener;
    private final String connectionOwner;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public AidlServiceConnection(AidlConnectionListener connectionListener, String connectionOwner, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        Intrinsics.checkNotNullParameter(connectionOwner, "connectionOwner");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.connectionListener = connectionListener;
        this.connectionOwner = connectionOwner;
        this.logger = logger;
        MutableStateFlow<AidlRpc> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this.aidlServiceMutableFlow = MutableStateFlow;
        this.aidlServiceFlow = MutableStateFlow;
    }

    public /* synthetic */ AidlServiceConnection(AidlConnectionListener aidlConnectionListener, String str, Log log, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aidlConnectionListener, str, (i & 4) != 0 ? Log.INSTANCE.getLogger(AidlServiceConnection.class) : log);
    }

    public final AidlRpc getAidlService$aidlrpcclient_release() {
        return this.aidlServiceFlow.getValue();
    }

    public final void setAidlService$aidlrpcclient_release(AidlRpc aidlRpc) {
        this.aidlServiceMutableFlow.setValue(aidlRpc);
    }

    public final boolean isServiceConnected() {
        return getAidlService$aidlrpcclient_release() != null;
    }

    /* JADX INFO: renamed from: com.stripe.core.aidlrpcclient.AidlServiceConnection$waitForServiceConnected$1, reason: invalid class name */
    /* JADX INFO: compiled from: AidlServiceConnection.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/core/aidlrpc/AidlRpc;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.aidlrpcclient.AidlServiceConnection$waitForServiceConnected$1", f = "AidlServiceConnection.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AidlRpc>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AidlServiceConnection.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AidlRpc> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
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
            this.label = 1;
            Object objWithTimeout = TimeoutKt.withTimeout(60000L, new C00471(AidlServiceConnection.this, null), this);
            return objWithTimeout == coroutine_suspended ? coroutine_suspended : objWithTimeout;
        }

        /* JADX INFO: renamed from: com.stripe.core.aidlrpcclient.AidlServiceConnection$waitForServiceConnected$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: AidlServiceConnection.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/core/aidlrpc/AidlRpc;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        @DebugMetadata(c = "com.stripe.core.aidlrpcclient.AidlServiceConnection$waitForServiceConnected$1$1", f = "AidlServiceConnection.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
        static final class C00471 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AidlRpc>, Object> {
            int label;
            final /* synthetic */ AidlServiceConnection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00471(AidlServiceConnection aidlServiceConnection, Continuation<? super C00471> continuation) {
                super(2, continuation);
                this.this$0 = aidlServiceConnection;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00471(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AidlRpc> continuation) {
                return ((C00471) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
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
                this.label = 1;
                Object objFirst = FlowKt.first(FlowKt.filterNotNull(this.this$0.aidlServiceFlow), this);
                return objFirst == coroutine_suspended ? coroutine_suspended : objFirst;
            }
        }
    }

    public final void waitForServiceConnected() throws InterruptedException {
        if (getAidlService$aidlrpcclient_release() == null) {
            BuildersKt__BuildersKt.runBlocking$default(null, new AnonymousClass1(null), 1, null);
        }
    }

    public final void disconnectFromService(boolean unexpected) {
        this.logger.d("disconnectFromService()", TuplesKt.to("connectionOwner", this.connectionOwner), TuplesKt.to("unexpected", Boolean.valueOf(unexpected)));
        setAidlService$aidlrpcclient_release(null);
        this.connectionListener.onDisconnect(unexpected);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder service) {
        Intrinsics.checkNotNullParameter(componentName, "componentName");
        Intrinsics.checkNotNullParameter(service, "service");
        this.logger.d("onServiceConnected()", TuplesKt.to("connectionOwner", this.connectionOwner), TuplesKt.to("componentName", componentName));
        setAidlService$aidlrpcclient_release(AidlRpc.Stub.asInterface(service));
        this.connectionListener.onConnect();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        Intrinsics.checkNotNullParameter(componentName, "componentName");
        this.logger.w("onServiceDisconnected()", TuplesKt.to("connectionOwner", this.connectionOwner), TuplesKt.to("componentName", componentName));
        disconnectFromService(true);
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        super.onBindingDied(componentName);
        this.logger.d("onBindingDied()", TuplesKt.to("connectionOwner", this.connectionOwner), TuplesKt.to("componentName", componentName));
    }

    @Override // android.content.ServiceConnection
    public void onNullBinding(ComponentName componentName) {
        super.onNullBinding(componentName);
        this.logger.d("onNullBinding()", TuplesKt.to("connectionOwner", this.connectionOwner), TuplesKt.to("componentName", componentName));
    }
}
