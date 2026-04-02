.class public Lcom/sun/jna/platform/unix/X11$AtomByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    sget v0, Lcom/sun/jna/platform/unix/X11$XID;->SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/unix/X11$Atom;
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/sun/jna/platform/unix/X11$AtomByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getNativeLong(J)Lcom/sun/jna/NativeLong;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/sun/jna/platform/unix/X11$Atom;

    invoke-direct {v1}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sun/jna/platform/unix/X11$Atom;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/X11$Atom;

    return-object v0
.end method
