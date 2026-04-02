package com.stripe.stripeterminal.internal.common.callable;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.log.Log;
import com.stripe.jvmcore.offlinemode.callable.OfflineStatusChangeListener;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import com.stripe.stripeterminal.external.models.OfflineStatus;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.full.KClasses;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: ProxyOfflineListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001%B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J!\u0010\u001f\u001a\u00020\u00132\u0017\u0010 \u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00130!¢\u0006\u0002\b\"H\u0002J\u000e\u0010#\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0001J\u000e\u0010$\u001a\u00020\u0007*\u0004\u0018\u00010\u0001H\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\n¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u000bR(\u0010\u0003\u001a\u0004\u0018\u00010\u00012\b\u0010\f\u001a\u0004\u0018\u00010\u0001@CX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0004R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\n¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000b¨\u0006&"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V", "_isListenerSetFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "_listenerHasSetupIntentCallbackFlow", "isListenerSetFlow", "Lkotlinx/coroutines/flow/StateFlow;", "()Lkotlinx/coroutines/flow/StateFlow;", "value", "getListener", "()Lcom/stripe/stripeterminal/external/callable/OfflineListener;", "setOfflineListener", "listenerHasSetupIntentCallbackFlow", "getListenerHasSetupIntentCallbackFlow", "onForwardingFailure", "", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onOfflineStatusChange", "offlineStatus", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "onPaymentIntentForwarded", "paymentIntent", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", ProxyOfflineListener.SETUP_INTENT_CALLBACK_NAME, "setupIntent", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "safelyCall", FirebaseAnalytics.Param.METHOD, "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "setListener", "verifySetupIntentCallbacksOnOfflineListener", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyOfflineListener implements OfflineListener, OfflineStatusChangeListener {
    private static final Log LOGGER = Log.INSTANCE.getLogger(ProxyOfflineListener.class);
    private static final String SETUP_INTENT_CALLBACK_NAME = "onSetupIntentForwarded";
    private final MutableStateFlow<Boolean> _isListenerSetFlow;
    private final MutableStateFlow<Boolean> _listenerHasSetupIntentCallbackFlow;
    private final StateFlow<Boolean> isListenerSetFlow;
    private OfflineListener listener;
    private final StateFlow<Boolean> listenerHasSetupIntentCallbackFlow;

    public ProxyOfflineListener(OfflineListener offlineListener) {
        MutableStateFlow<Boolean> MutableStateFlow = StateFlowKt.MutableStateFlow(Boolean.valueOf(offlineListener != null));
        this._isListenerSetFlow = MutableStateFlow;
        MutableStateFlow<Boolean> MutableStateFlow2 = StateFlowKt.MutableStateFlow(Boolean.valueOf(verifySetupIntentCallbacksOnOfflineListener(offlineListener)));
        this._listenerHasSetupIntentCallbackFlow = MutableStateFlow2;
        this.listener = offlineListener;
        this.isListenerSetFlow = MutableStateFlow;
        this.listenerHasSetupIntentCallbackFlow = MutableStateFlow2;
    }

    public final OfflineListener getListener() {
        return this.listener;
    }

    private final void setOfflineListener(OfflineListener offlineListener) {
        this.listener = offlineListener;
        this._isListenerSetFlow.setValue(Boolean.valueOf(offlineListener != null));
        this._listenerHasSetupIntentCallbackFlow.setValue(Boolean.valueOf(verifySetupIntentCallbacksOnOfflineListener(offlineListener)));
    }

    public final void setListener(OfflineListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        setOfflineListener(listener);
    }

    public final StateFlow<Boolean> isListenerSetFlow() {
        return this.isListenerSetFlow;
    }

    public final StateFlow<Boolean> getListenerHasSetupIntentCallbackFlow() {
        return this.listenerHasSetupIntentCallbackFlow;
    }

    @Override // com.stripe.stripeterminal.external.callable.OfflineListener, com.stripe.jvmcore.offlinemode.callable.OfflineStatusChangeListener
    public void onOfflineStatusChange(final OfflineStatus offlineStatus) {
        Intrinsics.checkNotNullParameter(offlineStatus, "offlineStatus");
        safelyCall(new Function1<OfflineListener, Unit>() { // from class: com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener.onOfflineStatusChange.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(OfflineListener offlineListener) {
                invoke2(offlineListener);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OfflineListener safelyCall) {
                Intrinsics.checkNotNullParameter(safelyCall, "$this$safelyCall");
                safelyCall.onOfflineStatusChange(offlineStatus);
            }
        });
    }

    @Override // com.stripe.stripeterminal.external.callable.OfflineListener
    public void onForwardingFailure(final TerminalException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        safelyCall(new Function1<OfflineListener, Unit>() { // from class: com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener.onForwardingFailure.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(OfflineListener offlineListener) {
                invoke2(offlineListener);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OfflineListener safelyCall) {
                Intrinsics.checkNotNullParameter(safelyCall, "$this$safelyCall");
                safelyCall.onForwardingFailure(e);
            }
        });
    }

    @Override // com.stripe.stripeterminal.external.callable.OfflineListener
    public void onPaymentIntentForwarded(final PaymentIntent paymentIntent, final TerminalException e) {
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        safelyCall(new Function1<OfflineListener, Unit>() { // from class: com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener.onPaymentIntentForwarded.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(OfflineListener offlineListener) {
                invoke2(offlineListener);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OfflineListener safelyCall) {
                Intrinsics.checkNotNullParameter(safelyCall, "$this$safelyCall");
                safelyCall.onPaymentIntentForwarded(paymentIntent, e);
            }
        });
    }

    @Override // com.stripe.stripeterminal.external.callable.OfflineListener
    public void onSetupIntentForwarded(final SetupIntent setupIntent, final TerminalException e) {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        safelyCall(new Function1<OfflineListener, Unit>() { // from class: com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener.onSetupIntentForwarded.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(OfflineListener offlineListener) throws TerminalException {
                invoke2(offlineListener);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OfflineListener safelyCall) throws TerminalException {
                Intrinsics.checkNotNullParameter(safelyCall, "$this$safelyCall");
                safelyCall.onSetupIntentForwarded(setupIntent, e);
            }
        });
    }

    private final void safelyCall(Function1<? super OfflineListener, Unit> method) {
        OfflineListener offlineListener = this.listener;
        if (offlineListener != null) {
            try {
                Log log = LOGGER;
                Method enclosingMethod = method.getClass().getEnclosingMethod();
                log.d(enclosingMethod != null ? enclosingMethod.getName() : null, new Pair[0]);
                method.invoke(offlineListener);
            } catch (Exception unused) {
                Log log2 = LOGGER;
                StringBuilder sb = new StringBuilder("Unexpected failure in OfflineListener::");
                Method enclosingMethod2 = method.getClass().getEnclosingMethod();
                log2.e(sb.append(enclosingMethod2 != null ? enclosingMethod2.getName() : null).toString(), new Pair[0]);
            }
        }
    }

    private final boolean verifySetupIntentCallbacksOnOfflineListener(OfflineListener offlineListener) {
        if (offlineListener != null) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(Reflection.getOrCreateKotlinClass(offlineListener.getClass()));
            while (!linkedList.isEmpty()) {
                KClass kClass = (KClass) linkedList.poll();
                if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(OfflineListener.class))) {
                    return false;
                }
                Intrinsics.checkNotNull(kClass);
                Collection<KFunction<?>> declaredFunctions = KClasses.getDeclaredFunctions(kClass);
                if (!(declaredFunctions instanceof Collection) || !declaredFunctions.isEmpty()) {
                    Iterator<T> it = declaredFunctions.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.areEqual(((KFunction) it.next()).getName(), SETUP_INTENT_CALLBACK_NAME)) {
                            return true;
                        }
                    }
                }
                linkedList.addAll(KClasses.getSuperclasses(kClass));
            }
        }
        return false;
    }
}
