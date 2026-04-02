.class public Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1;
.super Lcom/sun/jna/Union;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_DECIMAL1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1$_DECIMAL1_DECIMAL;
    }
.end annotation


# instance fields
.field public decimal1_DECIMAL:Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1$_DECIMAL1_DECIMAL;

.field public signscale:Lcom/sun/jna/platform/win32/WinDef$USHORT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1106
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1107
    const-string v0, "signscale"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1111
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1112
    const-string p1, "signscale"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1;->setType(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1;->read()V

    return-void
.end method
