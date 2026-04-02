.class public final Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;
.super Lcom/squareup/wire/Message;
.source "CotsContactlessResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsContactlessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtpaPinData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;,
        Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B-\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ.\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;",
        "clientPublicKey",
        "",
        "serverPublicKeyHash",
        "pinBlock",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "proto_release"
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final clientPublicKey:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final pinBlock:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final serverPublicKeyHash:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->Companion:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion;

    .line 478
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 477
    const-class v1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 481
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 477
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "clientPublicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverPublicKeyHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 370
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    .line 378
    iput-object p2, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    .line 386
    iput-object p3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    .line 369
    const-string v0, ""

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 394
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 369
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 436
    iget-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 437
    iget-object p2, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 438
    iget-object p3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 435
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;
    .locals 1

    const-string v0, "clientPublicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverPublicKeyHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinBlock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 407
    :cond_0
    instance-of v1, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 411
    :cond_4
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 416
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->hashCode:I

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 419
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 420
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 421
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    iput v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->newBuilder()Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;
    .locals 2

    .line 397
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;

    invoke-direct {v0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;-><init>()V

    .line 398
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->clientPublicKey:Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->serverPublicKeyHash:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->pinBlock:Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 429
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clientPublicKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serverPublicKeyHash="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pinBlock="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 432
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "TtpaPinData{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
