.class Lcom/sun/jna/platform/WindowUtils$Holder;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;

.field public static requiresVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 723
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/WindowUtils$W32WindowUtils;-><init>(Lcom/sun/jna/platform/WindowUtils$1;)V

    sput-object v0, Lcom/sun/jna/platform/WindowUtils$Holder;->INSTANCE:Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;

    return-void

    .line 726
    :cond_0
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;-><init>(Lcom/sun/jna/platform/WindowUtils$1;)V

    sput-object v0, Lcom/sun/jna/platform/WindowUtils$Holder;->INSTANCE:Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;

    return-void

    .line 729
    :cond_1
    invoke-static {}, Lcom/sun/jna/Platform;->isX11()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;-><init>(Lcom/sun/jna/platform/WindowUtils$1;)V

    sput-object v0, Lcom/sun/jna/platform/WindowUtils$Holder;->INSTANCE:Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;

    .line 731
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^1\\.4\\..*"

    .line 732
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/jna/platform/WindowUtils$Holder;->requiresVisible:Z

    return-void

    .line 735
    :cond_2
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No support for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
