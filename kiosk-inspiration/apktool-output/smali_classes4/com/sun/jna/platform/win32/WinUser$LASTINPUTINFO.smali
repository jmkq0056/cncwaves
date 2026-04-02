.class public Lcom/sun/jna/platform/win32/WinUser$LASTINPUTINFO;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "dwTime"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LASTINPUTINFO"
.end annotation


# instance fields
.field public cbSize:I

.field public dwTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1225
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1226
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinUser$LASTINPUTINFO;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinUser$LASTINPUTINFO;->cbSize:I

    return-void
.end method
