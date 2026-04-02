package com.stripe.jvmcore.logging.terminal.log;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: LogUploadResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;", "", "()V", "Failed", "Succeeded", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Succeeded;", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class LogUploadResult {
    public /* synthetic */ LogUploadResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private LogUploadResult() {
    }

    /* JADX INFO: compiled from: LogUploadResult.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Succeeded;", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;", "()V", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Succeeded extends LogUploadResult {
        public static final Succeeded INSTANCE = new Succeeded();

        private Succeeded() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: LogUploadResult.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;", "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;", "shouldRetry", "", "(Z)V", "getShouldRetry", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Failed extends LogUploadResult {
        private final boolean shouldRetry;

        public static /* synthetic */ Failed copy$default(Failed failed, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = failed.shouldRetry;
            }
            return failed.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getShouldRetry() {
            return this.shouldRetry;
        }

        public final Failed copy(boolean shouldRetry) {
            return new Failed(shouldRetry);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Failed) && this.shouldRetry == ((Failed) other).shouldRetry;
        }

        public int hashCode() {
            return Boolean.hashCode(this.shouldRetry);
        }

        public String toString() {
            return "Failed(shouldRetry=" + this.shouldRetry + ')';
        }

        public Failed(boolean z) {
            super(null);
            this.shouldRetry = z;
        }

        public final boolean getShouldRetry() {
            return this.shouldRetry;
        }
    }
}
