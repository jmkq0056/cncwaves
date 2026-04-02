.class public interface abstract Lcom/sun/jna/platform/win32/Winevt;
.super Ljava/lang/Object;
.source "Winevt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_EVENT_PROPERTY_ID;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_QUERY_PROPERTY_ID;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_EVENT_METADATA_PROPERTY_ID;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_PUBLISHER_METADATA_PROPERTY_ID;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_CHANNEL_REFERENCE_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_CHANNEL_SID_TYPE;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_CHANNEL_CLOCK_TYPE;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_CHANNEL_ISOLATION_TYPE;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_CHANNEL_TYPE;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_CHANNEL_CONFIG_PROPERTY_ID;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_EXPORTLOG_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_LOG_PROPERTY_ID;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_OPEN_LOG_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_FORMAT_MESSAGE_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_RENDER_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_RENDER_CONTEXT_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_SYSTEM_PROPERTY_ID;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_SUBSCRIBE_NOTIFY_ACTION;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_SUBSCRIBE_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_SEEK_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_QUERY_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_RPC_LOGIN;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_RPC_LOGIN_FLAGS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_LOGIN_CLASS;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;
    }
.end annotation


# static fields
.field public static final EVT_ALL_ACCESS:I = 0x7

.field public static final EVT_CLEAR_ACCESS:I = 0x4

.field public static final EVT_READ_ACCESS:I = 0x1

.field public static final EVT_VARIANT_TYPE_ARRAY:I = 0x80

.field public static final EVT_VARIANT_TYPE_MASK:I = 0x7f

.field public static final EVT_WRITE_ACCESS:I = 0x2
