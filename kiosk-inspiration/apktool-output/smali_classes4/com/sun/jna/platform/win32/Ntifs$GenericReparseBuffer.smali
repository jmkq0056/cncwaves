.class public Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;
.super Lcom/sun/jna/Structure;
.source "Ntifs.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "DataBuffer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ntifs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericReparseBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer$ByReference;
    }
.end annotation


# instance fields
.field public DataBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x4000

    .line 255
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;->DataBuffer:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x4000

    .line 255
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;->DataBuffer:[B

    .line 267
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;->read()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x4000

    .line 255
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;->DataBuffer:[B

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;->DataBuffer:[B

    .line 273
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;->write()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 258
    const-class v0, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
