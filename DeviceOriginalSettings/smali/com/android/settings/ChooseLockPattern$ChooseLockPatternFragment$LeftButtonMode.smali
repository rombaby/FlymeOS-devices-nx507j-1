.class final enum Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum CancelDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Gone:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f0a05b4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 214
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f0a05b4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 215
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f0a0914

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 216
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f0a0914

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 217
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 212
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput p3, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 226
    iput-boolean p4, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 227
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method
