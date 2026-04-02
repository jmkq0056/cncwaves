.class public Lcom/sun/jna/platform/win32/OaIdl$LIBFLAGS;
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
    name = "LIBFLAGS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$LIBFLAGS$ByReference;
    }
.end annotation


# static fields
.field public static final LIBFLAG_FCONTROL:I = 0x2

.field public static final LIBFLAG_FHASDISKIMAGE:I = 0x8

.field public static final LIBFLAG_FHIDDEN:I = 0x4

.field public static final LIBFLAG_FRESTRICTED:I = 0x1


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1210
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1213
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1214
    iput p1, p0, Lcom/sun/jna/platform/win32/OaIdl$LIBFLAGS;->value:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1218
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1219
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$LIBFLAGS;->read()V

    return-void
.end method
