.class public interface abstract Lcom/sun/jna/platform/win32/COM/util/IRunningObjectTable;
.super Ljava/lang/Object;
.source "IRunningObjectTable.java"


# virtual methods
.method public abstract enumRunning()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/sun/jna/platform/win32/COM/util/IDispatch;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveObjectsByInterface(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
