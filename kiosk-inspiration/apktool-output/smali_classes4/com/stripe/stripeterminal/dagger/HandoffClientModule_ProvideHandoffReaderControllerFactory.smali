.class public final Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;
.super Ljava/lang/Object;
.source "HandoffClientModule_ProvideHandoffReaderControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/HandoffClientModule;

.field private final providerMirrorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;->module:Lcom/stripe/stripeterminal/dagger/HandoffClientModule;

    .line 34
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;->providerMirrorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHandoffReaderController(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule;->provideHandoffReaderController(Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;->module:Lcom/stripe/stripeterminal/dagger/HandoffClientModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;->providerMirrorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;->provideHandoffReaderController(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;->get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    move-result-object v0

    return-object v0
.end method
