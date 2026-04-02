.class public final Lcom/stripe/bbpos/sdk/ButtonCoordinates;
.super Lcom/squareup/wire/Message;
.source "ButtonCoordinates.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;,
        Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates;",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;",
        "top",
        "",
        "bottom",
        "left",
        "right",
        "unknownFields",
        "Lokio/ByteString;",
        "(IIIILokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "sdk-protos_release"
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
            "Lcom/stripe/bbpos/sdk/ButtonCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bottom:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final left:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final right:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final top:I
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->Companion:Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion;

    .line 157
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 156
    const-class v1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 160
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 156
    new-instance v3, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;-><init>(IIIILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIILokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 27
    iput p1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->top:I

    .line 35
    iput p2, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->bottom:I

    .line 43
    iput p3, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->left:I

    .line 51
    iput p4, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->right:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 59
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 26
    invoke-direct/range {p1 .. p6}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;-><init>(IIIILokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/bbpos/sdk/ButtonCoordinates;IIIILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 105
    iget p1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->top:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 106
    iget p2, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->bottom:I

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 107
    iget p3, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->left:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 108
    iget p4, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->right:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 109
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    .line 104
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->copy(IIIILokio/ByteString;)Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(IIIILokio/ByteString;)Lcom/stripe/bbpos/sdk/ButtonCoordinates;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;-><init>(IIIILokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 75
    :cond_2
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->top:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->top:I

    if-eq v1, v3, :cond_3

    return v2

    .line 76
    :cond_3
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->bottom:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->bottom:I

    if-eq v1, v3, :cond_4

    return v2

    .line 77
    :cond_4
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->left:I

    iget v3, p1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->left:I

    if-eq v1, v3, :cond_5

    return v2

    .line 78
    :cond_5
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->right:I

    iget p1, p1, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->right:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 83
    iget v0, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode:I

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 86
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 87
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 88
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    iput v0, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->newBuilder()Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;
    .locals 2

    .line 62
    new-instance v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;

    invoke-direct {v0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;-><init>()V

    .line 63
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->top:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->top:I

    .line 64
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->bottom:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->bottom:I

    .line 65
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->left:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->left:I

    .line 66
    iget v1, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->right:I

    iput v1, v0, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->right:I

    .line 67
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/sdk/ButtonCoordinates$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 97
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "top="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bottom="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "left="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "right="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stripe/bbpos/sdk/ButtonCoordinates;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ButtonCoordinates{"

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
