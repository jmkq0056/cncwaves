.class final Lcom/sun/jna/platform/win32/Kernel32Util$1;
.super Ljava/lang/Object;
.source "Kernel32Util.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinBase$EnumResTypeProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/Kernel32Util;->getResourceNames(Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$types:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Kernel32Util$1;->val$types:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)Z
    .locals 4

    .line 992
    invoke-static {p2}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 993
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Kernel32Util$1;->val$types:Ljava/util/List;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Kernel32Util$1;->val$types:Ljava/util/List;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
