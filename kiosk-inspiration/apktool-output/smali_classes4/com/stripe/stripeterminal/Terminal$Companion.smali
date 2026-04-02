.class public final Lcom/stripe/stripeterminal/Terminal$Companion;
.super Ljava/lang/Object;
.source "Terminal.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/Terminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0007J*\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J4\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0008\u0010\u0014\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/Terminal$Companion;",
        "",
        "()V",
        "LOGGER",
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "instance",
        "Lcom/stripe/stripeterminal/Terminal;",
        "getInstance",
        "initTerminal",
        "",
        "context",
        "Landroid/content/Context;",
        "logLevel",
        "Lcom/stripe/stripeterminal/log/LogLevel;",
        "tokenProvider",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "offlineListener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "isInitialized",
        "",
        "core_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/Terminal$Companion;-><init>()V

    return-void
.end method

.method public static synthetic initTerminal$default(Lcom/stripe/stripeterminal/Terminal$Companion;Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 793
    sget-object p2, Lcom/stripe/stripeterminal/log/LogLevel;->NONE:Lcom/stripe/stripeterminal/log/LogLevel;

    .line 791
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V

    return-void
.end method

.method public static synthetic initTerminal$default(Lcom/stripe/stripeterminal/Terminal$Companion;Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    .line 813
    sget-object p2, Lcom/stripe/stripeterminal/log/LogLevel;->NONE:Lcom/stripe/stripeterminal/log/LogLevel;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 811
    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/stripe/stripeterminal/Terminal;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 854
    invoke-static {}, Lcom/stripe/stripeterminal/Terminal;->access$getInstance$cp()Lcom/stripe/stripeterminal/Terminal;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initTerminal must be called before attempting to get the instance"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal$default(Lcom/stripe/stripeterminal/Terminal$Companion;Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 796
    invoke-virtual/range {v1 .. v6}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-void
.end method

.method public final initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/stripe/stripeterminal/Terminal;->access$getInstance$cp()Lcom/stripe/stripeterminal/Terminal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 825
    sget-object v1, Lcom/stripe/stripeterminal/TerminalSdkManager;->INSTANCE:Lcom/stripe/stripeterminal/TerminalSdkManager;

    .line 827
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/log/LogLevel;->toCoreObject$core_publish()Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v3

    .line 831
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/DaggerDefaultSdkDependenciesComponent;->create()Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;

    move-result-object p2

    const-string v0, "create(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p2

    check-cast v7, Lcom/stripe/stripeterminal/dagger/Dependencies;

    .line 825
    sget-object p2, Lcom/stripe/stripeterminal/Terminal$Companion$initTerminal$2;->INSTANCE:Lcom/stripe/stripeterminal/Terminal$Companion$initTerminal$2;

    move-object v8, p2

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/stripe/stripeterminal/TerminalSdkManager;->initTerminalSession(Landroid/content/Context;Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Lcom/stripe/stripeterminal/dagger/Dependencies;Lkotlin/jvm/functions/Function1;)V

    return-void

    .line 818
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You can only call initTerminal *before* requesting the Terminal instance for the first time. If you are trying to switch accounts in your app, refer to the documentation for the `clearCachedCredentials` method."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 842
    invoke-static {}, Lcom/stripe/stripeterminal/Terminal;->access$getInstance$cp()Lcom/stripe/stripeterminal/Terminal;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
