.class public final Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;
.super Lcom/squareup/wire/Message;
.source "CroppedImagePackage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;,
        Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion;,
        Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B3\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ4\u0010\u000b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;",
        "cropped_image_ref",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;",
        "cropping_dimensions",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;",
        "original_image_ref",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)V",
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
        "RectangleDimensions",
        "terminal_release"
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImageRef#ADAPTER"
        jsonName = "croppedImageRef"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage$RectangleDimensions#ADAPTER"
        jsonName = "croppingDimensions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.common.ImageRef#ADAPTER"
        jsonName = "originalImageRef"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion;

    .line 157
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 156
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 160
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 156
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 30
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    .line 42
    iput-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    .line 54
    iput-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

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

    .line 63
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 26
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 105
    iget-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 106
    iget-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 107
    iget-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 104
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->copy(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    iget-object p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->hashCode:I

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 91
    iput v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;
    .locals 2

    .line 66
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    .line 68
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    .line 69
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    .line 70
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 98
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cropped_image_ref="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropped_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cropping_dimensions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->cropping_dimensions:Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage$RectangleDimensions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "original_image_ref="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;->original_image_ref:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CroppedImagePackage{"

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
