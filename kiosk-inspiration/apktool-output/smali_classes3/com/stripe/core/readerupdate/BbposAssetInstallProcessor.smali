.class public interface abstract Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;
.super Ljava/lang/Object;
.source "BbposAssetInstallProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u001e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H&J\u001e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H&J\u001e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
        "",
        "install",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "config",
        "Lcom/stripe/core/readerupdate/Update$Config;",
        "reader",
        "Lcom/stripe/core/hardware/Reader;",
        "firmware",
        "Lcom/stripe/core/readerupdate/Update$Firmware;",
        "keys",
        "Lcom/stripe/core/readerupdate/Update$Keys;",
        "settings",
        "Lcom/stripe/core/readerupdate/Update$Settings;",
        "configurationHandler",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
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


# virtual methods
.method public abstract install(Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Config;",
            "Lcom/stripe/core/hardware/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install(Lcom/stripe/core/readerupdate/Update$Firmware;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Firmware;",
            "Lcom/stripe/core/hardware/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install(Lcom/stripe/core/readerupdate/Update$Keys;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Keys;",
            "Lcom/stripe/core/hardware/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install(Lcom/stripe/core/readerupdate/Update$Settings;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update$Settings;",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method
