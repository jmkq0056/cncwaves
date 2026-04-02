.class public Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;
.super Lcom/sun/jna/IntegerType;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VARIANT_BOOL"
.end annotation


# static fields
.field public static final SIZE:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x2

    .line 162
    invoke-direct {p0, v0, p1, p2}, Lcom/sun/jna/IntegerType;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/32 v0, 0xffff

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 166
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;-><init>(J)V

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;->shortValue()S

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
