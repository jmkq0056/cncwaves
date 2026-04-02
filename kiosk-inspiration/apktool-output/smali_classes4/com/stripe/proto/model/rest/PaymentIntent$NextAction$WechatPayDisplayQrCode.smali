.class public final Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
.super Lcom/squareup/wire/Message;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WechatPayDisplayQrCode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;,
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016BK\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJL\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;",
        "data_",
        "",
        "hosted_instructions_url",
        "image_data_url",
        "image_url_png",
        "image_url_svg",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
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
        "internal_release"
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
            "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final data_:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        declaredName = "data"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final hosted_instructions_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "hostedInstructionsUrl"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final image_data_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "imageDataUrl"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final image_url_png:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "imageUrlPng"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final image_url_svg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "imageUrlSvg"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->Companion:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion;

    .line 2019
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 2018
    const-class v1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 2022
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 2018
    new-instance v3, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1907
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1866
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    .line 1874
    iput-object p2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    .line 1882
    iput-object p3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    .line 1890
    iput-object p4, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    .line 1898
    iput-object p5, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 1906
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1865
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 1956
    iget-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 1957
    iget-object p2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 1958
    iget-object p3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 1959
    iget-object p4, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 1960
    iget-object p5, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 1961
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 1955
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1962
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1921
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1922
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1923
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1924
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1925
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1926
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 1927
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1932
    iget v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hashCode:I

    if-nez v0, :cond_5

    .line 1934
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1935
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1936
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1937
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1938
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1939
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 1940
    iput v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1865
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->newBuilder()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;
    .locals 2

    .line 1909
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;-><init>()V

    .line 1910
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->data_:Ljava/lang/String;

    .line 1911
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->hosted_instructions_url:Ljava/lang/String;

    .line 1912
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_data_url:Ljava/lang/String;

    .line 1913
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_url_png:Ljava/lang/String;

    .line 1914
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_url_svg:Ljava/lang/String;

    .line 1915
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1947
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1948
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hosted_instructions_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1949
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image_data_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1950
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image_url_png="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1951
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image_url_svg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1952
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "WechatPayDisplayQrCode{"

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
