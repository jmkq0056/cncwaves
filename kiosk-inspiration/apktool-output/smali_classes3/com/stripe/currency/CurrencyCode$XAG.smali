.class final Lcom/stripe/currency/CurrencyCode$XAG;
.super Lcom/stripe/currency/CurrencyCode;
.source "CurrencyCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/currency/CurrencyCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XAG"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/stripe/currency/CurrencyCode$XAG;",
        "Lcom/stripe/currency/CurrencyCode;",
        "isPreciousMetal",
        "",
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
.method constructor <init>(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2369
    new-array v7, v0, [Lcom/stripe/currency/CountryCode;

    const/4 v8, 0x0

    const-string v4, "Silver"

    const/16 v5, 0x3c1

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/stripe/currency/CurrencyCode;-><init>(Ljava/lang/String;ILjava/lang/String;II[Lcom/stripe/currency/CountryCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public isPreciousMetal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
