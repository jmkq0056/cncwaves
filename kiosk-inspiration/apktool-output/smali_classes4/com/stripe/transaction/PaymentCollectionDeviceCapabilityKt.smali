.class public final Lcom/stripe/transaction/PaymentCollectionDeviceCapabilityKt;
.super Ljava/lang/Object;
.source "PaymentCollectionDeviceCapability.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "DEFAULT_PAYMENT_COLLECTION_CAPABILITY",
        "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "getDEFAULT_PAYMENT_COLLECTION_CAPABILITY",
        "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_PAYMENT_COLLECTION_CAPABILITY:Lcom/stripe/transaction/PaymentCollectionDeviceCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 59
    new-instance v0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 62
    sget-object v3, Lcom/stripe/hardware/emv/CheckForCardBehavior;->POLL_FOR_CARD_REMOVAL:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 63
    sget-object v1, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY()Ljava/util/Set;

    move-result-object v4

    const/16 v8, 0x70

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 59
    invoke-direct/range {v0 .. v9}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/transaction/PaymentCollectionDeviceCapabilityKt;->DEFAULT_PAYMENT_COLLECTION_CAPABILITY:Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    return-void
.end method

.method public static final getDEFAULT_PAYMENT_COLLECTION_CAPABILITY()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 1

    .line 59
    sget-object v0, Lcom/stripe/transaction/PaymentCollectionDeviceCapabilityKt;->DEFAULT_PAYMENT_COLLECTION_CAPABILITY:Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    return-object v0
.end method
