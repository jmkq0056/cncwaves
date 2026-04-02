.class public final Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;
.super Ljava/lang/Object;
.source "TerminalActionIdRestInterceptor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final traceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceManagerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;->traceManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceManagerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;)",
            "Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traceManager"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;

    invoke-direct {v0, p0}, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;->traceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-static {v0}, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;->newInstance(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor_Factory;->get()Lcom/stripe/core/stripeterminal/log/TerminalActionIdRestInterceptor;

    move-result-object v0

    return-object v0
.end method
