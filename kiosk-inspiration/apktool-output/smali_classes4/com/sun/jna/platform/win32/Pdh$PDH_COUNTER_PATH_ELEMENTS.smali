.class public Lcom/sun/jna/platform/win32/Pdh$PDH_COUNTER_PATH_ELEMENTS;
.super Lcom/sun/jna/Structure;
.source "Pdh.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "szMachineName",
        "szObjectName",
        "szInstanceName",
        "szParentInstance",
        "dwInstanceIndex",
        "szCounterName"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Pdh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PDH_COUNTER_PATH_ELEMENTS"
.end annotation


# instance fields
.field public dwInstanceIndex:I

.field public szCounterName:Ljava/lang/String;

.field public szInstanceName:Ljava/lang/String;

.field public szMachineName:Ljava/lang/String;

.field public szObjectName:Ljava/lang/String;

.field public szParentInstance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
