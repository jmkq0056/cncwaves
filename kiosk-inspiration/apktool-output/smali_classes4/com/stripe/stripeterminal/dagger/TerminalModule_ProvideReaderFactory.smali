.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideReaderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/Reader;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

.field private final statusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 35
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;->statusManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReader(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;)Lcom/stripe/core/hardware/Reader;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideReader(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;)Lcom/stripe/core/hardware/Reader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/Reader;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;->provideReader(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;)Lcom/stripe/core/hardware/Reader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;->get()Lcom/stripe/core/hardware/Reader;

    move-result-object v0

    return-object v0
.end method
