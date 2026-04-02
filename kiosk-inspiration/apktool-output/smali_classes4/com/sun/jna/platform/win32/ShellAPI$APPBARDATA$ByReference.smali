.class public Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA$ByReference;
.super Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA;
.source "ShellAPI.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/ShellAPI$APPBARDATA;-><init>()V

    return-void
.end method
