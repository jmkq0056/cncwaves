.class public Lcom/sun/jna/platform/win32/OaIdl$CALLCONV;
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
    name = "CALLCONV"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$CALLCONV$ByReference;
    }
.end annotation


# static fields
.field public static final CC_CDECL:I = 0x1

.field public static final CC_FASTCALL:I = 0x0

.field public static final CC_FPFASTCALL:I = 0x5

.field public static final CC_MACPASCAL:I = 0x3

.field public static final CC_MAX:I = 0x9

.field public static final CC_MPWCDECL:I = 0x7

.field public static final CC_MPWPASCAL:I = 0x8

.field public static final CC_MSCPASCAL:I = 0x2

.field public static final CC_PASCAL:I = 0x2

.field public static final CC_STDCALL:I = 0x4

.field public static final CC_SYSCALL:I = 0x6


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1605
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1608
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1609
    iput p1, p0, Lcom/sun/jna/platform/win32/OaIdl$CALLCONV;->value:I

    return-void
.end method
