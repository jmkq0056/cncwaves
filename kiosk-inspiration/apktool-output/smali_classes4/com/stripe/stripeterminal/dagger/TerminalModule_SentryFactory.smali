.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;
.super Ljava/lang/Object;
.source "TerminalModule_SentryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/spos/sentry/http/ErrorReporter;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 35
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static sentry(Lcom/stripe/stripeterminal/dagger/TerminalModule;Landroid/content/Context;)Lcom/stripe/spos/sentry/http/ErrorReporter;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->sentry(Landroid/content/Context;)Lcom/stripe/spos/sentry/http/ErrorReporter;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/spos/sentry/http/ErrorReporter;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/spos/sentry/http/ErrorReporter;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;->sentry(Lcom/stripe/stripeterminal/dagger/TerminalModule;Landroid/content/Context;)Lcom/stripe/spos/sentry/http/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;->get()Lcom/stripe/spos/sentry/http/ErrorReporter;

    move-result-object v0

    return-object v0
.end method
