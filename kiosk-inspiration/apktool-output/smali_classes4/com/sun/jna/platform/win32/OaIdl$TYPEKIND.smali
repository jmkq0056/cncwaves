.class public Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;
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
    name = "TYPEKIND"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND$ByReference;
    }
.end annotation


# static fields
.field public static final TKIND_ALIAS:I = 0x6

.field public static final TKIND_COCLASS:I = 0x5

.field public static final TKIND_DISPATCH:I = 0x4

.field public static final TKIND_ENUM:I = 0x0

.field public static final TKIND_INTERFACE:I = 0x3

.field public static final TKIND_MAX:I = 0x8

.field public static final TKIND_MODULE:I = 0x2

.field public static final TKIND_RECORD:I = 0x1

.field public static final TKIND_UNION:I = 0x7


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 461
    iput p1, p0, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->value:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 466
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;->read()V

    return-void
.end method
