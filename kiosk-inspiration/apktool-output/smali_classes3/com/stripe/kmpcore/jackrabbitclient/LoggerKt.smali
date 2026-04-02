.class public final Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010\u0007\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001e\u0010\u0008\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\t"
    }
    d2 = {
        "logError",
        "",
        "source",
        "Lkotlin/reflect/KClass;",
        "",
        "message",
        "",
        "logInfo",
        "logWarn",
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


# direct methods
.method public static final logError(Lkotlin/reflect/KClass;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;->ERROR:Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->log(Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;)V

    return-void
.end method

.method public static final logInfo(Lkotlin/reflect/KClass;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;->INFO:Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->log(Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;)V

    return-void
.end method

.method public static final logWarn(Lkotlin/reflect/KClass;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;->WARN:Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;

    invoke-static {p0, p1, v0}, Lcom/stripe/kmpcore/jackrabbitclient/WriteLogMessageKt;->log(Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/stripe/kmpcore/jackrabbitclient/LogLevel;)V

    return-void
.end method
