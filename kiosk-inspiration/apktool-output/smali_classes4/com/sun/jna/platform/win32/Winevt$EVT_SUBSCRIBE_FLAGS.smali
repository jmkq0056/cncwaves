.class public interface abstract Lcom/sun/jna/platform/win32/Winevt$EVT_SUBSCRIBE_FLAGS;
.super Ljava/lang/Object;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EVT_SUBSCRIBE_FLAGS"
.end annotation


# static fields
.field public static final EvtSubscribeOriginMask:I = 0x3

.field public static final EvtSubscribeStartAfterBookmark:I = 0x3

.field public static final EvtSubscribeStartAtOldestRecord:I = 0x2

.field public static final EvtSubscribeStrict:I = 0x10000

.field public static final EvtSubscribeToFutureEvents:I = 0x1

.field public static final EvtSubscribeTolerateQueryErrors:I = 0x1000
