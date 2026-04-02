.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UsbAutoReconnectConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "()V",
        "attempt_delay_millis",
        "",
        "max_retry_attempts",
        "",
        "max_timeout_seconds",
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
.field public attempt_delay_millis:J

.field public max_retry_attempts:I

.field public max_timeout_seconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final attempt_delay_millis(J)Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->attempt_delay_millis:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;
    .locals 6

    .line 127
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    .line 128
    iget v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->max_timeout_seconds:I

    .line 129
    iget v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->max_retry_attempts:I

    .line 130
    iget-wide v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->attempt_delay_millis:J

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;-><init>(IIJLokio/ByteString;)V

    return-object v0
.end method

.method public final max_retry_attempts(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;
    .locals 0

    .line 118
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->max_retry_attempts:I

    return-object p0
.end method

.method public final max_timeout_seconds(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;
    .locals 0

    .line 113
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb$Builder;->max_timeout_seconds:I

    return-object p0
.end method
