.class public Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;
.super Ljava/lang/Object;
.source "TypeInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Invoke"
.end annotation


# instance fields
.field private pExcepInfo:Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

.field private pVarResult:Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

.field private puArgErr:I


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;I)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;->pVarResult:Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    .line 265
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;->pExcepInfo:Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

    .line 266
    iput p3, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;->puArgErr:I

    return-void
.end method


# virtual methods
.method public getPuArgErr()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;->puArgErr:I

    return v0
.end method

.method public getpExcepInfo()Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;->pExcepInfo:Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

    return-object v0
.end method

.method public getpVarResult()Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$Invoke;->pVarResult:Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

    return-object v0
.end method
