.class public final Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;
.super Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;
.source "WifiConfigurationUtilities.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;",
        "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;",
        "error",
        "Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;",
        "(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)V",
        "getError",
        "()Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "connectivity_release"
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
.field private final error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;


# direct methods
.method public constructor <init>(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;ILjava/lang/Object;)Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->copy(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    return-object v0
.end method

.method public final copy(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;

    invoke-direct {v0, p1}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;-><init>(Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;

    iget-object v1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    iget-object p1, p1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getError()Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    invoke-virtual {v0}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error(error="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressValidation$Error;->error:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities$InetAddressParseError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
