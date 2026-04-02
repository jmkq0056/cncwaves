.class public Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;
.super Lcom/sun/jna/Structure;
.source "Ntifs.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ReparseTag",
        "ReparseDataLength",
        "Reserved",
        "u"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ntifs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REPARSE_DATA_BUFFER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;,
        Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$ByReference;
    }
.end annotation


# instance fields
.field public ReparseDataLength:S

.field public ReparseTag:I

.field public Reserved:S

.field public u:Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 343
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 296
    iput v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseTag:I

    .line 301
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseDataLength:S

    .line 309
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->Reserved:S

    return-void
.end method

.method public constructor <init>(IS)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 348
    iput p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseTag:I

    .line 349
    iput-short p2, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->Reserved:S

    const/4 p1, 0x0

    .line 350
    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseDataLength:S

    .line 351
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->write()V

    return-void
.end method

.method public constructor <init>(ISLcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;)V
    .locals 1

    .line 355
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 301
    iput-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseDataLength:S

    .line 356
    iput p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseTag:I

    .line 357
    iput-short p2, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->Reserved:S

    .line 358
    invoke-virtual {p3}, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;->size()I

    move-result p1

    int-to-short p1, p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseDataLength:S

    .line 359
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->u:Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;

    const-class p2, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;

    invoke-virtual {p1, p2}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;->setType(Ljava/lang/Class;)V

    .line 360
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->u:Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;

    iput-object p3, p1, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;->symLinkReparseBuffer:Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;

    .line 361
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->write()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x0

    .line 296
    iput p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseTag:I

    .line 301
    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseDataLength:S

    .line 309
    iput-short p1, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->Reserved:S

    .line 366
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->read()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 332
    const-class v0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 339
    iget-short v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseDataLength:S

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public read()V
    .locals 2

    .line 371
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 373
    iget v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->ReparseTag:I

    const v1, -0x5ffffffd

    if-eq v0, v1, :cond_1

    const v1, -0x5ffffff4

    if-eq v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->u:Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;

    const-class v1, Lcom/sun/jna/platform/win32/Ntifs$GenericReparseBuffer;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->u:Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;

    const-class v1, Lcom/sun/jna/platform/win32/Ntifs$SymbolicLinkReparseBuffer;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;->setType(Ljava/lang/Class;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->u:Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;

    const-class v1, Lcom/sun/jna/platform/win32/Ntifs$MountPointReparseBuffer;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;->setType(Ljava/lang/Class;)V

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER;->u:Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Ntifs$REPARSE_DATA_BUFFER$REPARSE_UNION;->read()V

    return-void
.end method
