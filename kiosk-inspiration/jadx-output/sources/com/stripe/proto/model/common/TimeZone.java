package com.stripe.proto.model.common;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.sun.jna.Function;
import com.sun.jna.platform.linux.XAttr;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinNT;
import com.sun.jna.platform.win32.WinUser;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.apache.http.HttpStatus;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: TimeZone.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0003\bÛ\u0004\b\u0086\u0081\u0002\u0018\u0000 Þ\u00042\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0002Þ\u0004B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bOj\u0002\bPj\u0002\bQj\u0002\bRj\u0002\bSj\u0002\bTj\u0002\bUj\u0002\bVj\u0002\bWj\u0002\bXj\u0002\bYj\u0002\bZj\u0002\b[j\u0002\b\\j\u0002\b]j\u0002\b^j\u0002\b_j\u0002\b`j\u0002\baj\u0002\bbj\u0002\bcj\u0002\bdj\u0002\bej\u0002\bfj\u0002\bgj\u0002\bhj\u0002\bij\u0002\bjj\u0002\bkj\u0002\blj\u0002\bmj\u0002\bnj\u0002\boj\u0002\bpj\u0002\bqj\u0002\brj\u0002\bsj\u0002\btj\u0002\buj\u0002\bvj\u0002\bwj\u0002\bxj\u0002\byj\u0002\bzj\u0002\b{j\u0002\b|j\u0002\b}j\u0002\b~j\u0002\b\u007fj\u0003\b\u0080\u0001j\u0003\b\u0081\u0001j\u0003\b\u0082\u0001j\u0003\b\u0083\u0001j\u0003\b\u0084\u0001j\u0003\b\u0085\u0001j\u0003\b\u0086\u0001j\u0003\b\u0087\u0001j\u0003\b\u0088\u0001j\u0003\b\u0089\u0001j\u0003\b\u008a\u0001j\u0003\b\u008b\u0001j\u0003\b\u008c\u0001j\u0003\b\u008d\u0001j\u0003\b\u008e\u0001j\u0003\b\u008f\u0001j\u0003\b\u0090\u0001j\u0003\b\u0091\u0001j\u0003\b\u0092\u0001j\u0003\b\u0093\u0001j\u0003\b\u0094\u0001j\u0003\b\u0095\u0001j\u0003\b\u0096\u0001j\u0003\b\u0097\u0001j\u0003\b\u0098\u0001j\u0003\b\u0099\u0001j\u0003\b\u009a\u0001j\u0003\b\u009b\u0001j\u0003\b\u009c\u0001j\u0003\b\u009d\u0001j\u0003\b\u009e\u0001j\u0003\b\u009f\u0001j\u0003\b \u0001j\u0003\b¡\u0001j\u0003\b¢\u0001j\u0003\b£\u0001j\u0003\b¤\u0001j\u0003\b¥\u0001j\u0003\b¦\u0001j\u0003\b§\u0001j\u0003\b¨\u0001j\u0003\b©\u0001j\u0003\bª\u0001j\u0003\b«\u0001j\u0003\b¬\u0001j\u0003\b\u00ad\u0001j\u0003\b®\u0001j\u0003\b¯\u0001j\u0003\b°\u0001j\u0003\b±\u0001j\u0003\b²\u0001j\u0003\b³\u0001j\u0003\b´\u0001j\u0003\bµ\u0001j\u0003\b¶\u0001j\u0003\b·\u0001j\u0003\b¸\u0001j\u0003\b¹\u0001j\u0003\bº\u0001j\u0003\b»\u0001j\u0003\b¼\u0001j\u0003\b½\u0001j\u0003\b¾\u0001j\u0003\b¿\u0001j\u0003\bÀ\u0001j\u0003\bÁ\u0001j\u0003\bÂ\u0001j\u0003\bÃ\u0001j\u0003\bÄ\u0001j\u0003\bÅ\u0001j\u0003\bÆ\u0001j\u0003\bÇ\u0001j\u0003\bÈ\u0001j\u0003\bÉ\u0001j\u0003\bÊ\u0001j\u0003\bË\u0001j\u0003\bÌ\u0001j\u0003\bÍ\u0001j\u0003\bÎ\u0001j\u0003\bÏ\u0001j\u0003\bÐ\u0001j\u0003\bÑ\u0001j\u0003\bÒ\u0001j\u0003\bÓ\u0001j\u0003\bÔ\u0001j\u0003\bÕ\u0001j\u0003\bÖ\u0001j\u0003\b×\u0001j\u0003\bØ\u0001j\u0003\bÙ\u0001j\u0003\bÚ\u0001j\u0003\bÛ\u0001j\u0003\bÜ\u0001j\u0003\bÝ\u0001j\u0003\bÞ\u0001j\u0003\bß\u0001j\u0003\bà\u0001j\u0003\bá\u0001j\u0003\bâ\u0001j\u0003\bã\u0001j\u0003\bä\u0001j\u0003\bå\u0001j\u0003\bæ\u0001j\u0003\bç\u0001j\u0003\bè\u0001j\u0003\bé\u0001j\u0003\bê\u0001j\u0003\bë\u0001j\u0003\bì\u0001j\u0003\bí\u0001j\u0003\bî\u0001j\u0003\bï\u0001j\u0003\bð\u0001j\u0003\bñ\u0001j\u0003\bò\u0001j\u0003\bó\u0001j\u0003\bô\u0001j\u0003\bõ\u0001j\u0003\bö\u0001j\u0003\b÷\u0001j\u0003\bø\u0001j\u0003\bù\u0001j\u0003\bú\u0001j\u0003\bû\u0001j\u0003\bü\u0001j\u0003\bý\u0001j\u0003\bþ\u0001j\u0003\bÿ\u0001j\u0003\b\u0080\u0002j\u0003\b\u0081\u0002j\u0003\b\u0082\u0002j\u0003\b\u0083\u0002j\u0003\b\u0084\u0002j\u0003\b\u0085\u0002j\u0003\b\u0086\u0002j\u0003\b\u0087\u0002j\u0003\b\u0088\u0002j\u0003\b\u0089\u0002j\u0003\b\u008a\u0002j\u0003\b\u008b\u0002j\u0003\b\u008c\u0002j\u0003\b\u008d\u0002j\u0003\b\u008e\u0002j\u0003\b\u008f\u0002j\u0003\b\u0090\u0002j\u0003\b\u0091\u0002j\u0003\b\u0092\u0002j\u0003\b\u0093\u0002j\u0003\b\u0094\u0002j\u0003\b\u0095\u0002j\u0003\b\u0096\u0002j\u0003\b\u0097\u0002j\u0003\b\u0098\u0002j\u0003\b\u0099\u0002j\u0003\b\u009a\u0002j\u0003\b\u009b\u0002j\u0003\b\u009c\u0002j\u0003\b\u009d\u0002j\u0003\b\u009e\u0002j\u0003\b\u009f\u0002j\u0003\b \u0002j\u0003\b¡\u0002j\u0003\b¢\u0002j\u0003\b£\u0002j\u0003\b¤\u0002j\u0003\b¥\u0002j\u0003\b¦\u0002j\u0003\b§\u0002j\u0003\b¨\u0002j\u0003\b©\u0002j\u0003\bª\u0002j\u0003\b«\u0002j\u0003\b¬\u0002j\u0003\b\u00ad\u0002j\u0003\b®\u0002j\u0003\b¯\u0002j\u0003\b°\u0002j\u0003\b±\u0002j\u0003\b²\u0002j\u0003\b³\u0002j\u0003\b´\u0002j\u0003\bµ\u0002j\u0003\b¶\u0002j\u0003\b·\u0002j\u0003\b¸\u0002j\u0003\b¹\u0002j\u0003\bº\u0002j\u0003\b»\u0002j\u0003\b¼\u0002j\u0003\b½\u0002j\u0003\b¾\u0002j\u0003\b¿\u0002j\u0003\bÀ\u0002j\u0003\bÁ\u0002j\u0003\bÂ\u0002j\u0003\bÃ\u0002j\u0003\bÄ\u0002j\u0003\bÅ\u0002j\u0003\bÆ\u0002j\u0003\bÇ\u0002j\u0003\bÈ\u0002j\u0003\bÉ\u0002j\u0003\bÊ\u0002j\u0003\bË\u0002j\u0003\bÌ\u0002j\u0003\bÍ\u0002j\u0003\bÎ\u0002j\u0003\bÏ\u0002j\u0003\bÐ\u0002j\u0003\bÑ\u0002j\u0003\bÒ\u0002j\u0003\bÓ\u0002j\u0003\bÔ\u0002j\u0003\bÕ\u0002j\u0003\bÖ\u0002j\u0003\b×\u0002j\u0003\bØ\u0002j\u0003\bÙ\u0002j\u0003\bÚ\u0002j\u0003\bÛ\u0002j\u0003\bÜ\u0002j\u0003\bÝ\u0002j\u0003\bÞ\u0002j\u0003\bß\u0002j\u0003\bà\u0002j\u0003\bá\u0002j\u0003\bâ\u0002j\u0003\bã\u0002j\u0003\bä\u0002j\u0003\bå\u0002j\u0003\bæ\u0002j\u0003\bç\u0002j\u0003\bè\u0002j\u0003\bé\u0002j\u0003\bê\u0002j\u0003\bë\u0002j\u0003\bì\u0002j\u0003\bí\u0002j\u0003\bî\u0002j\u0003\bï\u0002j\u0003\bð\u0002j\u0003\bñ\u0002j\u0003\bò\u0002j\u0003\bó\u0002j\u0003\bô\u0002j\u0003\bõ\u0002j\u0003\bö\u0002j\u0003\b÷\u0002j\u0003\bø\u0002j\u0003\bù\u0002j\u0003\bú\u0002j\u0003\bû\u0002j\u0003\bü\u0002j\u0003\bý\u0002j\u0003\bþ\u0002j\u0003\bÿ\u0002j\u0003\b\u0080\u0003j\u0003\b\u0081\u0003j\u0003\b\u0082\u0003j\u0003\b\u0083\u0003j\u0003\b\u0084\u0003j\u0003\b\u0085\u0003j\u0003\b\u0086\u0003j\u0003\b\u0087\u0003j\u0003\b\u0088\u0003j\u0003\b\u0089\u0003j\u0003\b\u008a\u0003j\u0003\b\u008b\u0003j\u0003\b\u008c\u0003j\u0003\b\u008d\u0003j\u0003\b\u008e\u0003j\u0003\b\u008f\u0003j\u0003\b\u0090\u0003j\u0003\b\u0091\u0003j\u0003\b\u0092\u0003j\u0003\b\u0093\u0003j\u0003\b\u0094\u0003j\u0003\b\u0095\u0003j\u0003\b\u0096\u0003j\u0003\b\u0097\u0003j\u0003\b\u0098\u0003j\u0003\b\u0099\u0003j\u0003\b\u009a\u0003j\u0003\b\u009b\u0003j\u0003\b\u009c\u0003j\u0003\b\u009d\u0003j\u0003\b\u009e\u0003j\u0003\b\u009f\u0003j\u0003\b \u0003j\u0003\b¡\u0003j\u0003\b¢\u0003j\u0003\b£\u0003j\u0003\b¤\u0003j\u0003\b¥\u0003j\u0003\b¦\u0003j\u0003\b§\u0003j\u0003\b¨\u0003j\u0003\b©\u0003j\u0003\bª\u0003j\u0003\b«\u0003j\u0003\b¬\u0003j\u0003\b\u00ad\u0003j\u0003\b®\u0003j\u0003\b¯\u0003j\u0003\b°\u0003j\u0003\b±\u0003j\u0003\b²\u0003j\u0003\b³\u0003j\u0003\b´\u0003j\u0003\bµ\u0003j\u0003\b¶\u0003j\u0003\b·\u0003j\u0003\b¸\u0003j\u0003\b¹\u0003j\u0003\bº\u0003j\u0003\b»\u0003j\u0003\b¼\u0003j\u0003\b½\u0003j\u0003\b¾\u0003j\u0003\b¿\u0003j\u0003\bÀ\u0003j\u0003\bÁ\u0003j\u0003\bÂ\u0003j\u0003\bÃ\u0003j\u0003\bÄ\u0003j\u0003\bÅ\u0003j\u0003\bÆ\u0003j\u0003\bÇ\u0003j\u0003\bÈ\u0003j\u0003\bÉ\u0003j\u0003\bÊ\u0003j\u0003\bË\u0003j\u0003\bÌ\u0003j\u0003\bÍ\u0003j\u0003\bÎ\u0003j\u0003\bÏ\u0003j\u0003\bÐ\u0003j\u0003\bÑ\u0003j\u0003\bÒ\u0003j\u0003\bÓ\u0003j\u0003\bÔ\u0003j\u0003\bÕ\u0003j\u0003\bÖ\u0003j\u0003\b×\u0003j\u0003\bØ\u0003j\u0003\bÙ\u0003j\u0003\bÚ\u0003j\u0003\bÛ\u0003j\u0003\bÜ\u0003j\u0003\bÝ\u0003j\u0003\bÞ\u0003j\u0003\bß\u0003j\u0003\bà\u0003j\u0003\bá\u0003j\u0003\bâ\u0003j\u0003\bã\u0003j\u0003\bä\u0003j\u0003\bå\u0003j\u0003\bæ\u0003j\u0003\bç\u0003j\u0003\bè\u0003j\u0003\bé\u0003j\u0003\bê\u0003j\u0003\bë\u0003j\u0003\bì\u0003j\u0003\bí\u0003j\u0003\bî\u0003j\u0003\bï\u0003j\u0003\bð\u0003j\u0003\bñ\u0003j\u0003\bò\u0003j\u0003\bó\u0003j\u0003\bô\u0003j\u0003\bõ\u0003j\u0003\bö\u0003j\u0003\b÷\u0003j\u0003\bø\u0003j\u0003\bù\u0003j\u0003\bú\u0003j\u0003\bû\u0003j\u0003\bü\u0003j\u0003\bý\u0003j\u0003\bþ\u0003j\u0003\bÿ\u0003j\u0003\b\u0080\u0004j\u0003\b\u0081\u0004j\u0003\b\u0082\u0004j\u0003\b\u0083\u0004j\u0003\b\u0084\u0004j\u0003\b\u0085\u0004j\u0003\b\u0086\u0004j\u0003\b\u0087\u0004j\u0003\b\u0088\u0004j\u0003\b\u0089\u0004j\u0003\b\u008a\u0004j\u0003\b\u008b\u0004j\u0003\b\u008c\u0004j\u0003\b\u008d\u0004j\u0003\b\u008e\u0004j\u0003\b\u008f\u0004j\u0003\b\u0090\u0004j\u0003\b\u0091\u0004j\u0003\b\u0092\u0004j\u0003\b\u0093\u0004j\u0003\b\u0094\u0004j\u0003\b\u0095\u0004j\u0003\b\u0096\u0004j\u0003\b\u0097\u0004j\u0003\b\u0098\u0004j\u0003\b\u0099\u0004j\u0003\b\u009a\u0004j\u0003\b\u009b\u0004j\u0003\b\u009c\u0004j\u0003\b\u009d\u0004j\u0003\b\u009e\u0004j\u0003\b\u009f\u0004j\u0003\b \u0004j\u0003\b¡\u0004j\u0003\b¢\u0004j\u0003\b£\u0004j\u0003\b¤\u0004j\u0003\b¥\u0004j\u0003\b¦\u0004j\u0003\b§\u0004j\u0003\b¨\u0004j\u0003\b©\u0004j\u0003\bª\u0004j\u0003\b«\u0004j\u0003\b¬\u0004j\u0003\b\u00ad\u0004j\u0003\b®\u0004j\u0003\b¯\u0004j\u0003\b°\u0004j\u0003\b±\u0004j\u0003\b²\u0004j\u0003\b³\u0004j\u0003\b´\u0004j\u0003\bµ\u0004j\u0003\b¶\u0004j\u0003\b·\u0004j\u0003\b¸\u0004j\u0003\b¹\u0004j\u0003\bº\u0004j\u0003\b»\u0004j\u0003\b¼\u0004j\u0003\b½\u0004j\u0003\b¾\u0004j\u0003\b¿\u0004j\u0003\bÀ\u0004j\u0003\bÁ\u0004j\u0003\bÂ\u0004j\u0003\bÃ\u0004j\u0003\bÄ\u0004j\u0003\bÅ\u0004j\u0003\bÆ\u0004j\u0003\bÇ\u0004j\u0003\bÈ\u0004j\u0003\bÉ\u0004j\u0003\bÊ\u0004j\u0003\bË\u0004j\u0003\bÌ\u0004j\u0003\bÍ\u0004j\u0003\bÎ\u0004j\u0003\bÏ\u0004j\u0003\bÐ\u0004j\u0003\bÑ\u0004j\u0003\bÒ\u0004j\u0003\bÓ\u0004j\u0003\bÔ\u0004j\u0003\bÕ\u0004j\u0003\bÖ\u0004j\u0003\b×\u0004j\u0003\bØ\u0004j\u0003\bÙ\u0004j\u0003\bÚ\u0004j\u0003\bÛ\u0004j\u0003\bÜ\u0004j\u0003\bÝ\u0004¨\u0006ß\u0004"}, d2 = {"Lcom/stripe/proto/model/common/TimeZone;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "TIME_ZONE_INVALID", "AFRICA__ABIDJAN", "AFRICA__ACCRA", "AFRICA__ADDIS_ABABA", "AFRICA__ALGIERS", "AFRICA__ASMARA", "AFRICA__ASMERA", "AFRICA__BAMAKO", "AFRICA__BANGUI", "AFRICA__BANJUL", "AFRICA__BISSAU", "AFRICA__BLANTYRE", "AFRICA__BRAZZAVILLE", "AFRICA__BUJUMBURA", "AFRICA__CAIRO", "AFRICA__CASABLANCA", "AFRICA__CEUTA", "AFRICA__CONAKRY", "AFRICA__DAKAR", "AFRICA__DAR_ES_SALAAM", "AFRICA__DJIBOUTI", "AFRICA__DOUALA", "AFRICA__EL_AAIUN", "AFRICA__FREETOWN", "AFRICA__GABORONE", "AFRICA__HARARE", "AFRICA__JOHANNESBURG", "AFRICA__JUBA", "AFRICA__KAMPALA", "AFRICA__KHARTOUM", "AFRICA__KIGALI", "AFRICA__KINSHASA", "AFRICA__LAGOS", "AFRICA__LIBREVILLE", "AFRICA__LOME", "AFRICA__LUANDA", "AFRICA__LUBUMBASHI", "AFRICA__LUSAKA", "AFRICA__MALABO", "AFRICA__MAPUTO", "AFRICA__MASERU", "AFRICA__MBABANE", "AFRICA__MOGADISHU", "AFRICA__MONROVIA", "AFRICA__NAIROBI", "AFRICA__NDJAMENA", "AFRICA__NIAMEY", "AFRICA__NOUAKCHOTT", "AFRICA__OUAGADOUGOU", "AFRICA__PORTO_NOVO", "AFRICA__SAO_TOME", "AFRICA__TIMBUKTU", "AFRICA__TRIPOLI", "AFRICA__TUNIS", "AFRICA__WINDHOEK", "AMERICA__ADAK", "AMERICA__ANCHORAGE", "AMERICA__ANGUILLA", "AMERICA__ANTIGUA", "AMERICA__ARAGUAINA", "AMERICA__ARGENTINA__BUENOS_AIRES", "AMERICA__ARGENTINA__CATAMARCA", "AMERICA__ARGENTINA__COMODRIVADAVIA", "AMERICA__ARGENTINA__CORDOBA", "AMERICA__ARGENTINA__JUJUY", "AMERICA__ARGENTINA__LA_RIOJA", "AMERICA__ARGENTINA__MENDOZA", "AMERICA__ARGENTINA__RIO_GALLEGOS", "AMERICA__ARGENTINA__SALTA", "AMERICA__ARGENTINA__SAN_JUAN", "AMERICA__ARGENTINA__SAN_LUIS", "AMERICA__ARGENTINA__TUCUMAN", "AMERICA__ARGENTINA__USHUAIA", "AMERICA__ARUBA", "AMERICA__ASUNCION", "AMERICA__ATIKOKAN", "AMERICA__ATKA", "AMERICA__BAHIA", "AMERICA__BAHIA_BANDERAS", "AMERICA__BARBADOS", "AMERICA__BELEM", "AMERICA__BELIZE", "AMERICA__BLANC_SABLON", "AMERICA__BOA_VISTA", "AMERICA__BOGOTA", "AMERICA__BOISE", "AMERICA__BUENOS_AIRES", "AMERICA__CAMBRIDGE_BAY", "AMERICA__CAMPO_GRANDE", "AMERICA__CANCUN", "AMERICA__CARACAS", "AMERICA__CATAMARCA", "AMERICA__CAYENNE", "AMERICA__CAYMAN", "AMERICA__CHICAGO", "AMERICA__CHIHUAHUA", "AMERICA__CIUDAD_JUAREZ", "AMERICA__CORAL_HARBOUR", "AMERICA__CORDOBA", "AMERICA__COSTA_RICA", "AMERICA__CRESTON", "AMERICA__CUIABA", "AMERICA__CURACAO", "AMERICA__DANMARKSHAVN", "AMERICA__DAWSON", "AMERICA__DAWSON_CREEK", "AMERICA__DENVER", "AMERICA__DETROIT", "AMERICA__DOMINICA", "AMERICA__EDMONTON", "AMERICA__EIRUNEPE", "AMERICA__EL_SALVADOR", "AMERICA__ENSENADA", "AMERICA__FORT_NELSON", "AMERICA__FORT_WAYNE", "AMERICA__FORTALEZA", "AMERICA__GLACE_BAY", "AMERICA__GODTHAB", "AMERICA__GOOSE_BAY", "AMERICA__GRAND_TURK", "AMERICA__GRENADA", "AMERICA__GUADELOUPE", "AMERICA__GUATEMALA", "AMERICA__GUAYAQUIL", "AMERICA__GUYANA", "AMERICA__HALIFAX", "AMERICA__HAVANA", "AMERICA__HERMOSILLO", "AMERICA__INDIANA__INDIANAPOLIS", "AMERICA__INDIANA__KNOX", "AMERICA__INDIANA__MARENGO", "AMERICA__INDIANA__PETERSBURG", "AMERICA__INDIANA__TELL_CITY", "AMERICA__INDIANA__VEVAY", "AMERICA__INDIANA__VINCENNES", "AMERICA__INDIANA__WINAMAC", "AMERICA__INDIANAPOLIS", "AMERICA__INUVIK", "AMERICA__IQALUIT", "AMERICA__JAMAICA", "AMERICA__JUJUY", "AMERICA__JUNEAU", "AMERICA__KENTUCKY__LOUISVILLE", "AMERICA__KENTUCKY__MONTICELLO", "AMERICA__KNOX_IN", "AMERICA__KRALENDIJK", "AMERICA__LA_PAZ", "AMERICA__LIMA", "AMERICA__LOS_ANGELES", "AMERICA__LOUISVILLE", "AMERICA__LOWER_PRINCES", "AMERICA__MACEIO", "AMERICA__MANAGUA", "AMERICA__MANAUS", "AMERICA__MARIGOT", "AMERICA__MARTINIQUE", "AMERICA__MATAMOROS", "AMERICA__MAZATLAN", "AMERICA__MENDOZA", "AMERICA__MENOMINEE", "AMERICA__MERIDA", "AMERICA__METLAKATLA", "AMERICA__MEXICO_CITY", "AMERICA__MIQUELON", "AMERICA__MONCTON", "AMERICA__MONTERREY", "AMERICA__MONTEVIDEO", "AMERICA__MONTREAL", "AMERICA__MONTSERRAT", "AMERICA__NASSAU", "AMERICA__NEW_YORK", "AMERICA__NIPIGON", "AMERICA__NOME", "AMERICA__NORONHA", "AMERICA__NORTH_DAKOTA__BEULAH", "AMERICA__NORTH_DAKOTA__CENTER", "AMERICA__NORTH_DAKOTA__NEW_SALEM", "AMERICA__NUUK", "AMERICA__OJINAGA", "AMERICA__PANAMA", "AMERICA__PANGNIRTUNG", "AMERICA__PARAMARIBO", "AMERICA__PHOENIX", "AMERICA__PORT_AU_PRINCE", "AMERICA__PORT_OF_SPAIN", "AMERICA__PORTO_ACRE", "AMERICA__PORTO_VELHO", "AMERICA__PUERTO_RICO", "AMERICA__PUNTA_ARENAS", "AMERICA__RAINY_RIVER", "AMERICA__RANKIN_INLET", "AMERICA__RECIFE", "AMERICA__REGINA", "AMERICA__RESOLUTE", "AMERICA__RIO_BRANCO", "AMERICA__ROSARIO", "AMERICA__SANTA_ISABEL", "AMERICA__SANTAREM", "AMERICA__SANTIAGO", "AMERICA__SANTO_DOMINGO", "AMERICA__SAO_PAULO", "AMERICA__SCORESBYSUND", "AMERICA__SHIPROCK", "AMERICA__SITKA", "AMERICA__ST_BARTHELEMY", "AMERICA__ST_JOHNS", "AMERICA__ST_KITTS", "AMERICA__ST_LUCIA", "AMERICA__ST_THOMAS", "AMERICA__ST_VINCENT", "AMERICA__SWIFT_CURRENT", "AMERICA__TEGUCIGALPA", "AMERICA__THULE", "AMERICA__THUNDER_BAY", "AMERICA__TIJUANA", "AMERICA__TORONTO", "AMERICA__TORTOLA", "AMERICA__VANCOUVER", "AMERICA__VIRGIN", "AMERICA__WHITEHORSE", "AMERICA__WINNIPEG", "AMERICA__YAKUTAT", "AMERICA__YELLOWKNIFE", "ANTARCTICA__CASEY", "ANTARCTICA__DAVIS", "ANTARCTICA__DUMONTDURVILLE", "ANTARCTICA__MACQUARIE", "ANTARCTICA__MAWSON", "ANTARCTICA__MCMURDO", "ANTARCTICA__PALMER", "ANTARCTICA__ROTHERA", "ANTARCTICA__SOUTH_POLE", "ANTARCTICA__SYOWA", "ANTARCTICA__TROLL", "ANTARCTICA__VOSTOK", "ARCTIC__LONGYEARBYEN", "ASIA__ADEN", "ASIA__ALMATY", "ASIA__AMMAN", "ASIA__ANADYR", "ASIA__AQTAU", "ASIA__AQTOBE", "ASIA__ASHGABAT", "ASIA__ASHKHABAD", "ASIA__ATYRAU", "ASIA__BAGHDAD", "ASIA__BAHRAIN", "ASIA__BAKU", "ASIA__BANGKOK", "ASIA__BARNAUL", "ASIA__BEIRUT", "ASIA__BISHKEK", "ASIA__BRUNEI", "ASIA__CALCUTTA", "ASIA__CHITA", "ASIA__CHOIBALSAN", "ASIA__CHONGQING", "ASIA__CHUNGKING", "ASIA__COLOMBO", "ASIA__DACCA", "ASIA__DAMASCUS", "ASIA__DHAKA", "ASIA__DILI", "ASIA__DUBAI", "ASIA__DUSHANBE", "ASIA__FAMAGUSTA", "ASIA__GAZA", "ASIA__HARBIN", "ASIA__HEBRON", "ASIA__HO_CHI_MINH", "ASIA__HONG_KONG", "ASIA__HOVD", "ASIA__IRKUTSK", "ASIA__ISTANBUL", "ASIA__JAKARTA", "ASIA__JAYAPURA", "ASIA__JERUSALEM", "ASIA__KABUL", "ASIA__KAMCHATKA", "ASIA__KARACHI", "ASIA__KASHGAR", "ASIA__KATHMANDU", "ASIA__KATMANDU", "ASIA__KHANDYGA", "ASIA__KOLKATA", "ASIA__KRASNOYARSK", "ASIA__KUALA_LUMPUR", "ASIA__KUCHING", "ASIA__KUWAIT", "ASIA__MACAO", "ASIA__MACAU", "ASIA__MAGADAN", "ASIA__MAKASSAR", "ASIA__MANILA", "ASIA__MUSCAT", "ASIA__NICOSIA", "ASIA__NOVOKUZNETSK", "ASIA__NOVOSIBIRSK", "ASIA__OMSK", "ASIA__ORAL", "ASIA__PHNOM_PENH", "ASIA__PONTIANAK", "ASIA__PYONGYANG", "ASIA__QATAR", "ASIA__QOSTANAY", "ASIA__QYZYLORDA", "ASIA__RANGOON", "ASIA__RIYADH", "ASIA__SAIGON", "ASIA__SAKHALIN", "ASIA__SAMARKAND", "ASIA__SEOUL", "ASIA__SHANGHAI", "ASIA__SINGAPORE", "ASIA__SREDNEKOLYMSK", "ASIA__TAIPEI", "ASIA__TASHKENT", "ASIA__TBILISI", "ASIA__TEHRAN", "ASIA__TEL_AVIV", "ASIA__THIMBU", "ASIA__THIMPHU", "ASIA__TOKYO", "ASIA__TOMSK", "ASIA__UJUNG_PANDANG", "ASIA__ULAANBAATAR", "ASIA__ULAN_BATOR", "ASIA__URUMQI", "ASIA__UST_NERA", "ASIA__VIENTIANE", "ASIA__VLADIVOSTOK", "ASIA__YAKUTSK", "ASIA__YANGON", "ASIA__YEKATERINBURG", "ASIA__YEREVAN", "ATLANTIC__AZORES", "ATLANTIC__BERMUDA", "ATLANTIC__CANARY", "ATLANTIC__CAPE_VERDE", "ATLANTIC__FAEROE", "ATLANTIC__FAROE", "ATLANTIC__JAN_MAYEN", "ATLANTIC__MADEIRA", "ATLANTIC__REYKJAVIK", "ATLANTIC__SOUTH_GEORGIA", "ATLANTIC__ST_HELENA", "ATLANTIC__STANLEY", "AUSTRALIA__ACT", "AUSTRALIA__ADELAIDE", "AUSTRALIA__BRISBANE", "AUSTRALIA__BROKEN_HILL", "AUSTRALIA__CANBERRA", "AUSTRALIA__CURRIE", "AUSTRALIA__DARWIN", "AUSTRALIA__EUCLA", "AUSTRALIA__HOBART", "AUSTRALIA__LHI", "AUSTRALIA__LINDEMAN", "AUSTRALIA__LORD_HOWE", "AUSTRALIA__MELBOURNE", "AUSTRALIA__NSW", "AUSTRALIA__NORTH", "AUSTRALIA__PERTH", "AUSTRALIA__QUEENSLAND", "AUSTRALIA__SOUTH", "AUSTRALIA__SYDNEY", "AUSTRALIA__TASMANIA", "AUSTRALIA__VICTORIA", "AUSTRALIA__WEST", "AUSTRALIA__YANCOWINNA", "BRAZIL__ACRE", "BRAZIL__DENORONHA", "BRAZIL__EAST", "BRAZIL__WEST", "CET", "CST6CDT", "CANADA__ATLANTIC", "CANADA__CENTRAL", "CANADA__EASTERN", "CANADA__MOUNTAIN", "CANADA__NEWFOUNDLAND", "CANADA__PACIFIC", "CANADA__SASKATCHEWAN", "CANADA__YUKON", "CHILE__CONTINENTAL", "CHILE__EASTERISLAND", "CUBA", "EET", "EST", "EST5EDT", "EGYPT", "EIRE", "ETC__GMT", "ETC__GMT_PLUS_0", "ETC__GMT_PLUS_1", "ETC__GMT_PLUS_10", "ETC__GMT_PLUS_11", "ETC__GMT_PLUS_12", "ETC__GMT_PLUS_2", "ETC__GMT_PLUS_3", "ETC__GMT_PLUS_4", "ETC__GMT_PLUS_5", "ETC__GMT_PLUS_6", "ETC__GMT_PLUS_7", "ETC__GMT_PLUS_8", "ETC__GMT_PLUS_9", "ETC__GMT_MINUS_0", "ETC__GMT_MINUS_1", "ETC__GMT_MINUS_10", "ETC__GMT_MINUS_11", "ETC__GMT_MINUS_12", "ETC__GMT_MINUS_13", "ETC__GMT_MINUS_14", "ETC__GMT_MINUS_2", "ETC__GMT_MINUS_3", "ETC__GMT_MINUS_4", "ETC__GMT_MINUS_5", "ETC__GMT_MINUS_6", "ETC__GMT_MINUS_7", "ETC__GMT_MINUS_8", "ETC__GMT_MINUS_9", "ETC__GMT0", "ETC__GREENWICH", "ETC__UCT", "ETC__UTC", "ETC__UNIVERSAL", "ETC__ZULU", "EUROPE__AMSTERDAM", "EUROPE__ANDORRA", "EUROPE__ASTRAKHAN", "EUROPE__ATHENS", "EUROPE__BELFAST", "EUROPE__BELGRADE", "EUROPE__BERLIN", "EUROPE__BRATISLAVA", "EUROPE__BRUSSELS", "EUROPE__BUCHAREST", "EUROPE__BUDAPEST", "EUROPE__BUSINGEN", "EUROPE__CHISINAU", "EUROPE__COPENHAGEN", "EUROPE__DUBLIN", "EUROPE__GIBRALTAR", "EUROPE__GUERNSEY", "EUROPE__HELSINKI", "EUROPE__ISLE_OF_MAN", "EUROPE__ISTANBUL", "EUROPE__JERSEY", "EUROPE__KALININGRAD", "EUROPE__KIEV", "EUROPE__KYIV", "EUROPE__KIROV", "EUROPE__LISBON", "EUROPE__LJUBLJANA", "EUROPE__LONDON", "EUROPE__LUXEMBOURG", "EUROPE__MADRID", "EUROPE__MALTA", "EUROPE__MARIEHAMN", "EUROPE__MINSK", "EUROPE__MONACO", "EUROPE__MOSCOW", "EUROPE__NICOSIA", "EUROPE__OSLO", "EUROPE__PARIS", "EUROPE__PODGORICA", "EUROPE__PRAGUE", "EUROPE__RIGA", "EUROPE__ROME", "EUROPE__SAMARA", "EUROPE__SAN_MARINO", "EUROPE__SARAJEVO", "EUROPE__SARATOV", "EUROPE__SIMFEROPOL", "EUROPE__SKOPJE", "EUROPE__SOFIA", "EUROPE__STOCKHOLM", "EUROPE__TALLINN", "EUROPE__TIRANE", "EUROPE__TIRASPOL", "EUROPE__ULYANOVSK", "EUROPE__UZHGOROD", "EUROPE__VADUZ", "EUROPE__VATICAN", "EUROPE__VIENNA", "EUROPE__VILNIUS", "EUROPE__VOLGOGRAD", "EUROPE__WARSAW", "EUROPE__ZAGREB", "EUROPE__ZAPOROZHYE", "EUROPE__ZURICH", "GB", "GB_EIRE", "GMT", "GMT_PLUS_0", "GMT_MINUS_0", "GMT0", "GREENWICH", "HST", "HONGKONG", "ICELAND", "INDIAN__ANTANANARIVO", "INDIAN__CHAGOS", "INDIAN__CHRISTMAS", "INDIAN__COCOS", "INDIAN__COMORO", "INDIAN__KERGUELEN", "INDIAN__MAHE", "INDIAN__MALDIVES", "INDIAN__MAURITIUS", "INDIAN__MAYOTTE", "INDIAN__REUNION", "IRAN", "ISRAEL", "JAMAICA", "JAPAN", "KWAJALEIN", "LIBYA", "MET", "MST", "MST7MDT", "MEXICO__BAJANORTE", "MEXICO__BAJASUR", "MEXICO__GENERAL", "NZ", "NZ_CHAT", "NAVAJO", "PRC", "PST8PDT", "PACIFIC__APIA", "PACIFIC__AUCKLAND", "PACIFIC__BOUGAINVILLE", "PACIFIC__CHATHAM", "PACIFIC__CHUUK", "PACIFIC__EASTER", "PACIFIC__EFATE", "PACIFIC__ENDERBURY", "PACIFIC__FAKAOFO", "PACIFIC__FIJI", "PACIFIC__FUNAFUTI", "PACIFIC__GALAPAGOS", "PACIFIC__GAMBIER", "PACIFIC__GUADALCANAL", "PACIFIC__GUAM", "PACIFIC__HONOLULU", "PACIFIC__JOHNSTON", "PACIFIC__KANTON", "PACIFIC__KIRITIMATI", "PACIFIC__KOSRAE", "PACIFIC__KWAJALEIN", "PACIFIC__MAJURO", "PACIFIC__MARQUESAS", "PACIFIC__MIDWAY", "PACIFIC__NAURU", "PACIFIC__NIUE", "PACIFIC__NORFOLK", "PACIFIC__NOUMEA", "PACIFIC__PAGO_PAGO", "PACIFIC__PALAU", "PACIFIC__PITCAIRN", "PACIFIC__POHNPEI", "PACIFIC__PONAPE", "PACIFIC__PORT_MORESBY", "PACIFIC__RAROTONGA", "PACIFIC__SAIPAN", "PACIFIC__SAMOA", "PACIFIC__TAHITI", "PACIFIC__TARAWA", "PACIFIC__TONGATAPU", "PACIFIC__TRUK", "PACIFIC__WAKE", "PACIFIC__WALLIS", "PACIFIC__YAP", "POLAND", "PORTUGAL", "ROC", "ROK", "SINGAPORE", "TURKEY", "UCT", "US__ALASKA", "US__ALEUTIAN", "US__ARIZONA", "US__CENTRAL", "US__EAST_INDIANA", "US__EASTERN", "US__HAWAII", "US__INDIANA_STARKE", "US__MICHIGAN", "US__MOUNTAIN", "US__PACIFIC", "US__PACIFIC_NEW", "US__SAMOA", "UTC", "UNIVERSAL", "W_SU", "WET", "ZULU", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TimeZone implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TimeZone[] $VALUES;
    public static final ProtoAdapter<TimeZone> ADAPTER;
    public static final TimeZone AFRICA__ABIDJAN;
    public static final TimeZone AFRICA__ACCRA;
    public static final TimeZone AFRICA__ADDIS_ABABA;
    public static final TimeZone AFRICA__ALGIERS;
    public static final TimeZone AFRICA__ASMARA;
    public static final TimeZone AFRICA__ASMERA;
    public static final TimeZone AFRICA__BAMAKO;
    public static final TimeZone AFRICA__BANGUI;
    public static final TimeZone AFRICA__BANJUL;
    public static final TimeZone AFRICA__BISSAU;
    public static final TimeZone AFRICA__BLANTYRE;
    public static final TimeZone AFRICA__BRAZZAVILLE;
    public static final TimeZone AFRICA__BUJUMBURA;
    public static final TimeZone AFRICA__CAIRO;
    public static final TimeZone AFRICA__CASABLANCA;
    public static final TimeZone AFRICA__CEUTA;
    public static final TimeZone AFRICA__CONAKRY;
    public static final TimeZone AFRICA__DAKAR;
    public static final TimeZone AFRICA__DAR_ES_SALAAM;
    public static final TimeZone AFRICA__DJIBOUTI;
    public static final TimeZone AFRICA__DOUALA;
    public static final TimeZone AFRICA__EL_AAIUN;
    public static final TimeZone AFRICA__FREETOWN;
    public static final TimeZone AFRICA__GABORONE;
    public static final TimeZone AFRICA__HARARE;
    public static final TimeZone AFRICA__JOHANNESBURG;
    public static final TimeZone AFRICA__JUBA;
    public static final TimeZone AFRICA__KAMPALA;
    public static final TimeZone AFRICA__KHARTOUM;
    public static final TimeZone AFRICA__KIGALI;
    public static final TimeZone AFRICA__KINSHASA;
    public static final TimeZone AFRICA__LAGOS;
    public static final TimeZone AFRICA__LIBREVILLE;
    public static final TimeZone AFRICA__LOME;
    public static final TimeZone AFRICA__LUANDA;
    public static final TimeZone AFRICA__LUBUMBASHI;
    public static final TimeZone AFRICA__LUSAKA;
    public static final TimeZone AFRICA__MALABO;
    public static final TimeZone AFRICA__MAPUTO;
    public static final TimeZone AFRICA__MASERU;
    public static final TimeZone AFRICA__MBABANE;
    public static final TimeZone AFRICA__MOGADISHU;
    public static final TimeZone AFRICA__MONROVIA;
    public static final TimeZone AFRICA__NAIROBI;
    public static final TimeZone AFRICA__NDJAMENA;
    public static final TimeZone AFRICA__NIAMEY;
    public static final TimeZone AFRICA__NOUAKCHOTT;
    public static final TimeZone AFRICA__OUAGADOUGOU;
    public static final TimeZone AFRICA__PORTO_NOVO;
    public static final TimeZone AFRICA__SAO_TOME;
    public static final TimeZone AFRICA__TIMBUKTU;
    public static final TimeZone AFRICA__TRIPOLI;
    public static final TimeZone AFRICA__TUNIS;
    public static final TimeZone AFRICA__WINDHOEK;
    public static final TimeZone AMERICA__ADAK;
    public static final TimeZone AMERICA__ANCHORAGE;
    public static final TimeZone AMERICA__ANGUILLA;
    public static final TimeZone AMERICA__ANTIGUA;
    public static final TimeZone AMERICA__ARAGUAINA;
    public static final TimeZone AMERICA__ARGENTINA__BUENOS_AIRES;
    public static final TimeZone AMERICA__ARGENTINA__CATAMARCA;
    public static final TimeZone AMERICA__ARGENTINA__COMODRIVADAVIA;
    public static final TimeZone AMERICA__ARGENTINA__CORDOBA;
    public static final TimeZone AMERICA__ARGENTINA__JUJUY;
    public static final TimeZone AMERICA__ARGENTINA__LA_RIOJA;
    public static final TimeZone AMERICA__ARGENTINA__MENDOZA;
    public static final TimeZone AMERICA__ARGENTINA__RIO_GALLEGOS;
    public static final TimeZone AMERICA__ARGENTINA__SALTA;
    public static final TimeZone AMERICA__ARGENTINA__SAN_JUAN;
    public static final TimeZone AMERICA__ARGENTINA__SAN_LUIS;
    public static final TimeZone AMERICA__ARGENTINA__TUCUMAN;
    public static final TimeZone AMERICA__ARGENTINA__USHUAIA;
    public static final TimeZone AMERICA__ARUBA;
    public static final TimeZone AMERICA__ASUNCION;
    public static final TimeZone AMERICA__ATIKOKAN;
    public static final TimeZone AMERICA__ATKA;
    public static final TimeZone AMERICA__BAHIA;
    public static final TimeZone AMERICA__BAHIA_BANDERAS;
    public static final TimeZone AMERICA__BARBADOS;
    public static final TimeZone AMERICA__BELEM;
    public static final TimeZone AMERICA__BELIZE;
    public static final TimeZone AMERICA__BLANC_SABLON;
    public static final TimeZone AMERICA__BOA_VISTA;
    public static final TimeZone AMERICA__BOGOTA;
    public static final TimeZone AMERICA__BOISE;
    public static final TimeZone AMERICA__BUENOS_AIRES;
    public static final TimeZone AMERICA__CAMBRIDGE_BAY;
    public static final TimeZone AMERICA__CAMPO_GRANDE;
    public static final TimeZone AMERICA__CANCUN;
    public static final TimeZone AMERICA__CARACAS;
    public static final TimeZone AMERICA__CATAMARCA;
    public static final TimeZone AMERICA__CAYENNE;
    public static final TimeZone AMERICA__CAYMAN;
    public static final TimeZone AMERICA__CHICAGO;
    public static final TimeZone AMERICA__CHIHUAHUA;
    public static final TimeZone AMERICA__CIUDAD_JUAREZ;
    public static final TimeZone AMERICA__CORAL_HARBOUR;
    public static final TimeZone AMERICA__CORDOBA;
    public static final TimeZone AMERICA__COSTA_RICA;
    public static final TimeZone AMERICA__CRESTON;
    public static final TimeZone AMERICA__CUIABA;
    public static final TimeZone AMERICA__CURACAO;
    public static final TimeZone AMERICA__DANMARKSHAVN;
    public static final TimeZone AMERICA__DAWSON;
    public static final TimeZone AMERICA__DAWSON_CREEK;
    public static final TimeZone AMERICA__DENVER;
    public static final TimeZone AMERICA__DETROIT;
    public static final TimeZone AMERICA__DOMINICA;
    public static final TimeZone AMERICA__EDMONTON;
    public static final TimeZone AMERICA__EIRUNEPE;
    public static final TimeZone AMERICA__EL_SALVADOR;
    public static final TimeZone AMERICA__ENSENADA;
    public static final TimeZone AMERICA__FORTALEZA;
    public static final TimeZone AMERICA__FORT_NELSON;
    public static final TimeZone AMERICA__FORT_WAYNE;
    public static final TimeZone AMERICA__GLACE_BAY;
    public static final TimeZone AMERICA__GODTHAB;
    public static final TimeZone AMERICA__GOOSE_BAY;
    public static final TimeZone AMERICA__GRAND_TURK;
    public static final TimeZone AMERICA__GRENADA;
    public static final TimeZone AMERICA__GUADELOUPE;
    public static final TimeZone AMERICA__GUATEMALA;
    public static final TimeZone AMERICA__GUAYAQUIL;
    public static final TimeZone AMERICA__GUYANA;
    public static final TimeZone AMERICA__HALIFAX;
    public static final TimeZone AMERICA__HAVANA;
    public static final TimeZone AMERICA__HERMOSILLO;
    public static final TimeZone AMERICA__INDIANAPOLIS;
    public static final TimeZone AMERICA__INDIANA__INDIANAPOLIS;
    public static final TimeZone AMERICA__INDIANA__KNOX;
    public static final TimeZone AMERICA__INDIANA__MARENGO;
    public static final TimeZone AMERICA__INDIANA__PETERSBURG;
    public static final TimeZone AMERICA__INDIANA__TELL_CITY;
    public static final TimeZone AMERICA__INDIANA__VEVAY;
    public static final TimeZone AMERICA__INDIANA__VINCENNES;
    public static final TimeZone AMERICA__INDIANA__WINAMAC;
    public static final TimeZone AMERICA__INUVIK;
    public static final TimeZone AMERICA__IQALUIT;
    public static final TimeZone AMERICA__JAMAICA;
    public static final TimeZone AMERICA__JUJUY;
    public static final TimeZone AMERICA__JUNEAU;
    public static final TimeZone AMERICA__KENTUCKY__LOUISVILLE;
    public static final TimeZone AMERICA__KENTUCKY__MONTICELLO;
    public static final TimeZone AMERICA__KNOX_IN;
    public static final TimeZone AMERICA__KRALENDIJK;
    public static final TimeZone AMERICA__LA_PAZ;
    public static final TimeZone AMERICA__LIMA;
    public static final TimeZone AMERICA__LOS_ANGELES;
    public static final TimeZone AMERICA__LOUISVILLE;
    public static final TimeZone AMERICA__LOWER_PRINCES;
    public static final TimeZone AMERICA__MACEIO;
    public static final TimeZone AMERICA__MANAGUA;
    public static final TimeZone AMERICA__MANAUS;
    public static final TimeZone AMERICA__MARIGOT;
    public static final TimeZone AMERICA__MARTINIQUE;
    public static final TimeZone AMERICA__MATAMOROS;
    public static final TimeZone AMERICA__MAZATLAN;
    public static final TimeZone AMERICA__MENDOZA;
    public static final TimeZone AMERICA__MENOMINEE;
    public static final TimeZone AMERICA__MERIDA;
    public static final TimeZone AMERICA__METLAKATLA;
    public static final TimeZone AMERICA__MEXICO_CITY;
    public static final TimeZone AMERICA__MIQUELON;
    public static final TimeZone AMERICA__MONCTON;
    public static final TimeZone AMERICA__MONTERREY;
    public static final TimeZone AMERICA__MONTEVIDEO;
    public static final TimeZone AMERICA__MONTREAL;
    public static final TimeZone AMERICA__MONTSERRAT;
    public static final TimeZone AMERICA__NASSAU;
    public static final TimeZone AMERICA__NEW_YORK;
    public static final TimeZone AMERICA__NIPIGON;
    public static final TimeZone AMERICA__NOME;
    public static final TimeZone AMERICA__NORONHA;
    public static final TimeZone AMERICA__NORTH_DAKOTA__BEULAH;
    public static final TimeZone AMERICA__NORTH_DAKOTA__CENTER;
    public static final TimeZone AMERICA__NORTH_DAKOTA__NEW_SALEM;
    public static final TimeZone AMERICA__NUUK;
    public static final TimeZone AMERICA__OJINAGA;
    public static final TimeZone AMERICA__PANAMA;
    public static final TimeZone AMERICA__PANGNIRTUNG;
    public static final TimeZone AMERICA__PARAMARIBO;
    public static final TimeZone AMERICA__PHOENIX;
    public static final TimeZone AMERICA__PORTO_ACRE;
    public static final TimeZone AMERICA__PORTO_VELHO;
    public static final TimeZone AMERICA__PORT_AU_PRINCE;
    public static final TimeZone AMERICA__PORT_OF_SPAIN;
    public static final TimeZone AMERICA__PUERTO_RICO;
    public static final TimeZone AMERICA__PUNTA_ARENAS;
    public static final TimeZone AMERICA__RAINY_RIVER;
    public static final TimeZone AMERICA__RANKIN_INLET;
    public static final TimeZone AMERICA__RECIFE;
    public static final TimeZone AMERICA__REGINA;
    public static final TimeZone AMERICA__RESOLUTE;
    public static final TimeZone AMERICA__RIO_BRANCO;
    public static final TimeZone AMERICA__ROSARIO;
    public static final TimeZone AMERICA__SANTAREM;
    public static final TimeZone AMERICA__SANTA_ISABEL;
    public static final TimeZone AMERICA__SANTIAGO;
    public static final TimeZone AMERICA__SANTO_DOMINGO;
    public static final TimeZone AMERICA__SAO_PAULO;
    public static final TimeZone AMERICA__SCORESBYSUND;
    public static final TimeZone AMERICA__SHIPROCK;
    public static final TimeZone AMERICA__SITKA;
    public static final TimeZone AMERICA__ST_BARTHELEMY;
    public static final TimeZone AMERICA__ST_JOHNS;
    public static final TimeZone AMERICA__ST_KITTS;
    public static final TimeZone AMERICA__ST_LUCIA;
    public static final TimeZone AMERICA__ST_THOMAS;
    public static final TimeZone AMERICA__ST_VINCENT;
    public static final TimeZone AMERICA__SWIFT_CURRENT;
    public static final TimeZone AMERICA__TEGUCIGALPA;
    public static final TimeZone AMERICA__THULE;
    public static final TimeZone AMERICA__THUNDER_BAY;
    public static final TimeZone AMERICA__TIJUANA;
    public static final TimeZone AMERICA__TORONTO;
    public static final TimeZone AMERICA__TORTOLA;
    public static final TimeZone AMERICA__VANCOUVER;
    public static final TimeZone AMERICA__VIRGIN;
    public static final TimeZone AMERICA__WHITEHORSE;
    public static final TimeZone AMERICA__WINNIPEG;
    public static final TimeZone AMERICA__YAKUTAT;
    public static final TimeZone AMERICA__YELLOWKNIFE;
    public static final TimeZone ANTARCTICA__CASEY;
    public static final TimeZone ANTARCTICA__DAVIS;
    public static final TimeZone ANTARCTICA__DUMONTDURVILLE;
    public static final TimeZone ANTARCTICA__MACQUARIE;
    public static final TimeZone ANTARCTICA__MAWSON;
    public static final TimeZone ANTARCTICA__MCMURDO;
    public static final TimeZone ANTARCTICA__PALMER;
    public static final TimeZone ANTARCTICA__ROTHERA;
    public static final TimeZone ANTARCTICA__SOUTH_POLE;
    public static final TimeZone ANTARCTICA__SYOWA;
    public static final TimeZone ANTARCTICA__TROLL;
    public static final TimeZone ANTARCTICA__VOSTOK;
    public static final TimeZone ARCTIC__LONGYEARBYEN;
    public static final TimeZone ASIA__ADEN;
    public static final TimeZone ASIA__ALMATY;
    public static final TimeZone ASIA__AMMAN;
    public static final TimeZone ASIA__ANADYR;
    public static final TimeZone ASIA__AQTAU;
    public static final TimeZone ASIA__AQTOBE;
    public static final TimeZone ASIA__ASHGABAT;
    public static final TimeZone ASIA__ASHKHABAD;
    public static final TimeZone ASIA__ATYRAU;
    public static final TimeZone ASIA__BAGHDAD;
    public static final TimeZone ASIA__BAHRAIN;
    public static final TimeZone ASIA__BAKU;
    public static final TimeZone ASIA__BANGKOK;
    public static final TimeZone ASIA__BARNAUL;
    public static final TimeZone ASIA__BEIRUT;
    public static final TimeZone ASIA__BISHKEK;
    public static final TimeZone ASIA__BRUNEI;
    public static final TimeZone ASIA__CALCUTTA;
    public static final TimeZone ASIA__CHITA;
    public static final TimeZone ASIA__CHOIBALSAN;
    public static final TimeZone ASIA__CHONGQING;
    public static final TimeZone ASIA__CHUNGKING;
    public static final TimeZone ASIA__COLOMBO;
    public static final TimeZone ASIA__DACCA;
    public static final TimeZone ASIA__DAMASCUS;
    public static final TimeZone ASIA__DHAKA;
    public static final TimeZone ASIA__DILI;
    public static final TimeZone ASIA__DUBAI;
    public static final TimeZone ASIA__DUSHANBE;
    public static final TimeZone ASIA__FAMAGUSTA;
    public static final TimeZone ASIA__GAZA;
    public static final TimeZone ASIA__HARBIN;
    public static final TimeZone ASIA__HEBRON;
    public static final TimeZone ASIA__HONG_KONG;
    public static final TimeZone ASIA__HOVD;
    public static final TimeZone ASIA__HO_CHI_MINH;
    public static final TimeZone ASIA__IRKUTSK;
    public static final TimeZone ASIA__ISTANBUL;
    public static final TimeZone ASIA__JAKARTA;
    public static final TimeZone ASIA__JAYAPURA;
    public static final TimeZone ASIA__JERUSALEM;
    public static final TimeZone ASIA__KABUL;
    public static final TimeZone ASIA__KAMCHATKA;
    public static final TimeZone ASIA__KARACHI;
    public static final TimeZone ASIA__KASHGAR;
    public static final TimeZone ASIA__KATHMANDU;
    public static final TimeZone ASIA__KATMANDU;
    public static final TimeZone ASIA__KHANDYGA;
    public static final TimeZone ASIA__KOLKATA;
    public static final TimeZone ASIA__KRASNOYARSK;
    public static final TimeZone ASIA__KUALA_LUMPUR;
    public static final TimeZone ASIA__KUCHING;
    public static final TimeZone ASIA__KUWAIT;
    public static final TimeZone ASIA__MACAO;
    public static final TimeZone ASIA__MACAU;
    public static final TimeZone ASIA__MAGADAN;
    public static final TimeZone ASIA__MAKASSAR;
    public static final TimeZone ASIA__MANILA;
    public static final TimeZone ASIA__MUSCAT;
    public static final TimeZone ASIA__NICOSIA;
    public static final TimeZone ASIA__NOVOKUZNETSK;
    public static final TimeZone ASIA__NOVOSIBIRSK;
    public static final TimeZone ASIA__OMSK;
    public static final TimeZone ASIA__ORAL;
    public static final TimeZone ASIA__PHNOM_PENH;
    public static final TimeZone ASIA__PONTIANAK;
    public static final TimeZone ASIA__PYONGYANG;
    public static final TimeZone ASIA__QATAR;
    public static final TimeZone ASIA__QOSTANAY;
    public static final TimeZone ASIA__QYZYLORDA;
    public static final TimeZone ASIA__RANGOON;
    public static final TimeZone ASIA__RIYADH;
    public static final TimeZone ASIA__SAIGON;
    public static final TimeZone ASIA__SAKHALIN;
    public static final TimeZone ASIA__SAMARKAND;
    public static final TimeZone ASIA__SEOUL;
    public static final TimeZone ASIA__SHANGHAI;
    public static final TimeZone ASIA__SINGAPORE;
    public static final TimeZone ASIA__SREDNEKOLYMSK;
    public static final TimeZone ASIA__TAIPEI;
    public static final TimeZone ASIA__TASHKENT;
    public static final TimeZone ASIA__TBILISI;
    public static final TimeZone ASIA__TEHRAN;
    public static final TimeZone ASIA__TEL_AVIV;
    public static final TimeZone ASIA__THIMBU;
    public static final TimeZone ASIA__THIMPHU;
    public static final TimeZone ASIA__TOKYO;
    public static final TimeZone ASIA__TOMSK;
    public static final TimeZone ASIA__UJUNG_PANDANG;
    public static final TimeZone ASIA__ULAANBAATAR;
    public static final TimeZone ASIA__ULAN_BATOR;
    public static final TimeZone ASIA__URUMQI;
    public static final TimeZone ASIA__UST_NERA;
    public static final TimeZone ASIA__VIENTIANE;
    public static final TimeZone ASIA__VLADIVOSTOK;
    public static final TimeZone ASIA__YAKUTSK;
    public static final TimeZone ASIA__YANGON;
    public static final TimeZone ASIA__YEKATERINBURG;
    public static final TimeZone ASIA__YEREVAN;
    public static final TimeZone ATLANTIC__AZORES;
    public static final TimeZone ATLANTIC__BERMUDA;
    public static final TimeZone ATLANTIC__CANARY;
    public static final TimeZone ATLANTIC__CAPE_VERDE;
    public static final TimeZone ATLANTIC__FAEROE;
    public static final TimeZone ATLANTIC__FAROE;
    public static final TimeZone ATLANTIC__JAN_MAYEN;
    public static final TimeZone ATLANTIC__MADEIRA;
    public static final TimeZone ATLANTIC__REYKJAVIK;
    public static final TimeZone ATLANTIC__SOUTH_GEORGIA;
    public static final TimeZone ATLANTIC__STANLEY;
    public static final TimeZone ATLANTIC__ST_HELENA;
    public static final TimeZone AUSTRALIA__ACT;
    public static final TimeZone AUSTRALIA__ADELAIDE;
    public static final TimeZone AUSTRALIA__BRISBANE;
    public static final TimeZone AUSTRALIA__BROKEN_HILL;
    public static final TimeZone AUSTRALIA__CANBERRA;
    public static final TimeZone AUSTRALIA__CURRIE;
    public static final TimeZone AUSTRALIA__DARWIN;
    public static final TimeZone AUSTRALIA__EUCLA;
    public static final TimeZone AUSTRALIA__HOBART;
    public static final TimeZone AUSTRALIA__LHI;
    public static final TimeZone AUSTRALIA__LINDEMAN;
    public static final TimeZone AUSTRALIA__LORD_HOWE;
    public static final TimeZone AUSTRALIA__MELBOURNE;
    public static final TimeZone AUSTRALIA__NORTH;
    public static final TimeZone AUSTRALIA__NSW;
    public static final TimeZone AUSTRALIA__PERTH;
    public static final TimeZone AUSTRALIA__QUEENSLAND;
    public static final TimeZone AUSTRALIA__SOUTH;
    public static final TimeZone AUSTRALIA__SYDNEY;
    public static final TimeZone AUSTRALIA__TASMANIA;
    public static final TimeZone AUSTRALIA__VICTORIA;
    public static final TimeZone AUSTRALIA__WEST;
    public static final TimeZone AUSTRALIA__YANCOWINNA;
    public static final TimeZone BRAZIL__ACRE;
    public static final TimeZone BRAZIL__DENORONHA;
    public static final TimeZone BRAZIL__EAST;
    public static final TimeZone BRAZIL__WEST;
    public static final TimeZone CANADA__ATLANTIC;
    public static final TimeZone CANADA__CENTRAL;
    public static final TimeZone CANADA__EASTERN;
    public static final TimeZone CANADA__MOUNTAIN;
    public static final TimeZone CANADA__NEWFOUNDLAND;
    public static final TimeZone CANADA__PACIFIC;
    public static final TimeZone CANADA__SASKATCHEWAN;
    public static final TimeZone CANADA__YUKON;
    public static final TimeZone CET;
    public static final TimeZone CHILE__CONTINENTAL;
    public static final TimeZone CHILE__EASTERISLAND;
    public static final TimeZone CST6CDT;
    public static final TimeZone CUBA;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final TimeZone EET;
    public static final TimeZone EGYPT;
    public static final TimeZone EIRE;
    public static final TimeZone EST;
    public static final TimeZone EST5EDT;
    public static final TimeZone ETC__GMT;
    public static final TimeZone ETC__GMT0;
    public static final TimeZone ETC__GMT_MINUS_0;
    public static final TimeZone ETC__GMT_MINUS_1;
    public static final TimeZone ETC__GMT_MINUS_10;
    public static final TimeZone ETC__GMT_MINUS_11;
    public static final TimeZone ETC__GMT_MINUS_12;
    public static final TimeZone ETC__GMT_MINUS_13;
    public static final TimeZone ETC__GMT_MINUS_14;
    public static final TimeZone ETC__GMT_MINUS_2;
    public static final TimeZone ETC__GMT_MINUS_3;
    public static final TimeZone ETC__GMT_MINUS_4;
    public static final TimeZone ETC__GMT_MINUS_5;
    public static final TimeZone ETC__GMT_MINUS_6;
    public static final TimeZone ETC__GMT_MINUS_7;
    public static final TimeZone ETC__GMT_MINUS_8;
    public static final TimeZone ETC__GMT_MINUS_9;
    public static final TimeZone ETC__GMT_PLUS_0;
    public static final TimeZone ETC__GMT_PLUS_1;
    public static final TimeZone ETC__GMT_PLUS_10;
    public static final TimeZone ETC__GMT_PLUS_11;
    public static final TimeZone ETC__GMT_PLUS_12;
    public static final TimeZone ETC__GMT_PLUS_2;
    public static final TimeZone ETC__GMT_PLUS_3;
    public static final TimeZone ETC__GMT_PLUS_4;
    public static final TimeZone ETC__GMT_PLUS_5;
    public static final TimeZone ETC__GMT_PLUS_6;
    public static final TimeZone ETC__GMT_PLUS_7;
    public static final TimeZone ETC__GMT_PLUS_8;
    public static final TimeZone ETC__GMT_PLUS_9;
    public static final TimeZone ETC__GREENWICH;
    public static final TimeZone ETC__UCT;
    public static final TimeZone ETC__UNIVERSAL;
    public static final TimeZone ETC__UTC;
    public static final TimeZone ETC__ZULU;
    public static final TimeZone EUROPE__AMSTERDAM;
    public static final TimeZone EUROPE__ANDORRA;
    public static final TimeZone EUROPE__ASTRAKHAN;
    public static final TimeZone EUROPE__ATHENS;
    public static final TimeZone EUROPE__BELFAST;
    public static final TimeZone EUROPE__BELGRADE;
    public static final TimeZone EUROPE__BERLIN;
    public static final TimeZone EUROPE__BRATISLAVA;
    public static final TimeZone EUROPE__BRUSSELS;
    public static final TimeZone EUROPE__BUCHAREST;
    public static final TimeZone EUROPE__BUDAPEST;
    public static final TimeZone EUROPE__BUSINGEN;
    public static final TimeZone EUROPE__CHISINAU;
    public static final TimeZone EUROPE__COPENHAGEN;
    public static final TimeZone EUROPE__DUBLIN;
    public static final TimeZone EUROPE__GIBRALTAR;
    public static final TimeZone EUROPE__GUERNSEY;
    public static final TimeZone EUROPE__HELSINKI;
    public static final TimeZone EUROPE__ISLE_OF_MAN;
    public static final TimeZone EUROPE__ISTANBUL;
    public static final TimeZone EUROPE__JERSEY;
    public static final TimeZone EUROPE__KALININGRAD;
    public static final TimeZone EUROPE__KIEV;
    public static final TimeZone EUROPE__KIROV;
    public static final TimeZone EUROPE__KYIV;
    public static final TimeZone EUROPE__LISBON;
    public static final TimeZone EUROPE__LJUBLJANA;
    public static final TimeZone EUROPE__LONDON;
    public static final TimeZone EUROPE__LUXEMBOURG;
    public static final TimeZone EUROPE__MADRID;
    public static final TimeZone EUROPE__MALTA;
    public static final TimeZone EUROPE__MARIEHAMN;
    public static final TimeZone EUROPE__MINSK;
    public static final TimeZone EUROPE__MONACO;
    public static final TimeZone EUROPE__MOSCOW;
    public static final TimeZone EUROPE__NICOSIA;
    public static final TimeZone EUROPE__OSLO;
    public static final TimeZone EUROPE__PARIS;
    public static final TimeZone EUROPE__PODGORICA;
    public static final TimeZone EUROPE__PRAGUE;
    public static final TimeZone EUROPE__RIGA;
    public static final TimeZone EUROPE__ROME;
    public static final TimeZone EUROPE__SAMARA;
    public static final TimeZone EUROPE__SAN_MARINO;
    public static final TimeZone EUROPE__SARAJEVO;
    public static final TimeZone EUROPE__SARATOV;
    public static final TimeZone EUROPE__SIMFEROPOL;
    public static final TimeZone EUROPE__SKOPJE;
    public static final TimeZone EUROPE__SOFIA;
    public static final TimeZone EUROPE__STOCKHOLM;
    public static final TimeZone EUROPE__TALLINN;
    public static final TimeZone EUROPE__TIRANE;
    public static final TimeZone EUROPE__TIRASPOL;
    public static final TimeZone EUROPE__ULYANOVSK;
    public static final TimeZone EUROPE__UZHGOROD;
    public static final TimeZone EUROPE__VADUZ;
    public static final TimeZone EUROPE__VATICAN;
    public static final TimeZone EUROPE__VIENNA;
    public static final TimeZone EUROPE__VILNIUS;
    public static final TimeZone EUROPE__VOLGOGRAD;
    public static final TimeZone EUROPE__WARSAW;
    public static final TimeZone EUROPE__ZAGREB;
    public static final TimeZone EUROPE__ZAPOROZHYE;
    public static final TimeZone EUROPE__ZURICH;
    public static final TimeZone GB;
    public static final TimeZone GB_EIRE;
    public static final TimeZone GMT;
    public static final TimeZone GMT0;
    public static final TimeZone GMT_MINUS_0;
    public static final TimeZone GMT_PLUS_0;
    public static final TimeZone GREENWICH;
    public static final TimeZone HONGKONG;
    public static final TimeZone HST;
    public static final TimeZone ICELAND;
    public static final TimeZone INDIAN__ANTANANARIVO;
    public static final TimeZone INDIAN__CHAGOS;
    public static final TimeZone INDIAN__CHRISTMAS;
    public static final TimeZone INDIAN__COCOS;
    public static final TimeZone INDIAN__COMORO;
    public static final TimeZone INDIAN__KERGUELEN;
    public static final TimeZone INDIAN__MAHE;
    public static final TimeZone INDIAN__MALDIVES;
    public static final TimeZone INDIAN__MAURITIUS;
    public static final TimeZone INDIAN__MAYOTTE;
    public static final TimeZone INDIAN__REUNION;
    public static final TimeZone IRAN;
    public static final TimeZone ISRAEL;
    public static final TimeZone JAMAICA;
    public static final TimeZone JAPAN;
    public static final TimeZone KWAJALEIN;
    public static final TimeZone LIBYA;
    public static final TimeZone MET;
    public static final TimeZone MEXICO__BAJANORTE;
    public static final TimeZone MEXICO__BAJASUR;
    public static final TimeZone MEXICO__GENERAL;
    public static final TimeZone MST;
    public static final TimeZone MST7MDT;
    public static final TimeZone NAVAJO;
    public static final TimeZone NZ;
    public static final TimeZone NZ_CHAT;
    public static final TimeZone PACIFIC__APIA;
    public static final TimeZone PACIFIC__AUCKLAND;
    public static final TimeZone PACIFIC__BOUGAINVILLE;
    public static final TimeZone PACIFIC__CHATHAM;
    public static final TimeZone PACIFIC__CHUUK;
    public static final TimeZone PACIFIC__EASTER;
    public static final TimeZone PACIFIC__EFATE;
    public static final TimeZone PACIFIC__ENDERBURY;
    public static final TimeZone PACIFIC__FAKAOFO;
    public static final TimeZone PACIFIC__FIJI;
    public static final TimeZone PACIFIC__FUNAFUTI;
    public static final TimeZone PACIFIC__GALAPAGOS;
    public static final TimeZone PACIFIC__GAMBIER;
    public static final TimeZone PACIFIC__GUADALCANAL;
    public static final TimeZone PACIFIC__GUAM;
    public static final TimeZone PACIFIC__HONOLULU;
    public static final TimeZone PACIFIC__JOHNSTON;
    public static final TimeZone PACIFIC__KANTON;
    public static final TimeZone PACIFIC__KIRITIMATI;
    public static final TimeZone PACIFIC__KOSRAE;
    public static final TimeZone PACIFIC__KWAJALEIN;
    public static final TimeZone PACIFIC__MAJURO;
    public static final TimeZone PACIFIC__MARQUESAS;
    public static final TimeZone PACIFIC__MIDWAY;
    public static final TimeZone PACIFIC__NAURU;
    public static final TimeZone PACIFIC__NIUE;
    public static final TimeZone PACIFIC__NORFOLK;
    public static final TimeZone PACIFIC__NOUMEA;
    public static final TimeZone PACIFIC__PAGO_PAGO;
    public static final TimeZone PACIFIC__PALAU;
    public static final TimeZone PACIFIC__PITCAIRN;
    public static final TimeZone PACIFIC__POHNPEI;
    public static final TimeZone PACIFIC__PONAPE;
    public static final TimeZone PACIFIC__PORT_MORESBY;
    public static final TimeZone PACIFIC__RAROTONGA;
    public static final TimeZone PACIFIC__SAIPAN;
    public static final TimeZone PACIFIC__SAMOA;
    public static final TimeZone PACIFIC__TAHITI;
    public static final TimeZone PACIFIC__TARAWA;
    public static final TimeZone PACIFIC__TONGATAPU;
    public static final TimeZone PACIFIC__TRUK;
    public static final TimeZone PACIFIC__WAKE;
    public static final TimeZone PACIFIC__WALLIS;
    public static final TimeZone PACIFIC__YAP;
    public static final TimeZone POLAND;
    public static final TimeZone PORTUGAL;
    public static final TimeZone PRC;
    public static final TimeZone PST8PDT;
    public static final TimeZone ROC;
    public static final TimeZone ROK;
    public static final TimeZone SINGAPORE;
    public static final TimeZone TIME_ZONE_INVALID;
    public static final TimeZone TURKEY;
    public static final TimeZone UCT;
    public static final TimeZone UNIVERSAL;
    public static final TimeZone US__ALASKA;
    public static final TimeZone US__ALEUTIAN;
    public static final TimeZone US__ARIZONA;
    public static final TimeZone US__CENTRAL;
    public static final TimeZone US__EASTERN;
    public static final TimeZone US__EAST_INDIANA;
    public static final TimeZone US__HAWAII;
    public static final TimeZone US__INDIANA_STARKE;
    public static final TimeZone US__MICHIGAN;
    public static final TimeZone US__MOUNTAIN;
    public static final TimeZone US__PACIFIC;

    @Deprecated(message = "US__PACIFIC_NEW is deprecated")
    public static final TimeZone US__PACIFIC_NEW;
    public static final TimeZone US__SAMOA;
    public static final TimeZone UTC;
    public static final TimeZone WET;
    public static final TimeZone W_SU;
    public static final TimeZone ZULU;
    private final int value;

    private static final /* synthetic */ TimeZone[] $values() {
        return new TimeZone[]{TIME_ZONE_INVALID, AFRICA__ABIDJAN, AFRICA__ACCRA, AFRICA__ADDIS_ABABA, AFRICA__ALGIERS, AFRICA__ASMARA, AFRICA__ASMERA, AFRICA__BAMAKO, AFRICA__BANGUI, AFRICA__BANJUL, AFRICA__BISSAU, AFRICA__BLANTYRE, AFRICA__BRAZZAVILLE, AFRICA__BUJUMBURA, AFRICA__CAIRO, AFRICA__CASABLANCA, AFRICA__CEUTA, AFRICA__CONAKRY, AFRICA__DAKAR, AFRICA__DAR_ES_SALAAM, AFRICA__DJIBOUTI, AFRICA__DOUALA, AFRICA__EL_AAIUN, AFRICA__FREETOWN, AFRICA__GABORONE, AFRICA__HARARE, AFRICA__JOHANNESBURG, AFRICA__JUBA, AFRICA__KAMPALA, AFRICA__KHARTOUM, AFRICA__KIGALI, AFRICA__KINSHASA, AFRICA__LAGOS, AFRICA__LIBREVILLE, AFRICA__LOME, AFRICA__LUANDA, AFRICA__LUBUMBASHI, AFRICA__LUSAKA, AFRICA__MALABO, AFRICA__MAPUTO, AFRICA__MASERU, AFRICA__MBABANE, AFRICA__MOGADISHU, AFRICA__MONROVIA, AFRICA__NAIROBI, AFRICA__NDJAMENA, AFRICA__NIAMEY, AFRICA__NOUAKCHOTT, AFRICA__OUAGADOUGOU, AFRICA__PORTO_NOVO, AFRICA__SAO_TOME, AFRICA__TIMBUKTU, AFRICA__TRIPOLI, AFRICA__TUNIS, AFRICA__WINDHOEK, AMERICA__ADAK, AMERICA__ANCHORAGE, AMERICA__ANGUILLA, AMERICA__ANTIGUA, AMERICA__ARAGUAINA, AMERICA__ARGENTINA__BUENOS_AIRES, AMERICA__ARGENTINA__CATAMARCA, AMERICA__ARGENTINA__COMODRIVADAVIA, AMERICA__ARGENTINA__CORDOBA, AMERICA__ARGENTINA__JUJUY, AMERICA__ARGENTINA__LA_RIOJA, AMERICA__ARGENTINA__MENDOZA, AMERICA__ARGENTINA__RIO_GALLEGOS, AMERICA__ARGENTINA__SALTA, AMERICA__ARGENTINA__SAN_JUAN, AMERICA__ARGENTINA__SAN_LUIS, AMERICA__ARGENTINA__TUCUMAN, AMERICA__ARGENTINA__USHUAIA, AMERICA__ARUBA, AMERICA__ASUNCION, AMERICA__ATIKOKAN, AMERICA__ATKA, AMERICA__BAHIA, AMERICA__BAHIA_BANDERAS, AMERICA__BARBADOS, AMERICA__BELEM, AMERICA__BELIZE, AMERICA__BLANC_SABLON, AMERICA__BOA_VISTA, AMERICA__BOGOTA, AMERICA__BOISE, AMERICA__BUENOS_AIRES, AMERICA__CAMBRIDGE_BAY, AMERICA__CAMPO_GRANDE, AMERICA__CANCUN, AMERICA__CARACAS, AMERICA__CATAMARCA, AMERICA__CAYENNE, AMERICA__CAYMAN, AMERICA__CHICAGO, AMERICA__CHIHUAHUA, AMERICA__CIUDAD_JUAREZ, AMERICA__CORAL_HARBOUR, AMERICA__CORDOBA, AMERICA__COSTA_RICA, AMERICA__CRESTON, AMERICA__CUIABA, AMERICA__CURACAO, AMERICA__DANMARKSHAVN, AMERICA__DAWSON, AMERICA__DAWSON_CREEK, AMERICA__DENVER, AMERICA__DETROIT, AMERICA__DOMINICA, AMERICA__EDMONTON, AMERICA__EIRUNEPE, AMERICA__EL_SALVADOR, AMERICA__ENSENADA, AMERICA__FORT_NELSON, AMERICA__FORT_WAYNE, AMERICA__FORTALEZA, AMERICA__GLACE_BAY, AMERICA__GODTHAB, AMERICA__GOOSE_BAY, AMERICA__GRAND_TURK, AMERICA__GRENADA, AMERICA__GUADELOUPE, AMERICA__GUATEMALA, AMERICA__GUAYAQUIL, AMERICA__GUYANA, AMERICA__HALIFAX, AMERICA__HAVANA, AMERICA__HERMOSILLO, AMERICA__INDIANA__INDIANAPOLIS, AMERICA__INDIANA__KNOX, AMERICA__INDIANA__MARENGO, AMERICA__INDIANA__PETERSBURG, AMERICA__INDIANA__TELL_CITY, AMERICA__INDIANA__VEVAY, AMERICA__INDIANA__VINCENNES, AMERICA__INDIANA__WINAMAC, AMERICA__INDIANAPOLIS, AMERICA__INUVIK, AMERICA__IQALUIT, AMERICA__JAMAICA, AMERICA__JUJUY, AMERICA__JUNEAU, AMERICA__KENTUCKY__LOUISVILLE, AMERICA__KENTUCKY__MONTICELLO, AMERICA__KNOX_IN, AMERICA__KRALENDIJK, AMERICA__LA_PAZ, AMERICA__LIMA, AMERICA__LOS_ANGELES, AMERICA__LOUISVILLE, AMERICA__LOWER_PRINCES, AMERICA__MACEIO, AMERICA__MANAGUA, AMERICA__MANAUS, AMERICA__MARIGOT, AMERICA__MARTINIQUE, AMERICA__MATAMOROS, AMERICA__MAZATLAN, AMERICA__MENDOZA, AMERICA__MENOMINEE, AMERICA__MERIDA, AMERICA__METLAKATLA, AMERICA__MEXICO_CITY, AMERICA__MIQUELON, AMERICA__MONCTON, AMERICA__MONTERREY, AMERICA__MONTEVIDEO, AMERICA__MONTREAL, AMERICA__MONTSERRAT, AMERICA__NASSAU, AMERICA__NEW_YORK, AMERICA__NIPIGON, AMERICA__NOME, AMERICA__NORONHA, AMERICA__NORTH_DAKOTA__BEULAH, AMERICA__NORTH_DAKOTA__CENTER, AMERICA__NORTH_DAKOTA__NEW_SALEM, AMERICA__NUUK, AMERICA__OJINAGA, AMERICA__PANAMA, AMERICA__PANGNIRTUNG, AMERICA__PARAMARIBO, AMERICA__PHOENIX, AMERICA__PORT_AU_PRINCE, AMERICA__PORT_OF_SPAIN, AMERICA__PORTO_ACRE, AMERICA__PORTO_VELHO, AMERICA__PUERTO_RICO, AMERICA__PUNTA_ARENAS, AMERICA__RAINY_RIVER, AMERICA__RANKIN_INLET, AMERICA__RECIFE, AMERICA__REGINA, AMERICA__RESOLUTE, AMERICA__RIO_BRANCO, AMERICA__ROSARIO, AMERICA__SANTA_ISABEL, AMERICA__SANTAREM, AMERICA__SANTIAGO, AMERICA__SANTO_DOMINGO, AMERICA__SAO_PAULO, AMERICA__SCORESBYSUND, AMERICA__SHIPROCK, AMERICA__SITKA, AMERICA__ST_BARTHELEMY, AMERICA__ST_JOHNS, AMERICA__ST_KITTS, AMERICA__ST_LUCIA, AMERICA__ST_THOMAS, AMERICA__ST_VINCENT, AMERICA__SWIFT_CURRENT, AMERICA__TEGUCIGALPA, AMERICA__THULE, AMERICA__THUNDER_BAY, AMERICA__TIJUANA, AMERICA__TORONTO, AMERICA__TORTOLA, AMERICA__VANCOUVER, AMERICA__VIRGIN, AMERICA__WHITEHORSE, AMERICA__WINNIPEG, AMERICA__YAKUTAT, AMERICA__YELLOWKNIFE, ANTARCTICA__CASEY, ANTARCTICA__DAVIS, ANTARCTICA__DUMONTDURVILLE, ANTARCTICA__MACQUARIE, ANTARCTICA__MAWSON, ANTARCTICA__MCMURDO, ANTARCTICA__PALMER, ANTARCTICA__ROTHERA, ANTARCTICA__SOUTH_POLE, ANTARCTICA__SYOWA, ANTARCTICA__TROLL, ANTARCTICA__VOSTOK, ARCTIC__LONGYEARBYEN, ASIA__ADEN, ASIA__ALMATY, ASIA__AMMAN, ASIA__ANADYR, ASIA__AQTAU, ASIA__AQTOBE, ASIA__ASHGABAT, ASIA__ASHKHABAD, ASIA__ATYRAU, ASIA__BAGHDAD, ASIA__BAHRAIN, ASIA__BAKU, ASIA__BANGKOK, ASIA__BARNAUL, ASIA__BEIRUT, ASIA__BISHKEK, ASIA__BRUNEI, ASIA__CALCUTTA, ASIA__CHITA, ASIA__CHOIBALSAN, ASIA__CHONGQING, ASIA__CHUNGKING, ASIA__COLOMBO, ASIA__DACCA, ASIA__DAMASCUS, ASIA__DHAKA, ASIA__DILI, ASIA__DUBAI, ASIA__DUSHANBE, ASIA__FAMAGUSTA, ASIA__GAZA, ASIA__HARBIN, ASIA__HEBRON, ASIA__HO_CHI_MINH, ASIA__HONG_KONG, ASIA__HOVD, ASIA__IRKUTSK, ASIA__ISTANBUL, ASIA__JAKARTA, ASIA__JAYAPURA, ASIA__JERUSALEM, ASIA__KABUL, ASIA__KAMCHATKA, ASIA__KARACHI, ASIA__KASHGAR, ASIA__KATHMANDU, ASIA__KATMANDU, ASIA__KHANDYGA, ASIA__KOLKATA, ASIA__KRASNOYARSK, ASIA__KUALA_LUMPUR, ASIA__KUCHING, ASIA__KUWAIT, ASIA__MACAO, ASIA__MACAU, ASIA__MAGADAN, ASIA__MAKASSAR, ASIA__MANILA, ASIA__MUSCAT, ASIA__NICOSIA, ASIA__NOVOKUZNETSK, ASIA__NOVOSIBIRSK, ASIA__OMSK, ASIA__ORAL, ASIA__PHNOM_PENH, ASIA__PONTIANAK, ASIA__PYONGYANG, ASIA__QATAR, ASIA__QOSTANAY, ASIA__QYZYLORDA, ASIA__RANGOON, ASIA__RIYADH, ASIA__SAIGON, ASIA__SAKHALIN, ASIA__SAMARKAND, ASIA__SEOUL, ASIA__SHANGHAI, ASIA__SINGAPORE, ASIA__SREDNEKOLYMSK, ASIA__TAIPEI, ASIA__TASHKENT, ASIA__TBILISI, ASIA__TEHRAN, ASIA__TEL_AVIV, ASIA__THIMBU, ASIA__THIMPHU, ASIA__TOKYO, ASIA__TOMSK, ASIA__UJUNG_PANDANG, ASIA__ULAANBAATAR, ASIA__ULAN_BATOR, ASIA__URUMQI, ASIA__UST_NERA, ASIA__VIENTIANE, ASIA__VLADIVOSTOK, ASIA__YAKUTSK, ASIA__YANGON, ASIA__YEKATERINBURG, ASIA__YEREVAN, ATLANTIC__AZORES, ATLANTIC__BERMUDA, ATLANTIC__CANARY, ATLANTIC__CAPE_VERDE, ATLANTIC__FAEROE, ATLANTIC__FAROE, ATLANTIC__JAN_MAYEN, ATLANTIC__MADEIRA, ATLANTIC__REYKJAVIK, ATLANTIC__SOUTH_GEORGIA, ATLANTIC__ST_HELENA, ATLANTIC__STANLEY, AUSTRALIA__ACT, AUSTRALIA__ADELAIDE, AUSTRALIA__BRISBANE, AUSTRALIA__BROKEN_HILL, AUSTRALIA__CANBERRA, AUSTRALIA__CURRIE, AUSTRALIA__DARWIN, AUSTRALIA__EUCLA, AUSTRALIA__HOBART, AUSTRALIA__LHI, AUSTRALIA__LINDEMAN, AUSTRALIA__LORD_HOWE, AUSTRALIA__MELBOURNE, AUSTRALIA__NSW, AUSTRALIA__NORTH, AUSTRALIA__PERTH, AUSTRALIA__QUEENSLAND, AUSTRALIA__SOUTH, AUSTRALIA__SYDNEY, AUSTRALIA__TASMANIA, AUSTRALIA__VICTORIA, AUSTRALIA__WEST, AUSTRALIA__YANCOWINNA, BRAZIL__ACRE, BRAZIL__DENORONHA, BRAZIL__EAST, BRAZIL__WEST, CET, CST6CDT, CANADA__ATLANTIC, CANADA__CENTRAL, CANADA__EASTERN, CANADA__MOUNTAIN, CANADA__NEWFOUNDLAND, CANADA__PACIFIC, CANADA__SASKATCHEWAN, CANADA__YUKON, CHILE__CONTINENTAL, CHILE__EASTERISLAND, CUBA, EET, EST, EST5EDT, EGYPT, EIRE, ETC__GMT, ETC__GMT_PLUS_0, ETC__GMT_PLUS_1, ETC__GMT_PLUS_10, ETC__GMT_PLUS_11, ETC__GMT_PLUS_12, ETC__GMT_PLUS_2, ETC__GMT_PLUS_3, ETC__GMT_PLUS_4, ETC__GMT_PLUS_5, ETC__GMT_PLUS_6, ETC__GMT_PLUS_7, ETC__GMT_PLUS_8, ETC__GMT_PLUS_9, ETC__GMT_MINUS_0, ETC__GMT_MINUS_1, ETC__GMT_MINUS_10, ETC__GMT_MINUS_11, ETC__GMT_MINUS_12, ETC__GMT_MINUS_13, ETC__GMT_MINUS_14, ETC__GMT_MINUS_2, ETC__GMT_MINUS_3, ETC__GMT_MINUS_4, ETC__GMT_MINUS_5, ETC__GMT_MINUS_6, ETC__GMT_MINUS_7, ETC__GMT_MINUS_8, ETC__GMT_MINUS_9, ETC__GMT0, ETC__GREENWICH, ETC__UCT, ETC__UTC, ETC__UNIVERSAL, ETC__ZULU, EUROPE__AMSTERDAM, EUROPE__ANDORRA, EUROPE__ASTRAKHAN, EUROPE__ATHENS, EUROPE__BELFAST, EUROPE__BELGRADE, EUROPE__BERLIN, EUROPE__BRATISLAVA, EUROPE__BRUSSELS, EUROPE__BUCHAREST, EUROPE__BUDAPEST, EUROPE__BUSINGEN, EUROPE__CHISINAU, EUROPE__COPENHAGEN, EUROPE__DUBLIN, EUROPE__GIBRALTAR, EUROPE__GUERNSEY, EUROPE__HELSINKI, EUROPE__ISLE_OF_MAN, EUROPE__ISTANBUL, EUROPE__JERSEY, EUROPE__KALININGRAD, EUROPE__KIEV, EUROPE__KYIV, EUROPE__KIROV, EUROPE__LISBON, EUROPE__LJUBLJANA, EUROPE__LONDON, EUROPE__LUXEMBOURG, EUROPE__MADRID, EUROPE__MALTA, EUROPE__MARIEHAMN, EUROPE__MINSK, EUROPE__MONACO, EUROPE__MOSCOW, EUROPE__NICOSIA, EUROPE__OSLO, EUROPE__PARIS, EUROPE__PODGORICA, EUROPE__PRAGUE, EUROPE__RIGA, EUROPE__ROME, EUROPE__SAMARA, EUROPE__SAN_MARINO, EUROPE__SARAJEVO, EUROPE__SARATOV, EUROPE__SIMFEROPOL, EUROPE__SKOPJE, EUROPE__SOFIA, EUROPE__STOCKHOLM, EUROPE__TALLINN, EUROPE__TIRANE, EUROPE__TIRASPOL, EUROPE__ULYANOVSK, EUROPE__UZHGOROD, EUROPE__VADUZ, EUROPE__VATICAN, EUROPE__VIENNA, EUROPE__VILNIUS, EUROPE__VOLGOGRAD, EUROPE__WARSAW, EUROPE__ZAGREB, EUROPE__ZAPOROZHYE, EUROPE__ZURICH, GB, GB_EIRE, GMT, GMT_PLUS_0, GMT_MINUS_0, GMT0, GREENWICH, HST, HONGKONG, ICELAND, INDIAN__ANTANANARIVO, INDIAN__CHAGOS, INDIAN__CHRISTMAS, INDIAN__COCOS, INDIAN__COMORO, INDIAN__KERGUELEN, INDIAN__MAHE, INDIAN__MALDIVES, INDIAN__MAURITIUS, INDIAN__MAYOTTE, INDIAN__REUNION, IRAN, ISRAEL, JAMAICA, JAPAN, KWAJALEIN, LIBYA, MET, MST, MST7MDT, MEXICO__BAJANORTE, MEXICO__BAJASUR, MEXICO__GENERAL, NZ, NZ_CHAT, NAVAJO, PRC, PST8PDT, PACIFIC__APIA, PACIFIC__AUCKLAND, PACIFIC__BOUGAINVILLE, PACIFIC__CHATHAM, PACIFIC__CHUUK, PACIFIC__EASTER, PACIFIC__EFATE, PACIFIC__ENDERBURY, PACIFIC__FAKAOFO, PACIFIC__FIJI, PACIFIC__FUNAFUTI, PACIFIC__GALAPAGOS, PACIFIC__GAMBIER, PACIFIC__GUADALCANAL, PACIFIC__GUAM, PACIFIC__HONOLULU, PACIFIC__JOHNSTON, PACIFIC__KANTON, PACIFIC__KIRITIMATI, PACIFIC__KOSRAE, PACIFIC__KWAJALEIN, PACIFIC__MAJURO, PACIFIC__MARQUESAS, PACIFIC__MIDWAY, PACIFIC__NAURU, PACIFIC__NIUE, PACIFIC__NORFOLK, PACIFIC__NOUMEA, PACIFIC__PAGO_PAGO, PACIFIC__PALAU, PACIFIC__PITCAIRN, PACIFIC__POHNPEI, PACIFIC__PONAPE, PACIFIC__PORT_MORESBY, PACIFIC__RAROTONGA, PACIFIC__SAIPAN, PACIFIC__SAMOA, PACIFIC__TAHITI, PACIFIC__TARAWA, PACIFIC__TONGATAPU, PACIFIC__TRUK, PACIFIC__WAKE, PACIFIC__WALLIS, PACIFIC__YAP, POLAND, PORTUGAL, ROC, ROK, SINGAPORE, TURKEY, UCT, US__ALASKA, US__ALEUTIAN, US__ARIZONA, US__CENTRAL, US__EAST_INDIANA, US__EASTERN, US__HAWAII, US__INDIANA_STARKE, US__MICHIGAN, US__MOUNTAIN, US__PACIFIC, US__PACIFIC_NEW, US__SAMOA, UTC, UNIVERSAL, W_SU, WET, ZULU};
    }

    @JvmStatic
    public static final TimeZone fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<TimeZone> getEntries() {
        return $ENTRIES;
    }

    public static TimeZone valueOf(String str) {
        return (TimeZone) Enum.valueOf(TimeZone.class, str);
    }

    public static TimeZone[] values() {
        return (TimeZone[]) $VALUES.clone();
    }

    private TimeZone(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final TimeZone timeZone = new TimeZone("TIME_ZONE_INVALID", 0, 0);
        TIME_ZONE_INVALID = timeZone;
        AFRICA__ABIDJAN = new TimeZone("AFRICA__ABIDJAN", 1, 81);
        AFRICA__ACCRA = new TimeZone("AFRICA__ACCRA", 2, 82);
        AFRICA__ADDIS_ABABA = new TimeZone("AFRICA__ADDIS_ABABA", 3, 83);
        AFRICA__ALGIERS = new TimeZone("AFRICA__ALGIERS", 4, 84);
        AFRICA__ASMARA = new TimeZone("AFRICA__ASMARA", 5, 85);
        AFRICA__ASMERA = new TimeZone("AFRICA__ASMERA", 6, 86);
        AFRICA__BAMAKO = new TimeZone("AFRICA__BAMAKO", 7, 87);
        AFRICA__BANGUI = new TimeZone("AFRICA__BANGUI", 8, 88);
        AFRICA__BANJUL = new TimeZone("AFRICA__BANJUL", 9, 89);
        AFRICA__BISSAU = new TimeZone("AFRICA__BISSAU", 10, 90);
        AFRICA__BLANTYRE = new TimeZone("AFRICA__BLANTYRE", 11, 91);
        AFRICA__BRAZZAVILLE = new TimeZone("AFRICA__BRAZZAVILLE", 12, 92);
        AFRICA__BUJUMBURA = new TimeZone("AFRICA__BUJUMBURA", 13, 93);
        AFRICA__CAIRO = new TimeZone("AFRICA__CAIRO", 14, 94);
        AFRICA__CASABLANCA = new TimeZone("AFRICA__CASABLANCA", 15, 95);
        AFRICA__CEUTA = new TimeZone("AFRICA__CEUTA", 16, 96);
        AFRICA__CONAKRY = new TimeZone("AFRICA__CONAKRY", 17, 97);
        AFRICA__DAKAR = new TimeZone("AFRICA__DAKAR", 18, 98);
        AFRICA__DAR_ES_SALAAM = new TimeZone("AFRICA__DAR_ES_SALAAM", 19, 99);
        AFRICA__DJIBOUTI = new TimeZone("AFRICA__DJIBOUTI", 20, 100);
        AFRICA__DOUALA = new TimeZone("AFRICA__DOUALA", 21, 101);
        AFRICA__EL_AAIUN = new TimeZone("AFRICA__EL_AAIUN", 22, 102);
        AFRICA__FREETOWN = new TimeZone("AFRICA__FREETOWN", 23, 103);
        AFRICA__GABORONE = new TimeZone("AFRICA__GABORONE", 24, 104);
        AFRICA__HARARE = new TimeZone("AFRICA__HARARE", 25, WinError.ERROR_SEM_OWNER_DIED);
        AFRICA__JOHANNESBURG = new TimeZone("AFRICA__JOHANNESBURG", 26, WinError.ERROR_SEM_USER_LIMIT);
        AFRICA__JUBA = new TimeZone("AFRICA__JUBA", 27, WinError.ERROR_DISK_CHANGE);
        AFRICA__KAMPALA = new TimeZone("AFRICA__KAMPALA", 28, 108);
        AFRICA__KHARTOUM = new TimeZone("AFRICA__KHARTOUM", 29, 109);
        AFRICA__KIGALI = new TimeZone("AFRICA__KIGALI", 30, 110);
        AFRICA__KINSHASA = new TimeZone("AFRICA__KINSHASA", 31, WinError.ERROR_BUFFER_OVERFLOW);
        AFRICA__LAGOS = new TimeZone("AFRICA__LAGOS", 32, 112);
        AFRICA__LIBREVILLE = new TimeZone("AFRICA__LIBREVILLE", 33, WinError.ERROR_NO_MORE_SEARCH_HANDLES);
        AFRICA__LOME = new TimeZone("AFRICA__LOME", 34, WinError.ERROR_INVALID_TARGET_HANDLE);
        AFRICA__LUANDA = new TimeZone("AFRICA__LUANDA", 35, 115);
        AFRICA__LUBUMBASHI = new TimeZone("AFRICA__LUBUMBASHI", 36, 116);
        AFRICA__LUSAKA = new TimeZone("AFRICA__LUSAKA", 37, WinError.ERROR_INVALID_CATEGORY);
        AFRICA__MALABO = new TimeZone("AFRICA__MALABO", 38, WinError.ERROR_INVALID_VERIFY_SWITCH);
        AFRICA__MAPUTO = new TimeZone("AFRICA__MAPUTO", 39, WinError.ERROR_BAD_DRIVER_LEVEL);
        AFRICA__MASERU = new TimeZone("AFRICA__MASERU", 40, WinError.ERROR_CALL_NOT_IMPLEMENTED);
        AFRICA__MBABANE = new TimeZone("AFRICA__MBABANE", 41, WinError.ERROR_SEM_TIMEOUT);
        AFRICA__MOGADISHU = new TimeZone("AFRICA__MOGADISHU", 42, 122);
        AFRICA__MONROVIA = new TimeZone("AFRICA__MONROVIA", 43, 123);
        AFRICA__NAIROBI = new TimeZone("AFRICA__NAIROBI", 44, WinError.ERROR_INVALID_LEVEL);
        AFRICA__NDJAMENA = new TimeZone("AFRICA__NDJAMENA", 45, WinError.ERROR_NO_VOLUME_LABEL);
        AFRICA__NIAMEY = new TimeZone("AFRICA__NIAMEY", 46, 126);
        AFRICA__NOUAKCHOTT = new TimeZone("AFRICA__NOUAKCHOTT", 47, 127);
        AFRICA__OUAGADOUGOU = new TimeZone("AFRICA__OUAGADOUGOU", 48, 128);
        AFRICA__PORTO_NOVO = new TimeZone("AFRICA__PORTO_NOVO", 49, 129);
        AFRICA__SAO_TOME = new TimeZone("AFRICA__SAO_TOME", 50, 130);
        AFRICA__TIMBUKTU = new TimeZone("AFRICA__TIMBUKTU", 51, 131);
        AFRICA__TRIPOLI = new TimeZone("AFRICA__TRIPOLI", 52, WinError.ERROR_SEEK_ON_DEVICE);
        AFRICA__TUNIS = new TimeZone("AFRICA__TUNIS", 53, WinError.ERROR_IS_JOIN_TARGET);
        AFRICA__WINDHOEK = new TimeZone("AFRICA__WINDHOEK", 54, WinError.ERROR_IS_JOINED);
        AMERICA__ADAK = new TimeZone("AMERICA__ADAK", 55, 37);
        AMERICA__ANCHORAGE = new TimeZone("AMERICA__ANCHORAGE", 56, 6);
        AMERICA__ANGUILLA = new TimeZone("AMERICA__ANGUILLA", 57, WinError.ERROR_IS_SUBSTED);
        AMERICA__ANTIGUA = new TimeZone("AMERICA__ANTIGUA", 58, 136);
        AMERICA__ARAGUAINA = new TimeZone("AMERICA__ARAGUAINA", 59, WinError.ERROR_NOT_SUBSTED);
        AMERICA__ARGENTINA__BUENOS_AIRES = new TimeZone("AMERICA__ARGENTINA__BUENOS_AIRES", 60, WinError.ERROR_JOIN_TO_JOIN);
        AMERICA__ARGENTINA__CATAMARCA = new TimeZone("AMERICA__ARGENTINA__CATAMARCA", 61, WinError.ERROR_SUBST_TO_SUBST);
        AMERICA__ARGENTINA__COMODRIVADAVIA = new TimeZone("AMERICA__ARGENTINA__COMODRIVADAVIA", 62, WinError.ERROR_JOIN_TO_SUBST);
        AMERICA__ARGENTINA__CORDOBA = new TimeZone("AMERICA__ARGENTINA__CORDOBA", 63, WinError.ERROR_SUBST_TO_JOIN);
        AMERICA__ARGENTINA__JUJUY = new TimeZone("AMERICA__ARGENTINA__JUJUY", 64, 142);
        AMERICA__ARGENTINA__LA_RIOJA = new TimeZone("AMERICA__ARGENTINA__LA_RIOJA", 65, WinError.ERROR_SAME_DRIVE);
        AMERICA__ARGENTINA__MENDOZA = new TimeZone("AMERICA__ARGENTINA__MENDOZA", 66, WinError.ERROR_DIR_NOT_ROOT);
        AMERICA__ARGENTINA__RIO_GALLEGOS = new TimeZone("AMERICA__ARGENTINA__RIO_GALLEGOS", 67, WinError.ERROR_DIR_NOT_EMPTY);
        AMERICA__ARGENTINA__SALTA = new TimeZone("AMERICA__ARGENTINA__SALTA", 68, WinError.ERROR_IS_SUBST_PATH);
        AMERICA__ARGENTINA__SAN_JUAN = new TimeZone("AMERICA__ARGENTINA__SAN_JUAN", 69, WinError.ERROR_IS_JOIN_PATH);
        AMERICA__ARGENTINA__SAN_LUIS = new TimeZone("AMERICA__ARGENTINA__SAN_LUIS", 70, WinError.ERROR_PATH_BUSY);
        AMERICA__ARGENTINA__TUCUMAN = new TimeZone("AMERICA__ARGENTINA__TUCUMAN", 71, WinError.ERROR_IS_SUBST_TARGET);
        AMERICA__ARGENTINA__USHUAIA = new TimeZone("AMERICA__ARGENTINA__USHUAIA", 72, WinError.ERROR_SYSTEM_TRACE);
        AMERICA__ARUBA = new TimeZone("AMERICA__ARUBA", 73, WinError.ERROR_INVALID_EVENT_COUNT);
        AMERICA__ASUNCION = new TimeZone("AMERICA__ASUNCION", 74, WinError.ERROR_TOO_MANY_MUXWAITERS);
        AMERICA__ATIKOKAN = new TimeZone("AMERICA__ATIKOKAN", 75, 56);
        AMERICA__ATKA = new TimeZone("AMERICA__ATKA", 76, WinError.ERROR_INVALID_LIST_FORMAT);
        AMERICA__BAHIA = new TimeZone("AMERICA__BAHIA", 77, WinError.ERROR_LABEL_TOO_LONG);
        AMERICA__BAHIA_BANDERAS = new TimeZone("AMERICA__BAHIA_BANDERAS", 78, 155);
        AMERICA__BARBADOS = new TimeZone("AMERICA__BARBADOS", 79, WinError.ERROR_SIGNAL_REFUSED);
        AMERICA__BELEM = new TimeZone("AMERICA__BELEM", 80, WinError.ERROR_DISCARDED);
        AMERICA__BELIZE = new TimeZone("AMERICA__BELIZE", 81, WinError.ERROR_NOT_LOCKED);
        AMERICA__BLANC_SABLON = new TimeZone("AMERICA__BLANC_SABLON", 82, 57);
        AMERICA__BOA_VISTA = new TimeZone("AMERICA__BOA_VISTA", 83, WinError.ERROR_BAD_THREADID_ADDR);
        AMERICA__BOGOTA = new TimeZone("AMERICA__BOGOTA", 84, 160);
        AMERICA__BOISE = new TimeZone("AMERICA__BOISE", 85, 38);
        AMERICA__BUENOS_AIRES = new TimeZone("AMERICA__BUENOS_AIRES", 86, 161);
        AMERICA__CAMBRIDGE_BAY = new TimeZone("AMERICA__CAMBRIDGE_BAY", 87, 58);
        AMERICA__CAMPO_GRANDE = new TimeZone("AMERICA__CAMPO_GRANDE", 88, 162);
        AMERICA__CANCUN = new TimeZone("AMERICA__CANCUN", 89, WinUser.VK_RCONTROL);
        AMERICA__CARACAS = new TimeZone("AMERICA__CARACAS", 90, 164);
        AMERICA__CATAMARCA = new TimeZone("AMERICA__CATAMARCA", 91, WinUser.VK_RMENU);
        AMERICA__CAYENNE = new TimeZone("AMERICA__CAYENNE", 92, 166);
        AMERICA__CAYMAN = new TimeZone("AMERICA__CAYMAN", 93, WinError.ERROR_LOCK_FAILED);
        AMERICA__CHICAGO = new TimeZone("AMERICA__CHICAGO", 94, 5);
        AMERICA__CHIHUAHUA = new TimeZone("AMERICA__CHIHUAHUA", 95, 168);
        AMERICA__CIUDAD_JUAREZ = new TimeZone("AMERICA__CIUDAD_JUAREZ", 96, WinError.ERROR_LOST_WRITEBEHIND_DATA);
        AMERICA__CORAL_HARBOUR = new TimeZone("AMERICA__CORAL_HARBOUR", 97, 59);
        AMERICA__CORDOBA = new TimeZone("AMERICA__CORDOBA", 98, 169);
        AMERICA__COSTA_RICA = new TimeZone("AMERICA__COSTA_RICA", 99, WinError.ERROR_BUSY);
        AMERICA__CRESTON = new TimeZone("AMERICA__CRESTON", 100, 171);
        AMERICA__CUIABA = new TimeZone("AMERICA__CUIABA", 101, 172);
        AMERICA__CURACAO = new TimeZone("AMERICA__CURACAO", 102, WinError.ERROR_CANCEL_VIOLATION);
        AMERICA__DANMARKSHAVN = new TimeZone("AMERICA__DANMARKSHAVN", 103, WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED);
        AMERICA__DAWSON = new TimeZone("AMERICA__DAWSON", 104, 60);
        AMERICA__DAWSON_CREEK = new TimeZone("AMERICA__DAWSON_CREEK", WinError.ERROR_SEM_OWNER_DIED, 62);
        AMERICA__DENVER = new TimeZone("AMERICA__DENVER", WinError.ERROR_SEM_USER_LIMIT, 4);
        AMERICA__DETROIT = new TimeZone("AMERICA__DETROIT", WinError.ERROR_DISK_CHANGE, 8);
        AMERICA__DOMINICA = new TimeZone("AMERICA__DOMINICA", 108, 175);
        AMERICA__EDMONTON = new TimeZone("AMERICA__EDMONTON", 109, 9);
        AMERICA__EIRUNEPE = new TimeZone("AMERICA__EIRUNEPE", 110, 176);
        AMERICA__EL_SALVADOR = new TimeZone("AMERICA__EL_SALVADOR", WinError.ERROR_BUFFER_OVERFLOW, 177);
        AMERICA__ENSENADA = new TimeZone("AMERICA__ENSENADA", 112, 178);
        AMERICA__FORT_NELSON = new TimeZone("AMERICA__FORT_NELSON", WinError.ERROR_NO_MORE_SEARCH_HANDLES, 179);
        AMERICA__FORT_WAYNE = new TimeZone("AMERICA__FORT_WAYNE", WinError.ERROR_INVALID_TARGET_HANDLE, WinError.ERROR_INVALID_SEGMENT_NUMBER);
        AMERICA__FORTALEZA = new TimeZone("AMERICA__FORTALEZA", 115, 181);
        AMERICA__GLACE_BAY = new TimeZone("AMERICA__GLACE_BAY", 116, 63);
        AMERICA__GODTHAB = new TimeZone("AMERICA__GODTHAB", WinError.ERROR_INVALID_CATEGORY, WinError.ERROR_INVALID_ORDINAL);
        AMERICA__GOOSE_BAY = new TimeZone("AMERICA__GOOSE_BAY", WinError.ERROR_INVALID_VERIFY_SWITCH, 64);
        AMERICA__GRAND_TURK = new TimeZone("AMERICA__GRAND_TURK", WinError.ERROR_BAD_DRIVER_LEVEL, WinError.ERROR_ALREADY_EXISTS);
        AMERICA__GRENADA = new TimeZone("AMERICA__GRENADA", WinError.ERROR_CALL_NOT_IMPLEMENTED, 184);
        AMERICA__GUADELOUPE = new TimeZone("AMERICA__GUADELOUPE", WinError.ERROR_SEM_TIMEOUT, 185);
        AMERICA__GUATEMALA = new TimeZone("AMERICA__GUATEMALA", 122, WinError.ERROR_INVALID_FLAG_NUMBER);
        AMERICA__GUAYAQUIL = new TimeZone("AMERICA__GUAYAQUIL", 123, WinError.ERROR_SEM_NOT_FOUND);
        AMERICA__GUYANA = new TimeZone("AMERICA__GUYANA", WinError.ERROR_INVALID_LEVEL, WinError.ERROR_INVALID_STARTING_CODESEG);
        AMERICA__HALIFAX = new TimeZone("AMERICA__HALIFAX", WinError.ERROR_NO_VOLUME_LABEL, 10);
        AMERICA__HAVANA = new TimeZone("AMERICA__HAVANA", 126, WinError.ERROR_INVALID_STACKSEG);
        AMERICA__HERMOSILLO = new TimeZone("AMERICA__HERMOSILLO", 127, WinError.ERROR_INVALID_MODULETYPE);
        AMERICA__INDIANA__INDIANAPOLIS = new TimeZone("AMERICA__INDIANA__INDIANAPOLIS", 128, 40);
        AMERICA__INDIANA__KNOX = new TimeZone("AMERICA__INDIANA__KNOX", 129, 41);
        AMERICA__INDIANA__MARENGO = new TimeZone("AMERICA__INDIANA__MARENGO", 130, 42);
        AMERICA__INDIANA__PETERSBURG = new TimeZone("AMERICA__INDIANA__PETERSBURG", 131, 43);
        AMERICA__INDIANA__TELL_CITY = new TimeZone("AMERICA__INDIANA__TELL_CITY", WinError.ERROR_SEEK_ON_DEVICE, 44);
        AMERICA__INDIANA__VEVAY = new TimeZone("AMERICA__INDIANA__VEVAY", WinError.ERROR_IS_JOIN_TARGET, 45);
        AMERICA__INDIANA__VINCENNES = new TimeZone("AMERICA__INDIANA__VINCENNES", WinError.ERROR_IS_JOINED, 46);
        AMERICA__INDIANA__WINAMAC = new TimeZone("AMERICA__INDIANA__WINAMAC", WinError.ERROR_IS_SUBSTED, 47);
        AMERICA__INDIANAPOLIS = new TimeZone("AMERICA__INDIANAPOLIS", 136, 191);
        AMERICA__INUVIK = new TimeZone("AMERICA__INUVIK", WinError.ERROR_NOT_SUBSTED, 192);
        AMERICA__IQALUIT = new TimeZone("AMERICA__IQALUIT", WinError.ERROR_JOIN_TO_JOIN, 65);
        AMERICA__JAMAICA = new TimeZone("AMERICA__JAMAICA", WinError.ERROR_SUBST_TO_SUBST, WinError.ERROR_BAD_EXE_FORMAT);
        AMERICA__JUJUY = new TimeZone("AMERICA__JUJUY", WinError.ERROR_JOIN_TO_SUBST, WinError.ERROR_ITERATED_DATA_EXCEEDS_64k);
        AMERICA__JUNEAU = new TimeZone("AMERICA__JUNEAU", WinError.ERROR_SUBST_TO_JOIN, 39);
        AMERICA__KENTUCKY__LOUISVILLE = new TimeZone("AMERICA__KENTUCKY__LOUISVILLE", 142, 48);
        AMERICA__KENTUCKY__MONTICELLO = new TimeZone("AMERICA__KENTUCKY__MONTICELLO", WinError.ERROR_SAME_DRIVE, 49);
        AMERICA__KNOX_IN = new TimeZone("AMERICA__KNOX_IN", WinError.ERROR_DIR_NOT_ROOT, WinError.ERROR_INVALID_MINALLOCSIZE);
        AMERICA__KRALENDIJK = new TimeZone("AMERICA__KRALENDIJK", WinError.ERROR_DIR_NOT_EMPTY, WinError.ERROR_DYNLINK_FROM_INVALID_RING);
        AMERICA__LA_PAZ = new TimeZone("AMERICA__LA_PAZ", WinError.ERROR_IS_SUBST_PATH, WinError.ERROR_IOPL_NOT_ENABLED);
        AMERICA__LIMA = new TimeZone("AMERICA__LIMA", WinError.ERROR_IS_JOIN_PATH, WinError.ERROR_INVALID_SEGDPL);
        AMERICA__LOS_ANGELES = new TimeZone("AMERICA__LOS_ANGELES", WinError.ERROR_PATH_BUSY, 2);
        AMERICA__LOUISVILLE = new TimeZone("AMERICA__LOUISVILLE", WinError.ERROR_IS_SUBST_TARGET, WinError.ERROR_AUTODATASEG_EXCEEDS_64k);
        AMERICA__LOWER_PRINCES = new TimeZone("AMERICA__LOWER_PRINCES", WinError.ERROR_SYSTEM_TRACE, 200);
        AMERICA__MACEIO = new TimeZone("AMERICA__MACEIO", WinError.ERROR_INVALID_EVENT_COUNT, 201);
        AMERICA__MANAGUA = new TimeZone("AMERICA__MANAGUA", WinError.ERROR_TOO_MANY_MUXWAITERS, 202);
        AMERICA__MANAUS = new TimeZone("AMERICA__MANAUS", WinError.ERROR_INVALID_LIST_FORMAT, 203);
        AMERICA__MARIGOT = new TimeZone("AMERICA__MARIGOT", WinError.ERROR_LABEL_TOO_LONG, HttpStatus.SC_NO_CONTENT);
        AMERICA__MARTINIQUE = new TimeZone("AMERICA__MARTINIQUE", 155, 205);
        AMERICA__MATAMOROS = new TimeZone("AMERICA__MATAMOROS", WinError.ERROR_SIGNAL_REFUSED, 206);
        AMERICA__MAZATLAN = new TimeZone("AMERICA__MAZATLAN", WinError.ERROR_DISCARDED, 207);
        AMERICA__MENDOZA = new TimeZone("AMERICA__MENDOZA", WinError.ERROR_NOT_LOCKED, WinError.ERROR_META_EXPANSION_TOO_LONG);
        AMERICA__MENOMINEE = new TimeZone("AMERICA__MENOMINEE", WinError.ERROR_BAD_THREADID_ADDR, 50);
        AMERICA__MERIDA = new TimeZone("AMERICA__MERIDA", 160, WinError.ERROR_INVALID_SIGNAL_NUMBER);
        AMERICA__METLAKATLA = new TimeZone("AMERICA__METLAKATLA", 161, WinError.ERROR_THREAD_1_INACTIVE);
        AMERICA__MEXICO_CITY = new TimeZone("AMERICA__MEXICO_CITY", 162, 11);
        AMERICA__MIQUELON = new TimeZone("AMERICA__MIQUELON", WinUser.VK_RCONTROL, 211);
        AMERICA__MONCTON = new TimeZone("AMERICA__MONCTON", 164, 66);
        AMERICA__MONTERREY = new TimeZone("AMERICA__MONTERREY", WinUser.VK_RMENU, WinError.ERROR_LOCKED);
        AMERICA__MONTEVIDEO = new TimeZone("AMERICA__MONTEVIDEO", 166, 213);
        AMERICA__MONTREAL = new TimeZone("AMERICA__MONTREAL", WinError.ERROR_LOCK_FAILED, 67);
        AMERICA__MONTSERRAT = new TimeZone("AMERICA__MONTSERRAT", 168, WinError.ERROR_TOO_MANY_MODULES);
        AMERICA__NASSAU = new TimeZone("AMERICA__NASSAU", 169, WinError.ERROR_NESTING_NOT_ALLOWED);
        AMERICA__NEW_YORK = new TimeZone("AMERICA__NEW_YORK", WinError.ERROR_BUSY, 3);
        AMERICA__NIPIGON = new TimeZone("AMERICA__NIPIGON", 171, WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH);
        AMERICA__NOME = new TimeZone("AMERICA__NOME", 172, 54);
        AMERICA__NORONHA = new TimeZone("AMERICA__NORONHA", WinError.ERROR_CANCEL_VIOLATION, WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY);
        AMERICA__NORTH_DAKOTA__BEULAH = new TimeZone("AMERICA__NORTH_DAKOTA__BEULAH", WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED, 51);
        AMERICA__NORTH_DAKOTA__CENTER = new TimeZone("AMERICA__NORTH_DAKOTA__CENTER", 175, 52);
        AMERICA__NORTH_DAKOTA__NEW_SALEM = new TimeZone("AMERICA__NORTH_DAKOTA__NEW_SALEM", 176, 53);
        AMERICA__NUUK = new TimeZone("AMERICA__NUUK", 177, WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY);
        AMERICA__OJINAGA = new TimeZone("AMERICA__OJINAGA", 178, 219);
        AMERICA__PANAMA = new TimeZone("AMERICA__PANAMA", 179, WinError.ERROR_FILE_CHECKED_OUT);
        AMERICA__PANGNIRTUNG = new TimeZone("AMERICA__PANGNIRTUNG", WinError.ERROR_INVALID_SEGMENT_NUMBER, WinError.ERROR_CHECKOUT_REQUIRED);
        AMERICA__PARAMARIBO = new TimeZone("AMERICA__PARAMARIBO", 181, WinError.ERROR_BAD_FILE_TYPE);
        AMERICA__PHOENIX = new TimeZone("AMERICA__PHOENIX", WinError.ERROR_INVALID_ORDINAL, 7);
        AMERICA__PORT_AU_PRINCE = new TimeZone("AMERICA__PORT_AU_PRINCE", WinError.ERROR_ALREADY_EXISTS, WinError.ERROR_FILE_TOO_LARGE);
        AMERICA__PORT_OF_SPAIN = new TimeZone("AMERICA__PORT_OF_SPAIN", 184, WinError.ERROR_FORMS_AUTH_REQUIRED);
        AMERICA__PORTO_ACRE = new TimeZone("AMERICA__PORTO_ACRE", 185, WinError.ERROR_VIRUS_INFECTED);
        AMERICA__PORTO_VELHO = new TimeZone("AMERICA__PORTO_VELHO", WinError.ERROR_INVALID_FLAG_NUMBER, WinError.ERROR_VIRUS_DELETED);
        AMERICA__PUERTO_RICO = new TimeZone("AMERICA__PUERTO_RICO", WinError.ERROR_SEM_NOT_FOUND, 227);
        AMERICA__PUNTA_ARENAS = new TimeZone("AMERICA__PUNTA_ARENAS", WinError.ERROR_INVALID_STARTING_CODESEG, 228);
        AMERICA__RAINY_RIVER = new TimeZone("AMERICA__RAINY_RIVER", WinError.ERROR_INVALID_STACKSEG, 68);
        AMERICA__RANKIN_INLET = new TimeZone("AMERICA__RANKIN_INLET", WinError.ERROR_INVALID_MODULETYPE, 69);
        AMERICA__RECIFE = new TimeZone("AMERICA__RECIFE", 191, WinError.ERROR_PIPE_LOCAL);
        AMERICA__REGINA = new TimeZone("AMERICA__REGINA", 192, 12);
        AMERICA__RESOLUTE = new TimeZone("AMERICA__RESOLUTE", WinError.ERROR_BAD_EXE_FORMAT, 70);
        AMERICA__RIO_BRANCO = new TimeZone("AMERICA__RIO_BRANCO", WinError.ERROR_ITERATED_DATA_EXCEEDS_64k, WinError.ERROR_BAD_PIPE);
        AMERICA__ROSARIO = new TimeZone("AMERICA__ROSARIO", WinError.ERROR_INVALID_MINALLOCSIZE, WinError.ERROR_PIPE_BUSY);
        AMERICA__SANTA_ISABEL = new TimeZone("AMERICA__SANTA_ISABEL", WinError.ERROR_DYNLINK_FROM_INVALID_RING, WinError.ERROR_NO_DATA);
        AMERICA__SANTAREM = new TimeZone("AMERICA__SANTAREM", WinError.ERROR_IOPL_NOT_ENABLED, WinError.ERROR_PIPE_NOT_CONNECTED);
        AMERICA__SANTIAGO = new TimeZone("AMERICA__SANTIAGO", WinError.ERROR_INVALID_SEGDPL, WinError.ERROR_MORE_DATA);
        AMERICA__SANTO_DOMINGO = new TimeZone("AMERICA__SANTO_DOMINGO", WinError.ERROR_AUTODATASEG_EXCEEDS_64k, 235);
        AMERICA__SAO_PAULO = new TimeZone("AMERICA__SAO_PAULO", 200, 13);
        AMERICA__SCORESBYSUND = new TimeZone("AMERICA__SCORESBYSUND", 201, 236);
        AMERICA__SHIPROCK = new TimeZone("AMERICA__SHIPROCK", 202, 237);
        AMERICA__SITKA = new TimeZone("AMERICA__SITKA", 203, 238);
        AMERICA__ST_BARTHELEMY = new TimeZone("AMERICA__ST_BARTHELEMY", HttpStatus.SC_NO_CONTENT, 239);
        AMERICA__ST_JOHNS = new TimeZone("AMERICA__ST_JOHNS", 205, 71);
        AMERICA__ST_KITTS = new TimeZone("AMERICA__ST_KITTS", 206, 240);
        AMERICA__ST_LUCIA = new TimeZone("AMERICA__ST_LUCIA", 207, 241);
        AMERICA__ST_THOMAS = new TimeZone("AMERICA__ST_THOMAS", WinError.ERROR_META_EXPANSION_TOO_LONG, 242);
        AMERICA__ST_VINCENT = new TimeZone("AMERICA__ST_VINCENT", WinError.ERROR_INVALID_SIGNAL_NUMBER, 243);
        AMERICA__SWIFT_CURRENT = new TimeZone("AMERICA__SWIFT_CURRENT", WinError.ERROR_THREAD_1_INACTIVE, 72);
        AMERICA__TEGUCIGALPA = new TimeZone("AMERICA__TEGUCIGALPA", 211, 244);
        AMERICA__THULE = new TimeZone("AMERICA__THULE", WinError.ERROR_LOCKED, 245);
        AMERICA__THUNDER_BAY = new TimeZone("AMERICA__THUNDER_BAY", 213, 73);
        AMERICA__TIJUANA = new TimeZone("AMERICA__TIJUANA", WinError.ERROR_TOO_MANY_MODULES, 246);
        AMERICA__TORONTO = new TimeZone("AMERICA__TORONTO", WinError.ERROR_NESTING_NOT_ALLOWED, 14);
        AMERICA__TORTOLA = new TimeZone("AMERICA__TORTOLA", WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH, 247);
        AMERICA__VANCOUVER = new TimeZone("AMERICA__VANCOUVER", WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY, 15);
        AMERICA__VIRGIN = new TimeZone("AMERICA__VIRGIN", WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY, 248);
        AMERICA__WHITEHORSE = new TimeZone("AMERICA__WHITEHORSE", 219, 74);
        AMERICA__WINNIPEG = new TimeZone("AMERICA__WINNIPEG", WinError.ERROR_FILE_CHECKED_OUT, 16);
        AMERICA__YAKUTAT = new TimeZone("AMERICA__YAKUTAT", WinError.ERROR_CHECKOUT_REQUIRED, 55);
        AMERICA__YELLOWKNIFE = new TimeZone("AMERICA__YELLOWKNIFE", WinError.ERROR_BAD_FILE_TYPE, 75);
        ANTARCTICA__CASEY = new TimeZone("ANTARCTICA__CASEY", WinError.ERROR_FILE_TOO_LARGE, 249);
        ANTARCTICA__DAVIS = new TimeZone("ANTARCTICA__DAVIS", WinError.ERROR_FORMS_AUTH_REQUIRED, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        ANTARCTICA__DUMONTDURVILLE = new TimeZone("ANTARCTICA__DUMONTDURVILLE", WinError.ERROR_VIRUS_INFECTED, 251);
        ANTARCTICA__MACQUARIE = new TimeZone("ANTARCTICA__MACQUARIE", WinError.ERROR_VIRUS_DELETED, 252);
        ANTARCTICA__MAWSON = new TimeZone("ANTARCTICA__MAWSON", 227, 253);
        ANTARCTICA__MCMURDO = new TimeZone("ANTARCTICA__MCMURDO", 228, WinError.ERROR_INVALID_EA_NAME);
        ANTARCTICA__PALMER = new TimeZone("ANTARCTICA__PALMER", WinError.ERROR_PIPE_LOCAL, 255);
        ANTARCTICA__ROTHERA = new TimeZone("ANTARCTICA__ROTHERA", WinError.ERROR_BAD_PIPE, 256);
        ANTARCTICA__SOUTH_POLE = new TimeZone("ANTARCTICA__SOUTH_POLE", WinError.ERROR_PIPE_BUSY, 257);
        ANTARCTICA__SYOWA = new TimeZone("ANTARCTICA__SYOWA", WinError.ERROR_NO_DATA, 258);
        ANTARCTICA__TROLL = new TimeZone("ANTARCTICA__TROLL", WinError.ERROR_PIPE_NOT_CONNECTED, 259);
        ANTARCTICA__VOSTOK = new TimeZone("ANTARCTICA__VOSTOK", WinError.ERROR_MORE_DATA, 260);
        ARCTIC__LONGYEARBYEN = new TimeZone("ARCTIC__LONGYEARBYEN", 235, WinUser.WM_SYSKEYUP);
        ASIA__ADEN = new TimeZone("ASIA__ADEN", 236, 262);
        ASIA__ALMATY = new TimeZone("ASIA__ALMATY", 237, 263);
        ASIA__AMMAN = new TimeZone("ASIA__AMMAN", 238, 264);
        ASIA__ANADYR = new TimeZone("ASIA__ANADYR", 239, 265);
        ASIA__AQTAU = new TimeZone("ASIA__AQTAU", 240, WinError.ERROR_CANNOT_COPY);
        ASIA__AQTOBE = new TimeZone("ASIA__AQTOBE", 241, WinError.ERROR_DIRECTORY);
        ASIA__ASHGABAT = new TimeZone("ASIA__ASHGABAT", 242, 268);
        ASIA__ASHKHABAD = new TimeZone("ASIA__ASHKHABAD", 243, 269);
        ASIA__ATYRAU = new TimeZone("ASIA__ATYRAU", 244, 270);
        ASIA__BAGHDAD = new TimeZone("ASIA__BAGHDAD", 245, 271);
        ASIA__BAHRAIN = new TimeZone("ASIA__BAHRAIN", 246, 272);
        ASIA__BAKU = new TimeZone("ASIA__BAKU", 247, 273);
        ASIA__BANGKOK = new TimeZone("ASIA__BANGKOK", 248, WinUser.WM_SYSCOMMAND);
        ASIA__BARNAUL = new TimeZone("ASIA__BARNAUL", 249, WinError.ERROR_EAS_DIDNT_FIT);
        ASIA__BEIRUT = new TimeZone("ASIA__BEIRUT", ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, WinError.ERROR_EA_FILE_CORRUPT);
        ASIA__BISHKEK = new TimeZone("ASIA__BISHKEK", 251, WinError.ERROR_EA_TABLE_FULL);
        ASIA__BRUNEI = new TimeZone("ASIA__BRUNEI", 252, WinError.ERROR_INVALID_EA_HANDLE);
        ASIA__CALCUTTA = new TimeZone("ASIA__CALCUTTA", 253, 279);
        ASIA__CHITA = new TimeZone("ASIA__CHITA", WinError.ERROR_INVALID_EA_NAME, 280);
        ASIA__CHOIBALSAN = new TimeZone("ASIA__CHOIBALSAN", 255, 281);
        ASIA__CHONGQING = new TimeZone("ASIA__CHONGQING", 256, WinError.ERROR_EAS_NOT_SUPPORTED);
        ASIA__CHUNGKING = new TimeZone("ASIA__CHUNGKING", 257, 283);
        ASIA__COLOMBO = new TimeZone("ASIA__COLOMBO", 258, 284);
        ASIA__DACCA = new TimeZone("ASIA__DACCA", 259, 285);
        ASIA__DAMASCUS = new TimeZone("ASIA__DAMASCUS", 260, 286);
        ASIA__DHAKA = new TimeZone("ASIA__DHAKA", WinUser.WM_SYSKEYUP, 287);
        ASIA__DILI = new TimeZone("ASIA__DILI", 262, WinError.ERROR_NOT_OWNER);
        ASIA__DUBAI = new TimeZone("ASIA__DUBAI", 263, 289);
        ASIA__DUSHANBE = new TimeZone("ASIA__DUSHANBE", 264, 290);
        ASIA__FAMAGUSTA = new TimeZone("ASIA__FAMAGUSTA", 265, 291);
        ASIA__GAZA = new TimeZone("ASIA__GAZA", WinError.ERROR_CANNOT_COPY, 292);
        ASIA__HARBIN = new TimeZone("ASIA__HARBIN", WinError.ERROR_DIRECTORY, 293);
        ASIA__HEBRON = new TimeZone("ASIA__HEBRON", 268, 294);
        ASIA__HO_CHI_MINH = new TimeZone("ASIA__HO_CHI_MINH", 269, 295);
        ASIA__HONG_KONG = new TimeZone("ASIA__HONG_KONG", 270, 77);
        ASIA__HOVD = new TimeZone("ASIA__HOVD", 271, 296);
        ASIA__IRKUTSK = new TimeZone("ASIA__IRKUTSK", 272, 297);
        ASIA__ISTANBUL = new TimeZone("ASIA__ISTANBUL", 273, WinError.ERROR_TOO_MANY_POSTS);
        ASIA__JAKARTA = new TimeZone("ASIA__JAKARTA", WinUser.WM_SYSCOMMAND, WinError.ERROR_PARTIAL_COPY);
        ASIA__JAYAPURA = new TimeZone("ASIA__JAYAPURA", WinError.ERROR_EAS_DIDNT_FIT, 300);
        ASIA__JERUSALEM = new TimeZone("ASIA__JERUSALEM", WinError.ERROR_EA_FILE_CORRUPT, 17);
        ASIA__KABUL = new TimeZone("ASIA__KABUL", WinError.ERROR_EA_TABLE_FULL, 301);
        ASIA__KAMCHATKA = new TimeZone("ASIA__KAMCHATKA", WinError.ERROR_INVALID_EA_HANDLE, 302);
        ASIA__KARACHI = new TimeZone("ASIA__KARACHI", 279, 303);
        ASIA__KASHGAR = new TimeZone("ASIA__KASHGAR", 280, 304);
        ASIA__KATHMANDU = new TimeZone("ASIA__KATHMANDU", 281, 305);
        ASIA__KATMANDU = new TimeZone("ASIA__KATMANDU", WinError.ERROR_EAS_NOT_SUPPORTED, 306);
        ASIA__KHANDYGA = new TimeZone("ASIA__KHANDYGA", 283, 307);
        ASIA__KOLKATA = new TimeZone("ASIA__KOLKATA", 284, 78);
        ASIA__KRASNOYARSK = new TimeZone("ASIA__KRASNOYARSK", 285, 308);
        ASIA__KUALA_LUMPUR = new TimeZone("ASIA__KUALA_LUMPUR", 286, 309);
        ASIA__KUCHING = new TimeZone("ASIA__KUCHING", 287, 310);
        ASIA__KUWAIT = new TimeZone("ASIA__KUWAIT", WinError.ERROR_NOT_OWNER, 311);
        ASIA__MACAO = new TimeZone("ASIA__MACAO", 289, 312);
        ASIA__MACAU = new TimeZone("ASIA__MACAU", 290, 313);
        ASIA__MAGADAN = new TimeZone("ASIA__MAGADAN", 291, 314);
        ASIA__MAKASSAR = new TimeZone("ASIA__MAKASSAR", 292, 315);
        ASIA__MANILA = new TimeZone("ASIA__MANILA", 293, 80);
        ASIA__MUSCAT = new TimeZone("ASIA__MUSCAT", 294, TypedValues.AttributesType.TYPE_PATH_ROTATE);
        ASIA__NICOSIA = new TimeZone("ASIA__NICOSIA", 295, 317);
        ASIA__NOVOKUZNETSK = new TimeZone("ASIA__NOVOKUZNETSK", 296, 318);
        ASIA__NOVOSIBIRSK = new TimeZone("ASIA__NOVOSIBIRSK", 297, WinNT.SERVICE_TYPE_ALL);
        ASIA__OMSK = new TimeZone("ASIA__OMSK", WinError.ERROR_TOO_MANY_POSTS, 320);
        ASIA__ORAL = new TimeZone("ASIA__ORAL", WinError.ERROR_PARTIAL_COPY, 321);
        ASIA__PHNOM_PENH = new TimeZone("ASIA__PHNOM_PENH", 300, 322);
        ASIA__PONTIANAK = new TimeZone("ASIA__PONTIANAK", 301, 323);
        ASIA__PYONGYANG = new TimeZone("ASIA__PYONGYANG", 302, 324);
        ASIA__QATAR = new TimeZone("ASIA__QATAR", 303, 325);
        ASIA__QOSTANAY = new TimeZone("ASIA__QOSTANAY", 304, 326);
        ASIA__QYZYLORDA = new TimeZone("ASIA__QYZYLORDA", 305, 327);
        ASIA__RANGOON = new TimeZone("ASIA__RANGOON", 306, 328);
        ASIA__RIYADH = new TimeZone("ASIA__RIYADH", 307, 329);
        ASIA__SAIGON = new TimeZone("ASIA__SAIGON", 308, 330);
        ASIA__SAKHALIN = new TimeZone("ASIA__SAKHALIN", 309, 331);
        ASIA__SAMARKAND = new TimeZone("ASIA__SAMARKAND", 310, 332);
        ASIA__SEOUL = new TimeZone("ASIA__SEOUL", 311, 18);
        ASIA__SHANGHAI = new TimeZone("ASIA__SHANGHAI", 312, 19);
        ASIA__SINGAPORE = new TimeZone("ASIA__SINGAPORE", 313, 36);
        ASIA__SREDNEKOLYMSK = new TimeZone("ASIA__SREDNEKOLYMSK", 314, 333);
        ASIA__TAIPEI = new TimeZone("ASIA__TAIPEI", 315, 334);
        ASIA__TASHKENT = new TimeZone("ASIA__TASHKENT", TypedValues.AttributesType.TYPE_PATH_ROTATE, 335);
        ASIA__TBILISI = new TimeZone("ASIA__TBILISI", 317, 336);
        ASIA__TEHRAN = new TimeZone("ASIA__TEHRAN", 318, 337);
        ASIA__TEL_AVIV = new TimeZone("ASIA__TEL_AVIV", WinNT.SERVICE_TYPE_ALL, 338);
        ASIA__THIMBU = new TimeZone("ASIA__THIMBU", 320, 339);
        ASIA__THIMPHU = new TimeZone("ASIA__THIMPHU", 321, 340);
        ASIA__TOKYO = new TimeZone("ASIA__TOKYO", 322, 20);
        ASIA__TOMSK = new TimeZone("ASIA__TOMSK", 323, 341);
        ASIA__UJUNG_PANDANG = new TimeZone("ASIA__UJUNG_PANDANG", 324, 342);
        ASIA__ULAANBAATAR = new TimeZone("ASIA__ULAANBAATAR", 325, 343);
        ASIA__ULAN_BATOR = new TimeZone("ASIA__ULAN_BATOR", 326, 344);
        ASIA__URUMQI = new TimeZone("ASIA__URUMQI", 327, 345);
        ASIA__UST_NERA = new TimeZone("ASIA__UST_NERA", 328, 346);
        ASIA__VIENTIANE = new TimeZone("ASIA__VIENTIANE", 329, 347);
        ASIA__VLADIVOSTOK = new TimeZone("ASIA__VLADIVOSTOK", 330, 348);
        ASIA__YAKUTSK = new TimeZone("ASIA__YAKUTSK", 331, 349);
        ASIA__YANGON = new TimeZone("ASIA__YANGON", 332, WinError.ERROR_FAIL_NOACTION_REBOOT);
        ASIA__YEKATERINBURG = new TimeZone("ASIA__YEKATERINBURG", 333, WinError.ERROR_FAIL_SHUTDOWN);
        ASIA__YEREVAN = new TimeZone("ASIA__YEREVAN", 334, WinError.ERROR_FAIL_RESTART);
        ATLANTIC__AZORES = new TimeZone("ATLANTIC__AZORES", 335, WinError.ERROR_MAX_SESSIONS_REACHED);
        ATLANTIC__BERMUDA = new TimeZone("ATLANTIC__BERMUDA", 336, 354);
        ATLANTIC__CANARY = new TimeZone("ATLANTIC__CANARY", 337, 355);
        ATLANTIC__CAPE_VERDE = new TimeZone("ATLANTIC__CAPE_VERDE", 338, 356);
        ATLANTIC__FAEROE = new TimeZone("ATLANTIC__FAEROE", 339, 357);
        ATLANTIC__FAROE = new TimeZone("ATLANTIC__FAROE", 340, 358);
        ATLANTIC__JAN_MAYEN = new TimeZone("ATLANTIC__JAN_MAYEN", 341, 359);
        ATLANTIC__MADEIRA = new TimeZone("ATLANTIC__MADEIRA", 342, 360);
        ATLANTIC__REYKJAVIK = new TimeZone("ATLANTIC__REYKJAVIK", 343, 361);
        ATLANTIC__SOUTH_GEORGIA = new TimeZone("ATLANTIC__SOUTH_GEORGIA", 344, 362);
        ATLANTIC__ST_HELENA = new TimeZone("ATLANTIC__ST_HELENA", 345, 363);
        ATLANTIC__STANLEY = new TimeZone("ATLANTIC__STANLEY", 346, 364);
        AUSTRALIA__ACT = new TimeZone("AUSTRALIA__ACT", 347, 365);
        AUSTRALIA__ADELAIDE = new TimeZone("AUSTRALIA__ADELAIDE", 348, 21);
        AUSTRALIA__BRISBANE = new TimeZone("AUSTRALIA__BRISBANE", 349, 76);
        AUSTRALIA__BROKEN_HILL = new TimeZone("AUSTRALIA__BROKEN_HILL", WinError.ERROR_FAIL_NOACTION_REBOOT, 366);
        AUSTRALIA__CANBERRA = new TimeZone("AUSTRALIA__CANBERRA", WinError.ERROR_FAIL_SHUTDOWN, 367);
        AUSTRALIA__CURRIE = new TimeZone("AUSTRALIA__CURRIE", WinError.ERROR_FAIL_RESTART, 368);
        AUSTRALIA__DARWIN = new TimeZone("AUSTRALIA__DARWIN", WinError.ERROR_MAX_SESSIONS_REACHED, 369);
        AUSTRALIA__EUCLA = new TimeZone("AUSTRALIA__EUCLA", 354, 370);
        AUSTRALIA__HOBART = new TimeZone("AUSTRALIA__HOBART", 355, 371);
        AUSTRALIA__LHI = new TimeZone("AUSTRALIA__LHI", 356, 372);
        AUSTRALIA__LINDEMAN = new TimeZone("AUSTRALIA__LINDEMAN", 357, 373);
        AUSTRALIA__LORD_HOWE = new TimeZone("AUSTRALIA__LORD_HOWE", 358, 374);
        AUSTRALIA__MELBOURNE = new TimeZone("AUSTRALIA__MELBOURNE", 359, 22);
        AUSTRALIA__NSW = new TimeZone("AUSTRALIA__NSW", 360, 375);
        AUSTRALIA__NORTH = new TimeZone("AUSTRALIA__NORTH", 361, 376);
        AUSTRALIA__PERTH = new TimeZone("AUSTRALIA__PERTH", 362, 377);
        AUSTRALIA__QUEENSLAND = new TimeZone("AUSTRALIA__QUEENSLAND", 363, 378);
        AUSTRALIA__SOUTH = new TimeZone("AUSTRALIA__SOUTH", 364, 379);
        AUSTRALIA__SYDNEY = new TimeZone("AUSTRALIA__SYDNEY", 365, 23);
        AUSTRALIA__TASMANIA = new TimeZone("AUSTRALIA__TASMANIA", 366, 380);
        AUSTRALIA__VICTORIA = new TimeZone("AUSTRALIA__VICTORIA", 367, 381);
        AUSTRALIA__WEST = new TimeZone("AUSTRALIA__WEST", 368, 382);
        AUSTRALIA__YANCOWINNA = new TimeZone("AUSTRALIA__YANCOWINNA", 369, 383);
        BRAZIL__ACRE = new TimeZone("BRAZIL__ACRE", 370, Function.USE_VARARGS);
        BRAZIL__DENORONHA = new TimeZone("BRAZIL__DENORONHA", 371, 385);
        BRAZIL__EAST = new TimeZone("BRAZIL__EAST", 372, 386);
        BRAZIL__WEST = new TimeZone("BRAZIL__WEST", 373, 387);
        CET = new TimeZone("CET", 374, 388);
        CST6CDT = new TimeZone("CST6CDT", 375, 389);
        CANADA__ATLANTIC = new TimeZone("CANADA__ATLANTIC", 376, 390);
        CANADA__CENTRAL = new TimeZone("CANADA__CENTRAL", 377, 391);
        CANADA__EASTERN = new TimeZone("CANADA__EASTERN", 378, 392);
        CANADA__MOUNTAIN = new TimeZone("CANADA__MOUNTAIN", 379, 393);
        CANADA__NEWFOUNDLAND = new TimeZone("CANADA__NEWFOUNDLAND", 380, 394);
        CANADA__PACIFIC = new TimeZone("CANADA__PACIFIC", 381, 395);
        CANADA__SASKATCHEWAN = new TimeZone("CANADA__SASKATCHEWAN", 382, 396);
        CANADA__YUKON = new TimeZone("CANADA__YUKON", 383, 397);
        CHILE__CONTINENTAL = new TimeZone("CHILE__CONTINENTAL", Function.USE_VARARGS, 398);
        CHILE__EASTERISLAND = new TimeZone("CHILE__EASTERISLAND", 385, 399);
        CUBA = new TimeZone("CUBA", 386, 400);
        EET = new TimeZone("EET", 387, 401);
        EST = new TimeZone("EST", 388, 402);
        EST5EDT = new TimeZone("EST5EDT", 389, 403);
        EGYPT = new TimeZone("EGYPT", 390, HttpStatus.SC_NOT_FOUND);
        EIRE = new TimeZone("EIRE", 391, HttpStatus.SC_METHOD_NOT_ALLOWED);
        ETC__GMT = new TimeZone("ETC__GMT", 392, HttpStatus.SC_NOT_ACCEPTABLE);
        ETC__GMT_PLUS_0 = new TimeZone("ETC__GMT_PLUS_0", 393, HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED);
        ETC__GMT_PLUS_1 = new TimeZone("ETC__GMT_PLUS_1", 394, HttpStatus.SC_REQUEST_TIMEOUT);
        ETC__GMT_PLUS_10 = new TimeZone("ETC__GMT_PLUS_10", 395, HttpStatus.SC_CONFLICT);
        ETC__GMT_PLUS_11 = new TimeZone("ETC__GMT_PLUS_11", 396, HttpStatus.SC_GONE);
        ETC__GMT_PLUS_12 = new TimeZone("ETC__GMT_PLUS_12", 397, HttpStatus.SC_LENGTH_REQUIRED);
        ETC__GMT_PLUS_2 = new TimeZone("ETC__GMT_PLUS_2", 398, HttpStatus.SC_PRECONDITION_FAILED);
        ETC__GMT_PLUS_3 = new TimeZone("ETC__GMT_PLUS_3", 399, HttpStatus.SC_REQUEST_TOO_LONG);
        ETC__GMT_PLUS_4 = new TimeZone("ETC__GMT_PLUS_4", 400, HttpStatus.SC_REQUEST_URI_TOO_LONG);
        ETC__GMT_PLUS_5 = new TimeZone("ETC__GMT_PLUS_5", 401, HttpStatus.SC_UNSUPPORTED_MEDIA_TYPE);
        ETC__GMT_PLUS_6 = new TimeZone("ETC__GMT_PLUS_6", 402, 416);
        ETC__GMT_PLUS_7 = new TimeZone("ETC__GMT_PLUS_7", 403, HttpStatus.SC_EXPECTATION_FAILED);
        ETC__GMT_PLUS_8 = new TimeZone("ETC__GMT_PLUS_8", HttpStatus.SC_NOT_FOUND, 418);
        ETC__GMT_PLUS_9 = new TimeZone("ETC__GMT_PLUS_9", HttpStatus.SC_METHOD_NOT_ALLOWED, HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE);
        ETC__GMT_MINUS_0 = new TimeZone("ETC__GMT_MINUS_0", HttpStatus.SC_NOT_ACCEPTABLE, 420);
        ETC__GMT_MINUS_1 = new TimeZone("ETC__GMT_MINUS_1", HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED, 421);
        ETC__GMT_MINUS_10 = new TimeZone("ETC__GMT_MINUS_10", HttpStatus.SC_REQUEST_TIMEOUT, 422);
        ETC__GMT_MINUS_11 = new TimeZone("ETC__GMT_MINUS_11", HttpStatus.SC_CONFLICT, 423);
        ETC__GMT_MINUS_12 = new TimeZone("ETC__GMT_MINUS_12", HttpStatus.SC_GONE, 424);
        ETC__GMT_MINUS_13 = new TimeZone("ETC__GMT_MINUS_13", HttpStatus.SC_LENGTH_REQUIRED, TypedValues.CycleType.TYPE_WAVE_PHASE);
        ETC__GMT_MINUS_14 = new TimeZone("ETC__GMT_MINUS_14", HttpStatus.SC_PRECONDITION_FAILED, 426);
        ETC__GMT_MINUS_2 = new TimeZone("ETC__GMT_MINUS_2", HttpStatus.SC_REQUEST_TOO_LONG, 427);
        ETC__GMT_MINUS_3 = new TimeZone("ETC__GMT_MINUS_3", HttpStatus.SC_REQUEST_URI_TOO_LONG, 428);
        ETC__GMT_MINUS_4 = new TimeZone("ETC__GMT_MINUS_4", HttpStatus.SC_UNSUPPORTED_MEDIA_TYPE, HttpStatus.SC_TOO_MANY_REQUESTS);
        ETC__GMT_MINUS_5 = new TimeZone("ETC__GMT_MINUS_5", 416, 430);
        ETC__GMT_MINUS_6 = new TimeZone("ETC__GMT_MINUS_6", HttpStatus.SC_EXPECTATION_FAILED, 431);
        ETC__GMT_MINUS_7 = new TimeZone("ETC__GMT_MINUS_7", 418, 432);
        ETC__GMT_MINUS_8 = new TimeZone("ETC__GMT_MINUS_8", HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE, 433);
        ETC__GMT_MINUS_9 = new TimeZone("ETC__GMT_MINUS_9", 420, 434);
        ETC__GMT0 = new TimeZone("ETC__GMT0", 421, 435);
        ETC__GREENWICH = new TimeZone("ETC__GREENWICH", 422, 436);
        ETC__UCT = new TimeZone("ETC__UCT", 423, 437);
        ETC__UTC = new TimeZone("ETC__UTC", 424, 438);
        ETC__UNIVERSAL = new TimeZone("ETC__UNIVERSAL", TypedValues.CycleType.TYPE_WAVE_PHASE, 439);
        ETC__ZULU = new TimeZone("ETC__ZULU", 426, 440);
        EUROPE__AMSTERDAM = new TimeZone("EUROPE__AMSTERDAM", 427, 24);
        EUROPE__ANDORRA = new TimeZone("EUROPE__ANDORRA", 428, 441);
        EUROPE__ASTRAKHAN = new TimeZone("EUROPE__ASTRAKHAN", HttpStatus.SC_TOO_MANY_REQUESTS, 442);
        EUROPE__ATHENS = new TimeZone("EUROPE__ATHENS", 430, 443);
        EUROPE__BELFAST = new TimeZone("EUROPE__BELFAST", 431, 444);
        EUROPE__BELGRADE = new TimeZone("EUROPE__BELGRADE", 432, 445);
        EUROPE__BERLIN = new TimeZone("EUROPE__BERLIN", 433, 25);
        EUROPE__BRATISLAVA = new TimeZone("EUROPE__BRATISLAVA", 434, 446);
        EUROPE__BRUSSELS = new TimeZone("EUROPE__BRUSSELS", 435, 26);
        EUROPE__BUCHAREST = new TimeZone("EUROPE__BUCHAREST", 436, 447);
        EUROPE__BUDAPEST = new TimeZone("EUROPE__BUDAPEST", 437, 448);
        EUROPE__BUSINGEN = new TimeZone("EUROPE__BUSINGEN", 438, 449);
        EUROPE__CHISINAU = new TimeZone("EUROPE__CHISINAU", 439, 450);
        EUROPE__COPENHAGEN = new TimeZone("EUROPE__COPENHAGEN", 440, 451);
        EUROPE__DUBLIN = new TimeZone("EUROPE__DUBLIN", 441, 27);
        EUROPE__GIBRALTAR = new TimeZone("EUROPE__GIBRALTAR", 442, 452);
        EUROPE__GUERNSEY = new TimeZone("EUROPE__GUERNSEY", 443, 453);
        EUROPE__HELSINKI = new TimeZone("EUROPE__HELSINKI", 444, 454);
        EUROPE__ISLE_OF_MAN = new TimeZone("EUROPE__ISLE_OF_MAN", 445, 455);
        EUROPE__ISTANBUL = new TimeZone("EUROPE__ISTANBUL", 446, 456);
        EUROPE__JERSEY = new TimeZone("EUROPE__JERSEY", 447, 457);
        EUROPE__KALININGRAD = new TimeZone("EUROPE__KALININGRAD", 448, 458);
        EUROPE__KIEV = new TimeZone("EUROPE__KIEV", 449, 459);
        EUROPE__KYIV = new TimeZone("EUROPE__KYIV", 450, WinError.ERROR_CLIENT_SERVER_PARAMETERS_INVALID);
        EUROPE__KIROV = new TimeZone("EUROPE__KIROV", 451, 460);
        EUROPE__LISBON = new TimeZone("EUROPE__LISBON", 452, 461);
        EUROPE__LJUBLJANA = new TimeZone("EUROPE__LJUBLJANA", 453, 462);
        EUROPE__LONDON = new TimeZone("EUROPE__LONDON", 454, 28);
        EUROPE__LUXEMBOURG = new TimeZone("EUROPE__LUXEMBOURG", 455, 463);
        EUROPE__MADRID = new TimeZone("EUROPE__MADRID", 456, 29);
        EUROPE__MALTA = new TimeZone("EUROPE__MALTA", 457, 464);
        EUROPE__MARIEHAMN = new TimeZone("EUROPE__MARIEHAMN", 458, 465);
        EUROPE__MINSK = new TimeZone("EUROPE__MINSK", 459, 466);
        EUROPE__MONACO = new TimeZone("EUROPE__MONACO", 460, 467);
        EUROPE__MOSCOW = new TimeZone("EUROPE__MOSCOW", 461, 468);
        EUROPE__NICOSIA = new TimeZone("EUROPE__NICOSIA", 462, 469);
        EUROPE__OSLO = new TimeZone("EUROPE__OSLO", 463, 470);
        EUROPE__PARIS = new TimeZone("EUROPE__PARIS", 464, 30);
        EUROPE__PODGORICA = new TimeZone("EUROPE__PODGORICA", 465, 471);
        EUROPE__PRAGUE = new TimeZone("EUROPE__PRAGUE", 466, 472);
        EUROPE__RIGA = new TimeZone("EUROPE__RIGA", 467, 473);
        EUROPE__ROME = new TimeZone("EUROPE__ROME", 468, 31);
        EUROPE__SAMARA = new TimeZone("EUROPE__SAMARA", 469, 474);
        EUROPE__SAN_MARINO = new TimeZone("EUROPE__SAN_MARINO", 470, 475);
        EUROPE__SARAJEVO = new TimeZone("EUROPE__SARAJEVO", 471, 476);
        EUROPE__SARATOV = new TimeZone("EUROPE__SARATOV", 472, 477);
        EUROPE__SIMFEROPOL = new TimeZone("EUROPE__SIMFEROPOL", 473, 478);
        EUROPE__SKOPJE = new TimeZone("EUROPE__SKOPJE", 474, 479);
        EUROPE__SOFIA = new TimeZone("EUROPE__SOFIA", 475, 480);
        EUROPE__STOCKHOLM = new TimeZone("EUROPE__STOCKHOLM", 476, 32);
        EUROPE__TALLINN = new TimeZone("EUROPE__TALLINN", 477, 481);
        EUROPE__TIRANE = new TimeZone("EUROPE__TIRANE", 478, 482);
        EUROPE__TIRASPOL = new TimeZone("EUROPE__TIRASPOL", 479, 483);
        EUROPE__ULYANOVSK = new TimeZone("EUROPE__ULYANOVSK", 480, 484);
        EUROPE__UZHGOROD = new TimeZone("EUROPE__UZHGOROD", 481, 485);
        EUROPE__VADUZ = new TimeZone("EUROPE__VADUZ", 482, 486);
        EUROPE__VATICAN = new TimeZone("EUROPE__VATICAN", 483, WinError.ERROR_INVALID_ADDRESS);
        EUROPE__VIENNA = new TimeZone("EUROPE__VIENNA", 484, 33);
        EUROPE__VILNIUS = new TimeZone("EUROPE__VILNIUS", 485, 488);
        EUROPE__VOLGOGRAD = new TimeZone("EUROPE__VOLGOGRAD", 486, 489);
        EUROPE__WARSAW = new TimeZone("EUROPE__WARSAW", WinError.ERROR_INVALID_ADDRESS, 490);
        EUROPE__ZAGREB = new TimeZone("EUROPE__ZAGREB", 488, 491);
        EUROPE__ZAPOROZHYE = new TimeZone("EUROPE__ZAPOROZHYE", 489, 492);
        EUROPE__ZURICH = new TimeZone("EUROPE__ZURICH", 490, 34);
        GB = new TimeZone("GB", 491, 493);
        GB_EIRE = new TimeZone("GB_EIRE", 492, 494);
        GMT = new TimeZone("GMT", 493, 495);
        GMT_PLUS_0 = new TimeZone("GMT_PLUS_0", 494, 496);
        GMT_MINUS_0 = new TimeZone("GMT_MINUS_0", 495, 497);
        GMT0 = new TimeZone("GMT0", 496, 498);
        GREENWICH = new TimeZone("GREENWICH", 497, 499);
        HST = new TimeZone("HST", 498, 500);
        HONGKONG = new TimeZone("HONGKONG", 499, 501);
        ICELAND = new TimeZone("ICELAND", 500, 502);
        INDIAN__ANTANANARIVO = new TimeZone("INDIAN__ANTANANARIVO", 501, 503);
        INDIAN__CHAGOS = new TimeZone("INDIAN__CHAGOS", 502, 504);
        INDIAN__CHRISTMAS = new TimeZone("INDIAN__CHRISTMAS", 503, 505);
        INDIAN__COCOS = new TimeZone("INDIAN__COCOS", 504, TypedValues.PositionType.TYPE_PERCENT_X);
        INDIAN__COMORO = new TimeZone("INDIAN__COMORO", 505, 507);
        INDIAN__KERGUELEN = new TimeZone("INDIAN__KERGUELEN", TypedValues.PositionType.TYPE_PERCENT_X, TypedValues.PositionType.TYPE_CURVE_FIT);
        INDIAN__MAHE = new TimeZone("INDIAN__MAHE", 507, 509);
        INDIAN__MALDIVES = new TimeZone("INDIAN__MALDIVES", TypedValues.PositionType.TYPE_CURVE_FIT, TypedValues.PositionType.TYPE_POSITION_TYPE);
        INDIAN__MAURITIUS = new TimeZone("INDIAN__MAURITIUS", 509, 511);
        INDIAN__MAYOTTE = new TimeZone("INDIAN__MAYOTTE", TypedValues.PositionType.TYPE_POSITION_TYPE, 512);
        INDIAN__REUNION = new TimeZone("INDIAN__REUNION", 511, InputDeviceCompat.SOURCE_DPAD);
        IRAN = new TimeZone("IRAN", 512, 514);
        ISRAEL = new TimeZone("ISRAEL", InputDeviceCompat.SOURCE_DPAD, 515);
        JAMAICA = new TimeZone("JAMAICA", 514, 516);
        JAPAN = new TimeZone("JAPAN", 515, 517);
        KWAJALEIN = new TimeZone("KWAJALEIN", 516, 518);
        LIBYA = new TimeZone("LIBYA", 517, 519);
        MET = new TimeZone("MET", 518, 520);
        MST = new TimeZone("MST", 519, 521);
        MST7MDT = new TimeZone("MST7MDT", 520, 522);
        MEXICO__BAJANORTE = new TimeZone("MEXICO__BAJANORTE", 521, 523);
        MEXICO__BAJASUR = new TimeZone("MEXICO__BAJASUR", 522, 524);
        MEXICO__GENERAL = new TimeZone("MEXICO__GENERAL", 523, 525);
        NZ = new TimeZone("NZ", 524, 526);
        NZ_CHAT = new TimeZone("NZ_CHAT", 525, 527);
        NAVAJO = new TimeZone("NAVAJO", 526, 528);
        PRC = new TimeZone("PRC", 527, 529);
        PST8PDT = new TimeZone("PST8PDT", 528, 530);
        PACIFIC__APIA = new TimeZone("PACIFIC__APIA", 529, 531);
        PACIFIC__AUCKLAND = new TimeZone("PACIFIC__AUCKLAND", 530, 79);
        PACIFIC__BOUGAINVILLE = new TimeZone("PACIFIC__BOUGAINVILLE", 531, 532);
        PACIFIC__CHATHAM = new TimeZone("PACIFIC__CHATHAM", 532, 533);
        PACIFIC__CHUUK = new TimeZone("PACIFIC__CHUUK", 533, WinError.ERROR_ARITHMETIC_OVERFLOW);
        PACIFIC__EASTER = new TimeZone("PACIFIC__EASTER", WinError.ERROR_ARITHMETIC_OVERFLOW, WinError.ERROR_PIPE_CONNECTED);
        PACIFIC__EFATE = new TimeZone("PACIFIC__EFATE", WinError.ERROR_PIPE_CONNECTED, WinError.ERROR_PIPE_LISTENING);
        PACIFIC__ENDERBURY = new TimeZone("PACIFIC__ENDERBURY", WinError.ERROR_PIPE_LISTENING, 537);
        PACIFIC__FAKAOFO = new TimeZone("PACIFIC__FAKAOFO", 537, WinError.ERROR_ABIOS_ERROR);
        PACIFIC__FIJI = new TimeZone("PACIFIC__FIJI", WinError.ERROR_ABIOS_ERROR, WinError.ERROR_WX86_WARNING);
        PACIFIC__FUNAFUTI = new TimeZone("PACIFIC__FUNAFUTI", WinError.ERROR_WX86_WARNING, WinError.ERROR_WX86_ERROR);
        PACIFIC__GALAPAGOS = new TimeZone("PACIFIC__GALAPAGOS", WinError.ERROR_WX86_ERROR, WinError.ERROR_TIMER_NOT_CANCELED);
        PACIFIC__GAMBIER = new TimeZone("PACIFIC__GAMBIER", WinError.ERROR_TIMER_NOT_CANCELED, WinError.ERROR_UNWIND);
        PACIFIC__GUADALCANAL = new TimeZone("PACIFIC__GUADALCANAL", WinError.ERROR_UNWIND, WinError.ERROR_BAD_STACK);
        PACIFIC__GUAM = new TimeZone("PACIFIC__GUAM", WinError.ERROR_BAD_STACK, WinError.ERROR_INVALID_UNWIND_TARGET);
        PACIFIC__HONOLULU = new TimeZone("PACIFIC__HONOLULU", WinError.ERROR_INVALID_UNWIND_TARGET, 35);
        PACIFIC__JOHNSTON = new TimeZone("PACIFIC__JOHNSTON", WinError.ERROR_INVALID_PORT_ATTRIBUTES, WinError.ERROR_INVALID_PORT_ATTRIBUTES);
        PACIFIC__KANTON = new TimeZone("PACIFIC__KANTON", WinError.ERROR_PORT_MESSAGE_TOO_LONG, WinError.ERROR_NOT_TINY_STREAM);
        PACIFIC__KIRITIMATI = new TimeZone("PACIFIC__KIRITIMATI", WinError.ERROR_INVALID_QUOTA_LOWER, WinError.ERROR_PORT_MESSAGE_TOO_LONG);
        PACIFIC__KOSRAE = new TimeZone("PACIFIC__KOSRAE", WinError.ERROR_DEVICE_ALREADY_ATTACHED, WinError.ERROR_INVALID_QUOTA_LOWER);
        PACIFIC__KWAJALEIN = new TimeZone("PACIFIC__KWAJALEIN", 549, WinError.ERROR_DEVICE_ALREADY_ATTACHED);
        PACIFIC__MAJURO = new TimeZone("PACIFIC__MAJURO", WinError.ERROR_PROFILING_NOT_STARTED, 549);
        PACIFIC__MARQUESAS = new TimeZone("PACIFIC__MARQUESAS", WinError.ERROR_PROFILING_NOT_STOPPED, WinError.ERROR_PROFILING_NOT_STARTED);
        PACIFIC__MIDWAY = new TimeZone("PACIFIC__MIDWAY", WinError.ERROR_COULD_NOT_INTERPRET, WinError.ERROR_PROFILING_NOT_STOPPED);
        PACIFIC__NAURU = new TimeZone("PACIFIC__NAURU", WinError.ERROR_PROFILING_AT_LIMIT, WinError.ERROR_COULD_NOT_INTERPRET);
        PACIFIC__NIUE = new TimeZone("PACIFIC__NIUE", WinError.ERROR_CANT_WAIT, WinError.ERROR_PROFILING_AT_LIMIT);
        PACIFIC__NORFOLK = new TimeZone("PACIFIC__NORFOLK", WinError.ERROR_CANT_TERMINATE_SELF, WinError.ERROR_CANT_WAIT);
        PACIFIC__NOUMEA = new TimeZone("PACIFIC__NOUMEA", WinError.ERROR_UNEXPECTED_MM_CREATE_ERR, WinError.ERROR_CANT_TERMINATE_SELF);
        PACIFIC__PAGO_PAGO = new TimeZone("PACIFIC__PAGO_PAGO", WinError.ERROR_UNEXPECTED_MM_MAP_ERROR, WinError.ERROR_UNEXPECTED_MM_CREATE_ERR);
        PACIFIC__PALAU = new TimeZone("PACIFIC__PALAU", WinError.ERROR_UNEXPECTED_MM_EXTEND_ERR, WinError.ERROR_UNEXPECTED_MM_MAP_ERROR);
        PACIFIC__PITCAIRN = new TimeZone("PACIFIC__PITCAIRN", WinError.ERROR_BAD_FUNCTION_TABLE, WinError.ERROR_UNEXPECTED_MM_EXTEND_ERR);
        PACIFIC__POHNPEI = new TimeZone("PACIFIC__POHNPEI", WinError.ERROR_NO_GUID_TRANSLATION, WinError.ERROR_BAD_FUNCTION_TABLE);
        PACIFIC__PONAPE = new TimeZone("PACIFIC__PONAPE", WinError.ERROR_INVALID_LDT_SIZE, WinError.ERROR_NO_GUID_TRANSLATION);
        PACIFIC__PORT_MORESBY = new TimeZone("PACIFIC__PORT_MORESBY", 562, WinError.ERROR_INVALID_LDT_SIZE);
        PACIFIC__RAROTONGA = new TimeZone("PACIFIC__RAROTONGA", WinError.ERROR_INVALID_LDT_OFFSET, 562);
        PACIFIC__SAIPAN = new TimeZone("PACIFIC__SAIPAN", WinError.ERROR_INVALID_LDT_DESCRIPTOR, WinError.ERROR_INVALID_LDT_OFFSET);
        PACIFIC__SAMOA = new TimeZone("PACIFIC__SAMOA", WinError.ERROR_TOO_MANY_THREADS, WinError.ERROR_INVALID_LDT_DESCRIPTOR);
        PACIFIC__TAHITI = new TimeZone("PACIFIC__TAHITI", WinError.ERROR_THREAD_NOT_IN_PROCESS, WinError.ERROR_TOO_MANY_THREADS);
        PACIFIC__TARAWA = new TimeZone("PACIFIC__TARAWA", WinError.ERROR_PAGEFILE_QUOTA_EXCEEDED, WinError.ERROR_THREAD_NOT_IN_PROCESS);
        PACIFIC__TONGATAPU = new TimeZone("PACIFIC__TONGATAPU", WinError.ERROR_LOGON_SERVER_CONFLICT, WinError.ERROR_PAGEFILE_QUOTA_EXCEEDED);
        PACIFIC__TRUK = new TimeZone("PACIFIC__TRUK", WinError.ERROR_SYNCHRONIZATION_REQUIRED, WinError.ERROR_LOGON_SERVER_CONFLICT);
        PACIFIC__WAKE = new TimeZone("PACIFIC__WAKE", WinError.ERROR_NET_OPEN_FAILED, WinError.ERROR_SYNCHRONIZATION_REQUIRED);
        PACIFIC__WALLIS = new TimeZone("PACIFIC__WALLIS", WinError.ERROR_IO_PRIVILEGE_FAILED, WinError.ERROR_NET_OPEN_FAILED);
        PACIFIC__YAP = new TimeZone("PACIFIC__YAP", WinError.ERROR_CONTROL_C_EXIT, WinError.ERROR_IO_PRIVILEGE_FAILED);
        POLAND = new TimeZone("POLAND", WinError.ERROR_MISSING_SYSTEMFILE, WinError.ERROR_CONTROL_C_EXIT);
        PORTUGAL = new TimeZone("PORTUGAL", WinError.ERROR_UNHANDLED_EXCEPTION, WinError.ERROR_MISSING_SYSTEMFILE);
        ROC = new TimeZone("ROC", WinError.ERROR_APP_INIT_FAILURE, WinError.ERROR_UNHANDLED_EXCEPTION);
        ROK = new TimeZone("ROK", WinError.ERROR_PAGEFILE_CREATE_FAILED, WinError.ERROR_APP_INIT_FAILURE);
        SINGAPORE = new TimeZone("SINGAPORE", WinError.ERROR_INVALID_IMAGE_HASH, WinError.ERROR_PAGEFILE_CREATE_FAILED);
        TURKEY = new TimeZone("TURKEY", WinError.ERROR_NO_PAGEFILE, WinError.ERROR_INVALID_IMAGE_HASH);
        UCT = new TimeZone("UCT", WinError.ERROR_ILLEGAL_FLOAT_CONTEXT, WinError.ERROR_NO_PAGEFILE);
        US__ALASKA = new TimeZone("US__ALASKA", WinError.ERROR_NO_EVENT_PAIR, WinError.ERROR_ILLEGAL_FLOAT_CONTEXT);
        US__ALEUTIAN = new TimeZone("US__ALEUTIAN", WinError.ERROR_DOMAIN_CTRLR_CONFIG_ERROR, WinError.ERROR_NO_EVENT_PAIR);
        US__ARIZONA = new TimeZone("US__ARIZONA", WinError.ERROR_ILLEGAL_CHARACTER, WinError.ERROR_DOMAIN_CTRLR_CONFIG_ERROR);
        US__CENTRAL = new TimeZone("US__CENTRAL", WinError.ERROR_UNDEFINED_CHARACTER, WinError.ERROR_ILLEGAL_CHARACTER);
        US__EAST_INDIANA = new TimeZone("US__EAST_INDIANA", WinError.ERROR_FLOPPY_VOLUME, WinError.ERROR_UNDEFINED_CHARACTER);
        US__EASTERN = new TimeZone("US__EASTERN", WinError.ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT, WinError.ERROR_FLOPPY_VOLUME);
        US__HAWAII = new TimeZone("US__HAWAII", WinError.ERROR_BACKUP_CONTROLLER, WinError.ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT);
        US__INDIANA_STARKE = new TimeZone("US__INDIANA_STARKE", WinError.ERROR_MUTANT_LIMIT_EXCEEDED, WinError.ERROR_BACKUP_CONTROLLER);
        US__MICHIGAN = new TimeZone("US__MICHIGAN", WinError.ERROR_FS_DRIVER_REQUIRED, WinError.ERROR_MUTANT_LIMIT_EXCEEDED);
        US__MOUNTAIN = new TimeZone("US__MOUNTAIN", WinError.ERROR_CANNOT_LOAD_REGISTRY_FILE, WinError.ERROR_FS_DRIVER_REQUIRED);
        US__PACIFIC = new TimeZone("US__PACIFIC", WinError.ERROR_DEBUG_ATTACH_FAILED, WinError.ERROR_CANNOT_LOAD_REGISTRY_FILE);
        US__PACIFIC_NEW = new TimeZone("US__PACIFIC_NEW", WinError.ERROR_SYSTEM_PROCESS_TERMINATED, WinError.ERROR_DEBUG_ATTACH_FAILED);
        US__SAMOA = new TimeZone("US__SAMOA", WinError.ERROR_DATA_NOT_ACCEPTED, WinError.ERROR_SYSTEM_PROCESS_TERMINATED);
        UTC = new TimeZone("UTC", WinError.ERROR_VDM_HARD_ERROR, 1);
        UNIVERSAL = new TimeZone("UNIVERSAL", WinError.ERROR_DRIVER_CANCEL_TIMEOUT, WinError.ERROR_DATA_NOT_ACCEPTED);
        W_SU = new TimeZone("W_SU", WinError.ERROR_REPLY_MESSAGE_MISMATCH, WinError.ERROR_VDM_HARD_ERROR);
        WET = new TimeZone("WET", WinError.ERROR_LOST_WRITEBEHIND_DATA, WinError.ERROR_DRIVER_CANCEL_TIMEOUT);
        ZULU = new TimeZone("ZULU", WinError.ERROR_CLIENT_SERVER_PARAMETERS_INVALID, WinError.ERROR_REPLY_MESSAGE_MISMATCH);
        TimeZone[] timeZoneArr$values = $values();
        $VALUES = timeZoneArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(timeZoneArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TimeZone.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<TimeZone>(orCreateKotlinClass, syntax, timeZone) { // from class: com.stripe.proto.model.common.TimeZone$Companion$ADAPTER$1
            {
                TimeZone timeZone2 = timeZone;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public TimeZone fromValue(int value) {
                return TimeZone.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: TimeZone.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/TimeZone$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/TimeZone;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final TimeZone fromValue(int value) {
            switch (value) {
                case 0:
                    return TimeZone.TIME_ZONE_INVALID;
                case 1:
                    return TimeZone.UTC;
                case 2:
                    return TimeZone.AMERICA__LOS_ANGELES;
                case 3:
                    return TimeZone.AMERICA__NEW_YORK;
                case 4:
                    return TimeZone.AMERICA__DENVER;
                case 5:
                    return TimeZone.AMERICA__CHICAGO;
                case 6:
                    return TimeZone.AMERICA__ANCHORAGE;
                case 7:
                    return TimeZone.AMERICA__PHOENIX;
                case 8:
                    return TimeZone.AMERICA__DETROIT;
                case 9:
                    return TimeZone.AMERICA__EDMONTON;
                case 10:
                    return TimeZone.AMERICA__HALIFAX;
                case 11:
                    return TimeZone.AMERICA__MEXICO_CITY;
                case 12:
                    return TimeZone.AMERICA__REGINA;
                case 13:
                    return TimeZone.AMERICA__SAO_PAULO;
                case 14:
                    return TimeZone.AMERICA__TORONTO;
                case 15:
                    return TimeZone.AMERICA__VANCOUVER;
                case 16:
                    return TimeZone.AMERICA__WINNIPEG;
                case 17:
                    return TimeZone.ASIA__JERUSALEM;
                case 18:
                    return TimeZone.ASIA__SEOUL;
                case 19:
                    return TimeZone.ASIA__SHANGHAI;
                case 20:
                    return TimeZone.ASIA__TOKYO;
                case 21:
                    return TimeZone.AUSTRALIA__ADELAIDE;
                case 22:
                    return TimeZone.AUSTRALIA__MELBOURNE;
                case 23:
                    return TimeZone.AUSTRALIA__SYDNEY;
                case 24:
                    return TimeZone.EUROPE__AMSTERDAM;
                case 25:
                    return TimeZone.EUROPE__BERLIN;
                case 26:
                    return TimeZone.EUROPE__BRUSSELS;
                case 27:
                    return TimeZone.EUROPE__DUBLIN;
                case 28:
                    return TimeZone.EUROPE__LONDON;
                case 29:
                    return TimeZone.EUROPE__MADRID;
                case 30:
                    return TimeZone.EUROPE__PARIS;
                case 31:
                    return TimeZone.EUROPE__ROME;
                case 32:
                    return TimeZone.EUROPE__STOCKHOLM;
                case 33:
                    return TimeZone.EUROPE__VIENNA;
                case 34:
                    return TimeZone.EUROPE__ZURICH;
                case 35:
                    return TimeZone.PACIFIC__HONOLULU;
                case 36:
                    return TimeZone.ASIA__SINGAPORE;
                case 37:
                    return TimeZone.AMERICA__ADAK;
                case 38:
                    return TimeZone.AMERICA__BOISE;
                case 39:
                    return TimeZone.AMERICA__JUNEAU;
                case 40:
                    return TimeZone.AMERICA__INDIANA__INDIANAPOLIS;
                case 41:
                    return TimeZone.AMERICA__INDIANA__KNOX;
                case 42:
                    return TimeZone.AMERICA__INDIANA__MARENGO;
                case 43:
                    return TimeZone.AMERICA__INDIANA__PETERSBURG;
                case 44:
                    return TimeZone.AMERICA__INDIANA__TELL_CITY;
                case 45:
                    return TimeZone.AMERICA__INDIANA__VEVAY;
                case 46:
                    return TimeZone.AMERICA__INDIANA__VINCENNES;
                case 47:
                    return TimeZone.AMERICA__INDIANA__WINAMAC;
                case 48:
                    return TimeZone.AMERICA__KENTUCKY__LOUISVILLE;
                case 49:
                    return TimeZone.AMERICA__KENTUCKY__MONTICELLO;
                case 50:
                    return TimeZone.AMERICA__MENOMINEE;
                case 51:
                    return TimeZone.AMERICA__NORTH_DAKOTA__BEULAH;
                case 52:
                    return TimeZone.AMERICA__NORTH_DAKOTA__CENTER;
                case 53:
                    return TimeZone.AMERICA__NORTH_DAKOTA__NEW_SALEM;
                case 54:
                    return TimeZone.AMERICA__NOME;
                case 55:
                    return TimeZone.AMERICA__YAKUTAT;
                case 56:
                    return TimeZone.AMERICA__ATIKOKAN;
                case 57:
                    return TimeZone.AMERICA__BLANC_SABLON;
                case 58:
                    return TimeZone.AMERICA__CAMBRIDGE_BAY;
                case 59:
                    return TimeZone.AMERICA__CORAL_HARBOUR;
                case 60:
                    return TimeZone.AMERICA__DAWSON;
                case 61:
                default:
                    return null;
                case 62:
                    return TimeZone.AMERICA__DAWSON_CREEK;
                case 63:
                    return TimeZone.AMERICA__GLACE_BAY;
                case 64:
                    return TimeZone.AMERICA__GOOSE_BAY;
                case 65:
                    return TimeZone.AMERICA__IQALUIT;
                case 66:
                    return TimeZone.AMERICA__MONCTON;
                case 67:
                    return TimeZone.AMERICA__MONTREAL;
                case 68:
                    return TimeZone.AMERICA__RAINY_RIVER;
                case 69:
                    return TimeZone.AMERICA__RANKIN_INLET;
                case 70:
                    return TimeZone.AMERICA__RESOLUTE;
                case 71:
                    return TimeZone.AMERICA__ST_JOHNS;
                case 72:
                    return TimeZone.AMERICA__SWIFT_CURRENT;
                case 73:
                    return TimeZone.AMERICA__THUNDER_BAY;
                case 74:
                    return TimeZone.AMERICA__WHITEHORSE;
                case 75:
                    return TimeZone.AMERICA__YELLOWKNIFE;
                case 76:
                    return TimeZone.AUSTRALIA__BRISBANE;
                case 77:
                    return TimeZone.ASIA__HONG_KONG;
                case 78:
                    return TimeZone.ASIA__KOLKATA;
                case 79:
                    return TimeZone.PACIFIC__AUCKLAND;
                case 80:
                    return TimeZone.ASIA__MANILA;
                case 81:
                    return TimeZone.AFRICA__ABIDJAN;
                case 82:
                    return TimeZone.AFRICA__ACCRA;
                case 83:
                    return TimeZone.AFRICA__ADDIS_ABABA;
                case 84:
                    return TimeZone.AFRICA__ALGIERS;
                case WinError.ERROR_ALREADY_ASSIGNED /* 85 */:
                    return TimeZone.AFRICA__ASMARA;
                case 86:
                    return TimeZone.AFRICA__ASMERA;
                case 87:
                    return TimeZone.AFRICA__BAMAKO;
                case 88:
                    return TimeZone.AFRICA__BANGUI;
                case 89:
                    return TimeZone.AFRICA__BANJUL;
                case 90:
                    return TimeZone.AFRICA__BISSAU;
                case WinUser.SM_MOUSEHORIZONTALWHEELPRESENT /* 91 */:
                    return TimeZone.AFRICA__BLANTYRE;
                case WinUser.SM_CXPADDEDBORDER /* 92 */:
                    return TimeZone.AFRICA__BRAZZAVILLE;
                case 93:
                    return TimeZone.AFRICA__BUJUMBURA;
                case 94:
                    return TimeZone.AFRICA__CAIRO;
                case XAttr.ENOTSUP /* 95 */:
                    return TimeZone.AFRICA__CASABLANCA;
                case WinNT.LANG_KASHMIRI /* 96 */:
                    return TimeZone.AFRICA__CEUTA;
                case 97:
                    return TimeZone.AFRICA__CONAKRY;
                case 98:
                    return TimeZone.AFRICA__DAKAR;
                case 99:
                    return TimeZone.AFRICA__DAR_ES_SALAAM;
                case 100:
                    return TimeZone.AFRICA__DJIBOUTI;
                case 101:
                    return TimeZone.AFRICA__DOUALA;
                case 102:
                    return TimeZone.AFRICA__EL_AAIUN;
                case 103:
                    return TimeZone.AFRICA__FREETOWN;
                case 104:
                    return TimeZone.AFRICA__GABORONE;
                case WinError.ERROR_SEM_OWNER_DIED /* 105 */:
                    return TimeZone.AFRICA__HARARE;
                case WinError.ERROR_SEM_USER_LIMIT /* 106 */:
                    return TimeZone.AFRICA__JOHANNESBURG;
                case WinError.ERROR_DISK_CHANGE /* 107 */:
                    return TimeZone.AFRICA__JUBA;
                case 108:
                    return TimeZone.AFRICA__KAMPALA;
                case 109:
                    return TimeZone.AFRICA__KHARTOUM;
                case 110:
                    return TimeZone.AFRICA__KIGALI;
                case WinError.ERROR_BUFFER_OVERFLOW /* 111 */:
                    return TimeZone.AFRICA__KINSHASA;
                case 112:
                    return TimeZone.AFRICA__LAGOS;
                case WinError.ERROR_NO_MORE_SEARCH_HANDLES /* 113 */:
                    return TimeZone.AFRICA__LIBREVILLE;
                case WinError.ERROR_INVALID_TARGET_HANDLE /* 114 */:
                    return TimeZone.AFRICA__LOME;
                case 115:
                    return TimeZone.AFRICA__LUANDA;
                case 116:
                    return TimeZone.AFRICA__LUBUMBASHI;
                case WinError.ERROR_INVALID_CATEGORY /* 117 */:
                    return TimeZone.AFRICA__LUSAKA;
                case WinError.ERROR_INVALID_VERIFY_SWITCH /* 118 */:
                    return TimeZone.AFRICA__MALABO;
                case WinError.ERROR_BAD_DRIVER_LEVEL /* 119 */:
                    return TimeZone.AFRICA__MAPUTO;
                case WinError.ERROR_CALL_NOT_IMPLEMENTED /* 120 */:
                    return TimeZone.AFRICA__MASERU;
                case WinError.ERROR_SEM_TIMEOUT /* 121 */:
                    return TimeZone.AFRICA__MBABANE;
                case 122:
                    return TimeZone.AFRICA__MOGADISHU;
                case 123:
                    return TimeZone.AFRICA__MONROVIA;
                case WinError.ERROR_INVALID_LEVEL /* 124 */:
                    return TimeZone.AFRICA__NAIROBI;
                case WinError.ERROR_NO_VOLUME_LABEL /* 125 */:
                    return TimeZone.AFRICA__NDJAMENA;
                case 126:
                    return TimeZone.AFRICA__NIAMEY;
                case 127:
                    return TimeZone.AFRICA__NOUAKCHOTT;
                case 128:
                    return TimeZone.AFRICA__OUAGADOUGOU;
                case 129:
                    return TimeZone.AFRICA__PORTO_NOVO;
                case 130:
                    return TimeZone.AFRICA__SAO_TOME;
                case 131:
                    return TimeZone.AFRICA__TIMBUKTU;
                case WinError.ERROR_SEEK_ON_DEVICE /* 132 */:
                    return TimeZone.AFRICA__TRIPOLI;
                case WinError.ERROR_IS_JOIN_TARGET /* 133 */:
                    return TimeZone.AFRICA__TUNIS;
                case WinError.ERROR_IS_JOINED /* 134 */:
                    return TimeZone.AFRICA__WINDHOEK;
                case WinError.ERROR_IS_SUBSTED /* 135 */:
                    return TimeZone.AMERICA__ANGUILLA;
                case 136:
                    return TimeZone.AMERICA__ANTIGUA;
                case WinError.ERROR_NOT_SUBSTED /* 137 */:
                    return TimeZone.AMERICA__ARAGUAINA;
                case WinError.ERROR_JOIN_TO_JOIN /* 138 */:
                    return TimeZone.AMERICA__ARGENTINA__BUENOS_AIRES;
                case WinError.ERROR_SUBST_TO_SUBST /* 139 */:
                    return TimeZone.AMERICA__ARGENTINA__CATAMARCA;
                case WinError.ERROR_JOIN_TO_SUBST /* 140 */:
                    return TimeZone.AMERICA__ARGENTINA__COMODRIVADAVIA;
                case WinError.ERROR_SUBST_TO_JOIN /* 141 */:
                    return TimeZone.AMERICA__ARGENTINA__CORDOBA;
                case 142:
                    return TimeZone.AMERICA__ARGENTINA__JUJUY;
                case WinError.ERROR_SAME_DRIVE /* 143 */:
                    return TimeZone.AMERICA__ARGENTINA__LA_RIOJA;
                case WinError.ERROR_DIR_NOT_ROOT /* 144 */:
                    return TimeZone.AMERICA__ARGENTINA__MENDOZA;
                case WinError.ERROR_DIR_NOT_EMPTY /* 145 */:
                    return TimeZone.AMERICA__ARGENTINA__RIO_GALLEGOS;
                case WinError.ERROR_IS_SUBST_PATH /* 146 */:
                    return TimeZone.AMERICA__ARGENTINA__SALTA;
                case WinError.ERROR_IS_JOIN_PATH /* 147 */:
                    return TimeZone.AMERICA__ARGENTINA__SAN_JUAN;
                case WinError.ERROR_PATH_BUSY /* 148 */:
                    return TimeZone.AMERICA__ARGENTINA__SAN_LUIS;
                case WinError.ERROR_IS_SUBST_TARGET /* 149 */:
                    return TimeZone.AMERICA__ARGENTINA__TUCUMAN;
                case WinError.ERROR_SYSTEM_TRACE /* 150 */:
                    return TimeZone.AMERICA__ARGENTINA__USHUAIA;
                case WinError.ERROR_INVALID_EVENT_COUNT /* 151 */:
                    return TimeZone.AMERICA__ARUBA;
                case WinError.ERROR_TOO_MANY_MUXWAITERS /* 152 */:
                    return TimeZone.AMERICA__ASUNCION;
                case WinError.ERROR_INVALID_LIST_FORMAT /* 153 */:
                    return TimeZone.AMERICA__ATKA;
                case WinError.ERROR_LABEL_TOO_LONG /* 154 */:
                    return TimeZone.AMERICA__BAHIA;
                case 155:
                    return TimeZone.AMERICA__BAHIA_BANDERAS;
                case WinError.ERROR_SIGNAL_REFUSED /* 156 */:
                    return TimeZone.AMERICA__BARBADOS;
                case WinError.ERROR_DISCARDED /* 157 */:
                    return TimeZone.AMERICA__BELEM;
                case WinError.ERROR_NOT_LOCKED /* 158 */:
                    return TimeZone.AMERICA__BELIZE;
                case WinError.ERROR_BAD_THREADID_ADDR /* 159 */:
                    return TimeZone.AMERICA__BOA_VISTA;
                case 160:
                    return TimeZone.AMERICA__BOGOTA;
                case 161:
                    return TimeZone.AMERICA__BUENOS_AIRES;
                case 162:
                    return TimeZone.AMERICA__CAMPO_GRANDE;
                case WinUser.VK_RCONTROL /* 163 */:
                    return TimeZone.AMERICA__CANCUN;
                case 164:
                    return TimeZone.AMERICA__CARACAS;
                case WinUser.VK_RMENU /* 165 */:
                    return TimeZone.AMERICA__CATAMARCA;
                case 166:
                    return TimeZone.AMERICA__CAYENNE;
                case WinError.ERROR_LOCK_FAILED /* 167 */:
                    return TimeZone.AMERICA__CAYMAN;
                case 168:
                    return TimeZone.AMERICA__CHIHUAHUA;
                case 169:
                    return TimeZone.AMERICA__CORDOBA;
                case WinError.ERROR_BUSY /* 170 */:
                    return TimeZone.AMERICA__COSTA_RICA;
                case 171:
                    return TimeZone.AMERICA__CRESTON;
                case 172:
                    return TimeZone.AMERICA__CUIABA;
                case WinError.ERROR_CANCEL_VIOLATION /* 173 */:
                    return TimeZone.AMERICA__CURACAO;
                case WinError.ERROR_ATOMIC_LOCKS_NOT_SUPPORTED /* 174 */:
                    return TimeZone.AMERICA__DANMARKSHAVN;
                case 175:
                    return TimeZone.AMERICA__DOMINICA;
                case 176:
                    return TimeZone.AMERICA__EIRUNEPE;
                case 177:
                    return TimeZone.AMERICA__EL_SALVADOR;
                case 178:
                    return TimeZone.AMERICA__ENSENADA;
                case 179:
                    return TimeZone.AMERICA__FORT_NELSON;
                case WinError.ERROR_INVALID_SEGMENT_NUMBER /* 180 */:
                    return TimeZone.AMERICA__FORT_WAYNE;
                case 181:
                    return TimeZone.AMERICA__FORTALEZA;
                case WinError.ERROR_INVALID_ORDINAL /* 182 */:
                    return TimeZone.AMERICA__GODTHAB;
                case WinError.ERROR_ALREADY_EXISTS /* 183 */:
                    return TimeZone.AMERICA__GRAND_TURK;
                case 184:
                    return TimeZone.AMERICA__GRENADA;
                case 185:
                    return TimeZone.AMERICA__GUADELOUPE;
                case WinError.ERROR_INVALID_FLAG_NUMBER /* 186 */:
                    return TimeZone.AMERICA__GUATEMALA;
                case WinError.ERROR_SEM_NOT_FOUND /* 187 */:
                    return TimeZone.AMERICA__GUAYAQUIL;
                case WinError.ERROR_INVALID_STARTING_CODESEG /* 188 */:
                    return TimeZone.AMERICA__GUYANA;
                case WinError.ERROR_INVALID_STACKSEG /* 189 */:
                    return TimeZone.AMERICA__HAVANA;
                case WinError.ERROR_INVALID_MODULETYPE /* 190 */:
                    return TimeZone.AMERICA__HERMOSILLO;
                case 191:
                    return TimeZone.AMERICA__INDIANAPOLIS;
                case 192:
                    return TimeZone.AMERICA__INUVIK;
                case WinError.ERROR_BAD_EXE_FORMAT /* 193 */:
                    return TimeZone.AMERICA__JAMAICA;
                case WinError.ERROR_ITERATED_DATA_EXCEEDS_64k /* 194 */:
                    return TimeZone.AMERICA__JUJUY;
                case WinError.ERROR_INVALID_MINALLOCSIZE /* 195 */:
                    return TimeZone.AMERICA__KNOX_IN;
                case WinError.ERROR_DYNLINK_FROM_INVALID_RING /* 196 */:
                    return TimeZone.AMERICA__KRALENDIJK;
                case WinError.ERROR_IOPL_NOT_ENABLED /* 197 */:
                    return TimeZone.AMERICA__LA_PAZ;
                case WinError.ERROR_INVALID_SEGDPL /* 198 */:
                    return TimeZone.AMERICA__LIMA;
                case WinError.ERROR_AUTODATASEG_EXCEEDS_64k /* 199 */:
                    return TimeZone.AMERICA__LOUISVILLE;
                case 200:
                    return TimeZone.AMERICA__LOWER_PRINCES;
                case 201:
                    return TimeZone.AMERICA__MACEIO;
                case 202:
                    return TimeZone.AMERICA__MANAGUA;
                case 203:
                    return TimeZone.AMERICA__MANAUS;
                case HttpStatus.SC_NO_CONTENT /* 204 */:
                    return TimeZone.AMERICA__MARIGOT;
                case 205:
                    return TimeZone.AMERICA__MARTINIQUE;
                case 206:
                    return TimeZone.AMERICA__MATAMOROS;
                case 207:
                    return TimeZone.AMERICA__MAZATLAN;
                case WinError.ERROR_META_EXPANSION_TOO_LONG /* 208 */:
                    return TimeZone.AMERICA__MENDOZA;
                case WinError.ERROR_INVALID_SIGNAL_NUMBER /* 209 */:
                    return TimeZone.AMERICA__MERIDA;
                case WinError.ERROR_THREAD_1_INACTIVE /* 210 */:
                    return TimeZone.AMERICA__METLAKATLA;
                case 211:
                    return TimeZone.AMERICA__MIQUELON;
                case WinError.ERROR_LOCKED /* 212 */:
                    return TimeZone.AMERICA__MONTERREY;
                case 213:
                    return TimeZone.AMERICA__MONTEVIDEO;
                case WinError.ERROR_TOO_MANY_MODULES /* 214 */:
                    return TimeZone.AMERICA__MONTSERRAT;
                case WinError.ERROR_NESTING_NOT_ALLOWED /* 215 */:
                    return TimeZone.AMERICA__NASSAU;
                case WinError.ERROR_EXE_MACHINE_TYPE_MISMATCH /* 216 */:
                    return TimeZone.AMERICA__NIPIGON;
                case WinError.ERROR_EXE_CANNOT_MODIFY_SIGNED_BINARY /* 217 */:
                    return TimeZone.AMERICA__NORONHA;
                case WinError.ERROR_EXE_CANNOT_MODIFY_STRONG_SIGNED_BINARY /* 218 */:
                    return TimeZone.AMERICA__NUUK;
                case 219:
                    return TimeZone.AMERICA__OJINAGA;
                case WinError.ERROR_FILE_CHECKED_OUT /* 220 */:
                    return TimeZone.AMERICA__PANAMA;
                case WinError.ERROR_CHECKOUT_REQUIRED /* 221 */:
                    return TimeZone.AMERICA__PANGNIRTUNG;
                case WinError.ERROR_BAD_FILE_TYPE /* 222 */:
                    return TimeZone.AMERICA__PARAMARIBO;
                case WinError.ERROR_FILE_TOO_LARGE /* 223 */:
                    return TimeZone.AMERICA__PORT_AU_PRINCE;
                case WinError.ERROR_FORMS_AUTH_REQUIRED /* 224 */:
                    return TimeZone.AMERICA__PORT_OF_SPAIN;
                case WinError.ERROR_VIRUS_INFECTED /* 225 */:
                    return TimeZone.AMERICA__PORTO_ACRE;
                case WinError.ERROR_VIRUS_DELETED /* 226 */:
                    return TimeZone.AMERICA__PORTO_VELHO;
                case 227:
                    return TimeZone.AMERICA__PUERTO_RICO;
                case 228:
                    return TimeZone.AMERICA__PUNTA_ARENAS;
                case WinError.ERROR_PIPE_LOCAL /* 229 */:
                    return TimeZone.AMERICA__RECIFE;
                case WinError.ERROR_BAD_PIPE /* 230 */:
                    return TimeZone.AMERICA__RIO_BRANCO;
                case WinError.ERROR_PIPE_BUSY /* 231 */:
                    return TimeZone.AMERICA__ROSARIO;
                case WinError.ERROR_NO_DATA /* 232 */:
                    return TimeZone.AMERICA__SANTA_ISABEL;
                case WinError.ERROR_PIPE_NOT_CONNECTED /* 233 */:
                    return TimeZone.AMERICA__SANTAREM;
                case WinError.ERROR_MORE_DATA /* 234 */:
                    return TimeZone.AMERICA__SANTIAGO;
                case 235:
                    return TimeZone.AMERICA__SANTO_DOMINGO;
                case 236:
                    return TimeZone.AMERICA__SCORESBYSUND;
                case 237:
                    return TimeZone.AMERICA__SHIPROCK;
                case 238:
                    return TimeZone.AMERICA__SITKA;
                case 239:
                    return TimeZone.AMERICA__ST_BARTHELEMY;
                case 240:
                    return TimeZone.AMERICA__ST_KITTS;
                case 241:
                    return TimeZone.AMERICA__ST_LUCIA;
                case 242:
                    return TimeZone.AMERICA__ST_THOMAS;
                case 243:
                    return TimeZone.AMERICA__ST_VINCENT;
                case 244:
                    return TimeZone.AMERICA__TEGUCIGALPA;
                case 245:
                    return TimeZone.AMERICA__THULE;
                case 246:
                    return TimeZone.AMERICA__TIJUANA;
                case 247:
                    return TimeZone.AMERICA__TORTOLA;
                case 248:
                    return TimeZone.AMERICA__VIRGIN;
                case 249:
                    return TimeZone.ANTARCTICA__CASEY;
                case ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION /* 250 */:
                    return TimeZone.ANTARCTICA__DAVIS;
                case 251:
                    return TimeZone.ANTARCTICA__DUMONTDURVILLE;
                case 252:
                    return TimeZone.ANTARCTICA__MACQUARIE;
                case 253:
                    return TimeZone.ANTARCTICA__MAWSON;
                case WinError.ERROR_INVALID_EA_NAME /* 254 */:
                    return TimeZone.ANTARCTICA__MCMURDO;
                case 255:
                    return TimeZone.ANTARCTICA__PALMER;
                case 256:
                    return TimeZone.ANTARCTICA__ROTHERA;
                case 257:
                    return TimeZone.ANTARCTICA__SOUTH_POLE;
                case 258:
                    return TimeZone.ANTARCTICA__SYOWA;
                case 259:
                    return TimeZone.ANTARCTICA__TROLL;
                case 260:
                    return TimeZone.ANTARCTICA__VOSTOK;
                case WinUser.WM_SYSKEYUP /* 261 */:
                    return TimeZone.ARCTIC__LONGYEARBYEN;
                case 262:
                    return TimeZone.ASIA__ADEN;
                case 263:
                    return TimeZone.ASIA__ALMATY;
                case 264:
                    return TimeZone.ASIA__AMMAN;
                case 265:
                    return TimeZone.ASIA__ANADYR;
                case WinError.ERROR_CANNOT_COPY /* 266 */:
                    return TimeZone.ASIA__AQTAU;
                case WinError.ERROR_DIRECTORY /* 267 */:
                    return TimeZone.ASIA__AQTOBE;
                case 268:
                    return TimeZone.ASIA__ASHGABAT;
                case 269:
                    return TimeZone.ASIA__ASHKHABAD;
                case 270:
                    return TimeZone.ASIA__ATYRAU;
                case 271:
                    return TimeZone.ASIA__BAGHDAD;
                case 272:
                    return TimeZone.ASIA__BAHRAIN;
                case 273:
                    return TimeZone.ASIA__BAKU;
                case WinUser.WM_SYSCOMMAND /* 274 */:
                    return TimeZone.ASIA__BANGKOK;
                case WinError.ERROR_EAS_DIDNT_FIT /* 275 */:
                    return TimeZone.ASIA__BARNAUL;
                case WinError.ERROR_EA_FILE_CORRUPT /* 276 */:
                    return TimeZone.ASIA__BEIRUT;
                case WinError.ERROR_EA_TABLE_FULL /* 277 */:
                    return TimeZone.ASIA__BISHKEK;
                case WinError.ERROR_INVALID_EA_HANDLE /* 278 */:
                    return TimeZone.ASIA__BRUNEI;
                case 279:
                    return TimeZone.ASIA__CALCUTTA;
                case 280:
                    return TimeZone.ASIA__CHITA;
                case 281:
                    return TimeZone.ASIA__CHOIBALSAN;
                case WinError.ERROR_EAS_NOT_SUPPORTED /* 282 */:
                    return TimeZone.ASIA__CHONGQING;
                case 283:
                    return TimeZone.ASIA__CHUNGKING;
                case 284:
                    return TimeZone.ASIA__COLOMBO;
                case 285:
                    return TimeZone.ASIA__DACCA;
                case 286:
                    return TimeZone.ASIA__DAMASCUS;
                case 287:
                    return TimeZone.ASIA__DHAKA;
                case WinError.ERROR_NOT_OWNER /* 288 */:
                    return TimeZone.ASIA__DILI;
                case 289:
                    return TimeZone.ASIA__DUBAI;
                case 290:
                    return TimeZone.ASIA__DUSHANBE;
                case 291:
                    return TimeZone.ASIA__FAMAGUSTA;
                case 292:
                    return TimeZone.ASIA__GAZA;
                case 293:
                    return TimeZone.ASIA__HARBIN;
                case 294:
                    return TimeZone.ASIA__HEBRON;
                case 295:
                    return TimeZone.ASIA__HO_CHI_MINH;
                case 296:
                    return TimeZone.ASIA__HOVD;
                case 297:
                    return TimeZone.ASIA__IRKUTSK;
                case WinError.ERROR_TOO_MANY_POSTS /* 298 */:
                    return TimeZone.ASIA__ISTANBUL;
                case WinError.ERROR_PARTIAL_COPY /* 299 */:
                    return TimeZone.ASIA__JAKARTA;
                case 300:
                    return TimeZone.ASIA__JAYAPURA;
                case 301:
                    return TimeZone.ASIA__KABUL;
                case 302:
                    return TimeZone.ASIA__KAMCHATKA;
                case 303:
                    return TimeZone.ASIA__KARACHI;
                case 304:
                    return TimeZone.ASIA__KASHGAR;
                case 305:
                    return TimeZone.ASIA__KATHMANDU;
                case 306:
                    return TimeZone.ASIA__KATMANDU;
                case 307:
                    return TimeZone.ASIA__KHANDYGA;
                case 308:
                    return TimeZone.ASIA__KRASNOYARSK;
                case 309:
                    return TimeZone.ASIA__KUALA_LUMPUR;
                case 310:
                    return TimeZone.ASIA__KUCHING;
                case 311:
                    return TimeZone.ASIA__KUWAIT;
                case 312:
                    return TimeZone.ASIA__MACAO;
                case 313:
                    return TimeZone.ASIA__MACAU;
                case 314:
                    return TimeZone.ASIA__MAGADAN;
                case 315:
                    return TimeZone.ASIA__MAKASSAR;
                case TypedValues.AttributesType.TYPE_PATH_ROTATE /* 316 */:
                    return TimeZone.ASIA__MUSCAT;
                case 317:
                    return TimeZone.ASIA__NICOSIA;
                case 318:
                    return TimeZone.ASIA__NOVOKUZNETSK;
                case WinNT.SERVICE_TYPE_ALL /* 319 */:
                    return TimeZone.ASIA__NOVOSIBIRSK;
                case 320:
                    return TimeZone.ASIA__OMSK;
                case 321:
                    return TimeZone.ASIA__ORAL;
                case 322:
                    return TimeZone.ASIA__PHNOM_PENH;
                case 323:
                    return TimeZone.ASIA__PONTIANAK;
                case 324:
                    return TimeZone.ASIA__PYONGYANG;
                case 325:
                    return TimeZone.ASIA__QATAR;
                case 326:
                    return TimeZone.ASIA__QOSTANAY;
                case 327:
                    return TimeZone.ASIA__QYZYLORDA;
                case 328:
                    return TimeZone.ASIA__RANGOON;
                case 329:
                    return TimeZone.ASIA__RIYADH;
                case 330:
                    return TimeZone.ASIA__SAIGON;
                case 331:
                    return TimeZone.ASIA__SAKHALIN;
                case 332:
                    return TimeZone.ASIA__SAMARKAND;
                case 333:
                    return TimeZone.ASIA__SREDNEKOLYMSK;
                case 334:
                    return TimeZone.ASIA__TAIPEI;
                case 335:
                    return TimeZone.ASIA__TASHKENT;
                case 336:
                    return TimeZone.ASIA__TBILISI;
                case 337:
                    return TimeZone.ASIA__TEHRAN;
                case 338:
                    return TimeZone.ASIA__TEL_AVIV;
                case 339:
                    return TimeZone.ASIA__THIMBU;
                case 340:
                    return TimeZone.ASIA__THIMPHU;
                case 341:
                    return TimeZone.ASIA__TOMSK;
                case 342:
                    return TimeZone.ASIA__UJUNG_PANDANG;
                case 343:
                    return TimeZone.ASIA__ULAANBAATAR;
                case 344:
                    return TimeZone.ASIA__ULAN_BATOR;
                case 345:
                    return TimeZone.ASIA__URUMQI;
                case 346:
                    return TimeZone.ASIA__UST_NERA;
                case 347:
                    return TimeZone.ASIA__VIENTIANE;
                case 348:
                    return TimeZone.ASIA__VLADIVOSTOK;
                case 349:
                    return TimeZone.ASIA__YAKUTSK;
                case WinError.ERROR_FAIL_NOACTION_REBOOT /* 350 */:
                    return TimeZone.ASIA__YANGON;
                case WinError.ERROR_FAIL_SHUTDOWN /* 351 */:
                    return TimeZone.ASIA__YEKATERINBURG;
                case WinError.ERROR_FAIL_RESTART /* 352 */:
                    return TimeZone.ASIA__YEREVAN;
                case WinError.ERROR_MAX_SESSIONS_REACHED /* 353 */:
                    return TimeZone.ATLANTIC__AZORES;
                case 354:
                    return TimeZone.ATLANTIC__BERMUDA;
                case 355:
                    return TimeZone.ATLANTIC__CANARY;
                case 356:
                    return TimeZone.ATLANTIC__CAPE_VERDE;
                case 357:
                    return TimeZone.ATLANTIC__FAEROE;
                case 358:
                    return TimeZone.ATLANTIC__FAROE;
                case 359:
                    return TimeZone.ATLANTIC__JAN_MAYEN;
                case 360:
                    return TimeZone.ATLANTIC__MADEIRA;
                case 361:
                    return TimeZone.ATLANTIC__REYKJAVIK;
                case 362:
                    return TimeZone.ATLANTIC__SOUTH_GEORGIA;
                case 363:
                    return TimeZone.ATLANTIC__ST_HELENA;
                case 364:
                    return TimeZone.ATLANTIC__STANLEY;
                case 365:
                    return TimeZone.AUSTRALIA__ACT;
                case 366:
                    return TimeZone.AUSTRALIA__BROKEN_HILL;
                case 367:
                    return TimeZone.AUSTRALIA__CANBERRA;
                case 368:
                    return TimeZone.AUSTRALIA__CURRIE;
                case 369:
                    return TimeZone.AUSTRALIA__DARWIN;
                case 370:
                    return TimeZone.AUSTRALIA__EUCLA;
                case 371:
                    return TimeZone.AUSTRALIA__HOBART;
                case 372:
                    return TimeZone.AUSTRALIA__LHI;
                case 373:
                    return TimeZone.AUSTRALIA__LINDEMAN;
                case 374:
                    return TimeZone.AUSTRALIA__LORD_HOWE;
                case 375:
                    return TimeZone.AUSTRALIA__NSW;
                case 376:
                    return TimeZone.AUSTRALIA__NORTH;
                case 377:
                    return TimeZone.AUSTRALIA__PERTH;
                case 378:
                    return TimeZone.AUSTRALIA__QUEENSLAND;
                case 379:
                    return TimeZone.AUSTRALIA__SOUTH;
                case 380:
                    return TimeZone.AUSTRALIA__TASMANIA;
                case 381:
                    return TimeZone.AUSTRALIA__VICTORIA;
                case 382:
                    return TimeZone.AUSTRALIA__WEST;
                case 383:
                    return TimeZone.AUSTRALIA__YANCOWINNA;
                case Function.USE_VARARGS /* 384 */:
                    return TimeZone.BRAZIL__ACRE;
                case 385:
                    return TimeZone.BRAZIL__DENORONHA;
                case 386:
                    return TimeZone.BRAZIL__EAST;
                case 387:
                    return TimeZone.BRAZIL__WEST;
                case 388:
                    return TimeZone.CET;
                case 389:
                    return TimeZone.CST6CDT;
                case 390:
                    return TimeZone.CANADA__ATLANTIC;
                case 391:
                    return TimeZone.CANADA__CENTRAL;
                case 392:
                    return TimeZone.CANADA__EASTERN;
                case 393:
                    return TimeZone.CANADA__MOUNTAIN;
                case 394:
                    return TimeZone.CANADA__NEWFOUNDLAND;
                case 395:
                    return TimeZone.CANADA__PACIFIC;
                case 396:
                    return TimeZone.CANADA__SASKATCHEWAN;
                case 397:
                    return TimeZone.CANADA__YUKON;
                case 398:
                    return TimeZone.CHILE__CONTINENTAL;
                case 399:
                    return TimeZone.CHILE__EASTERISLAND;
                case 400:
                    return TimeZone.CUBA;
                case 401:
                    return TimeZone.EET;
                case 402:
                    return TimeZone.EST;
                case 403:
                    return TimeZone.EST5EDT;
                case HttpStatus.SC_NOT_FOUND /* 404 */:
                    return TimeZone.EGYPT;
                case HttpStatus.SC_METHOD_NOT_ALLOWED /* 405 */:
                    return TimeZone.EIRE;
                case HttpStatus.SC_NOT_ACCEPTABLE /* 406 */:
                    return TimeZone.ETC__GMT;
                case HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED /* 407 */:
                    return TimeZone.ETC__GMT_PLUS_0;
                case HttpStatus.SC_REQUEST_TIMEOUT /* 408 */:
                    return TimeZone.ETC__GMT_PLUS_1;
                case HttpStatus.SC_CONFLICT /* 409 */:
                    return TimeZone.ETC__GMT_PLUS_10;
                case HttpStatus.SC_GONE /* 410 */:
                    return TimeZone.ETC__GMT_PLUS_11;
                case HttpStatus.SC_LENGTH_REQUIRED /* 411 */:
                    return TimeZone.ETC__GMT_PLUS_12;
                case HttpStatus.SC_PRECONDITION_FAILED /* 412 */:
                    return TimeZone.ETC__GMT_PLUS_2;
                case HttpStatus.SC_REQUEST_TOO_LONG /* 413 */:
                    return TimeZone.ETC__GMT_PLUS_3;
                case HttpStatus.SC_REQUEST_URI_TOO_LONG /* 414 */:
                    return TimeZone.ETC__GMT_PLUS_4;
                case HttpStatus.SC_UNSUPPORTED_MEDIA_TYPE /* 415 */:
                    return TimeZone.ETC__GMT_PLUS_5;
                case 416:
                    return TimeZone.ETC__GMT_PLUS_6;
                case HttpStatus.SC_EXPECTATION_FAILED /* 417 */:
                    return TimeZone.ETC__GMT_PLUS_7;
                case 418:
                    return TimeZone.ETC__GMT_PLUS_8;
                case HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE /* 419 */:
                    return TimeZone.ETC__GMT_PLUS_9;
                case 420:
                    return TimeZone.ETC__GMT_MINUS_0;
                case 421:
                    return TimeZone.ETC__GMT_MINUS_1;
                case 422:
                    return TimeZone.ETC__GMT_MINUS_10;
                case 423:
                    return TimeZone.ETC__GMT_MINUS_11;
                case 424:
                    return TimeZone.ETC__GMT_MINUS_12;
                case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                    return TimeZone.ETC__GMT_MINUS_13;
                case 426:
                    return TimeZone.ETC__GMT_MINUS_14;
                case 427:
                    return TimeZone.ETC__GMT_MINUS_2;
                case 428:
                    return TimeZone.ETC__GMT_MINUS_3;
                case HttpStatus.SC_TOO_MANY_REQUESTS /* 429 */:
                    return TimeZone.ETC__GMT_MINUS_4;
                case 430:
                    return TimeZone.ETC__GMT_MINUS_5;
                case 431:
                    return TimeZone.ETC__GMT_MINUS_6;
                case 432:
                    return TimeZone.ETC__GMT_MINUS_7;
                case 433:
                    return TimeZone.ETC__GMT_MINUS_8;
                case 434:
                    return TimeZone.ETC__GMT_MINUS_9;
                case 435:
                    return TimeZone.ETC__GMT0;
                case 436:
                    return TimeZone.ETC__GREENWICH;
                case 437:
                    return TimeZone.ETC__UCT;
                case 438:
                    return TimeZone.ETC__UTC;
                case 439:
                    return TimeZone.ETC__UNIVERSAL;
                case 440:
                    return TimeZone.ETC__ZULU;
                case 441:
                    return TimeZone.EUROPE__ANDORRA;
                case 442:
                    return TimeZone.EUROPE__ASTRAKHAN;
                case 443:
                    return TimeZone.EUROPE__ATHENS;
                case 444:
                    return TimeZone.EUROPE__BELFAST;
                case 445:
                    return TimeZone.EUROPE__BELGRADE;
                case 446:
                    return TimeZone.EUROPE__BRATISLAVA;
                case 447:
                    return TimeZone.EUROPE__BUCHAREST;
                case 448:
                    return TimeZone.EUROPE__BUDAPEST;
                case 449:
                    return TimeZone.EUROPE__BUSINGEN;
                case 450:
                    return TimeZone.EUROPE__CHISINAU;
                case 451:
                    return TimeZone.EUROPE__COPENHAGEN;
                case 452:
                    return TimeZone.EUROPE__GIBRALTAR;
                case 453:
                    return TimeZone.EUROPE__GUERNSEY;
                case 454:
                    return TimeZone.EUROPE__HELSINKI;
                case 455:
                    return TimeZone.EUROPE__ISLE_OF_MAN;
                case 456:
                    return TimeZone.EUROPE__ISTANBUL;
                case 457:
                    return TimeZone.EUROPE__JERSEY;
                case 458:
                    return TimeZone.EUROPE__KALININGRAD;
                case 459:
                    return TimeZone.EUROPE__KIEV;
                case 460:
                    return TimeZone.EUROPE__KIROV;
                case 461:
                    return TimeZone.EUROPE__LISBON;
                case 462:
                    return TimeZone.EUROPE__LJUBLJANA;
                case 463:
                    return TimeZone.EUROPE__LUXEMBOURG;
                case 464:
                    return TimeZone.EUROPE__MALTA;
                case 465:
                    return TimeZone.EUROPE__MARIEHAMN;
                case 466:
                    return TimeZone.EUROPE__MINSK;
                case 467:
                    return TimeZone.EUROPE__MONACO;
                case 468:
                    return TimeZone.EUROPE__MOSCOW;
                case 469:
                    return TimeZone.EUROPE__NICOSIA;
                case 470:
                    return TimeZone.EUROPE__OSLO;
                case 471:
                    return TimeZone.EUROPE__PODGORICA;
                case 472:
                    return TimeZone.EUROPE__PRAGUE;
                case 473:
                    return TimeZone.EUROPE__RIGA;
                case 474:
                    return TimeZone.EUROPE__SAMARA;
                case 475:
                    return TimeZone.EUROPE__SAN_MARINO;
                case 476:
                    return TimeZone.EUROPE__SARAJEVO;
                case 477:
                    return TimeZone.EUROPE__SARATOV;
                case 478:
                    return TimeZone.EUROPE__SIMFEROPOL;
                case 479:
                    return TimeZone.EUROPE__SKOPJE;
                case 480:
                    return TimeZone.EUROPE__SOFIA;
                case 481:
                    return TimeZone.EUROPE__TALLINN;
                case 482:
                    return TimeZone.EUROPE__TIRANE;
                case 483:
                    return TimeZone.EUROPE__TIRASPOL;
                case 484:
                    return TimeZone.EUROPE__ULYANOVSK;
                case 485:
                    return TimeZone.EUROPE__UZHGOROD;
                case 486:
                    return TimeZone.EUROPE__VADUZ;
                case WinError.ERROR_INVALID_ADDRESS /* 487 */:
                    return TimeZone.EUROPE__VATICAN;
                case 488:
                    return TimeZone.EUROPE__VILNIUS;
                case 489:
                    return TimeZone.EUROPE__VOLGOGRAD;
                case 490:
                    return TimeZone.EUROPE__WARSAW;
                case 491:
                    return TimeZone.EUROPE__ZAGREB;
                case 492:
                    return TimeZone.EUROPE__ZAPOROZHYE;
                case 493:
                    return TimeZone.GB;
                case 494:
                    return TimeZone.GB_EIRE;
                case 495:
                    return TimeZone.GMT;
                case 496:
                    return TimeZone.GMT_PLUS_0;
                case 497:
                    return TimeZone.GMT_MINUS_0;
                case 498:
                    return TimeZone.GMT0;
                case 499:
                    return TimeZone.GREENWICH;
                case 500:
                    return TimeZone.HST;
                case 501:
                    return TimeZone.HONGKONG;
                case 502:
                    return TimeZone.ICELAND;
                case 503:
                    return TimeZone.INDIAN__ANTANANARIVO;
                case 504:
                    return TimeZone.INDIAN__CHAGOS;
                case 505:
                    return TimeZone.INDIAN__CHRISTMAS;
                case TypedValues.PositionType.TYPE_PERCENT_X /* 506 */:
                    return TimeZone.INDIAN__COCOS;
                case 507:
                    return TimeZone.INDIAN__COMORO;
                case TypedValues.PositionType.TYPE_CURVE_FIT /* 508 */:
                    return TimeZone.INDIAN__KERGUELEN;
                case 509:
                    return TimeZone.INDIAN__MAHE;
                case TypedValues.PositionType.TYPE_POSITION_TYPE /* 510 */:
                    return TimeZone.INDIAN__MALDIVES;
                case 511:
                    return TimeZone.INDIAN__MAURITIUS;
                case 512:
                    return TimeZone.INDIAN__MAYOTTE;
                case InputDeviceCompat.SOURCE_DPAD /* 513 */:
                    return TimeZone.INDIAN__REUNION;
                case 514:
                    return TimeZone.IRAN;
                case 515:
                    return TimeZone.ISRAEL;
                case 516:
                    return TimeZone.JAMAICA;
                case 517:
                    return TimeZone.JAPAN;
                case 518:
                    return TimeZone.KWAJALEIN;
                case 519:
                    return TimeZone.LIBYA;
                case 520:
                    return TimeZone.MET;
                case 521:
                    return TimeZone.MST;
                case 522:
                    return TimeZone.MST7MDT;
                case 523:
                    return TimeZone.MEXICO__BAJANORTE;
                case 524:
                    return TimeZone.MEXICO__BAJASUR;
                case 525:
                    return TimeZone.MEXICO__GENERAL;
                case 526:
                    return TimeZone.NZ;
                case 527:
                    return TimeZone.NZ_CHAT;
                case 528:
                    return TimeZone.NAVAJO;
                case 529:
                    return TimeZone.PRC;
                case 530:
                    return TimeZone.PST8PDT;
                case 531:
                    return TimeZone.PACIFIC__APIA;
                case 532:
                    return TimeZone.PACIFIC__BOUGAINVILLE;
                case 533:
                    return TimeZone.PACIFIC__CHATHAM;
                case WinError.ERROR_ARITHMETIC_OVERFLOW /* 534 */:
                    return TimeZone.PACIFIC__CHUUK;
                case WinError.ERROR_PIPE_CONNECTED /* 535 */:
                    return TimeZone.PACIFIC__EASTER;
                case WinError.ERROR_PIPE_LISTENING /* 536 */:
                    return TimeZone.PACIFIC__EFATE;
                case 537:
                    return TimeZone.PACIFIC__ENDERBURY;
                case WinError.ERROR_ABIOS_ERROR /* 538 */:
                    return TimeZone.PACIFIC__FAKAOFO;
                case WinError.ERROR_WX86_WARNING /* 539 */:
                    return TimeZone.PACIFIC__FIJI;
                case WinError.ERROR_WX86_ERROR /* 540 */:
                    return TimeZone.PACIFIC__FUNAFUTI;
                case WinError.ERROR_TIMER_NOT_CANCELED /* 541 */:
                    return TimeZone.PACIFIC__GALAPAGOS;
                case WinError.ERROR_UNWIND /* 542 */:
                    return TimeZone.PACIFIC__GAMBIER;
                case WinError.ERROR_BAD_STACK /* 543 */:
                    return TimeZone.PACIFIC__GUADALCANAL;
                case WinError.ERROR_INVALID_UNWIND_TARGET /* 544 */:
                    return TimeZone.PACIFIC__GUAM;
                case WinError.ERROR_INVALID_PORT_ATTRIBUTES /* 545 */:
                    return TimeZone.PACIFIC__JOHNSTON;
                case WinError.ERROR_PORT_MESSAGE_TOO_LONG /* 546 */:
                    return TimeZone.PACIFIC__KIRITIMATI;
                case WinError.ERROR_INVALID_QUOTA_LOWER /* 547 */:
                    return TimeZone.PACIFIC__KOSRAE;
                case WinError.ERROR_DEVICE_ALREADY_ATTACHED /* 548 */:
                    return TimeZone.PACIFIC__KWAJALEIN;
                case 549:
                    return TimeZone.PACIFIC__MAJURO;
                case WinError.ERROR_PROFILING_NOT_STARTED /* 550 */:
                    return TimeZone.PACIFIC__MARQUESAS;
                case WinError.ERROR_PROFILING_NOT_STOPPED /* 551 */:
                    return TimeZone.PACIFIC__MIDWAY;
                case WinError.ERROR_COULD_NOT_INTERPRET /* 552 */:
                    return TimeZone.PACIFIC__NAURU;
                case WinError.ERROR_PROFILING_AT_LIMIT /* 553 */:
                    return TimeZone.PACIFIC__NIUE;
                case WinError.ERROR_CANT_WAIT /* 554 */:
                    return TimeZone.PACIFIC__NORFOLK;
                case WinError.ERROR_CANT_TERMINATE_SELF /* 555 */:
                    return TimeZone.PACIFIC__NOUMEA;
                case WinError.ERROR_UNEXPECTED_MM_CREATE_ERR /* 556 */:
                    return TimeZone.PACIFIC__PAGO_PAGO;
                case WinError.ERROR_UNEXPECTED_MM_MAP_ERROR /* 557 */:
                    return TimeZone.PACIFIC__PALAU;
                case WinError.ERROR_UNEXPECTED_MM_EXTEND_ERR /* 558 */:
                    return TimeZone.PACIFIC__PITCAIRN;
                case WinError.ERROR_BAD_FUNCTION_TABLE /* 559 */:
                    return TimeZone.PACIFIC__POHNPEI;
                case WinError.ERROR_NO_GUID_TRANSLATION /* 560 */:
                    return TimeZone.PACIFIC__PONAPE;
                case WinError.ERROR_INVALID_LDT_SIZE /* 561 */:
                    return TimeZone.PACIFIC__PORT_MORESBY;
                case 562:
                    return TimeZone.PACIFIC__RAROTONGA;
                case WinError.ERROR_INVALID_LDT_OFFSET /* 563 */:
                    return TimeZone.PACIFIC__SAIPAN;
                case WinError.ERROR_INVALID_LDT_DESCRIPTOR /* 564 */:
                    return TimeZone.PACIFIC__SAMOA;
                case WinError.ERROR_TOO_MANY_THREADS /* 565 */:
                    return TimeZone.PACIFIC__TAHITI;
                case WinError.ERROR_THREAD_NOT_IN_PROCESS /* 566 */:
                    return TimeZone.PACIFIC__TARAWA;
                case WinError.ERROR_PAGEFILE_QUOTA_EXCEEDED /* 567 */:
                    return TimeZone.PACIFIC__TONGATAPU;
                case WinError.ERROR_LOGON_SERVER_CONFLICT /* 568 */:
                    return TimeZone.PACIFIC__TRUK;
                case WinError.ERROR_SYNCHRONIZATION_REQUIRED /* 569 */:
                    return TimeZone.PACIFIC__WAKE;
                case WinError.ERROR_NET_OPEN_FAILED /* 570 */:
                    return TimeZone.PACIFIC__WALLIS;
                case WinError.ERROR_IO_PRIVILEGE_FAILED /* 571 */:
                    return TimeZone.PACIFIC__YAP;
                case WinError.ERROR_CONTROL_C_EXIT /* 572 */:
                    return TimeZone.POLAND;
                case WinError.ERROR_MISSING_SYSTEMFILE /* 573 */:
                    return TimeZone.PORTUGAL;
                case WinError.ERROR_UNHANDLED_EXCEPTION /* 574 */:
                    return TimeZone.ROC;
                case WinError.ERROR_APP_INIT_FAILURE /* 575 */:
                    return TimeZone.ROK;
                case WinError.ERROR_PAGEFILE_CREATE_FAILED /* 576 */:
                    return TimeZone.SINGAPORE;
                case WinError.ERROR_INVALID_IMAGE_HASH /* 577 */:
                    return TimeZone.TURKEY;
                case WinError.ERROR_NO_PAGEFILE /* 578 */:
                    return TimeZone.UCT;
                case WinError.ERROR_ILLEGAL_FLOAT_CONTEXT /* 579 */:
                    return TimeZone.US__ALASKA;
                case WinError.ERROR_NO_EVENT_PAIR /* 580 */:
                    return TimeZone.US__ALEUTIAN;
                case WinError.ERROR_DOMAIN_CTRLR_CONFIG_ERROR /* 581 */:
                    return TimeZone.US__ARIZONA;
                case WinError.ERROR_ILLEGAL_CHARACTER /* 582 */:
                    return TimeZone.US__CENTRAL;
                case WinError.ERROR_UNDEFINED_CHARACTER /* 583 */:
                    return TimeZone.US__EAST_INDIANA;
                case WinError.ERROR_FLOPPY_VOLUME /* 584 */:
                    return TimeZone.US__EASTERN;
                case WinError.ERROR_BIOS_FAILED_TO_CONNECT_INTERRUPT /* 585 */:
                    return TimeZone.US__HAWAII;
                case WinError.ERROR_BACKUP_CONTROLLER /* 586 */:
                    return TimeZone.US__INDIANA_STARKE;
                case WinError.ERROR_MUTANT_LIMIT_EXCEEDED /* 587 */:
                    return TimeZone.US__MICHIGAN;
                case WinError.ERROR_FS_DRIVER_REQUIRED /* 588 */:
                    return TimeZone.US__MOUNTAIN;
                case WinError.ERROR_CANNOT_LOAD_REGISTRY_FILE /* 589 */:
                    return TimeZone.US__PACIFIC;
                case WinError.ERROR_DEBUG_ATTACH_FAILED /* 590 */:
                    return TimeZone.US__PACIFIC_NEW;
                case WinError.ERROR_SYSTEM_PROCESS_TERMINATED /* 591 */:
                    return TimeZone.US__SAMOA;
                case WinError.ERROR_DATA_NOT_ACCEPTED /* 592 */:
                    return TimeZone.UNIVERSAL;
                case WinError.ERROR_VDM_HARD_ERROR /* 593 */:
                    return TimeZone.W_SU;
                case WinError.ERROR_DRIVER_CANCEL_TIMEOUT /* 594 */:
                    return TimeZone.WET;
                case WinError.ERROR_REPLY_MESSAGE_MISMATCH /* 595 */:
                    return TimeZone.ZULU;
                case WinError.ERROR_LOST_WRITEBEHIND_DATA /* 596 */:
                    return TimeZone.AMERICA__CIUDAD_JUAREZ;
                case WinError.ERROR_CLIENT_SERVER_PARAMETERS_INVALID /* 597 */:
                    return TimeZone.EUROPE__KYIV;
                case WinError.ERROR_NOT_TINY_STREAM /* 598 */:
                    return TimeZone.PACIFIC__KANTON;
            }
        }
    }
}
