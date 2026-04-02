.class public Lcom/sun/jna/platform/win32/Guid$GUID$ByReference;
.super Lcom/sun/jna/platform/win32/Guid$GUID;
.source "Guid.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Guid$GUID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$GUID;)V
    .locals 1

    .line 91
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$GUID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Lcom/sun/jna/Pointer;)V

    .line 93
    iget v0, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    iput v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID$ByReference;->Data1:I

    .line 94
    iget-short v0, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    iput-short v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID$ByReference;->Data2:S

    .line 95
    iget-short v0, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    iput-short v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID$ByReference;->Data3:S

    .line 96
    iget-object p1, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Guid$GUID$ByReference;->Data4:[B

    return-void
.end method
