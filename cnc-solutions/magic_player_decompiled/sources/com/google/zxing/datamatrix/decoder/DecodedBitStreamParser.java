package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitSource;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.oned.rss.expanded.decoders.DecodedChar;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.jetty.util.B64Code;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
final class DecodedBitStreamParser {
    private static final char[] C40_BASIC_SET_CHARS = {'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    private static final char[] C40_SHIFT2_SET_CHARS;
    private static final char[] TEXT_BASIC_SET_CHARS;
    private static final char[] TEXT_SHIFT2_SET_CHARS;
    private static final char[] TEXT_SHIFT3_SET_CHARS;

    /* JADX INFO: renamed from: com.google.zxing.datamatrix.decoder.DecodedBitStreamParser$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode = iArr;
            try {
                iArr[Mode.C40_ENCODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.TEXT_ENCODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.ANSIX12_ENCODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.EDIFACT_ENCODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[Mode.BASE256_ENCODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum Mode {
        PAD_ENCODE,
        ASCII_ENCODE,
        C40_ENCODE,
        TEXT_ENCODE,
        ANSIX12_ENCODE,
        EDIFACT_ENCODE,
        BASE256_ENCODE
    }

    static {
        char[] cArr = {'!', '\"', '#', DecodedChar.FNC1, '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', B64Code.__pad, '>', '?', '@', '[', '\\', ']', '^', '_'};
        C40_SHIFT2_SET_CHARS = cArr;
        TEXT_BASIC_SET_CHARS = new char[]{'*', '*', '*', ' ', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        TEXT_SHIFT2_SET_CHARS = cArr;
        TEXT_SHIFT3_SET_CHARS = new char[]{'`', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', MessageFormatter.DELIM_START, '|', MessageFormatter.DELIM_STOP, '~', 127};
    }

    private DecodedBitStreamParser() {
    }

    public static DecoderResult decode(byte[] bArr) throws FormatException {
        BitSource bitSource = new BitSource(bArr);
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(0);
        ArrayList arrayList = new ArrayList(1);
        Mode modeDecodeAsciiSegment = Mode.ASCII_ENCODE;
        do {
            Mode mode = Mode.ASCII_ENCODE;
            if (modeDecodeAsciiSegment == mode) {
                modeDecodeAsciiSegment = decodeAsciiSegment(bitSource, sb, sb2);
            } else {
                int i4 = AnonymousClass1.$SwitchMap$com$google$zxing$datamatrix$decoder$DecodedBitStreamParser$Mode[modeDecodeAsciiSegment.ordinal()];
                if (i4 == 1) {
                    decodeC40Segment(bitSource, sb);
                } else if (i4 == 2) {
                    decodeTextSegment(bitSource, sb);
                } else if (i4 == 3) {
                    decodeAnsiX12Segment(bitSource, sb);
                } else if (i4 == 4) {
                    decodeEdifactSegment(bitSource, sb);
                } else {
                    if (i4 != 5) {
                        throw FormatException.getFormatInstance();
                    }
                    decodeBase256Segment(bitSource, sb, arrayList);
                }
                modeDecodeAsciiSegment = mode;
            }
            if (modeDecodeAsciiSegment == Mode.PAD_ENCODE) {
                break;
            }
        } while (bitSource.available() > 0);
        if (sb2.length() > 0) {
            sb.append((CharSequence) sb2);
        }
        String string = sb.toString();
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        return new DecoderResult(bArr, string, arrayList, null);
    }

    private static void decodeAnsiX12Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int bits;
        int[] iArr = new int[3];
        while (bitSource.available() != 8 && (bits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(bits, bitSource.readBits(8), iArr);
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = iArr[i4];
                if (i5 == 0) {
                    sb.append('\r');
                } else if (i5 == 1) {
                    sb.append('*');
                } else if (i5 == 2) {
                    sb.append('>');
                } else if (i5 == 3) {
                    sb.append(' ');
                } else if (i5 < 14) {
                    sb.append((char) (i5 + 44));
                } else {
                    if (i5 >= 40) {
                        throw FormatException.getFormatInstance();
                    }
                    sb.append((char) (i5 + 51));
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static Mode decodeAsciiSegment(BitSource bitSource, StringBuilder sb, StringBuilder sb2) throws FormatException {
        boolean z3 = false;
        do {
            int bits = bitSource.readBits(8);
            if (bits == 0) {
                throw FormatException.getFormatInstance();
            }
            if (bits > 128) {
                if (bits != 129) {
                    if (bits > 229) {
                        switch (bits) {
                            case 230:
                                return Mode.C40_ENCODE;
                            case 231:
                                return Mode.BASE256_ENCODE;
                            case 232:
                                sb.append((char) 29);
                                break;
                            case 233:
                            case 234:
                            case 241:
                                break;
                            case 235:
                                z3 = true;
                                break;
                            case 236:
                                sb.append("[)>\u001e05\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 237:
                                sb.append("[)>\u001e06\u001d");
                                sb2.insert(0, "\u001e\u0004");
                                break;
                            case 238:
                                return Mode.ANSIX12_ENCODE;
                            case 239:
                                return Mode.TEXT_ENCODE;
                            case 240:
                                return Mode.EDIFACT_ENCODE;
                            default:
                                if (bits != 254 || bitSource.available() != 0) {
                                    throw FormatException.getFormatInstance();
                                }
                                break;
                        }
                    } else {
                        int i4 = bits - 130;
                        if (i4 < 10) {
                            sb.append('0');
                        }
                        sb.append(i4);
                    }
                } else {
                    return Mode.PAD_ENCODE;
                }
            } else {
                if (z3) {
                    bits += 128;
                }
                sb.append((char) (bits - 1));
                return Mode.ASCII_ENCODE;
            }
        } while (bitSource.available() > 0);
        return Mode.ASCII_ENCODE;
    }

    private static void decodeBase256Segment(BitSource bitSource, StringBuilder sb, Collection<byte[]> collection) throws FormatException {
        int byteOffset = bitSource.getByteOffset() + 1;
        int i4 = byteOffset + 1;
        int iUnrandomize255State = unrandomize255State(bitSource.readBits(8), byteOffset);
        if (iUnrandomize255State == 0) {
            iUnrandomize255State = bitSource.available() / 8;
        } else if (iUnrandomize255State >= 250) {
            iUnrandomize255State = ((iUnrandomize255State - 249) * 250) + unrandomize255State(bitSource.readBits(8), i4);
            i4++;
        }
        if (iUnrandomize255State < 0) {
            throw FormatException.getFormatInstance();
        }
        byte[] bArr = new byte[iUnrandomize255State];
        int i5 = 0;
        while (i5 < iUnrandomize255State) {
            if (bitSource.available() < 8) {
                throw FormatException.getFormatInstance();
            }
            bArr[i5] = (byte) unrandomize255State(bitSource.readBits(8), i4);
            i5++;
            i4++;
        }
        collection.add(bArr);
        try {
            sb.append(new String(bArr, "ISO8859_1"));
        } catch (UnsupportedEncodingException e4) {
            throw new IllegalStateException("Platform does not support required encoding: ".concat(String.valueOf(e4)));
        }
    }

    private static void decodeC40Segment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int bits;
        int[] iArr = new int[3];
        boolean z3 = false;
        int i4 = 0;
        while (bitSource.available() != 8 && (bits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(bits, bitSource.readBits(8), iArr);
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = iArr[i5];
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            char[] cArr = C40_SHIFT2_SET_CHARS;
                            if (i6 < cArr.length) {
                                char c4 = cArr[i6];
                                if (z3) {
                                    sb.append((char) (c4 + 128));
                                    z3 = false;
                                } else {
                                    sb.append(c4);
                                }
                            } else if (i6 == 27) {
                                sb.append((char) 29);
                            } else {
                                if (i6 != 30) {
                                    throw FormatException.getFormatInstance();
                                }
                                z3 = true;
                            }
                            i4 = 0;
                        } else {
                            if (i4 != 3) {
                                throw FormatException.getFormatInstance();
                            }
                            if (z3) {
                                sb.append((char) (i6 + 224));
                                z3 = false;
                                i4 = 0;
                            } else {
                                sb.append((char) (i6 + 96));
                                i4 = 0;
                            }
                        }
                    } else if (z3) {
                        sb.append((char) (i6 + 128));
                        z3 = false;
                        i4 = 0;
                    } else {
                        sb.append((char) i6);
                        i4 = 0;
                    }
                } else if (i6 < 3) {
                    i4 = i6 + 1;
                } else {
                    char[] cArr2 = C40_BASIC_SET_CHARS;
                    if (i6 >= cArr2.length) {
                        throw FormatException.getFormatInstance();
                    }
                    char c5 = cArr2[i6];
                    if (z3) {
                        sb.append((char) (c5 + 128));
                        z3 = false;
                    } else {
                        sb.append(c5);
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeEdifactSegment(BitSource bitSource, StringBuilder sb) {
        while (bitSource.available() > 16) {
            for (int i4 = 0; i4 < 4; i4++) {
                int bits = bitSource.readBits(6);
                if (bits == 31) {
                    int bitOffset = 8 - bitSource.getBitOffset();
                    if (bitOffset != 8) {
                        bitSource.readBits(bitOffset);
                        return;
                    }
                    return;
                }
                if ((bits & 32) == 0) {
                    bits |= 64;
                }
                sb.append((char) bits);
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void decodeTextSegment(BitSource bitSource, StringBuilder sb) throws FormatException {
        int bits;
        int[] iArr = new int[3];
        boolean z3 = false;
        int i4 = 0;
        while (bitSource.available() != 8 && (bits = bitSource.readBits(8)) != 254) {
            parseTwoBytes(bits, bitSource.readBits(8), iArr);
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = iArr[i5];
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            char[] cArr = TEXT_SHIFT2_SET_CHARS;
                            if (i6 < cArr.length) {
                                char c4 = cArr[i6];
                                if (z3) {
                                    sb.append((char) (c4 + 128));
                                    z3 = false;
                                } else {
                                    sb.append(c4);
                                }
                            } else if (i6 == 27) {
                                sb.append((char) 29);
                            } else {
                                if (i6 != 30) {
                                    throw FormatException.getFormatInstance();
                                }
                                z3 = true;
                            }
                            i4 = 0;
                        } else {
                            if (i4 != 3) {
                                throw FormatException.getFormatInstance();
                            }
                            char[] cArr2 = TEXT_SHIFT3_SET_CHARS;
                            if (i6 >= cArr2.length) {
                                throw FormatException.getFormatInstance();
                            }
                            char c5 = cArr2[i6];
                            if (z3) {
                                sb.append((char) (c5 + 128));
                                z3 = false;
                                i4 = 0;
                            } else {
                                sb.append(c5);
                                i4 = 0;
                            }
                        }
                    } else if (z3) {
                        sb.append((char) (i6 + 128));
                        z3 = false;
                        i4 = 0;
                    } else {
                        sb.append((char) i6);
                        i4 = 0;
                    }
                } else if (i6 < 3) {
                    i4 = i6 + 1;
                } else {
                    char[] cArr3 = TEXT_BASIC_SET_CHARS;
                    if (i6 >= cArr3.length) {
                        throw FormatException.getFormatInstance();
                    }
                    char c6 = cArr3[i6];
                    if (z3) {
                        sb.append((char) (c6 + 128));
                        z3 = false;
                    } else {
                        sb.append(c6);
                    }
                }
            }
            if (bitSource.available() <= 0) {
                return;
            }
        }
    }

    private static void parseTwoBytes(int i4, int i5, int[] iArr) {
        int i6 = ((i4 << 8) + i5) - 1;
        int i7 = i6 / 1600;
        iArr[0] = i7;
        int i8 = i6 - (i7 * 1600);
        int i9 = i8 / 40;
        iArr[1] = i9;
        iArr[2] = i8 - (i9 * 40);
    }

    private static int unrandomize255State(int i4, int i5) {
        int i6 = i4 - (((i5 * 149) % 255) + 1);
        return i6 >= 0 ? i6 : i6 + 256;
    }
}
