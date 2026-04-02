.class public Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;
.super Lcom/sun/jna/Union;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BINDPTR"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$BINDPTR$ByReference;
    }
.end annotation


# instance fields
.field public lpfuncdesc:Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;

.field public lptcomp:Lcom/sun/jna/platform/win32/COM/TypeComp;

.field public lpvardesc:Lcom/sun/jna/platform/win32/OaIdl$VARDESC;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1273
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/TypeComp;)V
    .locals 0

    .line 1285
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1286
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;->lptcomp:Lcom/sun/jna/platform/win32/COM/TypeComp;

    .line 1287
    const-class p1, Lcom/sun/jna/platform/win32/COM/TypeComp;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;->setType(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)V
    .locals 0

    .line 1292
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1293
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;->lpfuncdesc:Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;

    .line 1294
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;->setType(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$VARDESC;)V
    .locals 0

    .line 1278
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1279
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;->lpvardesc:Lcom/sun/jna/platform/win32/OaIdl$VARDESC;

    .line 1280
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$VARDESC;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;->setType(Ljava/lang/Class;)V

    return-void
.end method
