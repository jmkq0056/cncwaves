.class final Lcom/sun/jna/platform/win32/Advapi32Util$1;
.super Ljava/lang/Object;
.source "Advapi32Util.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinBase$FE_EXPORT_FUNC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;->backupEncryptedFile(Ljava/io/File;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$outputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 3080
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$1;->val$outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$ULONG;)Lcom/sun/jna/platform/win32/WinDef$DWORD;
    .locals 2

    .line 3084
    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/WinDef$ULONG;->intValue()I

    move-result p2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p1

    .line 3086
    :try_start_0
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$1;->val$outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3090
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    return-object p1

    :catch_0
    move-exception p1

    .line 3088
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
