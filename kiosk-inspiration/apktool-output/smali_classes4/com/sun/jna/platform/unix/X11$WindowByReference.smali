.class public Lcom/sun/jna/platform/unix/X11$WindowByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 249
    sget v0, Lcom/sun/jna/platform/unix/X11$XID;->SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/unix/X11$Window;
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/sun/jna/platform/unix/X11$WindowByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getNativeLong(J)Lcom/sun/jna/NativeLong;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/sun/jna/platform/unix/X11$Window;->None:Lcom/sun/jna/platform/unix/X11$Window;

    return-object v0

    :cond_0
    new-instance v1, Lcom/sun/jna/platform/unix/X11$Window;

    invoke-virtual {v0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/unix/X11$Window;-><init>(J)V

    return-object v1
.end method
