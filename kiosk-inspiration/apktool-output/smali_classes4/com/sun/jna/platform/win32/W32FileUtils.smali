.class public Lcom/sun/jna/platform/win32/W32FileUtils;
.super Lcom/sun/jna/platform/FileUtils;
.source "W32FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sun/jna/platform/FileUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public hasTrash()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveToTrash([Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/sun/jna/platform/win32/Shell32;->INSTANCE:Lcom/sun/jna/platform/win32/Shell32;

    .line 39
    new-instance v1, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;-><init>()V

    const/4 v2, 0x3

    .line 40
    iput v2, v1, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;->wFunc:I

    .line 41
    array-length v2, p1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 43
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1, v3}, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;->encodePaths([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;->pFrom:Ljava/lang/String;

    const/16 p1, 0x654

    .line 46
    iput-short p1, v1, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;->fFlags:S

    .line 47
    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Shell32;->SHFileOperation(Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;)I

    move-result p1

    if-nez p1, :cond_2

    .line 52
    iget-boolean p1, v1, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;->fAnyOperationsAborted:Z

    if-nez p1, :cond_1

    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Move to trash aborted"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Move to trash failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/sun/jna/platform/win32/ShellAPI$SHFILEOPSTRUCT;->pFrom:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-static {p1}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessageFromLastErrorCode(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
