.class public Lcom/sun/jna/platform/win32/WinDef$POINT;
.super Lcom/sun/jna/Structure;
.source "WinDef.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "x",
        "y"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "POINT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinDef$POINT$ByValue;,
        Lcom/sun/jna/platform/win32/WinDef$POINT$ByReference;
    }
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1149
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1171
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1172
    iput p1, p0, Lcom/sun/jna/platform/win32/WinDef$POINT;->x:I

    .line 1173
    iput p2, p0, Lcom/sun/jna/platform/win32/WinDef$POINT;->y:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1159
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1160
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$POINT;->read()V

    return-void
.end method
