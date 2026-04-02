.class public final Lcom/stripe/cots/common/CotsCollectionParameters$Creator;
.super Ljava/lang/Object;
.source "CotsCollectionParameters.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/common/CotsCollectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/stripe/cots/common/CotsCollectionParameters;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/stripe/cots/common/CotsCollectionParameters;
    .locals 6

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/stripe/currency/Amount;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v2, :cond_0

    sget-object v5, Lcom/stripe/cots/common/CotsTlvEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUxConfig;

    new-instance v2, Lcom/stripe/cots/common/CotsCollectionParameters;

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/stripe/cots/common/CotsCollectionParameters;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stripe/cots/common/CotsCollectionParameters$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/stripe/cots/common/CotsCollectionParameters;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/stripe/cots/common/CotsCollectionParameters;
    .locals 0

    new-array p1, p1, [Lcom/stripe/cots/common/CotsCollectionParameters;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stripe/cots/common/CotsCollectionParameters$Creator;->newArray(I)[Lcom/stripe/cots/common/CotsCollectionParameters;

    move-result-object p1

    return-object p1
.end method
