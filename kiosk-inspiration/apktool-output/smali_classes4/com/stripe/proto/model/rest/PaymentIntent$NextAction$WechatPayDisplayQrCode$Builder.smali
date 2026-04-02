.class public final Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
        "()V",
        "data_",
        "",
        "hosted_instructions_url",
        "image_data_url",
        "image_url_png",
        "image_url_svg",
        "build",
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


# instance fields
.field public data_:Ljava/lang/String;

.field public hosted_instructions_url:Ljava/lang/String;

.field public image_data_url:Ljava/lang/String;

.field public image_url_png:Ljava/lang/String;

.field public image_url_svg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1964
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1964
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
    .locals 7

    .line 2005
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    .line 2006
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->data_:Ljava/lang/String;

    .line 2007
    iget-object v2, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->hosted_instructions_url:Ljava/lang/String;

    .line 2008
    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_data_url:Ljava/lang/String;

    .line 2009
    iget-object v4, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_url_png:Ljava/lang/String;

    .line 2010
    iget-object v5, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_url_svg:Ljava/lang/String;

    .line 2011
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 2005
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final data_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;
    .locals 0

    .line 1981
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->data_:Ljava/lang/String;

    return-object p0
.end method

.method public final hosted_instructions_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;
    .locals 0

    .line 1986
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->hosted_instructions_url:Ljava/lang/String;

    return-object p0
.end method

.method public final image_data_url(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;
    .locals 0

    .line 1991
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_data_url:Ljava/lang/String;

    return-object p0
.end method

.method public final image_url_png(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;
    .locals 0

    .line 1996
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_url_png:Ljava/lang/String;

    return-object p0
.end method

.method public final image_url_svg(Ljava/lang/String;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;
    .locals 0

    .line 2001
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Builder;->image_url_svg:Ljava/lang/String;

    return-object p0
.end method
