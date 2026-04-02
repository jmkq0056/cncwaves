.class public interface abstract Lcom/sun/jna/platform/win32/Winevt$EVT_EXPORTLOG_FLAGS;
.super Ljava/lang/Object;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EVT_EXPORTLOG_FLAGS"
.end annotation


# static fields
.field public static final EvtExportLogChannelPath:I = 0x1

.field public static final EvtExportLogFilePath:I = 0x2

.field public static final EvtExportLogOverwrite:I = 0x2000

.field public static final EvtExportLogTolerateQueryErrors:I = 0x1000
