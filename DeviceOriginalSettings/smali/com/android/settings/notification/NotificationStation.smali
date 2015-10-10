.class public Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;,
        Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/graphics/ColorFilter;

.field private mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$1;-><init>(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$2;-><init>(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 107
    new-instance v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$3;-><init>(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 246
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 247
    const/4 p2, 0x0

    .line 249
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 257
    :goto_1
    return-object v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    const/4 v2, 0x0

    goto :goto_1

    .line 255
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    .line 286
    .local v2, "r":Landroid/content/res/Resources;
    if-nez p3, :cond_0

    move-object v0, v4

    .line 300
    :goto_0
    return-object v0

    .line 291
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p3, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 292
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon not found in "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 300
    goto :goto_0

    .line 295
    :cond_1
    const-string v3, "<system>"

    goto :goto_1
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 189
    .local v7, "currentUserId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 191
    .local v4, "active":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x32

    invoke-interface/range {v18 .. v20}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 194
    .local v8, "dismissed":[Landroid/service/notification/StatusBarNotification;
    new-instance v15, Ljava/util/ArrayList;

    array-length v0, v4

    move/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [[Landroid/service/notification/StatusBarNotification;

    const/16 v18, 0x0

    aput-object v4, v5, v18

    const/16 v18, 0x1

    aput-object v8, v5, v18

    .local v5, "arr$":[[Landroid/service/notification/StatusBarNotification;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v5    # "arr$":[[Landroid/service/notification/StatusBarNotification;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_a

    aget-object v16, v5, v11

    .line 199
    .local v16, "resultset":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v6, v16

    .local v6, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v14, :cond_9

    aget-object v17, v6, v10

    .line 200
    .local v17, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$1;)V

    .line 201
    .local v12, "info":Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 202
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 203
    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 205
    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 207
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.title"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 209
    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, ""

    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 210
    :cond_0
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "android.text"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 214
    :cond_1
    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, ""

    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 215
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 218
    :cond_3
    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const-string v18, ""

    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 219
    :cond_4
    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 221
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 222
    invoke-virtual/range {v17 .. v17}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 223
    const-string v18, "   [%d] %s: %s"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-wide v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x2

    iget-object v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    move-object/from16 v0, v16

    if-ne v0, v4, :cond_8

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    iput-boolean v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 227
    iget v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    iget v0, v12, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_7

    .line 229
    :cond_6
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 225
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 198
    .end local v12    # "info":Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;
    .end local v17    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_9
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_0

    .line 235
    .end local v4    # "active":[Landroid/service/notification/StatusBarNotification;
    .end local v6    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v8    # "dismissed":[Landroid/service/notification/StatusBarNotification;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    .end local v16    # "resultset":[Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v9

    .line 236
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v18, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v19, "Cannot load Notifications: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const/4 v15, 0x0

    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_a
    return-object v15
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot get application icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 275
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 279
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 276
    .restart local p1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot load package name"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 184
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v0, :cond_0

    .line 173
    const-string v1, "adding %d infos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mAdapter:Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;->clear()V

    .line 175
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mAdapter:Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 176
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mAdapter:Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;->sort(Ljava/util/Comparator;)V

    .line 178
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 153
    const-string v1, "onActivityCreated(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 157
    .local v0, "listView":Landroid/widget/ListView;
    invoke-static {v0, v3}, Lcom/flyme/deviceoriginalsettings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 159
    new-instance v1, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mAdapter:Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;

    .line 160
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mAdapter:Lcom/flyme/deviceoriginalsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    const-string v1, "onAttach(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 120
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 121
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 122
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const-string v1, "onCreate(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 138
    .local v0, "colorPrimaryDark":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v0, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mFilter:Landroid/graphics/ColorFilter;

    .line 139
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDetach()V

    .line 149
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 167
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;->refreshList()V

    .line 168
    return-void
.end method
