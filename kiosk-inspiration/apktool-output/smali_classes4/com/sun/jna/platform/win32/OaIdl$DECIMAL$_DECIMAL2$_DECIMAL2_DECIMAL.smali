.class public Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2$_DECIMAL2_DECIMAL;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Lo32",
        "Mid32"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$_DECIMAL2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_DECIMAL2_DECIMAL"
.end annotation


# instance fields
.field public Lo32:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public Mid32:Lcom/sun/jna/platform/win32/WinDef$BYTE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1156
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
