.class Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;
.super Ljava/lang/Object;
.source "ButtonSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ButtonSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ButtonSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->access$000(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 766
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->access$100(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->access$000(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->access$000(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    # invokes: Lcom/flyme/deviceoriginalsettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->access$200(Lcom/flyme/deviceoriginalsettings/ButtonSettings;Z)V

    .line 768
    return-void
.end method
