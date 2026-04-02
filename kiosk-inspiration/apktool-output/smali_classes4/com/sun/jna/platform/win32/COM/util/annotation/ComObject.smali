.class public interface abstract annotation Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;
.super Ljava/lang/Object;
.source "ComObject.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;
        clsId = ""
        progId = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract clsId()Ljava/lang/String;
.end method

.method public abstract progId()Ljava/lang/String;
.end method
