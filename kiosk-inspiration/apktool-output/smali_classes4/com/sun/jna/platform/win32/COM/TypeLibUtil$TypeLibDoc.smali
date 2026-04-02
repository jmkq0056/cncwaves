.class public Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;
.super Ljava/lang/Object;
.source "TypeLibUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/TypeLibUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeLibDoc"
.end annotation


# instance fields
.field private docString:Ljava/lang/String;

.field private helpContext:I

.field private helpFile:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->name:Ljava/lang/String;

    .line 263
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->docString:Ljava/lang/String;

    .line 264
    iput p3, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->helpContext:I

    .line 265
    iput-object p4, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->helpFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocString()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->docString:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpContext()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->helpContext:I

    return v0
.end method

.method public getHelpFile()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->helpFile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/TypeLibUtil$TypeLibDoc;->name:Ljava/lang/String;

    return-object v0
.end method
