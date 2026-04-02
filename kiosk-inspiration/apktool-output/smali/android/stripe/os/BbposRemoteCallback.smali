.class public final Landroid/stripe/os/BbposRemoteCallback;
.super Ljava/lang/Object;
.source "BbposRemoteCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/stripe/os/BbposRemoteCallback$OnResultListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/stripe/os/BbposRemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallback:Landroid/os/IRemoteCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/stripe/os/BbposRemoteCallback$OnResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Landroid/stripe/os/BbposRemoteCallback$3;

    invoke-direct {v0}, Landroid/stripe/os/BbposRemoteCallback$3;-><init>()V

    sput-object v0, Landroid/stripe/os/BbposRemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Landroid/stripe/os/BbposRemoteCallback;->mListener:Landroid/stripe/os/BbposRemoteCallback$OnResultListener;

    .line 52
    iput-object v0, p0, Landroid/stripe/os/BbposRemoteCallback;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    iput-object p1, p0, Landroid/stripe/os/BbposRemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public constructor <init>(Landroid/stripe/os/BbposRemoteCallback$OnResultListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/stripe/os/BbposRemoteCallback;-><init>(Landroid/stripe/os/BbposRemoteCallback$OnResultListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/stripe/os/BbposRemoteCallback$OnResultListener;Landroid/os/Handler;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Landroid/stripe/os/BbposRemoteCallback;->mListener:Landroid/stripe/os/BbposRemoteCallback$OnResultListener;

    .line 41
    iput-object p2, p0, Landroid/stripe/os/BbposRemoteCallback;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance p1, Landroid/stripe/os/BbposRemoteCallback$1;

    invoke-direct {p1, p0}, Landroid/stripe/os/BbposRemoteCallback$1;-><init>(Landroid/stripe/os/BbposRemoteCallback;)V

    iput-object p1, p0, Landroid/stripe/os/BbposRemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Landroid/stripe/os/BbposRemoteCallback;)Landroid/stripe/os/BbposRemoteCallback$OnResultListener;
    .locals 0

    .line 22
    iget-object p0, p0, Landroid/stripe/os/BbposRemoteCallback;->mListener:Landroid/stripe/os/BbposRemoteCallback$OnResultListener;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    iget-object v0, p0, Landroid/stripe/os/BbposRemoteCallback;->mListener:Landroid/stripe/os/BbposRemoteCallback$OnResultListener;

    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Landroid/stripe/os/BbposRemoteCallback;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Landroid/stripe/os/BbposRemoteCallback$2;

    invoke-direct {v0, p0, p1}, Landroid/stripe/os/BbposRemoteCallback$2;-><init>(Landroid/stripe/os/BbposRemoteCallback;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 68
    :cond_0
    invoke-interface {v0, p1}, Landroid/stripe/os/BbposRemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    return-void

    .line 73
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/stripe/os/BbposRemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {v0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 87
    iget-object p2, p0, Landroid/stripe/os/BbposRemoteCallback;->mCallback:Landroid/os/IRemoteCallback;

    invoke-interface {p2}, Landroid/os/IRemoteCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
