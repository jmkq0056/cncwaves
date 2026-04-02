.class public final Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;
.super Ljava/lang/Object;
.source "OfflineForwardingModule_Companion_ProvideMoshiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/squareup/moshi/Moshi;",
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

.method public static create()Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory$InstanceHolder;->access$000()Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideMoshi()Lcom/squareup/moshi/Moshi;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;->Companion:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;->provideMoshi()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/Moshi;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/squareup/moshi/Moshi;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;->provideMoshi()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;->get()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    return-object v0
.end method
