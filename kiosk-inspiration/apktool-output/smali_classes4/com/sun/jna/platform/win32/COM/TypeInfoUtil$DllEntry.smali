.class public Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;
.super Ljava/lang/Object;
.source "TypeInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DllEntry"
.end annotation


# instance fields
.field private dllName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->dllName:Ljava/lang/String;

    .line 454
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->name:Ljava/lang/String;

    .line 455
    iput p3, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->ordinal:I

    return-void
.end method


# virtual methods
.method public getDllName()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->dllName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 502
    iget v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->ordinal:I

    return v0
.end method

.method public setDllName(Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->dllName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrdinal(I)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$DllEntry;->ordinal:I

    return-void
.end method
