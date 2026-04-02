package com.stripe.offlinemode.storage;

import java.util.Arrays;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineLocationEntity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001f\u001a\u00020\tHÆ\u0003J\t\u0010 \u001a\u00020\tHÆ\u0003J\t\u0010!\u001a\u00020\fHÆ\u0003JO\u0010\"\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\b\u0010'\u001a\u00020(H\u0016J\t\u0010)\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0005\u001a\u00020\u00068\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\u00068\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u001e\u0010\u000b\u001a\u00020\f8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u000f¨\u0006*"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineLocationEntity;", "Lcom/stripe/offlinemode/storage/OfflineEntity;", "stripeLocationId", "", "accountId", "encryptedData", "", "encryptionIv", "created", "Ljava/util/Date;", "lastActivatedAt", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;Ljava/lang/String;[B[BLjava/util/Date;Ljava/util/Date;J)V", "getAccountId", "()Ljava/lang/String;", "getCreated", "()Ljava/util/Date;", "getEncryptedData", "()[B", "getEncryptionIv", "getId", "()J", "setId", "(J)V", "getLastActivatedAt", "getStripeLocationId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineLocationEntity implements OfflineEntity {
    private final String accountId;
    private final Date created;
    private final byte[] encryptedData;
    private final byte[] encryptionIv;
    private long id;
    private final Date lastActivatedAt;
    private final String stripeLocationId;

    public static /* synthetic */ OfflineLocationEntity copy$default(OfflineLocationEntity offlineLocationEntity, String str, String str2, byte[] bArr, byte[] bArr2, Date date, Date date2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineLocationEntity.stripeLocationId;
        }
        if ((i & 2) != 0) {
            str2 = offlineLocationEntity.accountId;
        }
        if ((i & 4) != 0) {
            bArr = offlineLocationEntity.encryptedData;
        }
        if ((i & 8) != 0) {
            bArr2 = offlineLocationEntity.encryptionIv;
        }
        if ((i & 16) != 0) {
            date = offlineLocationEntity.created;
        }
        if ((i & 32) != 0) {
            date2 = offlineLocationEntity.lastActivatedAt;
        }
        if ((i & 64) != 0) {
            j = offlineLocationEntity.id;
        }
        long j2 = j;
        Date date3 = date;
        Date date4 = date2;
        return offlineLocationEntity.copy(str, str2, bArr, bArr2, date3, date4, j2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getStripeLocationId() {
        return this.stripeLocationId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final byte[] getEncryptedData() {
        return this.encryptedData;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final byte[] getEncryptionIv() {
        return this.encryptionIv;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Date getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Date getLastActivatedAt() {
        return this.lastActivatedAt;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getId() {
        return this.id;
    }

    public final OfflineLocationEntity copy(String stripeLocationId, String accountId, byte[] encryptedData, byte[] encryptionIv, Date created, Date lastActivatedAt, long id) {
        Intrinsics.checkNotNullParameter(stripeLocationId, "stripeLocationId");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(lastActivatedAt, "lastActivatedAt");
        return new OfflineLocationEntity(stripeLocationId, accountId, encryptedData, encryptionIv, created, lastActivatedAt, id);
    }

    public String toString() {
        return "OfflineLocationEntity(stripeLocationId=" + this.stripeLocationId + ", accountId=" + this.accountId + ", encryptedData=" + Arrays.toString(this.encryptedData) + ", encryptionIv=" + Arrays.toString(this.encryptionIv) + ", created=" + this.created + ", lastActivatedAt=" + this.lastActivatedAt + ", id=" + this.id + ')';
    }

    public OfflineLocationEntity(String stripeLocationId, String accountId, byte[] encryptedData, byte[] encryptionIv, Date created, Date lastActivatedAt, long j) {
        Intrinsics.checkNotNullParameter(stripeLocationId, "stripeLocationId");
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(lastActivatedAt, "lastActivatedAt");
        this.stripeLocationId = stripeLocationId;
        this.accountId = accountId;
        this.encryptedData = encryptedData;
        this.encryptionIv = encryptionIv;
        this.created = created;
        this.lastActivatedAt = lastActivatedAt;
        this.id = j;
    }

    public /* synthetic */ OfflineLocationEntity(String str, String str2, byte[] bArr, byte[] bArr2, Date date, Date date2, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, bArr, bArr2, date, date2, (i & 64) != 0 ? 0L : j);
    }

    public final String getStripeLocationId() {
        return this.stripeLocationId;
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

    public final Date getLastActivatedAt() {
        return this.lastActivatedAt;
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
        if (!(other instanceof OfflineLocationEntity)) {
            return false;
        }
        OfflineLocationEntity offlineLocationEntity = (OfflineLocationEntity) other;
        return Intrinsics.areEqual(this.stripeLocationId, offlineLocationEntity.stripeLocationId) && Intrinsics.areEqual(getAccountId(), offlineLocationEntity.getAccountId()) && Arrays.equals(getEncryptedData(), offlineLocationEntity.getEncryptedData()) && Arrays.equals(getEncryptionIv(), offlineLocationEntity.getEncryptionIv()) && Intrinsics.areEqual(this.created, offlineLocationEntity.created) && getId() == offlineLocationEntity.getId();
    }

    public int hashCode() {
        return (((((((((this.stripeLocationId.hashCode() * 31) + getAccountId().hashCode()) * 31) + Arrays.hashCode(getEncryptedData())) * 31) + Arrays.hashCode(getEncryptionIv())) * 31) + this.created.hashCode()) * 31) + Long.hashCode(getId());
    }
}
