.class public final Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Creator;
.super Ljava/lang/Object;
.source "TapToPayUxConfiguration.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    const-class v1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;->valueOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;
    .locals 0

    new-array p1, p1, [Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Creator;->newArray(I)[Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    move-result-object p1

    return-object p1
.end method
