.class Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog$1;
.super Ljava/lang/Object;
.source "LightSettingsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    # getter for: Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->access$000(Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    # getter for: Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOff:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->access$100(Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    # getter for: Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->mPulseSpeedOn:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->access$000(Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v2

    if-eq v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    # invokes: Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->updateLed()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->access$200(Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;)V

    .line 192
    return-void

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
