.class public final Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;
.super Ljava/lang/Object;
.source "MposReaderEventLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;",
        "",
        "()V",
        "provideMposReaderEventLogger",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "structuredEventLogger",
        "Lcom/stripe/loggingmodels/StructuredEventLogger;",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "reactiveReaderStatusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "common_publish"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideMposReaderEventLogger(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "structuredEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalStatusManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactiveReaderStatusListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    invoke-direct {v0, p4, p3, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;-><init>(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/loggingmodels/StructuredEventLogger;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    return-object v0
.end method
