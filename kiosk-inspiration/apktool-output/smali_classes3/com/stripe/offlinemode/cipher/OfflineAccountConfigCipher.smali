.class public final Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;
.super Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;
.source "OfflineAccountConfigCipher.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher<",
        "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;",
        "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J.\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;",
        "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;",
        "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;",
        "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
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
        "decode",
        "encoded",
        "id",
        "",
        "getCommonFields",
        "",
        "Lkotlin/Pair;",
        "",
        "entity",
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


# instance fields
.field private final entityName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V
    .locals 1

    const-string v0, "cipher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;-><init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V

    .line 46
    const-string p1, "offline_config"

    iput-object p1, p0, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->entityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildEncryptedEntity(Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;[B[B)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIV"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;->id:J

    .line 28
    iget-object v2, p1, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;->account_id:Ljava/lang/String;

    .line 24
    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;-><init>(Ljava/lang/String;[B[BJ)V

    return-object v1
.end method

.method public bridge synthetic buildEncryptedEntity(Lcom/squareup/wire/Message;[B[B)Lcom/stripe/offlinemode/storage/OfflineEntity;
    .locals 0

    .line 15
    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->buildEncryptedEntity(Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;[B[B)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    return-object p1
.end method

.method public bridge synthetic decode([BJ)Lcom/squareup/wire/Message;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->decode([BJ)Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/Message;

    return-object p1
.end method

.method public decode([BJ)Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;
    .locals 8

    const-string v0, "encoded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v1, p2

    invoke-static/range {v0 .. v7}, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;JLjava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    move-result-object p1

    return-object p1
.end method

.method public getCommonFields(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
            "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCommonFields(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)Ljava/util/List;
    .locals 0

    .line 15
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    check-cast p2, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->getCommonFields(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->entityName:Ljava/lang/String;

    return-object v0
.end method
