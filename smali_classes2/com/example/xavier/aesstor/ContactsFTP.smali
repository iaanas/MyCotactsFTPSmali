.class public Lcom/example/xavier/aesstor/ContactsFTP;
.super Landroid/os/AsyncTask;
.source "ContactsFTP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    .line 14
    .local v0, "myProgress":I
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 15
    new-instance v1, Lcom/example/xavier/aesstor/MyMainActivity;

    invoke-direct {v1}, Lcom/example/xavier/aesstor/MyMainActivity;-><init>()V

    .line 16
    .local v1, "myMainActivity":Lcom/example/xavier/aesstor/MyMainActivity;
    invoke-virtual {v1}, Lcom/example/xavier/aesstor/MyMainActivity;->mayRequestContacts()Z

    .line 17
    invoke-virtual {v1}, Lcom/example/xavier/aesstor/MyMainActivity;->getContacts()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v1    # "myMainActivity":Lcom/example/xavier/aesstor/MyMainActivity;
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 23
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/example/xavier/aesstor/ContactsFTP;->publishProgress([Ljava/lang/Object;)V

    .line 25
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/example/xavier/aesstor/ContactsFTP;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
