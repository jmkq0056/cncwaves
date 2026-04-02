package com.stripe.offlinemode.storage;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineAccountConfigEntity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u001e\u0010\u0007\u001a\u00020\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;", "Lcom/stripe/offlinemode/storage/OfflineEntity;", "accountId", "", "encryptedData", "", "encryptionIv", OfflineStorageConstantsKt.ID, "", "(Ljava/lang/String;[B[BJ)V", "getAccountId", "()Ljava/lang/String;", "getEncryptedData", "()[B", "getEncryptionIv", "getId", "()J", "setId", "(J)V", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineAccountConfigEntity implements OfflineEntity {
    private final String accountId;
    private final byte[] encryptedData;
    private final byte[] encryptionIv;
    private long id;

    public static /* synthetic */ OfflineAccountConfigEntity copy$default(OfflineAccountConfigEntity offlineAccountConfigEntity, String str, byte[] bArr, byte[] bArr2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = offlineAccountConfigEntity.accountId;
        }
        if ((i & 2) != 0) {
            bArr = offlineAccountConfigEntity.encryptedData;
        }
        if ((i & 4) != 0) {
            bArr2 = offlineAccountConfigEntity.encryptionIv;
        }
        if ((i & 8) != 0) {
            j = offlineAccountConfigEntity.id;
        }
        byte[] bArr3 = bArr2;
        return offlineAccountConfigEntity.copy(str, bArr, bArr3, j);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAccountId() {
        return this.accountId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final byte[] getEncryptedData() {
        return this.encryptedData;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final byte[] getEncryptionIv() {
        return this.encryptionIv;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getId() {
        return this.id;
    }

    public final OfflineAccountConfigEntity copy(String accountId, byte[] encryptedData, byte[] encryptionIv, long id) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        return new OfflineAccountConfigEntity(accountId, encryptedData, encryptionIv, id);
    }

    public String toString() {
        return "OfflineAccountConfigEntity(accountId=" + this.accountId + ", encryptedData=" + Arrays.toString(this.encryptedData) + ", encryptionIv=" + Arrays.toString(this.encryptionIv) + ", id=" + this.id + ')';
    }

    public OfflineAccountConfigEntity(String accountId, byte[] encryptedData, byte[] encryptionIv, long j) {
        Intrinsics.checkNotNullParameter(accountId, "accountId");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIv, "encryptionIv");
        this.accountId = accountId;
        this.encryptedData = encryptedData;
        this.encryptionIv = encryptionIv;
        this.id = j;
    }

    public /* synthetic */ OfflineAccountConfigEntity(String str, byte[] bArr, byte[] bArr2, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bArr, bArr2, (i & 8) != 0 ? 0L : j);
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
        if (!(other instanceof OfflineAccountConfigEntity)) {
            return false;
        }
        OfflineAccountConfigEntity offlineAccountConfigEntity = (OfflineAccountConfigEntity) other;
        return Intrinsics.areEqual(getAccountId(), offlineAccountConfigEntity.getAccountId()) && Arrays.equals(getEncryptedData(), offlineAccountConfigEntity.getEncryptedData()) && Arrays.equals(getEncryptionIv(), offlineAccountConfigEntity.getEncryptionIv()) && getId() == offlineAccountConfigEntity.getId();
    }

    public int hashCode() {
        return (((((getAccountId().hashCode() * 31) + Arrays.hashCode(getEncryptedData())) * 31) + Arrays.hashCode(getEncryptionIv())) * 31) + Long.hashCode(getId());
    }
}
