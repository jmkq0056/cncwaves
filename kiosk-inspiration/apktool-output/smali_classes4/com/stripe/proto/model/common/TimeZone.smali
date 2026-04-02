.class public final enum Lcom/stripe/proto/model/common/TimeZone;
.super Ljava/lang/Enum;
.source "TimeZone.kt"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/TimeZone$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/proto/model/common/TimeZone;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0003\u0008\u00db\u0004\u0008\u0086\u0081\u0002\u0018\u0000 \u00de\u00042\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0002\u00de\u0004B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086j\u0002\u00087j\u0002\u00088j\u0002\u00089j\u0002\u0008:j\u0002\u0008;j\u0002\u0008<j\u0002\u0008=j\u0002\u0008>j\u0002\u0008?j\u0002\u0008@j\u0002\u0008Aj\u0002\u0008Bj\u0002\u0008Cj\u0002\u0008Dj\u0002\u0008Ej\u0002\u0008Fj\u0002\u0008Gj\u0002\u0008Hj\u0002\u0008Ij\u0002\u0008Jj\u0002\u0008Kj\u0002\u0008Lj\u0002\u0008Mj\u0002\u0008Nj\u0002\u0008Oj\u0002\u0008Pj\u0002\u0008Qj\u0002\u0008Rj\u0002\u0008Sj\u0002\u0008Tj\u0002\u0008Uj\u0002\u0008Vj\u0002\u0008Wj\u0002\u0008Xj\u0002\u0008Yj\u0002\u0008Zj\u0002\u0008[j\u0002\u0008\\j\u0002\u0008]j\u0002\u0008^j\u0002\u0008_j\u0002\u0008`j\u0002\u0008aj\u0002\u0008bj\u0002\u0008cj\u0002\u0008dj\u0002\u0008ej\u0002\u0008fj\u0002\u0008gj\u0002\u0008hj\u0002\u0008ij\u0002\u0008jj\u0002\u0008kj\u0002\u0008lj\u0002\u0008mj\u0002\u0008nj\u0002\u0008oj\u0002\u0008pj\u0002\u0008qj\u0002\u0008rj\u0002\u0008sj\u0002\u0008tj\u0002\u0008uj\u0002\u0008vj\u0002\u0008wj\u0002\u0008xj\u0002\u0008yj\u0002\u0008zj\u0002\u0008{j\u0002\u0008|j\u0002\u0008}j\u0002\u0008~j\u0002\u0008\u007fj\u0003\u0008\u0080\u0001j\u0003\u0008\u0081\u0001j\u0003\u0008\u0082\u0001j\u0003\u0008\u0083\u0001j\u0003\u0008\u0084\u0001j\u0003\u0008\u0085\u0001j\u0003\u0008\u0086\u0001j\u0003\u0008\u0087\u0001j\u0003\u0008\u0088\u0001j\u0003\u0008\u0089\u0001j\u0003\u0008\u008a\u0001j\u0003\u0008\u008b\u0001j\u0003\u0008\u008c\u0001j\u0003\u0008\u008d\u0001j\u0003\u0008\u008e\u0001j\u0003\u0008\u008f\u0001j\u0003\u0008\u0090\u0001j\u0003\u0008\u0091\u0001j\u0003\u0008\u0092\u0001j\u0003\u0008\u0093\u0001j\u0003\u0008\u0094\u0001j\u0003\u0008\u0095\u0001j\u0003\u0008\u0096\u0001j\u0003\u0008\u0097\u0001j\u0003\u0008\u0098\u0001j\u0003\u0008\u0099\u0001j\u0003\u0008\u009a\u0001j\u0003\u0008\u009b\u0001j\u0003\u0008\u009c\u0001j\u0003\u0008\u009d\u0001j\u0003\u0008\u009e\u0001j\u0003\u0008\u009f\u0001j\u0003\u0008\u00a0\u0001j\u0003\u0008\u00a1\u0001j\u0003\u0008\u00a2\u0001j\u0003\u0008\u00a3\u0001j\u0003\u0008\u00a4\u0001j\u0003\u0008\u00a5\u0001j\u0003\u0008\u00a6\u0001j\u0003\u0008\u00a7\u0001j\u0003\u0008\u00a8\u0001j\u0003\u0008\u00a9\u0001j\u0003\u0008\u00aa\u0001j\u0003\u0008\u00ab\u0001j\u0003\u0008\u00ac\u0001j\u0003\u0008\u00ad\u0001j\u0003\u0008\u00ae\u0001j\u0003\u0008\u00af\u0001j\u0003\u0008\u00b0\u0001j\u0003\u0008\u00b1\u0001j\u0003\u0008\u00b2\u0001j\u0003\u0008\u00b3\u0001j\u0003\u0008\u00b4\u0001j\u0003\u0008\u00b5\u0001j\u0003\u0008\u00b6\u0001j\u0003\u0008\u00b7\u0001j\u0003\u0008\u00b8\u0001j\u0003\u0008\u00b9\u0001j\u0003\u0008\u00ba\u0001j\u0003\u0008\u00bb\u0001j\u0003\u0008\u00bc\u0001j\u0003\u0008\u00bd\u0001j\u0003\u0008\u00be\u0001j\u0003\u0008\u00bf\u0001j\u0003\u0008\u00c0\u0001j\u0003\u0008\u00c1\u0001j\u0003\u0008\u00c2\u0001j\u0003\u0008\u00c3\u0001j\u0003\u0008\u00c4\u0001j\u0003\u0008\u00c5\u0001j\u0003\u0008\u00c6\u0001j\u0003\u0008\u00c7\u0001j\u0003\u0008\u00c8\u0001j\u0003\u0008\u00c9\u0001j\u0003\u0008\u00ca\u0001j\u0003\u0008\u00cb\u0001j\u0003\u0008\u00cc\u0001j\u0003\u0008\u00cd\u0001j\u0003\u0008\u00ce\u0001j\u0003\u0008\u00cf\u0001j\u0003\u0008\u00d0\u0001j\u0003\u0008\u00d1\u0001j\u0003\u0008\u00d2\u0001j\u0003\u0008\u00d3\u0001j\u0003\u0008\u00d4\u0001j\u0003\u0008\u00d5\u0001j\u0003\u0008\u00d6\u0001j\u0003\u0008\u00d7\u0001j\u0003\u0008\u00d8\u0001j\u0003\u0008\u00d9\u0001j\u0003\u0008\u00da\u0001j\u0003\u0008\u00db\u0001j\u0003\u0008\u00dc\u0001j\u0003\u0008\u00dd\u0001j\u0003\u0008\u00de\u0001j\u0003\u0008\u00df\u0001j\u0003\u0008\u00e0\u0001j\u0003\u0008\u00e1\u0001j\u0003\u0008\u00e2\u0001j\u0003\u0008\u00e3\u0001j\u0003\u0008\u00e4\u0001j\u0003\u0008\u00e5\u0001j\u0003\u0008\u00e6\u0001j\u0003\u0008\u00e7\u0001j\u0003\u0008\u00e8\u0001j\u0003\u0008\u00e9\u0001j\u0003\u0008\u00ea\u0001j\u0003\u0008\u00eb\u0001j\u0003\u0008\u00ec\u0001j\u0003\u0008\u00ed\u0001j\u0003\u0008\u00ee\u0001j\u0003\u0008\u00ef\u0001j\u0003\u0008\u00f0\u0001j\u0003\u0008\u00f1\u0001j\u0003\u0008\u00f2\u0001j\u0003\u0008\u00f3\u0001j\u0003\u0008\u00f4\u0001j\u0003\u0008\u00f5\u0001j\u0003\u0008\u00f6\u0001j\u0003\u0008\u00f7\u0001j\u0003\u0008\u00f8\u0001j\u0003\u0008\u00f9\u0001j\u0003\u0008\u00fa\u0001j\u0003\u0008\u00fb\u0001j\u0003\u0008\u00fc\u0001j\u0003\u0008\u00fd\u0001j\u0003\u0008\u00fe\u0001j\u0003\u0008\u00ff\u0001j\u0003\u0008\u0080\u0002j\u0003\u0008\u0081\u0002j\u0003\u0008\u0082\u0002j\u0003\u0008\u0083\u0002j\u0003\u0008\u0084\u0002j\u0003\u0008\u0085\u0002j\u0003\u0008\u0086\u0002j\u0003\u0008\u0087\u0002j\u0003\u0008\u0088\u0002j\u0003\u0008\u0089\u0002j\u0003\u0008\u008a\u0002j\u0003\u0008\u008b\u0002j\u0003\u0008\u008c\u0002j\u0003\u0008\u008d\u0002j\u0003\u0008\u008e\u0002j\u0003\u0008\u008f\u0002j\u0003\u0008\u0090\u0002j\u0003\u0008\u0091\u0002j\u0003\u0008\u0092\u0002j\u0003\u0008\u0093\u0002j\u0003\u0008\u0094\u0002j\u0003\u0008\u0095\u0002j\u0003\u0008\u0096\u0002j\u0003\u0008\u0097\u0002j\u0003\u0008\u0098\u0002j\u0003\u0008\u0099\u0002j\u0003\u0008\u009a\u0002j\u0003\u0008\u009b\u0002j\u0003\u0008\u009c\u0002j\u0003\u0008\u009d\u0002j\u0003\u0008\u009e\u0002j\u0003\u0008\u009f\u0002j\u0003\u0008\u00a0\u0002j\u0003\u0008\u00a1\u0002j\u0003\u0008\u00a2\u0002j\u0003\u0008\u00a3\u0002j\u0003\u0008\u00a4\u0002j\u0003\u0008\u00a5\u0002j\u0003\u0008\u00a6\u0002j\u0003\u0008\u00a7\u0002j\u0003\u0008\u00a8\u0002j\u0003\u0008\u00a9\u0002j\u0003\u0008\u00aa\u0002j\u0003\u0008\u00ab\u0002j\u0003\u0008\u00ac\u0002j\u0003\u0008\u00ad\u0002j\u0003\u0008\u00ae\u0002j\u0003\u0008\u00af\u0002j\u0003\u0008\u00b0\u0002j\u0003\u0008\u00b1\u0002j\u0003\u0008\u00b2\u0002j\u0003\u0008\u00b3\u0002j\u0003\u0008\u00b4\u0002j\u0003\u0008\u00b5\u0002j\u0003\u0008\u00b6\u0002j\u0003\u0008\u00b7\u0002j\u0003\u0008\u00b8\u0002j\u0003\u0008\u00b9\u0002j\u0003\u0008\u00ba\u0002j\u0003\u0008\u00bb\u0002j\u0003\u0008\u00bc\u0002j\u0003\u0008\u00bd\u0002j\u0003\u0008\u00be\u0002j\u0003\u0008\u00bf\u0002j\u0003\u0008\u00c0\u0002j\u0003\u0008\u00c1\u0002j\u0003\u0008\u00c2\u0002j\u0003\u0008\u00c3\u0002j\u0003\u0008\u00c4\u0002j\u0003\u0008\u00c5\u0002j\u0003\u0008\u00c6\u0002j\u0003\u0008\u00c7\u0002j\u0003\u0008\u00c8\u0002j\u0003\u0008\u00c9\u0002j\u0003\u0008\u00ca\u0002j\u0003\u0008\u00cb\u0002j\u0003\u0008\u00cc\u0002j\u0003\u0008\u00cd\u0002j\u0003\u0008\u00ce\u0002j\u0003\u0008\u00cf\u0002j\u0003\u0008\u00d0\u0002j\u0003\u0008\u00d1\u0002j\u0003\u0008\u00d2\u0002j\u0003\u0008\u00d3\u0002j\u0003\u0008\u00d4\u0002j\u0003\u0008\u00d5\u0002j\u0003\u0008\u00d6\u0002j\u0003\u0008\u00d7\u0002j\u0003\u0008\u00d8\u0002j\u0003\u0008\u00d9\u0002j\u0003\u0008\u00da\u0002j\u0003\u0008\u00db\u0002j\u0003\u0008\u00dc\u0002j\u0003\u0008\u00dd\u0002j\u0003\u0008\u00de\u0002j\u0003\u0008\u00df\u0002j\u0003\u0008\u00e0\u0002j\u0003\u0008\u00e1\u0002j\u0003\u0008\u00e2\u0002j\u0003\u0008\u00e3\u0002j\u0003\u0008\u00e4\u0002j\u0003\u0008\u00e5\u0002j\u0003\u0008\u00e6\u0002j\u0003\u0008\u00e7\u0002j\u0003\u0008\u00e8\u0002j\u0003\u0008\u00e9\u0002j\u0003\u0008\u00ea\u0002j\u0003\u0008\u00eb\u0002j\u0003\u0008\u00ec\u0002j\u0003\u0008\u00ed\u0002j\u0003\u0008\u00ee\u0002j\u0003\u0008\u00ef\u0002j\u0003\u0008\u00f0\u0002j\u0003\u0008\u00f1\u0002j\u0003\u0008\u00f2\u0002j\u0003\u0008\u00f3\u0002j\u0003\u0008\u00f4\u0002j\u0003\u0008\u00f5\u0002j\u0003\u0008\u00f6\u0002j\u0003\u0008\u00f7\u0002j\u0003\u0008\u00f8\u0002j\u0003\u0008\u00f9\u0002j\u0003\u0008\u00fa\u0002j\u0003\u0008\u00fb\u0002j\u0003\u0008\u00fc\u0002j\u0003\u0008\u00fd\u0002j\u0003\u0008\u00fe\u0002j\u0003\u0008\u00ff\u0002j\u0003\u0008\u0080\u0003j\u0003\u0008\u0081\u0003j\u0003\u0008\u0082\u0003j\u0003\u0008\u0083\u0003j\u0003\u0008\u0084\u0003j\u0003\u0008\u0085\u0003j\u0003\u0008\u0086\u0003j\u0003\u0008\u0087\u0003j\u0003\u0008\u0088\u0003j\u0003\u0008\u0089\u0003j\u0003\u0008\u008a\u0003j\u0003\u0008\u008b\u0003j\u0003\u0008\u008c\u0003j\u0003\u0008\u008d\u0003j\u0003\u0008\u008e\u0003j\u0003\u0008\u008f\u0003j\u0003\u0008\u0090\u0003j\u0003\u0008\u0091\u0003j\u0003\u0008\u0092\u0003j\u0003\u0008\u0093\u0003j\u0003\u0008\u0094\u0003j\u0003\u0008\u0095\u0003j\u0003\u0008\u0096\u0003j\u0003\u0008\u0097\u0003j\u0003\u0008\u0098\u0003j\u0003\u0008\u0099\u0003j\u0003\u0008\u009a\u0003j\u0003\u0008\u009b\u0003j\u0003\u0008\u009c\u0003j\u0003\u0008\u009d\u0003j\u0003\u0008\u009e\u0003j\u0003\u0008\u009f\u0003j\u0003\u0008\u00a0\u0003j\u0003\u0008\u00a1\u0003j\u0003\u0008\u00a2\u0003j\u0003\u0008\u00a3\u0003j\u0003\u0008\u00a4\u0003j\u0003\u0008\u00a5\u0003j\u0003\u0008\u00a6\u0003j\u0003\u0008\u00a7\u0003j\u0003\u0008\u00a8\u0003j\u0003\u0008\u00a9\u0003j\u0003\u0008\u00aa\u0003j\u0003\u0008\u00ab\u0003j\u0003\u0008\u00ac\u0003j\u0003\u0008\u00ad\u0003j\u0003\u0008\u00ae\u0003j\u0003\u0008\u00af\u0003j\u0003\u0008\u00b0\u0003j\u0003\u0008\u00b1\u0003j\u0003\u0008\u00b2\u0003j\u0003\u0008\u00b3\u0003j\u0003\u0008\u00b4\u0003j\u0003\u0008\u00b5\u0003j\u0003\u0008\u00b6\u0003j\u0003\u0008\u00b7\u0003j\u0003\u0008\u00b8\u0003j\u0003\u0008\u00b9\u0003j\u0003\u0008\u00ba\u0003j\u0003\u0008\u00bb\u0003j\u0003\u0008\u00bc\u0003j\u0003\u0008\u00bd\u0003j\u0003\u0008\u00be\u0003j\u0003\u0008\u00bf\u0003j\u0003\u0008\u00c0\u0003j\u0003\u0008\u00c1\u0003j\u0003\u0008\u00c2\u0003j\u0003\u0008\u00c3\u0003j\u0003\u0008\u00c4\u0003j\u0003\u0008\u00c5\u0003j\u0003\u0008\u00c6\u0003j\u0003\u0008\u00c7\u0003j\u0003\u0008\u00c8\u0003j\u0003\u0008\u00c9\u0003j\u0003\u0008\u00ca\u0003j\u0003\u0008\u00cb\u0003j\u0003\u0008\u00cc\u0003j\u0003\u0008\u00cd\u0003j\u0003\u0008\u00ce\u0003j\u0003\u0008\u00cf\u0003j\u0003\u0008\u00d0\u0003j\u0003\u0008\u00d1\u0003j\u0003\u0008\u00d2\u0003j\u0003\u0008\u00d3\u0003j\u0003\u0008\u00d4\u0003j\u0003\u0008\u00d5\u0003j\u0003\u0008\u00d6\u0003j\u0003\u0008\u00d7\u0003j\u0003\u0008\u00d8\u0003j\u0003\u0008\u00d9\u0003j\u0003\u0008\u00da\u0003j\u0003\u0008\u00db\u0003j\u0003\u0008\u00dc\u0003j\u0003\u0008\u00dd\u0003j\u0003\u0008\u00de\u0003j\u0003\u0008\u00df\u0003j\u0003\u0008\u00e0\u0003j\u0003\u0008\u00e1\u0003j\u0003\u0008\u00e2\u0003j\u0003\u0008\u00e3\u0003j\u0003\u0008\u00e4\u0003j\u0003\u0008\u00e5\u0003j\u0003\u0008\u00e6\u0003j\u0003\u0008\u00e7\u0003j\u0003\u0008\u00e8\u0003j\u0003\u0008\u00e9\u0003j\u0003\u0008\u00ea\u0003j\u0003\u0008\u00eb\u0003j\u0003\u0008\u00ec\u0003j\u0003\u0008\u00ed\u0003j\u0003\u0008\u00ee\u0003j\u0003\u0008\u00ef\u0003j\u0003\u0008\u00f0\u0003j\u0003\u0008\u00f1\u0003j\u0003\u0008\u00f2\u0003j\u0003\u0008\u00f3\u0003j\u0003\u0008\u00f4\u0003j\u0003\u0008\u00f5\u0003j\u0003\u0008\u00f6\u0003j\u0003\u0008\u00f7\u0003j\u0003\u0008\u00f8\u0003j\u0003\u0008\u00f9\u0003j\u0003\u0008\u00fa\u0003j\u0003\u0008\u00fb\u0003j\u0003\u0008\u00fc\u0003j\u0003\u0008\u00fd\u0003j\u0003\u0008\u00fe\u0003j\u0003\u0008\u00ff\u0003j\u0003\u0008\u0080\u0004j\u0003\u0008\u0081\u0004j\u0003\u0008\u0082\u0004j\u0003\u0008\u0083\u0004j\u0003\u0008\u0084\u0004j\u0003\u0008\u0085\u0004j\u0003\u0008\u0086\u0004j\u0003\u0008\u0087\u0004j\u0003\u0008\u0088\u0004j\u0003\u0008\u0089\u0004j\u0003\u0008\u008a\u0004j\u0003\u0008\u008b\u0004j\u0003\u0008\u008c\u0004j\u0003\u0008\u008d\u0004j\u0003\u0008\u008e\u0004j\u0003\u0008\u008f\u0004j\u0003\u0008\u0090\u0004j\u0003\u0008\u0091\u0004j\u0003\u0008\u0092\u0004j\u0003\u0008\u0093\u0004j\u0003\u0008\u0094\u0004j\u0003\u0008\u0095\u0004j\u0003\u0008\u0096\u0004j\u0003\u0008\u0097\u0004j\u0003\u0008\u0098\u0004j\u0003\u0008\u0099\u0004j\u0003\u0008\u009a\u0004j\u0003\u0008\u009b\u0004j\u0003\u0008\u009c\u0004j\u0003\u0008\u009d\u0004j\u0003\u0008\u009e\u0004j\u0003\u0008\u009f\u0004j\u0003\u0008\u00a0\u0004j\u0003\u0008\u00a1\u0004j\u0003\u0008\u00a2\u0004j\u0003\u0008\u00a3\u0004j\u0003\u0008\u00a4\u0004j\u0003\u0008\u00a5\u0004j\u0003\u0008\u00a6\u0004j\u0003\u0008\u00a7\u0004j\u0003\u0008\u00a8\u0004j\u0003\u0008\u00a9\u0004j\u0003\u0008\u00aa\u0004j\u0003\u0008\u00ab\u0004j\u0003\u0008\u00ac\u0004j\u0003\u0008\u00ad\u0004j\u0003\u0008\u00ae\u0004j\u0003\u0008\u00af\u0004j\u0003\u0008\u00b0\u0004j\u0003\u0008\u00b1\u0004j\u0003\u0008\u00b2\u0004j\u0003\u0008\u00b3\u0004j\u0003\u0008\u00b4\u0004j\u0003\u0008\u00b5\u0004j\u0003\u0008\u00b6\u0004j\u0003\u0008\u00b7\u0004j\u0003\u0008\u00b8\u0004j\u0003\u0008\u00b9\u0004j\u0003\u0008\u00ba\u0004j\u0003\u0008\u00bb\u0004j\u0003\u0008\u00bc\u0004j\u0003\u0008\u00bd\u0004j\u0003\u0008\u00be\u0004j\u0003\u0008\u00bf\u0004j\u0003\u0008\u00c0\u0004j\u0003\u0008\u00c1\u0004j\u0003\u0008\u00c2\u0004j\u0003\u0008\u00c3\u0004j\u0003\u0008\u00c4\u0004j\u0003\u0008\u00c5\u0004j\u0003\u0008\u00c6\u0004j\u0003\u0008\u00c7\u0004j\u0003\u0008\u00c8\u0004j\u0003\u0008\u00c9\u0004j\u0003\u0008\u00ca\u0004j\u0003\u0008\u00cb\u0004j\u0003\u0008\u00cc\u0004j\u0003\u0008\u00cd\u0004j\u0003\u0008\u00ce\u0004j\u0003\u0008\u00cf\u0004j\u0003\u0008\u00d0\u0004j\u0003\u0008\u00d1\u0004j\u0003\u0008\u00d2\u0004j\u0003\u0008\u00d3\u0004j\u0003\u0008\u00d4\u0004j\u0003\u0008\u00d5\u0004j\u0003\u0008\u00d6\u0004j\u0003\u0008\u00d7\u0004j\u0003\u0008\u00d8\u0004j\u0003\u0008\u00d9\u0004j\u0003\u0008\u00da\u0004j\u0003\u0008\u00db\u0004j\u0003\u0008\u00dc\u0004j\u0003\u0008\u00dd\u0004\u00a8\u0006\u00df\u0004"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/TimeZone;",
        "",
        "Lcom/squareup/wire/WireEnum;",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TIME_ZONE_INVALID",
        "AFRICA__ABIDJAN",
        "AFRICA__ACCRA",
        "AFRICA__ADDIS_ABABA",
        "AFRICA__ALGIERS",
        "AFRICA__ASMARA",
        "AFRICA__ASMERA",
        "AFRICA__BAMAKO",
        "AFRICA__BANGUI",
        "AFRICA__BANJUL",
        "AFRICA__BISSAU",
        "AFRICA__BLANTYRE",
        "AFRICA__BRAZZAVILLE",
        "AFRICA__BUJUMBURA",
        "AFRICA__CAIRO",
        "AFRICA__CASABLANCA",
        "AFRICA__CEUTA",
        "AFRICA__CONAKRY",
        "AFRICA__DAKAR",
        "AFRICA__DAR_ES_SALAAM",
        "AFRICA__DJIBOUTI",
        "AFRICA__DOUALA",
        "AFRICA__EL_AAIUN",
        "AFRICA__FREETOWN",
        "AFRICA__GABORONE",
        "AFRICA__HARARE",
        "AFRICA__JOHANNESBURG",
        "AFRICA__JUBA",
        "AFRICA__KAMPALA",
        "AFRICA__KHARTOUM",
        "AFRICA__KIGALI",
        "AFRICA__KINSHASA",
        "AFRICA__LAGOS",
        "AFRICA__LIBREVILLE",
        "AFRICA__LOME",
        "AFRICA__LUANDA",
        "AFRICA__LUBUMBASHI",
        "AFRICA__LUSAKA",
        "AFRICA__MALABO",
        "AFRICA__MAPUTO",
        "AFRICA__MASERU",
        "AFRICA__MBABANE",
        "AFRICA__MOGADISHU",
        "AFRICA__MONROVIA",
        "AFRICA__NAIROBI",
        "AFRICA__NDJAMENA",
        "AFRICA__NIAMEY",
        "AFRICA__NOUAKCHOTT",
        "AFRICA__OUAGADOUGOU",
        "AFRICA__PORTO_NOVO",
        "AFRICA__SAO_TOME",
        "AFRICA__TIMBUKTU",
        "AFRICA__TRIPOLI",
        "AFRICA__TUNIS",
        "AFRICA__WINDHOEK",
        "AMERICA__ADAK",
        "AMERICA__ANCHORAGE",
        "AMERICA__ANGUILLA",
        "AMERICA__ANTIGUA",
        "AMERICA__ARAGUAINA",
        "AMERICA__ARGENTINA__BUENOS_AIRES",
        "AMERICA__ARGENTINA__CATAMARCA",
        "AMERICA__ARGENTINA__COMODRIVADAVIA",
        "AMERICA__ARGENTINA__CORDOBA",
        "AMERICA__ARGENTINA__JUJUY",
        "AMERICA__ARGENTINA__LA_RIOJA",
        "AMERICA__ARGENTINA__MENDOZA",
        "AMERICA__ARGENTINA__RIO_GALLEGOS",
        "AMERICA__ARGENTINA__SALTA",
        "AMERICA__ARGENTINA__SAN_JUAN",
        "AMERICA__ARGENTINA__SAN_LUIS",
        "AMERICA__ARGENTINA__TUCUMAN",
        "AMERICA__ARGENTINA__USHUAIA",
        "AMERICA__ARUBA",
        "AMERICA__ASUNCION",
        "AMERICA__ATIKOKAN",
        "AMERICA__ATKA",
        "AMERICA__BAHIA",
        "AMERICA__BAHIA_BANDERAS",
        "AMERICA__BARBADOS",
        "AMERICA__BELEM",
        "AMERICA__BELIZE",
        "AMERICA__BLANC_SABLON",
        "AMERICA__BOA_VISTA",
        "AMERICA__BOGOTA",
        "AMERICA__BOISE",
        "AMERICA__BUENOS_AIRES",
        "AMERICA__CAMBRIDGE_BAY",
        "AMERICA__CAMPO_GRANDE",
        "AMERICA__CANCUN",
        "AMERICA__CARACAS",
        "AMERICA__CATAMARCA",
        "AMERICA__CAYENNE",
        "AMERICA__CAYMAN",
        "AMERICA__CHICAGO",
        "AMERICA__CHIHUAHUA",
        "AMERICA__CIUDAD_JUAREZ",
        "AMERICA__CORAL_HARBOUR",
        "AMERICA__CORDOBA",
        "AMERICA__COSTA_RICA",
        "AMERICA__CRESTON",
        "AMERICA__CUIABA",
        "AMERICA__CURACAO",
        "AMERICA__DANMARKSHAVN",
        "AMERICA__DAWSON",
        "AMERICA__DAWSON_CREEK",
        "AMERICA__DENVER",
        "AMERICA__DETROIT",
        "AMERICA__DOMINICA",
        "AMERICA__EDMONTON",
        "AMERICA__EIRUNEPE",
        "AMERICA__EL_SALVADOR",
        "AMERICA__ENSENADA",
        "AMERICA__FORT_NELSON",
        "AMERICA__FORT_WAYNE",
        "AMERICA__FORTALEZA",
        "AMERICA__GLACE_BAY",
        "AMERICA__GODTHAB",
        "AMERICA__GOOSE_BAY",
        "AMERICA__GRAND_TURK",
        "AMERICA__GRENADA",
        "AMERICA__GUADELOUPE",
        "AMERICA__GUATEMALA",
        "AMERICA__GUAYAQUIL",
        "AMERICA__GUYANA",
        "AMERICA__HALIFAX",
        "AMERICA__HAVANA",
        "AMERICA__HERMOSILLO",
        "AMERICA__INDIANA__INDIANAPOLIS",
        "AMERICA__INDIANA__KNOX",
        "AMERICA__INDIANA__MARENGO",
        "AMERICA__INDIANA__PETERSBURG",
        "AMERICA__INDIANA__TELL_CITY",
        "AMERICA__INDIANA__VEVAY",
        "AMERICA__INDIANA__VINCENNES",
        "AMERICA__INDIANA__WINAMAC",
        "AMERICA__INDIANAPOLIS",
        "AMERICA__INUVIK",
        "AMERICA__IQALUIT",
        "AMERICA__JAMAICA",
        "AMERICA__JUJUY",
        "AMERICA__JUNEAU",
        "AMERICA__KENTUCKY__LOUISVILLE",
        "AMERICA__KENTUCKY__MONTICELLO",
        "AMERICA__KNOX_IN",
        "AMERICA__KRALENDIJK",
        "AMERICA__LA_PAZ",
        "AMERICA__LIMA",
        "AMERICA__LOS_ANGELES",
        "AMERICA__LOUISVILLE",
        "AMERICA__LOWER_PRINCES",
        "AMERICA__MACEIO",
        "AMERICA__MANAGUA",
        "AMERICA__MANAUS",
        "AMERICA__MARIGOT",
        "AMERICA__MARTINIQUE",
        "AMERICA__MATAMOROS",
        "AMERICA__MAZATLAN",
        "AMERICA__MENDOZA",
        "AMERICA__MENOMINEE",
        "AMERICA__MERIDA",
        "AMERICA__METLAKATLA",
        "AMERICA__MEXICO_CITY",
        "AMERICA__MIQUELON",
        "AMERICA__MONCTON",
        "AMERICA__MONTERREY",
        "AMERICA__MONTEVIDEO",
        "AMERICA__MONTREAL",
        "AMERICA__MONTSERRAT",
        "AMERICA__NASSAU",
        "AMERICA__NEW_YORK",
        "AMERICA__NIPIGON",
        "AMERICA__NOME",
        "AMERICA__NORONHA",
        "AMERICA__NORTH_DAKOTA__BEULAH",
        "AMERICA__NORTH_DAKOTA__CENTER",
        "AMERICA__NORTH_DAKOTA__NEW_SALEM",
        "AMERICA__NUUK",
        "AMERICA__OJINAGA",
        "AMERICA__PANAMA",
        "AMERICA__PANGNIRTUNG",
        "AMERICA__PARAMARIBO",
        "AMERICA__PHOENIX",
        "AMERICA__PORT_AU_PRINCE",
        "AMERICA__PORT_OF_SPAIN",
        "AMERICA__PORTO_ACRE",
        "AMERICA__PORTO_VELHO",
        "AMERICA__PUERTO_RICO",
        "AMERICA__PUNTA_ARENAS",
        "AMERICA__RAINY_RIVER",
        "AMERICA__RANKIN_INLET",
        "AMERICA__RECIFE",
        "AMERICA__REGINA",
        "AMERICA__RESOLUTE",
        "AMERICA__RIO_BRANCO",
        "AMERICA__ROSARIO",
        "AMERICA__SANTA_ISABEL",
        "AMERICA__SANTAREM",
        "AMERICA__SANTIAGO",
        "AMERICA__SANTO_DOMINGO",
        "AMERICA__SAO_PAULO",
        "AMERICA__SCORESBYSUND",
        "AMERICA__SHIPROCK",
        "AMERICA__SITKA",
        "AMERICA__ST_BARTHELEMY",
        "AMERICA__ST_JOHNS",
        "AMERICA__ST_KITTS",
        "AMERICA__ST_LUCIA",
        "AMERICA__ST_THOMAS",
        "AMERICA__ST_VINCENT",
        "AMERICA__SWIFT_CURRENT",
        "AMERICA__TEGUCIGALPA",
        "AMERICA__THULE",
        "AMERICA__THUNDER_BAY",
        "AMERICA__TIJUANA",
        "AMERICA__TORONTO",
        "AMERICA__TORTOLA",
        "AMERICA__VANCOUVER",
        "AMERICA__VIRGIN",
        "AMERICA__WHITEHORSE",
        "AMERICA__WINNIPEG",
        "AMERICA__YAKUTAT",
        "AMERICA__YELLOWKNIFE",
        "ANTARCTICA__CASEY",
        "ANTARCTICA__DAVIS",
        "ANTARCTICA__DUMONTDURVILLE",
        "ANTARCTICA__MACQUARIE",
        "ANTARCTICA__MAWSON",
        "ANTARCTICA__MCMURDO",
        "ANTARCTICA__PALMER",
        "ANTARCTICA__ROTHERA",
        "ANTARCTICA__SOUTH_POLE",
        "ANTARCTICA__SYOWA",
        "ANTARCTICA__TROLL",
        "ANTARCTICA__VOSTOK",
        "ARCTIC__LONGYEARBYEN",
        "ASIA__ADEN",
        "ASIA__ALMATY",
        "ASIA__AMMAN",
        "ASIA__ANADYR",
        "ASIA__AQTAU",
        "ASIA__AQTOBE",
        "ASIA__ASHGABAT",
        "ASIA__ASHKHABAD",
        "ASIA__ATYRAU",
        "ASIA__BAGHDAD",
        "ASIA__BAHRAIN",
        "ASIA__BAKU",
        "ASIA__BANGKOK",
        "ASIA__BARNAUL",
        "ASIA__BEIRUT",
        "ASIA__BISHKEK",
        "ASIA__BRUNEI",
        "ASIA__CALCUTTA",
        "ASIA__CHITA",
        "ASIA__CHOIBALSAN",
        "ASIA__CHONGQING",
        "ASIA__CHUNGKING",
        "ASIA__COLOMBO",
        "ASIA__DACCA",
        "ASIA__DAMASCUS",
        "ASIA__DHAKA",
        "ASIA__DILI",
        "ASIA__DUBAI",
        "ASIA__DUSHANBE",
        "ASIA__FAMAGUSTA",
        "ASIA__GAZA",
        "ASIA__HARBIN",
        "ASIA__HEBRON",
        "ASIA__HO_CHI_MINH",
        "ASIA__HONG_KONG",
        "ASIA__HOVD",
        "ASIA__IRKUTSK",
        "ASIA__ISTANBUL",
        "ASIA__JAKARTA",
        "ASIA__JAYAPURA",
        "ASIA__JERUSALEM",
        "ASIA__KABUL",
        "ASIA__KAMCHATKA",
        "ASIA__KARACHI",
        "ASIA__KASHGAR",
        "ASIA__KATHMANDU",
        "ASIA__KATMANDU",
        "ASIA__KHANDYGA",
        "ASIA__KOLKATA",
        "ASIA__KRASNOYARSK",
        "ASIA__KUALA_LUMPUR",
        "ASIA__KUCHING",
        "ASIA__KUWAIT",
        "ASIA__MACAO",
        "ASIA__MACAU",
        "ASIA__MAGADAN",
        "ASIA__MAKASSAR",
        "ASIA__MANILA",
        "ASIA__MUSCAT",
        "ASIA__NICOSIA",
        "ASIA__NOVOKUZNETSK",
        "ASIA__NOVOSIBIRSK",
        "ASIA__OMSK",
        "ASIA__ORAL",
        "ASIA__PHNOM_PENH",
        "ASIA__PONTIANAK",
        "ASIA__PYONGYANG",
        "ASIA__QATAR",
        "ASIA__QOSTANAY",
        "ASIA__QYZYLORDA",
        "ASIA__RANGOON",
        "ASIA__RIYADH",
        "ASIA__SAIGON",
        "ASIA__SAKHALIN",
        "ASIA__SAMARKAND",
        "ASIA__SEOUL",
        "ASIA__SHANGHAI",
        "ASIA__SINGAPORE",
        "ASIA__SREDNEKOLYMSK",
        "ASIA__TAIPEI",
        "ASIA__TASHKENT",
        "ASIA__TBILISI",
        "ASIA__TEHRAN",
        "ASIA__TEL_AVIV",
        "ASIA__THIMBU",
        "ASIA__THIMPHU",
        "ASIA__TOKYO",
        "ASIA__TOMSK",
        "ASIA__UJUNG_PANDANG",
        "ASIA__ULAANBAATAR",
        "ASIA__ULAN_BATOR",
        "ASIA__URUMQI",
        "ASIA__UST_NERA",
        "ASIA__VIENTIANE",
        "ASIA__VLADIVOSTOK",
        "ASIA__YAKUTSK",
        "ASIA__YANGON",
        "ASIA__YEKATERINBURG",
        "ASIA__YEREVAN",
        "ATLANTIC__AZORES",
        "ATLANTIC__BERMUDA",
        "ATLANTIC__CANARY",
        "ATLANTIC__CAPE_VERDE",
        "ATLANTIC__FAEROE",
        "ATLANTIC__FAROE",
        "ATLANTIC__JAN_MAYEN",
        "ATLANTIC__MADEIRA",
        "ATLANTIC__REYKJAVIK",
        "ATLANTIC__SOUTH_GEORGIA",
        "ATLANTIC__ST_HELENA",
        "ATLANTIC__STANLEY",
        "AUSTRALIA__ACT",
        "AUSTRALIA__ADELAIDE",
        "AUSTRALIA__BRISBANE",
        "AUSTRALIA__BROKEN_HILL",
        "AUSTRALIA__CANBERRA",
        "AUSTRALIA__CURRIE",
        "AUSTRALIA__DARWIN",
        "AUSTRALIA__EUCLA",
        "AUSTRALIA__HOBART",
        "AUSTRALIA__LHI",
        "AUSTRALIA__LINDEMAN",
        "AUSTRALIA__LORD_HOWE",
        "AUSTRALIA__MELBOURNE",
        "AUSTRALIA__NSW",
        "AUSTRALIA__NORTH",
        "AUSTRALIA__PERTH",
        "AUSTRALIA__QUEENSLAND",
        "AUSTRALIA__SOUTH",
        "AUSTRALIA__SYDNEY",
        "AUSTRALIA__TASMANIA",
        "AUSTRALIA__VICTORIA",
        "AUSTRALIA__WEST",
        "AUSTRALIA__YANCOWINNA",
        "BRAZIL__ACRE",
        "BRAZIL__DENORONHA",
        "BRAZIL__EAST",
        "BRAZIL__WEST",
        "CET",
        "CST6CDT",
        "CANADA__ATLANTIC",
        "CANADA__CENTRAL",
        "CANADA__EASTERN",
        "CANADA__MOUNTAIN",
        "CANADA__NEWFOUNDLAND",
        "CANADA__PACIFIC",
        "CANADA__SASKATCHEWAN",
        "CANADA__YUKON",
        "CHILE__CONTINENTAL",
        "CHILE__EASTERISLAND",
        "CUBA",
        "EET",
        "EST",
        "EST5EDT",
        "EGYPT",
        "EIRE",
        "ETC__GMT",
        "ETC__GMT_PLUS_0",
        "ETC__GMT_PLUS_1",
        "ETC__GMT_PLUS_10",
        "ETC__GMT_PLUS_11",
        "ETC__GMT_PLUS_12",
        "ETC__GMT_PLUS_2",
        "ETC__GMT_PLUS_3",
        "ETC__GMT_PLUS_4",
        "ETC__GMT_PLUS_5",
        "ETC__GMT_PLUS_6",
        "ETC__GMT_PLUS_7",
        "ETC__GMT_PLUS_8",
        "ETC__GMT_PLUS_9",
        "ETC__GMT_MINUS_0",
        "ETC__GMT_MINUS_1",
        "ETC__GMT_MINUS_10",
        "ETC__GMT_MINUS_11",
        "ETC__GMT_MINUS_12",
        "ETC__GMT_MINUS_13",
        "ETC__GMT_MINUS_14",
        "ETC__GMT_MINUS_2",
        "ETC__GMT_MINUS_3",
        "ETC__GMT_MINUS_4",
        "ETC__GMT_MINUS_5",
        "ETC__GMT_MINUS_6",
        "ETC__GMT_MINUS_7",
        "ETC__GMT_MINUS_8",
        "ETC__GMT_MINUS_9",
        "ETC__GMT0",
        "ETC__GREENWICH",
        "ETC__UCT",
        "ETC__UTC",
        "ETC__UNIVERSAL",
        "ETC__ZULU",
        "EUROPE__AMSTERDAM",
        "EUROPE__ANDORRA",
        "EUROPE__ASTRAKHAN",
        "EUROPE__ATHENS",
        "EUROPE__BELFAST",
        "EUROPE__BELGRADE",
        "EUROPE__BERLIN",
        "EUROPE__BRATISLAVA",
        "EUROPE__BRUSSELS",
        "EUROPE__BUCHAREST",
        "EUROPE__BUDAPEST",
        "EUROPE__BUSINGEN",
        "EUROPE__CHISINAU",
        "EUROPE__COPENHAGEN",
        "EUROPE__DUBLIN",
        "EUROPE__GIBRALTAR",
        "EUROPE__GUERNSEY",
        "EUROPE__HELSINKI",
        "EUROPE__ISLE_OF_MAN",
        "EUROPE__ISTANBUL",
        "EUROPE__JERSEY",
        "EUROPE__KALININGRAD",
        "EUROPE__KIEV",
        "EUROPE__KYIV",
        "EUROPE__KIROV",
        "EUROPE__LISBON",
        "EUROPE__LJUBLJANA",
        "EUROPE__LONDON",
        "EUROPE__LUXEMBOURG",
        "EUROPE__MADRID",
        "EUROPE__MALTA",
        "EUROPE__MARIEHAMN",
        "EUROPE__MINSK",
        "EUROPE__MONACO",
        "EUROPE__MOSCOW",
        "EUROPE__NICOSIA",
        "EUROPE__OSLO",
        "EUROPE__PARIS",
        "EUROPE__PODGORICA",
        "EUROPE__PRAGUE",
        "EUROPE__RIGA",
        "EUROPE__ROME",
        "EUROPE__SAMARA",
        "EUROPE__SAN_MARINO",
        "EUROPE__SARAJEVO",
        "EUROPE__SARATOV",
        "EUROPE__SIMFEROPOL",
        "EUROPE__SKOPJE",
        "EUROPE__SOFIA",
        "EUROPE__STOCKHOLM",
        "EUROPE__TALLINN",
        "EUROPE__TIRANE",
        "EUROPE__TIRASPOL",
        "EUROPE__ULYANOVSK",
        "EUROPE__UZHGOROD",
        "EUROPE__VADUZ",
        "EUROPE__VATICAN",
        "EUROPE__VIENNA",
        "EUROPE__VILNIUS",
        "EUROPE__VOLGOGRAD",
        "EUROPE__WARSAW",
        "EUROPE__ZAGREB",
        "EUROPE__ZAPOROZHYE",
        "EUROPE__ZURICH",
        "GB",
        "GB_EIRE",
        "GMT",
        "GMT_PLUS_0",
        "GMT_MINUS_0",
        "GMT0",
        "GREENWICH",
        "HST",
        "HONGKONG",
        "ICELAND",
        "INDIAN__ANTANANARIVO",
        "INDIAN__CHAGOS",
        "INDIAN__CHRISTMAS",
        "INDIAN__COCOS",
        "INDIAN__COMORO",
        "INDIAN__KERGUELEN",
        "INDIAN__MAHE",
        "INDIAN__MALDIVES",
        "INDIAN__MAURITIUS",
        "INDIAN__MAYOTTE",
        "INDIAN__REUNION",
        "IRAN",
        "ISRAEL",
        "JAMAICA",
        "JAPAN",
        "KWAJALEIN",
        "LIBYA",
        "MET",
        "MST",
        "MST7MDT",
        "MEXICO__BAJANORTE",
        "MEXICO__BAJASUR",
        "MEXICO__GENERAL",
        "NZ",
        "NZ_CHAT",
        "NAVAJO",
        "PRC",
        "PST8PDT",
        "PACIFIC__APIA",
        "PACIFIC__AUCKLAND",
        "PACIFIC__BOUGAINVILLE",
        "PACIFIC__CHATHAM",
        "PACIFIC__CHUUK",
        "PACIFIC__EASTER",
        "PACIFIC__EFATE",
        "PACIFIC__ENDERBURY",
        "PACIFIC__FAKAOFO",
        "PACIFIC__FIJI",
        "PACIFIC__FUNAFUTI",
        "PACIFIC__GALAPAGOS",
        "PACIFIC__GAMBIER",
        "PACIFIC__GUADALCANAL",
        "PACIFIC__GUAM",
        "PACIFIC__HONOLULU",
        "PACIFIC__JOHNSTON",
        "PACIFIC__KANTON",
        "PACIFIC__KIRITIMATI",
        "PACIFIC__KOSRAE",
        "PACIFIC__KWAJALEIN",
        "PACIFIC__MAJURO",
        "PACIFIC__MARQUESAS",
        "PACIFIC__MIDWAY",
        "PACIFIC__NAURU",
        "PACIFIC__NIUE",
        "PACIFIC__NORFOLK",
        "PACIFIC__NOUMEA",
        "PACIFIC__PAGO_PAGO",
        "PACIFIC__PALAU",
        "PACIFIC__PITCAIRN",
        "PACIFIC__POHNPEI",
        "PACIFIC__PONAPE",
        "PACIFIC__PORT_MORESBY",
        "PACIFIC__RAROTONGA",
        "PACIFIC__SAIPAN",
        "PACIFIC__SAMOA",
        "PACIFIC__TAHITI",
        "PACIFIC__TARAWA",
        "PACIFIC__TONGATAPU",
        "PACIFIC__TRUK",
        "PACIFIC__WAKE",
        "PACIFIC__WALLIS",
        "PACIFIC__YAP",
        "POLAND",
        "PORTUGAL",
        "ROC",
        "ROK",
        "SINGAPORE",
        "TURKEY",
        "UCT",
        "US__ALASKA",
        "US__ALEUTIAN",
        "US__ARIZONA",
        "US__CENTRAL",
        "US__EAST_INDIANA",
        "US__EASTERN",
        "US__HAWAII",
        "US__INDIANA_STARKE",
        "US__MICHIGAN",
        "US__MOUNTAIN",
        "US__PACIFIC",
        "US__PACIFIC_NEW",
        "US__SAMOA",
        "UTC",
        "UNIVERSAL",
        "W_SU",
        "WET",
        "ZULU",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/proto/model/common/TimeZone;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/common/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum AFRICA__ABIDJAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__ACCRA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__ADDIS_ABABA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__ALGIERS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__ASMARA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__ASMERA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__BAMAKO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__BANGUI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__BANJUL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__BISSAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__BLANTYRE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__BRAZZAVILLE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__BUJUMBURA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__CAIRO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__CASABLANCA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__CEUTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__CONAKRY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__DAKAR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__DAR_ES_SALAAM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__DJIBOUTI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__DOUALA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__EL_AAIUN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__FREETOWN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__GABORONE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__HARARE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__JOHANNESBURG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__JUBA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__KAMPALA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__KHARTOUM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__KIGALI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__KINSHASA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__LAGOS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__LIBREVILLE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__LOME:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__LUANDA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__LUBUMBASHI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__LUSAKA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__MALABO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__MAPUTO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__MASERU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__MBABANE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__MOGADISHU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__MONROVIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__NAIROBI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__NDJAMENA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__NIAMEY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__NOUAKCHOTT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__OUAGADOUGOU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__PORTO_NOVO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__SAO_TOME:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__TIMBUKTU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__TRIPOLI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__TUNIS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AFRICA__WINDHOEK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ADAK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ANCHORAGE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ANGUILLA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ANTIGUA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARAGUAINA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__COMODRIVADAVIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__LA_RIOJA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__RIO_GALLEGOS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__SALTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__SAN_JUAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__SAN_LUIS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__TUCUMAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARGENTINA__USHUAIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ARUBA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ASUNCION:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ATIKOKAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ATKA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BAHIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BAHIA_BANDERAS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BARBADOS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BELEM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BELIZE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BLANC_SABLON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BOA_VISTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BOGOTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BOISE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CAMBRIDGE_BAY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CAMPO_GRANDE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CANCUN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CARACAS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CAYENNE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CAYMAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CHICAGO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CHIHUAHUA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CIUDAD_JUAREZ:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CORAL_HARBOUR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__COSTA_RICA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CRESTON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CUIABA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__CURACAO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__DANMARKSHAVN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__DAWSON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__DAWSON_CREEK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__DENVER:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__DETROIT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__DOMINICA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__EDMONTON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__EIRUNEPE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__EL_SALVADOR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ENSENADA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__FORTALEZA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__FORT_NELSON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__FORT_WAYNE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GLACE_BAY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GODTHAB:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GOOSE_BAY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GRAND_TURK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GRENADA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GUADELOUPE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GUATEMALA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GUAYAQUIL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__GUYANA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__HALIFAX:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__HAVANA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__HERMOSILLO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__KNOX:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__MARENGO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__PETERSBURG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__TELL_CITY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__VEVAY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__VINCENNES:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INDIANA__WINAMAC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__INUVIK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__IQALUIT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__JUNEAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__KENTUCKY__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__KENTUCKY__MONTICELLO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__KNOX_IN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__KRALENDIJK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__LA_PAZ:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__LIMA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__LOS_ANGELES:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__LOWER_PRINCES:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MACEIO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MANAGUA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MANAUS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MARIGOT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MARTINIQUE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MATAMOROS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MAZATLAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MENOMINEE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MERIDA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__METLAKATLA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MEXICO_CITY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MIQUELON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MONCTON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MONTERREY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MONTEVIDEO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MONTREAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__MONTSERRAT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NASSAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NEW_YORK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NIPIGON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NOME:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NORONHA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NORTH_DAKOTA__BEULAH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NORTH_DAKOTA__CENTER:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NORTH_DAKOTA__NEW_SALEM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__NUUK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__OJINAGA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PANAMA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PANGNIRTUNG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PARAMARIBO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PHOENIX:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PORTO_ACRE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PORTO_VELHO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PORT_AU_PRINCE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PORT_OF_SPAIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PUERTO_RICO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__PUNTA_ARENAS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__RAINY_RIVER:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__RANKIN_INLET:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__RECIFE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__REGINA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__RESOLUTE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__RIO_BRANCO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ROSARIO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SANTAREM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SANTA_ISABEL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SANTIAGO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SANTO_DOMINGO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SAO_PAULO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SCORESBYSUND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SHIPROCK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SITKA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ST_BARTHELEMY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ST_JOHNS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ST_KITTS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ST_LUCIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ST_THOMAS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__ST_VINCENT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__SWIFT_CURRENT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__TEGUCIGALPA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__THULE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__THUNDER_BAY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__TIJUANA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__TORONTO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__TORTOLA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__VANCOUVER:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__VIRGIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__WHITEHORSE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__WINNIPEG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__YAKUTAT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AMERICA__YELLOWKNIFE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__CASEY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__DAVIS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__DUMONTDURVILLE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__MACQUARIE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__MAWSON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__MCMURDO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__PALMER:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__ROTHERA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__SOUTH_POLE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__SYOWA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__TROLL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ANTARCTICA__VOSTOK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ARCTIC__LONGYEARBYEN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ADEN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ALMATY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__AMMAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ANADYR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__AQTAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__AQTOBE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ASHGABAT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ASHKHABAD:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ATYRAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BAGHDAD:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BAHRAIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BAKU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BANGKOK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BARNAUL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BEIRUT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BISHKEK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__BRUNEI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__CALCUTTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__CHITA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__CHOIBALSAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__CHONGQING:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__CHUNGKING:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__COLOMBO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__DACCA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__DAMASCUS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__DHAKA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__DILI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__DUBAI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__DUSHANBE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__FAMAGUSTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__GAZA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__HARBIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__HEBRON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__HONG_KONG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__HOVD:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__HO_CHI_MINH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__IRKUTSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__JAKARTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__JAYAPURA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__JERUSALEM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KABUL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KAMCHATKA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KARACHI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KASHGAR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KATHMANDU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KATMANDU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KHANDYGA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KOLKATA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KRASNOYARSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KUALA_LUMPUR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KUCHING:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__KUWAIT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__MACAO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__MACAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__MAGADAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__MAKASSAR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__MANILA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__MUSCAT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__NOVOKUZNETSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__NOVOSIBIRSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__OMSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ORAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__PHNOM_PENH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__PONTIANAK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__PYONGYANG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__QATAR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__QOSTANAY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__QYZYLORDA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__RANGOON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__RIYADH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__SAIGON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__SAKHALIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__SAMARKAND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__SEOUL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__SHANGHAI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__SREDNEKOLYMSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__TAIPEI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__TASHKENT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__TBILISI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__TEHRAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__TEL_AVIV:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__THIMBU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__THIMPHU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__TOKYO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__TOMSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__UJUNG_PANDANG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ULAANBAATAR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__ULAN_BATOR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__URUMQI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__UST_NERA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__VIENTIANE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__VLADIVOSTOK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__YAKUTSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__YANGON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__YEKATERINBURG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ASIA__YEREVAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__AZORES:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__BERMUDA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__CANARY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__CAPE_VERDE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__FAEROE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__FAROE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__JAN_MAYEN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__MADEIRA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__REYKJAVIK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__SOUTH_GEORGIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__STANLEY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ATLANTIC__ST_HELENA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__ACT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__ADELAIDE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__BRISBANE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__BROKEN_HILL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__CANBERRA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__CURRIE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__DARWIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__EUCLA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__HOBART:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__LHI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__LINDEMAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__LORD_HOWE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__MELBOURNE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__NORTH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__NSW:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__PERTH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__QUEENSLAND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__SOUTH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__SYDNEY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__TASMANIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__VICTORIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__WEST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum AUSTRALIA__YANCOWINNA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum BRAZIL__ACRE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum BRAZIL__DENORONHA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum BRAZIL__EAST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum BRAZIL__WEST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__ATLANTIC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__NEWFOUNDLAND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__SASKATCHEWAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CANADA__YUKON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CET:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CHILE__CONTINENTAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CHILE__EASTERISLAND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CST6CDT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum CUBA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final Companion:Lcom/stripe/proto/model/common/TimeZone$Companion;

.field public static final enum EET:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EGYPT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EIRE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EST5EDT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT0:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_1:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_10:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_11:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_12:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_13:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_14:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_2:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_3:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_4:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_5:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_6:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_7:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_8:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_MINUS_9:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_1:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_10:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_11:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_12:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_2:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_3:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_4:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_5:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_6:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_7:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_8:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GMT_PLUS_9:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__UCT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__UTC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ETC__ZULU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__AMSTERDAM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ANDORRA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ASTRAKHAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ATHENS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BELFAST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BELGRADE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BERLIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BRATISLAVA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BRUSSELS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BUCHAREST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BUDAPEST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__BUSINGEN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__CHISINAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__COPENHAGEN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__DUBLIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__GIBRALTAR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__GUERNSEY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__HELSINKI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ISLE_OF_MAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__JERSEY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__KALININGRAD:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__KIEV:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__KIROV:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__KYIV:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__LISBON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__LJUBLJANA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__LONDON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__LUXEMBOURG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__MADRID:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__MALTA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__MARIEHAMN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__MINSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__MONACO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__MOSCOW:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__OSLO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__PARIS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__PODGORICA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__PRAGUE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__RIGA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ROME:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__SAMARA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__SAN_MARINO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__SARAJEVO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__SARATOV:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__SIMFEROPOL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__SKOPJE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__SOFIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__STOCKHOLM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__TALLINN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__TIRANE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__TIRASPOL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ULYANOVSK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__UZHGOROD:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__VADUZ:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__VATICAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__VIENNA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__VILNIUS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__VOLGOGRAD:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__WARSAW:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ZAGREB:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ZAPOROZHYE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum EUROPE__ZURICH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum GB:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum GB_EIRE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum GMT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum GMT0:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum HONGKONG:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum HST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ICELAND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__ANTANANARIVO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__CHAGOS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__CHRISTMAS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__COCOS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__COMORO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__KERGUELEN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__MAHE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__MALDIVES:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__MAURITIUS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__MAYOTTE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum INDIAN__REUNION:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum IRAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ISRAEL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum JAPAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum LIBYA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum MET:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum MEXICO__BAJANORTE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum MEXICO__BAJASUR:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum MEXICO__GENERAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum MST:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum MST7MDT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum NAVAJO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum NZ:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum NZ_CHAT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__APIA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__AUCKLAND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__BOUGAINVILLE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__CHATHAM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__CHUUK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__EASTER:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__EFATE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__ENDERBURY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__FAKAOFO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__FIJI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__FUNAFUTI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__GALAPAGOS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__GAMBIER:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__GUADALCANAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__GUAM:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__HONOLULU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__JOHNSTON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__KANTON:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__KIRITIMATI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__KOSRAE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__MAJURO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__MARQUESAS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__MIDWAY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__NAURU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__NIUE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__NORFOLK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__NOUMEA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__PAGO_PAGO:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__PALAU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__PITCAIRN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__POHNPEI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__PONAPE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__PORT_MORESBY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__RAROTONGA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__SAIPAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__TAHITI:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__TARAWA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__TONGATAPU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__TRUK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__WAKE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__WALLIS:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PACIFIC__YAP:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum POLAND:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PORTUGAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PRC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum PST8PDT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ROC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ROK:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum TURKEY:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum UCT:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__ALASKA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__ALEUTIAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__ARIZONA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__EAST_INDIANA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__HAWAII:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__INDIANA_STARKE:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__MICHIGAN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum US__PACIFIC_NEW:Lcom/stripe/proto/model/common/TimeZone;
    .annotation runtime Lkotlin/Deprecated;
        message = "US__PACIFIC_NEW is deprecated"
    .end annotation
.end field

.field public static final enum US__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum UTC:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum WET:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum W_SU:Lcom/stripe/proto/model/common/TimeZone;

.field public static final enum ZULU:Lcom/stripe/proto/model/common/TimeZone;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/stripe/proto/model/common/TimeZone;
    .locals 3

    const/16 v0, 0x256

    new-array v0, v0, [Lcom/stripe/proto/model/common/TimeZone;

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ABIDJAN:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ACCRA:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ADDIS_ABABA:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ALGIERS:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ASMARA:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ASMERA:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BAMAKO:Lcom/stripe/proto/model/common/TimeZone;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BANGUI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BANJUL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BISSAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BLANTYRE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BRAZZAVILLE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BUJUMBURA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CAIRO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CASABLANCA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CEUTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CONAKRY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DAKAR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DAR_ES_SALAAM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DJIBOUTI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DOUALA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__EL_AAIUN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__FREETOWN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__GABORONE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__HARARE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__JOHANNESBURG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__JUBA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KAMPALA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KHARTOUM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KIGALI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KINSHASA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LAGOS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LIBREVILLE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LOME:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUANDA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUBUMBASHI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUSAKA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MALABO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MAPUTO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MASERU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MBABANE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MOGADISHU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MONROVIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NAIROBI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NDJAMENA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NIAMEY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NOUAKCHOTT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__OUAGADOUGOU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__PORTO_NOVO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__SAO_TOME:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TIMBUKTU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TRIPOLI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TUNIS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__WINDHOEK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ADAK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANCHORAGE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANGUILLA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANTIGUA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARAGUAINA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__COMODRIVADAVIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__LA_RIOJA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__RIO_GALLEGOS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SALTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x44

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SAN_JUAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x45

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SAN_LUIS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x46

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__TUCUMAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__USHUAIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x48

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARUBA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ASUNCION:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ATIKOKAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ATKA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BAHIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BAHIA_BANDERAS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BARBADOS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BELEM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x50

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BELIZE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x51

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BLANC_SABLON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x52

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOA_VISTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x53

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOGOTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x54

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOISE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x55

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x56

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAMBRIDGE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x57

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAMPO_GRANDE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x58

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CANCUN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x59

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CARACAS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAYENNE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAYMAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CHICAGO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CHIHUAHUA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CIUDAD_JUAREZ:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x60

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CORAL_HARBOUR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x61

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x62

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__COSTA_RICA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x63

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CRESTON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x64

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CUIABA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x65

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CURACAO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x66

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DANMARKSHAVN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x67

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DAWSON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x68

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DAWSON_CREEK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x69

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DENVER:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DETROIT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DOMINICA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EDMONTON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EIRUNEPE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EL_SALVADOR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ENSENADA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x70

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORT_NELSON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x71

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORT_WAYNE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x72

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORTALEZA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x73

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GLACE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x74

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GODTHAB:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x75

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GOOSE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x76

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GRAND_TURK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x77

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GRENADA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x78

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUADELOUPE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x79

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUATEMALA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUAYAQUIL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUYANA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HALIFAX:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HAVANA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HERMOSILLO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x80

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__KNOX:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x81

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__MARENGO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x82

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__PETERSBURG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x83

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__TELL_CITY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x84

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__VEVAY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x85

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__VINCENNES:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x86

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__WINAMAC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x87

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x88

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INUVIK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x89

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__IQALUIT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JUNEAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KENTUCKY__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KENTUCKY__MONTICELLO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KNOX_IN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x90

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KRALENDIJK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x91

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LA_PAZ:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x92

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LIMA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x93

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOS_ANGELES:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x94

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x95

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOWER_PRINCES:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x96

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MACEIO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x97

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MANAGUA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x98

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MANAUS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x99

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MARIGOT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MARTINIQUE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MATAMOROS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MAZATLAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MENOMINEE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MERIDA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__METLAKATLA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MEXICO_CITY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MIQUELON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONCTON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTERREY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTEVIDEO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTREAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTSERRAT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NASSAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NEW_YORK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NIPIGON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xab

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NOME:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xac

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORONHA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xad

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__BEULAH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xae

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__CENTER:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__NEW_SALEM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NUUK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__OJINAGA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PANAMA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PANGNIRTUNG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PARAMARIBO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PHOENIX:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORT_AU_PRINCE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORT_OF_SPAIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORTO_ACRE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORTO_VELHO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xba

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PUERTO_RICO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PUNTA_ARENAS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RAINY_RIVER:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RANKIN_INLET:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RECIFE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__REGINA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RESOLUTE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RIO_BRANCO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ROSARIO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTA_ISABEL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTAREM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTIAGO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTO_DOMINGO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SAO_PAULO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SCORESBYSUND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SHIPROCK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xca

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SITKA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_BARTHELEMY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_JOHNS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_KITTS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xce

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_LUCIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_THOMAS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_VINCENT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SWIFT_CURRENT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TEGUCIGALPA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__THULE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__THUNDER_BAY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TIJUANA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TORONTO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TORTOLA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__VANCOUVER:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__VIRGIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xda

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__WHITEHORSE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__WINNIPEG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__YAKUTAT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__YELLOWKNIFE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xde

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__CASEY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__DAVIS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__DUMONTDURVILLE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MACQUARIE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MAWSON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MCMURDO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__PALMER:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__ROTHERA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__SOUTH_POLE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__SYOWA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__TROLL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__VOSTOK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xea

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ARCTIC__LONGYEARBYEN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ADEN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xec

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ALMATY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xed

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AMMAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xee

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ANADYR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xef

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AQTAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AQTOBE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ASHGABAT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ASHKHABAD:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ATYRAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAGHDAD:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAHRAIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAKU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BANGKOK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BARNAUL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BEIRUT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BISHKEK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BRUNEI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CALCUTTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHITA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHOIBALSAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xff

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHONGQING:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x100

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHUNGKING:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x101

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__COLOMBO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x102

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DACCA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x103

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DAMASCUS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x104

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DHAKA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x105

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DILI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x106

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DUBAI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x107

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DUSHANBE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x108

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__FAMAGUSTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x109

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__GAZA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HARBIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HEBRON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HO_CHI_MINH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HONG_KONG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HOVD:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__IRKUTSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x110

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x111

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JAKARTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x112

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JAYAPURA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x113

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JERUSALEM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x114

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KABUL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x115

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KAMCHATKA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x116

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KARACHI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x117

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KASHGAR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x118

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KATHMANDU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x119

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KATMANDU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KHANDYGA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KOLKATA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KRASNOYARSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUALA_LUMPUR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUCHING:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUWAIT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x120

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MACAO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x121

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MACAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x122

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MAGADAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x123

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MAKASSAR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x124

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MANILA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x125

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MUSCAT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x126

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x127

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NOVOKUZNETSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x128

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NOVOSIBIRSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x129

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__OMSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ORAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PHNOM_PENH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PONTIANAK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PYONGYANG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QATAR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QOSTANAY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x130

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QYZYLORDA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x131

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__RANGOON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x132

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__RIYADH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x133

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAIGON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x134

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAKHALIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x135

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAMARKAND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x136

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SEOUL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x137

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SHANGHAI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x138

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x139

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SREDNEKOLYMSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TAIPEI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TASHKENT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TBILISI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TEHRAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TEL_AVIV:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__THIMBU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x140

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__THIMPHU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x141

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TOKYO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x142

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TOMSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x143

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__UJUNG_PANDANG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x144

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ULAANBAATAR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x145

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ULAN_BATOR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x146

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__URUMQI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x147

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__UST_NERA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x148

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__VIENTIANE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x149

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__VLADIVOSTOK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YAKUTSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YANGON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YEKATERINBURG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YEREVAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__AZORES:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__BERMUDA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x150

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__CANARY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x151

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__CAPE_VERDE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x152

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__FAEROE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x153

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__FAROE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x154

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__JAN_MAYEN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x155

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__MADEIRA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x156

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__REYKJAVIK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x157

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__SOUTH_GEORGIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x158

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__ST_HELENA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x159

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__STANLEY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__ACT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__ADELAIDE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__BRISBANE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__BROKEN_HILL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__CANBERRA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__CURRIE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x160

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__DARWIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x161

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__EUCLA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x162

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__HOBART:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x163

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LHI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x164

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LINDEMAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x165

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LORD_HOWE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x166

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__MELBOURNE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x167

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__NSW:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x168

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__NORTH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x169

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__PERTH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__QUEENSLAND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__SOUTH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__SYDNEY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__TASMANIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__VICTORIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__WEST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x170

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__YANCOWINNA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x171

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__ACRE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x172

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__DENORONHA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x173

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__EAST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x174

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__WEST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x175

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CET:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x176

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CST6CDT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x177

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__ATLANTIC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x178

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x179

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__NEWFOUNDLAND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__SASKATCHEWAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__YUKON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CHILE__CONTINENTAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x180

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CHILE__EASTERISLAND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x181

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->CUBA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x182

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EET:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x183

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x184

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EST5EDT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x185

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EGYPT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x186

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EIRE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x187

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x188

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x189

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_1:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_10:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_11:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_12:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_2:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_3:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_4:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x190

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_5:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x191

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_6:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x192

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_7:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x193

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_8:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x194

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_9:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x195

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x196

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_1:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x197

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_10:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x198

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_11:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x199

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_12:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_13:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_14:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_2:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_3:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_4:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_5:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_6:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_7:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_8:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_9:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT0:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UCT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UTC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__ZULU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1aa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__AMSTERDAM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ab

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ANDORRA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ac

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ASTRAKHAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ad

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ATHENS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ae

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BELFAST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1af

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BELGRADE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BERLIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BRATISLAVA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BRUSSELS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUCHAREST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUDAPEST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUSINGEN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__CHISINAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__COPENHAGEN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__DUBLIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__GIBRALTAR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ba

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__GUERNSEY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__HELSINKI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ISLE_OF_MAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1be

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__JERSEY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KALININGRAD:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KIEV:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KYIV:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KIROV:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LISBON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LJUBLJANA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LONDON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LUXEMBOURG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MADRID:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MALTA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MARIEHAMN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ca

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MINSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MONACO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MOSCOW:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ce

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__OSLO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cf

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PARIS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PODGORICA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PRAGUE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__RIGA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ROME:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SAMARA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SAN_MARINO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SARAJEVO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SARATOV:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SIMFEROPOL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SKOPJE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1da

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SOFIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1db

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__STOCKHOLM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1dc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TALLINN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1dd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TIRANE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1de

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TIRASPOL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1df

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ULYANOVSK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__UZHGOROD:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VADUZ:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VATICAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VIENNA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VILNIUS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VOLGOGRAD:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__WARSAW:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZAGREB:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZAPOROZHYE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZURICH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ea

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->GB:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1eb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->GB_EIRE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ec

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ed

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ee

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ef

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT0:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f1

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->HST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->HONGKONG:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f3

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ICELAND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f4

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__ANTANANARIVO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__CHAGOS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f6

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__CHRISTMAS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f7

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__COCOS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f8

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__COMORO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f9

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__KERGUELEN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fa

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAHE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fb

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MALDIVES:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fc

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAURITIUS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fd

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAYOTTE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fe

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__REUNION:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ff

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->IRAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x200

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ISRAEL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x201

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x202

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->JAPAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x203

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x204

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->LIBYA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x205

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->MET:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x206

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->MST:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x207

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->MST7MDT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x208

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__BAJANORTE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x209

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__BAJASUR:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__GENERAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->NZ:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->NZ_CHAT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->NAVAJO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PRC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PST8PDT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x210

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__APIA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x211

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__AUCKLAND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x212

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__BOUGAINVILLE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x213

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__CHATHAM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x214

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__CHUUK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x215

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__EASTER:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x216

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__EFATE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x217

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__ENDERBURY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x218

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FAKAOFO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x219

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FIJI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FUNAFUTI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GALAPAGOS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GAMBIER:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GUADALCANAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GUAM:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__HONOLULU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x220

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__JOHNSTON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x221

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KANTON:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x222

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KIRITIMATI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x223

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KOSRAE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x224

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x225

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MAJURO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x226

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MARQUESAS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x227

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MIDWAY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x228

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NAURU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x229

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NIUE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NORFOLK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NOUMEA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PAGO_PAGO:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PALAU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PITCAIRN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__POHNPEI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x230

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PONAPE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x231

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PORT_MORESBY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x232

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__RAROTONGA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x233

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__SAIPAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x234

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x235

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TAHITI:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x236

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TARAWA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x237

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TONGATAPU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x238

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TRUK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x239

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__WAKE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__WALLIS:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__YAP:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->POLAND:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->PORTUGAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ROC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ROK:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x240

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x241

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->TURKEY:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x242

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->UCT:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x243

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__ALASKA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x244

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__ALEUTIAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x245

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__ARIZONA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x246

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x247

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__EAST_INDIANA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x248

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x249

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__HAWAII:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24a

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__INDIANA_STARKE:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24b

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__MICHIGAN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24c

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24d

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24e

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__PACIFIC_NEW:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24f

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x250

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->UTC:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x251

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x252

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->W_SU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x253

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->WET:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x254

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/proto/model/common/TimeZone;->ZULU:Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x255

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v0, Lcom/stripe/proto/model/common/TimeZone;

    const-string v1, "TIME_ZONE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/proto/model/common/TimeZone;->TIME_ZONE_INVALID:Lcom/stripe/proto/model/common/TimeZone;

    .line 21
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__ABIDJAN"

    const/4 v3, 0x1

    const/16 v4, 0x51

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ABIDJAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 22
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__ACCRA"

    const/4 v5, 0x2

    const/16 v6, 0x52

    invoke-direct {v1, v2, v5, v6}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ACCRA:Lcom/stripe/proto/model/common/TimeZone;

    .line 23
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__ADDIS_ABABA"

    const/4 v7, 0x3

    const/16 v8, 0x53

    invoke-direct {v1, v2, v7, v8}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ADDIS_ABABA:Lcom/stripe/proto/model/common/TimeZone;

    .line 24
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__ALGIERS"

    const/4 v9, 0x4

    const/16 v10, 0x54

    invoke-direct {v1, v2, v9, v10}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ALGIERS:Lcom/stripe/proto/model/common/TimeZone;

    .line 25
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__ASMARA"

    const/4 v11, 0x5

    const/16 v12, 0x55

    invoke-direct {v1, v2, v11, v12}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ASMARA:Lcom/stripe/proto/model/common/TimeZone;

    .line 26
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__ASMERA"

    const/4 v13, 0x6

    const/16 v14, 0x56

    invoke-direct {v1, v2, v13, v14}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__ASMERA:Lcom/stripe/proto/model/common/TimeZone;

    .line 27
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__BAMAKO"

    const/4 v15, 0x7

    const/16 v3, 0x57

    invoke-direct {v1, v2, v15, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BAMAKO:Lcom/stripe/proto/model/common/TimeZone;

    .line 28
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__BANGUI"

    const/16 v15, 0x8

    const/16 v7, 0x58

    invoke-direct {v1, v2, v15, v7}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BANGUI:Lcom/stripe/proto/model/common/TimeZone;

    .line 29
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__BANJUL"

    const/16 v5, 0x9

    const/16 v15, 0x59

    invoke-direct {v1, v2, v5, v15}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BANJUL:Lcom/stripe/proto/model/common/TimeZone;

    .line 30
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AFRICA__BISSAU"

    const/16 v5, 0xa

    const/16 v9, 0x5a

    invoke-direct {v1, v2, v5, v9}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BISSAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 31
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5b

    const-string v5, "AFRICA__BLANTYRE"

    const/16 v11, 0xb

    invoke-direct {v1, v5, v11, v2}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BLANTYRE:Lcom/stripe/proto/model/common/TimeZone;

    .line 32
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc

    const/16 v5, 0x5c

    const-string v11, "AFRICA__BRAZZAVILLE"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BRAZZAVILLE:Lcom/stripe/proto/model/common/TimeZone;

    .line 33
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd

    const/16 v5, 0x5d

    const-string v11, "AFRICA__BUJUMBURA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__BUJUMBURA:Lcom/stripe/proto/model/common/TimeZone;

    .line 34
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe

    const/16 v5, 0x5e

    const-string v11, "AFRICA__CAIRO"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CAIRO:Lcom/stripe/proto/model/common/TimeZone;

    .line 35
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf

    const/16 v5, 0x5f

    const-string v11, "AFRICA__CASABLANCA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CASABLANCA:Lcom/stripe/proto/model/common/TimeZone;

    .line 36
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10

    const/16 v5, 0x60

    const-string v11, "AFRICA__CEUTA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CEUTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 37
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11

    const/16 v5, 0x61

    const-string v11, "AFRICA__CONAKRY"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__CONAKRY:Lcom/stripe/proto/model/common/TimeZone;

    .line 38
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12

    const/16 v5, 0x62

    const-string v11, "AFRICA__DAKAR"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DAKAR:Lcom/stripe/proto/model/common/TimeZone;

    .line 39
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13

    const/16 v5, 0x63

    const-string v11, "AFRICA__DAR_ES_SALAAM"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DAR_ES_SALAAM:Lcom/stripe/proto/model/common/TimeZone;

    .line 40
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14

    const/16 v5, 0x64

    const-string v11, "AFRICA__DJIBOUTI"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DJIBOUTI:Lcom/stripe/proto/model/common/TimeZone;

    .line 41
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15

    const/16 v5, 0x65

    const-string v11, "AFRICA__DOUALA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__DOUALA:Lcom/stripe/proto/model/common/TimeZone;

    .line 42
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16

    const/16 v5, 0x66

    const-string v11, "AFRICA__EL_AAIUN"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__EL_AAIUN:Lcom/stripe/proto/model/common/TimeZone;

    .line 43
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17

    const/16 v5, 0x67

    const-string v11, "AFRICA__FREETOWN"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__FREETOWN:Lcom/stripe/proto/model/common/TimeZone;

    .line 44
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18

    const/16 v5, 0x68

    const-string v11, "AFRICA__GABORONE"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__GABORONE:Lcom/stripe/proto/model/common/TimeZone;

    .line 45
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19

    const/16 v5, 0x69

    const-string v11, "AFRICA__HARARE"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__HARARE:Lcom/stripe/proto/model/common/TimeZone;

    .line 46
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a

    const/16 v5, 0x6a

    const-string v11, "AFRICA__JOHANNESBURG"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__JOHANNESBURG:Lcom/stripe/proto/model/common/TimeZone;

    .line 47
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b

    const/16 v5, 0x6b

    const-string v11, "AFRICA__JUBA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__JUBA:Lcom/stripe/proto/model/common/TimeZone;

    .line 48
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c

    const/16 v5, 0x6c

    const-string v11, "AFRICA__KAMPALA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KAMPALA:Lcom/stripe/proto/model/common/TimeZone;

    .line 49
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d

    const/16 v5, 0x6d

    const-string v11, "AFRICA__KHARTOUM"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KHARTOUM:Lcom/stripe/proto/model/common/TimeZone;

    .line 50
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e

    const/16 v5, 0x6e

    const-string v11, "AFRICA__KIGALI"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KIGALI:Lcom/stripe/proto/model/common/TimeZone;

    .line 51
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f

    const/16 v5, 0x6f

    const-string v11, "AFRICA__KINSHASA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__KINSHASA:Lcom/stripe/proto/model/common/TimeZone;

    .line 52
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20

    const/16 v5, 0x70

    const-string v11, "AFRICA__LAGOS"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LAGOS:Lcom/stripe/proto/model/common/TimeZone;

    .line 53
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21

    const/16 v5, 0x71

    const-string v11, "AFRICA__LIBREVILLE"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LIBREVILLE:Lcom/stripe/proto/model/common/TimeZone;

    .line 54
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22

    const/16 v5, 0x72

    const-string v11, "AFRICA__LOME"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LOME:Lcom/stripe/proto/model/common/TimeZone;

    .line 55
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23

    const/16 v5, 0x73

    const-string v11, "AFRICA__LUANDA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUANDA:Lcom/stripe/proto/model/common/TimeZone;

    .line 56
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24

    const/16 v5, 0x74

    const-string v11, "AFRICA__LUBUMBASHI"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUBUMBASHI:Lcom/stripe/proto/model/common/TimeZone;

    .line 57
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x25

    const/16 v5, 0x75

    const-string v11, "AFRICA__LUSAKA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__LUSAKA:Lcom/stripe/proto/model/common/TimeZone;

    .line 58
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x26

    const/16 v5, 0x76

    const-string v11, "AFRICA__MALABO"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MALABO:Lcom/stripe/proto/model/common/TimeZone;

    .line 59
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x27

    const/16 v5, 0x77

    const-string v11, "AFRICA__MAPUTO"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MAPUTO:Lcom/stripe/proto/model/common/TimeZone;

    .line 60
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x28

    const/16 v5, 0x78

    const-string v11, "AFRICA__MASERU"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MASERU:Lcom/stripe/proto/model/common/TimeZone;

    .line 61
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x29

    const/16 v5, 0x79

    const-string v11, "AFRICA__MBABANE"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MBABANE:Lcom/stripe/proto/model/common/TimeZone;

    .line 62
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2a

    const/16 v5, 0x7a

    const-string v11, "AFRICA__MOGADISHU"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MOGADISHU:Lcom/stripe/proto/model/common/TimeZone;

    .line 63
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2b

    const/16 v5, 0x7b

    const-string v11, "AFRICA__MONROVIA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__MONROVIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 64
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2c

    const/16 v5, 0x7c

    const-string v11, "AFRICA__NAIROBI"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NAIROBI:Lcom/stripe/proto/model/common/TimeZone;

    .line 65
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2d

    const/16 v5, 0x7d

    const-string v11, "AFRICA__NDJAMENA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NDJAMENA:Lcom/stripe/proto/model/common/TimeZone;

    .line 66
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2e

    const/16 v5, 0x7e

    const-string v11, "AFRICA__NIAMEY"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NIAMEY:Lcom/stripe/proto/model/common/TimeZone;

    .line 67
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x2f

    const/16 v5, 0x7f

    const-string v11, "AFRICA__NOUAKCHOTT"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__NOUAKCHOTT:Lcom/stripe/proto/model/common/TimeZone;

    .line 68
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x30

    const/16 v5, 0x80

    const-string v11, "AFRICA__OUAGADOUGOU"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__OUAGADOUGOU:Lcom/stripe/proto/model/common/TimeZone;

    .line 69
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x31

    const/16 v5, 0x81

    const-string v11, "AFRICA__PORTO_NOVO"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__PORTO_NOVO:Lcom/stripe/proto/model/common/TimeZone;

    .line 70
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x32

    const/16 v5, 0x82

    const-string v11, "AFRICA__SAO_TOME"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__SAO_TOME:Lcom/stripe/proto/model/common/TimeZone;

    .line 71
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x33

    const/16 v5, 0x83

    const-string v11, "AFRICA__TIMBUKTU"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TIMBUKTU:Lcom/stripe/proto/model/common/TimeZone;

    .line 72
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x34

    const/16 v5, 0x84

    const-string v11, "AFRICA__TRIPOLI"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TRIPOLI:Lcom/stripe/proto/model/common/TimeZone;

    .line 73
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x35

    const/16 v5, 0x85

    const-string v11, "AFRICA__TUNIS"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__TUNIS:Lcom/stripe/proto/model/common/TimeZone;

    .line 74
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x36

    const/16 v5, 0x86

    const-string v11, "AFRICA__WINDHOEK"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AFRICA__WINDHOEK:Lcom/stripe/proto/model/common/TimeZone;

    .line 75
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x37

    const/16 v5, 0x25

    const-string v11, "AMERICA__ADAK"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ADAK:Lcom/stripe/proto/model/common/TimeZone;

    .line 76
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__ANCHORAGE"

    const/16 v5, 0x38

    invoke-direct {v1, v2, v5, v13}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANCHORAGE:Lcom/stripe/proto/model/common/TimeZone;

    .line 77
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x39

    const/16 v5, 0x87

    const-string v11, "AMERICA__ANGUILLA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANGUILLA:Lcom/stripe/proto/model/common/TimeZone;

    .line 78
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3a

    const/16 v5, 0x88

    const-string v11, "AMERICA__ANTIGUA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ANTIGUA:Lcom/stripe/proto/model/common/TimeZone;

    .line 79
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3b

    const/16 v5, 0x89

    const-string v11, "AMERICA__ARAGUAINA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARAGUAINA:Lcom/stripe/proto/model/common/TimeZone;

    .line 80
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3c

    const/16 v5, 0x8a

    const-string v11, "AMERICA__ARGENTINA__BUENOS_AIRES"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

    .line 81
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3d

    const/16 v5, 0x8b

    const-string v11, "AMERICA__ARGENTINA__CATAMARCA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

    .line 82
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3e

    const/16 v5, 0x8c

    const-string v11, "AMERICA__ARGENTINA__COMODRIVADAVIA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__COMODRIVADAVIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 83
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x3f

    const/16 v5, 0x8d

    const-string v11, "AMERICA__ARGENTINA__CORDOBA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

    .line 84
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x40

    const/16 v5, 0x8e

    const-string v11, "AMERICA__ARGENTINA__JUJUY"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

    .line 85
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x41

    const/16 v5, 0x8f

    const-string v11, "AMERICA__ARGENTINA__LA_RIOJA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__LA_RIOJA:Lcom/stripe/proto/model/common/TimeZone;

    .line 86
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x42

    const/16 v5, 0x90

    const-string v11, "AMERICA__ARGENTINA__MENDOZA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

    .line 87
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x43

    const/16 v5, 0x91

    const-string v11, "AMERICA__ARGENTINA__RIO_GALLEGOS"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__RIO_GALLEGOS:Lcom/stripe/proto/model/common/TimeZone;

    .line 88
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x44

    const/16 v5, 0x92

    const-string v11, "AMERICA__ARGENTINA__SALTA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SALTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 89
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x45

    const/16 v5, 0x93

    const-string v11, "AMERICA__ARGENTINA__SAN_JUAN"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SAN_JUAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 90
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x46

    const/16 v5, 0x94

    const-string v11, "AMERICA__ARGENTINA__SAN_LUIS"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__SAN_LUIS:Lcom/stripe/proto/model/common/TimeZone;

    .line 91
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x47

    const/16 v5, 0x95

    const-string v11, "AMERICA__ARGENTINA__TUCUMAN"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__TUCUMAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 92
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x48

    const/16 v5, 0x96

    const-string v11, "AMERICA__ARGENTINA__USHUAIA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARGENTINA__USHUAIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 93
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x49

    const/16 v5, 0x97

    const-string v11, "AMERICA__ARUBA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ARUBA:Lcom/stripe/proto/model/common/TimeZone;

    .line 94
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4a

    const/16 v5, 0x98

    const-string v11, "AMERICA__ASUNCION"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ASUNCION:Lcom/stripe/proto/model/common/TimeZone;

    .line 95
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4b

    const/16 v5, 0x38

    const-string v11, "AMERICA__ATIKOKAN"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ATIKOKAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 96
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4c

    const/16 v5, 0x99

    const-string v11, "AMERICA__ATKA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ATKA:Lcom/stripe/proto/model/common/TimeZone;

    .line 97
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4d

    const/16 v5, 0x9a

    const-string v11, "AMERICA__BAHIA"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BAHIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 98
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4e

    const/16 v5, 0x9b

    const-string v11, "AMERICA__BAHIA_BANDERAS"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BAHIA_BANDERAS:Lcom/stripe/proto/model/common/TimeZone;

    .line 99
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x4f

    const/16 v5, 0x9c

    const-string v11, "AMERICA__BARBADOS"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BARBADOS:Lcom/stripe/proto/model/common/TimeZone;

    .line 100
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x50

    const/16 v5, 0x9d

    const-string v11, "AMERICA__BELEM"

    invoke-direct {v1, v11, v2, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BELEM:Lcom/stripe/proto/model/common/TimeZone;

    .line 101
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__BELIZE"

    const/16 v5, 0x9e

    invoke-direct {v1, v2, v4, v5}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BELIZE:Lcom/stripe/proto/model/common/TimeZone;

    .line 102
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__BLANC_SABLON"

    const/16 v4, 0x39

    invoke-direct {v1, v2, v6, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BLANC_SABLON:Lcom/stripe/proto/model/common/TimeZone;

    .line 103
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__BOA_VISTA"

    const/16 v4, 0x9f

    invoke-direct {v1, v2, v8, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOA_VISTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 104
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__BOGOTA"

    const/16 v4, 0xa0

    invoke-direct {v1, v2, v10, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOGOTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 105
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__BOISE"

    const/16 v4, 0x26

    invoke-direct {v1, v2, v12, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BOISE:Lcom/stripe/proto/model/common/TimeZone;

    .line 106
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__BUENOS_AIRES"

    const/16 v4, 0xa1

    invoke-direct {v1, v2, v14, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__BUENOS_AIRES:Lcom/stripe/proto/model/common/TimeZone;

    .line 107
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__CAMBRIDGE_BAY"

    const/16 v4, 0x3a

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAMBRIDGE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    .line 108
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__CAMPO_GRANDE"

    const/16 v3, 0xa2

    invoke-direct {v1, v2, v7, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAMPO_GRANDE:Lcom/stripe/proto/model/common/TimeZone;

    .line 109
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__CANCUN"

    const/16 v3, 0xa3

    invoke-direct {v1, v2, v15, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CANCUN:Lcom/stripe/proto/model/common/TimeZone;

    .line 110
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__CARACAS"

    const/16 v3, 0xa4

    invoke-direct {v1, v2, v9, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CARACAS:Lcom/stripe/proto/model/common/TimeZone;

    .line 111
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5b

    const/16 v3, 0xa5

    const-string v4, "AMERICA__CATAMARCA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CATAMARCA:Lcom/stripe/proto/model/common/TimeZone;

    .line 112
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5c

    const/16 v3, 0xa6

    const-string v4, "AMERICA__CAYENNE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAYENNE:Lcom/stripe/proto/model/common/TimeZone;

    .line 113
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5d

    const/16 v3, 0xa7

    const-string v4, "AMERICA__CAYMAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CAYMAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 114
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__CHICAGO"

    const/16 v3, 0x5e

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CHICAGO:Lcom/stripe/proto/model/common/TimeZone;

    .line 115
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x5f

    const/16 v3, 0xa8

    const-string v4, "AMERICA__CHIHUAHUA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CHIHUAHUA:Lcom/stripe/proto/model/common/TimeZone;

    .line 116
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x60

    const/16 v3, 0x254

    const-string v4, "AMERICA__CIUDAD_JUAREZ"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CIUDAD_JUAREZ:Lcom/stripe/proto/model/common/TimeZone;

    .line 117
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x61

    const/16 v3, 0x3b

    const-string v4, "AMERICA__CORAL_HARBOUR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CORAL_HARBOUR:Lcom/stripe/proto/model/common/TimeZone;

    .line 118
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x62

    const/16 v3, 0xa9

    const-string v4, "AMERICA__CORDOBA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CORDOBA:Lcom/stripe/proto/model/common/TimeZone;

    .line 119
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x63

    const/16 v3, 0xaa

    const-string v4, "AMERICA__COSTA_RICA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__COSTA_RICA:Lcom/stripe/proto/model/common/TimeZone;

    .line 120
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x64

    const/16 v3, 0xab

    const-string v4, "AMERICA__CRESTON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CRESTON:Lcom/stripe/proto/model/common/TimeZone;

    .line 121
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x65

    const/16 v3, 0xac

    const-string v4, "AMERICA__CUIABA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CUIABA:Lcom/stripe/proto/model/common/TimeZone;

    .line 122
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x66

    const/16 v3, 0xad

    const-string v4, "AMERICA__CURACAO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__CURACAO:Lcom/stripe/proto/model/common/TimeZone;

    .line 123
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x67

    const/16 v3, 0xae

    const-string v4, "AMERICA__DANMARKSHAVN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DANMARKSHAVN:Lcom/stripe/proto/model/common/TimeZone;

    .line 124
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x68

    const/16 v3, 0x3c

    const-string v4, "AMERICA__DAWSON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DAWSON:Lcom/stripe/proto/model/common/TimeZone;

    .line 125
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x69

    const/16 v3, 0x3e

    const-string v4, "AMERICA__DAWSON_CREEK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DAWSON_CREEK:Lcom/stripe/proto/model/common/TimeZone;

    .line 126
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__DENVER"

    const/16 v3, 0x6a

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DENVER:Lcom/stripe/proto/model/common/TimeZone;

    .line 127
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__DETROIT"

    const/16 v3, 0x6b

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DETROIT:Lcom/stripe/proto/model/common/TimeZone;

    .line 128
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6c

    const/16 v3, 0xaf

    const-string v4, "AMERICA__DOMINICA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__DOMINICA:Lcom/stripe/proto/model/common/TimeZone;

    .line 129
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__EDMONTON"

    const/16 v3, 0x6d

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EDMONTON:Lcom/stripe/proto/model/common/TimeZone;

    .line 130
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6e

    const/16 v3, 0xb0

    const-string v4, "AMERICA__EIRUNEPE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EIRUNEPE:Lcom/stripe/proto/model/common/TimeZone;

    .line 131
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x6f

    const/16 v3, 0xb1

    const-string v4, "AMERICA__EL_SALVADOR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__EL_SALVADOR:Lcom/stripe/proto/model/common/TimeZone;

    .line 132
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x70

    const/16 v3, 0xb2

    const-string v4, "AMERICA__ENSENADA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ENSENADA:Lcom/stripe/proto/model/common/TimeZone;

    .line 133
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x71

    const/16 v3, 0xb3

    const-string v4, "AMERICA__FORT_NELSON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORT_NELSON:Lcom/stripe/proto/model/common/TimeZone;

    .line 134
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x72

    const/16 v3, 0xb4

    const-string v4, "AMERICA__FORT_WAYNE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORT_WAYNE:Lcom/stripe/proto/model/common/TimeZone;

    .line 135
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x73

    const/16 v3, 0xb5

    const-string v4, "AMERICA__FORTALEZA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__FORTALEZA:Lcom/stripe/proto/model/common/TimeZone;

    .line 136
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x74

    const/16 v3, 0x3f

    const-string v4, "AMERICA__GLACE_BAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GLACE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    .line 137
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x75

    const/16 v3, 0xb6

    const-string v4, "AMERICA__GODTHAB"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GODTHAB:Lcom/stripe/proto/model/common/TimeZone;

    .line 138
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x76

    const/16 v3, 0x40

    const-string v4, "AMERICA__GOOSE_BAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GOOSE_BAY:Lcom/stripe/proto/model/common/TimeZone;

    .line 139
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x77

    const/16 v3, 0xb7

    const-string v4, "AMERICA__GRAND_TURK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GRAND_TURK:Lcom/stripe/proto/model/common/TimeZone;

    .line 140
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x78

    const/16 v3, 0xb8

    const-string v4, "AMERICA__GRENADA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GRENADA:Lcom/stripe/proto/model/common/TimeZone;

    .line 141
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x79

    const/16 v3, 0xb9

    const-string v4, "AMERICA__GUADELOUPE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUADELOUPE:Lcom/stripe/proto/model/common/TimeZone;

    .line 142
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7a

    const/16 v3, 0xba

    const-string v4, "AMERICA__GUATEMALA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUATEMALA:Lcom/stripe/proto/model/common/TimeZone;

    .line 143
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7b

    const/16 v3, 0xbb

    const-string v4, "AMERICA__GUAYAQUIL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUAYAQUIL:Lcom/stripe/proto/model/common/TimeZone;

    .line 144
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7c

    const/16 v3, 0xbc

    const-string v4, "AMERICA__GUYANA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__GUYANA:Lcom/stripe/proto/model/common/TimeZone;

    .line 145
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__HALIFAX"

    const/16 v3, 0x7d

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HALIFAX:Lcom/stripe/proto/model/common/TimeZone;

    .line 146
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7e

    const/16 v3, 0xbd

    const-string v4, "AMERICA__HAVANA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HAVANA:Lcom/stripe/proto/model/common/TimeZone;

    .line 147
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x7f

    const/16 v3, 0xbe

    const-string v4, "AMERICA__HERMOSILLO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__HERMOSILLO:Lcom/stripe/proto/model/common/TimeZone;

    .line 148
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x80

    const/16 v3, 0x28

    const-string v4, "AMERICA__INDIANA__INDIANAPOLIS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

    .line 149
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x81

    const/16 v3, 0x29

    const-string v4, "AMERICA__INDIANA__KNOX"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__KNOX:Lcom/stripe/proto/model/common/TimeZone;

    .line 150
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x82

    const/16 v3, 0x2a

    const-string v4, "AMERICA__INDIANA__MARENGO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__MARENGO:Lcom/stripe/proto/model/common/TimeZone;

    .line 151
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x83

    const/16 v3, 0x2b

    const-string v4, "AMERICA__INDIANA__PETERSBURG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__PETERSBURG:Lcom/stripe/proto/model/common/TimeZone;

    .line 152
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x84

    const/16 v3, 0x2c

    const-string v4, "AMERICA__INDIANA__TELL_CITY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__TELL_CITY:Lcom/stripe/proto/model/common/TimeZone;

    .line 153
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x85

    const/16 v3, 0x2d

    const-string v4, "AMERICA__INDIANA__VEVAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__VEVAY:Lcom/stripe/proto/model/common/TimeZone;

    .line 154
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x86

    const/16 v3, 0x2e

    const-string v4, "AMERICA__INDIANA__VINCENNES"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__VINCENNES:Lcom/stripe/proto/model/common/TimeZone;

    .line 155
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x87

    const/16 v3, 0x2f

    const-string v4, "AMERICA__INDIANA__WINAMAC"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANA__WINAMAC:Lcom/stripe/proto/model/common/TimeZone;

    .line 156
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x88

    const/16 v3, 0xbf

    const-string v4, "AMERICA__INDIANAPOLIS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INDIANAPOLIS:Lcom/stripe/proto/model/common/TimeZone;

    .line 157
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x89

    const/16 v3, 0xc0

    const-string v4, "AMERICA__INUVIK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__INUVIK:Lcom/stripe/proto/model/common/TimeZone;

    .line 158
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8a

    const/16 v3, 0x41

    const-string v4, "AMERICA__IQALUIT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__IQALUIT:Lcom/stripe/proto/model/common/TimeZone;

    .line 159
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8b

    const/16 v3, 0xc1

    const-string v4, "AMERICA__JAMAICA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

    .line 160
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8c

    const/16 v3, 0xc2

    const-string v4, "AMERICA__JUJUY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JUJUY:Lcom/stripe/proto/model/common/TimeZone;

    .line 161
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8d

    const/16 v3, 0x27

    const-string v4, "AMERICA__JUNEAU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__JUNEAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 162
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8e

    const/16 v3, 0x30

    const-string v4, "AMERICA__KENTUCKY__LOUISVILLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KENTUCKY__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

    .line 163
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x8f

    const/16 v3, 0x31

    const-string v4, "AMERICA__KENTUCKY__MONTICELLO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KENTUCKY__MONTICELLO:Lcom/stripe/proto/model/common/TimeZone;

    .line 164
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x90

    const/16 v3, 0xc3

    const-string v4, "AMERICA__KNOX_IN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KNOX_IN:Lcom/stripe/proto/model/common/TimeZone;

    .line 165
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x91

    const/16 v3, 0xc4

    const-string v4, "AMERICA__KRALENDIJK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__KRALENDIJK:Lcom/stripe/proto/model/common/TimeZone;

    .line 166
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x92

    const/16 v3, 0xc5

    const-string v4, "AMERICA__LA_PAZ"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LA_PAZ:Lcom/stripe/proto/model/common/TimeZone;

    .line 167
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x93

    const/16 v3, 0xc6

    const-string v4, "AMERICA__LIMA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LIMA:Lcom/stripe/proto/model/common/TimeZone;

    .line 168
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__LOS_ANGELES"

    const/16 v3, 0x94

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOS_ANGELES:Lcom/stripe/proto/model/common/TimeZone;

    .line 169
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x95

    const/16 v3, 0xc7

    const-string v4, "AMERICA__LOUISVILLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOUISVILLE:Lcom/stripe/proto/model/common/TimeZone;

    .line 170
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x96

    const/16 v3, 0xc8

    const-string v4, "AMERICA__LOWER_PRINCES"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__LOWER_PRINCES:Lcom/stripe/proto/model/common/TimeZone;

    .line 171
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x97

    const/16 v3, 0xc9

    const-string v4, "AMERICA__MACEIO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MACEIO:Lcom/stripe/proto/model/common/TimeZone;

    .line 172
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x98

    const/16 v3, 0xca

    const-string v4, "AMERICA__MANAGUA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MANAGUA:Lcom/stripe/proto/model/common/TimeZone;

    .line 173
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x99

    const/16 v3, 0xcb

    const-string v4, "AMERICA__MANAUS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MANAUS:Lcom/stripe/proto/model/common/TimeZone;

    .line 174
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9a

    const/16 v3, 0xcc

    const-string v4, "AMERICA__MARIGOT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MARIGOT:Lcom/stripe/proto/model/common/TimeZone;

    .line 175
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9b

    const/16 v3, 0xcd

    const-string v4, "AMERICA__MARTINIQUE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MARTINIQUE:Lcom/stripe/proto/model/common/TimeZone;

    .line 176
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9c

    const/16 v3, 0xce

    const-string v4, "AMERICA__MATAMOROS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MATAMOROS:Lcom/stripe/proto/model/common/TimeZone;

    .line 177
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9d

    const/16 v3, 0xcf

    const-string v4, "AMERICA__MAZATLAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MAZATLAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 178
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9e

    const/16 v3, 0xd0

    const-string v4, "AMERICA__MENDOZA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MENDOZA:Lcom/stripe/proto/model/common/TimeZone;

    .line 179
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x9f

    const/16 v3, 0x32

    const-string v4, "AMERICA__MENOMINEE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MENOMINEE:Lcom/stripe/proto/model/common/TimeZone;

    .line 180
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa0

    const/16 v3, 0xd1

    const-string v4, "AMERICA__MERIDA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MERIDA:Lcom/stripe/proto/model/common/TimeZone;

    .line 181
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa1

    const/16 v3, 0xd2

    const-string v4, "AMERICA__METLAKATLA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__METLAKATLA:Lcom/stripe/proto/model/common/TimeZone;

    .line 182
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__MEXICO_CITY"

    const/16 v3, 0xa2

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MEXICO_CITY:Lcom/stripe/proto/model/common/TimeZone;

    .line 183
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa3

    const/16 v3, 0xd3

    const-string v4, "AMERICA__MIQUELON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MIQUELON:Lcom/stripe/proto/model/common/TimeZone;

    .line 184
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa4

    const/16 v3, 0x42

    const-string v4, "AMERICA__MONCTON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONCTON:Lcom/stripe/proto/model/common/TimeZone;

    .line 185
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa5

    const/16 v3, 0xd4

    const-string v4, "AMERICA__MONTERREY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTERREY:Lcom/stripe/proto/model/common/TimeZone;

    .line 186
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa6

    const/16 v3, 0xd5

    const-string v4, "AMERICA__MONTEVIDEO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTEVIDEO:Lcom/stripe/proto/model/common/TimeZone;

    .line 187
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa7

    const/16 v3, 0x43

    const-string v4, "AMERICA__MONTREAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTREAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 188
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa8

    const/16 v3, 0xd6

    const-string v4, "AMERICA__MONTSERRAT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__MONTSERRAT:Lcom/stripe/proto/model/common/TimeZone;

    .line 189
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xa9

    const/16 v3, 0xd7

    const-string v4, "AMERICA__NASSAU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NASSAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 190
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__NEW_YORK"

    const/16 v3, 0xaa

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NEW_YORK:Lcom/stripe/proto/model/common/TimeZone;

    .line 191
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xab

    const/16 v3, 0xd8

    const-string v4, "AMERICA__NIPIGON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NIPIGON:Lcom/stripe/proto/model/common/TimeZone;

    .line 192
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xac

    const/16 v3, 0x36

    const-string v4, "AMERICA__NOME"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NOME:Lcom/stripe/proto/model/common/TimeZone;

    .line 193
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xad

    const/16 v3, 0xd9

    const-string v4, "AMERICA__NORONHA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORONHA:Lcom/stripe/proto/model/common/TimeZone;

    .line 194
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xae

    const/16 v3, 0x33

    const-string v4, "AMERICA__NORTH_DAKOTA__BEULAH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__BEULAH:Lcom/stripe/proto/model/common/TimeZone;

    .line 195
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xaf

    const/16 v3, 0x34

    const-string v4, "AMERICA__NORTH_DAKOTA__CENTER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__CENTER:Lcom/stripe/proto/model/common/TimeZone;

    .line 196
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb0

    const/16 v3, 0x35

    const-string v4, "AMERICA__NORTH_DAKOTA__NEW_SALEM"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NORTH_DAKOTA__NEW_SALEM:Lcom/stripe/proto/model/common/TimeZone;

    .line 197
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb1

    const/16 v3, 0xda

    const-string v4, "AMERICA__NUUK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__NUUK:Lcom/stripe/proto/model/common/TimeZone;

    .line 198
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb2

    const/16 v3, 0xdb

    const-string v4, "AMERICA__OJINAGA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__OJINAGA:Lcom/stripe/proto/model/common/TimeZone;

    .line 199
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb3

    const/16 v3, 0xdc

    const-string v4, "AMERICA__PANAMA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PANAMA:Lcom/stripe/proto/model/common/TimeZone;

    .line 200
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb4

    const/16 v3, 0xdd

    const-string v4, "AMERICA__PANGNIRTUNG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PANGNIRTUNG:Lcom/stripe/proto/model/common/TimeZone;

    .line 201
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb5

    const/16 v3, 0xde

    const-string v4, "AMERICA__PARAMARIBO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PARAMARIBO:Lcom/stripe/proto/model/common/TimeZone;

    .line 202
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "AMERICA__PHOENIX"

    const/16 v3, 0xb6

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PHOENIX:Lcom/stripe/proto/model/common/TimeZone;

    .line 203
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb7

    const/16 v3, 0xdf

    const-string v4, "AMERICA__PORT_AU_PRINCE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORT_AU_PRINCE:Lcom/stripe/proto/model/common/TimeZone;

    .line 204
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb8

    const/16 v3, 0xe0

    const-string v4, "AMERICA__PORT_OF_SPAIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORT_OF_SPAIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 205
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xb9

    const/16 v3, 0xe1

    const-string v4, "AMERICA__PORTO_ACRE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORTO_ACRE:Lcom/stripe/proto/model/common/TimeZone;

    .line 206
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xba

    const/16 v3, 0xe2

    const-string v4, "AMERICA__PORTO_VELHO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PORTO_VELHO:Lcom/stripe/proto/model/common/TimeZone;

    .line 207
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbb

    const/16 v3, 0xe3

    const-string v4, "AMERICA__PUERTO_RICO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PUERTO_RICO:Lcom/stripe/proto/model/common/TimeZone;

    .line 208
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbc

    const/16 v3, 0xe4

    const-string v4, "AMERICA__PUNTA_ARENAS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__PUNTA_ARENAS:Lcom/stripe/proto/model/common/TimeZone;

    .line 209
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbd

    const/16 v3, 0x44

    const-string v4, "AMERICA__RAINY_RIVER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RAINY_RIVER:Lcom/stripe/proto/model/common/TimeZone;

    .line 210
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbe

    const/16 v3, 0x45

    const-string v4, "AMERICA__RANKIN_INLET"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RANKIN_INLET:Lcom/stripe/proto/model/common/TimeZone;

    .line 211
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xbf

    const/16 v3, 0xe5

    const-string v4, "AMERICA__RECIFE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RECIFE:Lcom/stripe/proto/model/common/TimeZone;

    .line 212
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc0

    const/16 v3, 0xc

    const-string v4, "AMERICA__REGINA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__REGINA:Lcom/stripe/proto/model/common/TimeZone;

    .line 213
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc1

    const/16 v3, 0x46

    const-string v4, "AMERICA__RESOLUTE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RESOLUTE:Lcom/stripe/proto/model/common/TimeZone;

    .line 214
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc2

    const/16 v3, 0xe6

    const-string v4, "AMERICA__RIO_BRANCO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__RIO_BRANCO:Lcom/stripe/proto/model/common/TimeZone;

    .line 215
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc3

    const/16 v3, 0xe7

    const-string v4, "AMERICA__ROSARIO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ROSARIO:Lcom/stripe/proto/model/common/TimeZone;

    .line 216
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc4

    const/16 v3, 0xe8

    const-string v4, "AMERICA__SANTA_ISABEL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTA_ISABEL:Lcom/stripe/proto/model/common/TimeZone;

    .line 217
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc5

    const/16 v3, 0xe9

    const-string v4, "AMERICA__SANTAREM"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTAREM:Lcom/stripe/proto/model/common/TimeZone;

    .line 218
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc6

    const/16 v3, 0xea

    const-string v4, "AMERICA__SANTIAGO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTIAGO:Lcom/stripe/proto/model/common/TimeZone;

    .line 219
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc7

    const/16 v3, 0xeb

    const-string v4, "AMERICA__SANTO_DOMINGO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SANTO_DOMINGO:Lcom/stripe/proto/model/common/TimeZone;

    .line 220
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc8

    const/16 v3, 0xd

    const-string v4, "AMERICA__SAO_PAULO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SAO_PAULO:Lcom/stripe/proto/model/common/TimeZone;

    .line 221
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xc9

    const/16 v3, 0xec

    const-string v4, "AMERICA__SCORESBYSUND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SCORESBYSUND:Lcom/stripe/proto/model/common/TimeZone;

    .line 222
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xca

    const/16 v3, 0xed

    const-string v4, "AMERICA__SHIPROCK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SHIPROCK:Lcom/stripe/proto/model/common/TimeZone;

    .line 223
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcb

    const/16 v3, 0xee

    const-string v4, "AMERICA__SITKA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SITKA:Lcom/stripe/proto/model/common/TimeZone;

    .line 224
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcc

    const/16 v3, 0xef

    const-string v4, "AMERICA__ST_BARTHELEMY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_BARTHELEMY:Lcom/stripe/proto/model/common/TimeZone;

    .line 225
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcd

    const/16 v3, 0x47

    const-string v4, "AMERICA__ST_JOHNS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_JOHNS:Lcom/stripe/proto/model/common/TimeZone;

    .line 226
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xce

    const/16 v3, 0xf0

    const-string v4, "AMERICA__ST_KITTS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_KITTS:Lcom/stripe/proto/model/common/TimeZone;

    .line 227
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xcf

    const/16 v3, 0xf1

    const-string v4, "AMERICA__ST_LUCIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_LUCIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 228
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd0

    const/16 v3, 0xf2

    const-string v4, "AMERICA__ST_THOMAS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_THOMAS:Lcom/stripe/proto/model/common/TimeZone;

    .line 229
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd1

    const/16 v3, 0xf3

    const-string v4, "AMERICA__ST_VINCENT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__ST_VINCENT:Lcom/stripe/proto/model/common/TimeZone;

    .line 230
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd2

    const/16 v3, 0x48

    const-string v4, "AMERICA__SWIFT_CURRENT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__SWIFT_CURRENT:Lcom/stripe/proto/model/common/TimeZone;

    .line 231
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd3

    const/16 v3, 0xf4

    const-string v4, "AMERICA__TEGUCIGALPA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TEGUCIGALPA:Lcom/stripe/proto/model/common/TimeZone;

    .line 232
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd4

    const/16 v3, 0xf5

    const-string v4, "AMERICA__THULE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__THULE:Lcom/stripe/proto/model/common/TimeZone;

    .line 233
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd5

    const/16 v3, 0x49

    const-string v4, "AMERICA__THUNDER_BAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__THUNDER_BAY:Lcom/stripe/proto/model/common/TimeZone;

    .line 234
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd6

    const/16 v3, 0xf6

    const-string v4, "AMERICA__TIJUANA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TIJUANA:Lcom/stripe/proto/model/common/TimeZone;

    .line 235
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd7

    const/16 v3, 0xe

    const-string v4, "AMERICA__TORONTO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TORONTO:Lcom/stripe/proto/model/common/TimeZone;

    .line 236
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd8

    const/16 v3, 0xf7

    const-string v4, "AMERICA__TORTOLA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__TORTOLA:Lcom/stripe/proto/model/common/TimeZone;

    .line 237
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xd9

    const/16 v3, 0xf

    const-string v4, "AMERICA__VANCOUVER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__VANCOUVER:Lcom/stripe/proto/model/common/TimeZone;

    .line 238
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xda

    const/16 v3, 0xf8

    const-string v4, "AMERICA__VIRGIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__VIRGIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 239
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdb

    const/16 v3, 0x4a

    const-string v4, "AMERICA__WHITEHORSE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__WHITEHORSE:Lcom/stripe/proto/model/common/TimeZone;

    .line 240
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdc

    const/16 v3, 0x10

    const-string v4, "AMERICA__WINNIPEG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__WINNIPEG:Lcom/stripe/proto/model/common/TimeZone;

    .line 241
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdd

    const/16 v3, 0x37

    const-string v4, "AMERICA__YAKUTAT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__YAKUTAT:Lcom/stripe/proto/model/common/TimeZone;

    .line 242
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xde

    const/16 v3, 0x4b

    const-string v4, "AMERICA__YELLOWKNIFE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AMERICA__YELLOWKNIFE:Lcom/stripe/proto/model/common/TimeZone;

    .line 243
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xdf

    const/16 v3, 0xf9

    const-string v4, "ANTARCTICA__CASEY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__CASEY:Lcom/stripe/proto/model/common/TimeZone;

    .line 244
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe0

    const/16 v3, 0xfa

    const-string v4, "ANTARCTICA__DAVIS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__DAVIS:Lcom/stripe/proto/model/common/TimeZone;

    .line 245
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe1

    const/16 v3, 0xfb

    const-string v4, "ANTARCTICA__DUMONTDURVILLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__DUMONTDURVILLE:Lcom/stripe/proto/model/common/TimeZone;

    .line 246
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe2

    const/16 v3, 0xfc

    const-string v4, "ANTARCTICA__MACQUARIE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MACQUARIE:Lcom/stripe/proto/model/common/TimeZone;

    .line 247
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe3

    const/16 v3, 0xfd

    const-string v4, "ANTARCTICA__MAWSON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MAWSON:Lcom/stripe/proto/model/common/TimeZone;

    .line 248
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe4

    const/16 v3, 0xfe

    const-string v4, "ANTARCTICA__MCMURDO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__MCMURDO:Lcom/stripe/proto/model/common/TimeZone;

    .line 249
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe5

    const/16 v3, 0xff

    const-string v4, "ANTARCTICA__PALMER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__PALMER:Lcom/stripe/proto/model/common/TimeZone;

    .line 250
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe6

    const/16 v3, 0x100

    const-string v4, "ANTARCTICA__ROTHERA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__ROTHERA:Lcom/stripe/proto/model/common/TimeZone;

    .line 251
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe7

    const/16 v3, 0x101

    const-string v4, "ANTARCTICA__SOUTH_POLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__SOUTH_POLE:Lcom/stripe/proto/model/common/TimeZone;

    .line 252
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe8

    const/16 v3, 0x102

    const-string v4, "ANTARCTICA__SYOWA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__SYOWA:Lcom/stripe/proto/model/common/TimeZone;

    .line 253
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xe9

    const/16 v3, 0x103

    const-string v4, "ANTARCTICA__TROLL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__TROLL:Lcom/stripe/proto/model/common/TimeZone;

    .line 254
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xea

    const/16 v3, 0x104

    const-string v4, "ANTARCTICA__VOSTOK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ANTARCTICA__VOSTOK:Lcom/stripe/proto/model/common/TimeZone;

    .line 255
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xeb

    const/16 v3, 0x105

    const-string v4, "ARCTIC__LONGYEARBYEN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ARCTIC__LONGYEARBYEN:Lcom/stripe/proto/model/common/TimeZone;

    .line 256
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xec

    const/16 v3, 0x106

    const-string v4, "ASIA__ADEN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ADEN:Lcom/stripe/proto/model/common/TimeZone;

    .line 257
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xed

    const/16 v3, 0x107

    const-string v4, "ASIA__ALMATY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ALMATY:Lcom/stripe/proto/model/common/TimeZone;

    .line 258
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xee

    const/16 v3, 0x108

    const-string v4, "ASIA__AMMAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AMMAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 259
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xef

    const/16 v3, 0x109

    const-string v4, "ASIA__ANADYR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ANADYR:Lcom/stripe/proto/model/common/TimeZone;

    .line 260
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf0

    const/16 v3, 0x10a

    const-string v4, "ASIA__AQTAU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AQTAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 261
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf1

    const/16 v3, 0x10b

    const-string v4, "ASIA__AQTOBE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__AQTOBE:Lcom/stripe/proto/model/common/TimeZone;

    .line 262
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf2

    const/16 v3, 0x10c

    const-string v4, "ASIA__ASHGABAT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ASHGABAT:Lcom/stripe/proto/model/common/TimeZone;

    .line 263
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf3

    const/16 v3, 0x10d

    const-string v4, "ASIA__ASHKHABAD"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ASHKHABAD:Lcom/stripe/proto/model/common/TimeZone;

    .line 264
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf4

    const/16 v3, 0x10e

    const-string v4, "ASIA__ATYRAU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ATYRAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 265
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf5

    const/16 v3, 0x10f

    const-string v4, "ASIA__BAGHDAD"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAGHDAD:Lcom/stripe/proto/model/common/TimeZone;

    .line 266
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf6

    const/16 v3, 0x110

    const-string v4, "ASIA__BAHRAIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAHRAIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 267
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf7

    const/16 v3, 0x111

    const-string v4, "ASIA__BAKU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BAKU:Lcom/stripe/proto/model/common/TimeZone;

    .line 268
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf8

    const/16 v3, 0x112

    const-string v4, "ASIA__BANGKOK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BANGKOK:Lcom/stripe/proto/model/common/TimeZone;

    .line 269
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xf9

    const/16 v3, 0x113

    const-string v4, "ASIA__BARNAUL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BARNAUL:Lcom/stripe/proto/model/common/TimeZone;

    .line 270
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfa

    const/16 v3, 0x114

    const-string v4, "ASIA__BEIRUT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BEIRUT:Lcom/stripe/proto/model/common/TimeZone;

    .line 271
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfb

    const/16 v3, 0x115

    const-string v4, "ASIA__BISHKEK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BISHKEK:Lcom/stripe/proto/model/common/TimeZone;

    .line 272
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfc

    const/16 v3, 0x116

    const-string v4, "ASIA__BRUNEI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__BRUNEI:Lcom/stripe/proto/model/common/TimeZone;

    .line 273
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfd

    const/16 v3, 0x117

    const-string v4, "ASIA__CALCUTTA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CALCUTTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 274
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xfe

    const/16 v3, 0x118

    const-string v4, "ASIA__CHITA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHITA:Lcom/stripe/proto/model/common/TimeZone;

    .line 275
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0xff

    const/16 v3, 0x119

    const-string v4, "ASIA__CHOIBALSAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHOIBALSAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 276
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x100

    const/16 v3, 0x11a

    const-string v4, "ASIA__CHONGQING"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHONGQING:Lcom/stripe/proto/model/common/TimeZone;

    .line 277
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x101

    const/16 v3, 0x11b

    const-string v4, "ASIA__CHUNGKING"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__CHUNGKING:Lcom/stripe/proto/model/common/TimeZone;

    .line 278
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x102

    const/16 v3, 0x11c

    const-string v4, "ASIA__COLOMBO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__COLOMBO:Lcom/stripe/proto/model/common/TimeZone;

    .line 279
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x103

    const/16 v3, 0x11d

    const-string v4, "ASIA__DACCA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DACCA:Lcom/stripe/proto/model/common/TimeZone;

    .line 280
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x104

    const/16 v3, 0x11e

    const-string v4, "ASIA__DAMASCUS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DAMASCUS:Lcom/stripe/proto/model/common/TimeZone;

    .line 281
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x105

    const/16 v3, 0x11f

    const-string v4, "ASIA__DHAKA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DHAKA:Lcom/stripe/proto/model/common/TimeZone;

    .line 282
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x106

    const/16 v3, 0x120

    const-string v4, "ASIA__DILI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DILI:Lcom/stripe/proto/model/common/TimeZone;

    .line 283
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x107

    const/16 v3, 0x121

    const-string v4, "ASIA__DUBAI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DUBAI:Lcom/stripe/proto/model/common/TimeZone;

    .line 284
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x108

    const/16 v3, 0x122

    const-string v4, "ASIA__DUSHANBE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__DUSHANBE:Lcom/stripe/proto/model/common/TimeZone;

    .line 285
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x109

    const/16 v3, 0x123

    const-string v4, "ASIA__FAMAGUSTA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__FAMAGUSTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 286
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10a

    const/16 v3, 0x124

    const-string v4, "ASIA__GAZA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__GAZA:Lcom/stripe/proto/model/common/TimeZone;

    .line 287
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10b

    const/16 v3, 0x125

    const-string v4, "ASIA__HARBIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HARBIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 288
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10c

    const/16 v3, 0x126

    const-string v4, "ASIA__HEBRON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HEBRON:Lcom/stripe/proto/model/common/TimeZone;

    .line 289
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10d

    const/16 v3, 0x127

    const-string v4, "ASIA__HO_CHI_MINH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HO_CHI_MINH:Lcom/stripe/proto/model/common/TimeZone;

    .line 290
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10e

    const/16 v3, 0x4d

    const-string v4, "ASIA__HONG_KONG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HONG_KONG:Lcom/stripe/proto/model/common/TimeZone;

    .line 291
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x10f

    const/16 v3, 0x128

    const-string v4, "ASIA__HOVD"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__HOVD:Lcom/stripe/proto/model/common/TimeZone;

    .line 292
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x110

    const/16 v3, 0x129

    const-string v4, "ASIA__IRKUTSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__IRKUTSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 293
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x111

    const/16 v3, 0x12a

    const-string v4, "ASIA__ISTANBUL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

    .line 294
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x112

    const/16 v3, 0x12b

    const-string v4, "ASIA__JAKARTA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JAKARTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 295
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x113

    const/16 v3, 0x12c

    const-string v4, "ASIA__JAYAPURA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JAYAPURA:Lcom/stripe/proto/model/common/TimeZone;

    .line 296
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x114

    const/16 v3, 0x11

    const-string v4, "ASIA__JERUSALEM"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__JERUSALEM:Lcom/stripe/proto/model/common/TimeZone;

    .line 297
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x115

    const/16 v3, 0x12d

    const-string v4, "ASIA__KABUL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KABUL:Lcom/stripe/proto/model/common/TimeZone;

    .line 298
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x116

    const/16 v3, 0x12e

    const-string v4, "ASIA__KAMCHATKA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KAMCHATKA:Lcom/stripe/proto/model/common/TimeZone;

    .line 299
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x117

    const/16 v3, 0x12f

    const-string v4, "ASIA__KARACHI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KARACHI:Lcom/stripe/proto/model/common/TimeZone;

    .line 300
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x118

    const/16 v3, 0x130

    const-string v4, "ASIA__KASHGAR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KASHGAR:Lcom/stripe/proto/model/common/TimeZone;

    .line 301
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x119

    const/16 v3, 0x131

    const-string v4, "ASIA__KATHMANDU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KATHMANDU:Lcom/stripe/proto/model/common/TimeZone;

    .line 302
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11a

    const/16 v3, 0x132

    const-string v4, "ASIA__KATMANDU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KATMANDU:Lcom/stripe/proto/model/common/TimeZone;

    .line 303
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11b

    const/16 v3, 0x133

    const-string v4, "ASIA__KHANDYGA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KHANDYGA:Lcom/stripe/proto/model/common/TimeZone;

    .line 304
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11c

    const/16 v3, 0x4e

    const-string v4, "ASIA__KOLKATA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KOLKATA:Lcom/stripe/proto/model/common/TimeZone;

    .line 305
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11d

    const/16 v3, 0x134

    const-string v4, "ASIA__KRASNOYARSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KRASNOYARSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 306
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11e

    const/16 v3, 0x135

    const-string v4, "ASIA__KUALA_LUMPUR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUALA_LUMPUR:Lcom/stripe/proto/model/common/TimeZone;

    .line 307
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x11f

    const/16 v3, 0x136

    const-string v4, "ASIA__KUCHING"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUCHING:Lcom/stripe/proto/model/common/TimeZone;

    .line 308
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x120

    const/16 v3, 0x137

    const-string v4, "ASIA__KUWAIT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__KUWAIT:Lcom/stripe/proto/model/common/TimeZone;

    .line 309
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x121

    const/16 v3, 0x138

    const-string v4, "ASIA__MACAO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MACAO:Lcom/stripe/proto/model/common/TimeZone;

    .line 310
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x122

    const/16 v3, 0x139

    const-string v4, "ASIA__MACAU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MACAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 311
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x123

    const/16 v3, 0x13a

    const-string v4, "ASIA__MAGADAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MAGADAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 312
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x124

    const/16 v3, 0x13b

    const-string v4, "ASIA__MAKASSAR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MAKASSAR:Lcom/stripe/proto/model/common/TimeZone;

    .line 313
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x125

    const/16 v3, 0x50

    const-string v4, "ASIA__MANILA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MANILA:Lcom/stripe/proto/model/common/TimeZone;

    .line 314
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x126

    const/16 v3, 0x13c

    const-string v4, "ASIA__MUSCAT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__MUSCAT:Lcom/stripe/proto/model/common/TimeZone;

    .line 315
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x127

    const/16 v3, 0x13d

    const-string v4, "ASIA__NICOSIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 316
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x128

    const/16 v3, 0x13e

    const-string v4, "ASIA__NOVOKUZNETSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NOVOKUZNETSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 317
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x129

    const/16 v3, 0x13f

    const-string v4, "ASIA__NOVOSIBIRSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__NOVOSIBIRSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 318
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12a

    const/16 v3, 0x140

    const-string v4, "ASIA__OMSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__OMSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 319
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12b

    const/16 v3, 0x141

    const-string v4, "ASIA__ORAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ORAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 320
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12c

    const/16 v3, 0x142

    const-string v4, "ASIA__PHNOM_PENH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PHNOM_PENH:Lcom/stripe/proto/model/common/TimeZone;

    .line 321
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12d

    const/16 v3, 0x143

    const-string v4, "ASIA__PONTIANAK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PONTIANAK:Lcom/stripe/proto/model/common/TimeZone;

    .line 322
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12e

    const/16 v3, 0x144

    const-string v4, "ASIA__PYONGYANG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__PYONGYANG:Lcom/stripe/proto/model/common/TimeZone;

    .line 323
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x12f

    const/16 v3, 0x145

    const-string v4, "ASIA__QATAR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QATAR:Lcom/stripe/proto/model/common/TimeZone;

    .line 324
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x130

    const/16 v3, 0x146

    const-string v4, "ASIA__QOSTANAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QOSTANAY:Lcom/stripe/proto/model/common/TimeZone;

    .line 325
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x131

    const/16 v3, 0x147

    const-string v4, "ASIA__QYZYLORDA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__QYZYLORDA:Lcom/stripe/proto/model/common/TimeZone;

    .line 326
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x132

    const/16 v3, 0x148

    const-string v4, "ASIA__RANGOON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__RANGOON:Lcom/stripe/proto/model/common/TimeZone;

    .line 327
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x133

    const/16 v3, 0x149

    const-string v4, "ASIA__RIYADH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__RIYADH:Lcom/stripe/proto/model/common/TimeZone;

    .line 328
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x134

    const/16 v3, 0x14a

    const-string v4, "ASIA__SAIGON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAIGON:Lcom/stripe/proto/model/common/TimeZone;

    .line 329
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x135

    const/16 v3, 0x14b

    const-string v4, "ASIA__SAKHALIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAKHALIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 330
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x136

    const/16 v3, 0x14c

    const-string v4, "ASIA__SAMARKAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SAMARKAND:Lcom/stripe/proto/model/common/TimeZone;

    .line 331
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x137

    const/16 v3, 0x12

    const-string v4, "ASIA__SEOUL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SEOUL:Lcom/stripe/proto/model/common/TimeZone;

    .line 332
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x138

    const/16 v3, 0x13

    const-string v4, "ASIA__SHANGHAI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SHANGHAI:Lcom/stripe/proto/model/common/TimeZone;

    .line 333
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x139

    const/16 v3, 0x24

    const-string v4, "ASIA__SINGAPORE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

    .line 334
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13a

    const/16 v3, 0x14d

    const-string v4, "ASIA__SREDNEKOLYMSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__SREDNEKOLYMSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 335
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13b

    const/16 v3, 0x14e

    const-string v4, "ASIA__TAIPEI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TAIPEI:Lcom/stripe/proto/model/common/TimeZone;

    .line 336
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13c

    const/16 v3, 0x14f

    const-string v4, "ASIA__TASHKENT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TASHKENT:Lcom/stripe/proto/model/common/TimeZone;

    .line 337
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13d

    const/16 v3, 0x150

    const-string v4, "ASIA__TBILISI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TBILISI:Lcom/stripe/proto/model/common/TimeZone;

    .line 338
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13e

    const/16 v3, 0x151

    const-string v4, "ASIA__TEHRAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TEHRAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 339
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x13f

    const/16 v3, 0x152

    const-string v4, "ASIA__TEL_AVIV"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TEL_AVIV:Lcom/stripe/proto/model/common/TimeZone;

    .line 340
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x140

    const/16 v3, 0x153

    const-string v4, "ASIA__THIMBU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__THIMBU:Lcom/stripe/proto/model/common/TimeZone;

    .line 341
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x141

    const/16 v3, 0x154

    const-string v4, "ASIA__THIMPHU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__THIMPHU:Lcom/stripe/proto/model/common/TimeZone;

    .line 342
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x142

    const/16 v3, 0x14

    const-string v4, "ASIA__TOKYO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TOKYO:Lcom/stripe/proto/model/common/TimeZone;

    .line 343
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x143

    const/16 v3, 0x155

    const-string v4, "ASIA__TOMSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__TOMSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 344
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x144

    const/16 v3, 0x156

    const-string v4, "ASIA__UJUNG_PANDANG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__UJUNG_PANDANG:Lcom/stripe/proto/model/common/TimeZone;

    .line 345
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x145

    const/16 v3, 0x157

    const-string v4, "ASIA__ULAANBAATAR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ULAANBAATAR:Lcom/stripe/proto/model/common/TimeZone;

    .line 346
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x146

    const/16 v3, 0x158

    const-string v4, "ASIA__ULAN_BATOR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__ULAN_BATOR:Lcom/stripe/proto/model/common/TimeZone;

    .line 347
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x147

    const/16 v3, 0x159

    const-string v4, "ASIA__URUMQI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__URUMQI:Lcom/stripe/proto/model/common/TimeZone;

    .line 348
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x148

    const/16 v3, 0x15a

    const-string v4, "ASIA__UST_NERA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__UST_NERA:Lcom/stripe/proto/model/common/TimeZone;

    .line 349
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x149

    const/16 v3, 0x15b

    const-string v4, "ASIA__VIENTIANE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__VIENTIANE:Lcom/stripe/proto/model/common/TimeZone;

    .line 350
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14a

    const/16 v3, 0x15c

    const-string v4, "ASIA__VLADIVOSTOK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__VLADIVOSTOK:Lcom/stripe/proto/model/common/TimeZone;

    .line 351
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14b

    const/16 v3, 0x15d

    const-string v4, "ASIA__YAKUTSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YAKUTSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 352
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14c

    const/16 v3, 0x15e

    const-string v4, "ASIA__YANGON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YANGON:Lcom/stripe/proto/model/common/TimeZone;

    .line 353
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14d

    const/16 v3, 0x15f

    const-string v4, "ASIA__YEKATERINBURG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YEKATERINBURG:Lcom/stripe/proto/model/common/TimeZone;

    .line 354
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14e

    const/16 v3, 0x160

    const-string v4, "ASIA__YEREVAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ASIA__YEREVAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 355
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x14f

    const/16 v3, 0x161

    const-string v4, "ATLANTIC__AZORES"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__AZORES:Lcom/stripe/proto/model/common/TimeZone;

    .line 356
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x150

    const/16 v3, 0x162

    const-string v4, "ATLANTIC__BERMUDA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__BERMUDA:Lcom/stripe/proto/model/common/TimeZone;

    .line 357
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x151

    const/16 v3, 0x163

    const-string v4, "ATLANTIC__CANARY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__CANARY:Lcom/stripe/proto/model/common/TimeZone;

    .line 358
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x152

    const/16 v3, 0x164

    const-string v4, "ATLANTIC__CAPE_VERDE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__CAPE_VERDE:Lcom/stripe/proto/model/common/TimeZone;

    .line 359
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x153

    const/16 v3, 0x165

    const-string v4, "ATLANTIC__FAEROE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__FAEROE:Lcom/stripe/proto/model/common/TimeZone;

    .line 360
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x154

    const/16 v3, 0x166

    const-string v4, "ATLANTIC__FAROE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__FAROE:Lcom/stripe/proto/model/common/TimeZone;

    .line 361
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x155

    const/16 v3, 0x167

    const-string v4, "ATLANTIC__JAN_MAYEN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__JAN_MAYEN:Lcom/stripe/proto/model/common/TimeZone;

    .line 362
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x156

    const/16 v3, 0x168

    const-string v4, "ATLANTIC__MADEIRA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__MADEIRA:Lcom/stripe/proto/model/common/TimeZone;

    .line 363
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x157

    const/16 v3, 0x169

    const-string v4, "ATLANTIC__REYKJAVIK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__REYKJAVIK:Lcom/stripe/proto/model/common/TimeZone;

    .line 364
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x158

    const/16 v3, 0x16a

    const-string v4, "ATLANTIC__SOUTH_GEORGIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__SOUTH_GEORGIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 365
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x159

    const/16 v3, 0x16b

    const-string v4, "ATLANTIC__ST_HELENA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__ST_HELENA:Lcom/stripe/proto/model/common/TimeZone;

    .line 366
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15a

    const/16 v3, 0x16c

    const-string v4, "ATLANTIC__STANLEY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ATLANTIC__STANLEY:Lcom/stripe/proto/model/common/TimeZone;

    .line 367
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15b

    const/16 v3, 0x16d

    const-string v4, "AUSTRALIA__ACT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__ACT:Lcom/stripe/proto/model/common/TimeZone;

    .line 368
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15c

    const/16 v3, 0x15

    const-string v4, "AUSTRALIA__ADELAIDE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__ADELAIDE:Lcom/stripe/proto/model/common/TimeZone;

    .line 369
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15d

    const/16 v3, 0x4c

    const-string v4, "AUSTRALIA__BRISBANE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__BRISBANE:Lcom/stripe/proto/model/common/TimeZone;

    .line 370
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15e

    const/16 v3, 0x16e

    const-string v4, "AUSTRALIA__BROKEN_HILL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__BROKEN_HILL:Lcom/stripe/proto/model/common/TimeZone;

    .line 371
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x15f

    const/16 v3, 0x16f

    const-string v4, "AUSTRALIA__CANBERRA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__CANBERRA:Lcom/stripe/proto/model/common/TimeZone;

    .line 372
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x160

    const/16 v3, 0x170

    const-string v4, "AUSTRALIA__CURRIE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__CURRIE:Lcom/stripe/proto/model/common/TimeZone;

    .line 373
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x161

    const/16 v3, 0x171

    const-string v4, "AUSTRALIA__DARWIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__DARWIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 374
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x162

    const/16 v3, 0x172

    const-string v4, "AUSTRALIA__EUCLA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__EUCLA:Lcom/stripe/proto/model/common/TimeZone;

    .line 375
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x163

    const/16 v3, 0x173

    const-string v4, "AUSTRALIA__HOBART"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__HOBART:Lcom/stripe/proto/model/common/TimeZone;

    .line 376
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x164

    const/16 v3, 0x174

    const-string v4, "AUSTRALIA__LHI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LHI:Lcom/stripe/proto/model/common/TimeZone;

    .line 377
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x165

    const/16 v3, 0x175

    const-string v4, "AUSTRALIA__LINDEMAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LINDEMAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 378
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x166

    const/16 v3, 0x176

    const-string v4, "AUSTRALIA__LORD_HOWE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__LORD_HOWE:Lcom/stripe/proto/model/common/TimeZone;

    .line 379
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x167

    const/16 v3, 0x16

    const-string v4, "AUSTRALIA__MELBOURNE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__MELBOURNE:Lcom/stripe/proto/model/common/TimeZone;

    .line 380
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x168

    const/16 v3, 0x177

    const-string v4, "AUSTRALIA__NSW"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__NSW:Lcom/stripe/proto/model/common/TimeZone;

    .line 381
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x169

    const/16 v3, 0x178

    const-string v4, "AUSTRALIA__NORTH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__NORTH:Lcom/stripe/proto/model/common/TimeZone;

    .line 382
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16a

    const/16 v3, 0x179

    const-string v4, "AUSTRALIA__PERTH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__PERTH:Lcom/stripe/proto/model/common/TimeZone;

    .line 383
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16b

    const/16 v3, 0x17a

    const-string v4, "AUSTRALIA__QUEENSLAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__QUEENSLAND:Lcom/stripe/proto/model/common/TimeZone;

    .line 384
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16c

    const/16 v3, 0x17b

    const-string v4, "AUSTRALIA__SOUTH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__SOUTH:Lcom/stripe/proto/model/common/TimeZone;

    .line 385
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16d

    const/16 v3, 0x17

    const-string v4, "AUSTRALIA__SYDNEY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__SYDNEY:Lcom/stripe/proto/model/common/TimeZone;

    .line 386
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16e

    const/16 v3, 0x17c

    const-string v4, "AUSTRALIA__TASMANIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__TASMANIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 387
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x16f

    const/16 v3, 0x17d

    const-string v4, "AUSTRALIA__VICTORIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__VICTORIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 388
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x170

    const/16 v3, 0x17e

    const-string v4, "AUSTRALIA__WEST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__WEST:Lcom/stripe/proto/model/common/TimeZone;

    .line 389
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x171

    const/16 v3, 0x17f

    const-string v4, "AUSTRALIA__YANCOWINNA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->AUSTRALIA__YANCOWINNA:Lcom/stripe/proto/model/common/TimeZone;

    .line 390
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x172

    const/16 v3, 0x180

    const-string v4, "BRAZIL__ACRE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__ACRE:Lcom/stripe/proto/model/common/TimeZone;

    .line 391
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x173

    const/16 v3, 0x181

    const-string v4, "BRAZIL__DENORONHA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__DENORONHA:Lcom/stripe/proto/model/common/TimeZone;

    .line 392
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x174

    const/16 v3, 0x182

    const-string v4, "BRAZIL__EAST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__EAST:Lcom/stripe/proto/model/common/TimeZone;

    .line 393
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x175

    const/16 v3, 0x183

    const-string v4, "BRAZIL__WEST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->BRAZIL__WEST:Lcom/stripe/proto/model/common/TimeZone;

    .line 394
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x176

    const/16 v3, 0x184

    const-string v4, "CET"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CET:Lcom/stripe/proto/model/common/TimeZone;

    .line 395
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x177

    const/16 v3, 0x185

    const-string v4, "CST6CDT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CST6CDT:Lcom/stripe/proto/model/common/TimeZone;

    .line 396
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x178

    const/16 v3, 0x186

    const-string v4, "CANADA__ATLANTIC"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__ATLANTIC:Lcom/stripe/proto/model/common/TimeZone;

    .line 397
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x179

    const/16 v3, 0x187

    const-string v4, "CANADA__CENTRAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 398
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17a

    const/16 v3, 0x188

    const-string v4, "CANADA__EASTERN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

    .line 399
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17b

    const/16 v3, 0x189

    const-string v4, "CANADA__MOUNTAIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 400
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17c

    const/16 v3, 0x18a

    const-string v4, "CANADA__NEWFOUNDLAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__NEWFOUNDLAND:Lcom/stripe/proto/model/common/TimeZone;

    .line 401
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17d

    const/16 v3, 0x18b

    const-string v4, "CANADA__PACIFIC"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

    .line 402
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17e

    const/16 v3, 0x18c

    const-string v4, "CANADA__SASKATCHEWAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__SASKATCHEWAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 403
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x17f

    const/16 v3, 0x18d

    const-string v4, "CANADA__YUKON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CANADA__YUKON:Lcom/stripe/proto/model/common/TimeZone;

    .line 404
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x180

    const/16 v3, 0x18e

    const-string v4, "CHILE__CONTINENTAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CHILE__CONTINENTAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 405
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x181

    const/16 v3, 0x18f

    const-string v4, "CHILE__EASTERISLAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CHILE__EASTERISLAND:Lcom/stripe/proto/model/common/TimeZone;

    .line 406
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x182

    const/16 v3, 0x190

    const-string v4, "CUBA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->CUBA:Lcom/stripe/proto/model/common/TimeZone;

    .line 407
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x183

    const/16 v3, 0x191

    const-string v4, "EET"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EET:Lcom/stripe/proto/model/common/TimeZone;

    .line 408
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x184

    const/16 v3, 0x192

    const-string v4, "EST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EST:Lcom/stripe/proto/model/common/TimeZone;

    .line 409
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x185

    const/16 v3, 0x193

    const-string v4, "EST5EDT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EST5EDT:Lcom/stripe/proto/model/common/TimeZone;

    .line 410
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x186

    const/16 v3, 0x194

    const-string v4, "EGYPT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EGYPT:Lcom/stripe/proto/model/common/TimeZone;

    .line 411
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x187

    const/16 v3, 0x195

    const-string v4, "EIRE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EIRE:Lcom/stripe/proto/model/common/TimeZone;

    .line 412
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x188

    const/16 v3, 0x196

    const-string v4, "ETC__GMT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT:Lcom/stripe/proto/model/common/TimeZone;

    .line 413
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x189

    const/16 v3, 0x197

    const-string v4, "ETC__GMT_PLUS_0"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

    .line 414
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18a

    const/16 v3, 0x198

    const-string v4, "ETC__GMT_PLUS_1"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_1:Lcom/stripe/proto/model/common/TimeZone;

    .line 415
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18b

    const/16 v3, 0x199

    const-string v4, "ETC__GMT_PLUS_10"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_10:Lcom/stripe/proto/model/common/TimeZone;

    .line 416
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18c

    const/16 v3, 0x19a

    const-string v4, "ETC__GMT_PLUS_11"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_11:Lcom/stripe/proto/model/common/TimeZone;

    .line 417
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18d

    const/16 v3, 0x19b

    const-string v4, "ETC__GMT_PLUS_12"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_12:Lcom/stripe/proto/model/common/TimeZone;

    .line 418
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18e

    const/16 v3, 0x19c

    const-string v4, "ETC__GMT_PLUS_2"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_2:Lcom/stripe/proto/model/common/TimeZone;

    .line 419
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x18f

    const/16 v3, 0x19d

    const-string v4, "ETC__GMT_PLUS_3"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_3:Lcom/stripe/proto/model/common/TimeZone;

    .line 420
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x190

    const/16 v3, 0x19e

    const-string v4, "ETC__GMT_PLUS_4"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_4:Lcom/stripe/proto/model/common/TimeZone;

    .line 421
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x191

    const/16 v3, 0x19f

    const-string v4, "ETC__GMT_PLUS_5"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_5:Lcom/stripe/proto/model/common/TimeZone;

    .line 422
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x192

    const/16 v3, 0x1a0

    const-string v4, "ETC__GMT_PLUS_6"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_6:Lcom/stripe/proto/model/common/TimeZone;

    .line 423
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x193

    const/16 v3, 0x1a1

    const-string v4, "ETC__GMT_PLUS_7"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_7:Lcom/stripe/proto/model/common/TimeZone;

    .line 424
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x194

    const/16 v3, 0x1a2

    const-string v4, "ETC__GMT_PLUS_8"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_8:Lcom/stripe/proto/model/common/TimeZone;

    .line 425
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x195

    const/16 v3, 0x1a3

    const-string v4, "ETC__GMT_PLUS_9"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_PLUS_9:Lcom/stripe/proto/model/common/TimeZone;

    .line 426
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x196

    const/16 v3, 0x1a4

    const-string v4, "ETC__GMT_MINUS_0"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

    .line 427
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x197

    const/16 v3, 0x1a5

    const-string v4, "ETC__GMT_MINUS_1"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_1:Lcom/stripe/proto/model/common/TimeZone;

    .line 428
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x198

    const/16 v3, 0x1a6

    const-string v4, "ETC__GMT_MINUS_10"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_10:Lcom/stripe/proto/model/common/TimeZone;

    .line 429
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x199

    const/16 v3, 0x1a7

    const-string v4, "ETC__GMT_MINUS_11"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_11:Lcom/stripe/proto/model/common/TimeZone;

    .line 430
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19a

    const/16 v3, 0x1a8

    const-string v4, "ETC__GMT_MINUS_12"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_12:Lcom/stripe/proto/model/common/TimeZone;

    .line 431
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19b

    const/16 v3, 0x1a9

    const-string v4, "ETC__GMT_MINUS_13"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_13:Lcom/stripe/proto/model/common/TimeZone;

    .line 432
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19c

    const/16 v3, 0x1aa

    const-string v4, "ETC__GMT_MINUS_14"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_14:Lcom/stripe/proto/model/common/TimeZone;

    .line 433
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19d

    const/16 v3, 0x1ab

    const-string v4, "ETC__GMT_MINUS_2"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_2:Lcom/stripe/proto/model/common/TimeZone;

    .line 434
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19e

    const/16 v3, 0x1ac

    const-string v4, "ETC__GMT_MINUS_3"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_3:Lcom/stripe/proto/model/common/TimeZone;

    .line 435
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x19f

    const/16 v3, 0x1ad

    const-string v4, "ETC__GMT_MINUS_4"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_4:Lcom/stripe/proto/model/common/TimeZone;

    .line 436
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a0

    const/16 v3, 0x1ae

    const-string v4, "ETC__GMT_MINUS_5"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_5:Lcom/stripe/proto/model/common/TimeZone;

    .line 437
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a1

    const/16 v3, 0x1af

    const-string v4, "ETC__GMT_MINUS_6"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_6:Lcom/stripe/proto/model/common/TimeZone;

    .line 438
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a2

    const/16 v3, 0x1b0

    const-string v4, "ETC__GMT_MINUS_7"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_7:Lcom/stripe/proto/model/common/TimeZone;

    .line 439
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a3

    const/16 v3, 0x1b1

    const-string v4, "ETC__GMT_MINUS_8"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_8:Lcom/stripe/proto/model/common/TimeZone;

    .line 440
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a4

    const/16 v3, 0x1b2

    const-string v4, "ETC__GMT_MINUS_9"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT_MINUS_9:Lcom/stripe/proto/model/common/TimeZone;

    .line 441
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a5

    const/16 v3, 0x1b3

    const-string v4, "ETC__GMT0"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GMT0:Lcom/stripe/proto/model/common/TimeZone;

    .line 442
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a6

    const/16 v3, 0x1b4

    const-string v4, "ETC__GREENWICH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

    .line 443
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a7

    const/16 v3, 0x1b5

    const-string v4, "ETC__UCT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UCT:Lcom/stripe/proto/model/common/TimeZone;

    .line 444
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a8

    const/16 v3, 0x1b6

    const-string v4, "ETC__UTC"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UTC:Lcom/stripe/proto/model/common/TimeZone;

    .line 445
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1a9

    const/16 v3, 0x1b7

    const-string v4, "ETC__UNIVERSAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 446
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1aa

    const/16 v3, 0x1b8

    const-string v4, "ETC__ZULU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ETC__ZULU:Lcom/stripe/proto/model/common/TimeZone;

    .line 447
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ab

    const/16 v3, 0x18

    const-string v4, "EUROPE__AMSTERDAM"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__AMSTERDAM:Lcom/stripe/proto/model/common/TimeZone;

    .line 448
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ac

    const/16 v3, 0x1b9

    const-string v4, "EUROPE__ANDORRA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ANDORRA:Lcom/stripe/proto/model/common/TimeZone;

    .line 449
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ad

    const/16 v3, 0x1ba

    const-string v4, "EUROPE__ASTRAKHAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ASTRAKHAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 450
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ae

    const/16 v3, 0x1bb

    const-string v4, "EUROPE__ATHENS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ATHENS:Lcom/stripe/proto/model/common/TimeZone;

    .line 451
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1af

    const/16 v3, 0x1bc

    const-string v4, "EUROPE__BELFAST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BELFAST:Lcom/stripe/proto/model/common/TimeZone;

    .line 452
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b0

    const/16 v3, 0x1bd

    const-string v4, "EUROPE__BELGRADE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BELGRADE:Lcom/stripe/proto/model/common/TimeZone;

    .line 453
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b1

    const/16 v3, 0x19

    const-string v4, "EUROPE__BERLIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BERLIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 454
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b2

    const/16 v3, 0x1be

    const-string v4, "EUROPE__BRATISLAVA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BRATISLAVA:Lcom/stripe/proto/model/common/TimeZone;

    .line 455
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b3

    const/16 v3, 0x1a

    const-string v4, "EUROPE__BRUSSELS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BRUSSELS:Lcom/stripe/proto/model/common/TimeZone;

    .line 456
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b4

    const/16 v3, 0x1bf

    const-string v4, "EUROPE__BUCHAREST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUCHAREST:Lcom/stripe/proto/model/common/TimeZone;

    .line 457
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b5

    const/16 v3, 0x1c0

    const-string v4, "EUROPE__BUDAPEST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUDAPEST:Lcom/stripe/proto/model/common/TimeZone;

    .line 458
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b6

    const/16 v3, 0x1c1

    const-string v4, "EUROPE__BUSINGEN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__BUSINGEN:Lcom/stripe/proto/model/common/TimeZone;

    .line 459
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b7

    const/16 v3, 0x1c2

    const-string v4, "EUROPE__CHISINAU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__CHISINAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 460
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b8

    const/16 v3, 0x1c3

    const-string v4, "EUROPE__COPENHAGEN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__COPENHAGEN:Lcom/stripe/proto/model/common/TimeZone;

    .line 461
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1b9

    const/16 v3, 0x1b

    const-string v4, "EUROPE__DUBLIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__DUBLIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 462
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ba

    const/16 v3, 0x1c4

    const-string v4, "EUROPE__GIBRALTAR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__GIBRALTAR:Lcom/stripe/proto/model/common/TimeZone;

    .line 463
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bb

    const/16 v3, 0x1c5

    const-string v4, "EUROPE__GUERNSEY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__GUERNSEY:Lcom/stripe/proto/model/common/TimeZone;

    .line 464
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bc

    const/16 v3, 0x1c6

    const-string v4, "EUROPE__HELSINKI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__HELSINKI:Lcom/stripe/proto/model/common/TimeZone;

    .line 465
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bd

    const/16 v3, 0x1c7

    const-string v4, "EUROPE__ISLE_OF_MAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ISLE_OF_MAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 466
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1be

    const/16 v3, 0x1c8

    const-string v4, "EUROPE__ISTANBUL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ISTANBUL:Lcom/stripe/proto/model/common/TimeZone;

    .line 467
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1bf

    const/16 v3, 0x1c9

    const-string v4, "EUROPE__JERSEY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__JERSEY:Lcom/stripe/proto/model/common/TimeZone;

    .line 468
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c0

    const/16 v3, 0x1ca

    const-string v4, "EUROPE__KALININGRAD"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KALININGRAD:Lcom/stripe/proto/model/common/TimeZone;

    .line 469
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c1

    const/16 v3, 0x1cb

    const-string v4, "EUROPE__KIEV"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KIEV:Lcom/stripe/proto/model/common/TimeZone;

    .line 470
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c2

    const/16 v3, 0x255

    const-string v4, "EUROPE__KYIV"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KYIV:Lcom/stripe/proto/model/common/TimeZone;

    .line 471
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c3

    const/16 v3, 0x1cc

    const-string v4, "EUROPE__KIROV"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__KIROV:Lcom/stripe/proto/model/common/TimeZone;

    .line 472
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c4

    const/16 v3, 0x1cd

    const-string v4, "EUROPE__LISBON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LISBON:Lcom/stripe/proto/model/common/TimeZone;

    .line 473
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c5

    const/16 v3, 0x1ce

    const-string v4, "EUROPE__LJUBLJANA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LJUBLJANA:Lcom/stripe/proto/model/common/TimeZone;

    .line 474
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c6

    const/16 v3, 0x1c

    const-string v4, "EUROPE__LONDON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LONDON:Lcom/stripe/proto/model/common/TimeZone;

    .line 475
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c7

    const/16 v3, 0x1cf

    const-string v4, "EUROPE__LUXEMBOURG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__LUXEMBOURG:Lcom/stripe/proto/model/common/TimeZone;

    .line 476
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c8

    const/16 v3, 0x1d

    const-string v4, "EUROPE__MADRID"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MADRID:Lcom/stripe/proto/model/common/TimeZone;

    .line 477
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1c9

    const/16 v3, 0x1d0

    const-string v4, "EUROPE__MALTA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MALTA:Lcom/stripe/proto/model/common/TimeZone;

    .line 478
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ca

    const/16 v3, 0x1d1

    const-string v4, "EUROPE__MARIEHAMN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MARIEHAMN:Lcom/stripe/proto/model/common/TimeZone;

    .line 479
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cb

    const/16 v3, 0x1d2

    const-string v4, "EUROPE__MINSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MINSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 480
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cc

    const/16 v3, 0x1d3

    const-string v4, "EUROPE__MONACO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MONACO:Lcom/stripe/proto/model/common/TimeZone;

    .line 481
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cd

    const/16 v3, 0x1d4

    const-string v4, "EUROPE__MOSCOW"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__MOSCOW:Lcom/stripe/proto/model/common/TimeZone;

    .line 482
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ce

    const/16 v3, 0x1d5

    const-string v4, "EUROPE__NICOSIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__NICOSIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 483
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1cf

    const/16 v3, 0x1d6

    const-string v4, "EUROPE__OSLO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__OSLO:Lcom/stripe/proto/model/common/TimeZone;

    .line 484
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d0

    const/16 v3, 0x1e

    const-string v4, "EUROPE__PARIS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PARIS:Lcom/stripe/proto/model/common/TimeZone;

    .line 485
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d1

    const/16 v3, 0x1d7

    const-string v4, "EUROPE__PODGORICA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PODGORICA:Lcom/stripe/proto/model/common/TimeZone;

    .line 486
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d2

    const/16 v3, 0x1d8

    const-string v4, "EUROPE__PRAGUE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__PRAGUE:Lcom/stripe/proto/model/common/TimeZone;

    .line 487
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d3

    const/16 v3, 0x1d9

    const-string v4, "EUROPE__RIGA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__RIGA:Lcom/stripe/proto/model/common/TimeZone;

    .line 488
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d4

    const/16 v3, 0x1f

    const-string v4, "EUROPE__ROME"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ROME:Lcom/stripe/proto/model/common/TimeZone;

    .line 489
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d5

    const/16 v3, 0x1da

    const-string v4, "EUROPE__SAMARA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SAMARA:Lcom/stripe/proto/model/common/TimeZone;

    .line 490
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d6

    const/16 v3, 0x1db

    const-string v4, "EUROPE__SAN_MARINO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SAN_MARINO:Lcom/stripe/proto/model/common/TimeZone;

    .line 491
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d7

    const/16 v3, 0x1dc

    const-string v4, "EUROPE__SARAJEVO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SARAJEVO:Lcom/stripe/proto/model/common/TimeZone;

    .line 492
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d8

    const/16 v3, 0x1dd

    const-string v4, "EUROPE__SARATOV"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SARATOV:Lcom/stripe/proto/model/common/TimeZone;

    .line 493
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1d9

    const/16 v3, 0x1de

    const-string v4, "EUROPE__SIMFEROPOL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SIMFEROPOL:Lcom/stripe/proto/model/common/TimeZone;

    .line 494
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1da

    const/16 v3, 0x1df

    const-string v4, "EUROPE__SKOPJE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SKOPJE:Lcom/stripe/proto/model/common/TimeZone;

    .line 495
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1db

    const/16 v3, 0x1e0

    const-string v4, "EUROPE__SOFIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__SOFIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 496
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1dc

    const/16 v3, 0x20

    const-string v4, "EUROPE__STOCKHOLM"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__STOCKHOLM:Lcom/stripe/proto/model/common/TimeZone;

    .line 497
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1dd

    const/16 v3, 0x1e1

    const-string v4, "EUROPE__TALLINN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TALLINN:Lcom/stripe/proto/model/common/TimeZone;

    .line 498
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1de

    const/16 v3, 0x1e2

    const-string v4, "EUROPE__TIRANE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TIRANE:Lcom/stripe/proto/model/common/TimeZone;

    .line 499
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1df

    const/16 v3, 0x1e3

    const-string v4, "EUROPE__TIRASPOL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__TIRASPOL:Lcom/stripe/proto/model/common/TimeZone;

    .line 500
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e0

    const/16 v3, 0x1e4

    const-string v4, "EUROPE__ULYANOVSK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ULYANOVSK:Lcom/stripe/proto/model/common/TimeZone;

    .line 501
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e1

    const/16 v3, 0x1e5

    const-string v4, "EUROPE__UZHGOROD"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__UZHGOROD:Lcom/stripe/proto/model/common/TimeZone;

    .line 502
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e2

    const/16 v3, 0x1e6

    const-string v4, "EUROPE__VADUZ"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VADUZ:Lcom/stripe/proto/model/common/TimeZone;

    .line 503
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e3

    const/16 v3, 0x1e7

    const-string v4, "EUROPE__VATICAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VATICAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 504
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e4

    const/16 v3, 0x21

    const-string v4, "EUROPE__VIENNA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VIENNA:Lcom/stripe/proto/model/common/TimeZone;

    .line 505
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e5

    const/16 v3, 0x1e8

    const-string v4, "EUROPE__VILNIUS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VILNIUS:Lcom/stripe/proto/model/common/TimeZone;

    .line 506
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e6

    const/16 v3, 0x1e9

    const-string v4, "EUROPE__VOLGOGRAD"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__VOLGOGRAD:Lcom/stripe/proto/model/common/TimeZone;

    .line 507
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e7

    const/16 v3, 0x1ea

    const-string v4, "EUROPE__WARSAW"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__WARSAW:Lcom/stripe/proto/model/common/TimeZone;

    .line 508
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e8

    const/16 v3, 0x1eb

    const-string v4, "EUROPE__ZAGREB"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZAGREB:Lcom/stripe/proto/model/common/TimeZone;

    .line 509
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1e9

    const/16 v3, 0x1ec

    const-string v4, "EUROPE__ZAPOROZHYE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZAPOROZHYE:Lcom/stripe/proto/model/common/TimeZone;

    .line 510
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ea

    const/16 v3, 0x22

    const-string v4, "EUROPE__ZURICH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->EUROPE__ZURICH:Lcom/stripe/proto/model/common/TimeZone;

    .line 511
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1eb

    const/16 v3, 0x1ed

    const-string v4, "GB"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->GB:Lcom/stripe/proto/model/common/TimeZone;

    .line 512
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ec

    const/16 v3, 0x1ee

    const-string v4, "GB_EIRE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->GB_EIRE:Lcom/stripe/proto/model/common/TimeZone;

    .line 513
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ed

    const/16 v3, 0x1ef

    const-string v4, "GMT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT:Lcom/stripe/proto/model/common/TimeZone;

    .line 514
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ee

    const/16 v3, 0x1f0

    const-string v4, "GMT_PLUS_0"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT_PLUS_0:Lcom/stripe/proto/model/common/TimeZone;

    .line 515
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ef

    const/16 v3, 0x1f1

    const-string v4, "GMT_MINUS_0"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT_MINUS_0:Lcom/stripe/proto/model/common/TimeZone;

    .line 516
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f0

    const/16 v3, 0x1f2

    const-string v4, "GMT0"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->GMT0:Lcom/stripe/proto/model/common/TimeZone;

    .line 517
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f1

    const/16 v3, 0x1f3

    const-string v4, "GREENWICH"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->GREENWICH:Lcom/stripe/proto/model/common/TimeZone;

    .line 518
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f2

    const/16 v3, 0x1f4

    const-string v4, "HST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->HST:Lcom/stripe/proto/model/common/TimeZone;

    .line 519
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f3

    const/16 v3, 0x1f5

    const-string v4, "HONGKONG"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->HONGKONG:Lcom/stripe/proto/model/common/TimeZone;

    .line 520
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f4

    const/16 v3, 0x1f6

    const-string v4, "ICELAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ICELAND:Lcom/stripe/proto/model/common/TimeZone;

    .line 521
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f5

    const/16 v3, 0x1f7

    const-string v4, "INDIAN__ANTANANARIVO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__ANTANANARIVO:Lcom/stripe/proto/model/common/TimeZone;

    .line 522
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f6

    const/16 v3, 0x1f8

    const-string v4, "INDIAN__CHAGOS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__CHAGOS:Lcom/stripe/proto/model/common/TimeZone;

    .line 523
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f7

    const/16 v3, 0x1f9

    const-string v4, "INDIAN__CHRISTMAS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__CHRISTMAS:Lcom/stripe/proto/model/common/TimeZone;

    .line 524
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f8

    const/16 v3, 0x1fa

    const-string v4, "INDIAN__COCOS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__COCOS:Lcom/stripe/proto/model/common/TimeZone;

    .line 525
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1f9

    const/16 v3, 0x1fb

    const-string v4, "INDIAN__COMORO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__COMORO:Lcom/stripe/proto/model/common/TimeZone;

    .line 526
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fa

    const/16 v3, 0x1fc

    const-string v4, "INDIAN__KERGUELEN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__KERGUELEN:Lcom/stripe/proto/model/common/TimeZone;

    .line 527
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fb

    const/16 v3, 0x1fd

    const-string v4, "INDIAN__MAHE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAHE:Lcom/stripe/proto/model/common/TimeZone;

    .line 528
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fc

    const/16 v3, 0x1fe

    const-string v4, "INDIAN__MALDIVES"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MALDIVES:Lcom/stripe/proto/model/common/TimeZone;

    .line 529
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fd

    const/16 v3, 0x1ff

    const-string v4, "INDIAN__MAURITIUS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAURITIUS:Lcom/stripe/proto/model/common/TimeZone;

    .line 530
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1fe

    const/16 v3, 0x200

    const-string v4, "INDIAN__MAYOTTE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__MAYOTTE:Lcom/stripe/proto/model/common/TimeZone;

    .line 531
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x1ff

    const/16 v3, 0x201

    const-string v4, "INDIAN__REUNION"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->INDIAN__REUNION:Lcom/stripe/proto/model/common/TimeZone;

    .line 532
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x200

    const/16 v3, 0x202

    const-string v4, "IRAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->IRAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 533
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x201

    const/16 v3, 0x203

    const-string v4, "ISRAEL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ISRAEL:Lcom/stripe/proto/model/common/TimeZone;

    .line 534
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x202

    const/16 v3, 0x204

    const-string v4, "JAMAICA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->JAMAICA:Lcom/stripe/proto/model/common/TimeZone;

    .line 535
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x203

    const/16 v3, 0x205

    const-string v4, "JAPAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->JAPAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 536
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x204

    const/16 v3, 0x206

    const-string v4, "KWAJALEIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 537
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x205

    const/16 v3, 0x207

    const-string v4, "LIBYA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->LIBYA:Lcom/stripe/proto/model/common/TimeZone;

    .line 538
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x206

    const/16 v3, 0x208

    const-string v4, "MET"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->MET:Lcom/stripe/proto/model/common/TimeZone;

    .line 539
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x207

    const/16 v3, 0x209

    const-string v4, "MST"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->MST:Lcom/stripe/proto/model/common/TimeZone;

    .line 540
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x208

    const/16 v3, 0x20a

    const-string v4, "MST7MDT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->MST7MDT:Lcom/stripe/proto/model/common/TimeZone;

    .line 541
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x209

    const/16 v3, 0x20b

    const-string v4, "MEXICO__BAJANORTE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__BAJANORTE:Lcom/stripe/proto/model/common/TimeZone;

    .line 542
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20a

    const/16 v3, 0x20c

    const-string v4, "MEXICO__BAJASUR"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__BAJASUR:Lcom/stripe/proto/model/common/TimeZone;

    .line 543
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20b

    const/16 v3, 0x20d

    const-string v4, "MEXICO__GENERAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->MEXICO__GENERAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 544
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20c

    const/16 v3, 0x20e

    const-string v4, "NZ"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->NZ:Lcom/stripe/proto/model/common/TimeZone;

    .line 545
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20d

    const/16 v3, 0x20f

    const-string v4, "NZ_CHAT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->NZ_CHAT:Lcom/stripe/proto/model/common/TimeZone;

    .line 546
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20e

    const/16 v3, 0x210

    const-string v4, "NAVAJO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->NAVAJO:Lcom/stripe/proto/model/common/TimeZone;

    .line 547
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x20f

    const/16 v3, 0x211

    const-string v4, "PRC"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PRC:Lcom/stripe/proto/model/common/TimeZone;

    .line 548
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x210

    const/16 v3, 0x212

    const-string v4, "PST8PDT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PST8PDT:Lcom/stripe/proto/model/common/TimeZone;

    .line 549
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x211

    const/16 v3, 0x213

    const-string v4, "PACIFIC__APIA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__APIA:Lcom/stripe/proto/model/common/TimeZone;

    .line 550
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x212

    const/16 v3, 0x4f

    const-string v4, "PACIFIC__AUCKLAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__AUCKLAND:Lcom/stripe/proto/model/common/TimeZone;

    .line 551
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x213

    const/16 v3, 0x214

    const-string v4, "PACIFIC__BOUGAINVILLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__BOUGAINVILLE:Lcom/stripe/proto/model/common/TimeZone;

    .line 552
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x214

    const/16 v3, 0x215

    const-string v4, "PACIFIC__CHATHAM"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__CHATHAM:Lcom/stripe/proto/model/common/TimeZone;

    .line 553
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x215

    const/16 v3, 0x216

    const-string v4, "PACIFIC__CHUUK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__CHUUK:Lcom/stripe/proto/model/common/TimeZone;

    .line 554
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x216

    const/16 v3, 0x217

    const-string v4, "PACIFIC__EASTER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__EASTER:Lcom/stripe/proto/model/common/TimeZone;

    .line 555
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x217

    const/16 v3, 0x218

    const-string v4, "PACIFIC__EFATE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__EFATE:Lcom/stripe/proto/model/common/TimeZone;

    .line 556
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x218

    const/16 v3, 0x219

    const-string v4, "PACIFIC__ENDERBURY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__ENDERBURY:Lcom/stripe/proto/model/common/TimeZone;

    .line 557
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x219

    const/16 v3, 0x21a

    const-string v4, "PACIFIC__FAKAOFO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FAKAOFO:Lcom/stripe/proto/model/common/TimeZone;

    .line 558
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21a

    const/16 v3, 0x21b

    const-string v4, "PACIFIC__FIJI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FIJI:Lcom/stripe/proto/model/common/TimeZone;

    .line 559
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21b

    const/16 v3, 0x21c

    const-string v4, "PACIFIC__FUNAFUTI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__FUNAFUTI:Lcom/stripe/proto/model/common/TimeZone;

    .line 560
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21c

    const/16 v3, 0x21d

    const-string v4, "PACIFIC__GALAPAGOS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GALAPAGOS:Lcom/stripe/proto/model/common/TimeZone;

    .line 561
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21d

    const/16 v3, 0x21e

    const-string v4, "PACIFIC__GAMBIER"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GAMBIER:Lcom/stripe/proto/model/common/TimeZone;

    .line 562
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21e

    const/16 v3, 0x21f

    const-string v4, "PACIFIC__GUADALCANAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GUADALCANAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 563
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x21f

    const/16 v3, 0x220

    const-string v4, "PACIFIC__GUAM"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__GUAM:Lcom/stripe/proto/model/common/TimeZone;

    .line 564
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x220

    const/16 v3, 0x23

    const-string v4, "PACIFIC__HONOLULU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__HONOLULU:Lcom/stripe/proto/model/common/TimeZone;

    .line 565
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x221

    const/16 v3, 0x221

    const-string v4, "PACIFIC__JOHNSTON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__JOHNSTON:Lcom/stripe/proto/model/common/TimeZone;

    .line 566
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x222

    const/16 v3, 0x256

    const-string v4, "PACIFIC__KANTON"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KANTON:Lcom/stripe/proto/model/common/TimeZone;

    .line 567
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x223

    const/16 v3, 0x222

    const-string v4, "PACIFIC__KIRITIMATI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KIRITIMATI:Lcom/stripe/proto/model/common/TimeZone;

    .line 568
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x224

    const/16 v3, 0x223

    const-string v4, "PACIFIC__KOSRAE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KOSRAE:Lcom/stripe/proto/model/common/TimeZone;

    .line 569
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x225

    const/16 v3, 0x224

    const-string v4, "PACIFIC__KWAJALEIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__KWAJALEIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 570
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x226

    const/16 v3, 0x225

    const-string v4, "PACIFIC__MAJURO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MAJURO:Lcom/stripe/proto/model/common/TimeZone;

    .line 571
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x227

    const/16 v3, 0x226

    const-string v4, "PACIFIC__MARQUESAS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MARQUESAS:Lcom/stripe/proto/model/common/TimeZone;

    .line 572
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x228

    const/16 v3, 0x227

    const-string v4, "PACIFIC__MIDWAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__MIDWAY:Lcom/stripe/proto/model/common/TimeZone;

    .line 573
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x229

    const/16 v3, 0x228

    const-string v4, "PACIFIC__NAURU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NAURU:Lcom/stripe/proto/model/common/TimeZone;

    .line 574
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22a

    const/16 v3, 0x229

    const-string v4, "PACIFIC__NIUE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NIUE:Lcom/stripe/proto/model/common/TimeZone;

    .line 575
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22b

    const/16 v3, 0x22a

    const-string v4, "PACIFIC__NORFOLK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NORFOLK:Lcom/stripe/proto/model/common/TimeZone;

    .line 576
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22c

    const/16 v3, 0x22b

    const-string v4, "PACIFIC__NOUMEA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__NOUMEA:Lcom/stripe/proto/model/common/TimeZone;

    .line 577
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22d

    const/16 v3, 0x22c

    const-string v4, "PACIFIC__PAGO_PAGO"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PAGO_PAGO:Lcom/stripe/proto/model/common/TimeZone;

    .line 578
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22e

    const/16 v3, 0x22d

    const-string v4, "PACIFIC__PALAU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PALAU:Lcom/stripe/proto/model/common/TimeZone;

    .line 579
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x22f

    const/16 v3, 0x22e

    const-string v4, "PACIFIC__PITCAIRN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PITCAIRN:Lcom/stripe/proto/model/common/TimeZone;

    .line 580
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x230

    const/16 v3, 0x22f

    const-string v4, "PACIFIC__POHNPEI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__POHNPEI:Lcom/stripe/proto/model/common/TimeZone;

    .line 581
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x231

    const/16 v3, 0x230

    const-string v4, "PACIFIC__PONAPE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PONAPE:Lcom/stripe/proto/model/common/TimeZone;

    .line 582
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x232

    const/16 v3, 0x231

    const-string v4, "PACIFIC__PORT_MORESBY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__PORT_MORESBY:Lcom/stripe/proto/model/common/TimeZone;

    .line 583
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x233

    const/16 v3, 0x232

    const-string v4, "PACIFIC__RAROTONGA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__RAROTONGA:Lcom/stripe/proto/model/common/TimeZone;

    .line 584
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x234

    const/16 v3, 0x233

    const-string v4, "PACIFIC__SAIPAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__SAIPAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 585
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x235

    const/16 v3, 0x234

    const-string v4, "PACIFIC__SAMOA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

    .line 586
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x236

    const/16 v3, 0x235

    const-string v4, "PACIFIC__TAHITI"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TAHITI:Lcom/stripe/proto/model/common/TimeZone;

    .line 587
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x237

    const/16 v3, 0x236

    const-string v4, "PACIFIC__TARAWA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TARAWA:Lcom/stripe/proto/model/common/TimeZone;

    .line 588
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x238

    const/16 v3, 0x237

    const-string v4, "PACIFIC__TONGATAPU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TONGATAPU:Lcom/stripe/proto/model/common/TimeZone;

    .line 589
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x239

    const/16 v3, 0x238

    const-string v4, "PACIFIC__TRUK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__TRUK:Lcom/stripe/proto/model/common/TimeZone;

    .line 590
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23a

    const/16 v3, 0x239

    const-string v4, "PACIFIC__WAKE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__WAKE:Lcom/stripe/proto/model/common/TimeZone;

    .line 591
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23b

    const/16 v3, 0x23a

    const-string v4, "PACIFIC__WALLIS"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__WALLIS:Lcom/stripe/proto/model/common/TimeZone;

    .line 592
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23c

    const/16 v3, 0x23b

    const-string v4, "PACIFIC__YAP"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PACIFIC__YAP:Lcom/stripe/proto/model/common/TimeZone;

    .line 593
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23d

    const/16 v3, 0x23c

    const-string v4, "POLAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->POLAND:Lcom/stripe/proto/model/common/TimeZone;

    .line 594
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23e

    const/16 v3, 0x23d

    const-string v4, "PORTUGAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->PORTUGAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 595
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x23f

    const/16 v3, 0x23e

    const-string v4, "ROC"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ROC:Lcom/stripe/proto/model/common/TimeZone;

    .line 596
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x240

    const/16 v3, 0x23f

    const-string v4, "ROK"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ROK:Lcom/stripe/proto/model/common/TimeZone;

    .line 597
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x241

    const/16 v3, 0x240

    const-string v4, "SINGAPORE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->SINGAPORE:Lcom/stripe/proto/model/common/TimeZone;

    .line 598
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x242

    const/16 v3, 0x241

    const-string v4, "TURKEY"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->TURKEY:Lcom/stripe/proto/model/common/TimeZone;

    .line 599
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x243

    const/16 v3, 0x242

    const-string v4, "UCT"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->UCT:Lcom/stripe/proto/model/common/TimeZone;

    .line 600
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x244

    const/16 v3, 0x243

    const-string v4, "US__ALASKA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__ALASKA:Lcom/stripe/proto/model/common/TimeZone;

    .line 601
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x245

    const/16 v3, 0x244

    const-string v4, "US__ALEUTIAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__ALEUTIAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 602
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x246

    const/16 v3, 0x245

    const-string v4, "US__ARIZONA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__ARIZONA:Lcom/stripe/proto/model/common/TimeZone;

    .line 603
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x247

    const/16 v3, 0x246

    const-string v4, "US__CENTRAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__CENTRAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 604
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x248

    const/16 v3, 0x247

    const-string v4, "US__EAST_INDIANA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__EAST_INDIANA:Lcom/stripe/proto/model/common/TimeZone;

    .line 605
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x249

    const/16 v3, 0x248

    const-string v4, "US__EASTERN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__EASTERN:Lcom/stripe/proto/model/common/TimeZone;

    .line 606
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24a

    const/16 v3, 0x249

    const-string v4, "US__HAWAII"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__HAWAII:Lcom/stripe/proto/model/common/TimeZone;

    .line 607
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24b

    const/16 v3, 0x24a

    const-string v4, "US__INDIANA_STARKE"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__INDIANA_STARKE:Lcom/stripe/proto/model/common/TimeZone;

    .line 608
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24c

    const/16 v3, 0x24b

    const-string v4, "US__MICHIGAN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__MICHIGAN:Lcom/stripe/proto/model/common/TimeZone;

    .line 609
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24d

    const/16 v3, 0x24c

    const-string v4, "US__MOUNTAIN"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__MOUNTAIN:Lcom/stripe/proto/model/common/TimeZone;

    .line 610
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24e

    const/16 v3, 0x24d

    const-string v4, "US__PACIFIC"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__PACIFIC:Lcom/stripe/proto/model/common/TimeZone;

    .line 611
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x24f

    const/16 v3, 0x24e

    const-string v4, "US__PACIFIC_NEW"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__PACIFIC_NEW:Lcom/stripe/proto/model/common/TimeZone;

    .line 613
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x250

    const/16 v3, 0x24f

    const-string v4, "US__SAMOA"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->US__SAMOA:Lcom/stripe/proto/model/common/TimeZone;

    .line 614
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const-string v2, "UTC"

    const/16 v3, 0x251

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->UTC:Lcom/stripe/proto/model/common/TimeZone;

    .line 615
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x252

    const/16 v3, 0x250

    const-string v4, "UNIVERSAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->UNIVERSAL:Lcom/stripe/proto/model/common/TimeZone;

    .line 616
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x253

    const/16 v3, 0x251

    const-string v4, "W_SU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->W_SU:Lcom/stripe/proto/model/common/TimeZone;

    .line 617
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x254

    const/16 v3, 0x252

    const-string v4, "WET"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->WET:Lcom/stripe/proto/model/common/TimeZone;

    .line 618
    new-instance v1, Lcom/stripe/proto/model/common/TimeZone;

    const/16 v2, 0x255

    const/16 v3, 0x253

    const-string v4, "ZULU"

    invoke-direct {v1, v4, v2, v3}, Lcom/stripe/proto/model/common/TimeZone;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->ZULU:Lcom/stripe/proto/model/common/TimeZone;

    invoke-static {}, Lcom/stripe/proto/model/common/TimeZone;->$values()[Lcom/stripe/proto/model/common/TimeZone;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->$VALUES:[Lcom/stripe/proto/model/common/TimeZone;

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v1

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v1, Lcom/stripe/proto/model/common/TimeZone$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/proto/model/common/TimeZone$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/proto/model/common/TimeZone;->Companion:Lcom/stripe/proto/model/common/TimeZone$Companion;

    .line 623
    const-class v1, Lcom/stripe/proto/model/common/TimeZone;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 625
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 623
    new-instance v3, Lcom/stripe/proto/model/common/TimeZone$Companion$ADAPTER$1;

    invoke-direct {v3, v1, v2, v0}, Lcom/stripe/proto/model/common/TimeZone$Companion$ADAPTER$1;-><init>(Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;Lcom/stripe/proto/model/common/TimeZone;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/TimeZone;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/stripe/proto/model/common/TimeZone;->value:I

    return-void
.end method

.method public static final fromValue(I)Lcom/stripe/proto/model/common/TimeZone;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->Companion:Lcom/stripe/proto/model/common/TimeZone$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/proto/model/common/TimeZone$Companion;->fromValue(I)Lcom/stripe/proto/model/common/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/proto/model/common/TimeZone;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/proto/model/common/TimeZone;
    .locals 1

    const-class v0, Lcom/stripe/proto/model/common/TimeZone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/model/common/TimeZone;

    return-object p0
.end method

.method public static values()[Lcom/stripe/proto/model/common/TimeZone;
    .locals 1

    sget-object v0, Lcom/stripe/proto/model/common/TimeZone;->$VALUES:[Lcom/stripe/proto/model/common/TimeZone;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/proto/model/common/TimeZone;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/stripe/proto/model/common/TimeZone;->value:I

    return v0
.end method
