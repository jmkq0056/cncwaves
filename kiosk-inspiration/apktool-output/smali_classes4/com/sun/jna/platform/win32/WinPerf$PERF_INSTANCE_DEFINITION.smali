.class public Lcom/sun/jna/platform/win32/WinPerf$PERF_INSTANCE_DEFINITION;
.super Lcom/sun/jna/Structure;
.source "WinPerf.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "ByteLength",
        "ParentObjectTitleIndex",
        "ParentObjectInstance",
        "UniqueID",
        "NameOffset",
        "NameLength"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinPerf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PERF_INSTANCE_DEFINITION"
.end annotation


# instance fields
.field public ByteLength:I

.field public NameLength:I

.field public NameOffset:I

.field public ParentObjectInstance:I

.field public ParentObjectTitleIndex:I

.field public UniqueID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 470
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinPerf$PERF_INSTANCE_DEFINITION;->read()V

    return-void
.end method
