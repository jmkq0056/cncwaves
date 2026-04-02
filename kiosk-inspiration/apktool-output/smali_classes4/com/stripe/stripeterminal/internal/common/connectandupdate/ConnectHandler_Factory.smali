.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;
.super Ljava/lang/Object;
.source "ConnectHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;",
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
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/core/hardware/ReaderConnectionController;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;
    .locals 1

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;-><init>(Lcom/stripe/core/hardware/ReaderConnectionController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/ReaderConnectionController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;->newInstance(Lcom/stripe/core/hardware/ReaderConnectionController;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;

    move-result-object v0

    return-object v0
.end method
