package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderAccessibility.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;", "", "Accessibility", "Error", "Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Accessibility;", "Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Error;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderAccessibility {

    /* JADX INFO: compiled from: ReaderAccessibility.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Accessibility;", "Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;", "textToSpeechStatus", "Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;", "(Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;)V", "getTextToSpeechStatus", "()Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Accessibility implements ReaderAccessibility {
        private final ReaderTextToSpeechStatus textToSpeechStatus;

        public static /* synthetic */ Accessibility copy$default(Accessibility accessibility, ReaderTextToSpeechStatus readerTextToSpeechStatus, int i, Object obj) {
            if ((i & 1) != 0) {
                readerTextToSpeechStatus = accessibility.textToSpeechStatus;
            }
            return accessibility.copy(readerTextToSpeechStatus);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final ReaderTextToSpeechStatus getTextToSpeechStatus() {
            return this.textToSpeechStatus;
        }

        public final Accessibility copy(ReaderTextToSpeechStatus textToSpeechStatus) {
            Intrinsics.checkNotNullParameter(textToSpeechStatus, "textToSpeechStatus");
            return new Accessibility(textToSpeechStatus);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Accessibility) && this.textToSpeechStatus == ((Accessibility) other).textToSpeechStatus;
        }

        public int hashCode() {
            return this.textToSpeechStatus.hashCode();
        }

        public String toString() {
            return "Accessibility(textToSpeechStatus=" + this.textToSpeechStatus + ')';
        }

        public Accessibility(ReaderTextToSpeechStatus textToSpeechStatus) {
            Intrinsics.checkNotNullParameter(textToSpeechStatus, "textToSpeechStatus");
            this.textToSpeechStatus = textToSpeechStatus;
        }

        public final ReaderTextToSpeechStatus getTextToSpeechStatus() {
            return this.textToSpeechStatus;
        }
    }

    /* JADX INFO: compiled from: ReaderAccessibility.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Error;", "Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;", "error", "", "(Ljava/lang/Throwable;)V", "getError", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Error implements ReaderAccessibility {
        private final Throwable error;

        public static /* synthetic */ Error copy$default(Error error, Throwable th, int i, Object obj) {
            if ((i & 1) != 0) {
                th = error.error;
            }
            return error.copy(th);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Throwable getError() {
            return this.error;
        }

        public final Error copy(Throwable error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error(error);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.areEqual(this.error, ((Error) other).error);
        }

        public int hashCode() {
            return this.error.hashCode();
        }

        public String toString() {
            return "Error(error=" + this.error + ')';
        }

        public Error(Throwable error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        public final Throwable getError() {
            return this.error;
        }
    }
}
