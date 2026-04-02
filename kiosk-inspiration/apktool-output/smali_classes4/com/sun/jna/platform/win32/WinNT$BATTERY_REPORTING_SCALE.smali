.class public Lcom/sun/jna/platform/win32/WinNT$BATTERY_REPORTING_SCALE;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Granularity",
        "Capacity"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BATTERY_REPORTING_SCALE"
.end annotation


# instance fields
.field public Capacity:I

.field public Granularity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3461
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
