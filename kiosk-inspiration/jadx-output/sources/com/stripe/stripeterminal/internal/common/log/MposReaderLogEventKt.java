package com.stripe.stripeterminal.internal.common.log;

import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent;
import com.stripe.stripeterminal.external.models.Reader;
import kotlin.Metadata;

/* JADX INFO: compiled from: MposReaderLogEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"connectionMode", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;", "Lcom/stripe/stripeterminal/external/models/Reader;", "getConnectionMode", "(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;", "common_publish"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class MposReaderLogEventKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final PosConnectivityEvent.ConnectionMode getConnectionMode(Reader reader) {
        return reader.getBluetoothDevice() != null ? PosConnectivityEvent.ConnectionMode.BLUETOOTH : reader.getUsbDevice() != null ? PosConnectivityEvent.ConnectionMode.USB : PosConnectivityEvent.ConnectionMode.CONNECTION_MODE_INVALID;
    }
}
