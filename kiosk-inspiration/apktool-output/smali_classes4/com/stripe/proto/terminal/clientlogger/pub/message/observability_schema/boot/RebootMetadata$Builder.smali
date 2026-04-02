.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RebootMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;",
        "()V",
        "reboot_reason",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;",
        "reboot_reason_property",
        "",
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
.field public reboot_reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

.field public reboot_reason_property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;
    .locals 4

    .line 127
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->reboot_reason_property:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->reboot_reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 127
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;Lokio/ByteString;)V

    return-object v0
.end method

.method public final reboot_reason(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->reboot_reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->reboot_reason_property:Ljava/lang/String;

    return-object p0
.end method

.method public final reboot_reason_property(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->reboot_reason_property:Ljava/lang/String;

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootMetadata$Builder;->reboot_reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/RebootReason;

    return-object p0
.end method
