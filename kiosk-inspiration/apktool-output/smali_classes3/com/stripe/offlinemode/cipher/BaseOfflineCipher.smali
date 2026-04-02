.class public abstract Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;
.super Ljava/lang/Object;
.source "BaseOfflineCipher.kt"

# interfaces
.implements Lcom/stripe/offlinemode/cipher/OfflineEntityCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/cipher/BaseOfflineCipher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;*>;E::",
        "Lcom/stripe/offlinemode/storage/OfflineEntity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/offlinemode/cipher/OfflineEntityCipher<",
        "TM;TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseOfflineCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseOfflineCipher.kt\ncom/stripe/offlinemode/cipher/BaseOfflineCipher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,126:1\n819#2:127\n847#2,2:128\n1549#2:130\n1620#2,3:131\n1#3:134\n*S KotlinDebug\n*F\n+ 1 BaseOfflineCipher.kt\ncom/stripe/offlinemode/cipher/BaseOfflineCipher\n*L\n110#1:127\n110#1:128,2\n111#1:130\n111#1:131,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 **\u001c\u0008\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`\u0003*\u0008\u0008\u0001\u0010\u0004*\u00020\u00052\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00040\u0006:\u0001*B\u0015\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ%\u0010\u0010\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H&\u00a2\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0019H&\u00a2\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0015\u0010\u001e\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J3\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010$\u0012\u0006\u0012\u0004\u0018\u00010$0#0\"2\u0006\u0010%\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010&J\u001d\u0010\'\u001a\u00020(2\u0006\u0010%\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010)R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;",
        "M",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "E",
        "Lcom/stripe/offlinemode/storage/OfflineEntity;",
        "Lcom/stripe/offlinemode/cipher/OfflineEntityCipher;",
        "cipher",
        "Ljavax/crypto/Cipher;",
        "key",
        "Ljava/security/Key;",
        "(Ljavax/crypto/Cipher;Ljava/security/Key;)V",
        "entityName",
        "",
        "getEntityName",
        "()Ljava/lang/String;",
        "buildEncryptedEntity",
        "message",
        "encryptedData",
        "",
        "encryptionIV",
        "(Lcom/squareup/wire/Message;[B[B)Lcom/stripe/offlinemode/storage/OfflineEntity;",
        "decode",
        "encoded",
        "id",
        "",
        "([BJ)Lcom/squareup/wire/Message;",
        "decrypt",
        "encrypted",
        "(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;",
        "encrypt",
        "toEncrypt",
        "(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;",
        "getCommonFields",
        "",
        "Lkotlin/Pair;",
        "",
        "entity",
        "(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)Ljava/util/List;",
        "sanityCheck",
        "",
        "(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)V",
        "Companion",
        "offlinemode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/offlinemode/cipher/BaseOfflineCipher$Companion;

.field private static final TAG_LENGTH:I = 0x80


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final key:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->Companion:Lcom/stripe/offlinemode/cipher/BaseOfflineCipher$Companion;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V
    .locals 1

    const-string v0, "cipher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    .line 19
    iput-object p2, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->key:Ljava/security/Key;

    return-void
.end method

.method private final sanityCheck(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TM;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->getCommonFields(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 127
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 128
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    .line 110
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    check-cast p2, Ljava/util/List;

    .line 110
    check-cast p2, Ljava/lang/Iterable;

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 131
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Lkotlin/Pair;

    .line 111
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 112
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    return-void

    .line 113
    :cond_4
    new-instance p2, Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;

    invoke-virtual {p0}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->getEntityName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p2
.end method


# virtual methods
.method public abstract buildEncryptedEntity(Lcom/squareup/wire/Message;[B[B)Lcom/stripe/offlinemode/storage/OfflineEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;[B[B)TE;"
        }
    .end annotation
.end method

.method public abstract decode([BJ)Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ)TM;"
        }
    .end annotation
.end method

.method public decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/cipher/OfflineCipherException;
        }
    .end annotation

    const-string v0, "encrypted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    .line 62
    iget-object v2, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->key:Ljava/security/Key;

    .line 63
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-interface {p1}, Lcom/stripe/offlinemode/storage/OfflineEntity;->getEncryptionIv()[B

    move-result-object v4

    const/16 v5, 0x80

    invoke-direct {v3, v5, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    check-cast v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x2

    .line 60
    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 65
    iget-object v1, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-interface {p1}, Lcom/stripe/offlinemode/storage/OfflineEntity;->getEncryptedData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/stripe/offlinemode/storage/OfflineEntity;->getId()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->decode([BJ)Lcom/squareup/wire/Message;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    invoke-direct {p0, p1, v1}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->sanityCheck(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 59
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Lcom/stripe/offlinemode/cipher/OfflineDecryptionException;

    invoke-virtual {p0}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->getEntityName()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/stripe/offlinemode/cipher/OfflineDecryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/cipher/OfflineCipherException;
        }
    .end annotation

    const-string v0, "toEncrypt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    iget-object v1, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->key:Ljava/security/Key;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 38
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->encode()[B

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    const-string v3, "getIV(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->buildEncryptedEntity(Lcom/squareup/wire/Message;[B[B)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    invoke-direct {p0, v1, p1}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->sanityCheck(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 36
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lcom/stripe/offlinemode/cipher/OfflineEncryptionException;

    invoke-virtual {p0}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;->getEntityName()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/stripe/offlinemode/cipher/OfflineEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract getCommonFields(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TM;)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getEntityName()Ljava/lang/String;
.end method
