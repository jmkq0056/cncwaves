.class Lcom/sun/jna/platform/win32/COM/DispatchListener$6;
.super Ljava/lang/Object;
.source "DispatchListener.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/DispatchVTable$GetIDsOfNamesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/DispatchListener;->initVTable(Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/DispatchListener;

.field final synthetic val$callback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/DispatchListener;Lcom/sun/jna/platform/win32/COM/IDispatchCallback;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener$6;->this$0:Lcom/sun/jna/platform/win32/COM/DispatchListener;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener$6;->val$callback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 0

    .line 95
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/DispatchListener$6;->val$callback:Lcom/sun/jna/platform/win32/COM/IDispatchCallback;

    invoke-interface/range {p1 .. p6}, Lcom/sun/jna/platform/win32/COM/IDispatchCallback;->GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    return-object p1
.end method
