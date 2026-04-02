.class public final Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
.super Lcom/squareup/wire/Message;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;,
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Companion;,
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;,
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;,
        Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0017\u0018\u0019\u001a\u001bB?\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ@\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;",
        "type",
        "",
        "wechat_pay_display_qr_code",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
        "redirect_to_url",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;",
        "use_stripe_sdk",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;)V",
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
        "RedirectToUrl",
        "UseStripeSdk",
        "WechatPayDisplayQrCode",
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
            "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent$NextAction$RedirectToUrl#ADAPTER"
        jsonName = "redirectToUrl"
        oneofName = "data_one_of"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent$NextAction$UseStripeSdk#ADAPTER"
        jsonName = "useStripeSdk"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent$NextAction$WechatPayDisplayQrCode#ADAPTER"
        jsonName = "wechatPayDisplayQrCode"
        oneofName = "data_one_of"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->Companion:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Companion;

    .line 1795
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1794
    const-class v1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1798
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1794
    new-instance v3, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1655
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

    .line 1662
    iput-object p2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    .line 1671
    iput-object p3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    .line 1680
    iput-object p4, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    .line 1692
    invoke-static {p2, p3}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of wechat_pay_display_qr_code, redirect_to_url may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 1689
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1654
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 1741
    iget-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 1742
    iget-object p2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 1743
    iget-object p3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 1744
    iget-object p4, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 1745
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 1740
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;
    .locals 7

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1746
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1709
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1710
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1711
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1712
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1713
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1714
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1719
    iget v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->hashCode:I

    if-nez v0, :cond_4

    .line 1721
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1722
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

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

    .line 1723
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1724
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1725
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 1726
    iput v0, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1654
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->newBuilder()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;
    .locals 2

    .line 1698
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;-><init>()V

    .line 1699
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->type:Ljava/lang/String;

    .line 1700
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    .line 1701
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    .line 1702
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    .line 1703
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1733
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1734
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wechat_pay_display_qr_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->wechat_pay_display_qr_code:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1735
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "redirect_to_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->redirect_to_url:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$RedirectToUrl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1736
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "use_stripe_sdk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;->use_stripe_sdk:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$UseStripeSdk;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1737
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "NextAction{"

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
