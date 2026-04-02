package com.stripe.core.connectivity.cellular;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.stripe.core.connectivity.Connection;
import com.stripe.core.connectivity.LinkPropertiesKt;
import com.stripe.core.connectivity.NetworkCallback;
import com.stripe.core.connectivity.NetworkLinkProperties;
import com.stripe.jvmcore.dagger.AppScope;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: CellularNetworkCallback.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000f\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010 \u001a\u00020\u0018H\u0016J\b\u0010!\u001a\u00020\u0018H\u0002J\b\u0010\"\u001a\u00020\u0018H\u0003J\u0014\u0010#\u001a\u00020\u00182\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0010H\u0002R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000b0\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;", "Lcom/stripe/core/connectivity/NetworkCallback;", "Lcom/stripe/core/connectivity/Connection$Type$Cellular;", "Landroid/net/ConnectivityManager$NetworkCallback;", "telephonyManager", "Landroid/telephony/TelephonyManager;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroid/telephony/TelephonyManager;Lkotlinx/coroutines/CoroutineScope;)V", "_connectionFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/core/connectivity/Connection;", "_linkProperties", "Lcom/stripe/core/connectivity/NetworkLinkProperties;", "cellularStrengthJob", "Ljava/util/concurrent/atomic/AtomicReference;", "Lkotlinx/coroutines/Job;", "connectionFlow", "Lkotlinx/coroutines/flow/StateFlow;", "getConnectionFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "linkProperties", "getLinkProperties", "cancelCellularStrengthJob", "", "()Lkotlin/Unit;", "onAvailable", "network", "Landroid/net/Network;", "onLinkPropertiesChanged", "Landroid/net/LinkProperties;", "onLost", "onUnavailable", "startCellularStrengthJob", "updateCellularConnectionFlow", "updateCellularStrengthJob", "newJob", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CellularNetworkCallback extends ConnectivityManager.NetworkCallback implements NetworkCallback<Connection.Type.Cellular> {
    private final MutableStateFlow<Connection<Connection.Type.Cellular>> _connectionFlow;
    private final MutableStateFlow<NetworkLinkProperties> _linkProperties;
    private final CoroutineScope appScope;
    private final AtomicReference<Job> cellularStrengthJob;
    private final StateFlow<Connection<Connection.Type.Cellular>> connectionFlow;
    private final StateFlow<NetworkLinkProperties> linkProperties;
    private final TelephonyManager telephonyManager;

    public CellularNetworkCallback(TelephonyManager telephonyManager, @AppScope CoroutineScope appScope) {
        Intrinsics.checkNotNullParameter(telephonyManager, "telephonyManager");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        this.telephonyManager = telephonyManager;
        this.appScope = appScope;
        MutableStateFlow<NetworkLinkProperties> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._linkProperties = MutableStateFlow;
        this.linkProperties = FlowKt.asStateFlow(MutableStateFlow);
        Connection.Unknown.Companion companion = Connection.Unknown.INSTANCE;
        MutableStateFlow<Connection<Connection.Type.Cellular>> MutableStateFlow2 = StateFlowKt.MutableStateFlow(new Connection.Unknown(Reflection.getOrCreateKotlinClass(Connection.Type.Cellular.class)));
        this._connectionFlow = MutableStateFlow2;
        this.connectionFlow = FlowKt.asStateFlow(MutableStateFlow2);
        this.cellularStrengthJob = new AtomicReference<>(null);
    }

    @Override // com.stripe.core.connectivity.NetworkCallback
    public StateFlow<NetworkLinkProperties> getLinkProperties() {
        return this.linkProperties;
    }

    @Override // com.stripe.core.connectivity.NetworkCallback
    public StateFlow<Connection<Connection.Type.Cellular>> getConnectionFlow() {
        return this.connectionFlow;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        startCellularStrengthJob();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onUnavailable() {
        updateCellularConnectionFlow();
        cancelCellularStrengthJob();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(linkProperties, "linkProperties");
        this._linkProperties.setValue(LinkPropertiesKt.toNetworkLinkProperties(linkProperties));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        updateCellularConnectionFlow();
        cancelCellularStrengthJob();
        this._linkProperties.setValue(null);
    }

    private final Unit cancelCellularStrengthJob() {
        Job andSet = this.cellularStrengthJob.getAndSet(null);
        if (andSet == null) {
            return null;
        }
        Job.DefaultImpls.cancel$default(andSet, (CancellationException) null, 1, (Object) null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.stripe.core.connectivity.cellular.CellularNetworkCallback$startCellularStrengthJob$1, reason: invalid class name */
    /* JADX INFO: compiled from: CellularNetworkCallback.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.core.connectivity.cellular.CellularNetworkCallback$startCellularStrengthJob$1", f = "CellularNetworkCallback.kt", i = {0}, l = {65}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = CellularNetworkCallback.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                coroutineScope = (CoroutineScope) this.L$0;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            while (CoroutineScopeKt.isActive(coroutineScope)) {
                CellularNetworkCallback.this.updateCellularConnectionFlow();
                this.L$0 = coroutineScope;
                this.label = 1;
                if (DelayKt.m2320delayVtjQ1oo(NetworkCallback.INSTANCE.m457getSIGNAL_INTERVALUwyO8pc(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    private final void startCellularStrengthJob() {
        updateCellularStrengthJob(null);
        updateCellularStrengthJob(BuildersKt__Builders_commonKt.launch$default(this.appScope, null, null, new AnonymousClass1(null), 3, null));
    }

    static /* synthetic */ void updateCellularStrengthJob$default(CellularNetworkCallback cellularNetworkCallback, Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        cellularNetworkCallback.updateCellularStrengthJob(job);
    }

    private final void updateCellularStrengthJob(Job newJob) {
        Job andSet = this.cellularStrengthJob.getAndSet(newJob);
        if (andSet != null) {
            Job.DefaultImpls.cancel$default(andSet, (CancellationException) null, 1, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCellularConnectionFlow() {
        Connection.Disconnected disconnected;
        SignalStrength signalStrength;
        MutableStateFlow<Connection<Connection.Type.Cellular>> mutableStateFlow = this._connectionFlow;
        if (this.telephonyManager.getSimState() == 5 && (signalStrength = this.telephonyManager.getSignalStrength()) != null) {
            disconnected = new Connection.Connected(new Connection.Type.Cellular(signalStrength.getLevel()));
        } else {
            Connection.Disconnected.Companion companion = Connection.Disconnected.INSTANCE;
            disconnected = new Connection.Disconnected(Reflection.getOrCreateKotlinClass(Connection.Type.Cellular.class));
        }
        mutableStateFlow.setValue(disconnected);
    }
}
