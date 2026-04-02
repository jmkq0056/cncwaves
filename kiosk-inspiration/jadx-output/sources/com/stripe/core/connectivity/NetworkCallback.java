package com.stripe.core.connectivity;

import com.stripe.core.connectivity.Connection;
import com.stripe.core.connectivity.Connection.Type;
import kotlin.Metadata;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: NetworkCallback.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u0000 \f*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\fR\u001e\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00060\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/connectivity/NetworkCallback;", "T", "Lcom/stripe/core/connectivity/Connection$Type;", "", "connectionFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/core/connectivity/Connection;", "getConnectionFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "linkProperties", "Lcom/stripe/core/connectivity/NetworkLinkProperties;", "getLinkProperties", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NetworkCallback<T extends Connection.Type> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    StateFlow<Connection<T>> getConnectionFlow();

    StateFlow<NetworkLinkProperties> getLinkProperties();

    /* JADX INFO: compiled from: NetworkCallback.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\b"}, d2 = {"Lcom/stripe/core/connectivity/NetworkCallback$Companion;", "", "()V", "SIGNAL_INTERVAL", "Lkotlin/time/Duration;", "getSIGNAL_INTERVAL-UwyO8pc", "()J", "J", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final long SIGNAL_INTERVAL;

        private Companion() {
        }

        static {
            Duration.Companion companion = Duration.INSTANCE;
            SIGNAL_INTERVAL = DurationKt.toDuration(5, DurationUnit.SECONDS);
        }

        /* JADX INFO: renamed from: getSIGNAL_INTERVAL-UwyO8pc, reason: not valid java name */
        public final long m457getSIGNAL_INTERVALUwyO8pc() {
            return SIGNAL_INTERVAL;
        }
    }
}
