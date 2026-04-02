.class public Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;
.super Ljava/lang/Object;
.source "TypeLibUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/TypeLibUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsName"
.end annotation


# instance fields
.field private name:Z

.field private nameBuf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;->nameBuf:Ljava/lang/String;

    .line 350
    iput-boolean p2, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;->name:Z

    return-void
.end method


# virtual methods
.method public getNameBuf()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;->nameBuf:Ljava/lang/String;

    return-object v0
.end method

.method public isName()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$IsName;->name:Z

    return v0
.end method
