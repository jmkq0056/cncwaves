package com.stripe.bbpos.bbdevice;

import com.google.common.base.Ascii;
import io.ktor.util.date.GMTDateParser;
import kotlin.text.Typography;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.apache.http.message.TokenParser;

/* JADX INFO: loaded from: classes3.dex */
final class ccc056zz {
    private static final char[] aaa000 = {0, 7, 14, '\t', 28, 27, 18, 21, '8', '?', '6', '1', Typography.dollar, '#', GMTDateParser.ANY, '-', 'p', 'w', '~', 'y', 'l', 'k', 'b', 'e', 'H', 'O', 'F', 'A', 'T', 'S', 'Z', AbstractJsonLexerKt.END_LIST, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, Typography.half, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, Typography.middleDot, Typography.degree, 185, 190, 171, 172, 165, Typography.cent, 143, 136, 129, 134, 147, 148, 157, 154, '\'', TokenParser.SP, ')', '.', ';', Typography.less, '5', '2', 31, 24, 17, 22, 3, 4, TokenParser.CR, '\n', 'W', 'P', GMTDateParser.YEAR, '^', 'K', 'L', 'E', 'B', 'o', GMTDateParser.HOURS, 'a', 'f', GMTDateParser.SECONDS, 't', AbstractJsonLexerKt.END_OBJ, GMTDateParser.ZONE, 137, 142, 135, 128, 149, 146, 155, 156, Typography.plusMinus, Typography.paragraph, 191, 184, 173, 170, Typography.pound, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 'i', 'n', 'g', '`', AbstractJsonLexerKt.UNICODE_ESC, 'r', AbstractJsonLexerKt.BEGIN_OBJ, '|', 'Q', 'V', '_', 'X', GMTDateParser.MONTH, 'J', 'C', 'D', 25, 30, 23, 16, 5, 2, 11, '\f', '!', Typography.amp, '/', '(', '=', AbstractJsonLexerKt.COLON, '3', '4', 'N', 'I', '@', 'G', 'R', 'U', '\\', AbstractJsonLexerKt.BEGIN_LIST, 'v', 'q', 'x', Ascii.MAX, 'j', GMTDateParser.MINUTES, GMTDateParser.DAY_OF_MONTH, 'c', Typography.greater, '9', '0', '7', '\"', '%', AbstractJsonLexerKt.COMMA, '+', 6, 1, '\b', 15, 26, 29, 20, 19, Typography.registered, Typography.copyright, Typography.nbsp, Typography.section, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, Typography.times, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};

    static byte aaa000(byte[] bArr) {
        char c = 0;
        for (byte b : bArr) {
            c = aaa000[(char) (c ^ (b & 255))];
        }
        return (byte) c;
    }
}
