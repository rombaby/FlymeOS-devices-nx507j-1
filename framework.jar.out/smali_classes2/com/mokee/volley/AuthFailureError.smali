.class public Lcom/mokee/volley/AuthFailureError;
.super Lcom/mokee/volley/VolleyError;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "}\u0007?KaF\u0011?]2\u0008\u00005\u0019iZ\u0011s\\/\\\u0011(\u0019\"Z\u0011>\\/\\\u001d;U2\u0006"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x41

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/volley/AuthFailureError;->c:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x28

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x74

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x5a

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x39

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mokee/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/mokee/volley/VolleyError;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/AuthFailureError;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mokee/volley/VolleyError;-><init>(Lcom/mokee/volley/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mokee/volley/VolleyError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mokee/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/AuthFailureError;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mokee/volley/AuthFailureError;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mokee/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResolutionIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/AuthFailureError;->a:Landroid/content/Intent;

    return-object v0
.end method