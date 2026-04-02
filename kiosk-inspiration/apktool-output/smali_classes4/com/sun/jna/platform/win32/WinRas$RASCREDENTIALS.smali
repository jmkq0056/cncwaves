.class public Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "dwMask",
        "szUserName",
        "szPassword",
        "szDomain"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASCREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;
    }
.end annotation


# instance fields
.field public dwMask:I

.field public dwSize:I

.field public szDomain:[C

.field public szPassword:[C

.field public szUserName:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 679
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x101

    .line 702
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->szUserName:[C

    .line 706
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->szPassword:[C

    const/16 v0, 0x10

    .line 710
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->szDomain:[C

    .line 680
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 684
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x101

    .line 702
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->szUserName:[C

    .line 706
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->szPassword:[C

    const/16 p1, 0x10

    .line 710
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->szDomain:[C

    .line 685
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;->read()V

    return-void
.end method
