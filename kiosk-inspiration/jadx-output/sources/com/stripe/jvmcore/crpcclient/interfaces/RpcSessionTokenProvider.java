package com.stripe.jvmcore.crpcclient.interfaces;

import kotlin.Metadata;

/* JADX INFO: compiled from: RpcSessionTokenProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;", "", "rpcSessionToken", "", "getRpcSessionToken", "()Ljava/lang/String;", "setRpcSessionToken", "(Ljava/lang/String;)V", "crpcclient"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface RpcSessionTokenProvider {
    String getRpcSessionToken();

    void setRpcSessionToken(String str);
}
