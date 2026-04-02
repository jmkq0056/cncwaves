.class public Lcom/sun/jna/platform/mac/SystemB$ProcTaskAllInfo;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pbsd",
        "ptinfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcTaskAllInfo"
.end annotation


# instance fields
.field public pbsd:Lcom/sun/jna/platform/mac/SystemB$ProcBsdInfo;

.field public ptinfo:Lcom/sun/jna/platform/mac/SystemB$ProcTaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
