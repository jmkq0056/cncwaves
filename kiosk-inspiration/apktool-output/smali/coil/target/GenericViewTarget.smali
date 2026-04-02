.class public abstract Lcoil/target/GenericViewTarget;
.super Ljava/lang/Object;
.source "GenericViewTarget.kt"

# interfaces
.implements Lcoil/target/ViewTarget;
.implements Lcoil/transition/TransitionTarget;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcoil/target/ViewTarget<",
        "TT;>;",
        "Lcoil/transition/TransitionTarget;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00020\u00042\u00020\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0008H\u0016J\u0008\u0010\u0019\u001a\u00020\u0010H\u0004J\u0012\u0010\u001a\u001a\u00020\u00102\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0004R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcoil/target/GenericViewTarget;",
        "T",
        "Landroid/view/View;",
        "Lcoil/target/ViewTarget;",
        "Lcoil/transition/TransitionTarget;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "()V",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "getDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "isStarted",
        "",
        "onError",
        "",
        "error",
        "onStart",
        "placeholder",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onStop",
        "onSuccess",
        "result",
        "updateAnimation",
        "updateDrawable",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private isStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public onError(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcoil/target/GenericViewTarget;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcoil/target/GenericViewTarget;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcoil/target/GenericViewTarget;->isStarted:Z

    .line 35
    invoke-virtual {p0}, Lcoil/target/GenericViewTarget;->updateAnimation()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcoil/target/GenericViewTarget;->isStarted:Z

    .line 40
    invoke-virtual {p0}, Lcoil/target/GenericViewTarget;->updateAnimation()V

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcoil/target/GenericViewTarget;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract setDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method protected final updateAnimation()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcoil/target/GenericViewTarget;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 53
    :cond_1
    iget-boolean v1, p0, Lcoil/target/GenericViewTarget;->isStarted:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    :cond_2
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method protected final updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcoil/target/GenericViewTarget;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lcoil/target/GenericViewTarget;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Lcoil/target/GenericViewTarget;->updateAnimation()V

    return-void
.end method
