package com.stripe.jvmcore.terminal.tokenrepositories;

import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: SessionTokenRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001:\u0001\u001cB\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u0006\u0010\u001a\u001a\u00020\u001bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010\u0017\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;", "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;", "()V", "_hasSessionTokenStateFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "hasSessionTokenStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "getHasSessionTokenStateFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "rpcSessionToken", "", "getRpcSessionToken", "()Ljava/lang/String;", "setRpcSessionToken", "(Ljava/lang/String;)V", "sessionTokenListener", "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;", "getSessionTokenListener", "()Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;", "setSessionTokenListener", "(Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;)V", "token", "stripeSessionToken", "getStripeSessionToken", "setStripeSessionToken", "clear", "", "TokenChangeListener", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class SessionTokenRepository implements RpcSessionTokenProvider {
    private final MutableStateFlow<Boolean> _hasSessionTokenStateFlow;
    private final StateFlow<Boolean> hasSessionTokenStateFlow;
    private String rpcSessionToken;
    private TokenChangeListener sessionTokenListener;
    private String stripeSessionToken;

    /* JADX INFO: compiled from: SessionTokenRepository.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository$TokenChangeListener;", "", "onSessionTokenChanged", "", "token", "", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface TokenChangeListener {
        void onSessionTokenChanged(String token);
    }

    @Inject
    public SessionTokenRepository() {
        MutableStateFlow<Boolean> MutableStateFlow = StateFlowKt.MutableStateFlow(false);
        this._hasSessionTokenStateFlow = MutableStateFlow;
        this.hasSessionTokenStateFlow = FlowKt.asStateFlow(MutableStateFlow);
    }

    public final TokenChangeListener getSessionTokenListener() {
        return this.sessionTokenListener;
    }

    public final void setSessionTokenListener(TokenChangeListener tokenChangeListener) {
        this.sessionTokenListener = tokenChangeListener;
    }

    public final StateFlow<Boolean> getHasSessionTokenStateFlow() {
        return this.hasSessionTokenStateFlow;
    }

    public final String getStripeSessionToken() {
        return this.stripeSessionToken;
    }

    public final void setStripeSessionToken(String str) {
        this.stripeSessionToken = str;
        String str2 = str;
        this._hasSessionTokenStateFlow.setValue(Boolean.valueOf(!(str2 == null || StringsKt.isBlank(str2))));
        TokenChangeListener tokenChangeListener = this.sessionTokenListener;
        if (tokenChangeListener != null) {
            tokenChangeListener.onSessionTokenChanged(str);
        }
    }

    @Override // com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider
    public String getRpcSessionToken() {
        return this.rpcSessionToken;
    }

    @Override // com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider
    public void setRpcSessionToken(String str) {
        this.rpcSessionToken = str;
    }

    public final void clear() {
        setStripeSessionToken(null);
        this._hasSessionTokenStateFlow.setValue(false);
        setRpcSessionToken(null);
    }
}
