.class public Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER$ByReference;
.super Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;
.source "WinNT.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1144
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1144
    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    invoke-super {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;->compareTo(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;)I

    move-result p1

    return p1
.end method
