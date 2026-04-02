package org.eclipse.jetty.util;

import android.support.v4.media.f;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes2.dex */
public class StringMap extends AbstractMap implements Externalizable {
    public static final boolean CASE_INSENSTIVE = true;
    public static final int __HASH_WIDTH = 17;
    public HashSet _entrySet;
    public boolean _ignoreCase;
    public NullEntry _nullEntry;
    public Object _nullValue;
    public Node _root;
    public Set _umEntrySet;
    public int _width;

    public static class Node implements Map.Entry {
        public char[] _char;
        public Node[] _children;
        public String _key;
        public Node _next;
        public char[] _ochar;
        public Object _value;

        public Node() {
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this._key;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this._value;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this._value;
            this._value = obj;
            return obj2;
        }

        public Node split(StringMap stringMap, int i4) {
            Node node = new Node();
            char[] cArr = this._char;
            int length = cArr.length - i4;
            this._char = new char[i4];
            node._char = new char[length];
            System.arraycopy(cArr, 0, this._char, 0, i4);
            System.arraycopy(cArr, i4, node._char, 0, length);
            char[] cArr2 = this._ochar;
            if (cArr2 != null) {
                this._ochar = new char[i4];
                node._ochar = new char[length];
                System.arraycopy(cArr2, 0, this._ochar, 0, i4);
                System.arraycopy(cArr2, i4, node._ochar, 0, length);
            }
            node._key = this._key;
            node._value = this._value;
            this._key = null;
            this._value = null;
            if (stringMap._entrySet.remove(this)) {
                stringMap._entrySet.add(node);
            }
            node._children = this._children;
            int i5 = stringMap._width;
            Node[] nodeArr = new Node[i5];
            this._children = nodeArr;
            nodeArr[node._char[0] % i5] = node;
            char[] cArr3 = node._ochar;
            if (cArr3 != null && nodeArr[cArr3[0] % i5] != node) {
                nodeArr[cArr3[0] % i5] = node;
            }
            return node;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            toString(sb);
            return sb.toString();
        }

        public Node(boolean z3, String str, int i4) {
            int length = str.length() - i4;
            this._char = new char[length];
            this._ochar = new char[length];
            for (int i5 = 0; i5 < length; i5++) {
                char cCharAt = str.charAt(i4 + i5);
                this._char[i5] = cCharAt;
                if (z3) {
                    if (Character.isUpperCase(cCharAt)) {
                        cCharAt = Character.toLowerCase(cCharAt);
                    } else if (Character.isLowerCase(cCharAt)) {
                        cCharAt = Character.toUpperCase(cCharAt);
                    }
                    this._ochar[i5] = cCharAt;
                }
            }
        }

        private void toString(StringBuilder sb) {
            sb.append("{[");
            if (this._char != null) {
                int i4 = 0;
                while (true) {
                    char[] cArr = this._char;
                    if (i4 >= cArr.length) {
                        break;
                    }
                    sb.append(cArr[i4]);
                    i4++;
                }
            } else {
                sb.append('-');
            }
            sb.append(':');
            sb.append(this._key);
            sb.append(B64Code.__pad);
            sb.append(this._value);
            sb.append(']');
            if (this._children != null) {
                for (int i5 = 0; i5 < this._children.length; i5++) {
                    sb.append('|');
                    Node[] nodeArr = this._children;
                    if (nodeArr[i5] != null) {
                        nodeArr[i5].toString(sb);
                    } else {
                        sb.append("-");
                    }
                }
            }
            sb.append(MessageFormatter.DELIM_STOP);
            if (this._next != null) {
                sb.append(",\n");
                this._next.toString(sb);
            }
        }
    }

    public class NullEntry implements Map.Entry {
        private NullEntry() {
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return null;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return StringMap.this._nullValue;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            StringMap stringMap = StringMap.this;
            Object obj2 = stringMap._nullValue;
            stringMap._nullValue = obj;
            return obj2;
        }

        public String toString() {
            StringBuilder sbA = f.a("[:null=");
            sbA.append(StringMap.this._nullValue);
            sbA.append("]");
            return sbA.toString();
        }
    }

    public StringMap() {
        this._width = 17;
        this._root = new Node();
        this._ignoreCase = false;
        this._nullEntry = null;
        this._nullValue = null;
        HashSet hashSet = new HashSet(3);
        this._entrySet = hashSet;
        this._umEntrySet = Collections.unmodifiableSet(hashSet);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this._root = new Node();
        this._nullEntry = null;
        this._nullValue = null;
        this._entrySet.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return obj == null ? this._nullEntry != null : getEntry(obj.toString(), 0, obj.toString().length()) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        return this._umEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        return obj == null ? this._nullValue : obj instanceof String ? get((String) obj) : get(obj.toString());
    }

    public Map.Entry getBestEntry(byte[] bArr, int i4, int i5) {
        if (bArr == null) {
            return this._nullEntry;
        }
        Node node = this._root;
        int i6 = -1;
        for (int i7 = 0; i7 < i5; i7++) {
            char c4 = (char) bArr[i4 + i7];
            if (i6 == -1) {
                Node[] nodeArr = node._children;
                Node node2 = nodeArr == null ? null : nodeArr[c4 % this._width];
                if (node2 == null && i7 > 0) {
                    return node;
                }
                node = node2;
                i6 = 0;
            }
            while (node != null) {
                char[] cArr = node._char;
                if (cArr[i6] == c4 || (this._ignoreCase && node._ochar[i6] == c4)) {
                    i6++;
                    if (i6 == cArr.length) {
                        i6 = -1;
                    }
                } else {
                    if (i6 > 0) {
                        return null;
                    }
                    node = node._next;
                }
            }
            return null;
        }
        if (i6 > 0) {
            return null;
        }
        if (node == null || node._key != null) {
            return node;
        }
        return null;
    }

    public Map.Entry getEntry(String str, int i4, int i5) {
        if (str == null) {
            return this._nullEntry;
        }
        Node node = this._root;
        int i6 = -1;
        for (int i7 = 0; i7 < i5; i7++) {
            char cCharAt = str.charAt(i4 + i7);
            if (i6 == -1) {
                Node[] nodeArr = node._children;
                node = nodeArr == null ? null : nodeArr[cCharAt % this._width];
                i6 = 0;
            }
            while (node != null) {
                char[] cArr = node._char;
                if (cArr[i6] == cCharAt || (this._ignoreCase && node._ochar[i6] == cCharAt)) {
                    i6++;
                    if (i6 == cArr.length) {
                        i6 = -1;
                    }
                } else {
                    if (i6 > 0) {
                        return null;
                    }
                    node = node._next;
                }
            }
            return null;
        }
        if (i6 > 0) {
            return null;
        }
        if (node == null || node._key != null) {
            return node;
        }
        return null;
    }

    public int getWidth() {
        return this._width;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this._entrySet.isEmpty();
    }

    public boolean isIgnoreCase() {
        return this._ignoreCase;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        return obj == null ? put((String) null, obj2) : put(obj.toString(), obj2);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        boolean z3 = objectInput.readBoolean();
        HashMap map = (HashMap) objectInput.readObject();
        setIgnoreCase(z3);
        putAll(map);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        return obj == null ? remove((String) null) : remove(obj.toString());
    }

    public void setIgnoreCase(boolean z3) {
        if (this._root._children != null) {
            throw new IllegalStateException("Must be set before first put");
        }
        this._ignoreCase = z3;
    }

    public void setWidth(int i4) {
        this._width = i4;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this._entrySet.size();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        HashMap map = new HashMap(this);
        objectOutput.writeBoolean(this._ignoreCase);
        objectOutput.writeObject(map);
    }

    public Object put(String str, Object obj) {
        if (str == null) {
            Object obj2 = this._nullValue;
            this._nullValue = obj;
            if (this._nullEntry == null) {
                NullEntry nullEntry = new NullEntry();
                this._nullEntry = nullEntry;
                this._entrySet.add(nullEntry);
            }
            return obj2;
        }
        Node node = this._root;
        Node node2 = null;
        Node node3 = null;
        int i4 = 0;
        int i5 = -1;
        while (true) {
            if (i4 >= str.length()) {
                break;
            }
            char cCharAt = str.charAt(i4);
            if (i5 == -1) {
                Node[] nodeArr = node._children;
                node2 = null;
                node3 = node;
                node = nodeArr == null ? null : nodeArr[cCharAt % this._width];
                i5 = 0;
            }
            while (node != null) {
                char[] cArr = node._char;
                if (cArr[i5] == cCharAt || (this._ignoreCase && node._ochar[i5] == cCharAt)) {
                    i5++;
                    if (i5 == cArr.length) {
                        node2 = null;
                        i5 = -1;
                        i4++;
                    } else {
                        node2 = null;
                        i4++;
                    }
                } else if (i5 == 0) {
                    node2 = node;
                    node = node._next;
                } else {
                    node.split(this, i5);
                    i4--;
                    i5 = -1;
                    i4++;
                }
            }
            node = new Node(this._ignoreCase, str, i4);
            if (node2 != null) {
                node2._next = node;
            } else if (node3 != null) {
                if (node3._children == null) {
                    node3._children = new Node[this._width];
                }
                Node[] nodeArr2 = node3._children;
                int i6 = this._width;
                nodeArr2[cCharAt % i6] = node;
                char[] cArr2 = node._ochar;
                int i7 = cArr2[0] % i6;
                if (cArr2 != null && node._char[0] % i6 != i7) {
                    if (nodeArr2[i7] == null) {
                        nodeArr2[i7] = node;
                    } else {
                        Node node4 = nodeArr2[i7];
                        while (true) {
                            Node node5 = node4._next;
                            if (node5 == null) {
                                break;
                            }
                            node4 = node5;
                        }
                        node4._next = node;
                    }
                }
            } else {
                this._root = node;
            }
        }
        if (node == null) {
            return null;
        }
        if (i5 > 0) {
            node.split(this, i5);
        }
        Object obj3 = node._value;
        node._key = str;
        node._value = obj;
        this._entrySet.add(node);
        return obj3;
    }

    public Object remove(String str) {
        if (str == null) {
            Object obj = this._nullValue;
            NullEntry nullEntry = this._nullEntry;
            if (nullEntry != null) {
                this._entrySet.remove(nullEntry);
                this._nullEntry = null;
                this._nullValue = null;
            }
            return obj;
        }
        Node node = this._root;
        int i4 = -1;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (i4 == -1) {
                Node[] nodeArr = node._children;
                node = nodeArr == null ? null : nodeArr[cCharAt % this._width];
                i4 = 0;
            }
            while (node != null) {
                char[] cArr = node._char;
                if (cArr[i4] != cCharAt && (!this._ignoreCase || node._ochar[i4] != cCharAt)) {
                    if (i4 > 0) {
                        return null;
                    }
                    node = node._next;
                } else {
                    i4++;
                    if (i4 == cArr.length) {
                        i4 = -1;
                    }
                }
            }
            return null;
        }
        if (i4 > 0) {
            return null;
        }
        if (node != null && node._key == null) {
            return null;
        }
        Object obj2 = node._value;
        this._entrySet.remove(node);
        node._value = null;
        node._key = null;
        return obj2;
    }

    public Object get(String str) {
        if (str == null) {
            return this._nullValue;
        }
        Map.Entry entry = getEntry(str, 0, str.length());
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public StringMap(boolean z3) {
        this();
        this._ignoreCase = z3;
    }

    public Map.Entry getEntry(char[] cArr, int i4, int i5) {
        if (cArr == null) {
            return this._nullEntry;
        }
        Node node = this._root;
        int i6 = -1;
        for (int i7 = 0; i7 < i5; i7++) {
            char c4 = cArr[i4 + i7];
            if (i6 == -1) {
                Node[] nodeArr = node._children;
                node = nodeArr == null ? null : nodeArr[c4 % this._width];
                i6 = 0;
            }
            while (node != null) {
                char[] cArr2 = node._char;
                if (cArr2[i6] != c4 && (!this._ignoreCase || node._ochar[i6] != c4)) {
                    if (i6 > 0) {
                        return null;
                    }
                    node = node._next;
                } else {
                    i6++;
                    if (i6 == cArr2.length) {
                        i6 = -1;
                    }
                }
            }
            return null;
        }
        if (i6 > 0) {
            return null;
        }
        if (node == null || node._key != null) {
            return node;
        }
        return null;
    }

    public StringMap(boolean z3, int i4) {
        this();
        this._ignoreCase = z3;
        this._width = i4;
    }
}
