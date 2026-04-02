package com.stripe.jvmcore.terminal.crpc;

import com.stripe.jvmcore.crpcclient.CrpcServiceResolver;
import kotlin.Metadata;

/* JADX INFO: compiled from: LocalIpReaderResolutionStrategy.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/terminal/crpc/EmulatedIpReaderResolutionStrategy;", "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver$ResolutionStrategy;", "()V", "resolve", "", "ipAddress", "baseUrl", "terminal-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EmulatedIpReaderResolutionStrategy implements CrpcServiceResolver.ResolutionStrategy {
    public static final EmulatedIpReaderResolutionStrategy INSTANCE = new EmulatedIpReaderResolutionStrategy();

    private EmulatedIpReaderResolutionStrategy() {
    }

    @Override // com.stripe.jvmcore.crpcclient.CrpcServiceResolver.ResolutionStrategy
    public String resolve(String ipAddress, String baseUrl) {
        return "http://" + ipAddress + ":4443";
    }
}
