.class public interface abstract Lcom/sun/jna/platform/win32/Winevt$EVT_SEEK_FLAGS;
.super Ljava/lang/Object;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EVT_SEEK_FLAGS"
.end annotation


# static fields
.field public static final EvtSeekOriginMask:I = 0x7

.field public static final EvtSeekRelativeToBookmark:I = 0x4

.field public static final EvtSeekRelativeToCurrent:I = 0x3

.field public static final EvtSeekRelativeToFirst:I = 0x1

.field public static final EvtSeekRelativeToLast:I = 0x2

.field public static final EvtSeekStrict:I = 0x10000
