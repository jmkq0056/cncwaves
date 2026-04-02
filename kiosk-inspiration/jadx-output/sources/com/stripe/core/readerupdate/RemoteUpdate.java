package com.stripe.core.readerupdate;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Update.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/readerupdate/RemoteUpdate;", "", "version", "", "(Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "Local", "Ota", "Lcom/stripe/core/readerupdate/RemoteUpdate$Local;", "Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class RemoteUpdate {
    private final String version;

    public /* synthetic */ RemoteUpdate(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    /* JADX INFO: compiled from: Update.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;", "Lcom/stripe/core/readerupdate/RemoteUpdate;", "version", "", "(Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Ota extends RemoteUpdate {
        private final String version;

        public static /* synthetic */ Ota copy$default(Ota ota, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ota.version;
            }
            return ota.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        public final Ota copy(String version) {
            Intrinsics.checkNotNullParameter(version, "version");
            return new Ota(version);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Ota) && Intrinsics.areEqual(this.version, ((Ota) other).version);
        }

        public int hashCode() {
            return this.version.hashCode();
        }

        public String toString() {
            return "Ota(version=" + this.version + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ota(String version) {
            super(version, null);
            Intrinsics.checkNotNullParameter(version, "version");
            this.version = version;
        }

        @Override // com.stripe.core.readerupdate.RemoteUpdate
        public String getVersion() {
            return this.version;
        }
    }

    private RemoteUpdate(String str) {
        this.version = str;
    }

    public String getVersion() {
        return this.version;
    }

    /* JADX INFO: compiled from: Update.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\b\u0010\u0012\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/stripe/core/readerupdate/RemoteUpdate$Local;", "Lcom/stripe/core/readerupdate/RemoteUpdate;", "hex", "", "version", "(Ljava/lang/String;Ljava/lang/String;)V", "getHex", "()Ljava/lang/String;", "getVersion", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Local extends RemoteUpdate {
        private static final int HEX_PREVIEW_LEN = 10;
        private final String hex;
        private final String version;

        public static /* synthetic */ Local copy$default(Local local, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = local.hex;
            }
            if ((i & 2) != 0) {
                str2 = local.version;
            }
            return local.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getHex() {
            return this.hex;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        public final Local copy(String hex, String version) {
            Intrinsics.checkNotNullParameter(hex, "hex");
            Intrinsics.checkNotNullParameter(version, "version");
            return new Local(hex, version);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Local)) {
                return false;
            }
            Local local = (Local) other;
            return Intrinsics.areEqual(this.hex, local.hex) && Intrinsics.areEqual(this.version, local.version);
        }

        public int hashCode() {
            return (this.hex.hashCode() * 31) + this.version.hashCode();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Local(String hex, String version) {
            super(version, null);
            Intrinsics.checkNotNullParameter(hex, "hex");
            Intrinsics.checkNotNullParameter(version, "version");
            this.hex = hex;
            this.version = version;
        }

        public final String getHex() {
            return this.hex;
        }

        @Override // com.stripe.core.readerupdate.RemoteUpdate
        public String getVersion() {
            return this.version;
        }

        public String toString() {
            return "Local(version=" + getVersion() + ", hex=" + StringsKt.take(this.hex, 10) + "...)";
        }
    }
}
