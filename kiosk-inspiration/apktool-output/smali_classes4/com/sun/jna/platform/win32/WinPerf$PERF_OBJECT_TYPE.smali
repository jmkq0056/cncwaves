.class public Lcom/sun/jna/platform/win32/WinPerf$PERF_OBJECT_TYPE;
.super Lcom/sun/jna/Structure;
.source "WinPerf.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "TotalByteLength",
        "DefinitionLength",
        "HeaderLength",
        "ObjectNameTitleIndex",
        "ObjectNameTitle",
        "ObjectHelpTitleIndex",
        "ObjectHelpTitle",
        "DetailLevel",
        "NumCounters",
        "DefaultCounter",
        "NumInstances",
        "CodePage",
        "PerfTime",
        "PerfFreq"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinPerf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PERF_OBJECT_TYPE"
.end annotation


# instance fields
.field public CodePage:I

.field public DefaultCounter:I

.field public DefinitionLength:I

.field public DetailLevel:I

.field public HeaderLength:I

.field public NumCounters:I

.field public NumInstances:I

.field public ObjectHelpTitle:I

.field public ObjectHelpTitleIndex:I

.field public ObjectNameTitle:I

.field public ObjectNameTitleIndex:I

.field public PerfFreq:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public PerfTime:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public TotalByteLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 503
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 508
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinPerf$PERF_OBJECT_TYPE;->read()V

    return-void
.end method
