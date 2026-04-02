.class public Lcom/sun/jna/platform/win32/Pdh$PDH_TIME_INFO;
.super Lcom/sun/jna/Structure;
.source "Pdh.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "StartTime",
        "EndTime",
        "SampleCount"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Pdh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDH_TIME_INFO"
.end annotation


# instance fields
.field public EndTime:J

.field public SampleCount:I

.field public StartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
