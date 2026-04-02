.class public Lcom/sun/jna/platform/win32/WinBase$FILE_DISPOSITION_INFO;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "DeleteFile"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILE_DISPOSITION_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$FILE_DISPOSITION_INFO$ByReference;
    }
.end annotation


# instance fields
.field public DeleteFile:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 410
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_DISPOSITION_INFO;->read()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 414
    iput-boolean p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_DISPOSITION_INFO;->DeleteFile:Z

    .line 415
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_DISPOSITION_INFO;->write()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 401
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$FILE_DISPOSITION_INFO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
