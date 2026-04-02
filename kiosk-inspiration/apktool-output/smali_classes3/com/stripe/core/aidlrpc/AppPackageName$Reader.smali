.class public final Lcom/stripe/core/aidlrpc/AppPackageName$Reader;
.super Ljava/lang/Object;
.source "AppPackageName.kt"

# interfaces
.implements Lcom/stripe/core/aidlrpc/AppPackageName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/aidlrpc/AppPackageName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\n\u001a\u00020\u0006H\u00c6\u0003J\u0013\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0006H\u00d6\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/core/aidlrpc/AppPackageName$Reader;",
        "Lcom/stripe/core/aidlrpc/AppPackageName;",
        "hardwareManufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        "(Lcom/stripe/core/device/HardwareManufacturer;)V",
        "value",
        "",
        "(Ljava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "aidlrpc_release"
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
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/HardwareManufacturer;)V
    .locals 1

    const-string v0, "hardwareManufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v0, p1, Lcom/stripe/core/device/HardwareManufacturer$Verifone;

    if-eqz v0, :cond_0

    const-string p1, "com.stripe.reader.verifone"

    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    instance-of p1, p1, Lcom/stripe/core/device/HardwareManufacturer$Other;

    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "com.stripe.reader"

    .line 13
    :goto_1
    invoke-direct {p0, p1}, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;-><init>(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/aidlrpc/AppPackageName$Reader;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/aidlrpc/AppPackageName$Reader;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->copy(Ljava/lang/String;)Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/stripe/core/aidlrpc/AppPackageName$Reader;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    invoke-direct {v0, p1}, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;

    iget-object v1, p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reader(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/aidlrpc/AppPackageName$Reader;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
