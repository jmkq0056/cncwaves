.class public abstract Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;
.super Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;
.source "UpdateRebootTimeResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToClear;,
        Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToOverride;,
        Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InternalError;,
        Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InvalidArgument;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;",
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;",
        "()V",
        "FailToClear",
        "FailToOverride",
        "InternalError",
        "InvalidArgument",
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToClear;",
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$FailToOverride;",
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InternalError;",
        "Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure$InvalidArgument;",
        "reboot"
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
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/reboot/UpdateRebootTimeResponse$Failure;-><init>()V

    return-void
.end method
