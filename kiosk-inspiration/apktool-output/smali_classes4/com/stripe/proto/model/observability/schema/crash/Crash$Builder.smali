.class public final Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Crash.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/observability/schema/crash/Crash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/observability/schema/crash/Crash;",
        "Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/observability/schema/crash/Crash;",
        "()V",
        "is_foreground",
        "",
        "message",
        "",
        "stack_trace",
        "thread_name",
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
.field public is_foreground:Z

.field public message:Ljava/lang/String;

.field public stack_trace:Ljava/lang/String;

.field public thread_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->message:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->stack_trace:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->thread_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->build()Lcom/stripe/proto/model/observability/schema/crash/Crash;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/observability/schema/crash/Crash;
    .locals 6

    .line 152
    new-instance v0, Lcom/stripe/proto/model/observability/schema/crash/Crash;

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->message:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->stack_trace:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->thread_name:Ljava/lang/String;

    .line 156
    iget-boolean v4, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->is_foreground:Z

    .line 157
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/observability/schema/crash/Crash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V

    return-object v0
.end method

.method public final is_foreground(Z)Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->is_foreground:Z

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final stack_trace(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;
    .locals 1

    const-string v0, "stack_trace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->stack_trace:Ljava/lang/String;

    return-object p0
.end method

.method public final thread_name(Ljava/lang/String;)Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;
    .locals 1

    const-string v0, "thread_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/crash/Crash$Builder;->thread_name:Ljava/lang/String;

    return-object p0
.end method
