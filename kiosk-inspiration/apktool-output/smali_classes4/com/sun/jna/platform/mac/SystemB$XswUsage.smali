.class public Lcom/sun/jna/platform/mac/SystemB$XswUsage;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "xsu_total",
        "xsu_avail",
        "xsu_used",
        "xsu_pagesize",
        "xsu_encrypted"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XswUsage"
.end annotation


# instance fields
.field public xsu_avail:J

.field public xsu_encrypted:Z

.field public xsu_pagesize:I

.field public xsu_total:J

.field public xsu_used:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
