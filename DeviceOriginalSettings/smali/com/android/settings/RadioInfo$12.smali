.class Lcom/flyme/deviceoriginalsettings/RadioInfo$12;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$12;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 936
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$12;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$3400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 937
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 948
    :goto_0
    :pswitch_0
    return v3

    .line 939
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$12;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2000(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 942
    :pswitch_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$12;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2000(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
