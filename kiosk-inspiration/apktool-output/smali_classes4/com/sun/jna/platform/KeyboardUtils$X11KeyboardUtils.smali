.class Lcom/sun/jna/platform/KeyboardUtils$X11KeyboardUtils;
.super Lcom/sun/jna/platform/KeyboardUtils$NativeKeyboardUtils;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/KeyboardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X11KeyboardUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/KeyboardUtils$NativeKeyboardUtils;-><init>(Lcom/sun/jna/platform/KeyboardUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/jna/platform/KeyboardUtils$1;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/sun/jna/platform/KeyboardUtils$X11KeyboardUtils;-><init>()V

    return-void
.end method

.method private toKeySym(II)I
    .locals 1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x20

    return p1

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_1

    return p1

    :cond_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    const p1, 0xffe1

    return p1

    :cond_2
    const/16 v0, 0x11

    if-ne p1, v0, :cond_4

    and-int/lit8 p1, p2, 0x3

    if-eqz p1, :cond_3

    const p1, 0xffe4

    return p1

    :cond_3
    const p1, 0xffe3

    return p1

    :cond_4
    const/16 v0, 0x12

    if-ne p1, v0, :cond_6

    and-int/lit8 p1, p2, 0x3

    if-eqz p1, :cond_5

    const p1, 0xffea

    return p1

    :cond_5
    const p1, 0xffe9

    return p1

    :cond_6
    const/16 v0, 0x9d

    if-ne p1, v0, :cond_8

    and-int/lit8 p1, p2, 0x3

    if-eqz p1, :cond_7

    const p1, 0xffe8

    return p1

    :cond_7
    const p1, 0xffe7

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public isPressed(II)Z
    .locals 7

    .line 154
    sget-object v0, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    const/4 v1, 0x0

    .line 155
    invoke-interface {v0, v1}, Lcom/sun/jna/platform/unix/X11;->XOpenDisplay(Ljava/lang/String;)Lcom/sun/jna/platform/unix/X11$Display;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x20

    .line 160
    :try_start_0
    new-array v2, v2, [B

    .line 162
    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11;->XQueryKeymap(Lcom/sun/jna/platform/unix/X11$Display;[B)I

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/KeyboardUtils$X11KeyboardUtils;->toKeySym(II)I

    move-result p1

    const/4 p2, 0x5

    :goto_0
    const/16 v3, 0x100

    const/4 v4, 0x0

    if-ge p2, v3, :cond_1

    .line 165
    div-int/lit8 v3, p2, 0x8

    .line 166
    rem-int/lit8 v5, p2, 0x8

    .line 167
    aget-byte v3, v2, v3

    const/4 v6, 0x1

    shl-int v5, v6, v5

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    int-to-byte v3, p2

    .line 168
    invoke-interface {v0, v1, v3, v4}, Lcom/sun/jna/platform/unix/X11;->XKeycodeToKeysym(Lcom/sun/jna/platform/unix/X11$Display;BI)Lcom/sun/jna/platform/unix/X11$KeySym;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/jna/platform/unix/X11$KeySym;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 175
    invoke-interface {v0, v1}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    return v6

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    return v4

    :catchall_0
    move-exception p1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    .line 176
    throw p1

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Can\'t open X Display"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
