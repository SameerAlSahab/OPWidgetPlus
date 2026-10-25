.class public Lm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x0

.field private static b:I = 0x1

.field private static c:I = 0x2

.field private static d:I = 0x3

.field private static e:Z

.field public static final f:[I

.field public static final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Ll/d;->a:I

    sget v1, Ll/d;->b:I

    filled-new-array {v0, v1, v0, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lm/a;->f:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lm/a;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2af8
        0x2ee0
        0xa028
        0xa410
        0xea60
    .end array-data
.end method

.method public static a(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 2

    const/high16 v0, 0xc000000

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "action_click_weather"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "action_click_clock"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-static {p0, v1, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 14

    invoke-static {p0}, Lm/e;->e(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQHDPlus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClockWidgetUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lm/e;->c(Landroid/content/Context;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customLayoutType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "net.oneplus.launcher.pmf"

    invoke-static {v3, v4}, Lk/b;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lm/a;->e:Z

    sget v3, Lm/a;->a:I

    const/4 v4, 0x2

    const-string v5, "com.sameeralsahab.opwidgetplus"

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne p1, v3, :cond_4

    const-string p1, "getRemoteViews clock_widget_large_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v1, :cond_0

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->c:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    sget-boolean p1, Lm/a;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->d:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->a:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->b:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    if-eqz v0, :cond_3

    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->p:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->f:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_4

    :cond_3
    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->t:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->p:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->f:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_4

    :cond_4
    sget v3, Lm/a;->b:I

    if-ne p1, v3, :cond_9

    const-string p1, "getRemoteViews clock_widget_middle_02_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v1, :cond_5

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->k:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    if-nez v1, :cond_7

    sget-boolean p1, Lm/a;->e:Z

    if-eqz p1, :cond_6

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->l:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->i:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->j:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1
    if-eqz v0, :cond_8

    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->s:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->d:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->d:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->d:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->i:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_4

    :cond_8
    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->v:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->r:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->c:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->c:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->c:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->h:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_4

    :cond_9
    sget v3, Lm/a;->c:I

    if-ne p1, v3, :cond_e

    const-string p1, "getRemoteViews clock_widget_middle_01_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v1, :cond_a

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->g:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    if-nez v1, :cond_c

    sget-boolean p1, Lm/a;->e:Z

    if-eqz p1, :cond_b

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->h:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_b
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->e:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_c
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->f:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_2
    if-eqz v0, :cond_d

    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->q:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->g:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_4

    :cond_d
    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->q:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->g:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_4

    :cond_e
    const-string p1, "getRemoteViews clock_widget_small_layout"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v1, :cond_f

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->o:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_f
    if-nez v1, :cond_11

    sget-boolean p1, Lm/a;->e:Z

    if-eqz p1, :cond_10

    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->p:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_10
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->m:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_11
    new-instance p1, Landroid/widget/RemoteViews;

    sget v1, Ll/c;->n:I

    invoke-direct {p1, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_3
    if-eqz v0, :cond_12

    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->e:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->e:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->e:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v7

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->o:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v1, v7

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_4

    :cond_12
    sget v9, Ll/b;->f:I

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->f:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->c:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->e:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->a:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->e:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v0, Ll/b;->d:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->e:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    sget v9, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ll/a;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    sget v0, Ll/b;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Ll/a;->o:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v6, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRemoteViews: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static c(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 9

    const-string v0, "appWidgetMinWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lm/b;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    const-string v1, "appWidgetMaxHeight"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0}, Lm/b;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    const-string v2, "appWidgetMinHeight"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0}, Lm/b;->a(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weather - getViewType, minWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", maxHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",minHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ClockWidgetUtils"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lm/e;->e(Landroid/content/Context;)Z

    move-result p0

    const/high16 p1, 0x437a0000    # 250.0f

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v3, 0x43750000    # 245.0f

    const v4, 0x44bb8000    # 1500.0f

    const/high16 v5, 0x443e0000    # 760.0f

    const v6, 0x443dc000    # 759.0f

    const/high16 v7, 0x43e40000    # 456.0f

    const/4 v8, 0x0

    if-eqz p0, :cond_7

    cmpl-float p0, v0, v6

    if-ltz p0, :cond_0

    cmpl-float p0, v1, v5

    if-ltz p0, :cond_0

    sget p0, Lm/a;->b:I

    return p0

    :cond_0
    cmpl-float p0, v0, v8

    if-eqz p0, :cond_6

    cmpl-float p0, v1, v8

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float p0, v0, v4

    if-ltz p0, :cond_2

    cmpl-float v4, v1, v7

    if-ltz v4, :cond_2

    sget p0, Lm/a;->b:I

    return p0

    :cond_2
    if-ltz p0, :cond_3

    cmpl-float p0, v1, v3

    if-ltz p0, :cond_3

    sget p0, Lm/a;->b:I

    return p0

    :cond_3
    const/high16 p0, 0x43c80000    # 400.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_4

    cmpl-float p0, v1, v7

    if-ltz p0, :cond_4

    sget p0, Lm/a;->b:I

    return p0

    :cond_4
    cmpl-float p0, v0, v2

    if-ltz p0, :cond_5

    cmpl-float p0, v1, p1

    if-ltz p0, :cond_5

    sget p0, Lm/a;->c:I

    return p0

    :cond_5
    sget p0, Lm/a;->d:I

    return p0

    :cond_6
    :goto_0
    sget p0, Lm/a;->b:I

    return p0

    :cond_7
    cmpl-float p0, v0, v6

    if-ltz p0, :cond_8

    cmpl-float p0, v1, v5

    if-ltz p0, :cond_8

    sget p0, Lm/a;->b:I

    return p0

    :cond_8
    cmpl-float p0, v0, v8

    if-eqz p0, :cond_e

    cmpl-float p0, v1, v8

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    cmpl-float p0, v0, v4

    if-ltz p0, :cond_a

    cmpl-float v4, v1, v7

    if-ltz v4, :cond_a

    sget p0, Lm/a;->b:I

    return p0

    :cond_a
    if-ltz p0, :cond_b

    cmpl-float p0, v1, v3

    if-ltz p0, :cond_b

    sget p0, Lm/a;->c:I

    return p0

    :cond_b
    const/high16 p0, 0x43d20000    # 420.0f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_c

    const/high16 p0, 0x43fa0000    # 500.0f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_c

    sget p0, Lm/a;->b:I

    return p0

    :cond_c
    cmpl-float p0, v0, v2

    if-ltz p0, :cond_d

    cmpl-float p0, v1, p1

    if-ltz p0, :cond_d

    sget p0, Lm/a;->c:I

    return p0

    :cond_d
    sget p0, Lm/a;->d:I

    return p0

    :cond_e
    :goto_1
    sget p0, Lm/a;->b:I

    return p0
.end method

.method private static d(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 6

    const-string v0, "appWidgetMinHeight"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appWidgetMinWidth"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWeather, MIN width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClockWidgetUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWeather, MIN height: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {p0, p2}, Lm/a;->c(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p2

    invoke-static {p0, p2}, Lm/a;->b(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/time/format/FormatStyle;->LONG:Ljava/time/format/FormatStyle;

    invoke-static {v1, v2}, Lm/e;->a(Ljava/util/Locale;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView: formatter : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Ll/b;->e:I

    const-string v4, "setFormat24Hour"

    invoke-virtual {p2, v2, v4, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    sget v2, Ll/b;->e:I

    const-string v4, "setFormat12Hour"

    invoke-virtual {p2, v2, v4, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    sget v1, Ll/b;->f:I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lm/a;->a(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v1, Ll/b;->e:I

    invoke-static {p0, v2}, Lm/a;->a(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v1, Ll/b;->b:I

    invoke-static {p0, v2}, Lm/a;->a(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lnet/oneplus/widget/appwidget/TimeReceiver;->d()I

    move-result p0

    const/16 v1, 0x8

    if-gez p0, :cond_1

    sget p0, Ll/b;->h:I

    invoke-virtual {p2, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/oneplus/widget/appwidget/TimeReceiver;->d()I

    move-result p0

    sget-object v4, Lm/a;->f:[I

    array-length v5, v4

    if-ge p0, v5, :cond_2

    invoke-static {}, Lnet/oneplus/widget/appwidget/TimeReceiver;->d()I

    move-result p0

    aget p0, v4, p0

    sget v1, Ll/b;->h:I

    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Ll/b;->h:I

    invoke-virtual {p2, v1, p0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnet/oneplus/widget/appwidget/TimeReceiver;->d()I

    move-result p0

    array-length v2, v4

    if-ne p0, v2, :cond_3

    sget p0, Ll/b;->h:I

    invoke-virtual {p2, p0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_3
    :goto_0
    :try_start_0
    const-string p0, "manager.updateAppWidget : "

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "manager.updateAppWidget error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p0, "updateView: widget size is zero"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p2, p1}, Lm/a;->d(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update ClockWidget error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClockWidgetUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
