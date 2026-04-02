.class public final Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;
.super Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;
.source "OfflineConnectionCipher.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher<",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J.\u0010\u0016\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;",
        "Lcom/stripe/offlinemode/cipher/BaseOfflineCipher;",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;",
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
    const-string p1, "offline_connection"

    iput-object p1, p0, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->entityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildEncryptedEntity(Lcom/stripe/proto/model/offline_mode/OfflineConnection;[B[B)Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;
    .locals 12

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIV"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-wide v10, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    .line 24
    iget-wide v2, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    .line 25
    iget-object v6, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    .line 28
    new-instance v9, Ljava/util/Date;

    iget-wide v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 29
    iget-wide v4, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    .line 22
    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;-><init>(JJLjava/lang/String;[B[BLjava/util/Date;J)V

    return-object v1
.end method

.method public bridge synthetic buildEncryptedEntity(Lcom/squareup/wire/Message;[B[B)Lcom/stripe/offlinemode/storage/OfflineEntity;
    .locals 0

    .line 13
    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->buildEncryptedEntity(Lcom/stripe/proto/model/offline_mode/OfflineConnection;[B[B)Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    return-object p1
.end method

.method public bridge synthetic decode([BJ)Lcom/squareup/wire/Message;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->decode([BJ)Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/Message;

    return-object p1
.end method

.method public decode([BJ)Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "encoded"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    const v23, 0x1ffef

    const/16 v24, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v6, p2

    invoke-static/range {v1 .. v24}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lcom/stripe/proto/model/merchant/ApiLocationPb;JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v0

    return-object v0
.end method

.method public getCommonFields(Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
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

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getReaderId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getLocationId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 45
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 46
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getCreated()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

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

.method public bridge synthetic getCommonFields(Lcom/stripe/offlinemode/storage/OfflineEntity;Lcom/squareup/wire/Message;)Ljava/util/List;
    .locals 0

    .line 13
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    check-cast p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->getCommonFields(Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->entityName:Ljava/lang/String;

    return-object v0
.end method
