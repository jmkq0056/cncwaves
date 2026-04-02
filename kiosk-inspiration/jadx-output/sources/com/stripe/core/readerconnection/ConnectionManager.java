package com.stripe.core.readerconnection;

import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ$\u0010\u000e\u001a\u00020\t2\u0014\u0010\u000f\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\f0\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fR\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/stripe/core/readerconnection/ConnectionManager;", "", "()V", "<set-?>", "Lcom/stripe/core/readerconnection/ConnectionSummary;", "summary", "getSummary", "()Lcom/stripe/core/readerconnection/ConnectionSummary;", "endOperation", "", "startConnect", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader;", "startDisconnect", "startDiscovery", "readerClasses", "", "Lkotlin/reflect/KClass;", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "startReaderInfo", "startReboot", "startSession", "Companion", "readerconnection_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectionManager {
    public static final String TAG = "ConnectionManager";
    private ConnectionSummary summary = new ConnectionSummary(null, ConnectionState.NONE, null, null, 13, null);

    @Inject
    public ConnectionManager() {
    }

    public final ConnectionSummary getSummary() {
        return this.summary;
    }

    public final void startConnect(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        AndroidLog.INSTANCE.i(TAG, "startConnect");
        this.summary = new ConnectionSummary(null, ConnectionState.CONNECTING, reader, null, 9, null);
    }

    public final void startReaderInfo() {
        AndroidLog.INSTANCE.i(TAG, "startReaderInfo");
        this.summary = new ConnectionSummary(null, ConnectionState.FETCHING_INFO, null, null, 13, null);
    }

    public final void startReboot(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        AndroidLog.INSTANCE.i(TAG, "startReboot");
        this.summary = new ConnectionSummary(null, ConnectionState.REBOOTING, reader, null, 9, null);
    }

    public final void startDisconnect(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        AndroidLog.INSTANCE.i(TAG, "startDisconnect");
        this.summary = new ConnectionSummary(null, ConnectionState.DISCONNECTING, reader, null, 9, null);
    }

    public final void startDiscovery(List<? extends KClass<? extends Reader>> readerClasses, ConnectionType connectionType) {
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        Intrinsics.checkNotNullParameter(connectionType, "connectionType");
        AndroidLog.INSTANCE.i(TAG, "startDiscovery");
        this.summary = new ConnectionSummary(connectionType, ConnectionState.DISCOVERING, null, readerClasses, 4, null);
    }

    public final void endOperation() {
        AndroidLog.INSTANCE.i(TAG, "endOperation");
        this.summary = new ConnectionSummary(null, ConnectionState.NONE, null, null, 13, null);
    }

    public final void startSession(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        AndroidLog.INSTANCE.i(TAG, "startSession");
        this.summary = new ConnectionSummary(null, ConnectionState.STARTING_SESSION, reader, null, 9, null);
    }
}
