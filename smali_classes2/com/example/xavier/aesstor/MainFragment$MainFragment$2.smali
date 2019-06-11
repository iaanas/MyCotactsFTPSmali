.class Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;
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
    name = "MainFragment$2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/xavier/aesstor/MainFragment;


# direct methods
.method constructor <init>(Lcom/example/xavier/aesstor/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/xavier/aesstor/MainFragment;

    .line 47
    iput-object p1, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v0}, Lcom/example/xavier/aesstor/MainFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 52
    .local v0, "count":I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 53
    .local v1, "cryptDir":Ljava/io/File;
    iget-object v2, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v2}, Lcom/example/xavier/aesstor/MainFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 54
    .local v2, "sparseBooleanArray":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 55
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v4}, Lcom/example/xavier/aesstor/MainFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/example/xavier/aesstor/MainFragment;->decryptFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v3}, Lcom/example/xavier/aesstor/MainFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 60
    iget-object v3, p0, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;->this$0:Lcom/example/xavier/aesstor/MainFragment;

    invoke-virtual {v3}, Lcom/example/xavier/aesstor/MainFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->clearFocus()V

    .line 61
    return-void
.end method
