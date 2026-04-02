package com.stripe.offlinemode.storage;

import com.stripe.jvmcore.logging.terminal.log.Log;
import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineDbPathHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\"\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0000X\u0081\u0004¢\u0006\n\n\u0002\u0010\u0005\u001a\u0004\b\u0003\u0010\u0004\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0002X\u0080T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"DATABASE_EXTRA_FILES", "", "", "getDATABASE_EXTRA_FILES", "()[Ljava/lang/String;", "[Ljava/lang/String;", "Logger", "Lcom/stripe/jvmcore/logging/terminal/log/Log;", "OFFLINE_DATABASE_NAME", "offlinemode_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class OfflineDbPathHelperKt {
    public static final String OFFLINE_DATABASE_NAME = "stripe_offline_db";
    private static final Log Logger = Log.INSTANCE.getLogger(OfflineDatabasePathHelper.class);
    private static final String[] DATABASE_EXTRA_FILES = {"-journal", "-shm", "-wal"};

    public static final String[] getDATABASE_EXTRA_FILES() {
        return DATABASE_EXTRA_FILES;
    }
}
