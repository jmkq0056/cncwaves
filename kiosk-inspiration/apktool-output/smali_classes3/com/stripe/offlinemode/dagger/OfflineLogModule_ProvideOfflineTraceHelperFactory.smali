.class public final Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;
.super Ljava/lang/Object;
.source "OfflineLogModule_ProvideOfflineTraceHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory$InstanceHolder;->access$000()Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideOfflineTraceHelper()Lcom/stripe/offlinemode/log/OfflineTraceHelper;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->provideOfflineTraceHelper()Lcom/stripe/offlinemode/log/OfflineTraceHelper;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/log/OfflineTraceHelper;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/log/OfflineTraceHelper;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;->provideOfflineTraceHelper()Lcom/stripe/offlinemode/log/OfflineTraceHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;->get()Lcom/stripe/offlinemode/log/OfflineTraceHelper;

    move-result-object v0

    return-object v0
.end method
