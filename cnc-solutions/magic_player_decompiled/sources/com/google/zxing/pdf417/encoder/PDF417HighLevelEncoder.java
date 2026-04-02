package com.google.zxing.pdf417.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.CharacterSetECI;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import org.eclipse.jetty.http.HttpTokens;
import org.eclipse.jetty.io.BufferUtil;

/* JADX INFO: loaded from: classes2.dex */
final class PDF417HighLevelEncoder {
    private static final int BYTE_COMPACTION = 1;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED;
    private static final int NUMERIC_COMPACTION = 2;
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, HttpTokens.COLON, 35, BufferUtil.MINUS, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {HttpTokens.SEMI_COLON, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, HttpTokens.COLON, 10, BufferUtil.MINUS, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0};
    private static final byte[] PUNCTUATION = new byte[128];
    private static final Charset DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;

    /* JADX INFO: renamed from: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$pdf417$encoder$Compaction;

        static {
            int[] iArr = new int[Compaction.values().length];
            $SwitchMap$com$google$zxing$pdf417$encoder$Compaction = iArr;
            try {
                iArr[Compaction.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$encoder$Compaction[Compaction.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$encoder$Compaction[Compaction.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        MIXED = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i4 = 0;
        int i5 = 0;
        while (true) {
            byte[] bArr2 = TEXT_MIXED_RAW;
            if (i5 >= bArr2.length) {
                break;
            }
            byte b4 = bArr2[i5];
            if (b4 > 0) {
                MIXED[b4] = (byte) i5;
            }
            i5++;
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        while (true) {
            byte[] bArr3 = TEXT_PUNCTUATION_RAW;
            if (i4 >= bArr3.length) {
                return;
            }
            byte b5 = bArr3[i4];
            if (b5 > 0) {
                PUNCTUATION[b5] = (byte) i4;
            }
            i4++;
        }
    }

    private PDF417HighLevelEncoder() {
    }

    private static int determineConsecutiveBinaryCount(String str, int i4, Charset charset) throws WriterException {
        int i5;
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        int length = str.length();
        int i6 = i4;
        while (i6 < length) {
            char cCharAt = str.charAt(i6);
            int i7 = 0;
            while (i7 < 13 && isDigit(cCharAt) && (i5 = i6 + (i7 = i7 + 1)) < length) {
                cCharAt = str.charAt(i5);
            }
            if (i7 >= 13) {
                return i6 - i4;
            }
            char cCharAt2 = str.charAt(i6);
            if (!charsetEncoderNewEncoder.canEncode(cCharAt2)) {
                throw new WriterException("Non-encodable character detected: " + cCharAt2 + " (Unicode: " + ((int) cCharAt2) + ')');
            }
            i6++;
        }
        return i6 - i4;
    }

    private static int determineConsecutiveDigitCount(CharSequence charSequence, int i4) {
        int length = charSequence.length();
        int i5 = 0;
        if (i4 < length) {
            char cCharAt = charSequence.charAt(i4);
            while (isDigit(cCharAt) && i4 < length) {
                i5++;
                i4++;
                if (i4 < length) {
                    cCharAt = charSequence.charAt(i4);
                }
            }
        }
        return i5;
    }

    private static int determineConsecutiveTextCount(CharSequence charSequence, int i4) {
        int length = charSequence.length();
        int i5 = i4;
        while (i5 < length) {
            char cCharAt = charSequence.charAt(i5);
            int i6 = 0;
            while (i6 < 13 && isDigit(cCharAt) && i5 < length) {
                i6++;
                i5++;
                if (i5 < length) {
                    cCharAt = charSequence.charAt(i5);
                }
            }
            if (i6 < 13) {
                if (i6 <= 0) {
                    if (!isText(charSequence.charAt(i5))) {
                        break;
                    }
                    i5++;
                }
            } else {
                return (i5 - i4) - i6;
            }
        }
        return i5 - i4;
    }

    private static void encodeBinary(byte[] bArr, int i4, int i5, int i6, StringBuilder sb) {
        int i7;
        if (i5 == 1 && i6 == 0) {
            sb.append((char) 913);
        } else if (i5 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i5 >= 6) {
            char[] cArr = new char[5];
            i7 = i4;
            while ((i4 + i5) - i7 >= 6) {
                long j4 = 0;
                for (int i8 = 0; i8 < 6; i8++) {
                    j4 = (j4 << 8) + ((long) (bArr[i7 + i8] & 255));
                }
                for (int i9 = 0; i9 < 5; i9++) {
                    cArr[i9] = (char) (j4 % 900);
                    j4 /= 900;
                }
                for (int i10 = 4; i10 >= 0; i10--) {
                    sb.append(cArr[i10]);
                }
                i7 += 6;
            }
        } else {
            i7 = i4;
        }
        while (i7 < i4 + i5) {
            sb.append((char) (bArr[i7] & 255));
            i7++;
        }
    }

    public static String encodeHighLevel(String str, Compaction compaction, Charset charset) throws WriterException {
        CharacterSetECI characterSetECIByName;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = DEFAULT_ENCODING;
        } else if (!DEFAULT_ENCODING.equals(charset) && (characterSetECIByName = CharacterSetECI.getCharacterSetECIByName(charset.name())) != null) {
            encodingECI(characterSetECIByName.getValue(), sb);
        }
        int length = str.length();
        int i4 = AnonymousClass1.$SwitchMap$com$google$zxing$pdf417$encoder$Compaction[compaction.ordinal()];
        if (i4 == 1) {
            encodeText(str, 0, length, sb, 0);
        } else if (i4 == 2) {
            byte[] bytes = str.getBytes(charset);
            encodeBinary(bytes, 0, bytes.length, 1, sb);
        } else if (i4 != 3) {
            int i5 = 0;
            int iEncodeText = 0;
            int i6 = 0;
            while (i5 < length) {
                int iDetermineConsecutiveDigitCount = determineConsecutiveDigitCount(str, i5);
                if (iDetermineConsecutiveDigitCount >= 13) {
                    sb.append((char) 902);
                    encodeNumeric(str, i5, iDetermineConsecutiveDigitCount, sb);
                    i5 += iDetermineConsecutiveDigitCount;
                    iEncodeText = 0;
                    i6 = 2;
                } else {
                    int iDetermineConsecutiveTextCount = determineConsecutiveTextCount(str, i5);
                    if (iDetermineConsecutiveTextCount >= 5 || iDetermineConsecutiveDigitCount == length) {
                        if (i6 != 0) {
                            sb.append((char) 900);
                            iEncodeText = 0;
                            i6 = 0;
                        }
                        iEncodeText = encodeText(str, i5, iDetermineConsecutiveTextCount, sb, iEncodeText);
                        i5 += iDetermineConsecutiveTextCount;
                    } else {
                        int iDetermineConsecutiveBinaryCount = determineConsecutiveBinaryCount(str, i5, charset);
                        if (iDetermineConsecutiveBinaryCount == 0) {
                            iDetermineConsecutiveBinaryCount = 1;
                        }
                        int i7 = iDetermineConsecutiveBinaryCount + i5;
                        byte[] bytes2 = str.substring(i5, i7).getBytes(charset);
                        if (bytes2.length == 1 && i6 == 0) {
                            encodeBinary(bytes2, 0, 1, 0, sb);
                        } else {
                            encodeBinary(bytes2, 0, bytes2.length, i6, sb);
                            iEncodeText = 0;
                            i6 = 1;
                        }
                        i5 = i7;
                    }
                }
            }
        } else {
            sb.append((char) 902);
            encodeNumeric(str, 0, length, sb);
        }
        return sb.toString();
    }

    private static void encodeNumeric(String str, int i4, int i5, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i5 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i6 = 0;
        while (i6 < i5) {
            sb2.setLength(0);
            int iMin = Math.min(44, i5 - i6);
            StringBuilder sb3 = new StringBuilder("1");
            int i7 = i4 + i6;
            sb3.append(str.substring(i7, i7 + iMin));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i6 += iMin;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00f6 A[EDGE_INSN: B:76:0x00f6->B:55:0x00f6 BREAK  A[LOOP:0: B:3:0x0011->B:93:0x0011], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int encodeText(java.lang.CharSequence r16, int r17, int r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417HighLevelEncoder.encodeText(java.lang.CharSequence, int, int, java.lang.StringBuilder, int):int");
    }

    private static void encodingECI(int i4, StringBuilder sb) throws WriterException {
        if (i4 >= 0 && i4 < LATCH_TO_TEXT) {
            sb.append((char) 927);
            sb.append((char) i4);
        } else if (i4 < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i4 / LATCH_TO_TEXT) - 1));
            sb.append((char) (i4 % LATCH_TO_TEXT));
        } else {
            if (i4 >= 811800) {
                throw new WriterException("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i4)));
            }
            sb.append((char) 925);
            sb.append((char) (810900 - i4));
        }
    }

    private static boolean isAlphaLower(char c4) {
        if (c4 != ' ') {
            return c4 >= 'a' && c4 <= 'z';
        }
        return true;
    }

    private static boolean isAlphaUpper(char c4) {
        if (c4 != ' ') {
            return c4 >= 'A' && c4 <= 'Z';
        }
        return true;
    }

    private static boolean isDigit(char c4) {
        return c4 >= '0' && c4 <= '9';
    }

    private static boolean isMixed(char c4) {
        return MIXED[c4] != -1;
    }

    private static boolean isPunctuation(char c4) {
        return PUNCTUATION[c4] != -1;
    }

    private static boolean isText(char c4) {
        if (c4 == '\t' || c4 == '\n' || c4 == '\r') {
            return true;
        }
        return c4 >= ' ' && c4 <= '~';
    }
}
