.class Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 242
    return-void
.end method
