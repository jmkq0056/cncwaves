.class public final Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;
.super Ljava/lang/Object;
.source "TippingConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TippingConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTippingConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TippingConfiguration.kt\ncom/stripe/stripeterminal/external/models/TippingConfiguration$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1#2:26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u000cR$\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;",
        "",
        "()V",
        "<set-?>",
        "",
        "eligibleAmount",
        "getEligibleAmount",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "build",
        "Lcom/stripe/stripeterminal/external/models/TippingConfiguration;",
        "setEligibleAmount",
        "(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;",
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


# instance fields
.field private eligibleAmount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/TippingConfiguration;
    .locals 3

    .line 22
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;->eligibleAmount:Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/TippingConfiguration;-><init>(Ljava/lang/Long;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getEligibleAmount()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;->eligibleAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public final setEligibleAmount(Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;
    .locals 1

    .line 20
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TippingConfiguration$Builder;->eligibleAmount:Ljava/lang/Long;

    return-object p0
.end method
