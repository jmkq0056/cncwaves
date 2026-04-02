package com.stripe.offlinemode.cipher;

import com.squareup.wire.Message;
import com.stripe.offlinemode.storage.OfflineEntity;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import java.security.Key;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseOfflineCipher.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b&\u0018\u0000 **\u001c\b\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u0003*\b\b\u0001\u0010\u0004*\u00020\u00052\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00040\u0006:\u0001*B\u0015\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ%\u0010\u0010\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H&¢\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001dJ\u0015\u0010\u001e\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010 J3\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010$\u0012\u0006\u0012\u0004\u0018\u00010$0#0\"2\u0006\u0010%\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H&¢\u0006\u0002\u0010&J\u001d\u0010'\u001a\u00020(2\u0006\u0010%\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010)R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;", "M", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "E", "Lcom/stripe/offlinemode/storage/OfflineEntity;", "Lcom/stripe/offlinemode/cipher/OfflineEntityCipher;", "cipher", "Ljavax/crypto/Cipher;", "key", "Ljava/security/Key;", "(Ljavax/crypto/Cipher;Ljava/security/Key;)V", "entityName", "", "getEntityName", "()Ljava/lang/String;", "buildEncryptedEntity", "message", "encryptedData", "", "encryptionIV", "(Lcom/squareup/wire/Message;[B[B)Lcom/stripe/offlinemode/storage/OfflineEntity;", "decode", "encoded", OfflineStorageConstantsKt.ID, "", "([BJ)Lcom/squareup/wire/Message;", "decrypt", "encrypted", "(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;", "encrypt", "toEncrypt", "(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;", "getCommonFields", "", "Lkotlin/Pair;", "", "entity", "(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)Ljava/util/List;", "sanityCheck", "", "(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)V", "Companion", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class BaseOfflineCipher<M extends Message<M, ?>, E extends OfflineEntity> implements OfflineEntityCipher<M, E> {
    private static final int TAG_LENGTH = 128;
    private final Cipher cipher;
    private final Key key;

    public abstract E buildEncryptedEntity(M message, byte[] encryptedData, byte[] encryptionIV);

    public abstract M decode(byte[] encoded, long id);

    public abstract List<Pair<Object, Object>> getCommonFields(E entity, M message);

    public abstract String getEntityName();

    public BaseOfflineCipher(Cipher cipher, Key key) {
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        Intrinsics.checkNotNullParameter(key, "key");
        this.cipher = cipher;
        this.key = key;
    }

    @Override // com.stripe.offlinemode.cipher.OfflineEntityCipher
    public E encrypt(M toEncrypt) throws OfflineCipherException {
        E e;
        Intrinsics.checkNotNullParameter(toEncrypt, "toEncrypt");
        try {
            synchronized (this.cipher) {
                this.cipher.init(1, this.key);
                byte[] bArrDoFinal = this.cipher.doFinal(toEncrypt.encode());
                Intrinsics.checkNotNull(bArrDoFinal);
                byte[] iv = this.cipher.getIV();
                Intrinsics.checkNotNullExpressionValue(iv, "getIV(...)");
                e = (E) buildEncryptedEntity(toEncrypt, bArrDoFinal, iv);
            }
            sanityCheck(e, toEncrypt);
            return e;
        } catch (Exception e2) {
            throw new OfflineEncryptionException(getEntityName(), e2);
        }
    }

    @Override // com.stripe.offlinemode.cipher.OfflineEntityCipher
    public M decrypt(E encrypted) throws OfflineCipherException {
        M m;
        Intrinsics.checkNotNullParameter(encrypted, "encrypted");
        try {
            synchronized (this.cipher) {
                this.cipher.init(2, this.key, new GCMParameterSpec(128, encrypted.getEncryptionIv()));
                byte[] bArrDoFinal = this.cipher.doFinal(encrypted.getEncryptedData());
                Intrinsics.checkNotNull(bArrDoFinal);
                m = (M) decode(bArrDoFinal, encrypted.getId());
            }
            sanityCheck(encrypted, m);
            return m;
        } catch (Exception e) {
            throw new OfflineDecryptionException(getEntityName(), e);
        }
    }

    private final void sanityCheck(E entity, M message) throws OfflineDataMismatchException {
        List<Pair<Object, Object>> commonFields = getCommonFields(entity, message);
        ArrayList arrayList = new ArrayList();
        for (Object obj : commonFields) {
            Pair pair = (Pair) obj;
            if (!Intrinsics.areEqual(pair.component1(), pair.component2())) {
                arrayList.add(obj);
            }
        }
        ArrayList<Pair> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        for (Pair pair2 : arrayList2) {
            arrayList3.add(TuplesKt.to(String.valueOf(pair2.component1()), String.valueOf(pair2.component2())));
        }
        ArrayList arrayList4 = arrayList3;
        if (arrayList4.isEmpty()) {
            arrayList4 = null;
        }
        if (arrayList4 != null) {
            throw new OfflineDataMismatchException(getEntityName(), arrayList4);
        }
    }
}
