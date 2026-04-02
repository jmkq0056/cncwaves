.class public interface abstract Lcom/stripe/stripeterminal/SdkBuildVariantModule;
.super Ljava/lang/Object;
.source "SdkBuildVariantModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/stripeterminal/dagger/TerminalCommonModule;,
        Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule;,
        Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008a\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/SdkBuildVariantModule;",
        "",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation
