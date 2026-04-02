.class public final Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;
.super Ljava/lang/Object;
.source "OfflineApiRequestEntity.kt"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineEntity;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineApiRequestEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineApiRequestEntity.kt\ncom/stripe/offlinemode/storage/OfflineApiRequestEntity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B[\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0012J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\tH\u00c6\u0003J\t\u0010-\u001a\u00020\u000bH\u00c6\u0003J\t\u0010.\u001a\u00020\rH\u00c6\u0003J\t\u0010/\u001a\u00020\rH\u00c6\u0003J\t\u00100\u001a\u00020\u0010H\u00c6\u0003Jq\u00101\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005H\u00c6\u0001J\u0013\u00102\u001a\u00020\u000b2\u0008\u00103\u001a\u0004\u0018\u000104H\u0096\u0002J\u0008\u00105\u001a\u000206H\u0016J\t\u00107\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0007\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u000f\u001a\u00020\u00108\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u000c\u001a\u00020\r8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u000e\u001a\u00020\r8\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0016\u0010\u001e\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0014R\u001e\u0010\u0011\u001a\u00020\u00058\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\"R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0014R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0014R\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&\u00a8\u00068"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        "Lcom/stripe/offlinemode/storage/OfflineEntity;",
        "offlineId",
        "",
        "connectionId",
        "",
        "stripeEntityId",
        "accountId",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "deleted",
        "",
        "encryptedData",
        "",
        "encryptionIv",
        "created",
        "Ljava/util/Date;",
        "id",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V",
        "getAccountId",
        "()Ljava/lang/String;",
        "getConnectionId",
        "()J",
        "getCreated",
        "()Ljava/util/Date;",
        "getDeleted",
        "()Z",
        "getEncryptedData",
        "()[B",
        "getEncryptionIv",
        "entityId",
        "getEntityId",
        "getId",
        "setId",
        "(J)V",
        "getOfflineId",
        "getStripeEntityId",
        "getType",
        "()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final accountId:Ljava/lang/String;

.field private final connectionId:J

.field private final created:Ljava/util/Date;

.field private final deleted:Z

.field private final encryptedData:[B

.field private final encryptionIv:[B

.field private final entityId:Ljava/lang/String;

.field private id:J

.field private final offlineId:Ljava/lang/String;

.field private final stripeEntityId:Ljava/lang/String;

.field private final type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedData"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIv"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    .line 25
    iput-object p4, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->accountId:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 28
    iput-boolean p7, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    .line 29
    iput-object p8, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptedData:[B

    .line 30
    iput-object p9, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptionIv:[B

    .line 31
    iput-object p10, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    .line 32
    iput-wide p11, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->id:J

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 39
    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    move-object p1, p4

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p4, p2

    :goto_2
    if-eqz p4, :cond_4

    .line 38
    iput-object p4, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->entityId:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v13, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p11

    :goto_0
    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 22
    invoke-direct/range {v2 .. v14}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;JILjava/lang/Object;)Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-wide p2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p4, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p5, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->accountId:Ljava/lang/String;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p6, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-boolean p7, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p8, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptedData:[B

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p9, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptionIv:[B

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p10, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    :cond_8
    and-int/lit16 p13, p13, 0x200

    if-eqz p13, :cond_9

    iget-wide p11, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->id:J

    :cond_9
    move-wide p13, p11

    move-object p11, p9

    move-object p12, p10

    move p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p14}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    return v0
.end method

.method public final component7()[B
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptedData:[B

    return-object v0
.end method

.method public final component8()[B
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptionIv:[B

    return-object v0
.end method

.method public final component9()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;
    .locals 14

    const-string v0, "accountId"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedData"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIv"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v8, p7

    move-wide/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Z[B[BLjava/util/Date;J)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    iget-object v3, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 47
    :cond_2
    iget-wide v3, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    iget-wide v5, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 49
    :cond_4
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 50
    :cond_5
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    iget-object v3, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-eq v1, v3, :cond_6

    return v2

    .line 51
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    iget-boolean v3, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 52
    :cond_7
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptedData()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 53
    :cond_8
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptionIv()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 54
    :cond_9
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    iget-object v3, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 55
    :cond_a
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    .line 56
    :cond_b
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->entityId:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->entityId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    return-wide v0
.end method

.method public final getCreated()Ljava/util/Date;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    return-object v0
.end method

.method public final getDeleted()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    return v0
.end method

.method public getEncryptedData()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptedData:[B

    return-object v0
.end method

.method public getEncryptionIv()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptionIv:[B

    return-object v0
.end method

.method public final getEntityId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->id:J

    return-wide v0
.end method

.method public final getOfflineId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStripeEntityId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-wide v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-boolean v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->entityId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setId(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineApiRequestEntity(offlineId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->offlineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->connectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stripeEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->stripeEntityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptedData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptionIv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->encryptionIv:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->created:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
