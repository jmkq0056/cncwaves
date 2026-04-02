.class public final Lcom/stripe/hardware/ReaderConfigurationKt;
.super Ljava/lang/Object;
.source "ReaderConfiguration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a+\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "domesticDebitPriorityOverride",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "domesticDebitAids",
        "",
        "",
        "isOffline",
        "",
        "(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Ljava/lang/Boolean;)Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
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


# direct methods
.method public static final domesticDebitPriorityOverride(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Ljava/lang/Boolean;)Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;"
        }
    .end annotation

    const-string v0, "domesticDebitAids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->OFF:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    :cond_1
    return-object p0
.end method
