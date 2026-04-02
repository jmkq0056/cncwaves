.class public Lcom/sun/jna/platform/win32/WinUser$SIZE;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cx",
        "cy"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIZE"
.end annotation


# instance fields
.field public cx:I

.field public cy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 436
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 437
    iput p1, p0, Lcom/sun/jna/platform/win32/WinUser$SIZE;->cx:I

    .line 438
    iput p2, p0, Lcom/sun/jna/platform/win32/WinUser$SIZE;->cy:I

    return-void
.end method
