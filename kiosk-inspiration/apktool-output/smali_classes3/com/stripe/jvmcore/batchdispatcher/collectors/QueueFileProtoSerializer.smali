.class public final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;
.super Ljava/lang/Object;
.source "QueueFileProtoSerializer.kt"

# interfaces
.implements Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message<",
        "TT;*>;>",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0006\u0018\u0000 \u0012*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0012B#\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0011R\u0010\u0010\u0006\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;",
        "T",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;",
        "parser",
        "Lcom/squareup/wire/ProtoAdapter;",
        "default",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/Message;Lcom/stripe/logwriter/LogWriter;)V",
        "Lcom/squareup/wire/Message;",
        "fromBytes",
        "bytes",
        "",
        "([B)Lcom/squareup/wire/Message;",
        "toBytes",
        "record",
        "(Lcom/squareup/wire/Message;)[B",
        "Companion",
        "batchdispatcher"
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
.field public static final Companion:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final default:Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final parser:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->Companion:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer$Companion;

    .line 18
    const-string v0, "QueueFileProtoSerializer"

    sput-object v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/Message;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;TT;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->parser:Lcom/squareup/wire/ProtoAdapter;

    .line 13
    iput-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->default:Lcom/squareup/wire/Message;

    .line 14
    iput-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method


# virtual methods
.method public fromBytes([B)Lcom/squareup/wire/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->parser:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/Message;

    .line 26
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->logWriter:Lcom/stripe/logwriter/LogWriter;

    sget-object v1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Corrupt proto payload in the queue:"

    invoke-interface {p1, v1, v2, v0}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->default:Lcom/squareup/wire/Message;

    .line 28
    :goto_1
    check-cast p1, Lcom/squareup/wire/Message;

    return-object p1
.end method

.method public bridge synthetic fromBytes([B)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->fromBytes([B)Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1
.end method

.method public toBytes(Lcom/squareup/wire/Message;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->encode()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toBytes(Ljava/lang/Object;)[B
    .locals 0

    .line 11
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileProtoSerializer;->toBytes(Lcom/squareup/wire/Message;)[B

    move-result-object p1

    return-object p1
.end method
