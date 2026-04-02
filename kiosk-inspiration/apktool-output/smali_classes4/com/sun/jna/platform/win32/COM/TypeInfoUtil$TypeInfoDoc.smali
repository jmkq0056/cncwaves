.class public Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;
.super Ljava/lang/Object;
.source "TypeInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeInfoDoc"
.end annotation


# instance fields
.field private docString:Ljava/lang/String;

.field private helpContext:I

.field private helpFile:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->name:Ljava/lang/String;

    .line 359
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->docString:Ljava/lang/String;

    .line 360
    iput p3, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->helpContext:I

    .line 361
    iput-object p4, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->helpFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocString()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->docString:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpContext()I
    .locals 1

    .line 388
    iget v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->helpContext:I

    return v0
.end method

.method public getHelpFile()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->helpFile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->name:Ljava/lang/String;

    return-object v0
.end method
