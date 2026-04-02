.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;
.super Ljava/lang/Object;
.source "TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultIpReaderActivatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;->defaultIpReaderActivatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static bindReaderActivator$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;->bindReaderActivator$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    return-object p0
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;->defaultIpReaderActivatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;->bindReaderActivator$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;->get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    move-result-object v0

    return-object v0
.end method
