.class public final Lcom/stripe/stripeterminal/external/models/ReceiptDetails$Companion;
.super Ljava/lang/Object;
.source "ReceiptDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ReceiptDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReceiptDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReceiptDetails.kt\ncom/stripe/stripeterminal/external/models/ReceiptDetails$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tH\u00c6\u0001\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ReceiptDetails$Companion;",
        "",
        "()V",
        "fromEmvData",
        "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;",
        "emvData",
        "",
        "fromEmvData$public_release",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/ReceiptDetails$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromEmvData$public_release(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ReceiptDetails;
    .locals 12

    const-string v0, "emvData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 79
    const-string v1, "5F57"

    invoke-virtual {p1, v1}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/stripe/hardware/emv/AccountType;->Companion:Lcom/stripe/hardware/emv/AccountType$Companion;

    invoke-virtual {v0, v1}, Lcom/stripe/hardware/emv/AccountType$Companion;->fromEmvValue(Ljava/lang/String;)Lcom/stripe/hardware/emv/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/AccountType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    .line 81
    const-string v0, "8A"

    invoke-virtual {p1, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getDedicatedFileName()Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getApplicationName()Ljava/lang/String;

    move-result-object v7

    .line 84
    const-string v0, "9F26"

    invoke-virtual {p1, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getCardholderVerificationMethod()Ljava/lang/String;

    move-result-object v9

    .line 86
    const-string v0, "95"

    invoke-virtual {p1, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    const-string v0, "9B"

    invoke-virtual {p1, v0}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    new-instance v2, Lcom/stripe/stripeterminal/external/models/ReceiptDetails;

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/stripe/stripeterminal/external/models/ReceiptDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/stripe/stripeterminal/external/models/ReceiptDetails;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReceiptDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ReceiptDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
