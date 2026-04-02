.class public Lcom/sun/jna/platform/win32/BaseTSD$LONG_PTR;
.super Lcom/sun/jna/IntegerType;
.source "BaseTSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/BaseTSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LONG_PTR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/BaseTSD$LONG_PTR;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 48
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/jna/IntegerType;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public toPointer()Lcom/sun/jna/Pointer;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/BaseTSD$LONG_PTR;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/jna/Pointer;->createConstant(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    return-object v0
.end method
