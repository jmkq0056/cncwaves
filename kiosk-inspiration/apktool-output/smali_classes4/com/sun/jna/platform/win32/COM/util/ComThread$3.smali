.class Lcom/sun/jna/platform/win32/COM/util/ComThread$3;
.super Ljava/lang/Object;
.source "ComThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/util/ComThread;->terminate(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$3;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 113
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Ole32;->CoUninitialize()V

    return-void
.end method
