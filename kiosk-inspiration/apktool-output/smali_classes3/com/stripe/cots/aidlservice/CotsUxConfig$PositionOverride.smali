.class public final Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;
.super Lcom/squareup/wire/Message;
.source "CotsUxConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsUxConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionOverride"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;,
        Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;",
        "xBias",
        "",
        "yBias",
        "unknownFields",
        "Lokio/ByteString;",
        "(FFLokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
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
            "Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final xBias:F
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final yBias:F
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->Companion:Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion;

    .line 353
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 352
    const-class v1, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 356
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 352
    new-instance v3, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;-><init>(FFLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFLokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 267
    iput p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->xBias:F

    .line 275
    iput p2, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->yBias:F

    return-void
.end method

.method public synthetic constructor <init>(FFLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 283
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 266
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;-><init>(FFLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;FFLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 321
    iget p1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->xBias:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 322
    iget p2, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->yBias:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->unknownFields()Lokio/ByteString;

    move-result-object p3

    .line 320
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->copy(FFLokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(FFLokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;-><init>(FFLokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 295
    :cond_0
    instance-of v1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;

    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 297
    :cond_2
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->xBias:F

    iget v3, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->xBias:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    .line 298
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->yBias:F

    iget p1, p1, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->yBias:F

    cmpg-float p1, v1, p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 303
    iget v0, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->hashCode:I

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 306
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->xBias:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 307
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->yBias:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    iput v0, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->newBuilder()Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;
    .locals 2

    .line 286
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;

    invoke-direct {v0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;-><init>()V

    .line 287
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->xBias:F

    iput v1, v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->xBias:F

    .line 288
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->yBias:F

    iput v1, v0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->yBias:F

    .line 289
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 315
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xBias="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->xBias:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "yBias="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/cots/aidlservice/CotsUxConfig$PositionOverride;->yBias:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 317
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PositionOverride{"

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
