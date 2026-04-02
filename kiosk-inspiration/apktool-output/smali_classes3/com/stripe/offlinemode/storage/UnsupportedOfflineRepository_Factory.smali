.class public final Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;
.super Ljava/lang/Object;
.source "UnsupportedOfflineRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;
    .locals 1

    .line 31
    invoke-static {}, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory$InstanceHolder;->access$000()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;
    .locals 1

    .line 35
    new-instance v0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;

    invoke-direct {v0}, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;
    .locals 1

    .line 27
    invoke-static {}, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;->newInstance()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;->get()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;

    move-result-object v0

    return-object v0
.end method
