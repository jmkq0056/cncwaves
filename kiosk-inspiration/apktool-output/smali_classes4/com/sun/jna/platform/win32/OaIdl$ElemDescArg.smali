.class public Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "elemDescArg"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElemDescArg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;
    }
.end annotation


# instance fields
.field public elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1344
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 1341
    new-array v0, v0, [Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 1348
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x1

    .line 1341
    new-array p1, p1, [Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    .line 1349
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg;->read()V

    return-void
.end method
