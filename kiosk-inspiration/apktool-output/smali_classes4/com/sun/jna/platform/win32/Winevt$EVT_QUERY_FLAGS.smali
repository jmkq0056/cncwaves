.class public interface abstract Lcom/sun/jna/platform/win32/Winevt$EVT_QUERY_FLAGS;
.super Ljava/lang/Object;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EVT_QUERY_FLAGS"
.end annotation


# static fields
.field public static final EvtQueryChannelPath:I = 0x1

.field public static final EvtQueryFilePath:I = 0x2

.field public static final EvtQueryForwardDirection:I = 0x100

.field public static final EvtQueryReverseDirection:I = 0x200

.field public static final EvtQueryTolerateQueryErrors:I = 0x1000
