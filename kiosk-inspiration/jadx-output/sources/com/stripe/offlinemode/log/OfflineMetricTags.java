package com.stripe.offlinemode.log;

import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineMetricTags.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineMetricTags;", "", "()V", "CARD_APPROVED_TRANSACTION", "", "DECLINE_REASON", "ERROR_REASON", "INSERT_ERROR", "PREVIOUSLY_PAIRED_ONLINE", "REQUEST_TYPE", "TABLE", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineMetricTags {
    public static final String CARD_APPROVED_TRANSACTION = "card_approved_transaction";
    public static final String DECLINE_REASON = "DeclineReason";
    public static final String ERROR_REASON = "ErrorReason";
    public static final String INSERT_ERROR = "InsertError";
    public static final OfflineMetricTags INSTANCE = new OfflineMetricTags();
    public static final String PREVIOUSLY_PAIRED_ONLINE = "PreviouslyPairedOnline";
    public static final String REQUEST_TYPE = "RequestType";
    public static final String TABLE = "Table";

    private OfflineMetricTags() {
    }
}
