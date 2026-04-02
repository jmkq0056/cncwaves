.class public Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_POWER_INFORMATION;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Number",
        "MaxMhz",
        "CurrentMhz",
        "MhzLimit",
        "MaxIdleState",
        "CurrentIdleState"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PROCESSOR_POWER_INFORMATION"
.end annotation


# instance fields
.field public CurrentIdleState:I

.field public CurrentMhz:I

.field public MaxIdleState:I

.field public MaxMhz:I

.field public MhzLimit:I

.field public Number:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3484
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3479
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 3480
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_POWER_INFORMATION;->read()V

    return-void
.end method
