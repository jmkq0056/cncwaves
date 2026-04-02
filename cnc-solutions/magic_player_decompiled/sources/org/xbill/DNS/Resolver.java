package org.xbill.DNS;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface Resolver {
    Message send(Message message);

    Object sendAsync(Message message, ResolverListener resolverListener);

    void setEDNS(int i4);

    void setEDNS(int i4, int i5, int i6, List list);

    void setIgnoreTruncation(boolean z3);

    void setPort(int i4);

    void setTCP(boolean z3);

    void setTSIGKey(TSIG tsig);

    void setTimeout(int i4);

    void setTimeout(int i4, int i5);
}
