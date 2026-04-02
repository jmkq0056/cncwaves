package com.stripe.offlinemode.storage;

import java.util.Arrays;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineConnectionEntity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\bHÆ\u0003J\t\u0010 \u001a\u00020\u000bHÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003JO\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\b\u0010'\u001a\u00020(H\u0016J\t\u0010)\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00068\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0007\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\t\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001e\u0010\f\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0016¨\u0006*"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;", "Lcom/stripe/offlinemode/storage/OfflineEntity;", "readerId", "", "locationId", "accountId", "", "encryptedData", "", "encryptionIv", "created", "Ljava/util/Date;", OfflineStorageConstantsKt.ID, "(JJLjava/lang/String;[B[BLjava/util/Date;J)V", "getAccountId", "()Ljava/lang/String;", "getCreated", "()Ljava/util/Date;", "getEncryptedData", "()[B", "getEncryptionIv", "getId", "()J", "setId", "(J)V", "getLocationId", "getReaderId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineConnectionEntity implements OfflineEntity {
    private final String accountId;
    private final Date created;
    private final byte[] encryptedData;
    private final byte[] encryptionIv;
    private long id;
    private final long locationId;
    private final long readerId;

    public static /* synthetic */ OfflineConnectionEntity copy$default(OfflineConnectionEntity offlineConnectionEntity, long j, long j2, String str, byte[] bArr, byte[] bArr2, Date date, long j3, int i, Object obj) {
        if ((i & 1) != 0) {
            j = offlineConnectionEntity.readerId;
        }
        long j4 = j;
        if ((i & 2) != 0) {
            j2 = offlineConnectionEntity.locationId;
        }
        return offlineConnectionEntity.copy(j4, j2, (i & 4) != 0 ? offlineConnectionEntity.accountId : str, (i & 8) != 0 ? offlineConnectionEntity.encryptedData : bArr, (i & 16) != 0 ? offlineConnectionEntity.encryptionIv : bArr2, (i & 32) != 0 ? offlineConnectionEntity.created : date, (i & 64) != 0 ? offlineConnectionEntity.id : j3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getReaderId() {
        return this.readerId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getLocationId() {
        return this.locationId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final byte[] getEncryptedData() {
        return this.encryptedData;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final byte[] getEncryptionIv() {
        return this.encryptionIv;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Date getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getId() {
        return this.id;
    }

    public final OfflineConnectionEntity copy(long readerId, long locationId, String accountId, byte[] encryptedData, byte[] encryptionIv, Date created, long id) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        Intrinsics.checkNotNullParameter(created, "created");
        return new OfflineConnectionEntity(readerId, locationId, accountId, encryptedData, encryptionIv, created, id);
    }

    public String toString() {
        return "OfflineConnectionEntity(readerId=" + this.readerId + ", locationId=" + this.locationId + ", accountId=" + this.accountId + ", encryptedData=" + Arrays.toString(this.encryptedData) + ", encryptionIv=" + Arrays.toString(this.encryptionIv) + ", created=" + this.created + ", id=" + this.id + ')';
    }

    public OfflineConnectionEntity(long j, long j2, String accountId, byte[] encryptedData, byte[] encryptionIv, Date created, long j3) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        Intrinsics.checkNotNullParameter(created, "created");
        this.readerId = j;
        this.locationId = j2;
        this.accountId = accountId;
        this.encryptedData = encryptedData;
        this.encryptionIv = encryptionIv;
        this.created = created;
        this.id = j3;
    }

    public /* synthetic */ OfflineConnectionEntity(long j, long j2, String str, byte[] bArr, byte[] bArr2, Date date, long j3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, str, bArr, bArr2, date, (i & 64) != 0 ? 0L : j3);
    }

    public final long getReaderId() {
        return this.readerId;
    }

    public final long getLocationId() {
        return this.locationId;
    }

    @Override // com.stripe.offlinemode.storage.OfflineEntity
    public String getAccountId() {
        return this.accountId;
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

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineConnectionEntity)) {
            return false;
        }
        OfflineConnectionEntity offlineConnectionEntity = (OfflineConnectionEntity) other;
        return this.readerId == offlineConnectionEntity.readerId && Intrinsics.areEqual(getAccountId(), offlineConnectionEntity.getAccountId()) && Arrays.equals(getEncryptedData(), offlineConnectionEntity.getEncryptedData()) && Arrays.equals(getEncryptionIv(), offlineConnectionEntity.getEncryptionIv()) && Intrinsics.areEqual(this.created, offlineConnectionEntity.created) && getId() == offlineConnectionEntity.getId();
    }

    public int hashCode() {
        return (((((((((Long.hashCode(this.readerId) * 31) + getAccountId().hashCode()) * 31) + Arrays.hashCode(getEncryptedData())) * 31) + Arrays.hashCode(getEncryptionIv())) * 31) + this.created.hashCode()) * 31) + Long.hashCode(getId());
    }
}
