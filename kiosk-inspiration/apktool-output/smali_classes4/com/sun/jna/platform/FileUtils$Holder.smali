.class Lcom/sun/jna/platform/FileUtils$Holder;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/FileUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Lcom/sun/jna/platform/win32/W32FileUtils;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/W32FileUtils;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/FileUtils$Holder;->INSTANCE:Lcom/sun/jna/platform/FileUtils;

    return-void

    .line 55
    :cond_0
    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/sun/jna/platform/mac/MacFileUtils;

    invoke-direct {v0}, Lcom/sun/jna/platform/mac/MacFileUtils;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/FileUtils$Holder;->INSTANCE:Lcom/sun/jna/platform/FileUtils;

    return-void

    .line 59
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/FileUtils$DefaultFileUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/FileUtils$DefaultFileUtils;-><init>(Lcom/sun/jna/platform/FileUtils$1;)V

    sput-object v0, Lcom/sun/jna/platform/FileUtils$Holder;->INSTANCE:Lcom/sun/jna/platform/FileUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
