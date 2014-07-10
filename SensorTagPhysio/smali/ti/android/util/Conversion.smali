.class public Lti/android/util/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BytetohexString([BI)Ljava/lang/String;
    .locals 8
    .parameter "b"
    .parameter "len"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 58
    .local v0, formatter:Ljava/util/Formatter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 59
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_0

    .line 60
    const-string v3, "%02X:"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 58
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const-string v3, "%02X"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static BytetohexString([BZ)Ljava/lang/String;
    .locals 8
    .parameter "b"
    .parameter "reverse"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 74
    .local v0, formatter:Ljava/util/Formatter;
    if-nez p1, :cond_1

    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    .line 76
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 77
    const-string v3, "%02X:"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 75
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const-string v3, "%02X"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_1

    .line 83
    .end local v1           #i:I
    :cond_1
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 84
    if-lez v1, :cond_2

    .line 85
    const-string v3, "%02X:"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 83
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 87
    :cond_2
    const-string v3, "%02X"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p0, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static buildUint16(BB)S
    .locals 2
    .parameter "hi"
    .parameter "lo"

    .prologue
    .line 51
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hexStringtoByte(Ljava/lang/String;[B)I
    .locals 6
    .parameter "sb"
    .parameter "results"

    .prologue
    const/16 v5, 0x10

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, i:I
    const/4 v1, 0x0

    .line 102
    .local v1, j:Z
    if-eqz p0, :cond_6

    .line 103
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_2

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x66

    if-le v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3

    .line 106
    :cond_2
    if-eqz v1, :cond_4

    .line 107
    aget-byte v3, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 112
    :goto_1
    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 103
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    goto :goto_1

    .line 112
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 116
    .end local v2           #k:I
    :cond_6
    return v0
.end method

.method public static hiUint16(S)B
    .locals 1
    .parameter "v"

    .prologue
    .line 47
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    return v0
.end method

.method private static isAsciiPrintable(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 133
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAsciiPrintable(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 123
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 124
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lti/android/util/Conversion;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static loUint16(S)B
    .locals 1
    .parameter "v"

    .prologue
    .line 43
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method
