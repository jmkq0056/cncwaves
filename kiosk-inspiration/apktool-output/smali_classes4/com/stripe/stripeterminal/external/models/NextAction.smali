.class public final Lcom/stripe/stripeterminal/external/models/NextAction;
.super Ljava/lang/Object;
.source "NextAction.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;,
        Lcom/stripe/stripeterminal/external/models/NextAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 .2\u00060\u0001j\u0002`\u0002:\u0002-.BA\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fB1\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J7\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\n\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0007J\t\u0010#\u001a\u00020\u0004H\u00d6\u0001J\t\u0010$\u001a\u00020\u0006H\u00d6\u0001J&\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u00c1\u0001\u00a2\u0006\u0002\u0008,R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006/"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/NextAction;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "type",
        "",
        "wechatPayDisplayQrCode",
        "Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;",
        "redirectToUrl",
        "Lcom/stripe/stripeterminal/external/models/RedirectUrl;",
        "useStripeSdk",
        "Lcom/stripe/stripeterminal/external/models/UseStripeSdk;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;)V",
        "getRedirectToUrl",
        "()Lcom/stripe/stripeterminal/external/models/RedirectUrl;",
        "getType",
        "()Ljava/lang/String;",
        "getUseStripeSdk",
        "()Lcom/stripe/stripeterminal/external/models/UseStripeSdk;",
        "getWechatPayDisplayQrCode",
        "()Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "getNonCardPaymentMethodTypeAndImageUrl",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/NextAction$Companion;

.field private static final REDIRECT_TO_URL:Ljava/lang/String; = "redirect_to_url"

.field public static final USE_STRIPE_SDK:Ljava/lang/String; = "use_stripe_sdk"

.field private static final WECHAT_PAY_DISPLAY_QR_CODE:Ljava/lang/String; = "wechat_pay_display_qr_code"


# instance fields
.field private final redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

.field private final type:Ljava/lang/String;

.field private final useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

.field private final wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/NextAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/NextAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/NextAction;->Companion:Lcom/stripe/stripeterminal/external/models/NextAction$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p6, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p6, :cond_0

    .line 11
    sget-object p6, Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;

    invoke-virtual {p6}, Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 p6, 0x0

    if-nez p2, :cond_1

    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    :goto_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    return-void

    :cond_3
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    .line 24
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    .line 28
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/NextAction;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/NextAction;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/NextAction;->copy(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;)Lcom/stripe/stripeterminal/external/models/NextAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/NextAction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 11
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/stripe/stripeterminal/external/models/RedirectUrl$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/RedirectUrl$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/stripe/stripeterminal/external/models/UseStripeSdk$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/UseStripeSdk$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/RedirectUrl;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    return-object v0
.end method

.method public final component4()Lcom/stripe/stripeterminal/external/models/UseStripeSdk;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;)Lcom/stripe/stripeterminal/external/models/NextAction;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/NextAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/NextAction;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;Lcom/stripe/stripeterminal/external/models/RedirectUrl;Lcom/stripe/stripeterminal/external/models/UseStripeSdk;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/NextAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/NextAction;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getNonCardPaymentMethodTypeAndImageUrl()Ljava/lang/String;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    .line 34
    const-string v1, "wechat_pay_display_qr_code"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;->getImageUrlPng()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WeChat Pay next action should never have null imageUrlPng."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    const-string v1, "redirect_to_url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/RedirectUrl;->getQrCode$public_release()Lcom/stripe/stripeterminal/external/models/QrCode;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/QrCode;->getImageUrlPng()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "redirect_url.qr_code should never have null imageUrlPng on terminal."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v2
.end method

.method public final getRedirectToUrl()Lcom/stripe/stripeterminal/external/models/RedirectUrl;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseStripeSdk()Lcom/stripe/stripeterminal/external/models/UseStripeSdk;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    return-object v0
.end method

.method public final getWechatPayDisplayQrCode()Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/RedirectUrl;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/UseStripeSdk;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NextAction(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wechatPayDisplayQrCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->wechatPayDisplayQrCode:Lcom/stripe/stripeterminal/external/models/WechatPayDisplayQrCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectToUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->redirectToUrl:Lcom/stripe/stripeterminal/external/models/RedirectUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useStripeSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/NextAction;->useStripeSdk:Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
