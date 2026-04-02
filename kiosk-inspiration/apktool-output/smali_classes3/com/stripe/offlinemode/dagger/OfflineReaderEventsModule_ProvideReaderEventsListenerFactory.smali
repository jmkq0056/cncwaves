.class public final Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;
.super Ljava/lang/Object;
.source "OfflineReaderEventsModule_ProvideReaderEventsListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/ReaderEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final offlineListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
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
            "offlineListenerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;->offlineListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlineListenerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReaderEventsListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)Lcom/stripe/offlinemode/ReaderEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offlineListener"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;

    invoke-virtual {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;->provideReaderEventsListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)Lcom/stripe/offlinemode/ReaderEventListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/ReaderEventListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/ReaderEventListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;->offlineListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    invoke-static {v0}, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;->provideReaderEventsListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)Lcom/stripe/offlinemode/ReaderEventListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;->get()Lcom/stripe/offlinemode/ReaderEventListener;

    move-result-object v0

    return-object v0
.end method
