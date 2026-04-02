.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;
.super Ljava/lang/Object;
.source "BackgroundReaderActivator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
        ">;"
    }
.end annotation


# instance fields
.field private final sessionTokenRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final statusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->terminalSessionProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Ldagger/Lazy;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->terminalSessionProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Ldagger/Lazy;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->get()Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    move-result-object v0

    return-object v0
.end method
