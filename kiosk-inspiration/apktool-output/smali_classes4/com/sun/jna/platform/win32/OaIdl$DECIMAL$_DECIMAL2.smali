.class public Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2;
.super Lcom/sun/jna/Union;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_DECIMAL2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2$_DECIMAL2_DECIMAL;
    }
.end annotation


# instance fields
.field public Lo64:Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;

.field public decimal2_DECIMAL:Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2$_DECIMAL2_DECIMAL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1135
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1136
    const-string v0, "Lo64"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1140
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1141
    const-string p1, "Lo64"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2;->setType(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2;->read()V

    return-void
.end method
