.class public final Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;
.super Lcom/squareup/wire/Message;
.source "SemanticVersionedAssetMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;,
        Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;,
        Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019BK\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJL\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;",
        "name",
        "",
        "version",
        "is_debug",
        "",
        "signed_key",
        "build_variant",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;",
        "product_id",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "BuildVariantType",
        "Builder",
        "Companion",
        "common_release"
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
            "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.SemanticVersionedAssetMetadata$BuildVariantType#ADAPTER"
        jsonName = "buildVariant"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final is_debug:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "isDebug"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final product_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "productId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final signed_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "signedKey"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final version:Ljava/lang/String;
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

    new-instance v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->Companion:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion;

    .line 240
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 239
    const-class v1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 243
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 239
    new-instance v3, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signed_key"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build_variant"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "product_id"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->version:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->is_debug:Z

    .line 65
    iput-object p4, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->signed_key:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    .line 89
    iput-object p6, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->product_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    .line 30
    const-string v0, ""

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 85
    sget-object p5, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;->BUILD_VARIANT_TYPE_INVALID:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 98
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 30
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 152
    iget-object p1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 153
    iget-object p2, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->version:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 154
    iget-boolean p3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->is_debug:Z

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 155
    iget-object p4, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->signed_key:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 156
    iget-object p5, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 157
    iget-object p6, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->product_id:Ljava/lang/String;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 151
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;
    .locals 9

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signed_key"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "build_variant"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "product_id"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance v1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 114
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 118
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->is_debug:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->is_debug:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->signed_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->signed_key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    iget-object v3, p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    if-eq v1, v3, :cond_7

    return v2

    .line 121
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->product_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->product_id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 126
    iget v0, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->hashCode:I

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 131
    iget-boolean v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->is_debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->signed_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->product_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    iput v0, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->newBuilder()Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;
    .locals 2

    .line 101
    new-instance v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->name:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->version:Ljava/lang/String;

    .line 104
    iget-boolean v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->is_debug:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->is_debug:Z

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->signed_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->signed_key:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    iput-object v1, v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->product_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->product_id:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 142
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_debug="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->is_debug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signed_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->signed_key:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "build_variant="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->build_variant:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata$BuildVariantType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "product_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;->product_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SemanticVersionedAssetMetadata{"

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
