.class public interface abstract Lcom/stripe/transaction/PaymentMethodCollectionType;
.super Ljava/lang/Object;
.source "PaymentMethodCollectionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;,
        Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;,
        Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;,
        Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;,
        Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0005\n\u000b\u000c\r\u000eR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0005\u000f\u0010\u0011\u0012\u0013\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0014\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "enableCustomerCancellation",
        "",
        "getEnableCustomerCancellation",
        "()Z",
        "Passthrough",
        "Refund",
        "Sale",
        "SetupIntent",
        "StrongCustomerAuthentication",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;",
        "public_release"
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
.method public abstract getAmount()Lcom/stripe/currency/Amount;
.end method

.method public abstract getEnableCustomerCancellation()Z
.end method
