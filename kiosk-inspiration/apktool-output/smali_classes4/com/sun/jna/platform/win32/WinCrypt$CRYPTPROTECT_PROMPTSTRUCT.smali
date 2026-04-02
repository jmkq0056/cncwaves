.class public Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;
.super Lcom/sun/jna/Structure;
.source "WinCrypt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "dwPromptFlags",
        "hwndApp",
        "szPrompt"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRYPTPROTECT_PROMPTSTRUCT"
.end annotation


# instance fields
.field public cbSize:I

.field public dwPromptFlags:I

.field public hwndApp:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public szPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1170
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 1174
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 1175
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;->read()V

    return-void
.end method
