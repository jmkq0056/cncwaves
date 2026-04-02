.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FormsConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0012\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;",
        "()V",
        "handoff_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;",
        "interstitial_timeout_ms",
        "",
        "interstitial_timeout_seconds",
        "jackrabbit_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;",
        "sdi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;",
        "build",
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


# instance fields
.field public handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

.field public interstitial_timeout_ms:I

.field public interstitial_timeout_seconds:I

.field public jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

.field public sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;
    .locals 7

    .line 195
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    .line 197
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    .line 198
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    .line 199
    iget v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->interstitial_timeout_seconds:I

    .line 200
    iget v5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->interstitial_timeout_ms:I

    .line 201
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;IILokio/ByteString;)V

    return-object v0
.end method

.method public final handoff_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "handoff_config is deprecated"
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->handoff_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Handoff;

    return-object p0
.end method

.method public final interstitial_timeout_ms(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;
    .locals 0

    .line 191
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->interstitial_timeout_ms:I

    return-object p0
.end method

.method public final interstitial_timeout_seconds(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "interstitial_timeout_seconds is deprecated"
    .end annotation

    .line 183
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->interstitial_timeout_seconds:I

    return-object p0
.end method

.method public final jackrabbit_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->jackrabbit_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$JackRabbit;

    return-object p0
.end method

.method public final sdi_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;)Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Builder;->sdi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb$Sdi;

    return-object p0
.end method
