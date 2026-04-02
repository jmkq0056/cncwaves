.class public Lcom/sun/jna/platform/mac/SystemB$ProcTaskInfo;
.super Lcom/sun/jna/Structure;
.source "SystemB.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pti_virtual_size",
        "pti_resident_size",
        "pti_total_user",
        "pti_total_system",
        "pti_threads_user",
        "pti_threads_system",
        "pti_policy",
        "pti_faults",
        "pti_pageins",
        "pti_cow_faults",
        "pti_messages_sent",
        "pti_messages_received",
        "pti_syscalls_mach",
        "pti_syscalls_unix",
        "pti_csw",
        "pti_threadnum",
        "pti_numrunning",
        "pti_priority"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/SystemB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcTaskInfo"
.end annotation


# instance fields
.field public pti_cow_faults:I

.field public pti_csw:I

.field public pti_faults:I

.field public pti_messages_received:I

.field public pti_messages_sent:I

.field public pti_numrunning:I

.field public pti_pageins:I

.field public pti_policy:I

.field public pti_priority:I

.field public pti_resident_size:J

.field public pti_syscalls_mach:I

.field public pti_syscalls_unix:I

.field public pti_threadnum:I

.field public pti_threads_system:J

.field public pti_threads_user:J

.field public pti_total_system:J

.field public pti_total_user:J

.field public pti_virtual_size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
