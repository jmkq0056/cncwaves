.class public final Lcom/stripe/core/transaction/Transaction$Companion;
.super Ljava/lang/Object;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/transaction/Transaction$Companion;",
        "",
        "()V",
        "newBuilder",
        "Lcom/stripe/core/transaction/Transaction$Builder;",
        "type",
        "Lcom/stripe/core/transaction/Transaction$Type;",
        "settings",
        "Lcom/stripe/transaction/Settings;",
        "transaction_release"
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
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/transaction/Transaction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newBuilder(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;)Lcom/stripe/core/transaction/Transaction$Builder;
    .locals 21

    const-string v0, "type"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/stripe/core/transaction/Transaction$Builder;

    const v19, 0x1fffc

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/stripe/core/transaction/Transaction$Builder;-><init>(Lcom/stripe/core/transaction/Transaction$Type;Lcom/stripe/transaction/Settings;Lcom/stripe/core/transaction/Transaction$Error;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Lcom/stripe/currency/Amount;Lcom/stripe/cart/Cart;Lcom/stripe/transaction/ChargeAttempt;ILcom/stripe/hardware/emv/Confirmation;Ljava/util/Set;Lcom/stripe/restclient/IntegrationType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
