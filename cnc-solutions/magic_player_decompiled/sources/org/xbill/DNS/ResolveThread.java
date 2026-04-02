package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
class ResolveThread extends Thread {
    private Object id;
    private ResolverListener listener;
    private Message query;
    private Resolver res;

    public ResolveThread(Resolver resolver, Message message, Object obj, ResolverListener resolverListener) {
        this.res = resolver;
        this.query = message;
        this.id = obj;
        this.listener = resolverListener;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.listener.receiveMessage(this.id, this.res.send(this.query));
        } catch (Exception e4) {
            this.listener.handleException(this.id, e4);
        }
    }
}
