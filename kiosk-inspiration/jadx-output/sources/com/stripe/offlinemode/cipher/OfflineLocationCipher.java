package com.stripe.offlinemode.cipher;

import com.stripe.offlinemode.storage.OfflineLocationEntity;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.OfflineLocation;
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

/* JADX INFO: compiled from: OfflineLocationCipher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J.\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;", "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;", "cipher", "Ljavax/crypto/Cipher;", "key", "Ljava/security/Key;", "(Ljavax/crypto/Cipher;Ljava/security/Key;)V", "entityName", "", "getEntityName", "()Ljava/lang/String;", "buildEncryptedEntity", "message", "encryptedData", "", "encryptionIV", "decode", "encoded", OfflineStorageConstantsKt.ID, "", "getCommonFields", "", "Lkotlin/Pair;", "", "entity", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineLocationCipher extends BaseOfflineCipher<OfflineLocation, OfflineLocationEntity> {
    private final String entityName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineLocationCipher(Cipher cipher, Key key) {
        super(cipher, key);
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        Intrinsics.checkNotNullParameter(key, "key");
        this.entityName = OfflineStorageConstantsKt.OFFLINE_LOCATION;
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public OfflineLocationEntity buildEncryptedEntity(OfflineLocation message, byte[] encryptedData, byte[] encryptionIV) {
        String str;
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(encryptedData, "encryptedData");
        Intrinsics.checkNotNullParameter(encryptionIV, "encryptionIV");
        long j = message.id;
        ApiLocationPb apiLocationPb = message.full_location;
        if (apiLocationPb == null || (str = apiLocationPb.id) == null) {
            str = "";
        }
        return new OfflineLocationEntity(str, message.account_id, encryptedData, encryptionIV, new Date(message.created_at), new Date(message.last_activated_at), j);
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public OfflineLocation decode(byte[] encoded, long id) throws IOException {
        Intrinsics.checkNotNullParameter(encoded, "encoded");
        OfflineLocation offlineLocationDecode = OfflineLocation.ADAPTER.decode(encoded);
        return offlineLocationDecode.copy((WinError.ERROR_NOTIFY_ENUM_DIR & 1) != 0 ? offlineLocationDecode.id : id, (WinError.ERROR_NOTIFY_ENUM_DIR & 2) != 0 ? offlineLocationDecode.account_id : null, (WinError.ERROR_NOTIFY_ENUM_DIR & 4) != 0 ? offlineLocationDecode.created_at : 0L, (WinError.ERROR_NOTIFY_ENUM_DIR & 8) != 0 ? offlineLocationDecode.last_activated_at : 0L, (WinError.ERROR_NOTIFY_ENUM_DIR & 16) != 0 ? offlineLocationDecode.tipping_config : null, (WinError.ERROR_NOTIFY_ENUM_DIR & 32) != 0 ? offlineLocationDecode.bluetooth_auto_reconnect_config : null, (WinError.ERROR_NOTIFY_ENUM_DIR & 64) != 0 ? offlineLocationDecode.usb_auto_reconnect_config : null, (WinError.ERROR_NOTIFY_ENUM_DIR & 128) != 0 ? offlineLocationDecode.full_location : null, (WinError.ERROR_NOTIFY_ENUM_DIR & 256) != 0 ? offlineLocationDecode.offline_enabled : false, (WinError.ERROR_NOTIFY_ENUM_DIR & 512) != 0 ? offlineLocationDecode.unknownFields() : null);
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public List<Pair<Object, Object>> getCommonFields(OfflineLocationEntity entity, OfflineLocation message) {
        Intrinsics.checkNotNullParameter(entity, "entity");
        Intrinsics.checkNotNullParameter(message, "message");
        Pair[] pairArr = new Pair[5];
        pairArr[0] = TuplesKt.to(Long.valueOf(entity.getId()), Long.valueOf(message.id));
        String stripeLocationId = entity.getStripeLocationId();
        ApiLocationPb apiLocationPb = message.full_location;
        pairArr[1] = TuplesKt.to(stripeLocationId, apiLocationPb != null ? apiLocationPb.id : null);
        pairArr[2] = TuplesKt.to(entity.getAccountId(), message.account_id);
        pairArr[3] = TuplesKt.to(Long.valueOf(entity.getCreated().getTime()), Long.valueOf(message.created_at));
        pairArr[4] = TuplesKt.to(Long.valueOf(entity.getLastActivatedAt().getTime()), Long.valueOf(message.last_activated_at));
        return CollectionsKt.listOf((Object[]) pairArr);
    }

    @Override // com.stripe.offlinemode.cipher.BaseOfflineCipher
    public String getEntityName() {
        return this.entityName;
    }
}
