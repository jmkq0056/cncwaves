.class public final Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;
.super Ljava/lang/Object;
.source "TmsModule_ProvideTmsIngesterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/updater/Ingester<",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;
    .locals 1

    .line 35
    invoke-static {}, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory$InstanceHolder;->access$000()Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideTmsIngester()Lcom/stripe/core/updater/Ingester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/TmsModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/TmsModule;

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/dagger/TmsModule;->provideTmsIngester()Lcom/stripe/core/updater/Ingester;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/updater/Ingester;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/updater/Ingester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;->provideTmsIngester()Lcom/stripe/core/updater/Ingester;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/TmsModule_ProvideTmsIngesterFactory;->get()Lcom/stripe/core/updater/Ingester;

    move-result-object v0

    return-object v0
.end method
