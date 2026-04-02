.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvidesDebugFlavorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;
    .locals 1

    .line 37
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;)V

    return-object v0
.end method

.method public static providesDebugFlavor(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Z
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->providesDebugFlavor()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;->providesDebugFlavor(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
