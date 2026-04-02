package com.stripe.offlinemode.cipher;

import com.squareup.wire.Message;
import com.stripe.offlinemode.storage.OfflineEntity;
import kotlin.Metadata;

/* JADX INFO: compiled from: OfflineEntityCipher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\bf\u0018\u0000*\u0012\b\u0000\u0010\u0001*\f\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\u00020\u0005J\u0015\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0001H&¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u00028\u00012\u0006\u0010\n\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineEntityCipher;", "M", "Lcom/squareup/wire/Message;", "E", "Lcom/stripe/offlinemode/storage/OfflineEntity;", "", "decrypt", "encrypted", "(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;", "encrypt", "toEncrypt", "(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineEntityCipher<M extends Message<M, ?>, E extends OfflineEntity> {
    M decrypt(E encrypted) throws OfflineCipherException;

    E encrypt(M toEncrypt) throws OfflineCipherException;
}
