.class final Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$NotificationInfo;
.super Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$ItemInfo;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfo"
.end annotation


# instance fields
.field appLabel:Ljava/lang/CharSequence;

.field count:I

.field date:J

.field messageText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$ItemInfo;-><init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$1;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$NotificationInfo;-><init>()V

    return-void
.end method
