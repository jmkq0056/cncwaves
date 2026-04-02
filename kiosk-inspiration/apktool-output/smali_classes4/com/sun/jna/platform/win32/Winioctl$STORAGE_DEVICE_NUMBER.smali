.class public Lcom/sun/jna/platform/win32/Winioctl$STORAGE_DEVICE_NUMBER;
.super Lcom/sun/jna/Structure;
.source "Winioctl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "DeviceType",
        "DeviceNumber",
        "PartitionNumber"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winioctl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STORAGE_DEVICE_NUMBER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winioctl$STORAGE_DEVICE_NUMBER$ByReference;
    }
.end annotation


# instance fields
.field public DeviceNumber:I

.field public DeviceType:I

.field public PartitionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 176
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winioctl$STORAGE_DEVICE_NUMBER;->read()V

    return-void
.end method
