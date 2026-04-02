.class public Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;
.super Lcom/sun/jna/Structure;
.source "WinUser.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "hDevice",
        "dwType"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RAWINPUTDEVICELIST"
.end annotation


# instance fields
.field public dwType:I

.field public hDevice:Lcom/sun/jna/platform/win32/WinNT$HANDLE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1817
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1821
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public sizeof()I
    .locals 1

    const/4 v0, 0x0

    .line 1825
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;->calculateSize(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hDevice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;->hDevice:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dwType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/WinUser$RAWINPUTDEVICELIST;->dwType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
