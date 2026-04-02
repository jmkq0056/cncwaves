package com.stripe.offlinemode.storage;

import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import java.util.Arrays;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineApiRequestEntity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005¢\u0006\u0002\u0010\u0012J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\tHÆ\u0003J\t\u0010-\u001a\u00020\u000bHÆ\u0003J\t\u0010.\u001a\u00020\rHÆ\u0003J\t\u0010/\u001a\u00020\rHÆ\u0003J\t\u00100\u001a\u00020\u0010HÆ\u0003Jq\u00101\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0005HÆ\u0001J\u0013\u00102\u001a\u00020\u000b2\b\u00103\u001a\u0004\u0018\u000104H\u0096\u0002J\b\u00105\u001a\u000206H\u0016J\t\u00107\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0007\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\f\u001a\u00020\r8\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010\u000e\u001a\u00020\r8\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0014R\u001e\u0010\u0011\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\"R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0014R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0014R\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&¨\u00068"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;", "Lcom/stripe/offlinemode/storage/OfflineEntity;", "offlineId", "", "connectionId", "", "stripeEntityId", "accountId", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", OfflineStorageConstantsKt.DELETED, "", "encryptedData", "", "encryptionIv", "created", "Ljava/util/Date;", OfflineStorageConstantsKt.ID, "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V", "getAccountId", "()Ljava/lang/String;", "getConnectionId", "()J", "getCreated", "()Ljava/util/Date;", "getDeleted", "()Z", "getEncryptedData", "()[B", "getEncryptionIv", "entityId", "getEntityId", "getId", "setId", "(J)V", "getOfflineId", "getStripeEntityId", "getType", "()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineApiRequestEntity implements OfflineEntity {
    private final String accountId;
    private final long connectionId;
    private final Date created;
    private final boolean deleted;
    private final byte[] encryptedData;
    private final byte[] encryptionIv;
    private final String entityId;
    private long id;
    private final String offlineId;
    private final String stripeEntityId;
    private final OfflineApiRequest.ApiRequestType type;

    public static /* synthetic */ OfflineApiRequestEntity copy$default(OfflineApiRequestEntity offlineApiRequestEntity, String str, long j, String str2, String str3, OfflineApiRequest.ApiRequestType apiRequestType, boolean z, byte[] bArr, byte[] bArr2, Date date, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineApiRequestEntity.offlineId;
        }
        if ((i & 2) != 0) {
            j = offlineApiRequestEntity.connectionId;
        }
        if ((i & 4) != 0) {
            str2 = offlineApiRequestEntity.stripeEntityId;
        }
        if ((i & 8) != 0) {
            str3 = offlineApiRequestEntity.accountId;
        }
        if ((i & 16) != 0) {
            apiRequestType = offlineApiRequestEntity.type;
        }
        if ((i & 32) != 0) {
            z = offlineApiRequestEntity.deleted;
        }
        if ((i & 64) != 0) {
            bArr = offlineApiRequestEntity.encryptedData;
        }
        if ((i & 128) != 0) {
            bArr2 = offlineApiRequestEntity.encryptionIv;
        }
        if ((i & 256) != 0) {
            date = offlineApiRequestEntity.created;
        }
        if ((i & 512) != 0) {
            j2 = offlineApiRequestEntity.id;
        }
        long j3 = j2;
        byte[] bArr3 = bArr2;
        Date date2 = date;
        byte[] bArr4 = bArr;
        OfflineApiRequest.ApiRequestType apiRequestType2 = apiRequestType;
        String str4 = str2;
        return offlineApiRequestEntity.copy(str, j, str4, str3, apiRequestType2, z, bArr4, bArr3, date2, j3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOfflineId() {
        return this.offlineId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getConnectionId() {
        return this.connectionId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStripeEntityId() {
        return this.stripeEntityId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final OfflineApiRequest.ApiRequestType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getDeleted() {
        return this.deleted;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final byte[] getEncryptedData() {
        return this.encryptedData;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final byte[] getEncryptionIv() {
        return this.encryptionIv;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Date getCreated() {
        return this.created;
    }

    public final OfflineApiRequestEntity copy(String offlineId, long connectionId, String stripeEntityId, String accountId, OfflineApiRequest.ApiRequestType type, boolean deleted, byte[] encryptedData, byte[] encryptionIv, Date created, long id) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        Intrinsics.checkNotNullParameter(created, "created");
        return new OfflineApiRequestEntity(offlineId, connectionId, stripeEntityId, accountId, type, deleted, encryptedData, encryptionIv, created, id);
    }

    public String toString() {
        return "OfflineApiRequestEntity(offlineId=" + this.offlineId + ", connectionId=" + this.connectionId + ", stripeEntityId=" + this.stripeEntityId + ", accountId=" + this.accountId + ", type=" + this.type + ", deleted=" + this.deleted + ", encryptedData=" + Arrays.toString(this.encryptedData) + ", encryptionIv=" + Arrays.toString(this.encryptionIv) + ", created=" + this.created + ", id=" + this.id + ')';
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OfflineApiRequestEntity(java.lang.String r2, long r3, java.lang.String r5, java.lang.String r6, com.stripe.proto.model.offline_mode.OfflineApiRequest.ApiRequestType r7, boolean r8, byte[] r9, byte[] r10, java.util.Date r11, long r12) {
        /*
            r1 = this;
            java.lang.String r0 = "accountId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "encryptedData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "encryptionIv"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "created"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            r1.<init>()
            r1.offlineId = r2
            r1.connectionId = r3
            r1.stripeEntityId = r5
            r1.accountId = r6
            r1.type = r7
            r1.deleted = r8
            r1.encryptedData = r9
            r1.encryptionIv = r10
            r1.created = r11
            r1.id = r12
            r3 = 0
            if (r2 == 0) goto L43
            r4 = r2
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4
            int r4 = r4.length()
            if (r4 <= 0) goto L3d
            goto L3e
        L3d:
            r2 = r3
        L3e:
            if (r2 != 0) goto L41
            goto L43
        L41:
            r5 = r2
            goto L50
        L43:
            if (r5 == 0) goto L4f
            r2 = r5
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            int r2 = r2.length()
            if (r2 <= 0) goto L4f
            goto L50
        L4f:
            r5 = r3
        L50:
            if (r5 == 0) goto L55
            r1.entityId = r5
            return
        L55:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Required value was null."
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.offlinemode.storage.OfflineApiRequestEntity.<init>(java.lang.String, long, java.lang.String, java.lang.String, com.stripe.proto.model.offline_mode.OfflineApiRequest$ApiRequestType, boolean, byte[], byte[], java.util.Date, long):void");
    }

    public /* synthetic */ OfflineApiRequestEntity(String str, long j, String str2, String str3, OfflineApiRequest.ApiRequestType apiRequestType, boolean z, byte[] bArr, byte[] bArr2, Date date, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j, str2, str3, apiRequestType, z, bArr, bArr2, date, (i & 512) != 0 ? 0L : j2);
    }

    public final String getOfflineId() {
        return this.offlineId;
    }

    public final long getConnectionId() {
        return this.connectionId;
    }

    public final String getStripeEntityId() {
        return this.stripeEntityId;
    }

    @Override // com.stripe.offlinemode.storage.OfflineEntity
    public String getAccountId() {
        return this.accountId;
    }

    public final OfflineApiRequest.ApiRequestType getType() {
        return this.type;
    }

    public final boolean getDeleted() {
        return this.deleted;
    }

    @Override // com.stripe.offlinemode.storage.OfflineEntity
    public byte[] getEncryptedData() {
        return this.encryptedData;
    }

    @Override // com.stripe.offlinemode.storage.OfflineEntity
    public byte[] getEncryptionIv() {
        return this.encryptionIv;
    }

    public final Date getCreated() {
        return this.created;
    }

    @Override // com.stripe.offlinemode.storage.OfflineEntity
    public long getId() {
        return this.id;
    }

    @Override // com.stripe.offlinemode.storage.OfflineEntity
    public void setId(long j) {
        this.id = j;
    }

    public final String getEntityId() {
        return this.entityId;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineApiRequestEntity)) {
            return false;
        }
        OfflineApiRequestEntity offlineApiRequestEntity = (OfflineApiRequestEntity) other;
        return Intrinsics.areEqual(this.offlineId, offlineApiRequestEntity.offlineId) && this.connectionId == offlineApiRequestEntity.connectionId && Intrinsics.areEqual(this.stripeEntityId, offlineApiRequestEntity.stripeEntityId) && Intrinsics.areEqual(getAccountId(), offlineApiRequestEntity.getAccountId()) && this.type == offlineApiRequestEntity.type && this.deleted == offlineApiRequestEntity.deleted && Arrays.equals(getEncryptedData(), offlineApiRequestEntity.getEncryptedData()) && Arrays.equals(getEncryptionIv(), offlineApiRequestEntity.getEncryptionIv()) && Intrinsics.areEqual(this.created, offlineApiRequestEntity.created) && getId() == offlineApiRequestEntity.getId() && Intrinsics.areEqual(this.entityId, offlineApiRequestEntity.entityId);
    }

    public int hashCode() {
        String str = this.offlineId;
        int iHashCode = (((str != null ? str.hashCode() : 0) * 31) + Long.hashCode(this.connectionId)) * 31;
        String str2 = this.stripeEntityId;
        return ((((((((((((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + getAccountId().hashCode()) * 31) + this.type.hashCode()) * 31) + Boolean.hashCode(this.deleted)) * 31) + Arrays.hashCode(getEncryptedData())) * 31) + Arrays.hashCode(getEncryptionIv())) * 31) + this.created.hashCode()) * 31) + Long.hashCode(getId())) * 31) + this.entityId.hashCode();
    }
}
