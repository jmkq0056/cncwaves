.class public final Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;
.super Ljava/lang/Object;
.source "WriteLogMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWriteLogMessage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WriteLogMessage.kt\ncom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,23:1\n148#2:24\n*S KotlinDebug\n*F\n+ 1 WriteLogMessage.kt\ncom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt\n*L\n10#1:24\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u0004\u001a\u00020\u00052\u000e\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\r"
    }
    d2 = {
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "getLogger",
        "()Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "log",
        "",
        "source",
        "Lkotlin/reflect/KClass;",
        "",
        "message",
        "",
        "logLevel",
        "Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;",
        "jackrabbitclient_release"
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
.field private static final logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 24
    const-class v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public static final getLogger()Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 1

    .line 10
    sget-object v0, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-object v0
.end method

.method public static final log(Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;",
            ")V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "logLevel"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    return-void

    .line 20
    :cond_0
    sget-object p0, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-array p2, v0, [Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 19
    :cond_1
    sget-object p0, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-array p2, v0, [Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 18
    :cond_2
    sget-object p0, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->logger:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-array p2, v0, [Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method
