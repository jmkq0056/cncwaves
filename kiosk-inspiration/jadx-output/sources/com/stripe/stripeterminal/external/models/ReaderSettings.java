package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderSettings.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderSettings;", "", "readerAccessibility", "Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;", "(Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;)V", "getReaderAccessibility", "()Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderSettings {
    private final ReaderAccessibility readerAccessibility;

    public static /* synthetic */ ReaderSettings copy$default(ReaderSettings readerSettings, ReaderAccessibility readerAccessibility, int i, Object obj) {
        if ((i & 1) != 0) {
            readerAccessibility = readerSettings.readerAccessibility;
        }
        return readerSettings.copy(readerAccessibility);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ReaderAccessibility getReaderAccessibility() {
        return this.readerAccessibility;
    }

    public final ReaderSettings copy(ReaderAccessibility readerAccessibility) {
        Intrinsics.checkNotNullParameter(readerAccessibility, "readerAccessibility");
        return new ReaderSettings(readerAccessibility);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ReaderSettings) && Intrinsics.areEqual(this.readerAccessibility, ((ReaderSettings) other).readerAccessibility);
    }

    public int hashCode() {
        return this.readerAccessibility.hashCode();
    }

    public String toString() {
        return "ReaderSettings(readerAccessibility=" + this.readerAccessibility + ')';
    }

    public ReaderSettings(ReaderAccessibility readerAccessibility) {
        Intrinsics.checkNotNullParameter(readerAccessibility, "readerAccessibility");
        this.readerAccessibility = readerAccessibility;
    }

    public final ReaderAccessibility getReaderAccessibility() {
        return this.readerAccessibility;
    }
}
