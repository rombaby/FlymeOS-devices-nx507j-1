.class public Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;
.super Landroid/app/Activity;
.source "NFCProfile.java"


# instance fields
.field private mProfileManager:Lmokee/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private clearPreviouslySelectedProfile()V
    .locals 3

    .prologue
    .line 143
    const-string v1, "NFCProfile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "previous-profile"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method private getPreviouslySelectedProfile()Lmokee/app/Profile;
    .locals 5

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "previous":Lmokee/app/Profile;
    const-string v3, "NFCProfile"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "previous-profile"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "uuid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 137
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmokee/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lmokee/app/Profile;

    move-result-object v1

    .line 139
    :cond_0
    return-object v1
.end method

.method private handleProfileMimeType([B)V
    .locals 8
    .param p1, "payload"    # [B

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileUtils;->toUUID([B)Ljava/util/UUID;

    move-result-object v4

    .line 89
    .local v4, "profileUuid":Ljava/util/UUID;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "system_profiles_enabled"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_1

    .line 92
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 94
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v6}, Lmokee/app/ProfileManager;->getActiveProfile()Lmokee/app/Profile;

    move-result-object v0

    .line 95
    .local v0, "currentProfile":Lmokee/app/Profile;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v6, v4}, Lmokee/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lmokee/app/Profile;

    move-result-object v5

    .line 97
    .local v5, "targetProfile":Lmokee/app/Profile;
    if-nez v5, :cond_2

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "PROFILE_UUID"

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->startActivity(Landroid/content/Intent;)V

    .line 117
    .end local v0    # "currentProfile":Lmokee/app/Profile;
    .end local v2    # "i":Landroid/content/Intent;
    .end local v5    # "targetProfile":Lmokee/app/Profile;
    :cond_0
    :goto_1
    return-void

    .line 89
    .end local v1    # "enabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 105
    .restart local v0    # "currentProfile":Lmokee/app/Profile;
    .restart local v1    # "enabled":Z
    .restart local v5    # "targetProfile":Lmokee/app/Profile;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmokee/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 106
    :cond_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->saveCurrentProfile()V

    .line 107
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->switchTo(Ljava/util/UUID;)V

    goto :goto_1

    .line 109
    :cond_4
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->getPreviouslySelectedProfile()Lmokee/app/Profile;

    move-result-object v3

    .line 110
    .local v3, "lastProfile":Lmokee/app/Profile;
    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v3}, Lmokee/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->switchTo(Ljava/util/UUID;)V

    .line 112
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->clearPreviouslySelectedProfile()V

    goto :goto_1
.end method

.method private saveCurrentProfile()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v2}, Lmokee/app/ProfileManager;->getActiveProfile()Lmokee/app/Profile;

    move-result-object v0

    .line 150
    .local v0, "currentProfile":Lmokee/app/Profile;
    if-eqz v0, :cond_0

    .line 151
    const-string v2, "NFCProfile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 152
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "previous-profile"

    invoke-virtual {v0}, Lmokee/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private switchTo(Ljava/util/UUID;)V
    .locals 6
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v5, 0x1

    .line 120
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v1, p1}, Lmokee/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lmokee/app/Profile;

    move-result-object v0

    .line 121
    .local v0, "p":Lmokee/app/Profile;
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v1, p1}, Lmokee/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 124
    const v1, 0x7f0a00a6

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lmokee/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 128
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileUtils;->vibrate(Landroid/content/Context;)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Lmokee/app/ProfileManager;->getInstance(Landroid/content/Context;)Lmokee/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->mProfileManager:Lmokee/app/ProfileManager;

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 65
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v11, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 67
    const-string v11, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 68
    .local v8, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v8, :cond_2

    .line 69
    array-length v11, v8

    new-array v6, v11, [Landroid/nfc/NdefMessage;

    .line 70
    .local v6, "msgs":[Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v11, v8

    if-ge v2, v11, :cond_2

    .line 71
    aget-object v11, v8, v2

    check-cast v11, Landroid/nfc/NdefMessage;

    aput-object v11, v6, v2

    .line 72
    aget-object v11, v6, v2

    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v9, v1, v3

    .line 73
    .local v9, "record":Landroid/nfc/NdefRecord;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 74
    .local v10, "type":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    .line 75
    .local v7, "payload":[B
    const-string v11, "cm/profile"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v7, :cond_0

    array-length v11, v7

    const/16 v12, 0x10

    if-ne v11, v12, :cond_0

    .line 77
    invoke-direct {p0, v7}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->handleProfileMimeType([B)V

    .line 72
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    .end local v7    # "payload":[B
    .end local v9    # "record":Landroid/nfc/NdefRecord;
    .end local v10    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "msgs":[Landroid/nfc/NdefMessage;
    .end local v8    # "rawMsgs":[Landroid/os/Parcelable;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfile;->finish()V

    .line 84
    return-void
.end method
