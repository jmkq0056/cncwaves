.class public Ldagger/internal/LazyClassKeyMap$MapFactory;
.super Ljava/lang/Object;
.source "LazyClassKeyMap.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/LazyClassKeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Map<",
        "Ljava/lang/Class<",
        "*>;TV;>;>;"
    }
.end annotation


# instance fields
.field delegate:Ldagger/internal/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Factory<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Factory<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;>;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Ldagger/internal/LazyClassKeyMap$MapFactory;->delegate:Ldagger/internal/Factory;

    return-void
.end method

.method public static of(Ldagger/internal/Factory;)Ldagger/internal/LazyClassKeyMap$MapFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Factory<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;>;)",
            "Ldagger/internal/LazyClassKeyMap$MapFactory<",
            "TV;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Ldagger/internal/LazyClassKeyMap$MapFactory;

    invoke-direct {v0, p0}, Ldagger/internal/LazyClassKeyMap$MapFactory;-><init>(Ldagger/internal/Factory;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 115
    invoke-virtual {p0}, Ldagger/internal/LazyClassKeyMap$MapFactory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;TV;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Ldagger/internal/LazyClassKeyMap$MapFactory;->delegate:Ldagger/internal/Factory;

    invoke-interface {v0}, Ldagger/internal/Factory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ldagger/internal/LazyClassKeyMap;->of(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
