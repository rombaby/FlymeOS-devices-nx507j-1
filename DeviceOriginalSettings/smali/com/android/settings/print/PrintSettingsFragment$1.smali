.class Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$1;
.super Landroid/os/Handler;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;)V

    .line 111
    return-void
.end method
