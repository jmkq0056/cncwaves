.class public Lcom/sun/jna/platform/win32/OaIdl$VARKIND;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "value"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VARKIND"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$VARKIND$ByReference;
    }
.end annotation


# static fields
.field public static final VAR_CONST:I = 0x2

.field public static final VAR_DISPATCH:I = 0x3

.field public static final VAR_PERINSTANCE:I = 0x0

.field public static final VAR_STATIC:I = 0x1


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1631
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1634
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1635
    iput p1, p0, Lcom/sun/jna/platform/win32/OaIdl$VARKIND;->value:I

    return-void
.end method
