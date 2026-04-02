package com.stripe.offlinemode.cipher;

import com.stripe.offlinemode.storage.OfflineApiRequestEntity;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.security.Key;
import java.util.Date;
import java.util.List;
import javax.crypto.Cipher;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineApiRequestCipher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J.\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;", "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;", "cipher", "Ljavax/crypto/Cipher;", "key", "Ljava/security/Key;", "(Ljavax/crypto/Cipher;Ljava/security/Key;)V", "entityName", "", "getEntityName", "()Ljava/lang/String;", "buildEncryptedEntity", "message", "encryptedData", "", "encryptionIV", "decode", "encoded", OfflineStorageConstantsKt.ID, "", "getCommonFields", "", "Lkotlin/Pair;", "", "entity", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineApiRequestCipher extends BaseOfflineCipher<OfflineApiRequest, OfflineApiRequestEntity> {
    private final String entityName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineApiRequestCipher(Cipher cipher, Key key) {
        super(cipher, key);
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        Intrinsics.checkNotNullParameter(key, "key");
        this.entityName = OfflineStorageConstantsKt.OFFLINE_API_REQUEST;
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public OfflineApiRequestEntity buildEncryptedEntity(OfflineApiRequest message, byte[] encryptedData, byte[] encryptionIV) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIV, "encryptionIV");
        return new OfflineApiRequestEntity(message.offline_id, message.connection_id, message.stripe_entity_id, message.account_id, message.type, false, encryptedData, encryptionIV, new Date(message.created_at), message.id);
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public OfflineApiRequest decode(byte[] encoded, long id) throws IOException {
        Intrinsics.checkNotNullParameter(encoded, "encoded");
        OfflineApiRequest offlineApiRequestDecode = OfflineApiRequest.ADAPTER.decode(encoded);
        return offlineApiRequestDecode.copy((WinError.ERROR_ACCOUNT_DISABLED & 1) != 0 ? offlineApiRequestDecode.type : null, (WinError.ERROR_ACCOUNT_DISABLED & 2) != 0 ? offlineApiRequestDecode.account_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 4) != 0 ? offlineApiRequestDecode.offline_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 8) != 0 ? offlineApiRequestDecode.stripe_entity_id : null, (WinError.ERROR_ACCOUNT_DISABLED & 16) != 0 ? offlineApiRequestDecode.connection_id : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 32) != 0 ? offlineApiRequestDecode.id : id, (WinError.ERROR_ACCOUNT_DISABLED & 64) != 0 ? offlineApiRequestDecode.headers : null, (WinError.ERROR_ACCOUNT_DISABLED & 128) != 0 ? offlineApiRequestDecode.params : null, (WinError.ERROR_ACCOUNT_DISABLED & 256) != 0 ? offlineApiRequestDecode.endpoint : null, (WinError.ERROR_ACCOUNT_DISABLED & 512) != 0 ? offlineApiRequestDecode.payment_intent : null, (WinError.ERROR_ACCOUNT_DISABLED & 1024) != 0 ? offlineApiRequestDecode.created_at : 0L, (WinError.ERROR_ACCOUNT_DISABLED & 2048) != 0 ? offlineApiRequestDecode.setup_intent : null, (WinError.ERROR_ACCOUNT_DISABLED & 4096) != 0 ? offlineApiRequestDecode.unknownFields() : null);
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public List<Pair<Object, Object>> getCommonFields(OfflineApiRequestEntity entity, OfflineApiRequest message) {
        Intrinsics.checkNotNullParameter(entity, "entity");
        Intrinsics.checkNotNullParameter(message, "message");
        return CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(Long.valueOf(entity.getId()), Long.valueOf(message.id)), TuplesKt.to(entity.getOfflineId(), message.offline_id), TuplesKt.to(Long.valueOf(entity.getConnectionId()), Long.valueOf(message.connection_id)), TuplesKt.to(entity.getStripeEntityId(), message.stripe_entity_id), TuplesKt.to(entity.getAccountId(), message.account_id), TuplesKt.to(entity.getType(), message.type), TuplesKt.to(Long.valueOf(entity.getCreated().getTime()), Long.valueOf(message.created_at))});
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public String getEntityName() {
        return this.entityName;
    }
}
