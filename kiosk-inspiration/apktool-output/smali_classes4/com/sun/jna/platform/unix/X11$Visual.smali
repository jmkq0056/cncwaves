.class public Lcom/sun/jna/platform/unix/X11$Visual;
.super Lcom/sun/jna/PointerType;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visual"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisualID()Lcom/sun/jna/platform/unix/X11$VisualID;
    .locals 4

    .line 272
    invoke-virtual {p0}, Lcom/sun/jna/platform/unix/X11$Visual;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lcom/sun/jna/platform/unix/X11$VisualID;

    invoke-virtual {p0}, Lcom/sun/jna/platform/unix/X11$Visual;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    sget v2, Lcom/sun/jna/Native;->POINTER_SIZE:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getNativeLong(J)Lcom/sun/jna/NativeLong;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$VisualID;-><init>(J)V

    return-object v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to retrieve VisualID from a null Visual"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Visual: VisualID=0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/unix/X11$Visual;->getVisualID()Lcom/sun/jna/platform/unix/X11$VisualID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/unix/X11$VisualID;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
