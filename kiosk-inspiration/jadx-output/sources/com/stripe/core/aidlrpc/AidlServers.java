package com.stripe.core.aidlrpc;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.stripe.core.aidlrpc.AppPackageName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AidlServers.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\b\tR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005\u0082\u0001\u0002\n\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlServers;", "", "className", "", "getClassName", "()Ljava/lang/String;", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "getPackageName", "Reader", "Updater", "Lcom/stripe/core/aidlrpc/AidlServers$Reader;", "Lcom/stripe/core/aidlrpc/AidlServers$Updater;", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AidlServers {
    String getClassName();

    String getPackageName();

    /* JADX INFO: compiled from: AidlServers.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0006HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlServers$Reader;", "Lcom/stripe/core/aidlrpc/AidlServers;", "appPackageName", "Lcom/stripe/core/aidlrpc/AppPackageName$Reader;", "(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;)V", "className", "", "getClassName", "()Ljava/lang/String;", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "getPackageName", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Reader implements AidlServers {
        private final AppPackageName.Reader appPackageName;
        private final String className;
        private final String packageName;

        /* JADX INFO: renamed from: component1, reason: from getter */
        private final AppPackageName.Reader getAppPackageName() {
            return this.appPackageName;
        }

        public static /* synthetic */ Reader copy$default(Reader reader, AppPackageName.Reader reader2, int i, Object obj) {
            if ((i & 1) != 0) {
                reader2 = reader.appPackageName;
            }
            return reader.copy(reader2);
        }

        public final Reader copy(AppPackageName.Reader appPackageName) {
            Intrinsics.checkNotNullParameter(appPackageName, "appPackageName");
            return new Reader(appPackageName);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Reader) && Intrinsics.areEqual(this.appPackageName, ((Reader) other).appPackageName);
        }

        public int hashCode() {
            return this.appPackageName.hashCode();
        }

        public String toString() {
            return "Reader(appPackageName=" + this.appPackageName + ')';
        }

        public Reader(AppPackageName.Reader appPackageName) {
            Intrinsics.checkNotNullParameter(appPackageName, "appPackageName");
            this.appPackageName = appPackageName;
            this.className = "com.stripe.reader.services.AidlServerService";
            this.packageName = appPackageName.getValue();
        }

        @Override // com.stripe.core.aidlrpc.AidlServers
        public String getClassName() {
            return this.className;
        }

        @Override // com.stripe.core.aidlrpc.AidlServers
        public String getPackageName() {
            return this.packageName;
        }
    }

    /* JADX INFO: compiled from: AidlServers.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0004HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/aidlrpc/AidlServers$Updater;", "Lcom/stripe/core/aidlrpc/AidlServers;", "()V", "className", "", "getClassName", "()Ljava/lang/String;", RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, "getPackageName", "equals", "", "other", "", "hashCode", "", "toString", "aidlrpc_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Updater implements AidlServers {
        public static final Updater INSTANCE = new Updater();
        private static final String className = "com.stripe.updater.service.UpdaterService";
        private static final String packageName = "com.stripe.updater";

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Updater)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 40811367;
        }

        public String toString() {
            return "Updater";
        }

        private Updater() {
        }

        @Override // com.stripe.core.aidlrpc.AidlServers
        public String getClassName() {
            return className;
        }

        @Override // com.stripe.core.aidlrpc.AidlServers
        public String getPackageName() {
            return packageName;
        }
    }
}
