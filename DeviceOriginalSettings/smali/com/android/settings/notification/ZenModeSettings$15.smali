.class Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$15;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

.field final synthetic val$oldSettingsValue:I


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;I)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$15;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    iput p2, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$15;->val$oldSettingsValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$15;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$15;->val$oldSettingsValue:I

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->cancelDialog(I)V

    .line 574
    return-void
.end method
