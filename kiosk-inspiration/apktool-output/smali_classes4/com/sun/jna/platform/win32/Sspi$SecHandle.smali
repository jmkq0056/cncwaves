.class public Lcom/sun/jna/platform/win32/Sspi$SecHandle;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwLower",
        "dwUpper"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecHandle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Sspi$SecHandle$ByReference;
    }
.end annotation


# instance fields
.field public dwLower:Lcom/sun/jna/Pointer;

.field public dwUpper:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public isNull()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecHandle;->dwLower:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecHandle;->dwUpper:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
