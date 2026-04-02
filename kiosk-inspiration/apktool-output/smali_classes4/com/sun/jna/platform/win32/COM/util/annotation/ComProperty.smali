.class public interface abstract annotation Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;
.super Ljava/lang/Object;
.source "ComProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/sun/jna/platform/win32/COM/util/annotation/ComProperty;
        dispId = -0x1
        name = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract dispId()I
.end method

.method public abstract name()Ljava/lang/String;
.end method
