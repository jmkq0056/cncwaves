.class public final Lcom/stripe/core/readerconnection/ConnectionManager_Factory;
.super Ljava/lang/Object;
.source "ConnectionManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerconnection/ConnectionManager_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/readerconnection/ConnectionManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/core/readerconnection/ConnectionManager_Factory;
    .locals 1

    .line 31
    invoke-static {}, Lcom/stripe/core/readerconnection/ConnectionManager_Factory$InstanceHolder;->access$000()Lcom/stripe/core/readerconnection/ConnectionManager_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/stripe/core/readerconnection/ConnectionManager;
    .locals 1

    .line 35
    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionManager;

    invoke-direct {v0}, Lcom/stripe/core/readerconnection/ConnectionManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/readerconnection/ConnectionManager;
    .locals 1

    .line 27
    invoke-static {}, Lcom/stripe/core/readerconnection/ConnectionManager_Factory;->newInstance()Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/core/readerconnection/ConnectionManager_Factory;->get()Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object v0

    return-object v0
.end method
