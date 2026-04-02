.class public final Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;
.super Ljava/lang/Object;
.source "Log.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u000b\u001a\u00020\u000c\"\u0006\u0008\u0000\u0010\r\u0018\u0001H\u0086\u0008J\u0012\u0010\u000b\u001a\u00020\u000c2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;",
        "",
        "()V",
        "legacyProxyLogWriter",
        "Lcom/stripe/logwriter/ProxyLogWriter;",
        "getLegacyProxyLogWriter",
        "()Lcom/stripe/logwriter/ProxyLogWriter;",
        "legacyProxySimpleLogger",
        "Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;",
        "getLegacyProxySimpleLogger",
        "()Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;",
        "getLogger",
        "Lcom/stripe/jvmcore/logging/terminal/log/Log;",
        "T",
        "clazz",
        "Ljava/lang/Class;",
        "setUpForTest",
        "",
        "impl_release"
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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLegacyProxyLogWriter()Lcom/stripe/logwriter/ProxyLogWriter;
    .locals 1

    .line 120
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->access$getLegacyProxyLogWriter$cp()Lcom/stripe/logwriter/ProxyLogWriter;

    move-result-object v0

    return-object v0
.end method

.method public final getLegacyProxySimpleLogger()Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;
    .locals 1

    .line 130
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->access$getLegacyProxySimpleLogger$cp()Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getLogger()Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/stripe/jvmcore/logging/terminal/log/Log;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 148
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;
    .locals 3

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getSimpleName(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLegacyProxyLogWriter()Lcom/stripe/logwriter/ProxyLogWriter;

    move-result-object v1

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLegacyProxySimpleLogger()Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-direct {v0, p1, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;-><init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

.method public final setUpForTest()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLegacyProxyLogWriter()Lcom/stripe/logwriter/ProxyLogWriter;

    move-result-object v0

    sget-object v1, Lcom/stripe/logwriter/ConsoleLogWriter;->INSTANCE:Lcom/stripe/logwriter/ConsoleLogWriter;

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    invoke-interface {v0, v1}, Lcom/stripe/logwriter/ProxyLogWriter;->setWriter(Lcom/stripe/logwriter/LogWriter;)V

    return-void
.end method
