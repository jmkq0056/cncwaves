.class public Lcom/sun/jna/platform/mac/SystemB$Timezone;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "tz_minuteswest",
        "tz_dsttime"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timezone"
.end annotation


# instance fields
.field public tz_dsttime:I

.field public tz_minuteswest:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
