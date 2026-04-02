package com.stripe.offlinemode.cipher;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: OfflineCipherException.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B#\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0006R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0001X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n\u0082\u0001\u0003\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineCipherException;", "", "table", "", "message", "cause", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V", "getCause", "()Ljava/lang/Throwable;", "getMessage", "()Ljava/lang/String;", "getTable", "Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;", "Lcom/stripe/offlinemode/cipher/OfflineDecryptionException;", "Lcom/stripe/offlinemode/cipher/OfflineEncryptionException;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class OfflineCipherException extends Throwable {
    private final Throwable cause;
    private final String message;
    private final String table;

    public /* synthetic */ OfflineCipherException(String str, String str2, Throwable th, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, th);
    }

    public /* synthetic */ OfflineCipherException(String str, String str2, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : th, null);
    }

    public String getTable() {
        return this.table;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }

    private OfflineCipherException(String str, String str2, Throwable th) {
        super(str2, th);
        this.table = str;
        this.message = str2;
        this.cause = th;
    }
}
