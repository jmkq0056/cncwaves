.class public Landroid/stripe/os/LastPinInfo;
.super Ljava/lang/Object;
.source "LastPinInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/stripe/os/LastPinInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pin:Ljava/lang/String;

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Landroid/stripe/os/LastPinInfo$1;

    invoke-direct {v0}, Landroid/stripe/os/LastPinInfo$1;-><init>()V

    sput-object v0, Landroid/stripe/os/LastPinInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroid/stripe/os/LastPinInfo;->pin:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Landroid/stripe/os/LastPinInfo;->time:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Landroid/stripe/os/LastPinInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/stripe/os/LastPinInfo$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroid/stripe/os/LastPinInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/stripe/os/LastPinInfo;->pin:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Landroid/stripe/os/LastPinInfo;->time:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/stripe/os/LastPinInfo;->pin:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/stripe/os/LastPinInfo;->time:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 35
    iget-object p2, p0, Landroid/stripe/os/LastPinInfo;->pin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Landroid/stripe/os/LastPinInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
