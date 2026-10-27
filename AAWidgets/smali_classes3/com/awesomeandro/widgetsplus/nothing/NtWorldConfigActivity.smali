.class public Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field static final CITIES:[Ljava/lang/String;


# instance fields
.field first:Ljava/lang/String;

.field id:I

.field slot:I


# direct methods
.method static constructor <clinit>()V
    .locals 40

    const-string v0, "Honolulu|Pacific/Honolulu"

    const-string v1, "Anchorage|America/Anchorage"

    const-string v2, "Los Angeles|America/Los_Angeles"

    const-string v3, "Denver|America/Denver"

    const-string v4, "Chicago|America/Chicago"

    const-string v5, "New York|America/New_York"

    const-string v6, "Toronto|America/Toronto"

    const-string v7, "Mexico City|America/Mexico_City"

    const-string v8, "Bogota|America/Bogota"

    const-string v9, "Sao Paulo|America/Sao_Paulo"

    const-string v10, "Buenos Aires|America/Argentina/Buenos_Aires"

    const-string v11, "Reykjavik|Atlantic/Reykjavik"

    const-string v12, "London|Europe/London"

    const-string v13, "Lisbon|Europe/Lisbon"

    const-string v14, "Paris|Europe/Paris"

    const-string v15, "Berlin|Europe/Berlin"

    const-string v16, "Rome|Europe/Rome"

    const-string v17, "Madrid|Europe/Madrid"

    const-string v18, "Stockholm|Europe/Stockholm"

    const-string v19, "Athens|Europe/Athens"

    const-string v20, "Istanbul|Europe/Istanbul"

    const-string v21, "Moscow|Europe/Moscow"

    const-string v22, "Cairo|Africa/Cairo"

    const-string v23, "Lagos|Africa/Lagos"

    const-string v24, "Nairobi|Africa/Nairobi"

    const-string v25, "Johannesburg|Africa/Johannesburg"

    const-string v26, "Dubai|Asia/Dubai"

    const-string v27, "Tehran|Asia/Tehran"

    const-string v28, "Karachi|Asia/Karachi"

    const-string v29, "Delhi|Asia/Kolkata"

    const-string v30, "Dhaka|Asia/Dhaka"

    const-string v31, "Bangkok|Asia/Bangkok"

    const-string v32, "Jakarta|Asia/Jakarta"

    const-string v33, "Singapore|Asia/Singapore"

    const-string v34, "Hong Kong|Asia/Hong_Kong"

    const-string v35, "Beijing|Asia/Shanghai"

    const-string v36, "Seoul|Asia/Seoul"

    const-string v37, "Tokyo|Asia/Tokyo"

    const-string v38, "Sydney|Australia/Sydney"

    const-string v39, "Auckland|Pacific/Auckland"

    filled-new-array/range {v0 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->CITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method ask(I)V
    .locals 4

    iput p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->slot:I

    sget-object p1, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->CITIES:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->CITIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->slot:I

    if-nez v1, :cond_1

    const-string v1, "nt_world_first"

    goto :goto_1

    :cond_1
    const-string v1, "nt_world_second"

    :goto_1
    const-string v2, "string"

    invoke-static {p0, v1, v2}, Lcom/awesomeandro/widgetsplus/nothing/NtProvider;->rid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->slot:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->CITIES:[Ljava/lang/String;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->first:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->ask(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->first:Ljava/lang/String;

    sget-object v0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->CITIES:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->save(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->id:I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "appWidgetId"

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->ask(I)V

    return-void
.end method

.method save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "nt_world"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget p2, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->id:I

    new-instance v0, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;

    invoke-direct {v0}, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;-><init>()V

    iget v1, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->id:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorld;->build(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "appWidgetId"

    iget v0, p0, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->id:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/awesomeandro/widgetsplus/nothing/NtWorldConfigActivity;->finish()V

    return-void
.end method
