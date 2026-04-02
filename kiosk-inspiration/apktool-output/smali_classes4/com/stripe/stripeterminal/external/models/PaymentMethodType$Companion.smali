.class public final Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;
.super Ljava/lang/Object;
.source "PaymentMethodType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentMethodType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodType.kt\ncom/stripe/stripeterminal/external/models/PaymentMethodType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1#2:55\n288#3,2:56\n*S KotlinDebug\n*F\n+ 1 PaymentMethodType.kt\ncom/stripe/stripeterminal/external/models/PaymentMethodType$Companion\n*L\n50#1:56,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000f\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u00c6\u0001\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;",
        "",
        "()V",
        "fromTypeName",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "string",
        "",
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;-><init>()V

    return-void
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 48
    invoke-static {}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method


# virtual methods
.method public final fromTypeName(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 50
    invoke-static {}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 50
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 57
    :cond_1
    check-cast v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :cond_2
    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
