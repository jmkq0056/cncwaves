.class Lcom/sun/jna/platform/KeyboardUtils$MacKeyboardUtils;
.super Lcom/sun/jna/platform/KeyboardUtils$NativeKeyboardUtils;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/KeyboardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacKeyboardUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/KeyboardUtils$NativeKeyboardUtils;-><init>(Lcom/sun/jna/platform/KeyboardUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/jna/platform/KeyboardUtils$1;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/sun/jna/platform/KeyboardUtils$MacKeyboardUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public isPressed(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
