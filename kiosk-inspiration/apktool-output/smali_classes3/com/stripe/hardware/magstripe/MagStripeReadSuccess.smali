.class public final Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;
.super Lcom/stripe/hardware/magstripe/MagStripeReadResult;
.source "MagStripeReadResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008\u001eJ\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003JU\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\"\u001a\u00020\u00112\u0008\u0010#\u001a\u0004\u0018\u00010$H\u00d6\u0003J\t\u0010%\u001a\u00020&H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000cR\u0011\u0010\u0016\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "Lcom/stripe/hardware/magstripe/MagStripeReadResult;",
        "encryptedTrack2",
        "",
        "ksn",
        "maskedPan",
        "expiryDate",
        "serviceCode",
        "epb",
        "epbKsn",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getEncryptedTrack2",
        "()Ljava/lang/String;",
        "getEpb",
        "getEpbKsn",
        "getExpiryDate",
        "iccCapable",
        "",
        "getIccCapable",
        "()Z",
        "getKsn",
        "getMaskedPan",
        "needMagStripePin",
        "getNeedMagStripePin",
        "getServiceCode$public_release",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component5$public_release",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final encryptedTrack2:Ljava/lang/String;

.field private final epb:Ljava/lang/String;

.field private final epbKsn:Ljava/lang/String;

.field private final expiryDate:Ljava/lang/String;

.field private final iccCapable:Z

.field private final ksn:Ljava/lang/String;

.field private final maskedPan:Ljava/lang/String;

.field private final needMagStripePin:Z

.field private final serviceCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "encryptedTrack2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ksn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedPan"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiryDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/stripe/hardware/magstripe/MagStripeReadResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    iput-object p1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->encryptedTrack2:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->ksn:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->maskedPan:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->expiryDate:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->serviceCode:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epb:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epbKsn:Ljava/lang/String;

    const/4 p1, 0x2

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 25
    move-object p4, p5

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_0

    move-object p4, p5

    goto :goto_0

    :cond_0
    move-object p4, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 28
    new-array p6, p1, [Ljava/lang/String;

    const-string p7, "2"

    aput-object p7, p6, p3

    const-string p7, "6"

    aput-object p7, p6, p2

    invoke-virtual {p4, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    const-string p7, "substring(...)"

    invoke-static {p4, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, p4}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    goto :goto_1

    :cond_1
    move p4, p3

    .line 23
    :goto_1
    iput-boolean p4, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->iccCapable:Z

    if-eqz p5, :cond_3

    .line 34
    move-object p4, p5

    check-cast p4, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-lez p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p5, v0

    :goto_2
    if-eqz p5, :cond_3

    .line 36
    new-array p1, p1, [Ljava/lang/Character;

    const/16 p4, 0x30

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    aput-object p4, p1, p3

    const/16 p3, 0x36

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    aput-object p3, p1, p2

    check-cast p5, Ljava/lang/CharSequence;

    invoke-static {p5}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    .line 32
    :cond_3
    iput-boolean p3, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->needMagStripePin:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1

    move-object p6, v0

    :cond_1
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2

    move-object p8, v0

    goto :goto_0

    :cond_2
    move-object p8, p7

    :goto_0
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 14
    invoke-direct/range {p1 .. p8}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->encryptedTrack2:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->ksn:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->maskedPan:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->expiryDate:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->serviceCode:Ljava/lang/String;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epb:Ljava/lang/String;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epbKsn:Ljava/lang/String;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->encryptedTrack2:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->ksn:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->maskedPan:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->expiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component5$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epb:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epbKsn:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;
    .locals 9

    const-string v0, "encryptedTrack2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ksn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskedPan"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiryDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->encryptedTrack2:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->encryptedTrack2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->ksn:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->ksn:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->maskedPan:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->maskedPan:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->expiryDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->expiryDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->serviceCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->serviceCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epb:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epb:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epbKsn:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epbKsn:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getEncryptedTrack2()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->encryptedTrack2:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpb()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epb:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpbKsn()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epbKsn:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryDate()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->expiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getIccCapable()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->iccCapable:Z

    return v0
.end method

.method public final getKsn()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->ksn:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaskedPan()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->maskedPan:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeedMagStripePin()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->needMagStripePin:Z

    return v0
.end method

.method public final getServiceCode$public_release()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->encryptedTrack2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->ksn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->maskedPan:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->expiryDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->serviceCode:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epb:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->epbKsn:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MagStripeReadSuccess(\u2588\u2588)"

    return-object v0
.end method
