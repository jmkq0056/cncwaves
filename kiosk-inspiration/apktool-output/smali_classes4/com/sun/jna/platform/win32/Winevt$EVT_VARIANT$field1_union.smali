.class public Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;
.super Lcom/sun/jna/Union;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "field1_union"
.end annotation


# instance fields
.field public byteValue:B

.field public doubleVal:D

.field public floatValue:F

.field public intValue:I

.field public longValue:J

.field public pointerValue:Lcom/sun/jna/Pointer;

.field public shortValue:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    return-void
.end method
