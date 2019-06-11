.class public Lcom/example/xavier/aesstor/MainFragment;
.super Landroid/support/v4/app/ListFragment;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/xavier/aesstor/MainFragment$C02124;,
        Lcom/example/xavier/aesstor/MainFragment$MainFragment$3;,
        Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;,
        Lcom/example/xavier/aesstor/MainFragment$MainFragment$1;
    }
.end annotation


# instance fields
.field button:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-string v0, "native-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method private checkFileStorage()[Ljava/lang/String;
    .locals 5

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "/crypt/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "cryptDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v2, "stringBuilder2":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, "/decrypt/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "encryptDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 134
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/example/xavier/aesstor/MainFragment;->getFilesInStorage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public native decryptFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native getFilesInStorage(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/example/xavier/aesstor/MainFragment;->checkFileStorage()[Ljava/lang/String;

    move-result-object v2

    const v3, 0x109000f

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/example/xavier/aesstor/MainFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/xavier/aesstor/MainFragment$MainFragment$1;

    invoke-direct {v1, p0}, Lcom/example/xavier/aesstor/MainFragment$MainFragment$1;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;

    invoke-direct {v1, p0}, Lcom/example/xavier/aesstor/MainFragment$MainFragment$2;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/xavier/aesstor/MainFragment$MainFragment$3;

    invoke-direct {v1, p0}, Lcom/example/xavier/aesstor/MainFragment$MainFragment$3;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/example/xavier/aesstor/MainFragment$C02124;

    invoke-direct {v1, p0}, Lcom/example/xavier/aesstor/MainFragment$C02124;-><init>(Lcom/example/xavier/aesstor/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 109
    const v0, 0x7f090020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/example/xavier/aesstor/MainFragment;->button:Landroid/widget/Button;

    .line 111
    iget-object v1, p0, Lcom/example/xavier/aesstor/MainFragment;->button:Landroid/widget/Button;

    const-string v2, "\u0412\u041e\u0419\u0422\u0418"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 116
    invoke-virtual {p0}, Lcom/example/xavier/aesstor/MainFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    .local v0, "item":Ljava/lang/String;
    return-void
.end method

.method public native removeAllDecryptedFiles(Ljava/lang/String;)I
.end method

.method public native removeDecryptedCopy(Ljava/lang/String;Ljava/lang/String;)I
.end method
