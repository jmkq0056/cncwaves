.class public Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.super Lcom/sun/jna/PointerType;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HANDLE"
.end annotation


# instance fields
.field private immutable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1306
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    .line 1307
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->setPointer(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x1

    .line 1308
    iput-boolean p1, p0, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->immutable:Z

    return-void
.end method


# virtual methods
.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 0

    .line 1314
    invoke-super {p0, p1, p2}, Lcom/sun/jna/PointerType;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p1

    .line 1315
    sget-object p2, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {p2, p1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1316
    sget-object p1, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    :cond_0
    return-object p1
.end method

.method public setPointer(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 1323
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->immutable:Z

    if-nez v0, :cond_0

    .line 1327
    invoke-super {p0, p1}, Lcom/sun/jna/PointerType;->setPointer(Lcom/sun/jna/Pointer;)V

    return-void

    .line 1324
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "immutable reference"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1332
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
