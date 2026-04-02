package com.stripe.core.readerupdate;

import android.graphics.Bitmap;
import com.stripe.proto.model.config.MobileClientConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Update.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0007\b\t\nB\u0011\b\u0004\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0004\u000b\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/stripe/core/readerupdate/Update;", "", "version", "", "(Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "Config", "Firmware", "Keys", "Settings", "Lcom/stripe/core/readerupdate/Update$Config;", "Lcom/stripe/core/readerupdate/Update$Firmware;", "Lcom/stripe/core/readerupdate/Update$Keys;", "Lcom/stripe/core/readerupdate/Update$Settings;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Update {
    private final String version;

    public /* synthetic */ Update(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    private Update(String str) {
        this.version = str;
    }

    public String getVersion() {
        return this.version;
    }

    /* JADX INFO: compiled from: Update.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/readerupdate/Update$Keys;", "Lcom/stripe/core/readerupdate/Update;", "remoteUpdate", "Lcom/stripe/core/readerupdate/RemoteUpdate;", "(Lcom/stripe/core/readerupdate/RemoteUpdate;)V", "getRemoteUpdate", "()Lcom/stripe/core/readerupdate/RemoteUpdate;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Keys extends Update {
        private final RemoteUpdate remoteUpdate;

        public static /* synthetic */ Keys copy$default(Keys keys, RemoteUpdate remoteUpdate, int i, Object obj) {
            if ((i & 1) != 0) {
                remoteUpdate = keys.remoteUpdate;
            }
            return keys.copy(remoteUpdate);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final RemoteUpdate getRemoteUpdate() {
            return this.remoteUpdate;
        }

        public final Keys copy(RemoteUpdate remoteUpdate) {
            Intrinsics.checkNotNullParameter(remoteUpdate, "remoteUpdate");
            return new Keys(remoteUpdate);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Keys) && Intrinsics.areEqual(this.remoteUpdate, ((Keys) other).remoteUpdate);
        }

        public int hashCode() {
            return this.remoteUpdate.hashCode();
        }

        public String toString() {
            return "Keys(remoteUpdate=" + this.remoteUpdate + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Keys(RemoteUpdate remoteUpdate) {
            super(remoteUpdate.getVersion(), null);
            Intrinsics.checkNotNullParameter(remoteUpdate, "remoteUpdate");
            this.remoteUpdate = remoteUpdate;
        }

        public final RemoteUpdate getRemoteUpdate() {
            return this.remoteUpdate;
        }
    }

    /* JADX INFO: compiled from: Update.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/readerupdate/Update$Config;", "Lcom/stripe/core/readerupdate/Update;", "remoteUpdate", "Lcom/stripe/core/readerupdate/RemoteUpdate;", "(Lcom/stripe/core/readerupdate/RemoteUpdate;)V", "getRemoteUpdate", "()Lcom/stripe/core/readerupdate/RemoteUpdate;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Config extends Update {
        private final RemoteUpdate remoteUpdate;

        public static /* synthetic */ Config copy$default(Config config, RemoteUpdate remoteUpdate, int i, Object obj) {
            if ((i & 1) != 0) {
                remoteUpdate = config.remoteUpdate;
            }
            return config.copy(remoteUpdate);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final RemoteUpdate getRemoteUpdate() {
            return this.remoteUpdate;
        }

        public final Config copy(RemoteUpdate remoteUpdate) {
            Intrinsics.checkNotNullParameter(remoteUpdate, "remoteUpdate");
            return new Config(remoteUpdate);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Config) && Intrinsics.areEqual(this.remoteUpdate, ((Config) other).remoteUpdate);
        }

        public int hashCode() {
            return this.remoteUpdate.hashCode();
        }

        public String toString() {
            return "Config(remoteUpdate=" + this.remoteUpdate + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Config(RemoteUpdate remoteUpdate) {
            super(remoteUpdate.getVersion(), null);
            Intrinsics.checkNotNullParameter(remoteUpdate, "remoteUpdate");
            this.remoteUpdate = remoteUpdate;
        }

        public final RemoteUpdate getRemoteUpdate() {
            return this.remoteUpdate;
        }
    }

    /* JADX INFO: compiled from: Update.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/core/readerupdate/Update$Firmware;", "Lcom/stripe/core/readerupdate/Update;", "remoteUpdate", "Lcom/stripe/core/readerupdate/RemoteUpdate;", "(Lcom/stripe/core/readerupdate/RemoteUpdate;)V", "getRemoteUpdate", "()Lcom/stripe/core/readerupdate/RemoteUpdate;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Firmware extends Update {
        private final RemoteUpdate remoteUpdate;

        public static /* synthetic */ Firmware copy$default(Firmware firmware, RemoteUpdate remoteUpdate, int i, Object obj) {
            if ((i & 1) != 0) {
                remoteUpdate = firmware.remoteUpdate;
            }
            return firmware.copy(remoteUpdate);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final RemoteUpdate getRemoteUpdate() {
            return this.remoteUpdate;
        }

        public final Firmware copy(RemoteUpdate remoteUpdate) {
            Intrinsics.checkNotNullParameter(remoteUpdate, "remoteUpdate");
            return new Firmware(remoteUpdate);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Firmware) && Intrinsics.areEqual(this.remoteUpdate, ((Firmware) other).remoteUpdate);
        }

        public int hashCode() {
            return this.remoteUpdate.hashCode();
        }

        public String toString() {
            return "Firmware(remoteUpdate=" + this.remoteUpdate + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Firmware(RemoteUpdate remoteUpdate) {
            super(remoteUpdate.getVersion(), null);
            Intrinsics.checkNotNullParameter(remoteUpdate, "remoteUpdate");
            this.remoteUpdate = remoteUpdate;
        }

        public final RemoteUpdate getRemoteUpdate() {
            return this.remoteUpdate;
        }
    }

    /* JADX INFO: compiled from: Update.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\b\u0010\u0019\u001a\u00020\u0007H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/stripe/core/readerupdate/Update$Settings;", "Lcom/stripe/core/readerupdate/Update;", "config", "Lcom/stripe/proto/model/config/MobileClientConfig;", "image", "Landroid/graphics/Bitmap;", "version", "", "(Lcom/stripe/proto/model/config/MobileClientConfig;Landroid/graphics/Bitmap;Ljava/lang/String;)V", "getConfig", "()Lcom/stripe/proto/model/config/MobileClientConfig;", "getImage", "()Landroid/graphics/Bitmap;", "getVersion", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Settings extends Update {
        private final MobileClientConfig config;
        private final Bitmap image;
        private final String version;

        public static /* synthetic */ Settings copy$default(Settings settings, MobileClientConfig mobileClientConfig, Bitmap bitmap, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                mobileClientConfig = settings.config;
            }
            if ((i & 2) != 0) {
                bitmap = settings.image;
            }
            if ((i & 4) != 0) {
                str = settings.version;
            }
            return settings.copy(mobileClientConfig, bitmap, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final MobileClientConfig getConfig() {
            return this.config;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Bitmap getImage() {
            return this.image;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getVersion() {
            return this.version;
        }

        public final Settings copy(MobileClientConfig config, Bitmap image, String version) {
            Intrinsics.checkNotNullParameter(config, "config");
            return new Settings(config, image, version);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Settings)) {
                return false;
            }
            Settings settings = (Settings) other;
            return Intrinsics.areEqual(this.config, settings.config) && Intrinsics.areEqual(this.image, settings.image) && Intrinsics.areEqual(this.version, settings.version);
        }

        public int hashCode() {
            int iHashCode = this.config.hashCode() * 31;
            Bitmap bitmap = this.image;
            int iHashCode2 = (iHashCode + (bitmap == null ? 0 : bitmap.hashCode())) * 31;
            String str = this.version;
            return iHashCode2 + (str != null ? str.hashCode() : 0);
        }

        public final MobileClientConfig getConfig() {
            return this.config;
        }

        public final Bitmap getImage() {
            return this.image;
        }

        @Override // com.stripe.core.readerupdate.Update
        public String getVersion() {
            return this.version;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Settings(MobileClientConfig config, Bitmap bitmap, String str) {
            super(str, null);
            Intrinsics.checkNotNullParameter(config, "config");
            this.config = config;
            this.image = bitmap;
            this.version = str;
        }

        public String toString() {
            return "Settings(version=" + getVersion() + ')';
        }
    }
}
