.class final Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetEmbeddedAdapterProvider;
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
    name = "GetEmbeddedAdapterProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final dependencies:Lcom/stripe/stripeterminal/dagger/Dependencies;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 0

    .line 2348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2349
    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetEmbeddedAdapterProvider;->dependencies:Lcom/stripe/stripeterminal/dagger/Dependencies;

    return-void
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    .line 2354
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetEmbeddedAdapterProvider;->dependencies:Lcom/stripe/stripeterminal/dagger/Dependencies;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/dagger/Dependencies;->getEmbeddedAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2345
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetEmbeddedAdapterProvider;->get()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method
