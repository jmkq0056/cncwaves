.class public final Lcom/stripe/proto/model/common/ResourceIdPb;
.super Lcom/squareup/wire/Message;
.source "ResourceIdPb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/ResourceIdPb$Builder;,
        Lcom/stripe/proto/model/common/ResourceIdPb$Companion;,
        Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;,
        Lcom/stripe/proto/model/common/ResourceIdPb$Region;,
        Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;,
        Lcom/stripe/proto/model/common/ResourceIdPb$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/ResourceIdPb;",
        "Lcom/stripe/proto/model/common/ResourceIdPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u001d\u001e\u001f !\"B_\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J`\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0008H\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ResourceIdPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/ResourceIdPb$Builder;",
        "region",
        "Lcom/stripe/proto/model/common/ResourceIdPb$Region;",
        "service_bundle",
        "Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;",
        "bundle_name",
        "",
        "encoding",
        "Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;",
        "content_type",
        "resource_name",
        "resource_path",
        "prefix",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "getService_bundle$annotations",
        "()V",
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
        "ContentEncoding",
        "Region",
        "ServiceBundle",
        "Status",
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
            "Lcom/stripe/proto/model/common/ResourceIdPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/ResourceIdPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bundle_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "bundleName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x8
    .end annotation
.end field

.field public final content_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "contentType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x4
    .end annotation
.end field

.field public final encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ResourceIdPb$ContentEncoding#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final prefix:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x7
    .end annotation
.end field

.field public final region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ResourceIdPb$Region#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final resource_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "resourceName"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x5
    .end annotation
.end field

.field public final resource_path:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "resourcePath"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x6
    .end annotation
.end field

.field public final service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.ResourceIdPb$ServiceBundle#ADAPTER"
        jsonName = "serviceBundle"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/ResourceIdPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/ResourceIdPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/ResourceIdPb;->Companion:Lcom/stripe/proto/model/common/ResourceIdPb$Companion;

    .line 283
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 282
    const-class v1, Lcom/stripe/proto/model/common/ResourceIdPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 286
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 282
    new-instance v3, Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/ResourceIdPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/ResourceIdPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/common/ResourceIdPb;-><init>(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service_bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle_name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content_type"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource_name"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource_path"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/stripe/proto/model/common/ResourceIdPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    .line 43
    iput-object p2, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    .line 53
    iput-object p3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 70
    iput-object p5, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    .line 107
    iput-object p8, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 42
    sget-object p1, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->REGION_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 52
    sget-object p2, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->SERVICE_BUNDLE_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    .line 31
    const-string v0, ""

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 69
    sget-object p4, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->CONTENT_ENCODING_INVALID:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 115
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 31
    invoke-direct/range {p2 .. p11}, Lcom/stripe/proto/model/common/ResourceIdPb;-><init>(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/ResourceIdPb;Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/ResourceIdPb;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 177
    iget-object p1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 178
    iget-object p2, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 179
    iget-object p3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 180
    iget-object p4, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 181
    iget-object p5, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 182
    iget-object p6, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 183
    iget-object p7, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 184
    iget-object p8, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 185
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object p9

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 176
    invoke-virtual/range {p2 .. p11}, Lcom/stripe/proto/model/common/ResourceIdPb;->copy(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/common/ResourceIdPb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getService_bundle$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "service_bundle is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/common/ResourceIdPb;
    .locals 11

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service_bundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle_name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content_type"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource_name"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resource_path"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/stripe/proto/model/common/ResourceIdPb;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/model/common/ResourceIdPb;-><init>(Lcom/stripe/proto/model/common/ResourceIdPb$Region;Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;Ljava/lang/String;Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/ResourceIdPb;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    if-eq v1, v3, :cond_3

    return v2

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    if-eq v1, v3, :cond_4

    return v2

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 138
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    if-eq v1, v3, :cond_6

    return v2

    .line 139
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 140
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 141
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 142
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 147
    iget v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->hashCode:I

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ResourceIdPb$Region;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 155
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 156
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    iput v0, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ResourceIdPb;->newBuilder()Lcom/stripe/proto/model/common/ResourceIdPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/ResourceIdPb$Builder;
    .locals 2

    .line 118
    new-instance v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->bundle_name:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->content_type:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_name:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->resource_path:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->prefix:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ResourceIdPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/ResourceIdPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 165
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "region="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->region:Lcom/stripe/proto/model/common/ResourceIdPb$Region;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service_bundle="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->service_bundle:Lcom/stripe/proto/model/common/ResourceIdPb$ServiceBundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->bundle_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encoding="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->encoding:Lcom/stripe/proto/model/common/ResourceIdPb$ContentEncoding;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->content_type:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resource_name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resource_path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->resource_path:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prefix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/ResourceIdPb;->prefix:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ResourceIdPb{"

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
