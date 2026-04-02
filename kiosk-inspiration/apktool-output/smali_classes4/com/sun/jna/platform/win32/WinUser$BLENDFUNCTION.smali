.class public Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "BlendOp",
        "BlendFlags",
        "SourceConstantAlpha",
        "AlphaFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BLENDFUNCTION"
.end annotation


# instance fields
.field public AlphaFormat:B

.field public BlendFlags:B

.field public BlendOp:B

.field public SourceConstantAlpha:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 448
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 449
    iput-byte v0, p0, Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;->BlendOp:B

    .line 450
    iput-byte v0, p0, Lcom/sun/jna/platform/win32/WinUser$BLENDFUNCTION;->BlendFlags:B

    return-void
.end method
