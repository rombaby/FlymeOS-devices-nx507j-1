.class public final enum Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 261
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0a090b

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 265
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f0a091f

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 268
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f0a090e

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 272
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f0a090f

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 275
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f0a0910

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 279
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f0a0909

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 283
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f0a0911

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 259
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .param p3, "headerMessage"    # I
    .param p4, "leftMode"    # Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .param p5, "rightMode"    # Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .param p6, "footerMessage"    # I
    .param p7, "patternEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 299
    iput p3, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 300
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 301
    iput-object p5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 302
    iput p6, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 303
    iput-boolean p7, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 304
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 259
    const-class v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
