package com.stripe.core.hardware.reactive.emv;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ClientConfigData.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0000J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\u0006\u0010\u0014\u001a\u00020\u0003R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0016"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;", "", "configHash", "", "imageId", "(Ljava/lang/String;Ljava/lang/String;)V", "getConfigHash", "()Ljava/lang/String;", "getImageId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "merge", "newData", "toString", "toTagValue", "Companion", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ClientConfigData {
    private static final String CLIENT_CONFIG_DELIMITER = "20";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "ConfigurationHandler";
    private final String configHash;
    private final String imageId;

    public static /* synthetic */ ClientConfigData copy$default(ClientConfigData clientConfigData, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = clientConfigData.configHash;
        }
        if ((i & 2) != 0) {
            str2 = clientConfigData.imageId;
        }
        return clientConfigData.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getConfigHash() {
        return this.configHash;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getImageId() {
        return this.imageId;
    }

    public final ClientConfigData copy(String configHash, String imageId) {
        return new ClientConfigData(configHash, imageId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ClientConfigData)) {
            return false;
        }
        ClientConfigData clientConfigData = (ClientConfigData) other;
        return Intrinsics.areEqual(this.configHash, clientConfigData.configHash) && Intrinsics.areEqual(this.imageId, clientConfigData.imageId);
    }

    public int hashCode() {
        String str = this.configHash;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.imageId;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "ClientConfigData(configHash=" + this.configHash + ", imageId=" + this.imageId + ')';
    }

    public ClientConfigData(String str, String str2) {
        this.configHash = str;
        this.imageId = str2;
    }

    public final String getConfigHash() {
        return this.configHash;
    }

    public final String getImageId() {
        return this.imageId;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toTagValue() {
        /*
            r6 = this;
            java.lang.String r0 = r6.configHash
            java.lang.String r1 = "toUpperCase(...)"
            java.lang.String r2 = "US"
            if (r0 == 0) goto L16
            java.util.Locale r3 = java.util.Locale.US
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r2)
            java.lang.String r0 = r0.toUpperCase(r3)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            if (r0 != 0) goto L18
        L16:
            java.lang.String r0 = ""
        L18:
            java.lang.String r3 = r6.imageId
            if (r3 == 0) goto L50
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.StringBuilder r0 = r4.append(r0)
            java.lang.String r4 = "20"
            java.lang.StringBuilder r0 = r0.append(r4)
            com.stripe.core.bytearray.Extensions r4 = com.stripe.core.bytearray.Extensions.INSTANCE
            java.util.Locale r5 = java.util.Locale.US
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r2)
            java.lang.String r2 = r3.toUpperCase(r5)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
            java.nio.charset.Charset r1 = kotlin.text.Charsets.UTF_8
            byte[] r1 = r2.getBytes(r1)
            java.lang.String r2 = "getBytes(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.lang.String r1 = r4.toHexString(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
        L50:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ClientConfigData.toTagValue():java.lang.String");
    }

    public final ClientConfigData merge(ClientConfigData newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        String str = newData.configHash;
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            str = null;
        }
        if (str == null) {
            str = this.configHash;
        }
        String str3 = newData.imageId;
        String str4 = str3;
        String str5 = str4 == null || str4.length() == 0 ? null : str3;
        if (str5 == null) {
            str5 = this.imageId;
        }
        return copy(str, str5);
    }

    /* JADX INFO: compiled from: ClientConfigData.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;", "", "()V", "CLIENT_CONFIG_DELIMITER", "", "TAG", "parseClientConfigData", "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00be  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.stripe.core.hardware.reactive.emv.ClientConfigData parseClientConfigData(java.lang.String r18) {
            /*
                Method dump skipped, instruction units count: 321
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.hardware.reactive.emv.ClientConfigData.Companion.parseClientConfigData(java.lang.String):com.stripe.core.hardware.reactive.emv.ClientConfigData");
        }
    }
}
