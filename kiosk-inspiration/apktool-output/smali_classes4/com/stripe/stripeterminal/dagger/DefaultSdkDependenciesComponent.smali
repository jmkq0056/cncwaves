.class public interface abstract Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;
.super Ljava/lang/Object;
.source "DefaultSdkDependenciesComponent.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/dagger/Dependencies;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/stripe/core/device/dagger/BuildValuesModule;,
        Lcom/stripe/core/device/dagger/DefaultSerialSupplierModule;,
        Lcom/stripe/stripeterminal/dagger/NoEmbeddedAdapterModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008a\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/DefaultSdkDependenciesComponent;",
        "Lcom/stripe/stripeterminal/dagger/Dependencies;",
        "defaults_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation
