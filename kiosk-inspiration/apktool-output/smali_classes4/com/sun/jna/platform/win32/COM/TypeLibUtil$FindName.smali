.class public Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;
.super Ljava/lang/Object;
.source "TypeLibUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/TypeLibUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindName"
.end annotation


# instance fields
.field private nameBuf:Ljava/lang/String;

.field private pTInfo:[Lcom/sun/jna/Pointer;

.field private pcFound:S

.field private rgMemId:[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;


# direct methods
.method constructor <init>(Ljava/lang/String;[Lcom/sun/jna/Pointer;[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;S)V
    .locals 1

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->nameBuf:Ljava/lang/String;

    .line 437
    new-array p1, p4, [Lcom/sun/jna/Pointer;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->pTInfo:[Lcom/sun/jna/Pointer;

    .line 438
    new-array v0, p4, [Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->rgMemId:[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 439
    iput-short p4, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->pcFound:S

    const/4 v0, 0x0

    .line 440
    invoke-static {p2, v0, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->rgMemId:[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p3, v0, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getFound()S
    .locals 1

    .line 482
    iget-short v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->pcFound:S

    return v0
.end method

.method public getMemId()[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->rgMemId:[Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    return-object v0
.end method

.method public getNameBuf()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->nameBuf:Ljava/lang/String;

    return-object v0
.end method

.method public getTInfo()[Lcom/sun/jna/platform/win32/COM/ITypeInfo;
    .locals 4

    .line 459
    iget-short v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->pcFound:S

    new-array v0, v0, [Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    const/4 v1, 0x0

    .line 460
    :goto_0
    iget-short v2, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->pcFound:S

    if-ge v1, v2, :cond_0

    .line 462
    new-instance v2, Lcom/sun/jna/platform/win32/COM/TypeInfo;

    iget-object v3, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$FindName;->pTInfo:[Lcom/sun/jna/Pointer;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/COM/TypeInfo;-><init>(Lcom/sun/jna/Pointer;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
