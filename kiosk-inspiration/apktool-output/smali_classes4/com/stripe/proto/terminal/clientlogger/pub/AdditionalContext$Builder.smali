.class public final Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AdditionalContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;",
        "()V",
        "action_id",
        "",
        "serial_number",
        "session_id",
        "terminal_action_id",
        "build",
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


# instance fields
.field public action_id:Ljava/lang/String;

.field public serial_number:Ljava/lang/String;

.field public session_id:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->action_id:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->serial_number:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->session_id:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->terminal_action_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;
    .locals 1

    const-string v0, "action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->action_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;
    .locals 6

    .line 177
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->action_id:Ljava/lang/String;

    .line 179
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->serial_number:Ljava/lang/String;

    .line 180
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->session_id:Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->terminal_action_id:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final serial_number(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;
    .locals 1

    const-string v0, "serial_number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->serial_number:Ljava/lang/String;

    return-object p0
.end method

.method public final session_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;
    .locals 1

    const-string v0, "session_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->session_id:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method
