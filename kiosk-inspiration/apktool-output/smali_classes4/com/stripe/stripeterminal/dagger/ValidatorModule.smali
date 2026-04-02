.class public interface abstract Lcom/stripe/stripeterminal/dagger/ValidatorModule;
.super Ljava/lang/Object;
.source "ValidatorModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008a\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/ValidatorModule;",
        "",
        "bindsCollectPaymentMethodOperationValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
        "defaultCollectPaymentMethodOperationValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator;",
        "bindsTipEligibleValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
        "defaultTipEligibleValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;",
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


# virtual methods
.method public abstract bindsCollectPaymentMethodOperationValidator(Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator;)Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract bindsTipEligibleValidator(Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;)Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
