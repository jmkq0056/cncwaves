.class public final Lcom/stripe/jvmcore/logging/LogModelExtKt;
.super Ljava/lang/Object;
.source "LogModelExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0001H\u0002\u001a\u001a\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "MAX_MESSAGE_LENGTH",
        "",
        "MAX_STACK_TRACE_LENGTH",
        "TRUNCATED_LINE",
        "",
        "truncateString",
        "string",
        "maxLength",
        "toLogModel",
        "Lcom/stripe/proto/model/observability/schema/crash/Crash;",
        "",
        "isForeground",
        "",
        "thread",
        "Ljava/lang/Thread;",
        "logging"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final MAX_MESSAGE_LENGTH:I = 0x10000

.field public static final MAX_STACK_TRACE_LENGTH:I = 0x10000

.field public static final TRUNCATED_LINE:Ljava/lang/String; = "\n<truncated>"


# direct methods
.method public static final toLogModel(Ljava/lang/Throwable;ZLjava/lang/Thread;)Lcom/stripe/proto/model/observability/schema/crash/Crash;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v1, Lcom/stripe/proto/model/observability/schema/crash/Crash;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/stripe/jvmcore/logging/LogModelExtKt;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {p0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/stripe/jvmcore/logging/LogModelExtKt;->truncateString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string p0, "getName(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move v5, p1

    move-object v2, v0

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/observability/schema/crash/Crash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private static final truncateString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, -0xc

    .line 31
    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string p0, "\n<truncated>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
