.class public Lcom/sun/jna/platform/mac/SystemB$VnodePathInfo;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pvi_cdir",
        "pvi_rdir"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VnodePathInfo"
.end annotation


# instance fields
.field public pvi_cdir:Lcom/sun/jna/platform/mac/SystemB$VnodeInfoPath;

.field public pvi_rdir:Lcom/sun/jna/platform/mac/SystemB$VnodeInfoPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
