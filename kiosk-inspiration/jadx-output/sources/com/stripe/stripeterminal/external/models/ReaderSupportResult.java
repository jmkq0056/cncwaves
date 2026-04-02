package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderSupportResult.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\t\nR\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\b\u0082\u0001\u0002\u000b\fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "", "error", "", "getError", "()Ljava/lang/Throwable;", "isSupported", "", "()Z", "NotSupported", "Supported", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderSupportResult {
    Throwable getError();

    default boolean isSupported() {
        return getError() == null;
    }

    /* JADX INFO: compiled from: ReaderSupportResult.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "()V", "error", "", "getError", "()Ljava/lang/Throwable;", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Supported implements ReaderSupportResult {
        public static final Supported INSTANCE = new Supported();
        private static final Throwable error = null;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Supported)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 1857518071;
        }

        public String toString() {
            return "Supported";
        }

        private Supported() {
        }

        @Override // com.stripe.stripeterminal.external.models.ReaderSupportResult
        public Throwable getError() {
            return error;
        }
    }

    /* JADX INFO: compiled from: ReaderSupportResult.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;", "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;", "error", "", "(Ljava/lang/Throwable;)V", "getError", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class NotSupported implements ReaderSupportResult {
        private final Throwable error;

        public static /* synthetic */ NotSupported copy$default(NotSupported notSupported, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                th = notSupported.error;
            }
            return notSupported.copy(th);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Throwable getError() {
            return this.error;
        }

        public final NotSupported copy(Throwable error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new NotSupported(error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof NotSupported) && Intrinsics.areEqual(this.error, ((NotSupported) other).error);
        }

        public int hashCode() {
            return this.error.hashCode();
        }

        public String toString() {
            return "NotSupported(error=" + this.error + ')';
        }

        public NotSupported(Throwable error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        @Override // com.stripe.stripeterminal.external.models.ReaderSupportResult
        public Throwable getError() {
            return this.error;
        }
    }
}
