.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0

    .prologue
    .line 1906
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1909
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .line 1910
    .local v0, "target":Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 1911
    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$1000(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;J)V

    .line 1913
    :cond_0
    return-void
.end method
