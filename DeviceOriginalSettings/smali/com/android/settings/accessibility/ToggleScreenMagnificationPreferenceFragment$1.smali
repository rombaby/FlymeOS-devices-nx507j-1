.class Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleScreenMagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;Z)Z
    .locals 2
    .param p1, "toggleSwitch"    # Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 39
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 41
    const/4 v0, 0x0

    return v0
.end method
