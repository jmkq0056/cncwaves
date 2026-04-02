package g2;

import java.io.CharConversionException;
import java.io.IOException;
import java.io.OutputStream;
import java.text.MessageFormat;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes2.dex */
public abstract class w extends OutputStream {
    private static final String LSTRING_FILE = "javax.servlet.LocalStrings";
    private static ResourceBundle lStrings = ResourceBundle.getBundle(LSTRING_FILE);

    public void print(String str) throws IOException {
        if (str == null) {
            str = "null";
        }
        int length = str.length();
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if ((65280 & cCharAt) != 0) {
                throw new CharConversionException(MessageFormat.format(lStrings.getString("err.not_iso8859_1"), new Character(cCharAt)));
            }
            write(cCharAt);
        }
    }

    public void println() throws IOException {
        print("\r\n");
    }

    public void println(String str) throws IOException {
        print(str);
        println();
    }

    public void println(boolean z3) throws IOException {
        print(z3);
        println();
    }

    public void println(char c4) throws IOException {
        print(c4);
        println();
    }

    public void print(boolean z3) throws IOException {
        String string;
        if (z3) {
            string = lStrings.getString("value.true");
        } else {
            string = lStrings.getString("value.false");
        }
        print(string);
    }

    public void println(int i4) throws IOException {
        print(i4);
        println();
    }

    public void println(long j4) throws IOException {
        print(j4);
        println();
    }

    public void print(char c4) throws IOException {
        print(String.valueOf(c4));
    }

    public void print(int i4) throws IOException {
        print(String.valueOf(i4));
    }

    public void println(float f4) throws IOException {
        print(f4);
        println();
    }

    public void print(long j4) throws IOException {
        print(String.valueOf(j4));
    }

    public void print(float f4) throws IOException {
        print(String.valueOf(f4));
    }

    public void println(double d4) throws IOException {
        print(d4);
        println();
    }

    public void print(double d4) throws IOException {
        print(String.valueOf(d4));
    }
}
