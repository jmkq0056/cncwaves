.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;
.super Ljava/lang/Object;
.source "LogLevelModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;",
        "",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "(Lcom/stripe/loggingmodels/LogLevel;)V",
        "provideLogLevel",
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


# instance fields
.field private final logLevel:Lcom/stripe/loggingmodels/LogLevel;


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/LogLevel;)V
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-void
.end method


# virtual methods
.method public final provideLogLevel()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method
