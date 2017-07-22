.class public final Lorg/chromium/components/web_contents_delegate_android/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/web_contents_delegate_android/R$styleable;,
        Lorg/chromium/components/web_contents_delegate_android/R$style;,
        Lorg/chromium/components/web_contents_delegate_android/R$string;,
        Lorg/chromium/components/web_contents_delegate_android/R$raw;,
        Lorg/chromium/components/web_contents_delegate_android/R$menu;,
        Lorg/chromium/components/web_contents_delegate_android/R$layout;,
        Lorg/chromium/components/web_contents_delegate_android/R$id;,
        Lorg/chromium/components/web_contents_delegate_android/R$drawable;,
        Lorg/chromium/components/web_contents_delegate_android/R$dimen;,
        Lorg/chromium/components/web_contents_delegate_android/R$color;,
        Lorg/chromium/components/web_contents_delegate_android/R$attr;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 5
    .param p0, "packageId"    # I

    .prologue
    const v4, 0xffffff

    .line 310
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->buttonColor:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->buttonColor:I

    .line 311
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->buttonRaised:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->buttonRaised:I

    .line 312
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->leading:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->leading:I

    .line 313
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->select_dialog_multichoice:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->select_dialog_multichoice:I

    .line 314
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->select_dialog_singlechoice:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$attr;->select_dialog_singlechoice:I

    .line 315
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->color_picker_background_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->color_picker_background_color:I

    .line 316
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->color_picker_border_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->color_picker_border_color:I

    .line 317
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->dropdown_dark_divider_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->dropdown_dark_divider_color:I

    .line 318
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->dropdown_divider_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$color;->dropdown_divider_color:I

    .line 319
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->color_button_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->color_button_height:I

    .line 320
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->color_picker_gradient_margin:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->color_picker_gradient_margin:I

    .line 321
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->config_min_scaling_span:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->config_min_scaling_span:I

    .line 322
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->dropdown_item_divider_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->dropdown_item_divider_height:I

    .line 323
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->dropdown_item_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->dropdown_item_height:I

    .line 324
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_chip_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_chip_height:I

    .line 325
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_half_padding:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_half_padding:I

    .line 326
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_height:I

    .line 327
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_padding:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_padding:I

    .line 328
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_text_size:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->keyboard_accessory_text_size:I

    .line 329
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->link_preview_overlay_radius:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$dimen;->link_preview_overlay_radius:I

    .line 330
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->autofill_chip_inset:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->autofill_chip_inset:I

    .line 331
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->bubble:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->bubble:I

    .line 332
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->bubble_arrow_up:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->bubble_arrow_up:I

    .line 333
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->button_borderless_compat:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->button_borderless_compat:I

    .line 334
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->button_compat:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->button_compat:I

    .line 335
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->button_compat_shape:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->button_compat_shape:I

    .line 336
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->color_button_background:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->color_button_background:I

    .line 337
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->color_picker_advanced_select_handle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->color_picker_advanced_select_handle:I

    .line 338
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->color_picker_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->color_picker_border:I

    .line 339
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_label_color:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_label_color:I

    .line 340
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_popup_background:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_popup_background:I

    .line 341
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_popup_background_down:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_popup_background_down:I

    .line 342
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_popup_background_up:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->dropdown_popup_background_up:I

    .line 343
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ic_menu_share_holo_light:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ic_menu_share_holo_light:I

    .line 344
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ic_search:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ic_search:I

    .line 345
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ic_warning:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ic_warning:I

    .line 346
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ondemand_overlay:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->ondemand_overlay:I

    .line 347
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->verify_checkmark:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$drawable;->verify_checkmark:I

    .line 348
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->ampm:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->ampm:I

    .line 349
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->arrow_image:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->arrow_image:I

    .line 350
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->autofill_keyboard_accessory_item_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->autofill_keyboard_accessory_item_label:I

    .line 351
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->autofill_keyboard_accessory_item_sublabel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->autofill_keyboard_accessory_item_sublabel:I

    .line 352
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->color_button_swatch:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->color_button_swatch:I

    .line 353
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->color_picker_advanced:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->color_picker_advanced:I

    .line 354
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->color_picker_simple:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->color_picker_simple:I

    .line 355
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_picker:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_picker:I

    .line 356
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_time_suggestion:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_time_suggestion:I

    .line 357
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_time_suggestion_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_time_suggestion_label:I

    .line 358
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_time_suggestion_value:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->date_time_suggestion_value:I

    .line 359
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->download_service_notification:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->download_service_notification:I

    .line 360
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_icon:I

    .line 361
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_label:I

    .line 362
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_label_wrapper:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_label_wrapper:I

    .line 363
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_popup_window:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_popup_window:I

    .line 364
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_sublabel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->dropdown_sublabel:I

    .line 365
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->gradient:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->gradient:I

    .line 366
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->gradient_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->gradient_border:I

    .line 367
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->hour:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->hour:I

    .line 368
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->icon_view:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->icon_view:I

    .line 369
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->main_text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->main_text:I

    .line 370
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->milli:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->milli:I

    .line 371
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->minute:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->minute:I

    .line 372
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->more_colors_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->more_colors_button:I

    .line 373
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->more_colors_button_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->more_colors_button_border:I

    .line 374
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->pickers:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->pickers:I

    .line 375
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->position_in_year:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->position_in_year:I

    .line 376
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->second:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->second:I

    .line 377
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->second_colon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->second_colon:I

    .line 378
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->second_dot:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->second_dot:I

    .line 379
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->seek_bar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->seek_bar:I

    .line 380
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_copy:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_copy:I

    .line 381
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_cut:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_cut:I

    .line 382
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_paste:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_paste:I

    .line 383
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_select_all:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_select_all:I

    .line 384
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_share:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_share:I

    .line 385
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_text_processing_menus:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_text_processing_menus:I

    .line 386
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_web_search:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->select_action_menu_web_search:I

    .line 387
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->selected_color_view:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->selected_color_view:I

    .line 388
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->selected_color_view_border:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->selected_color_view_border:I

    .line 389
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->sub_text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->sub_text:I

    .line 390
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->text:I

    .line 391
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->text_wrapper:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->text_wrapper:I

    .line 392
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->time_picker:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->time_picker:I

    .line 393
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->title:I

    .line 394
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->top_view:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->top_view:I

    .line 395
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->year:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$id;->year:I

    .line 396
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->autofill_keyboard_accessory_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->autofill_keyboard_accessory_icon:I

    .line 397
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->autofill_keyboard_accessory_item:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->autofill_keyboard_accessory_item:I

    .line 398
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->color_picker_advanced_component:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->color_picker_advanced_component:I

    .line 399
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->color_picker_dialog_content:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->color_picker_dialog_content:I

    .line 400
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->color_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->color_picker_dialog_title:I

    .line 401
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->date_time_picker_dialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->date_time_picker_dialog:I

    .line 402
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->date_time_suggestion:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->date_time_suggestion:I

    .line 403
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->dropdown_item:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->dropdown_item:I

    .line 404
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->multi_field_time_picker_dialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->multi_field_time_picker_dialog:I

    .line 405
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->two_field_date_picker:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->two_field_date_picker:I

    .line 406
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->validation_message_bubble:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->validation_message_bubble:I

    .line 407
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$menu;->select_action_menu:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$menu;->select_action_menu:I

    .line 408
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$raw;->empty:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$raw;->empty:I

    .line 409
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_date_picker_month:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_date_picker_month:I

    .line 410
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_date_picker_week:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_date_picker_week:I

    .line 411
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_date_picker_year:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_date_picker_year:I

    .line 412
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_datetime_picker_date:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_datetime_picker_date:I

    .line 413
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_datetime_picker_time:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_datetime_picker_time:I

    .line 414
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_ampm:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_ampm:I

    .line 415
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_hour:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_hour:I

    .line 416
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_milli:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_milli:I

    .line 417
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_minute:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_minute:I

    .line 418
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_second:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->accessibility_time_picker_second:I

    .line 419
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->actionbar_share:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->actionbar_share:I

    .line 420
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->actionbar_textselection_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->actionbar_textselection_title:I

    .line 421
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->actionbar_web_search:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->actionbar_web_search:I

    .line 422
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->autofill_keyboard_accessory_content_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->autofill_keyboard_accessory_content_description:I

    .line 423
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->autofill_popup_content_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->autofill_popup_content_description:I

    .line 424
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_black:I

    .line 425
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_blue:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_blue:I

    .line 426
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_cancel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_cancel:I

    .line 427
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_cyan:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_cyan:I

    .line 428
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_green:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_green:I

    .line 429
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_magenta:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_magenta:I

    .line 430
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_more:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_more:I

    .line 431
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_red:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_red:I

    .line 432
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_set:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_set:I

    .line 433
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_white:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_white:I

    .line 434
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_yellow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_button_yellow:I

    .line 435
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_dialog_title:I

    .line 436
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_hue:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_hue:I

    .line 437
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_saturation:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_saturation:I

    .line 438
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_value:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->color_picker_value:I

    .line 439
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->copy_to_clipboard_failure_message:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->copy_to_clipboard_failure_message:I

    .line 440
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_clear:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_clear:I

    .line 441
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_other_button_label:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_other_button_label:I

    .line 442
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_set:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_set:I

    .line 443
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_picker_dialog_title:I

    .line 444
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_time_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->date_time_picker_dialog_title:I

    .line 445
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->low_memory_error:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->low_memory_error:I

    .line 446
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_button:I

    .line 447
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_text_invalid_progressive_playback:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_text_invalid_progressive_playback:I

    .line 448
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_text_unknown:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_text_unknown:I

    .line 449
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_error_title:I

    .line 450
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_loading_video:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->media_player_loading_video:I

    .line 451
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->month_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->month_picker_dialog_title:I

    .line 452
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->opening_file_error:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->opening_file_error:I

    .line 453
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->password_generation_popup_content_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->password_generation_popup_content_description:I

    .line 454
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_error_toast:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_error_toast:I

    .line 455
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_no_storage_toast:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_no_storage_toast:I

    .line 456
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_started_toast:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_started_toast:I

    .line 457
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_stopped_toast:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->profiler_stopped_toast:I

    .line 458
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_am:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_am:I

    .line 459
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_hour_minute_separator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_hour_minute_separator:I

    .line 460
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_minute_second_separator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_minute_second_separator:I

    .line 461
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_pm:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_pm:I

    .line 462
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_second_subsecond_separator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_second_subsecond_separator:I

    .line 463
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->time_picker_dialog_title:I

    .line 464
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->updating_chrome:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->updating_chrome:I

    .line 465
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->week_picker_dialog_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$string;->week_picker_dialog_title:I

    .line 466
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompat:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompat:I

    .line 467
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatBase:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatBase:I

    .line 468
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatBorderless:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatBorderless:I

    .line 469
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatBorderlessOverlay:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatBorderlessOverlay:I

    .line 470
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatOverlay:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->ButtonCompatOverlay:I

    .line 471
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->DropdownPopupWindow:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->DropdownPopupWindow:I

    .line 472
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->SelectActionMenuShare:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->SelectActionMenuShare:I

    .line 473
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->SelectActionMenuWebSearch:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->SelectActionMenuWebSearch:I

    .line 474
    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->SelectPopupDialog:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lorg/chromium/components/web_contents_delegate_android/R$style;->SelectPopupDialog:I

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->ButtonCompat:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 476
    sget-object v1, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->ButtonCompat:[I

    sget-object v2, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->ButtonCompat:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->TextViewWithLeading:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 479
    sget-object v1, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->TextViewWithLeading:[I

    sget-object v2, Lorg/chromium/components/web_contents_delegate_android/R$styleable;->TextViewWithLeading:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    :cond_1
    return-void
.end method
