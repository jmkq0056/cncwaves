.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;
.super Ljava/lang/Object;
.source "LoggerExceptionListenerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoggerExceptionListenerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoggerExceptionListenerModule.kt\ncom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,57:1\n148#2:58\n*S KotlinDebug\n*F\n+ 1 LoggerExceptionListenerModule.kt\ncom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule\n*L\n38#1:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0011\u0010\u0005\u001a\r\u0012\t\u0012\u00070\u0007\u00a2\u0006\u0002\u0008\u00080\u0006H\u0001\u00a2\u0006\u0002\u0008\tJ\r\u0010\n\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;",
        "",
        "()V",
        "provideLoggerExceptionListenerRegistryImpl",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;",
        "listeners",
        "",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "provideLoggerExceptionListenerRegistryImpl$wiring",
        "provideTerminalLogExceptionListener",
        "provideTerminalLogExceptionListener$wiring",
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideLoggerExceptionListenerRegistryImpl$wiring(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final provideTerminalLogExceptionListener$wiring()Lcom/stripe/loggingmodels/LoggerExceptionListener;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoSet;
    .end annotation

    .line 38
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;

    sget-object v1, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 58
    const-class v2, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;

    invoke-virtual {v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 38
    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogExceptionListener;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/loggingmodels/LoggerExceptionListener;

    return-object v0
.end method
