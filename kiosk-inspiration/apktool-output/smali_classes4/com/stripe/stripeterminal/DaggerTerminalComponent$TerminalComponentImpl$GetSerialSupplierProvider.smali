.class final Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetSerialSupplierProvider;
.super Ljava/lang/Object;
.source "DaggerTerminalComponent.java"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetSerialSupplierProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "Lcom/stripe/core/device/SerialSupplier;",
        ">;"
    }
.end annotation


# instance fields
.field private final dependencies:Lcom/stripe/stripeterminal/dagger/Dependencies;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 0

    .line 2335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2336
    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetSerialSupplierProvider;->dependencies:Lcom/stripe/stripeterminal/dagger/Dependencies;

    return-void
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/SerialSupplier;
    .locals 1

    .line 2341
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetSerialSupplierProvider;->dependencies:Lcom/stripe/stripeterminal/dagger/Dependencies;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/dagger/Dependencies;->getSerialSupplier()Lcom/stripe/core/device/SerialSupplier;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromComponent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/SerialSupplier;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2332
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetSerialSupplierProvider;->get()Lcom/stripe/core/device/SerialSupplier;

    move-result-object v0

    return-object v0
.end method
