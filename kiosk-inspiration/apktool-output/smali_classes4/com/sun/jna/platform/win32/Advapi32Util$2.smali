.class final Lcom/sun/jna/platform/win32/Advapi32Util$2;
.super Ljava/lang/Object;
.source "Advapi32Util.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinBase$FE_IMPORT_FUNC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;->backupEncryptedFile(Ljava/io/File;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$elementsReadWrapper:Lcom/sun/jna/ptr/IntByReference;

.field final synthetic val$outputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/sun/jna/ptr/IntByReference;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 3118
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$2;->val$elementsReadWrapper:Lcom/sun/jna/ptr/IntByReference;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$2;->val$outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Lcom/sun/jna/platform/win32/WinDef$DWORD;
    .locals 6

    .line 3122
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$2;->val$elementsReadWrapper:Lcom/sun/jna/ptr/IntByReference;

    invoke-virtual {p2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v4

    .line 3123
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$2;->val$outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    sub-int/2addr p2, v4

    .line 3124
    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$ULONG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$ULONG;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3125
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$2;->val$outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-wide/16 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 3127
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$2;->val$elementsReadWrapper:Lcom/sun/jna/ptr/IntByReference;

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Lcom/sun/jna/ptr/IntByReference;->setValue(I)V

    .line 3128
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    int-to-long v0, v5

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    invoke-virtual {p3, p1}, Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;->setValue(Lcom/sun/jna/platform/win32/WinDef$ULONG;)V

    .line 3129
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    return-object p1
.end method
