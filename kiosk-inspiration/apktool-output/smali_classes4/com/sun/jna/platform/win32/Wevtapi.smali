.class public interface abstract Lcom/sun/jna/platform/win32/Wevtapi;
.super Ljava/lang/Object;
.source "Wevtapi.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    const-class v0, Lcom/sun/jna/platform/win32/Wevtapi;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->UNICODE_OPTIONS:Ljava/util/Map;

    const-string v2, "wevtapi"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Wevtapi;

    sput-object v0, Lcom/sun/jna/platform/win32/Wevtapi;->INSTANCE:Lcom/sun/jna/platform/win32/Wevtapi;

    return-void
.end method


# virtual methods
.method public abstract EvtArchiveExportedLog(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;II)Z
.end method

.method public abstract EvtCancel(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;)Z
.end method

.method public abstract EvtClearLog(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract EvtClose(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;)Z
.end method

.method public abstract EvtCreateBookmark(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtCreateRenderContext(I[Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtExportLog(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract EvtFormatMessage(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;II[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;II[CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetChannelConfigProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetEventInfo(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetEventMetadataProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetExtendedStatus(I[CLcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract EvtGetLogInfo(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetObjectArrayProperty(Lcom/sun/jna/Pointer;IIIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetObjectArraySize(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetPublisherMetadataProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtGetQueryInfo(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtNext(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I[Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtNextChannelPath(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I[CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtNextEventMetadata(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtNextPublisherId(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I[CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtOpenChannelConfig(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtOpenChannelEnum(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtOpenEventMetadataEnum(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtOpenLog(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtOpenPublisherEnum(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtOpenPublisherMetadata(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;Ljava/lang/String;II)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtOpenSession(ILcom/sun/jna/platform/win32/Winevt$EVT_RPC_LOGIN;II)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtQuery(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtRender(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EvtSaveChannelConfig(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;I)Z
.end method

.method public abstract EvtSeek(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;JLcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;II)Z
.end method

.method public abstract EvtSetChannelConfigProperty(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;IILcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;)Z
.end method

.method public abstract EvtSubscribe(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/Pointer;Lcom/sun/jna/Callback;I)Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;
.end method

.method public abstract EvtUpdateBookmark(Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;Lcom/sun/jna/platform/win32/Winevt$EVT_HANDLE;)Z
.end method
