.class Lcom/sun/jna/platform/win32/COM/util/Factory$2;
.super Ljava/lang/Object;
.source "Factory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/util/Factory;->discoverClsId(Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sun/jna/platform/win32/Guid$GUID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

.field final synthetic val$annotation:Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$2;->this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$2;->val$annotation:Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$2;->this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$2;->val$annotation:Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;

    invoke-static {v0, v1}, Lcom/sun/jna/platform/win32/COM/util/Factory;->access$201(Lcom/sun/jna/platform/win32/COM/util/Factory;Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/Factory$2;->call()Lcom/sun/jna/platform/win32/Guid$GUID;

    move-result-object v0

    return-object v0
.end method
