.class Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 304
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 318
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$Stage;

    # invokes: Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$Stage;)V

    .line 319
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 308
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0920

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 309
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 310
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$800(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f0a0921

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method
