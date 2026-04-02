.class public Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "wReserved",
        "decimal1",
        "Hi32",
        "decimal2"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DECIMAL"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2;,
        Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1;,
        Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$ByReference;
    }
.end annotation


# instance fields
.field public Hi32:Lcom/sun/jna/NativeLong;

.field public decimal1:Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL1;

.field public decimal2:Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2;

.field public wReserved:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1167
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1171
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
