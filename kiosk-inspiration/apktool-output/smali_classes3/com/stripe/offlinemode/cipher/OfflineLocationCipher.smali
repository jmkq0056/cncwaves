.class public final Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;
.super Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;
.source "OfflineLocationCipher.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher<",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J.\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;",
        "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
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

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;-><init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V

    .line 50
    const-string p1, "offline_location"

    iput-object p1, p0, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->entityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildEncryptedEntity(Lcom/squareup/wire/Message;[B[B)Lcom/stripe/offlinemode/storage/OfflineEntity;
    .locals 0

    .line 13
    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->buildEncryptedEntity(Lcom/stripe/proto/model/offline_mode/OfflineLocation;[B[B)Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    return-object p1
.end method

.method public buildEncryptedEntity(Lcom/stripe/proto/model/offline_mode/OfflineLocation;[B[B)Lcom/stripe/offlinemode/storage/OfflineLocationEntity;
    .locals 10

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIV"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-wide v8, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->id:J

    .line 24
    iget-object v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    move-object v2, v0

    .line 25
    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->account_id:Ljava/lang/String;

    .line 28
    new-instance v6, Ljava/util/Date;

    iget-wide v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->created_at:J

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 29
    new-instance v7, Ljava/util/Date;

    iget-wide v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->last_activated_at:J

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 22
    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;-><init>(Ljava/lang/String;Ljava/lang/String;[B[BLjava/util/Date;Ljava/util/Date;J)V

    return-object v1
.end method

.method public bridge synthetic decode([BJ)Lcom/squareup/wire/Message;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decode([BJ)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/Message;

    return-object p1
.end method

.method public decode([BJ)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "encoded"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    const/16 v15, 0x3fe

    const/16 v16, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v2, p2

    invoke-static/range {v1 .. v16}, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineLocation;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/model/merchant/ApiLocationPb;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCommonFields(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)Ljava/util/List;
    .locals 0

    .line 13
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    check-cast p2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->getCommonFields(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCommonFields(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
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

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 42
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getStripeLocationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->account_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 45
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->created_at:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 46
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getLastActivatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v1, p2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->last_activated_at:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 41
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->entityName:Ljava/lang/String;

    return-object v0
.end method
