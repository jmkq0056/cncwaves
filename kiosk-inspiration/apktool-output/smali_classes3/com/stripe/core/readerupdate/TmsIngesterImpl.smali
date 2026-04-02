.class public final Lcom/stripe/core/readerupdate/TmsIngesterImpl;
.super Ljava/lang/Object;
.source "TmsIngester.kt"

# interfaces
.implements Lcom/stripe/core/updater/Ingester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/core/updater/Ingester<",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTmsIngester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TmsIngester.kt\ncom/stripe/core/readerupdate/TmsIngesterImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0096@\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/TmsIngesterImpl;",
        "Lcom/stripe/core/updater/Ingester;",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lcom/stripe/core/readerupdate/TmsIngester;",
        "()V",
        "ingest",
        "coordinates",
        "(Lcom/stripe/core/hardware/updates/ReaderVersion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readerupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ingest(Lcom/stripe/core/hardware/updates/ReaderVersion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getKeyProfileName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/stripe/core/readerupdate/Update$Keys;

    new-instance v2, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;

    invoke-direct {v2, p2}, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/stripe/core/readerupdate/RemoteUpdate;

    invoke-direct {v1, v2}, Lcom/stripe/core/readerupdate/Update$Keys;-><init>(Lcom/stripe/core/readerupdate/RemoteUpdate;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getConfigVersion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, Lcom/stripe/core/readerupdate/Update$Config;

    new-instance v2, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;

    invoke-direct {v2, p2}, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/stripe/core/readerupdate/RemoteUpdate;

    invoke-direct {v1, v2}, Lcom/stripe/core/readerupdate/Update$Config;-><init>(Lcom/stripe/core/readerupdate/RemoteUpdate;)V

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 19
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/core/hardware/updates/ReaderVersion;->getFirmwareVersion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/stripe/core/readerupdate/Update$Firmware;

    new-instance p2, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;

    invoke-direct {p2, p1}, Lcom/stripe/core/readerupdate/RemoteUpdate$Ota;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/stripe/core/readerupdate/RemoteUpdate;

    invoke-direct {v0, p2}, Lcom/stripe/core/readerupdate/Update$Firmware;-><init>(Lcom/stripe/core/readerupdate/RemoteUpdate;)V

    :cond_2
    move-object v6, v0

    .line 16
    new-instance v3, Lcom/stripe/core/readerupdate/UpdatePackage;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/core/readerupdate/UpdatePackage;-><init>(Lcom/stripe/core/readerupdate/Update$Keys;Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/readerupdate/Update$Firmware;Lcom/stripe/core/readerupdate/Update$Settings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public bridge synthetic ingest(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/stripe/core/hardware/updates/ReaderVersion;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/TmsIngesterImpl;->ingest(Lcom/stripe/core/hardware/updates/ReaderVersion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
