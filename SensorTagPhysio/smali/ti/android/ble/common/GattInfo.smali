.class public Lti/android/ble/common/GattInfo;
.super Ljava/lang/Object;
.source "GattInfo.java"


# static fields
.field public static final CC_SERVICE_UUID:Ljava/util/UUID; = null

.field public static final CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID; = null

.field public static final OAD_SERVICE_UUID:Ljava/util/UUID; = null

.field private static mDescrMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNameMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final uuidBtSigBase:Ljava/lang/String; = "0000****-0000-1000-8000-00805f9b34fb"

.field private static final uuidTiBase:Ljava/lang/String; = "f000****-0451-4000-b000-000000000000"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/common/GattInfo;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    .line 53
    const-string v0, "f000ffc0-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/common/GattInfo;->OAD_SERVICE_UUID:Ljava/util/UUID;

    .line 54
    const-string v0, "f000ccc0-0451-4000-b000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lti/android/ble/common/GattInfo;->CC_SERVICE_UUID:Ljava/util/UUID;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lti/android/ble/common/GattInfo;->mNameMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lti/android/ble/common/GattInfo;->mDescrMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .locals 1
    .parameter "xpp"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    :try_start_0
    invoke-direct {p0, p1}, Lti/android/ble/common/GattInfo;->readUuidData(Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDescription(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .parameter "uuid"

    .prologue
    .line 76
    invoke-static {p0}, Lti/android/ble/common/GattInfo;->toShortUuidStr(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, str:Ljava/lang/String;
    sget-object v1, Lti/android/ble/common/GattInfo;->mDescrMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static isBtSigUuid(Ljava/util/UUID;)Z
    .locals 3
    .parameter "u"

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, us:Ljava/lang/String;
    invoke-static {p0}, Lti/android/ble/common/GattInfo;->toShortUuidStr(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, r:Ljava/lang/String;
    const-string v2, "****"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v2, "0000****-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isTiUuid(Ljava/util/UUID;)Z
    .locals 3
    .parameter "u"

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, us:Ljava/lang/String;
    invoke-static {p0}, Lti/android/ble/common/GattInfo;->toShortUuidStr(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, r:Ljava/lang/String;
    const-string v2, "****"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "f000****-0451-4000-b000-000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private readUuidData(Landroid/content/res/XmlResourceParser;)V
    .locals 7
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 115
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, tagName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 118
    .local v3, uuid:Ljava/lang/String;
    const/4 v0, 0x0

    .line 119
    .local v0, descr:Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 121
    .local v1, eventType:I
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    .line 122
    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 125
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v4, "uuid"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v4, "descr"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_2
    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 130
    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 131
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    const-string v4, "0x"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 134
    sget-object v4, Lti/android/ble/common/GattInfo;->mNameMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v4, Lti/android/ble/common/GattInfo;->mDescrMap:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 141
    :cond_3
    return-void
.end method

.method private static toShortUuidStr(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .parameter "u"

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static uuidToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uuidStr16"

    .prologue
    .line 108
    sget-object v0, Lti/android/ble/common/GattInfo;->mNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static uuidToName(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2
    .parameter "uuid"

    .prologue
    .line 71
    invoke-static {p0}, Lti/android/ble/common/GattInfo;->toShortUuidStr(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lti/android/ble/common/GattInfo;->uuidToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static uuidToString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2
    .parameter "u"

    .prologue
    .line 96
    invoke-static {p0}, Lti/android/ble/common/GattInfo;->isBtSigUuid(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {p0}, Lti/android/ble/common/GattInfo;->toShortUuidStr(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, uuidStr:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 99
    .end local v0           #uuidStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #uuidStr:Ljava/lang/String;
    goto :goto_0
.end method
