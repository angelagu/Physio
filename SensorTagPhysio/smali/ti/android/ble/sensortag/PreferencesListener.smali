.class public Lti/android/ble/sensortag/PreferencesListener;
.super Ljava/lang/Object;
.source "PreferencesListener.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final MAX_NOTIFICATIONS:I = 0x4


# instance fields
.field private context:Landroid/content/Context;

.field private preferenceFragment:Landroid/preference/PreferenceFragment;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/preference/PreferenceFragment;)V
    .locals 0
    .parameter "context"
    .parameter "sharedPreferences"
    .parameter "pf"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lti/android/ble/sensortag/PreferencesListener;->context:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lti/android/ble/sensortag/PreferencesListener;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 65
    iput-object p3, p0, Lti/android/ble/sensortag/PreferencesListener;->preferenceFragment:Landroid/preference/PreferenceFragment;

    .line 66
    return-void
.end method

.method private alertNotifyLimitaion()V
    .locals 5

    .prologue
    .line 87
    const-string v2, "Due to limitations in Android 4.3 BLE you may use a maximum of 4 notifications simultaneously.\n"

    .line 90
    .local v2, msg:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lti/android/ble/sensortag/PreferencesListener;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const-string v3, "Notifications limit"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    const v3, 0x7f020002

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 95
    const v3, 0x104000a

    new-instance v4, Lti/android/ble/sensortag/PreferencesListener$1;

    invoke-direct {v4, p0}, Lti/android/ble/sensortag/PreferencesListener$1;-><init>(Lti/android/ble/sensortag/PreferencesListener;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 102
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 103
    return-void
.end method

.method private enabledSensors()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lti/android/ble/sensortag/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v4, sensors:Ljava/util/List;,"Ljava/util/List<Lti/android/ble/sensortag/Sensor;>;"
    invoke-static {}, Lti/android/ble/sensortag/Sensor;->values()[Lti/android/ble/sensortag/Sensor;

    move-result-object v0

    .local v0, arr$:[Lti/android/ble/sensortag/Sensor;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 132
    .local v3, sensor:Lti/android/ble/sensortag/Sensor;
    invoke-direct {p0, v3}, Lti/android/ble/sensortag/PreferencesListener;->isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v3           #sensor:Lti/android/ble/sensortag/Sensor;
    :cond_1
    return-object v4
.end method

.method private getSensorFromPrefKey(Ljava/lang/String;)Lti/android/ble/sensortag/Sensor;
    .locals 5
    .parameter "key"

    .prologue
    .line 114
    :try_start_0
    const-string v3, "pref_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "_on"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 116
    .local v0, end:I
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, enumName:Ljava/lang/String;
    invoke-static {v1}, Lti/android/ble/sensortag/Sensor;->valueOf(Ljava/lang/String;)Lti/android/ble/sensortag/Sensor;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 126
    .end local v0           #end:I
    .end local v1           #enumName:Ljava/lang/String;
    .end local v2           #start:I
    :goto_0
    return-object v3

    .line 123
    :catch_0
    move-exception v3

    .line 126
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 121
    :catch_1
    move-exception v3

    goto :goto_1

    .line 119
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private isEnabledByPrefs(Lti/android/ble/sensortag/Sensor;)Z
    .locals 4
    .parameter "sensor"

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lti/android/ble/sensortag/Sensor;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, preferenceKeyString:Ljava/lang/String;
    iget-object v1, p0, Lti/android/ble/sensortag/PreferencesListener;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programmer error, could not find preference with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    iget-object v1, p0, Lti/android/ble/sensortag/PreferencesListener;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 69
    invoke-direct {p0, p2}, Lti/android/ble/sensortag/PreferencesListener;->getSensorFromPrefKey(Ljava/lang/String;)Lti/android/ble/sensortag/Sensor;

    move-result-object v2

    .line 71
    .local v2, sensor:Lti/android/ble/sensortag/Sensor;
    if-nez v2, :cond_1

    move v1, v4

    .line 72
    .local v1, noCheckboxWithThatKey:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 84
    :cond_0
    :goto_1
    return-void

    .end local v1           #noCheckboxWithThatKey:Z
    :cond_1
    move v1, v5

    .line 71
    goto :goto_0

    .line 75
    .restart local v1       #noCheckboxWithThatKey:Z
    :cond_2
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 77
    .local v3, turnedOn:Z
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lti/android/ble/sensortag/PreferencesListener;->enabledSensors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x4

    if-le v4, v6, :cond_0

    .line 79
    iget-object v4, p0, Lti/android/ble/sensortag/PreferencesListener;->preferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-virtual {v4, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 80
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    invoke-direct {p0}, Lti/android/ble/sensortag/PreferencesListener;->alertNotifyLimitaion()V

    goto :goto_1
.end method
