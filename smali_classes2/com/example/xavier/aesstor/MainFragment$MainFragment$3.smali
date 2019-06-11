.class Lcom/example/xavier/aesstor/MainFragment$MainFragment$3;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/xavier/aesstor/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainFragment$3"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/xavier/aesstor/MainFragment;


# direct methods
.method constructor <init>(Lcom/example/xavier/aesstor/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/xavier/aesstor/MainFragment;

    .line 66
    iput-object p1, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$3;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$3;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/xavier/aesstor/MainFragment;->removeAllDecryptedFiles(Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$3;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Clean /decrypt/!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    return-void
.end method
