.class Lcom/flyme/deviceoriginalsettings/RadioInfo$2;
.super Landroid/os/Handler;
.source "RadioInfo.java"


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
    .line 188
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 191
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 193
    :sswitch_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePhoneState()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    goto :goto_0

    .line 197
    :sswitch_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSignalStrength()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    goto :goto_0

    .line 201
    :sswitch_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateServiceState()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1500(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    .line 202
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePowerState()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1600(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    .line 203
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateImsVoLteProvisionedState()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1700(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    goto :goto_0

    .line 207
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 209
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 210
    .local v1, "type":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1800(Lcom/flyme/deviceoriginalsettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1000(Lcom/flyme/deviceoriginalsettings/RadioInfo;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1800(Lcom/flyme/deviceoriginalsettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 217
    .end local v1    # "type":I
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1800(Lcom/flyme/deviceoriginalsettings/RadioInfo;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 221
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2000(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 228
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 229
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 230
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2100(Lcom/flyme/deviceoriginalsettings/RadioInfo;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 232
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2200(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsc:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "refresh error"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsc:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 244
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 246
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsc:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$2300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "update error"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method
