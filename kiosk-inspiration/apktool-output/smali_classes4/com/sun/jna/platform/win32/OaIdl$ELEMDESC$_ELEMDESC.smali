.class public Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC;
.super Lcom/sun/jna/Union;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_ELEMDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC$ByReference;
    }
.end annotation


# instance fields
.field public idldesc:Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;

.field public paramdesc:Lcom/sun/jna/platform/win32/OaIdl$PARAMDESC;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1478
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1482
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1483
    const-string p1, "paramdesc"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC;->setType(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;)V
    .locals 0

    .line 1502
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1503
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC;->idldesc:Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;

    .line 1504
    const-string p1, "idldesc"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$PARAMDESC;)V
    .locals 0

    .line 1492
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1493
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC;->paramdesc:Lcom/sun/jna/platform/win32/OaIdl$PARAMDESC;

    .line 1494
    const-string p1, "paramdesc"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC$_ELEMDESC;->setType(Ljava/lang/String;)V

    return-void
.end method
