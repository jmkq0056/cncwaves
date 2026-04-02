.class public final Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;
.super Ljava/lang/Object;
.source "BbposControllerListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/BbposControllerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u000c\u001a\u00020\r2\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;",
        "",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "configurationListener",
        "Lcom/stripe/hardware/emv/ConfigurationListener;",
        "bbposReaderInfoFactory",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
        "debugLogsShouldBeSentToSplunk",
        "Ljavax/inject/Provider;",
        "",
        "(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)V",
        "create",
        "Lcom/stripe/core/bbpos/hardware/BbposControllerListener;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "hardware_release"
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
.field private final bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

.field private final configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

.field private final debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;


# direct methods
.method public constructor <init>(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Lcom/stripe/hardware/emv/ConfigurationListener;",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "readerStatusListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposReaderInfoFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugLogsShouldBeSentToSplunk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 73
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    .line 74
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    .line 75
    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final create(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/core/bbpos/hardware/BbposControllerListener;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener;"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;

    .line 79
    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 80
    iget-object v3, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->configurationListener:Lcom/stripe/hardware/emv/ConfigurationListener;

    .line 81
    iget-object v4, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->bbposReaderInfoFactory:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;

    .line 82
    iget-object v5, p0, Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;->debugLogsShouldBeSentToSplunk:Ljavax/inject/Provider;

    move-object v6, p1

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/stripe/core/bbpos/hardware/BbposControllerListener;-><init>(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/emv/ConfigurationListener;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v1
.end method
