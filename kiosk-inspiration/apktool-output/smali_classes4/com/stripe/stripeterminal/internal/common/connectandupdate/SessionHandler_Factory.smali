.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;
.super Ljava/lang/Object;
.source "SessionHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final readerConnectionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
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
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/core/hardware/ReaderConnectionController;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;
    .locals 1

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;-><init>(Lcom/stripe/core/hardware/ReaderConnectionController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/ReaderConnectionController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;->newInstance(Lcom/stripe/core/hardware/ReaderConnectionController;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;

    move-result-object v0

    return-object v0
.end method
