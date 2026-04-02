.class public Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.source "TlbPropertyPut.java"


# direct methods
.method public constructor <init>(IILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 3

    .line 53
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "set"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->getMethodName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodName:Ljava/lang/String;

    .line 56
    iget-object p2, p4, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    iget-short p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->paramCount:S

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p5, p2, p3}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getNames(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;I)[Ljava/lang/String;

    move-result-object p2

    .line 58
    iget-short p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->paramCount:S

    const-string p5, ", "

    if-lez p3, :cond_0

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodvariables:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodvariables:Ljava/lang/String;

    :cond_0
    const/4 p3, 0x0

    .line 61
    :goto_0
    iget-short v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->paramCount:S

    if-ge p3, v0, :cond_2

    .line 62
    iget-object v0, p4, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    aget-object v0, v0, p3

    .line 63
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->getType(Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodparams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, p3

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodparams:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodvariables:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceJavaKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodvariables:Ljava/lang/String;

    .line 69
    iget-short v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->paramCount:S

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodparams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodparams:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodvariables:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodvariables:Ljava/lang/String;

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 75
    :cond_2
    const-string p2, "helpstring"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->docStr:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string p2, "methodname"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string p2, "methodparams"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodparams:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string p2, "methodvariables"

    iget-object p3, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->methodvariables:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-short p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->vtableId:S

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "vtableid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "memberid"

    invoke-virtual {p0, p3, p2}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string p2, "functionCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut;->replaceVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassTemplate()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "com/sun/jna/platform/win32/COM/tlb/imp/TlbPropertyPut.template"

    return-object v0
.end method
