package com.stripe.jvmcore.dns;

import com.stripe.jvmcore.terminal.crpc.LocalIpReaderResolutionStrategyKt;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InetAddressValidator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"Lcom/stripe/jvmcore/dns/SocketConnectInetAddressValidator;", "Lcom/stripe/jvmcore/dns/InetAddressValidator;", "()V", "isValid", "", "address", "Ljava/net/InetAddress;", "Companion", "dns"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SocketConnectInetAddressValidator implements InetAddressValidator {
    private static final int CONNECT_TIMEOUT = 5000;
    private static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: InetAddressValidator.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/stripe/jvmcore/dns/SocketConnectInetAddressValidator$Companion;", "", "()V", "CONNECT_TIMEOUT", "", "dns"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.stripe.jvmcore.dns.InetAddressValidator
    public boolean isValid(InetAddress address) {
        Intrinsics.checkNotNullParameter(address, "address");
        try {
            Socket socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(address, LocalIpReaderResolutionStrategyKt.JACKRABBIT_PORT), CONNECT_TIMEOUT);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(socket, null);
                return true;
            } finally {
            }
        } catch (IOException unused) {
            return false;
        }
    }
}
