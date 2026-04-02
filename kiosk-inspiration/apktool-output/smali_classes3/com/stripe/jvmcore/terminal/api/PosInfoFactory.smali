.class public interface abstract Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;
.super Ljava/lang/Object;
.source "PosInfoFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J&\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
        "",
        "createForLocalPos",
        "Lcom/stripe/jvmcore/terminal/api/PosInfo;",
        "createForRemotePos",
        "remotePosSdkVersionInfo",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "remotePosSecondarySdkVersionInfo",
        "remotePosDeviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "terminal-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract createForLocalPos()Lcom/stripe/jvmcore/terminal/api/PosInfo;
.end method

.method public abstract createForRemotePos(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/jvmcore/terminal/api/PosInfo;
.end method
