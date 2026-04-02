.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;
.super Ljava/lang/Object;
.source "BackgroundReaderActivator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackgroundReaderActivator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundReaderActivator.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,68:1\n148#2:69\n*S KotlinDebug\n*F\n+ 1 BackgroundReaderActivator.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator\n*L\n55#1:69\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
        "",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "lazyTerminalSession",
        "Ldagger/Lazy;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Ldagger/Lazy;)V",
        "activateInBackground",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "Companion",
        "terminalsession_release"
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
.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final lazyTerminalSession:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator$Companion;

    .line 55
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 69
    const-class v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    .line 55
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "statusManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionTokenRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyTerminalSession"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 17
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    .line 18
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->lazyTerminalSession:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final activateInBackground(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 27
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const-string p2, "Reader no longer connected"

    new-array v0, v1, [Lkotlin/Pair;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 28
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCanceled;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCanceled;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;

    return-object p1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getPaymentStatus()Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    move-result-object v0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    if-eq v0, v2, :cond_2

    .line 33
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const-string p2, "Reader busy"

    new-array v0, v1, [Lkotlin/Pair;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 34
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$CannotBeAttempted;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$CannotBeAttempted;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;

    return-object p1

    .line 38
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->lazyTerminalSession:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->activateReader$terminalsession_release(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    .line 39
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getStripeSessionToken()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const-string p2, "Reader activated in background"

    new-array v0, v1, [Lkotlin/Pair;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 44
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCompleted;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCompleted;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;

    return-object p1

    .line 40
    :cond_4
    :goto_1
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const-string p2, "Reader remains unactivated"

    new-array v0, v1, [Lkotlin/Pair;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$CannotBeAttempted;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$CannotBeAttempted;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 47
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Reader could not be activated in background"

    invoke-virtual {p2, v2, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 48
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationFailed;

    invoke-direct {p2, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationFailed;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;

    return-object p2
.end method
