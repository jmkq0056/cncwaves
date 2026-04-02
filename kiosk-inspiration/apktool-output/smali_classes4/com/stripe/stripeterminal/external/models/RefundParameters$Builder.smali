.class public final Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;
.super Ljava/lang/Object;
.source "RefundParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/RefundParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007B\u001d\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nJ\u0006\u0010 \u001a\u00020!J\u001a\u0010\"\u001a\u00020\u00002\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0012J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0018J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0018R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0006\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0018X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;",
        "",
        "chargeId",
        "",
        "amount",
        "",
        "currency",
        "(Ljava/lang/String;JLjava/lang/String;)V",
        "id",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;",
        "(Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;JLjava/lang/String;)V",
        "getAmount$public_release",
        "()J",
        "getCurrency$public_release",
        "()Ljava/lang/String;",
        "getId$public_release",
        "()Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;",
        "metadata",
        "",
        "getMetadata$public_release",
        "()Ljava/util/Map;",
        "setMetadata$public_release",
        "(Ljava/util/Map;)V",
        "refundApplicationFee",
        "",
        "getRefundApplicationFee$public_release",
        "()Z",
        "setRefundApplicationFee$public_release",
        "(Z)V",
        "reverseTransfer",
        "getReverseTransfer$public_release",
        "setReverseTransfer$public_release",
        "build",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "setMetadata",
        "value",
        "setRefundApplicationFee",
        "setReverseTransfer",
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
.field private final amount:J

.field private final currency:Ljava/lang/String;

.field private final id:Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private refundApplicationFee:Z

.field private reverseTransfer:Z


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;JLjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->id:Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

    .line 37
    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->amount:J

    .line 42
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->currency:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated to support refunding by Payment Intent ID."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "RefundParameters.Builder(Id.Charge(chargeId), amount, currency)"
            imports = {
                "com.stripe.stripeterminal.external.models.RefundParameters.Id"
            }
        .end subannotation
    .end annotation

    const-string v0, "chargeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;-><init>(Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/RefundParameters;
    .locals 2

    .line 93
    new-instance v0, Lcom/stripe/stripeterminal/external/models/RefundParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;-><init>(Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getAmount$public_release()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->amount:J

    return-wide v0
.end method

.method public final getCurrency$public_release()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getId$public_release()Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->id:Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

    return-object v0
.end method

.method public final getMetadata$public_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getRefundApplicationFee$public_release()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->refundApplicationFee:Z

    return v0
.end method

.method public final getReverseTransfer$public_release()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->reverseTransfer:Z

    return v0
.end method

.method public final setMetadata(Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;

    .line 64
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final setMetadata$public_release(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->metadata:Ljava/util/Map;

    return-void
.end method

.method public final setRefundApplicationFee(Z)Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;
    .locals 1

    .line 82
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;

    .line 83
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->refundApplicationFee:Z

    return-object p0
.end method

.method public final setRefundApplicationFee$public_release(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->refundApplicationFee:Z

    return-void
.end method

.method public final setReverseTransfer(Z)Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;
    .locals 1

    .line 72
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;

    .line 73
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->reverseTransfer:Z

    return-object p0
.end method

.method public final setReverseTransfer$public_release(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->reverseTransfer:Z

    return-void
.end method
