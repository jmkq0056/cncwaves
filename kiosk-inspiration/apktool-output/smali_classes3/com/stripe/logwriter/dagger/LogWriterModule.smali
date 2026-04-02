.class public final Lcom/stripe/logwriter/dagger/LogWriterModule;
.super Ljava/lang/Object;
.source "LogWriterModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/logwriter/dagger/LogWriterModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/logwriter/dagger/LogWriterModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/logwriter/dagger/LogWriterModule;",
        "",
        "()V",
        "provideDefaultProxyLogWriter",
        "Lcom/stripe/logwriter/ProxyLogWriter;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "providePlatformLogWriter",
        "Lcom/stripe/logwriter/PlatformLogWriter;",
        "provideTerminalLogWriter",
        "Lcom/stripe/logwriter/TerminalLogWriter;",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "writer",
        "Bindings",
        "wiring"
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
.field public static final INSTANCE:Lcom/stripe/logwriter/dagger/LogWriterModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/logwriter/dagger/LogWriterModule;

    invoke-direct {v0}, Lcom/stripe/logwriter/dagger/LogWriterModule;-><init>()V

    sput-object v0, Lcom/stripe/logwriter/dagger/LogWriterModule;->INSTANCE:Lcom/stripe/logwriter/dagger/LogWriterModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDefaultProxyLogWriter(Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/logwriter/ProxyLogWriter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/stripe/logwriter/DefaultProxyLogWriter;

    invoke-direct {v0, p1}, Lcom/stripe/logwriter/DefaultProxyLogWriter;-><init>(Lcom/stripe/logwriter/LogWriter;)V

    check-cast v0, Lcom/stripe/logwriter/ProxyLogWriter;

    return-object v0
.end method

.method public final providePlatformLogWriter()Lcom/stripe/logwriter/PlatformLogWriter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 34
    sget-object v0, Lcom/stripe/logwriter/PlatformLogWriter;->INSTANCE:Lcom/stripe/logwriter/PlatformLogWriter;

    return-object v0
.end method

.method public final provideTerminalLogWriter(Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/logwriter/PlatformLogWriter;)Lcom/stripe/logwriter/TerminalLogWriter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/stripe/logwriter/TerminalLogWriter;

    check-cast p2, Lcom/stripe/logwriter/LogWriter;

    invoke-direct {v0, p1, p2}, Lcom/stripe/logwriter/TerminalLogWriter;-><init>(Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method
