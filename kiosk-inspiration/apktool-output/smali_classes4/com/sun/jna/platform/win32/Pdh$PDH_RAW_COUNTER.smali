.class public Lcom/sun/jna/platform/win32/Pdh$PDH_RAW_COUNTER;
.super Lcom/sun/jna/Structure;
.source "Pdh.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "CStatus",
        "TimeStamp",
        "FirstValue",
        "SecondValue",
        "MultiCount"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Pdh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDH_RAW_COUNTER"
.end annotation


# instance fields
.field public CStatus:I

.field public FirstValue:J

.field public MultiCount:I

.field public SecondValue:J

.field public TimeStamp:Lcom/sun/jna/platform/win32/WinBase$FILETIME;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 186
    new-instance v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Pdh$PDH_RAW_COUNTER;->TimeStamp:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    return-void
.end method
