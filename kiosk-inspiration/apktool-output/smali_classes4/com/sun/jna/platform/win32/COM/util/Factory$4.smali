.class Lcom/sun/jna/platform/win32/COM/util/Factory$4;
.super Ljava/lang/Object;
.source "Factory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/util/Factory;->createObject(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

.field final synthetic val$comInterface:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Class;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$4;->this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$4;->val$comInterface:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$4;->this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$4;->val$comInterface:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/sun/jna/platform/win32/COM/util/Factory;->access$401(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
