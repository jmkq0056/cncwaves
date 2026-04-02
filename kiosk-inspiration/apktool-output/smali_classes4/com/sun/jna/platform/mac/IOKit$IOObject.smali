.class public Lcom/sun/jna/platform/mac/IOKit$IOObject;
.super Lcom/sun/jna/PointerType;
.source "IOKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/IOKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IOObject"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public conformsTo(Ljava/lang/String;)Z
    .locals 1

    .line 100
    sget-object v0, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/mac/IOKit;->IOObjectConformsTo(Lcom/sun/jna/platform/mac/IOKit$IOObject;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public release()I
    .locals 1

    .line 109
    sget-object v0, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/mac/IOKit;->IOObjectRelease(Lcom/sun/jna/platform/mac/IOKit$IOObject;)I

    move-result v0

    return v0
.end method
