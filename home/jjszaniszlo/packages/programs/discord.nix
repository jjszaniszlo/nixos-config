{pkgs, config, ...}: {
  home.packages = with pkgs; [
    vesktop
    victor-mono
  ];

  home.persistence = {
    "/persist/${config.home.homeDirectory}" = {
      directories = [
        ".config/vesktop/sessionData"
        ".config/vesktop/settings"
      ];
    };
  };

  xdg.configFile."vesktop/themes/base16.css".text = ''
    /**
     * @name KanagawaGTK-Discord
     * @author ardishco#0301
     * @version 1.420.69.1 
     * @description ardishco's attempt at replicating the Kanagawa GTK theme for discord (for real this time).
     * @website https://github.com/ardishco-the-great/KanagawaGTK-for-discord
     * @invite https://discord.gg/5yRRwxUUbm
    (Only the last number on the version number matters)
     **/
    button[class*=emojiButtonNormal] > div > div {
      filter: grayscale(0.77) hue-rotate(185deg) brightness(1.015) opacity(100%) !important;
    }

    [data-popout-root],
    html {
      --brand-experiment: #DCD7BA;
      --brand-experiment-100: white;
      --brand-experiment-130: white;
      --brand-experiment-160: white;
      --brand-experiment-200: white;
      --brand-experiment-230: white;
      --brand-experiment-260: white;
      --brand-experiment-300: white;
      --brand-experiment-330: #fbfcfe;
      --brand-experiment-360: #e5ecfb;
      --brand-experiment-400: #cfdbf8;
      --brand-experiment-430: #b8cbf5;
      --brand-experiment-460: #a2baf1;
      --brand-experiment-500: #DCD7BA;
      --brand-experiment-530: #769aeb;
      --brand-experiment-560: #6089e7;
      --brand-experiment-600: #4979e4;
      --brand-experiment-630: #3368e1;
      --brand-experiment-660: #2059da;
      --brand-experiment-700: #1d50c4;
      --brand-experiment-730: #1b4cb9;
      --brand-experiment-760: #1a47ae;
      --brand-experiment-800: #1842a3;
      --brand-experiment-830: #163e98;
      --brand-experiment-860: #15398c;
      --brand-experiment-900: #133581;
      --brand-experiment-05a: rgba(140, 170, 238, 0.05);
      --brand-experiment-10a: rgba(140, 170, 238, 0.1);
      --brand-experiment-15a: rgba(140, 170, 238, 0.15);
      --brand-experiment-20a: rgba(140, 170, 238, 0.2);
      --brand-experiment-25a: rgba(140, 170, 238, 0.25);
      --brand-experiment-30a: rgba(140, 170, 238, 0.3);
      --brand-experiment-35a: rgba(140, 170, 238, 0.35);
      --brand-experiment-40a: rgba(140, 170, 238, 0.4);
      --brand-experiment-45a: rgba(140, 170, 238, 0.45);
      --brand-experiment-50a: rgba(140, 170, 238, 0.5);
      --brand-experiment-55a: rgba(140, 170, 238, 0.55);
      --brand-experiment-60a: rgba(140, 170, 238, 0.6);
      --brand-experiment-65a: rgba(140, 170, 238, 0.65);
      --brand-experiment-70a: rgba(140, 170, 238, 0.7);
      --brand-experiment-75a: rgba(140, 170, 238, 0.75);
      --brand-experiment-80a: rgba(140, 170, 238, 0.8);
      --brand-experiment-85a: rgba(140, 170, 238, 0.85);
      --brand-experiment-90a: rgba(140, 170, 238, 0.9);
      --brand-experiment-95a: rgba(140, 170, 238, 0.95);
    }

    .theme-dark,
    .theme-light {
      --header-primary: #F38BA8;
      --header-secondary: #a5adce;
      --text-normal: #DCD7BA;
      --text-muted: #a5adce;
      --text-link: #89B4FA;
      --text-link-low-saturation: #85c1dc;
      --text-positive: #a6d189;
      --text-warning: #e5c890;
      --text-danger: #e78284;
      --text-brand: #DCD7BA;
      --background-primary: #1F1F28;
      --background-secondary: #212430;
      --background-secondary-alt: #252836;
      --background-tertiary: #232634;
      --background-accent: #DCD7BA;
      --background-floating: #1f222e;
      --background-nested-floating: #292c3c;
      --background-mobile-primary: #1F1F28;
      --background-mobile-secondary: #292c3c;
      --chat-background: #1F1F28;
      --chat-border: #232634;
      --chat-input-container-background: #1F1F28;
      --background-modifier-hover: rgba(198, 208, 245, 0.15);
      --background-modifier-selected: rgba(198, 208, 245, 0.2);
      --background-modifier-accent: rgba(198, 208, 245, 0.26);
      --background-modifier-active: rgba(198, 208, 245, 0.17);
      --info-positive-background: rgba(166, 209, 137, 0.15);
      --info-positive-foreground: #a6d189;
      --info-positive-text: #DCD7BA;
      --info-warning-background: rgba(229, 200, 144, 0.15);
      --info-warning-foreground: #e5c890;
      --info-warning-text: #DCD7BA;
      --info-danger-background: rgba(231, 130, 132, 0.15);
      --info-danger-foreground: #e78284;
      --info-danger-text: #DCD7BA;
      --info-help-background: rgba(153, 209, 219, 0.15);
      --info-help-foreground: #99d1db;
      --info-help-text: #DCD7BA;
      --status-positive-background: #a6d189;
      --status-positive-text: #1F1F28;
      --status-warning-background: #e5c890;
      --status-warning-text: #1F1F28;
      --status-danger-background: #e78284;
      --status-danger-text: #1F1F28;
      --status-danger: #e78284;
      --status-positive: #a6d189;
      --status-warning: #e5c890;
      --status-yellow-400: #e5c890;
      --status-green-600: #a6d189;
      --primary-dark-600: #1F1F28;
      --status-yellow-560: #e5c890;
      --status-red-500: #e78284;
      --status-red-530: #e78284;
      --status-yellow-500: #e5c890;
      --black-500: #232634;
      --green-360: #a6d189;
      --primary-400: #b5bfe2;
      --primary-dark-700: #232634;
      --status-green-560: #a6d189;
      --white-500: #DCD7BA;
      --guild-boosting-pink: #f4b8e4;
      --premium-perk-yellow: #e5c890;
      --premium-perk-purple: #ca9ee6;
      --premium-perk-dark-blue: #6089e7;
      --premium-perk-light-blue: #a2baf1;
      --premium-perk-blue: #DCD7BA;
      --premium-perk-green: #a6d189;
      --premium-perk-pink: #f4b8e4;
      --premium-perk-orange: #ef9f76;
      --status-green-400: #a6d189;
      --button-danger-background: #e78284;
      --button-danger-background-hover: #e36d6f;
      --button-danger-background-active: #6b91e9;
      --button-danger-background-disabled: #e78284;
      --button-positive-background: #a6d189;
      --button-positive-background-hover: #98ca77;
      --button-positive-background-active: #91c66d;
      --button-positive-background-disabled: #a6d189;
      --button-secondary-background: #51576d;
      --button-secondary-background-hover: #464b5e;
      --button-secondary-background-active: #464b5e;
      --button-secondary-background-disabled: #51576d;
      --button-outline-danger-text: #DCD7BA;
      --button-outline-danger-border: #e78284;
      --button-outline-danger-background: transparent;
      --button-outline-danger-background-hover: #e57779;
      --button-outline-danger-text-hover: #1F1F28;
      --button-outline-danger-border-hover: #e57779;
      --button-outline-danger-background-active: #e36d6f;
      --button-outline-danger-text-active: #1F1F28;
      --button-outline-danger-border-active: #e57779;
      --button-outline-positive-text: #DCD7BA;
      --button-outline-positive-border: #a6d189;
      --button-outline-positive-background: transparent;
      --button-outline-positive-background-hover: #9fcd80;
      --button-outline-positive-text-hover: #1F1F28;
      --button-outline-positive-border-hover: #9fcd80;
      --button-outline-positive-background-active: #98ca77;
      --button-outline-positive-text-active: #1F1F28;
      --button-outline-positive-border-active: #9fcd80;
      --button-outline-brand-text: #DCD7BA;
      --button-outline-brand-border: #DCD7BA;
      --button-outline-brand-background: transparent;
      --button-outline-brand-background-hover: #81a2ec;
      --button-outline-brand-text-hover: #1F1F28;
      --button-outline-brand-border-hover: #81a2ec;
      --button-outline-brand-background-active: #769aeb;
      --button-outline-brand-text-active: #1F1F28;
      --button-outline-brand-border-active: #81a2ec;
      --button-outline-primary-text: #DCD7BA;
      --button-outline-primary-border: #626880;
      --button-outline-primary-background: transparent;
      --button-outline-primary-background-hover: #5c6279;
      --button-outline-primary-text-hover: #1F1F28;
      --button-outline-primary-border-hover: #5c6279;
      --button-outline-primary-background-active: #575c72;
      --button-outline-primary-text-active: #1F1F28;
      --button-outline-primary-border-active: #5c6279;
      --modal-background: #1F1F28;
      --modal-footer-background: #232634;
      --scrollbar-thin-thumb: #DCD7BA;
      --scrollbar-thin-track: transparent;
      --scrollbar-auto-thumb: #DCD7BA;
      --scrollbar-auto-track: #232634;
      --scrollbar-auto-scrollbar-color-thumb: #DCD7BA;
      --scrollbar-auto-scrollbar-color-track: #232634;
      --input-background: #232634;
      --input-placeholder-text: #b5bfe2;
      --logo-primary: #DCD7BA;
      --control-brand-foreground: #DCD7BA;
      --control-brand-foreground-new: #DCD7BA;
      --mention-foreground: #DCD7BA;
      --mention-background: rgba(140, 170, 238, 0.3);
      --background-mentioned: rgba(229, 200, 144, 0.1);
      --background-mentioned-hover: rgba(229, 200, 144, 0.08);
      --background-message-hover: rgba(35, 38, 52, 0.25);
      --background-message-automod: rgba(242, 213, 207, 0.05);
      --background-message-automod-hover: rgba(242, 213, 207, 0.1);
      --background-message-highlight: rgba(140, 170, 238, 0.1);
      --background-message-highlight-hover: rgba(140, 170, 238, 0.08);
      --channels-default: #949ec5;
      --channel-icon: #949ec5;
      --channel-text-area-placeholder: rgba(198, 208, 245, 0.5);
      --channeltextarea-background: #292c3c;
      --activity-card-background: #232634;
      --textbox-markdown-syntax: #737994;
      --spoiler-revealed-background: #414559;
      --spoiler-hidden-background: #626880;
      --android-navigation-bar-background: #232634;
      --android-ripple: rgba(35, 38, 52, 0.3);
      --deprecated-card-bg: rgba(35, 38, 52, 0.6);
      --deprecated-card-editable-bg: rgba(35, 38, 52, 0.3);
      --deprecated-store-bg: #1F1F28;
      --deprecated-quickswitcher-input-background: #575c72;
      --deprecated-quickswitcher-input-placeholder: rgba(35, 38, 52, 0.3);
      --deprecated-text-input-bg: #232634;
      --deprecated-text-input-border: rgba(35, 38, 52, 0.3);
      --deprecated-text-input-border-hover: #191b25;
      --deprecated-text-input-border-disabled: #292c3c;
      --deprecated-text-input-prefix: #a5adce;
      --focus-primary: #DCD7BA;
      --interactive-normal: #DCD7BA;
      --interactive-muted: rgba(198, 208, 245, 0.3);
      --interactive-hover: #DCD7BA;
      --interactive-active: #DCD7BA;
    }
    .theme-dark [class*=disabledPointerEvents],
    .theme-light [class*=disabledPointerEvents] {
      --background-floating: #414559;
      --background-tertiary: #1e212b;
    }
    .theme-dark [class*=disabledPointerEvents] svg[class^=activityIcon-],
    .theme-light [class*=disabledPointerEvents] svg[class^=activityIcon-] {
      color: #a5adce;
    }
    .theme-dark [class*=disabledPointerEvents] [class*=tooltipBrand-] [class*=tooltipText-],
    .theme-light [class*=disabledPointerEvents] [class*=tooltipBrand-] [class*=tooltipText-] {
      color: #232634;
    }

    [class*=staffBadge-] {
      background-image: url("data:image/svg+xml,%3Csvg fill='none' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='%23232634'%3E%3Cpath d='m5.92127 6.03526s.22115-.33086.31286-.47743c.09172-.14657-.23743-.49286-.36514-.60257-.12772-.10971-.32914-.05486-.32914-.05486-1.60715.71229-2.41115 2.17372-2.52086 2.466-.10972.29229.27943.61115.56657.76715.132.072.342-.08743.47143-.20572l.04371-.04457.06772-.06857.00085-.00086 4.37229 4.35517.59743-.5975 1.09801-1.098-4.32173-4.43224z'/%3E%3Cpath d='m16.2505 10.6294.2306-.2194 2.0717 2.052c.0146.0129.03.018.0437.018.0395 0 .072-.036.072-.036s2.2937-2.2757 2.3015-2.2834c.0677-.0669 0-.1037 0-.1037l-1.7692-1.78119-.0026.00258-.2425-.23743.1354-.13029.2897.03343-.0548-.384.0728-.07371-.1088-.55372c-.378-.53571-1.4135-1.39371-1.4135-1.39371l-.5417-.09772-.0548.07286-.408-.06086.0394.348.0257.02572-.1209.12171-.6685-.654s-3.8795-2.10686-4.086-2.20457c-.1166-.054-.2023-.09-.2846-.09-.0634 0-.1251.02143-.1963.072-.1646.11571-.0677.34886-.0677.34886l2.412 4.45714.4826.47829-.1509.15085-.0557.05572-.3857-.05315.0591.38229-.1114.11143-.0197-.01972c-.018-.018-.0429-.02742-.0669-.02742s-.048.00942-.0668.02742c-.0369.03686-.0369.09686 0 .13372l.0197.01971-.0532.054-.0137-.01457c-.0188-.018-.0428-.02743-.0668-.02743-.0249 0-.0489.00943-.0669.02743-.0368.03686-.0368.09686 0 .13372l.0146.01457-1.0149 1.02004-.0231-.0232c-.0189-.018-.0429-.0274-.0669-.0274s-.048.0094-.0668.0274c-.0369.0369-.0369.0969 0 .1337l.024.0232-.054.054-.018-.0172c-.018-.0188-.0429-.0283-.066-.0283-.0249 0-.0489.0095-.0677.0283-.036.0369-.036.096 0 .1329l.018.018-.132.1337-.018.1697.0694.0712-.0017.0008-.084.0857-5.47632 5.4755-.07114-.0592-.22714.0326-.12858.1303-.00857-.0086c-.01885-.0189-.04285-.0283-.06685-.0283s-.04886.0094-.06686.0283c-.03686.0369-.03686.096 0 .1329l.01028.0102-.05314.0549-.00514-.0051c-.018-.0189-.04286-.0283-.06686-.0283s-.048.0094-.06686.0283c-.036.0368-.036.096 0 .1328l.006.0069-1.002 1.0191-.02057-.0206c-.01885-.0188-.042-.0274-.06685-.0274-.024 0-.048.0086-.06686.0274-.03686.0369-.03686.0969 0 .1338l.02228.0214-.05314.054-.01628-.0163c-.01886-.018-.04286-.0274-.06772-.0274-.02314 0-.048.0094-.066.0274-.03686.0369-.03686.0969 0 .1337l.01714.018-.07457.0763-.38828-.0694.02914.4337-.12257.1251.10628.5846s.16286.5091.498.8469c.32486.3274.82029.4842.84172.5005l.55971.0977.138-.1354.38572.0626-.06343-.3814.11743-.1149.054.054c.018.018.042.0274.066.0274s.04885-.0094.06685-.0274c.03686-.0377.03686-.0969 0-.1337l-.05314-.0532.05486-.0531.04628.0463c.018.0188.04286.0283.06686.0283s.048-.0095.06686-.0283c.03686-.0369.03686-.096 0-.1329l-.04543-.0463 1.01743-1.0037.04457.0446c.018.0189.04286.0274.06686.0274s.048-.0085.06685-.0274c.036-.0369.036-.0969 0-.1337l-.04371-.0429.054-.054.03771.0377c.018.018.042.0275.066.0275.02486 0 .04886-.0095.06686-.0275.03686-.0368.03686-.0968 0-.1337l-.03686-.0368.114-.1115.04115-.2442-.06086-.0609.00086-.0009.11057-.1097 5.43946-5.4411-.0026-.0052.1063.1098.1706-.0189.1534-.1543.0248.0249c.0189.018.0429.0274.0669.0274s.0489-.0094.0669-.0274c.0368-.0369.0368-.0969 0-.1337l-.0249-.0249.054-.0531.0189.0188c.018.018.042.0274.0668.0274.024 0 .048-.0094.066-.0274.0369-.0368.0369-.0968 0-.1337l-.0188-.0197 1.0165-1.0183.0266.0266c.018.018.042.0274.066.0274.0249 0 .0489-.0094.0669-.0274.0368-.0369.0368-.0969 0-.1337l-.0266-.0266.054-.054.0206.0214c.0188.018.0428.0274.0668.0274s.048-.0094.0669-.0274c.0368-.0377.0368-.0968 0-.1337l-.0206-.0214.1131-.1132.378.0592z'/%3E%3Cpath d='m17.0057 16.7793-2.4111-1.8274-.4294-.4423-1.6637 1.6637.4183.3995 1.5711 2.3562 2.1188 2.3203 2.4421-2.2783z'/%3E%3C/g%3E%3C/svg%3E") !important;
    }

    [class*=permissionCheckmark-] {
      background-image: url("data:image/svg+xml,%3Csvg height='18' width='18' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cpath d='m0 0h18v18h-18z'/%3E%3Cpath d='m14.25 14.25h-10.5v-10.5h7.5v-1.5h-7.5c-.8325 0-1.5.6675-1.5 1.5v10.5c0 .8284271.67157288 1.5 1.5 1.5h10.5c.8284271 0 1.5-.6715729 1.5-1.5v-6h-1.5zm-7.5675-6.94-1.0575 1.065 3.375 3.375 7.5-7.5-1.0575-1.065-6.4425 6.4425z' fill='%23a6d189'/%3E%3C/g%3E%3C/svg%3E") !important;
    }

    [class*=removeKeybind-] {
      background-image: url('data:image/svg+xml,%3Csvg xmlns="http://www.w3.org/2000/svg" width="18" height="18"%3E%3Cg fill="none" fill-rule="evenodd"%3E%3Cpath d="M0 0h18v18H0"/%3E%3Cpath fill="%23232634" d="M14.25 4.8075L13.1925 3.75 9 7.9425 4.8075 3.75 3.75 4.8075 7.9425 9 3.75 13.1925 4.8075 14.25 9 10.0575l4.1925 4.1925 1.0575-1.0575L10.0575 9"/%3E%3C/g%3E%3C/svg%3E') !important;
    }

    [class*=removeGame-] {
      background-image: url("data:image/svg+xml,%3Csvg height='18' viewBox='0 0 18 18' width='18' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cpath d='m14.25 4.808-1.057-1.058-4.193 4.192-4.192-4.192-1.058 1.058 4.192 4.192-4.192 4.193 1.058 1.057 4.192-4.193 4.193 4.193 1.057-1.057-4.193-4.193z' fill-rule='nonzero' fill='%23e78284'/%3E%3Cpath d='m0 0h18v18h-18z'/%3E%3C/g%3E%3C/svg%3E") !important;
    }

    [class*=emojiRemove-] {
      background-image: url("data:image/svg+xml,%3Csvg height='18' viewBox='0 0 18 18' width='18' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cpath d='m14.25 4.808-1.057-1.058-4.193 4.192-4.192-4.192-1.058 1.058 4.192 4.192-4.192 4.193 1.058 1.057 4.192-4.193 4.193 4.193 1.057-1.057-4.193-4.193z' fill-rule='nonzero' fill='%23e78284'/%3E%3Cpath d='m0 0h18v18h-18z'/%3E%3C/g%3E%3C/svg%3E") !important;
    }

    [class*=lockIcon-] {
      content: url("data:image/svg+xml,%3Csvg height='14' viewBox='0 0 10 14' width='10' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='m553 515h-6v-1c0-1.654 1.346-3 3-3s3 1.346 3 3zm-4 6h2v-4h-2zm1-12c-2.762 0-5 2.238-5 5v1 4 2c0 1.104.896 2 2 2h6c1.104 0 2-.896 2-2v-2-4-1c0-2.762-2.238-5-5-5z' fill='%23a6d189' fill-rule='evenodd' transform='translate(-545 -509)'/%3E%3C/svg%3E") !important;
    }

    .theme-dark svg[class*=noItemsIcon-],
    .theme-light svg[class*=noItemsIcon-] {
      background-color: #51576d;
    }

    .theme-dark svg[class*=tier1ProfilePerk-],
    .theme-light svg[class*=tier1ProfilePerk-] {
      color: #DCD7BA !important;
    }

    .theme-dark svg[class*=tier1BoostPerk-],
    .theme-light svg[class*=tier1BoostPerk-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=tier1CustomEmojiPerk-],
    .theme-light svg[class*=tier1CustomEmojiPerk-] {
      color: #e5c890 !important;
    }

    .theme-dark svg[class*=tier1UploadPerk-],
    .theme-light svg[class*=tier1UploadPerk-] {
      color: #babbf1 !important;
    }

    .theme-dark svg[class*=tier1StreamPerk-],
    .theme-light svg[class*=tier1StreamPerk-] {
      color: #a6d189 !important;
    }

    .theme-dark svg[class*=guildBoostingIcon-],
    .theme-light svg[class*=guildBoostingIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=guildSubscriptionSlotIcon-],
    .theme-light svg[class*=guildSubscriptionSlotIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=guildSubscriberCountIcon-],
    .theme-light svg[class*=guildSubscriberCountIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=gemWithLabel-],
    .theme-light svg[class*=gemWithLabel-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=gemWithoutLabel-],
    .theme-light svg[class*=gemWithoutLabel-] {
      color: #838ba7 !important;
    }

    .theme-dark svg[class*=memberBadgeIcon-],
    .theme-light svg[class*=memberBadgeIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=stickerIcon-],
    .theme-light svg[class*=stickerIcon-] {
      color: #ca9ee6 !important;
    }

    .theme-dark svg[class*=audioQualityIcon-],
    .theme-light svg[class*=audioQualityIcon-] {
      color: #85c1dc !important;
    }

    .theme-dark svg[class*=uploadSizeIcon-],
    .theme-light svg[class*=uploadSizeIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=threadIcon-],
    .theme-light svg[class*=threadIcon-] {
      color: #81c8be !important;
    }

    .theme-dark svg[class*=premiumIcon-],
    .theme-light svg[class*=premiumIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=gameIcon-],
    .theme-light svg[class*=gameIcon-] {
      color: #DCD7BA !important;
    }

    .theme-dark svg[class*=tierMarkerLabelPlusIcon-],
    .theme-light svg[class*=tierMarkerLabelPlusIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=currentTierIcon-],
    .theme-light svg[class*=currentTierIcon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=tier3Icon-],
    .theme-light svg[class*=tier3Icon-] {
      color: #f4b8e4 !important;
    }

    .theme-dark svg[class*=searchIcon-],
    .theme-light svg[class*=searchIcon-] {
      color: #a5adce !important;
    }

    .theme-dark svg[class*=upsellIcon-],
    .theme-light svg[class*=upsellIcon-] {
      color: #f4b8e4 !important;
    }

    [class*=lookFilled-][class*=colorBrand-], [class*=lookFilled-][class*=colorBrandNew-], [class*=lookFilled-][class*=colorLink-], [class*=lookFilled-][class*=colorYellow-], [class*=lookFilled-][class*=colorRed-], [class*=lookFilled-][class*=colorGreen-] {
      color: #232634;
    }
    [class*=lookFilled-][class*=colorBrand-] svg[class^=premiumIcon], [class*=lookFilled-][class*=colorBrandNew-] svg[class^=premiumIcon], [class*=lookFilled-][class*=colorLink-] svg[class^=premiumIcon], [class*=lookFilled-][class*=colorYellow-] svg[class^=premiumIcon], [class*=lookFilled-][class*=colorRed-] svg[class^=premiumIcon], [class*=lookFilled-][class*=colorGreen-] svg[class^=premiumIcon] {
      color: #e660c2;
    }
    [class*=lookFilled-][class*=colorBrand-] [class*=spinnerItem-], [class*=lookFilled-][class*=colorBrandNew-] [class*=spinnerItem-], [class*=lookFilled-][class*=colorLink-] [class*=spinnerItem-], [class*=lookFilled-][class*=colorYellow-] [class*=spinnerItem-], [class*=lookFilled-][class*=colorRed-] [class*=spinnerItem-], [class*=lookFilled-][class*=colorGreen-] [class*=spinnerItem-] {
      background-color: #232634;
    }
    [class*=lookFilled-][class*=colorBrand-] [class*=defaultColor-], [class*=lookFilled-][class*=colorBrandNew-] [class*=defaultColor-], [class*=lookFilled-][class*=colorLink-] [class*=defaultColor-], [class*=lookFilled-][class*=colorYellow-] [class*=defaultColor-], [class*=lookFilled-][class*=colorRed-] [class*=defaultColor-], [class*=lookFilled-][class*=colorGreen-] [class*=defaultColor-] {
      color: #232634;
    }
    [class*=lookFilled-][class*=colorPrimary-] {
      color: #DCD7BA;
    }

    div[class^=actionButtons-] [class^=button-][class*=buttonColor-],
    div[class^=actionButtons-] [class^=button-] [class*=buttonColor-] {
      background-color: #51576d;
    }
    div[class^=actionButtons-] [class^=button-][class*=buttonColor-][class*=buttonActive-],
    div[class^=actionButtons-] [class^=button-] [class*=buttonColor-][class*=buttonActive-] {
      background-color: #a6d189;
      color: #232634;
    }
    div[class^=actionButtons-] [class^=button-][class*=buttonColor-][class*=buttonActive-] [class*=buttonContents-],
    div[class^=actionButtons-] [class^=button-] [class*=buttonColor-][class*=buttonActive-] [class*=buttonContents-] {
      color: #232634;
    }
    div[class^=actionButtons-] [class^=button-][class*=buttonColor-][class*=buttonActive-] [class*=buttonContents-] svg,
    div[class^=actionButtons-] [class^=button-] [class*=buttonColor-][class*=buttonActive-] [class*=buttonContents-] svg {
      color: #232634;
    }

    [class*=lookInverted-][class*=colorBrand-] {
      color: var(--brand-experiment-600);
    }
    [class*=lookInverted-][class*=colorBrand-] svg[class^=premiumIcon] {
      color: #ea76cb;
    }

    .theme-dark [class*=lookLink-][class*=colorPrimary-],
    .theme-light [class*=lookLink-][class*=colorPrimary-] {
      color: #DCD7BA;
    }
    .theme-dark [class*=lookFilled-][class*=colorTransparent-],
    .theme-light [class*=lookFilled-][class*=colorTransparent-] {
      color: #DCD7BA;
      background-color: #414559;
    }

    div[class*=button-][class*=dangerous-]:hover {
      color: #df575a;
    }

    div[role=radio][class*=selected] {
      color: #232634;
    }
    div[role=radio][class*=selected][class*=allow] {
      background-color: #a6d189;
    }

    [class*=container-][style*="background-color: var(--green-360)"] {
      --green-360: #a6d189;
      background-color: #a6d189 !important;
    }

    [class*=container-][style*="background-color: var(--primary-400)"], [class*=container-][style*="background-color: rgb(130, 133, 143)"] {
      background-color: #232634 !important;
    }

    .vc-spotify-button-row .vc-spotify-button.vc-spotify-shuffle-on, .vc-spotify-button-row .vc-spotify-button.vc-spotify-repeat-context, .vc-spotify-button-row .vc-spotify-button.vc-spotify-repeat-track {
      color: var(--interactive-normal);
    }
    .vc-spotify-button-row .vc-spotify-button.vc-spotify-repeat-off, .vc-spotify-button-row .vc-spotify-button.vc-spotify-shuffle-off {
      color: var(--text-muted);
    }

    [class*=topGuildEmojiBadge-] {
      background: linear-gradient(268.26deg, #ef9f76, #e78284 102.45%);
    }
    [class*=topGuildEmojiBadge-] * {
      color: #232634 !important;
    }

    [class*=newlyAddedBadge-] {
      background: linear-gradient(268.26deg, #81c8be, #a6d189 102.45%);
    }
    [class*=newlyAddedBadge-] * {
      color: #232634 !important;
    }

    [class*=lookFilled-] [class*=premiumSubscribeButton-] > [class*=premiumIcon-] {
      color: #232634 !important;
    }

    div[class^=sidebarRegion-] div[class^=serverBoostTabItem-] svg[class^=icon-] {
      fill: #f4b8e4 !important;
    }
    div[class^=sidebarRegion-] div[class^=serverBoostTabItem-][class*=selected-] {
      background-color: #DCD7BA !important;
      color: #232634 !important;
    }
    div[class^=sidebarRegion-] div[class^=serverBoostTabItem-][class*=selected-] svg[class^=icon-] {
      fill: #232634 !important;
    }
    div[class^=sidebarRegion-] div[class^=premiumTab-] > div > svg > path {
      fill: #f4b8e4;
    }
    div[class^=sidebarRegion-] div[class^=premiumTab-] > div[class*=selected] {
      color: #232634;
    }
    div[class^=sidebarRegion-] div[class^=premiumTab-] > div[class*=selected] svg > path {
      fill: #232634;
    }
    div[class^=sidebarRegion-] div[class*=tabBarItemContainer-] [class*=textBadge-] {
      color: #232634;
    }
    div[class^=sidebarRegion-] div[class*=tabBarItemContainer-] [class*=textBadge-][style*="background-color: var(--brand-500);"] {
      background-color: #DCD7BA !important;
    }

    div[class^=contentRegion-] div[class*=noticeRegion-] div[style="background-color: rgb(24, 25, 28);"] {
      background-color: #232634 !important;
    }
    div[class^=contentRegion-] [class^=bar-],
    div[class^=contentRegion-] [class^=markDash-] {
      background: #51576d;
    }
    div[class^=contentRegion-] [id="privacy-&-safety-tab"] div[class^=radioBar-][style*="hsl(139,"] {
      border-color: #a6d189;
    }
    div[class^=contentRegion-] [id="privacy-&-safety-tab"] div[class^=radioBar-][style*="hsl(37,"] {
      border-color: #e5c890;
    }
    div[class^=contentRegion-] [id="privacy-&-safety-tab"] div[class^=radioBar-][style*="hsl(359,"] {
      border-color: #e78284;
    }
    div[class^=contentRegion-] [id="privacy-&-safety-tab"] div[class*=betaTagIcon] {
      background-color: #DCD7BA !important;
      color: #232634;
    }
    div[class^=contentRegion-] #accessibility-tab button[class*=colorBrandNew] {
      background-color: #DCD7BA;
    }
    div[class^=contentRegion-] #keybinds-tab span[class*=key] {
      color: #232634;
    }
    div[class^=contentRegion-] #keybinds-tab span[class*=key] g {
      fill: #232634;
    }
    div[class^=contentRegion-] #nitro-server-boost-tab circle[class^=circleProgress-] {
      color: #f4b8e4;
    }
    div[class^=contentRegion-] #nitro-server-boost-tab div[class*=gemIndicatorContainer-] {
      background-color: #1F1F28;
    }
    div[class^=contentRegion-] #nitro-server-boost-tab div[class*=gemIndicatorContainer-] div[class^=tierLabel-] {
      color: #b5bfe2;
    }
    div[class^=contentRegion-] #nitro-server-boost-tab button[class*=lookInverted-] {
      color: #232634;
      background-color: #DCD7BA;
    }
    div[class^=contentRegion-] #nitro-server-boost-tab button[class*=lookInverted-]:hover {
      background-color: #c8d2f5;
    }
    div[class^=contentRegion-] #nitro-server-boost-tab div[class*=card-],
    div[class^=contentRegion-] #nitro-server-boost-tab h3[class*=price-] {
      color: #DCD7BA !important;
    }
    div[class^=contentRegion-] #subscriptions-tab [class^=sectionAccountCredit-],
    div[class^=contentRegion-] #subscriptions-tab [class^=subscriptionDetails-] {
      border-color: var(--background-modifier-accent);
    }
    div[class^=contentRegion-] #library-inventory-tab div[class^=promotionIcon-] {
      background-color: #1F1F28;
    }
    div[class^=contentRegion-] #discord-nitro-tab button[class*=buttonWhite] {
      color: #DCD7BA !important;
      border-color: #DCD7BA !important;
    }
    div[class^=contentRegion-] #discord-nitro-tab h2 {
      color: #DCD7BA !important;
    }
    div[class^=contentRegion-] #discord-nitro-tab svg[class*=sparkleStar-] {
      color: #DCD7BA;
    }
    div[class^=contentRegion-] #discord-nitro-tab div[class*=description-] {
      color: #b5bfe2 !important;
    }
    div[class^=contentRegion-] #discord-nitro-tab div[class*=card-] {
      color: #DCD7BA;
    }
    div[class^=contentRegion-] #discord-nitro-tab button[class*=lookInverted-] {
      color: #232634;
      background-color: #DCD7BA;
    }
    div[class^=contentRegion-] #discord-nitro-tab button[class*=lookInverted-]:hover {
      background-color: #c8d2f5;
    }
    div[class^=contentRegion-] #billing-tab div[class*=subtext] {
      color: #b5bfe2;
    }
    div[class^=contentRegion-] #billing-tab [class*=Divider] {
      border-color: var(--background-modifier-accent);
    }
    div[class^=contentRegion-] #billing-tab div[class^=defaultIndicator-] {
      color: #DCD7BA;
      background-color: #51576d;
    }
    div[class^=contentRegion-] #billing-tab div[class*=summaryInfo],
    div[class^=contentRegion-] #billing-tab [class^=paymentHeader-] {
      color: #DCD7BA;
      border-color: var(--background-modifier-accent);
    }
    div[class^=contentRegion-] #billing-tab div[class^=premiumIndicator-] {
      color: #232634;
    }
    div[class^=contentRegion-] #billing-tab div[class^=paymentPane-],
    div[class^=contentRegion-] #billing-tab div[class*=paginator-],
    div[class^=contentRegion-] #billing-tab div[class*=payment-] {
      background-color: #414559;
      color: #DCD7BA;
    }
    div[class^=contentRegion-] #billing-tab div[class^=expandedInfo-] {
      background-color: #51576d;
    }
    div[class^=contentRegion-] #billing-tab [class*=paymentText-] {
      color: #b5bfe2;
    }
    div[class^=contentRegion-] #billing-tab div[class^=codeRedemptionRedirect-] {
      background-color: #292c3c;
      color: #DCD7BA;
      border-color: #414559;
    }
    div[class^=contentRegion-] [id="voice-&-video-tab"] div[class^=backgroundOptionRing-] {
      border-color: #DCD7BA;
    }
    div[class^=contentRegion-] #notifications-tab button[class*=marketingUnsubscribeButton-] {
      color: #DCD7BA;
    }
    div[class^=contentRegion-] #game-activity-tab div[class*=nowPlayingAdd-],
    div[class^=contentRegion-] #game-activity-tab div[class*=lastPlayed-],
    div[class^=contentRegion-] #game-activity-tab div[class*=overlayStatusText-] {
      color: var(--text-muted);
    }
    div[class^=contentRegion-] #game-activity-tab div[class*=activeGame-][class*=nowPlaying] * {
      color: #232634;
    }
    div[class^=contentRegion-] #game-activity-tab div[class*=activeGame-][class*=nowPlaying] * svg > g > path {
      fill: #232634;
    }
    div[class^=contentRegion-] #game-activity-tab input[class^=gameName-] {
      color: #DCD7BA;
    }
    div[class^=contentRegion-] #game-activity-tab input[class*=gameNameInput-]:hover, div[class^=contentRegion-] #game-activity-tab input[class*=gameNameInput-]:focus {
      background-color: #292c3c;
      border-color: rgba(41, 44, 60, 0.3);
      color: #DCD7BA;
    }
    div[class^=contentRegion-] #game-activity-tab div[class*=game-] {
      -webkit-box-shadow: 0 1px 0 0 var(--background-modifier-accent);
      box-shadow: 0 1px 0 0 var(--background-modifier-accent);
    }
    div[class^=contentRegion-] #game-activity-tab div[class*=removeGame-] {
      background-color: #414559;
    }
    div[class^=contentRegion-] #emoji-tab div[class*=emojiRemove-] {
      background-color: #414559;
    }
    div[class^=contentRegion-] section[class^=inputSensitivityToggle-] div[class*=speaking-] {
      background: #a6d189 !important;
    }
    div[class^=contentRegion-] div[class*=reactionMe-] {
      background-color: #414559 !important;
    }
    div[class^=contentRegion-] div[class^=control-] > div[class*=checked-],
    div[class^=contentRegion-] div[class^=sensitivity-] div[class*=checked-],
    div[class^=contentRegion-] div[style*="background-color: hsl(139, calc(var(--saturation-factor, 1) * 47.3%), 43.9%)"] {
      background-color: #a6d189 !important;
    }
    div[class^=contentRegion-] div[class^=control] > div[style*="background-color: hsl(218, calc(var(--saturation-factor, 1) * 4.6%), 46.9%)"] {
      background-color: #626880 !important;
    }
    div[class^=contentRegion-] div[class^=control] svg[class^=slider-] > svg > path {
      fill: #416628 !important;
    }
    div[class^=contentRegion-] #guild_premium-tab [class*=tierAccomplished-],
    div[class^=contentRegion-] #guild_premium-tab [class*=tierCurrent-],
    div[class^=contentRegion-] #guild_premium-tab [class*=tierFirst-] {
      background: #f4b8e4;
    }
    div[class^=contentRegion-] #guild_premium-tab [class*=tierInProgress-] {
      background-color: #232634;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=progressWithSubscriptions-] > svg > g > rect:first-child {
      color: #232634;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=progressWithSubscriptions-] > svg > g > rect:nth-child(2) {
      color: #f4b8e4;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderUnlocked-],
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderLocked-] {
      background-color: #232634;
      color: #a5adce;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderUnlocked-] div[class^=tierUnlocked-],
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderLocked-] div[class^=tierUnlocked-] {
      background-image: linear-gradient(90deg, #DCD7BA, #ca9ee6);
      color: #232634;
      font-weight: 600;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderUnlocked-] svg[class^=tierIcon-],
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderLocked-] svg[class^=tierIcon-] {
      color: #f4b8e4;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderUnlocked-] svg[class*=tierIconLocked-],
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderLocked-] svg[class*=tierIconLocked-] {
      color: #838ba7;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderUnlocked-] svg[class^=tierLock-],
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierHeaderLocked-] svg[class^=tierLock-] {
      color: #626880;
    }
    div[class^=contentRegion-] #guild_premium-tab div[class^=tierBody-] {
      color: #b5bfe2;
      background-color: #292c3c;
    }
    div[class^=contentRegion-] svg[class^=activeCircle-] {
      color: #232634;
      background-color: #a6d189;
    }
    div[class^=contentRegion-] #discovery-tab div[class*=checklistIcon] svg[viewBox="0 0 14 14"] path {
      fill: #e78284;
    }
    div[class^=contentRegion-] #discovery-tab div[class*=checklistIcon] svg[viewBox="0 0 20 20"] path {
      fill: #e5c890;
    }
    div[class^=contentRegion-] #guild_templates-tab svg[class*=descriptionIcon][viewBox="0 0 24 24"] path {
      fill: #a6d189;
    }
    div[class^=contentRegion-] #guild_templates-tab svg[class*=descriptionIcon][viewBox="0 0 14 14"] path {
      fill: #e78284;
    }
    div[class^=contentRegion-] #guild_templates-tab svg[class*=descriptionIcon] circle {
      fill: #232634;
    }
    div[class^=contentRegion-] #stickers-tab div[class*=tierHeaderContent] {
      background-color: #232634;
    }
    div[class^=contentRegion-] #stickers-tab div[class*=tierBody] {
      background-color: #292c3c;
    }
    div[class^=contentRegion-] #roles-tab div[class*=previewContainer-] .theme-light img[class*=roleIcon-] {
      content: "data:image/svg+xml,%3Csvg width='20' height='20' viewBox='0 0 20 20' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath fill-rule='evenodd' clip-rule='evenodd' d='M11.0749 1.66667H4.99996C3.15901 1.66667 1.66663 3.15906 1.66663 5.00001V15C1.66663 16.841 3.15901 18.3333 4.99996 18.3333H15C16.8409 18.3333 18.3333 16.841 18.3333 15V8.92511C17.8052 9.08227 17.2458 9.16667 16.6666 9.16667C13.445 9.16667 10.8333 6.555 10.8333 3.33334C10.8333 2.75419 10.9177 2.19476 11.0749 1.66667ZM6.66663 5.00001C7.58596 5.00001 8.33329 5.74601 8.33329 6.66667C8.33329 7.58801 7.58596 8.33334 6.66663 8.33334C5.74529 8.33334 4.99996 7.58801 4.99996 6.66667C4.99996 5.74601 5.74529 5.00001 6.66663 5.00001ZM4.99996 15L7.49996 11.6667L9.16663 13.3333L12.5 9.16667L15 15H4.99996Z' fill='%2351576d'/%3E%3Cpath d='M17.5 0V2.5H20V4.16667H17.5V6.66667H15.8334V4.16667H13.3334V2.5H15.8334V0H17.5Z' fill='%2351576d'/%3E%3C/svg%3E";
    }
    div[class^=contentRegion-] #roles-tab div[class*=previewContainer-] .theme-dark img[class*=roleIcon-] {
      content: "data:image/svg+xml,%3Csvg fill='none' height='20' viewBox='0 0 20 20' width='20' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='%23DCD7BA'%3E%3Cpath clip-rule='evenodd' d='m11.0749 1.66667h-6.07488c-1.84095 0-3.33333 1.49239-3.33333 3.33334v9.99999c0 1.841 1.49238 3.3333 3.33333 3.3333h9.99998c1.841 0 3.3334-1.4923 3.3334-3.3333v-6.07489c-.5281.15716-1.0876.24156-1.6667.24156-3.2217 0-5.8333-2.61167-5.8333-5.83333 0-.57915.0844-1.13858.2415-1.66667zm-4.40821 3.33334c.91933 0 1.66666.746 1.66666 1.66666 0 .92134-.74733 1.66667-1.66666 1.66667-.92134 0-1.66667-.74533-1.66667-1.66667 0-.92066.74533-1.66666 1.66667-1.66666zm-1.66667 9.99999 2.5-3.3333 1.66667 1.6666 3.33331-4.16663 2.5 5.83333z' fill-rule='evenodd'/%3E%3Cpath d='m17.5 0v2.5h2.5v1.66667h-2.5v2.5h-1.6667v-2.5h-2.5v-1.66667h2.5v-2.5z'/%3E%3C/g%3E%3C/svg%3E";
    }

    .bd-settings-title {
      color: #DCD7BA;
    }

    .bd-switch-body {
      --switch-color: #626880;
    }
    .bd-switch input:checked + .bd-switch-body {
      --switch-color: #a6d189;
    }
    .bd-switch input:checked + .bd-switch-body svg.bd-switch-symbol path {
      fill: #416628;
    }

    .bd-button {
      background-color: #DCD7BA;
      color: #232634;
    }
    .bd-button.bd-button-danger {
      background-color: #e78284;
    }

    .bd-controls > .bd-addon-button svg {
      fill: #232634;
    }

    .bd-addon-views .bd-view-button.selected {
      background-color: #DCD7BA;
    }
    .bd-addon-views .bd-view-button.selected svg {
      fill: #232634;
    }

    div[class^=perksModal] {
      background-color: #1F1F28;
    }
    div[class^=perksModal] li[class^=perk] {
      background-color: #292c3c;
    }
    div[class^=perksModal] li[class^=perk] svg {
      color: #f4b8e4;
    }
    div[class^=perksModal] svg[class^=giftIcon] {
      color: #232634;
    }
    div[class^=perksModal] div[class^=tierHeaderUnlocked] {
      background-image: linear-gradient(90deg, #DCD7BA, #ca9ee6);
      color: #1F1F28;
    }
    div[class^=perksModal] div[class^=tierUnlocked-],
    div[class^=perksModal] div[class^=tierMarkerBackground-] {
      background-color: #1F1F28;
    }
    div[class^=perksModal] div[class^=barBackground],
    div[class^=perksModal] div[class^=tierMarkerInProgress],
    div[class^=perksModal] div[class^=tierBody] {
      background-color: #232634 !important;
    }
    div[class^=perksModal] div[class^=tierMarkerAccomplished] {
      background: #f4b8e4 !important;
    }
    div[class^=perksModal] div[class^=tierMarkerInProgress] [class^=currentTierIcon] {
      color: #f4b8e4;
    }
    div[class^=perksModal] div[class^=barForeground],
    div[class^=perksModal] div[class^=tierMarkerAccomplished] {
      background-color: #f4b8e4;
    }
    div[class^=perksModal] svg[class^=currentTierIcon] {
      color: #1F1F28;
    }
    div[class^=perksModal] div[class*=tierMarkerLabelText],
    div[class^=perksModal] svg[class^=tierLock] {
      color: var(--text-muted);
    }
    div[class^=perksModal] div[class*=selectedTier] div[class*=tierMarkerLabelText] {
      color: var(--text-normal);
    }
    div[class^=perksModal] div[class^=tierHeaderLocked] {
      background-color: #191b25;
      color: var(--text-muted);
    }
    div[class^=perksModal] svg[class*=unlocked] {
      color: #a6d189;
    }

    div[class^=sidebar-] div[class^=container] div[class^=progressBar-] {
      background: linear-gradient(90deg, #DCD7BA, #ca9ee6);
    }
    div[class^=sidebar-] div[class^=container]:hover div[class^=progressBar-] {
      background: linear-gradient(90deg, hsl(221deg, 70%, 55.5%), #ca9ee6 34%, #DCD7BA 67%, #ca9ee6);
    }
    div[class^=sidebar-] div[class^=container] div[class^=divider-] {
      border-color: var(--background-modifier-accent);
    }

    div[class^=pageWrapper-] {
      background: #1F1F28 !important;
    }
    div[class^=pageWrapper-] div[class*=searchBox-] {
      background-color: #292c3c;
    }
    div[class^=pageWrapper-] div[class*=searchBox-] svg[class*=clearIcon] path {
      fill: #737994;
    }
    div[class^=pageWrapper-] div[class*=categoryPill-][class*=selected-] div {
      color: #232634 !important;
    }

    div[class^=homeContainer-] {
      background: #1F1F28 !important;
    }
    div[class^=homeContainer-] > div[class^=homeContent-] div[class*=card-] {
      background: #414559 !important;
    }

    section[class^=title-] {
      background: var(--background-primary) !important;
    }

    div[class^=categoryItem-][class*=selectedCategoryItem],
    button[class*=lookFilled] div[class*=addButton] {
      color: #232634 !important;
    }

    div[class^=itemInner-] div[class^=new-] > div[class*=newText-] {
      color: #232634 !important;
    }

    div[class*=directoryModal-] {
      background-color: #1F1F28 !important;
    }
    div[class*=directoryModal-] [class*=searchBox] {
      background-color: #292c3c !important;
    }
    div[class*=directoryModal-] [class*=searchBox] [name=search]::placeholder {
      color: #a5adce;
    }
    div[class*=directoryModal-] [role=button][class*=activeButton] {
      color: #232634;
    }

    section[class^=guildListSection-] div[class^=guildList]:first-child div[class^=iconContainer-] {
      background-color: #a6d189;
    }
    section[class^=guildListSection-] div[class^=guildList]:first-child div[class^=iconContainer-] > div[class^=icon-] {
      background-image: url("data:image/svg+xml,%3Csvg fill='none' height='24' viewBox='0 0 25 24' width='25' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='%23232634'%3E%3Cpath clip-rule='evenodd' d='m13.25 18v-12h-1.5v12z' fill-rule='evenodd'/%3E%3Cpath clip-rule='evenodd' d='m7 12.75c-.69036 0-1.25.5596-1.25 1.25v4h-1.5v-4c0-1.5188 1.23122-2.75 2.75-2.75h11c1.5188 0 2.75 1.2312 2.75 2.75v4h-1.5v-4c0-.6904-.5596-1.25-1.25-1.25z' fill-rule='evenodd'/%3E%3Cpath d='m12.5 7c-1.3807 0-2.5-1.11929-2.5-2.5s1.1193-2.5 2.5-2.5 2.5 1.11929 2.5 2.5-1.1193 2.5-2.5 2.5z'/%3E%3Cpath d='m20 22c-1.3807 0-2.5-1.1193-2.5-2.5s1.1193-2.5 2.5-2.5 2.5 1.1193 2.5 2.5-1.1193 2.5-2.5 2.5z'/%3E%3Cpath d='m12.5 22c-1.3807 0-2.5-1.1193-2.5-2.5s1.1193-2.5 2.5-2.5 2.5 1.1193 2.5 2.5-1.1193 2.5-2.5 2.5z'/%3E%3Cpath d='m5 22c-1.38071 0-2.5-1.1193-2.5-2.5s1.11929-2.5 2.5-2.5 2.5 1.1193 2.5 2.5-1.11929 2.5-2.5 2.5z'/%3E%3C/g%3E%3C/svg%3E");
    }

    path[d="M22 12.4065C21.8956 14.9141 20.8533 17.2908 19.0798 19.0654C17.3062 20.8401 14.931 21.883 12.425 21.9875L13.7625 15.646L17.2375 17.9224C17.3214 17.9702 17.416 17.996 17.5125 17.9975C17.6481 17.9962 17.7781 17.9424 17.875 17.8474C17.9439 17.7577 17.9813 17.6478 17.9813 17.5347C17.9813 17.4216 17.9439 17.3117 17.875 17.222L15.6 13.7323L22 12.4065ZM13.7625 8.34148L17.2375 6.06504C17.3352 6.00866 17.4487 5.98608 17.5605 6.00084C17.6723 6.0156 17.7762 6.06686 17.8559 6.14665C17.9357 6.22645 17.9869 6.33037 18.0017 6.44225C18.0164 6.55413 17.9938 6.66772 17.9375 6.76548L15.6625 10.2551L22 11.581C21.8956 9.07342 20.8533 6.69669 19.0798 4.92206C17.3062 3.14742 14.931 2.10449 12.425 2L13.7625 8.34148ZM10.275 8.34148L11.6 2C9.09402 2.10449 6.71878 3.14742 4.94525 4.92206C3.17172 6.69669 2.12945 9.07342 2.02502 11.581L8.37497 10.2551L6.08752 6.76548C6.02873 6.66774 6.00413 6.55315 6.01772 6.43988C6.0313 6.32661 6.08228 6.22113 6.16252 6.14009C6.24233 6.05781 6.34797 6.00542 6.46175 5.99176C6.57552 5.97809 6.69052 6.00399 6.78752 6.06504L10.275 8.34148ZM6.16252 17.8474C6.08228 17.7663 6.0313 17.6609 6.01772 17.5476C6.00413 17.4343 6.02873 17.3197 6.08752 17.222L8.37497 13.7323L2 12.4065C2.10442 14.9141 3.1467 17.2908 4.92023 19.0654C6.69376 20.8401 9.06899 21.883 11.575 21.9875L10.25 15.646L6.7625 17.9224C6.67925 17.9718 6.58428 17.9977 6.48753 17.9975C6.35971 17.9937 6.23848 17.9398 6.15001 17.8474H6.16252Z"] {
      fill: #81c8be;
    }

    path[d="M17.225 6.06504C17.3227 6.00866 17.4362 5.98608 17.548 6.00084C17.6598 6.0156 17.7637 6.06686 17.8434 6.14665C17.9232 6.22645 17.9744 6.33037 17.9892 6.44225C18.0039 6.55413 17.9813 6.66772 17.925 6.76548L15.65 10.2551L21.9875 11.581C21.9875 11.7185 21.9875 11.8562 21.9875 11.9937C21.9875 12.1313 21.9875 12.2689 21.9875 12.4065L15.65 13.7323L17.925 17.222C17.9939 17.3117 18.0313 17.4216 18.0313 17.5347C18.0313 17.6478 17.9939 17.7577 17.925 17.8474C17.8281 17.9424 17.6982 17.9962 17.5625 17.9975C17.466 17.996 17.3714 17.9702 17.2875 17.9224L13.8125 15.646L12.4125 22H11.5875L10.2625 15.6585L6.77501 17.935C6.69176 17.9843 6.59672 18.0102 6.49997 18.01C6.43455 18.0098 6.3699 17.9963 6.30977 17.9705C6.24964 17.9447 6.1953 17.9072 6.15001 17.8599C6.06977 17.7789 6.01879 17.6734 6.0052 17.5601C5.99162 17.4468 6.01621 17.3323 6.07501 17.2345L8.36253 13.7449L2 12.4065C2 12.2689 2 12.1313 2 11.9937C2 11.8562 2 11.7185 2 11.581L8.35002 10.2551L6.0625 6.76548C6.0037 6.66774 5.97918 6.55315 5.99277 6.43988C6.00635 6.32661 6.05726 6.22113 6.1375 6.14009C6.21731 6.05781 6.32295 6.00542 6.43672 5.99176C6.5505 5.97809 6.6655 6.00399 6.7625 6.06504L10.25 8.34148L11.575 2H12.4L13.7375 8.34148L17.225 6.06504Z"] {
      fill: #232634;
    }

    div[class^=tierPreviews-] button[class^=button-] {
      background: linear-gradient(90deg, #81c8be, #DCD7BA);
    }

    div[class^=notice-] div[class*=header-] {
      color: #232634;
    }
    div[class^=notice-] div[class^=closeButton-] > svg > path {
      fill: #232634;
    }
    div[class^=notice-] button[class^=button-] {
      border-color: #232634;
      color: #232634;
    }
    div[class^=notice-] button[class^=button-]:hover {
      background: #6089e7;
    }

    nav[class*=guilds-] foreignObject > div[data-list-item-id^=guildsnav_] {
      background-color: #34384c;
    }
    nav[class*=guilds-] foreignObject > div[data-list-item-id^=guildsnav_]:hover > div[class^=childWrapper-], nav[class*=guilds-] foreignObject > div[data-list-item-id^=guildsnav_][class*=selected] > div[class^=childWrapper-] {
      color: #232634;
      font-weight: 600;
    }
    nav[class*=guilds-] div[data-list-item-id=guildsnav___home] {
      --background-primary: #363b4f;
    }
    nav[class*=guilds-] span[class^=expandedFolderBackground-] {
      background-color: #363b4f;
    }
    nav[class*=guilds-] div[class^=folder-][class*=hover-] {
      background-color: #41465e;
    }
    nav[class*=guilds-] div[data-list-item-id=guildsnav___create-join-button] svg > path,
    nav[class*=guilds-] div[data-list-item-id=guildsnav___guild-discover-button] svg > path,
    nav[class*=guilds-] div[data-list-item-id=guildsnav___app-download-button] svg > path {
      fill: #a6d189;
    }

    div[class^=upperBadge] > div[class^=iconBadge] path {
      color: #232634;
    }
    div[class^=upperBadge] div[class*=participating-] {
      background: #a6d189;
    }

    div[class^=lowerBadge] div[class^=iconBadge] path {
      color: #232634;
    }

    svg[class^=spine-] {
      color: #626880;
    }

    div[class^=spineBorder-] {
      background: #626880;
    }

    ul[aria-label$=" threads"] > li:nth-child(1n) {
      --channels-default: #d0b9d3;
      --interactive-hover: #e78284;
      --interactive-active: #e78284;
    }

    ul[aria-label$=" threads"] > li:nth-child(2n) {
      --channels-default: #d2c1cf;
      --interactive-hover: #ef9f76;
      --interactive-active: #ef9f76;
    }

    ul[aria-label$=" threads"] > li:nth-child(3n) {
      --channels-default: #cfced7;
      --interactive-hover: #e5c890;
      --interactive-active: #e5c890;
    }

    ul[aria-label$=" threads"] > li:nth-child(4n) {
      --channels-default: #bcd0d5;
      --interactive-hover: #a6d189;
      --interactive-active: #a6d189;
    }

    ul[aria-label$=" threads"] > li:nth-child(5n) {
      --channels-default: #b5c5f3;
      --interactive-hover: #85c1dc;
      --interactive-active: #85c1dc;
    }

    ul[aria-label$=" threads"] > li:nth-child(6n) {
      --channels-default: #c7c1f1;
      --interactive-hover: #ca9ee6;
      --interactive-active: #ca9ee6;
    }

    [class^=botText] {
      color: #232634;
      font-weight: 600;
    }

    svg[class^=botTagVerified] {
      color: #232634;
    }

    div[class*=activePostCount-] {
      background-color: #414559;
      color: #DCD7BA !important;
    }

    div[class*=newPostCount-] {
      background-color: #DCD7BA;
      color: #232634;
    }

    [class^=chatContent] div[class*=wrapperAudio-] div[class*=audioControls],
    [class^=chatContent] div[class*=wrapperAudio-] div[class*=videoControls-],
    [class^=chatContent] div[class*=imageWrapper-] div[class*=audioControls],
    [class^=chatContent] div[class*=imageWrapper-] div[class*=videoControls-] {
      background-color: rgba(41, 44, 60, 0.8);
    }
    [class^=chatContent] div[class*=wrapperAudio-] div[class*=audioControls] svg[class*=controlIcon-],
    [class^=chatContent] div[class*=wrapperAudio-] div[class*=videoControls-] svg[class*=controlIcon-],
    [class^=chatContent] div[class*=imageWrapper-] div[class*=audioControls] svg[class*=controlIcon-],
    [class^=chatContent] div[class*=imageWrapper-] div[class*=videoControls-] svg[class*=controlIcon-] {
      opacity: 1;
      color: #b5bfe2;
    }
    [class^=chatContent] #---new-messages-bar span[class^=unreadPill-] {
      color: #232634;
    }
    [class^=chatContent] div[class^=newMessagesBar-] button {
      color: #232634;
    }
    [class^=chatContent] div[class^=channelTextArea-] div[class^=buttons-] * {
      color: var(--interactive-normal) !important;
    }
    [class^=chatContent] [id^=message-reactions-] div[class^=reaction-] {
      background-color: #414559;
    }
    [class^=chatContent] [id^=message-reactions-] div[class^=reaction-]:hover {
      background-color: var(--brand-experiment-20a);
      border-color: var(--brand-experiment-30a);
    }
    [class^=chatContent] div[class^=container-][class*=header-] div[class*=addReactButton-],
    [class^=chatContent] div[class^=container-][class*=header-] div[class^=buttons-]:not([class*=lookBlank-]) div[class^=contents] {
      background: #414559;
    }
    [class^=chatContent] div[class^=container-][class*=header-] div[class*=addReactButton-]:hover,
    [class^=chatContent] div[class^=container-][class*=header-] div[class^=buttons-]:not([class*=lookBlank-]) div[class^=contents]:hover {
      background-color: var(--brand-experiment-20a);
      border-color: var(--brand-experiment-30a);
    }
    [class^=chatContent] div[class^=messagesErrorBar-] div[class*=barButtonBase-] {
      color: #232634;
    }
    [class^=chatContent] [class*=inlineCode-] {
      background: #414559;
    }
    [class^=chatContent] code.inline {
      background: #414559;
    }
    [class^=chatContent] div[class^=container-] div[class^=cardWrapper-] div[class*=completed-] svg[class^=checkmark-] {
      background-color: #a6d189;
      color: #232634;
    }

    div[style*="d1382af8d9e755bc44811b1fd92990a8.svg"] {
      background-image: url("data:image/svg+xml,%3Csvg height='18' width='18' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cpath d='m18 0h-18v18h18z'/%3E%3Cpath d='m0 8h14.2l-3.6-3.6 1.4-1.4 6 6-6 6-1.4-1.4 3.6-3.6h-14.2' fill='%23a6d189'/%3E%3C/g%3E%3C/svg%3E") !important;
      filter: none !important;
    }

    main[class^=chatContent] div[id^=message-content-] svg[class^=icon-] > path[d="M4 0L0 4V8L4 12L8 8V4L4 0ZM7 7.59L4 10.59L1 7.59V4.41L4 1.41L7 4.41V7.59Z"],
    main[class^=chatContent] div[id^=message-content-] svg[class^=icon-] > path[d="M2 4.83V7.17L4 9.17L6 7.17V4.83L4 2.83L2 4.83Z"] {
      color: #f4b8e4;
    }

    .theme-dark span[class^=spoilerText],
    .theme-dark div[class^=spoilerText],
    .theme-light span[class^=spoilerText],
    .theme-light div[class^=spoilerText] {
      background-color: #414559;
    }
    .theme-dark span[class^=spoilerText][class*=hidden],
    .theme-dark div[class^=spoilerText][class*=hidden],
    .theme-light span[class^=spoilerText][class*=hidden],
    .theme-light div[class^=spoilerText][class*=hidden] {
      background-color: #626880;
    }
    .theme-dark span[class^=spoilerText][class*=hidden]:hover,
    .theme-dark div[class^=spoilerText][class*=hidden]:hover,
    .theme-light span[class^=spoilerText][class*=hidden]:hover,
    .theme-light div[class^=spoilerText][class*=hidden]:hover {
      background-color: #6d748e;
    }
    .theme-dark div[class^=spoilerContainer-] div[class^=spoilerWarning-],
    .theme-light div[class^=spoilerContainer-] div[class^=spoilerWarning-] {
      color: #DCD7BA;
      background-color: rgba(35, 38, 52, 0.7);
    }
    .theme-dark div[class^=spoilerContainer-]:hover div[class^=spoilerWarning-],
    .theme-light div[class^=spoilerContainer-]:hover div[class^=spoilerWarning-] {
      color: #DCD7BA;
      background-color: #232634;
    }
    .theme-dark div[class^=spoilerContainer-] article[class*=embedFull-],
    .theme-light div[class^=spoilerContainer-] article[class*=embedFull-] {
      border-color: #626880;
    }

    div[class^=cooldownWrapper-] {
      color: var(--text-muted) !important;
    }

    div[class*=autocomplete-] {
      background-color: #292c3c !important;
    }
    div[class*=autocomplete-] div[class*=categoryHeader] {
      background-color: #292c3c !important;
    }
    div[class*=autocomplete-] div[class*=autocompleteRowSubheading] {
      background-color: transparent;
    }
    div[class*=autocomplete-] div[class*=autocompleteRowContentSecondary] {
      background-color: transparent;
    }
    div[class*=autocomplete-] div[class^=usageWrapper-] > div[class*=title-] {
      color: #DCD7BA !important;
    }
    div[class*=autocomplete-] strong {
      color: #DCD7BA !important;
    }

    div[class^=channelTextArea-] button[class*=emojiButton-] {
      background: transparent !important;
    }

    [class*=uploadDropModal-] div[class^=inner] {
      border-color: #232634;
    }
    [class*=uploadDropModal-] div[class^=inner] * {
      color: #232634 !important;
    }

    div[class^=chat] > div[class^=content-] > div[class^=container-] {
      background-color: #1F1F28;
    }
    div[class^=chat] > div[class^=content-] > div[class^=container-] div[class^=pinIcon-] > svg > path,
    div[class^=chat] > div[class^=content-] > div[class^=container-] div[class^=stepStatus-] > svg > path {
      fill: #a5adce;
    }
    div[class^=chat] > div[class^=content-] > div[class^=container-] div[class^=pinIcon-][style*="background-color: var(--status-positive-background);"] > svg > path,
    div[class^=chat] > div[class^=content-] > div[class^=container-] div[class^=stepStatus-][style*="background-color: var(--status-positive-background);"] > svg > path {
      fill: #232634;
    }
    div[class^=chat] > div[class^=content-] > div[class^=container-] div[class*=countText] {
      color: #232634;
    }
    div[class^=chat] > div[class^=content-] > div[class^=container-] svg[class^=discordIcon-] {
      background-color: #DCD7BA;
      color: #232634;
    }
    div[class^=chat] > div[class^=content-] > div[class^=container-] div[class^=newBadge-] {
      background-color: #babbf1 !important;
      color: #232634;
    }
    div[class^=chat] > div[class^=content-] > div[class^=container-] div[class*=mainCard-] {
      background-color: #414559;
    }

    div[class^=sidebar-] > section[class^=panels-] svg[class*=buttonIcon-],
    div[class^=sidebar-] > section[class^=panels-] div[class*=buttonContents] {
      fill: #DCD7BA;
      color: #DCD7BA;
    }

    [data-list-id^=forum-channel-list-] div[class^=body-] > div[class^=tags] div[class*=pill] {
      background-color: #292c3c;
    }
    [data-list-id^=forum-channel-list-] button[class^=submitButton-][class*=colorBrand] {
      background-color: #DCD7BA;
      color: #232634;
    }

    div[class^=chat] > div[class^=content-] main[class^=chatContent-] + div[class^=container-] {
      background-color: var(--background-secondary);
    }

    div[class^=callContainer-] [class*=controlIcon-] {
      color: #b5bfe2;
    }
    div[class^=callContainer-] [class*=controlIcon-]:hover {
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class*=tile-],
    div[class^=callContainer-] div[class*=background-] {
      background-color: #1F1F28 !important;
    }
    div[class^=callContainer-] div[class*=overlayTitle],
    div[class^=callContainer-] svg[class*=status-] {
      background-color: #414559;
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class*=header],
    div[class^=callContainer-] svg[class*=selectedIcon-] {
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class*=button-][class*=contents-],
    div[class^=callContainer-] button[class*=cta-],
    div[class^=callContainer-] button[class*=participantsButton-] {
      background-color: #414559;
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class^=videoControls-] div[class^=children-] div[class*=playingText-] {
      color: #b5bfe2;
    }
    div[class^=callContainer-] div[class^=videoControls-] div[class^=toolbar-] svg[class^=controlIcon-] {
      color: var(--interactive-normal);
    }
    div[class^=callContainer-] div[class^=videoControls-] div[class^=toolbar-] div[class^=streamQualityIndicator-] div[class^=liveQualityIndicator-] {
      background-color: #51576d !important;
    }
    div[class^=callContainer-] div[class^=videoControls-] div[class^=toolbar-] div[class^=streamQualityIndicator-] div[class^=liveQualityIndicator-] div[class^=qualityIndicator-] {
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class^=videoControls-] div[class^=toolbar-] div[class^=streamQualityIndicator-] div[class^=liveQualityIndicator-] svg[class^=premiumStreamIcon] {
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class^=videoControls-] div[class^=toolbar-] div[class^=liveIndicator-] div[class^=live-] {
      background-color: #e78284 !important;
      color: #232634 !important;
    }
    div[class^=callContainer-] div[class^=videoControls-] button[class*=leftTrayIcon-][class*=buttonColor-] {
      background-color: #414559;
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=red-] {
      background: #e78284;
    }
    div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=red-] [class*=centerIcon-] {
      color: #232634;
    }
    div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=primaryDark-] {
      background: #51576d;
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=primaryDark-] [class*=centerIcon-] {
      color: #DCD7BA;
    }
    div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=white-] {
      color: #232634;
      background-color: #b5bfe2;
    }
    div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=white-] [class*=centerIcon-] {
      color: #232634;
    }
    div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=white-]:hover, div[class^=callContainer-] div[class^=videoControls-] [class*=colorable-][class*=white-][class*=active-] {
      background: #DCD7BA;
    }

    div[class*=giftCodeContainer] [class*=tile] {
      background-color: #292c3c;
    }
    div[class*=giftCodeContainer] [class*=tile] > [class*=description] {
      color: #DCD7BA;
    }

    div[class*=chat-] section[class*=header-] {
      background-color: #292c3c;
    }
    div[class*=chat-] div[class*=content-][class*=container-] {
      background-color: #292c3c;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[class*=container] {
      background-color: #292c3c;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[class*=search-] {
      background-color: #1F1F28 !important;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[class*=search-] input::placeholder {
      color: #737994;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[class*=browser] div[class*=content] div[class^=container-] {
      background-color: #1F1F28;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[class*=scrollerContainer-] {
      background-color: #292c3c;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[class*=scrollerContainer-] div[class*=checkIcon-][style*="opacity: 1;"] > svg > path {
      fill: #232634;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[role=tablist] {
      background-color: #292c3c;
      border-bottom: 2px solid #414559;
    }
    div[class*=chat-] div[class*=content-][class*=container-] div[role=tablist] [class*=textBadge-] {
      color: #232634;
    }

    div[class*=chat-] section[class*=title] div[class*=searchBar] span[class*=search] {
      background-color: #414559;
      color: #DCD7BA;
    }
    div[class*=chat-] nav[class*=pageControl] div[class*=roundButton][class*=activeButton] span {
      color: #232634;
    }

    div[class*=chat-] li[class*=mainCard-][class*=container] {
      background-color: #414559;
    }
    div[class*=chat-] li[class*=mainCard-][class*=container]:hover {
      background-color: #51576d;
    }
    div[class*=chat-] li[class*=mainCard-][class*=container] div[class*=contentPreview-] {
      background-color: #1F1F28;
      border: none;
    }
    div[class*=chat-] li[class*=mainCard-][class*=container] div[class*=contentPreview-] div[class*=textContentFooter-] {
      background: none;
    }
    div[class*=chat-] li[class*=mainCard-][class*=container] div[class*=tags-] div[class*=tagPill-] {
      background-color: rgba(81, 87, 109, 0.8);
    }
    div[class*=chat-] div[class*=emptyPage] {
      background-color: #1F1F28;
    }
    div[class*=chat-] div[class*=innerHeader]:after {
      background: none;
    }

    [id*=message-accessories-] > [class*=invite-] {
      background-color: #1F1F28;
    }
    [id*=message-accessories-] > [class*=invite-] [class*=inFront-][class*=header-] {
      color: #a5adce;
    }
    [id*=message-accessories-] > [class*=invite-] [class*=partyStatus-] {
      color: #DCD7BA;
    }

    div[class^=layerContainer] [role=menu] {
      --brand-experiment-560: var(--brand-experiment-25a);
      --brand-experiment-600: var(--brand-experiment);
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault][class*=colorBrand] {
      color: #DCD7BA;
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault][class*=focused]:not([class*=colorDanger]),
    div[class^=layerContainer] [role=menu] [class*=colorDefault][class*=focused] [class*=checkbox-] {
      color: var(--interactive-normal);
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault][role=menuitem]:not([class*=colorDanger]):not([id*=user-context-user-volume]):hover {
      background: var(--background-accent);
      color: #232634;
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault][role=menuitem]:not([class*=colorDanger]):not([id*=user-context-user-volume]):hover [class*=subtext],
    div[class^=layerContainer] [role=menu] [class*=colorDefault][role=menuitem]:not([class*=colorDanger]):not([id*=user-context-user-volume]):hover [class*=caret-] {
      color: #232634;
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault] [class*=caret] {
      color: #DCD7BA;
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault]:active:not([class*=hideInteraction-]) {
      color: var(--background-floating);
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault]:active:not([class*=hideInteraction-]) [class*=check-] {
      color: var(--interactive-normal);
    }
    div[class^=layerContainer] [role=menu] [class*=colorDefault]:active:not([class*=hideInteraction-]) [class*=checkbox-] {
      color: var(--background-floating);
    }
    div[class^=layerContainer] [role=menu] [class*=focused] [class*=userMenuUsername] * {
      color: #232634;
    }
    div[class^=layerContainer] [role=menu] [class*=colorDanger][class*=focused],
    div[class^=layerContainer] [role=menu] [class*=colorDefault] [class*=check-] {
      color: var(--background-floating);
      background-color: #e78284;
    }
    div[class^=layerContainer] [role=menu] #guild-header-popout-premium-subscribe div[class^=iconContainer-] > svg {
      color: #f4b8e4;
    }
    div[class^=layerContainer] [role=menu] #user-context-user-volume div[class*=slider-] div[class*=bar-] {
      background-color: #414559;
    }

    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-]:not([class^=animatorBottom-]) > div div[class*=flowerStarContainer-] svg[class*=flowerStar-] *,
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-]:not([class^=animatorBottom-]) > div div[class*=flowerStarContainer-] svg[class*=flowerStar-] * {
      fill: #DCD7BA;
    }
    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=countText],
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=countText] {
      color: #232634;
    }
    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] svg[class*=activeIcon] circle,
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] svg[class*=activeIcon] circle {
      fill: #232634;
    }
    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] svg[class*=activeIcon] g path,
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] svg[class*=activeIcon] g path {
      fill: #DCD7BA;
    }
    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] div[class*=autocompleteArrow-],
    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] header,
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] div[class*=autocompleteArrow-],
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] header {
      background-color: #292c3c;
    }
    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] header > input::placeholder,
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] header > input::placeholder {
      color: #838ba7;
    }
    .theme-dark div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] section,
    .theme-light div[class^=layerContainer] div[id^=popout_] > div[class*=didRender-] div[class*=container] section {
      background-color: #1F1F28;
      color: #DCD7BA;
    }

    div[class*=recentMentionsPopout] div[class^=header-] div[class^=tabBar] div[class^=tab][class*=active-] {
      color: #1F1F28;
    }
    div[class*=recentMentionsPopout] div[class^=header-] div[class^=controls-] {
      --background-secondary: #414559;
      --background-primary: rgba(65, 69, 89, 0.9);
    }
    div[class*=recentMentionsPopout] div[class^=scroller-] [role=button] {
      --background-tertiary: rgba(165, 173, 206, 0.15);
      --background-floating: rgba(165, 173, 206, 0.12);
    }
    div[class*=recentMentionsPopout] div[class^=scroller-] [role=button] div[class*=jumpButton-] {
      background-color: #414559;
    }

    div[class*=rolesList] div[class^=role-],
    div[class*=rolesList] button[class^=addButton-] {
      background-color: #313548;
    }
    div[class*=rolesList] div[class^=role-] span[class^=roleCircle-][style*="background-color: rgb(185, 187, 190)"] {
      background-color: #a5adce !important;
    }
    div[class*=rolesList] div[class^=role-] span[class^=roleCircle-][style*="background-color: rgb(54, 57, 62)"], div[class*=rolesList] div[class^=role-] span[class^=roleCircle-][style*="background-color: rgb(53, 57, 64)"] {
      background-color: #1F1F28 !important;
    }

    div[class*=layerContainer] > div[class*=layer] div[class^=reactors] {
      background-color: var(--background-primary);
    }
    div[class*=layerContainer] > div[class*=layer] div[class^=scroller]:not([style*="padding-right: 4px;"]) {
      background-color: var(--background-secondary);
    }
    div[class*=layerContainer] > div[class*=layer] div[class*=reactorDefault] {
      -webkit-box-shadow: inset 0 -1px 0 var(--background-modifier-accent);
      box-shadow: inset 0 -1px 0 var(--background-modifier-accent);
    }
    div[class*=layerContainer] > div[class*=layer] div[class*=reactionSelected] {
      background-color: var(--background-modifier-selected);
    }
    div[class*=layerContainer] > div[class*=layer] div[class*=friendSelected] {
      background: #414559 !important;
    }

    section[class^=positionContainer-] button[class*=navButtonActive] {
      background-color: #DCD7BA;
      color: #232634;
    }

#emoji-picker-tab-panel [class*=stickerInspected-] [class*=inspectedIndicator],
#emoji-picker-tab-panel [class^=emojiItem-][class*=emojiItemSelected-] {
      background-color: var(--brand-experiment-25a);
    }
#emoji-picker-tab-panel [class*=newlyAddedHighlight-] {
      border: 1px solid #a6d189;
    }
#emoji-picker-tab-panel [class*=newlyAddedHighlight-] ~ [class*=newlyAddedBadge-] {
      background: #a6d189 !important;
      color: #232634;
    }

    [class*=stickerInspected-] [class^=inspectedIndicator] {
      background-color: var(--brand-experiment-25a);
    }

    .theme-light > div[class^=focusLock] > div[class^=root] > div[class^=container] div[class*=footer][class*=footerSeparator-] {
      box-shadow: inset 0 1px 0 #414559;
      -webkit-box-shadow: inset 0 1px 0 #414559;
    }
    .theme-light > div[class^=focusLock] > div[class^=root] {
      box-shadow: 0 0 0 1px #414559, 0 2px 10px 0 hsla(0, calc(var(--saturation-factor, 1) * 0%), 0%, 0.1);
      -webkit-box-shadow: 0 0 0 1px #414559, 0 2px 10px 0 hsla(0, calc(var(--saturation-factor, 1) * 0%), 0%, 0.1);
    }
    .theme-light[class*=profileColors-] [class*=userTagUsernameBase-],
    .theme-light[class*=profileColors-] [class*=discrimBase-],
    .theme-light[class*=profileColors-] [class*=title-],
    .theme-light[class*=profileColors-] [class*=roles-],
    .theme-light[class*=profileColors-] [class*=defaultColor-],
    .theme-light[class*=profileColors-] [class*=markup-],
    .theme-light[class*=profileColors-] [class*=activityUserPopoutV2-] *,
    .theme-light[class*=profileColors-] [class*=customStatus-],
    .theme-light[class*=profileColors-] [class*=section-],
    .theme-light[class*=profileColors-] [class*=additionalActionsIcon-],
    .theme-light[class*=profileColors-] [class*=overlayBackground-] * {
      --interactive-normal: #232634;
      --text-normal: #232634;
      --interactive-active: #232634;
      --interactive-hover: #232634;
      color: unset !important;
    }

    div[class^=layerContainer] #guild-header-popout,
    div[class^=layerContainer] #guild-context,
    div[class^=layerContainer] div[id^=channel-context],
    div[class^=layerContainer] div[id^=user-context] {
      background: #232634;
    }
    div[class^=layerContainer] > div[class*=layer] div[role=listbox] {
      background-color: #292c3c;
    }
    div[class^=layerContainer] > div[class*=layer] div[role=listbox] div[role=option][aria-selected=true] {
      background: #414559;
    }
    div[class^=layerContainer] > div[class*=layer] div[role=listbox] div[role=option] svg[class*=selectedIcon] circle {
      fill: #232634;
    }
    div[class^=layerContainer] > div[class*=layer] div[role=listbox] div[class*=queryText-] {
      color: #838ba7;
    }
    div[class^=layerContainer] > div[class*=layer] div[role=listbox] div[class*=queryText-] strong {
      color: #DCD7BA;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modal-],
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modalSize-],
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=uploadModal-] {
      background-color: #292c3c;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modal-] li,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modal-] p,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modal-] span,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modalSize-] li,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modalSize-] p,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=modalSize-] span,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=uploadModal-] li,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=uploadModal-] p,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class^=uploadModal-] span {
      color: #DCD7BA;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class*=footer] {
      background-color: #232634;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class*=footer] button[type=submit] span {
      color: #232634;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class*=footer] [class*=footerText-] {
      color: #b5bfe2;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h1[class^=fixed-],
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h2[class^=fixed-],
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h3[class^=fixed-],
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h4[class^=fixed-],
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h5[class^=fixed-],
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h6[class^=fixed-] {
      color: #e78284;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h1[class^=fixed-]:after,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h2[class^=fixed-]:after,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h3[class^=fixed-]:after,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h4[class^=fixed-]:after,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h5[class^=fixed-]:after,
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] h6[class^=fixed-]:after {
      background-color: #e78284;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock] div[class*=message-] {
      background-color: #414559;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock][aria-label=Activities] div[class*=activityItem-] {
      background-color: #232634;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock][aria-label=Activities] div[class*=activityItem-] div[class*=previewBadge-] {
      color: #232634;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock][aria-label=Activities] div[class*=activityTag-] {
      background-color: #414559;
    }
    div[class^=layerContainer] > div[class*=layer] div[class^=focusLock][aria-label="Manage Accounts"] div[class*=navRow-] {
      background-color: #292c3c;
    }
    div[class^=layerContainer] div[class^=addGamePopout-] {
      background-color: #292c3c;
    }
    div[class^=layerContainer] div[class*=searchOption-]::after,
    div[class^=layerContainer] div[class*=option-]::after,
    div[class^=layerContainer] li[class*=option-]::after {
      display: none;
    }
    div[class^=layerContainer] div[class^=queryContainer] {
      background-color: #232634;
    }
    div[class^=layerContainer] div[class^=queryContainer] span[class^=key] {
      color: #DCD7BA;
      background-color: #1F1F28;
    }
    div[class^=layerContainer] [class*=tooltipBrand-],
    div[class^=layerContainer] [class*=tooltipRed-],
    div[class^=layerContainer] [class*=tooltipGreen-],
    div[class^=layerContainer] [class*=tooltipYellow] {
      color: #232634;
    }
    div[class^=layerContainer] div[class^=popout-] div[class^=row][role=button]:hover {
      color: #232634;
    }
    div[class^=layerContainer] div[class^=popout-] div[class^=row][role=button]:hover [class*=timestamp] {
      color: #232634;
    }

    form[class*=card-] {
      background-color: #1F1F28;
    }

    div[class*=userInfoSection-] div[class^=connectedAccountContainer-] {
      background-color: rgba(65, 69, 89, 0.45) !important;
    }

    div[class*=cardWarning-] div[class*=warning-] {
      color: #232634;
    }

#emoji-picker-tab-panel,
#sticker-picker-tab-panel {
      /* --background-floating: #414559;

        + div[class^="slotsContainer-"] {
          background-color: $surface0;
        }
      */
    }
#emoji-picker-tab-panel div[class^=tooltipContainer-] label[class^=label-][class*=labelChecked-],
#sticker-picker-tab-panel div[class^=tooltipContainer-] label[class^=label-][class*=labelChecked-] {
      background: -webkit-gradient(linear, right top, left top, from(#f4b8e4), color-stop(33.33%, #ca9ee6), to(#DCD7BA));
      background: linear-gradient(270deg, #f4b8e4, #ca9ee6 33.33%, #DCD7BA);
    }

    div[class*=keyboardShortcutsModal-] {
      background-color: #292c3c !important;
    }
    div[class*=keyboardShortcutsModal-] div[class^=keybindShortcut-] span[class^=key-] {
      color: #232634;
    }
    div[class*=keyboardShortcutsModal-] div[class^=keybindShortcut-] span[class^=key-] svg g {
      fill: #232634 !important;
    }

    .react-datepicker,
    .react-datepicker__header {
      background-color: #292c3c !important;
    }

    .react-datepicker__day {
      background-color: #232634 !important;
    }

    .react-datepicker__day:active {
      background: #DCD7BA !important;
    }

    .react-datepicker__day--selected:after {
      background-color: #DCD7BA !important;
    }

    [class^=datePickerHint-] [class^=hintValue-] {
      color: #232634 !important;
    }

    div[class*=layerContainer-] div[class^=control-] div[class*=checked-] {
      background-color: #a6d189 !important;
    }
    div[class*=layerContainer-] div[class^=control-] div[style*="background-color: rgb(114, 118, 125);"] {
      background-color: #626880 !important;
    }

    div[class*=layerContainer-] div[class*=guildPopout-][role=dialog] {
      background-color: #1F1F28;
    }
    div[class*=layerContainer-] div[class*=guildPopout-][role=dialog] div[class*=guildName-] {
      color: #DCD7BA;
    }

    div[class*=layerContainer-] [role*=dialog] a[class*=downloadLink-] {
      color: #838ba7 !important;
      opacity: 1;
    }
    div[class*=layerContainer-] [role*=dialog] a[class*=downloadLink-]:hover {
      color: #DCD7BA !important;
    }

    div[class*=userPopoutOuter-] div[aria-label="HypeSquad Bravery"] img,
    div[class*=userProfileOuter-] div[aria-label="HypeSquad Bravery"] img {
      content: url("data:image/svg+xml,%3Csvg height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath clip-rule='evenodd' d='m5.01502 4h13.97008c.1187 0 .215.09992.215.22305v9.97865c0 .0697-.0312.1343-.0837.1767l-6.985 5.5752c-.0389.0313-.0847.0464-.1314.0464-.0466 0-.0924-.0151-.1313-.0464l-6.985-5.5752c-.05252-.0424-.08365-.107-.08365-.1767v-9.97865c0-.12313.0963-.22305.21497-.22305zm7.82148 7.0972 4.1275-2.71296c.1039-.06863.2299.04542.1725.15644l-1.7114 3.36192c-.0403.0807.0182.1756.1079.1756h1.0246c.118 0 .1664.1504.0706.219l-4.6267 3.3175c-.0414.0303-.0978.0303-.1402 0l-4.6267-3.3175c-.0948-.0686-.04639-.219.07059-.219h1.02356c.09076 0 .14925-.0949.10791-.1756l-1.71132-3.36293c-.05648-.11001.06958-.22305.17345-.15543l4.12851 2.71296c.0716.0474.1291.112.1674.1887l.6293 1.2636c.0444.0888.1714.0888.2158 0l.6293-1.2636c.0383-.0767.0958-.1423.1674-.1887z' fill='%23ca9ee6' fill-rule='evenodd'/%3E%3C/svg%3E");
    }
    div[class*=userPopoutOuter-] div[aria-label="HypeSquad Balance"],
    div[class*=userProfileOuter-] div[aria-label="HypeSquad Balance"] {
      content: url("data:image/svg+xml,%3Csvg height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath clip-rule='evenodd' d='m11.8622 4.05696c.076-.07595.1996-.07595.2756 0l7.8048 7.80474c.0371.0362.0574.0865.0574.1377 0 .0513-.0212.1016-.0574.1378l-7.8048 7.8047c-.038.038-.0883.0574-.1378.0574s-.0998-.0194-.1378-.0574l-7.8048-7.8047c-.03709-.0362-.0574-.0857-.0574-.1378s.02031-.1015.0574-.1377zm.9299 8.29474 3.6146-2.37377c.0909-.05917.2013.03977.151.13597l-1.4986 2.9416c-.0354.0707.0158.1537.0944.1537h.8973c.1033 0 .1457.1316.0618.1916l-4.0517 2.9028c-.0362.0265-.0856.0265-.1227 0l-4.05168-2.9028c-.08301-.06-.04062-.1916.06182-.1916h.89634c.07948 0 .1307-.083.09449-.1537l-1.49862-2.9416c-.04945-.0962.06094-.19514.1519-.13597l3.61545 2.37377c.0627.0415.113.098.1465.1651l.5511 1.1057c.0389.0777.1501.0777.189 0l.551-1.1057c.0336-.0671.0839-.1245.1466-.1651z' fill='%2381c8be' fill-rule='evenodd'/%3E%3C/svg%3E");
    }
    div[class*=userPopoutOuter-] div[aria-label="HypeSquad Brilliance"],
    div[class*=userProfileOuter-] div[aria-label="HypeSquad Brilliance"] {
      content: url("data:image/svg+xml,%3Csvg height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath clip-rule='evenodd' d='m12 20c4.4183 0 8-3.5817 8-8 0-4.41828-3.5817-8-8-8-4.41828 0-8 3.58172-8 8 0 4.4183 3.58172 8 8 8zm.7921-8.275 3.6146-2.3738c.0909-.05916.2013.03974.151.136l-1.4986 2.9416c-.0354.0707.0158.1537.0944.1537h.8973c.1033 0 .1457.1315.0618.1916l-4.0517 2.9027c-.0362.0265-.0856.0265-.1227 0l-4.05168-2.9027c-.08301-.0601-.04062-.1916.06182-.1916h.89634c.07948 0 .1307-.083.09449-.1537l-1.49862-2.9416c-.04945-.09626.06094-.19516.1519-.136l3.61545 2.3738c.0627.0415.113.098.1465.1651l.5511 1.1057c.0389.0777.1501.0777.189 0l.551-1.1057c.0336-.0671.0839-.1245.1466-.1651z' fill='%23e78284' fill-rule='evenodd'/%3E%3C/svg%3E");
    }
    div[class*=userPopoutOuter-] div[aria-label="Active Developer"],
    div[class*=userProfileOuter-] div[aria-label="Active Developer"] {
      content: url("data:image/svg+xml,%3Csvg width='24' height='24' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M6.47213 4L4 6.47213V17.5279L6.47217 20H17.5278L20 17.5279V6.47213L17.5279 4H6.47213ZM10.8582 16.4255H8.64551C8.64551 14.5952 7.1567 13.1064 5.32642 13.1064V10.8936C7.1567 10.8936 8.64551 9.40483 8.64551 7.57454H10.8582C10.8582 9.39042 9.96684 10.9908 8.61129 12C9.96684 13.0093 10.8582 14.6096 10.8582 16.4255ZM18.6667 13.1064C16.8364 13.1064 15.3476 14.5952 15.3476 16.4255H13.1348C13.1348 14.6096 14.0263 13.0093 15.3818 12C14.0263 10.9908 13.1348 9.39042 13.1348 7.57454H15.3476C15.3476 9.40483 16.8364 10.8936 18.6667 10.8936V13.1064V13.1064Z' fill='%23a6d189'/%3E%3C/svg%3E");
    }
    div[class*=userPopoutOuter-] div[aria-label="Early Verified Bot Developer"],
    div[class*=userProfileOuter-] div[aria-label="Early Verified Bot Developer"] {
      content: url("data:image/svg+xml,%3Csvg height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='m21.58 11.4-4.28-7.39-.35-.6h-9.91l-.35.6-4.27 7.39-.35.6.35.6 4.27 7.39.35.6h9.92l.35-.6 4.28-7.39.35-.6zm-13.07-1.03-1.63 1.63 1.63 1.63v2.73l-4.36-4.36 4.37-4.37v2.74zm3.12 6.93-2.04-.63 3.1-9.98 2.04.64zm3.86-.93v-2.73l1.63-1.64-1.63-1.63v-2.74l4.36 4.37z' fill='%23DCD7BA'/%3E%3C/svg%3E");
    }
    div[class*=userPopoutOuter-] div[class^=userPopoutOverlayBackground] > div[class^=scroller] > div[class^=section]:first-child > div[class^=buttonsContainer] > button:nth-child(2),
    div[class*=userProfileOuter-] div[class^=userPopoutOverlayBackground] > div[class^=scroller] > div[class^=section]:first-child > div[class^=buttonsContainer] > button:nth-child(2) {
      background: #DCD7BA;
    }

    [class*=layerContainer-] [class*=toolbar-] {
      background-color: var(--background-floating);
    }
    [class*=layerContainer-] [class*=toolbar-] [class*=buttons-] [class*=icon-] {
      color: #DCD7BA;
    }

    [class*=layerContainer-] div[id=sort-and-view] div[id=sort-and-view-reset-all] [style="color: var(--text-normal);"]:hover {
      color: #232634 !important;
    }

    rect[fill="#23a55a"],
    foreignObject[mask="url(#svg-mask-status-online)"] > div,
    div[class^=dotOnline],
    i[class^=statusOnline-] {
      fill: #a6d189 !important;
      background-color: #a6d189 !important;
    }

    rect[fill="rgba(35, 165, 90, 1)"] {
      fill: #a6d189 !important;
    }

    rect[fill="#f0b232"],
    foreignObject[mask="url(#svg-mask-status-idle)"] > div {
      fill: #e5c890 !important;
      background-color: #e5c890 !important;
    }

    rect[fill="rgba(240, 178, 50, 1)"] {
      fill: #e5c890 !important;
    }

    rect[fill="#f23f43"],
    foreignObject[mask="url(#svg-mask-status-dnd)"] > div {
      fill: #e78284 !important;
      background-color: #e78284 !important;
    }

    rect[fill="rgba(242, 63, 67, 1)"] {
      fill: #e78284 !important;
    }

    rect[fill="#82858f"],
    foreignObject[mask="url(#svg-mask-status-offline)"] > div,
    foreignObject[mask="url(#svg-mask-status-offline)"] > rect,
    div[class^=dotOffline],
    i[class^=statusOffline-] {
      fill: #a5adce !important;
      background-color: #a5adce !important;
    }

    rect[fill="rgba(130, 133, 143, 1)"] {
      fill: #a5adce !important;
    }

    rect[fill="#593695"] {
      fill: #ca9ee6 !important;
    }

    .vc-platform-indicator svg[fill*="--green-"] {
      fill: #a6d189;
    }

    .vc-platform-indicator svg[fill*="--yellow-"] {
      fill: #e5c890;
    }

    .vc-platform-indicator svg[fill*="--red-"] {
      fill: #e78284;
    }

    [src="/assets/eaeac24163b35f7526704a3d9b3c7722.svg"] {
      width: 0;
      padding: 12px;
      height: 0;
      -webkit-mask-image: url("https://discord.com/assets/eaeac24163b35f7526704a3d9b3c7722.svg");
      background: #a6d189;
    }

    svg[class^=cursorDefault-] svg[class^=dots-] circle {
      fill: #1F1F28 !important;
    }

    [style*="background-color: hsl(235, calc(var(--saturation-factor, 1) * 85.6%), 64.7%)"] {
      background-color: #DCD7BA !important;
      color: #232634;
    }

    span[class*=username-][style*="color: rgb(54, 57, 62)"],
    span[class*=username-][style*="color: rgb(53, 57, 64)"] {
      color: var(--background-primary) !important;
    }

    div[class*=flowerStarContainer-][class*=boostedGuildTierIconBackgroundWithVisibleBanner] svg[class*=flowerStar-] * {
      fill: #fff;
    }
    div[class*=flowerStarContainer-][class*=boostedGuildTierIconBackgroundWithVisibleBanner] div[class^=childContainer-] svg * {
      fill: #232634;
    }
    div[class*=flowerStarContainer-][class*=iconBackgroundTierOne-] svg[class*=flowerStar-] *, div[class*=flowerStarContainer-][class*=iconBackgroundTierTwo-]:not([class*=boostedGuildTierIconBackgroundWithVisibleBanner]) svg[class*=flowerStar-] * {
      fill: #626880;
    }
    div[class*=flowerStarContainer-][class*=iconBackgroundTierOne-] div[class^=childContainer-] svg *, div[class*=flowerStarContainer-][class*=iconBackgroundTierTwo-]:not([class*=boostedGuildTierIconBackgroundWithVisibleBanner]) div[class^=childContainer-] svg * {
      fill: #DCD7BA;
    }
    div[class*=flowerStarContainer-][class*=iconBackgroundTierThree-] svg[class*=flowerStar-] * {
      fill: #f4b8e4;
    }
    div[class*=flowerStarContainer-][class*=iconBackgroundTierThree-] div[class^=childContainer-] svg * {
      fill: #232634;
    }
    div[class*=flowerStarContainer-][class*=verified-] svg[class*=flowerStar-] * {
      fill: #a6d189;
    }
    div[class*=flowerStarContainer-][class*=verified-] div[class^=childContainer-] svg * {
      fill: #232634;
    }
    div[class*=flowerStarContainer-][class*=partnered-] svg[class*=flowerStar-] * {
      fill: #DCD7BA;
    }
    div[class*=flowerStarContainer-][class*=partnered-] div[class^=childContainer-] svg * {
      fill: #232634;
    }

    div[class^=communityInfoPill] {
      --background-accent: rgba(48, 52, 70, 0.7);
      color: #DCD7BA;
    }
    div[class^=communityInfoPill] div[class^=text] {
      font-weight: 500;
    }

    a[class*=socialLink-][href*=discord] {
      color: #a5adce;
    }

    svg[class^=uploadIcon] {
      color: #232634;
    }

    .theme-dark h2[class^=emptyStateHeader-],
    .theme-light h2[class^=emptyStateHeader-] {
      color: #DCD7BA;
    }
    .theme-dark p[class^=emptyStateSubtext-],
    .theme-light p[class^=emptyStateSubtext-] {
      color: #a5adce;
    }

    div[class*=unreadMentionsBar-],
    div[class*=unreadBar-] {
      color: #232634;
    }

    div[class*=numberBadge-] {
      font-weight: 700;
      color: #232634;
    }

    button[class^=attachButton-] svg path[class^=attachButtonPlay-] {
      color: #a6d189;
      fill: #a6d189;
    }

    div[class*=avatarSpeaking-] {
      -webkit-box-shadow: inset 0 0 0 2px #a6d189, inset 0 0 0 3px var(--background-secondary);
      box-shadow: inset 0 0 0 2px #a6d189, inset 0 0 0 3px var(--background-secondary);
    }

    div[class*=videoLayer-] > div[class^=tileChild] > div[class^=border][class*=speaking-] {
      -webkit-box-shadow: inset 0 0 0 2px #a6d189, inset 0 0 0 3px #a6d189;
      box-shadow: inset 0 0 0 2px #a6d189, inset 0 0 0 3px #a6d189;
    }
    div[class*=videoLayer-] > div[class^=tileChild] > div[class^=border][class*=voiceChannelEffect-] {
      -webkit-box-shadow: inset 0 0 0 2px #DCD7BA, inset 0 0 0 3px #DCD7BA;
      box-shadow: inset 0 0 0 2px #DCD7BA, inset 0 0 0 3px #DCD7BA;
    }

    div[class*=featureIcon-] path {
      fill: #DCD7BA;
    }

    div[class*=backgroundAccent-] {
      color: #232634;
    }

    div[class*=profileBadges-] div[aria-label="Supports Commands"] img {
      content: url("data:image/svg+xml,%3Csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='%23a6d189'%3E%3Cpath d='m8.1176653 16.0847263 4.8330812-8.1694527h2.9315882l-4.8330812 8.1694527z'/%3E%3Cpath d='m20.4189453 9.4038086v-2.4311524c0-1.9775391-1.0825195-3.1118164-2.9697266-3.1118164h-1.5581055v1.7802734l.9594727-.0014648c.8540039 0 1.34375.5683594 1.34375 1.5585938v2.3969727c0 .8300781.1806641 1.8422852 1.5893555 2.3100586l.2856445.0947265-.2856445.0947266c-1.4086914.4677734-1.5893555 1.4799804-1.5893555 2.3100586v2.3964844c0 .9907227-.4897461 1.559082-1.34375 1.559082l-.9594727-.0014648v1.7802734h1.5581055c1.887207 0 2.9697266-1.1342773 2.9697266-3.1118164v-2.4316406c0-1.2583008.3432617-1.6264648 1.5810547-1.6445312v-1.9023438c-1.237793-.0180665-1.5810547-.3862305-1.5810547-1.6450196z'/%3E%3Cpath d='m5.8061523 7.1982422c0-.9760742.5024414-1.5585938 1.3432617-1.5585938l.9594727.0014648v-1.7802734h-1.5576172c-1.887207 0-2.9697266 1.1342773-2.9697266 3.1118164v2.4311523c0 1.2587891-.3432617 1.6269531-1.581543 1.6450195v1.9023438c1.2382812.0180664 1.581543.3862305 1.581543 1.6445312v2.4316406c0 1.9775391 1.0825195 3.1118164 2.9697266 3.1118164h1.5576172v-1.7802734l-.9594727.0014648c-.8408203 0-1.3432617-.5830078-1.3432617-1.559082v-2.3964844c0-.8300781-.1806641-1.8422852-1.5898438-2.3100586l-.2856444-.0947264.2856445-.0947266c1.4091797-.4677734 1.5898437-1.4799804 1.5898437-2.3100586z'/%3E%3C/g%3E%3C/svg%3E");
    }

    div[class*=newBadge-],
    div[class*=tryItOutBadge-] {
      color: #232634;
    }

    span[class*=channelMention]:hover,
    [class*=mention]:not([class*=mentionButton-],
    [class*=mentionIcon-]):hover {
      color: #232634;
    }

    div[class*=unread-],
    div[class^=jumpToPresentBar-] > button,
    div[class^=newMessagesBar-] > button {
      color: #1F1F28;
    }

    a[href="/channels/907385605422448742/992579279835639808"] *[class^=icon] {
      color: #e78284 !important;
    }

    a[href="/channels/907385605422448742/918688623002550313"] *[class^=icon] {
      color: #a6d189 !important;
    }

    a[href="/channels/907385605422448742/1087430042444906506"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1087430042444906506"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+Cjxzdmcgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDQ4IDQ4IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zOnNlcmlmPSJodHRwOi8vd3d3LnNlcmlmLmNvbS8iIHN0eWxlPSJmaWxsLXJ1bGU6ZXZlbm9kZDtjbGlwLXJ1bGU6ZXZlbm9kZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MjsiPgogICAgPGcgdHJhbnNmb3JtPSJtYXRyaXgoMC41NjAzNzYsMCwwLDAuNTYwMzc2LDIxLjc1ODUsMjEuNzU4NSkiPgogICAgICAgIDxwYXRoIGQ9Ik0yNCw0QzEyLjk3Miw0IDQsMTIuOTcyIDQsMjRDNCwzNS4wMjggMTIuOTcyLDQ0IDI0LDQ0QzM1LjAyOCw0NCA0NCwzNS4wMjggNDQsMjRDNDQsMTIuOTcyIDM1LjAyOCw0IDI0LDRaTTI2LDM0TDIyLDM0TDIyLDIyTDI2LDIyTDI2LDM0Wk0yNiwxOEwyMiwxOEwyMiwxNEwyNiwxNEwyNiwxOFoiIHN0eWxlPSJmaWxsLXJ1bGU6bm9uemVybzsiLz4KICAgIDwvZz4KICAgIDxwYXRoIGQ9Ik0yMi4yNDgsMzcuNjY1TDYuMTc4LDM3LjY2NUM0LjI5MywzNy42NjUgMi43NDIsMzYuMTE0IDIuNzQyLDM0LjIyOUwyLjc0Miw2Ljc0M0MyLjc0Miw0Ljg1OSA0LjI5MywzLjMwOCA2LjE3OCwzLjMwOEwyNi43NzIsMy4zMDhDMjguNjU2LDMuMzA4IDMwLjIwNyw0Ljg1OSAzMC4yMDcsNi43NDNMMzAuMjA3LDIzLjAwMUMyNy4zNywyNC4xNjYgMjUuMDI4LDI2LjI5MSAyMy41ODUsMjguOTcxQzIyLjM5NiwyNi45NTQgMTkuNjUzLDI1LjMxOSAxNi40ODUsMjUuMzE5QzEyLjIzOSwyNS4zMTkgOC43NTUsMjguMjU4IDguNzU1LDMxLjExNkw4Ljc1NSwzMi4wODRMMjIuMzkyLDMyLjA4NEMyMi4xNDgsMzMuMDg1IDIyLjAxOSwzNC4xMzEgMjIuMDE5LDM1LjIwOEMyMi4wMTksMzYuMDQ3IDIyLjA5NywzNi44NjkgMjIuMjQ4LDM3LjY2NVpNMTEuMzMyLDguNDYxTDExLjMzMiwxMS44OTdMMjEuNjM5LDExLjg5N0wyMS42MzksOC40NjFMMTEuMzMyLDguNDYxWk0yMC4zNSwxOS4xOThDMjAuMzQyLDE3LjA4MSAxOC42MDIsMTUuMzQxIDE2LjQ4NSwxNS4zMzNDMTQuMzY0LDE1LjMzMyAxMi42MiwxNy4wNzUgMTIuNjIsMTkuMTk4QzEyLjYyLDIxLjMyMSAxNC4zNjQsMjMuMDY1IDE2LjQ4NSwyMy4wNjVDMTguNjAzLDIzLjA1NSAyMC4zNDIsMjEuMzE1IDIwLjM1LDE5LjE5OFoiIHN0eWxlPSJmaWxsLXJ1bGU6bm9uemVybzsiLz4KPC9zdmc+Cg==");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #99d1db;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1016344897969733652"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1016344897969733652"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+Cjxzdmcgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDQ4IDQ4IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zOnNlcmlmPSJodHRwOi8vd3d3LnNlcmlmLmNvbS8iIHN0eWxlPSJmaWxsLXJ1bGU6ZXZlbm9kZDtjbGlwLXJ1bGU6ZXZlbm9kZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MjsiPgogICAgPHBhdGggZD0iTTM2LjM3OSwzMy4zMTRMMzYuMzc5LDM4Ljg5OEMzNi4zNzksNDEuMDkzIDM0LjU3NCw0Mi44OTggMzIuMzc5LDQyLjg5OEw4LjQwMyw0Mi44OThDNi4yMDksNDIuODk4IDQuNDAzLDQxLjA5MyA0LjQwMywzOC44OThMNC40MDMsNi44OThDNC40MDMsNC43MDQgNi4yMDksMi44OTggOC40MDMsMi44OThMMzIuMzc5LDIuODk4QzM0LjU3NCwyLjg5OCAzNi4zNzksNC43MDQgMzYuMzc5LDYuODk4TDM2LjM3OSwxNC42ODZDMzEuMjM5LDE0LjY4NiAyNy4wNjUsMTguODU5IDI3LjA2NSwyNEMyNy4wNjUsMjkuMTQxIDMxLjIzOSwzMy4zMTQgMzYuMzc5LDMzLjMxNFpNMjQuOTAzLDIxLjM5OEMyNC44OTQsMTguOTM0IDIyLjg2OCwxNi45MDggMjAuNDAzLDE2Ljg5OEMxNy45MzMsMTYuODk4IDE1LjkwMywxOC45MjYgMTUuOTAzLDIxLjM5OEMxNS45MDMsMjMuODcgMTcuOTMzLDI1LjkgMjAuNDAzLDI1LjlDMjIuODY5LDI1Ljg5IDI0Ljg5NCwyMy44NjQgMjQuOTAzLDIxLjM5OFpNMTEuNDAzLDM1LjI3NEwxMS40MDMsMzYuNEwyOS40MDMsMzYuNEwyOS40MDMsMzUuMjc0QzI5LjQwMywzMS45NDYgMjUuMzQ3LDI4LjUyNCAyMC40MDMsMjguNTI0QzE1LjQ1OSwyOC41MjQgMTEuNDAzLDMxLjk0NiAxMS40MDMsMzUuMjc0Wk0xNC40MDMsOC44OThMMTQuNDAzLDEyLjg5OEwyNi40MDMsMTIuODk4TDI2LjQwMyw4Ljg5OEwxNC40MDMsOC44OThaIiBzdHlsZT0iZmlsbC1ydWxlOm5vbnplcm87Ii8+CiAgICA8ZyB0cmFuc2Zvcm09Im1hdHJpeCgwLjM0MDczOCwwLDAsMC4zNDA3MzgsMjguMjAxNywxNS44MjIzKSI+CiAgICAgICAgPHBhdGggZD0iTTQ4LDI0QzQ4LDM3LjE2NiAzNy4xNjYsNDggMjQsNDhDMTAuODM0LDQ4IDAsMzcuMTY2IDAsMjRDLTAsMTAuODM0IDEwLjgzNCwwIDI0LDBDMzcuMTY2LC0wIDQ4LDEwLjgzNCA0OCwyNFpNMjUuNSwxMy41QzI1LjUsMTIuNjc3IDI0LjgyMywxMiAyNCwxMkMyMy4xNzcsMTIgMjIuNSwxMi42NzcgMjIuNSwxMy41TDIyLjUsMjIuNUwxMy41LDIyLjVDMTIuNjc3LDIyLjUgMTIsMjMuMTc3IDEyLDI0QzEyLDI0LjgyMyAxMi42NzcsMjUuNSAxMy41LDI1LjVMMjIuNSwyNS41TDIyLjUsMzQuNUMyMi41LDM1LjMyMyAyMy4xNzcsMzYgMjQsMzZDMjQuODIzLDM2IDI1LjUsMzUuMzIzIDI1LjUsMzQuNUwyNS41LDI1LjVMMzQuNSwyNS41QzM1LjMyMywyNS41IDM2LDI0LjgyMyAzNiwyNEMzNiwyMy4xNzcgMzUuMzIzLDIyLjUgMzQuNSwyMi41TDI1LjUsMjIuNUwyNS41LDEzLjVaIiBzdHlsZT0iZmlsbC1ydWxlOm5vbnplcm87Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ca9ee6;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1087430795653828700"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1087430795653828700"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+Cjxzdmcgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDQ4IDQ4IiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zOnNlcmlmPSJodHRwOi8vd3d3LnNlcmlmLmNvbS8iIHN0eWxlPSJmaWxsLXJ1bGU6ZXZlbm9kZDtjbGlwLXJ1bGU6ZXZlbm9kZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MjsiPgogICAgPHBhdGggZD0iTTM2LjM3OSwyNy41OTFMMzYuMzc5LDM4Ljg5OEMzNi4zNzksNDEuMDkzIDM0LjU3NCw0Mi44OTggMzIuMzc5LDQyLjg5OEw4LjQwMyw0Mi44OThDNi4yMDksNDIuODk4IDQuNDAzLDQxLjA5MyA0LjQwMywzOC44OThMNC40MDMsNi44OThDNC40MDMsNC43MDQgNi4yMDksMi44OTggOC40MDMsMi44OThMMzIuMzc5LDIuODk4QzM0LjU3NCwyLjg5OCAzNi4zNzksNC43MDQgMzYuMzc5LDYuODk4TDM2LjM3OSwxMS45NTVDMzUuOTc2LDExLjk1NCAzNS41NzIsMTIuMDk4IDM1LjI1NywxMi4zOUMzNS4yNTUsMTIuMzkxIDM1LjI1MywxMi4zOTMgMzUuMjUxLDEyLjM5NUwyNi40MTksMjAuNjg2QzI2LjQwNywyMC42OTggMjYuMzk1LDIwLjcxIDI2LjM4MywyMC43MjJDMjUuOTU0LDIxLjE2NyAyNS43LDIxLjc1NCAyNS42NjgsMjIuMzcyQzI1LjY2NywyMi4zODkgMjUuNjY2LDIyLjQwNiAyNS42NjYsMjIuNDI0TDI1LjY2NiwyNS43MjhDMjUuNjY2LDI2LjQzOSAyNi4wNTMsMjYuNzk5IDI2LjM5NCwyNi45NDhDMjYuNzM4LDI3LjA5OCAyNy4yNjcsMjcuMTM3IDI3Ljc4OCwyNi42NDhMMzYuMzc5LDE4LjU4NkwzNi4zNzksMjAuOTYzQzM1Ljk3OCwyMC45NjEgMzUuNTc2LDIxLjEwNCAzNS4yNjIsMjEuMzkxQzM1LjI1OCwyMS4zOTQgMzUuMjU1LDIxLjM5NyAzNS4yNTEsMjEuNDAxTDI2LjQxOCwyOS42ODdDMjYuNDA2LDI5LjY5OSAyNi4zOTQsMjkuNzExIDI2LjM4MywyOS43MjNDMjYuMjU2LDI5Ljg1NCAyNi4xNDQsMjkuOTk4IDI2LjA0OSwzMC4xNTFDMjQuNTAyLDI5LjE2MSAyMi41MzUsMjguNTI0IDIwLjQwMywyOC41MjRDMTUuNDU5LDI4LjUyNCAxMS40MDMsMzEuOTQ2IDExLjQwMywzNS4yNzRMMTEuNDAzLDM2LjRMMjkuNDAzLDM2LjRMMjkuNDAzLDM1LjI3NEMyOS40MDMsMzQuOTMzIDI5LjM2MSwzNC41OSAyOS4yNzksMzQuMjVMMzYuMzc4LDI3LjU5QzM2LjM3OSwyNy41OSAzNi4zNzksMjcuNTkgMzYuMzc5LDI3LjU5MVpNMjQuOTAzLDIxLjM5OEMyNC44OTQsMTguOTM0IDIyLjg2OCwxNi45MDggMjAuNDAzLDE2Ljg5OEMxNy45MzMsMTYuODk4IDE1LjkwMywxOC45MjYgMTUuOTAzLDIxLjM5OEMxNS45MDMsMjMuODcgMTcuOTMzLDI1LjkgMjAuNDAzLDI1LjlDMjIuODY5LDI1Ljg5IDI0Ljg5NCwyMy44NjQgMjQuOTAzLDIxLjM5OFpNMTQuNDAzLDguODk4TDE0LjQwMywxMi44OThMMjYuNDAzLDEyLjg5OEwyNi40MDMsOC44OThMMTQuNDAzLDguODk4WiIgc3R5bGU9ImZpbGwtcnVsZTpub256ZXJvOyIvPgogICAgPGcgdHJhbnNmb3JtPSJtYXRyaXgoMC40NjAyNzgsMCwwLDAuNDYwMjc4LDI1LjMzMjMsMTIuOTUyOSkiPgogICAgICAgIDxwYXRoIGQ9Ik0yNC45MzYsMC4zNzJDMjQuNDAyLC0wLjEyMSAyMy41NywtMC4xMjEgMjMuMDM2LDAuMzcyTDMuODQ4LDE4LjM4NkMzLjI3OCwxOC45NzggMi45NCwxOS43NTYgMi44OTgsMjAuNTc2TDIuODk4LDI3Ljc1NkMyLjg5OCwyOC40NzIgMy4zMjYsMjguNjYgMy44NDgsMjguMTdMMjMuMDUsMTAuMTVDMjMuNTg1LDkuNjYyIDI0LjQxNSw5LjY2MiAyNC45NSwxMC4xNUw0NC4xNTYsMjguMTdDNDQuNjgsMjguNjYgNDUuMTA2LDI4LjQ3MiA0NS4xMDYsMjcuNzU2TDQ1LjEwNiwyMC41NzZDNDUuMDYzLDE5Ljc1NiA0NC43MjUsMTguOTc4IDQ0LjE1NiwxOC4zODZMMjQuOTM2LDAuMzcyWk0yNC45MzYsMTkuOTM4QzI0LjQwMSwxOS40NSAyMy41NzEsMTkuNDUgMjMuMDM2LDE5LjkzOEwzLjg0NiwzNy45NDJDMy4yNzYsMzguNTMzIDIuOTM5LDM5LjMxIDIuODk2LDQwLjEzTDIuODk2LDQ3LjMxQzIuODk2LDQ4LjAyNiAzLjMyNCw0OC4yMTYgMy44NDYsNDcuNzI2TDIzLjA0OCwyOS43MTJDMjMuNTgyLDI5LjIyIDI0LjQxNCwyOS4yMiAyNC45NDgsMjkuNzEyTDQ0LjE1NCw0Ny43MjhDNDQuNjc4LDQ4LjIxNiA0NS4xMDQsNDguMDI4IDQ1LjEwNCw0Ny4zMTJMNDUuMTA0LDQwLjEzMkM0NS4wNiwzOS4zMTMgNDQuNzIzLDM4LjUzNiA0NC4xNTQsMzcuOTQ0TDI0LjkzNiwxOS45MzhaIiBzdHlsZT0iZmlsbC1ydWxlOm5vbnplcm87Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e5c890;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1024376416428642375"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1024376416428642375"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNjQwIDUxMiIgaGVpZ2h0PSI0OCIgd2lkdGg9IjQ4IiBmb2N1c2FibGU9ImZhbHNlIiByb2xlPSJpbWciIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBjbGFzcz0iU3R5bGVkSWNvbkJhc2Utc2MtZWE5dWxqLTAgaFJuSlBDIiBzdHlsZT0iLS1kYXJrcmVhZGVyLWlubGluZS1maWxsOiBjdXJyZW50Q29sb3I7IiBkYXRhLWRhcmtyZWFkZXItaW5saW5lLWZpbGw9IiI+PHRpdGxlPlBsYW5lQXJyaXZhbCBpY29uPC90aXRsZT48cGF0aCBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Im0uMjUzIDE2Ni45LS4yMS05OC45MUMuMDIgNTcuNzQgOS41MDggNTAuMTEgMTkuNTEgNTIuMzRsMzUuNTYgNy45YTMxLjk4NyAzMS45ODcgMCAwIDEgMjMuMDIgMjBMOTUuMSAxMjcuMWwxMjguMiAzOC41LTQxLjUtMTQ1LjJDMTc4LjkgMTAuMTggMTg2LjYuMDAxIDE5Ny4yLjAwMWg0MC4xYzExLjUgMCAyMi4yIDYuMjM1IDI3LjkgMTYuMzA5bDEwOSAxOTMuODkgMTA3LjMgMzEuNmMxNS45IDQuNyAzMC43IDEyLjUgNDMuNyAyMi45bDM0LjQgMjcuNWMyNC4xIDE5LjIgMTguMSA1Ny4zLTEwLjcgNjguMy00MS4yIDE1LjYtODYuMiAxOC0xMjguOCA2LjlsLTI5OC40LTc3LjZjLTExLjEtMi45LTIxLjItOC43LTI5LjMtMTYuOUw5LjUzNiAxODkuNGMtNS45My02LTkuMjY1LTE0LjEtOS4yODMtMjIuNXpNNjA4IDQ0OGMxNy43IDAgMzIgMTQuMyAzMiAzMnMtMTQuMyAzMi0zMiAzMkgzMmMtMTcuNjcgMC0zMi0xNC4zLTMyLTMyczE0LjMzLTMyIDMyLTMyaDU3NnptLTQxNi04MGMwIDE3LjctMTQuMyAzMi0zMiAzMnMtMzItMTQuMy0zMi0zMiAxNC4zLTMyIDMyLTMyIDMyIDE0LjMgMzIgMzJ6bTMyIDE2YzAtMTcuNyAxNC4zLTMyIDMyLTMyczMyIDE0LjMgMzIgMzItMTQuMyAzMi0zMiAzMi0zMi0xNC4zLTMyLTMyeiIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ca9ee6;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/907385605422448745"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/907385605422448745"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Ib21lIGljb248L3RpdGxlPjxwYXRoIGQ9Ik0zIDEzaDF2N2MwIDEuMTAzLjg5NyAyIDIgMmgxMmMxLjEwMyAwIDItLjg5NyAyLTJ2LTdoMWExIDEgMCAwIDAgLjcwNy0xLjcwN2wtOS05YS45OTkuOTk5IDAgMCAwLTEuNDE0IDBsLTkgOUExIDEgMCAwIDAgMyAxM3ptNyA3di01aDR2NWgtNHptMi0xNS41ODYgNiA2VjE1bC4wMDEgNUgxNnYtNWMwLTEuMTAzLS44OTctMi0yLTJoLTRjLTEuMTAzIDAtMiAuODk3LTIgMnY1SDZ2LTkuNTg2bDYtNnoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e78284;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1019633641057431613"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1019633641057431613"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5TdXBwb3J0IGljb248L3RpdGxlPjxyZWN0IHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgZmlsbD0ibm9uZSI+PC9yZWN0PjxwYXRoIGQ9Ik0xMiAyQzYuNDggMiAyIDYuNDggMiAxMnM0LjQ4IDEwIDEwIDEwIDEwLTQuNDggMTAtMTBTMTcuNTIgMiAxMiAyem03LjQ2IDcuMTItMi43OCAxLjE1YTQuOTgyIDQuOTgyIDAgMCAwLTIuOTUtMi45NGwxLjE1LTIuNzhjMi4xLjggMy43NyAyLjQ3IDQuNTggNC41N3pNMTIgMTVjLTEuNjYgMC0zLTEuMzQtMy0zczEuMzQtMyAzLTMgMyAxLjM0IDMgMy0xLjM0IDMtMyAzek05LjEzIDQuNTRsMS4xNyAyLjc4YTUgNSAwIDAgMC0yLjk4IDIuOTdMNC41NCA5LjEzYTcuOTg0IDcuOTg0IDAgMCAxIDQuNTktNC41OXpNNC41NCAxNC44N2wyLjc4LTEuMTVhNC45NjggNC45NjggMCAwIDAgMi45NyAyLjk2bC0xLjE3IDIuNzhhNy45OTYgNy45OTYgMCAwIDEtNC41OC00LjU5em0xMC4zNCA0LjU5LTEuMTUtMi43OGE0Ljk3OCA0Ljk3OCAwIDAgMCAyLjk1LTIuOTdsMi43OCAxLjE3YTguMDA3IDguMDA3IDAgMCAxLTQuNTggNC41OHoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ef9f76;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1019639907662184478"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1019639907662184478"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDggNDgiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5MaWdodGJ1bGJGaWxhbWVudCBpY29uPC90aXRsZT48cGF0aCBkPSJNMjQgNGExNC41IDE0LjUgMCAwIDAtOS43OCAyNS4yYy40NS40Mi43NS44OC44NyAxLjM2bDEuMjcgNC45NGg2LjM5di0xNGExLjI1IDEuMjUgMCAwIDEgMi41IDB2MTRoNi40bDEuMjYtNC45NWMuMTItLjQ3LjQyLS45NC44Ny0xLjM1QTE0LjUgMTQuNSAwIDAgMCAyNCA0em03IDM0SDE3bC42MiAyLjQzYTQuNzUgNC43NSAwIDAgMCA0LjYgMy41N2gzLjU2YTQuNzUgNC43NSAwIDAgMCA0LjYtMy41N2wuNjMtMi40M3ptLTUuNzUtMjUuNzV2My41YTEuMjUgMS4yNSAwIDEgMS0yLjUgMHYtMy41YTEuMjUgMS4yNSAwIDEgMSAyLjUgMHptNy4zOCAzLjEyYy40OS40OC40OSAxLjI4IDAgMS43NmwtMi41IDIuNWExLjI1IDEuMjUgMCAwIDEtMS43Ni0xLjc3bDIuNS0yLjVhMS4yNSAxLjI1IDAgMCAxIDEuNzYgMHptLTEzIDIuNWExLjI1IDEuMjUgMCAxIDEtMS43NyAxLjc2bC0yLjUtMi41YTEuMjUgMS4yNSAwIDEgMSAxLjc3LTEuNzZsMi41IDIuNXoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e5c890;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/992572141595795548"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/992572141595795548"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Qb2xsIGljb248L3RpdGxlPjxwYXRoIGZpbGw9Im5vbmUiIGQ9Ik0wIDBoMjR2MjRIMFYweiI+PC9wYXRoPjxwYXRoIGQ9Ik0xOSAzSDVjLTEuMSAwLTIgLjktMiAydjE0YzAgMS4xLjkgMiAyIDJoMTRjMS4xIDAgMi0uOSAyLTJWNWMwLTEuMS0uOS0yLTItMnptMCAxNkg1VjVoMTR2MTR6TTcgMTBoMnY3SDd6bTQtM2gydjEwaC0yem00IDZoMnY0aC0yeiI+PC9wYXRoPjwvc3ZnPg==");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #a6d189;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/907386197855322123"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/907386197855322123"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Db25zdHJ1Y3Rpb24gaWNvbjwvdGl0bGU+PHJlY3Qgd2lkdGg9IjI0IiBoZWlnaHQ9IjI0IiBmaWxsPSJub25lIj48L3JlY3Q+PHBhdGggZD0ibTEzLjQxIDE1LjU0IDQuNCA0LjRjLjU5LjU5IDEuNTQuNTkgMi4xMiAwIC41OS0uNTkuNTktMS41NCAwLTIuMTJsLTQuNC00LjQtMi4xMiAyLjEyek0xNi4zNCA5Ljc5Yy44OC4zMSAxLjg5LjM2IDMuMDMtLjM5Ljc5LS41MiAxLjQtMS4zMiAxLjU3LTIuMjUuMTQtLjc1LjAzLTEuNDUtLjI1LTIuMDdMMTguMjcgNy41IDE2LjUgNS43M2wyLjQzLTIuNDNjLS42Mi0uMjgtMS4zMy0uMzktMi4wOC0uMjUtLjkzLjE4LTEuNzMuNzktMi4yNSAxLjU4LS43NCAxLjE0LS42OSAyLjE0LS4zOCAzLjAyTDEyIDkuODhsLTEuNjktMS42OWMuMzgtLjM4LjM4LTEgMC0xLjM4bC0uNTYtLjU2IDIuMzItMi4zMkEzLjE4IDMuMTggMCAwIDAgOS44MiAzYy0uODIgMC0xLjYzLjMxLTIuMjUuOTNMNC43MSA2Ljc5YS45OTYuOTk2IDAgMCAwIDAgMS40MWwuNTQuNTRIMy41Yy0uMTkgMC0uMzcuMDctLjUuMjFhLjcuNyAwIDAgMCAwIDFsMiAyYS43LjcgMCAwIDAgMSAwYy4xMy0uMTMuMjEtLjMxLjIxLS41VjkuNzFsLjA0LjA0LjU2LjU2Yy4zOC4zOCAxIC4zOCAxLjM4IDBMOS44OCAxMmwtNS44MiA1LjgyYTEuNDkgMS40OSAwIDAgMCAwIDIuMTJjLjU5LjU5IDEuNTQuNTkgMi4xMiAwbDUuMzgtNS4zOCA0Ljc4LTQuNzd6Ij48L3BhdGg+PC9zdmc+");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e78284;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1020267709159718962"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1020267709159718962"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTYgMTYiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Qcm9qZWN0IGljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEuNzUgMEExLjc1IDEuNzUgMCAwIDAgMCAxLjc1djEyLjVDMCAxNS4yMTYuNzg0IDE2IDEuNzUgMTZoMTIuNUExLjc1IDEuNzUgMCAwIDAgMTYgMTQuMjVWMS43NUExLjc1IDEuNzUgMCAwIDAgMTQuMjUgMEgxLjc1ek0xLjUgMS43NWEuMjUuMjUgMCAwIDEgLjI1LS4yNWgxMi41YS4yNS4yNSAwIDAgMSAuMjUuMjV2MTIuNWEuMjUuMjUgMCAwIDEtLjI1LjI1SDEuNzVhLjI1LjI1IDAgMCAxLS4yNS0uMjVWMS43NXpNMTEuNzUgM2EuNzUuNzUgMCAwIDAtLjc1Ljc1djcuNWEuNzUuNzUgMCAwIDAgMS41IDB2LTcuNWEuNzUuNzUgMCAwIDAtLjc1LS43NXptLTguMjUuNzVhLjc1Ljc1IDAgMCAxIDEuNSAwdjUuNWEuNzUuNzUgMCAwIDEtMS41IDB2LTUuNXpNOCAzYS43NS43NSAwIDAgMC0uNzUuNzV2My41YS43NS43NSAwIDAgMCAxLjUgMHYtMy41QS43NS43NSAwIDAgMCA4IDN6Ij48L3BhdGg+PC9zdmc+");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ef9f76;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/922896939295592498"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/922896939295592498"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Cb3dsUmljZSBpY29uPC90aXRsZT48cGF0aCBkPSJNMjEgMTBhMy41OCAzLjU4IDAgMCAwLTEuOC0zIDMuNjYgMy42NiAwIDAgMC0zLjYzLTMuMTMgMy44NiAzLjg2IDAgMCAwLTEgLjEzIDMuNyAzLjcgMCAwIDAtNS4xMSAwIDMuODYgMy44NiAwIDAgMC0xLS4xM0EzLjY2IDMuNjYgMCAwIDAgNC44MSA3IDMuNTggMy41OCAwIDAgMCAzIDEwYTEgMSAwIDAgMC0xIDEgMTAgMTAgMCAwIDAgNSA4LjY2VjIxYTEgMSAwIDAgMCAxIDFoOGExIDEgMCAwIDAgMS0xdi0xLjM0QTEwIDEwIDAgMCAwIDIyIDExYTEgMSAwIDAgMC0xLTFaTTUgMTBhMS41OSAxLjU5IDAgMCAxIDEuMTEtMS4zOWwuODMtLjI2LS4xNi0uODVhMS42NCAxLjY0IDAgMCAxIDEuNjYtMS42MiAxLjc4IDEuNzggMCAwIDEgLjgzLjJsLjgxLjQ1LjUtLjc3YTEuNzEgMS43MSAwIDAgMSAyLjg0IDBsLjUuNzcuODEtLjQ1YTEuNzggMS43OCAwIDAgMSAuODMtLjIgMS42NSAxLjY1IDAgMCAxIDEuNjcgMS42bC0uMTYuODUuODIuMjhBMS41OSAxLjU5IDAgMCAxIDE5IDEwWiI+PC9wYXRoPjwvc3ZnPg==");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e5c890;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/923640537356070972"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/923640537356070972"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5MYW5kc2NhcGUgaWNvbjwvdGl0bGU+PHJlY3Qgd2lkdGg9IjI0IiBoZWlnaHQ9IjI0IiBmaWxsPSJub25lIj48L3JlY3Q+PHBhdGggZD0iTTEzLjIgNy4wNyAxMC4yNSAxMWwyLjI1IDNjLjMzLjQ0LjI0IDEuMDctLjIgMS40YS45OTQuOTk0IDAgMCAxLTEuNC0uMmMtMS4wNS0xLjQtMi4zMS0zLjA3LTMuMS00LjE0LS40LS41My0xLjItLjUzLTEuNiAwbC00IDUuMzNjLS40OS42Ny0uMDIgMS42MS44IDEuNjFoMThjLjgyIDAgMS4yOS0uOTQuOC0xLjZsLTctOS4zM2EuOTkzLjk5MyAwIDAgMC0xLjYgMHoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #a6d189;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/921217923790561360"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/921217923790561360"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5HaXRodWIgaWNvbjwvdGl0bGU+PHBhdGggZD0iTTEyIC4yOTdjLTYuNjMgMC0xMiA1LjM3My0xMiAxMiAwIDUuMzAzIDMuNDM4IDkuOCA4LjIwNSAxMS4zODUuNi4xMTMuODItLjI1OC44Mi0uNTc3IDAtLjI4NS0uMDEtMS4wNC0uMDE1LTIuMDQtMy4zMzguNzI0LTQuMDQyLTEuNjEtNC4wNDItMS42MUM0LjQyMiAxOC4wNyAzLjYzMyAxNy43IDMuNjMzIDE3LjdjLTEuMDg3LS43NDQuMDg0LS43MjkuMDg0LS43MjkgMS4yMDUuMDg0IDEuODM4IDEuMjM2IDEuODM4IDEuMjM2IDEuMDcgMS44MzUgMi44MDkgMS4zMDUgMy40OTUuOTk4LjEwOC0uNzc2LjQxNy0xLjMwNS43Ni0xLjYwNS0yLjY2NS0uMy01LjQ2Ni0xLjMzMi01LjQ2Ni01LjkzIDAtMS4zMS40NjUtMi4zOCAxLjIzNS0zLjIyLS4xMzUtLjMwMy0uNTQtMS41MjMuMTA1LTMuMTc2IDAgMCAxLjAwNS0uMzIyIDMuMyAxLjIzLjk2LS4yNjcgMS45OC0uMzk5IDMtLjQwNSAxLjAyLjAwNiAyLjA0LjEzOCAzIC40MDUgMi4yOC0xLjU1MiAzLjI4NS0xLjIzIDMuMjg1LTEuMjMuNjQ1IDEuNjUzLjI0IDIuODczLjEyIDMuMTc2Ljc2NS44NCAxLjIzIDEuOTEgMS4yMyAzLjIyIDAgNC42MS0yLjgwNSA1LjYyNS01LjQ3NSA1LjkyLjQyLjM2LjgxIDEuMDk2LjgxIDIuMjIgMCAxLjYwNi0uMDE1IDIuODk2LS4wMTUgMy4yODYgMCAuMzE1LjIxLjY5LjgyNS41N0MyMC41NjUgMjIuMDkyIDI0IDE3LjU5MiAyNCAxMi4yOTdjMC02LjYyNy01LjM3My0xMi0xMi0xMiI+PC9wYXRoPjwvc3ZnPg==");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #85c1dc;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/919570286754529330"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/919570286754529330"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0OCIgaGVpZ2h0PSI0OCIgdmlld0JveD0iMCAwIDI1NiAyNTYiPjxwYXRoIGQ9Ik05MiwxNDBhMTIsMTIsMCwxLDEsMTItMTJBMTIsMTIsMCwwLDEsOTIsMTQwWm03Mi0yNGExMiwxMiwwLDEsMCwxMiwxMkExMiwxMiwwLDAsMCwxNjQsMTE2Wm0tMTIuMjcsNDUuMjNhNDUsNDUsMCwwLDEtNDcuNDYsMCw4LDgsMCwwLDAtOC41NCwxMy41NCw2MSw2MSwwLDAsMCw2NC41NCwwLDgsOCwwLDAsMC04LjU0LTEzLjU0Wk0yMzIsMTI4QTEwNCwxMDQsMCwxLDEsMTI4LDI0LDEwNC4xMSwxMDQuMTEsMCwwLDEsMjMyLDEyOFptLTE2LDBhODguMTEsODguMTEsMCwwLDAtODQuMDktODcuOTFDMTIwLjMyLDU2LjM4LDEyMCw3MS44OCwxMjAsNzJhOCw4LDAsMCwwLDE2LDAsOCw4LDAsMCwxLDE2LDAsMjQsMjQsMCwwLDEtNDgsMGMwLS43My4xMy0xNC4zLDguNDYtMzAuNjNBODgsODgsMCwxLDAsMjE2LDEyOFoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e78284;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1012720591180152893"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1012720591180152893"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTYgMTYiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Sc3NGaWxsIGljb248L3RpdGxlPjxwYXRoIGQ9Ik0yIDBhMiAyIDAgMCAwLTIgMnYxMmEyIDIgMCAwIDAgMiAyaDEyYTIgMiAwIDAgMCAyLTJWMmEyIDIgMCAwIDAtMi0ySDJ6bTEuNSAyLjVjNS41MjMgMCAxMCA0LjQ3NyAxMCAxMGExIDEgMCAxIDEtMiAwIDggOCAwIDAgMC04LTggMSAxIDAgMCAxIDAtMnptMCA0YTYgNiAwIDAgMSA2IDYgMSAxIDAgMSAxLTIgMCA0IDQgMCAwIDAtNC00IDEgMSAwIDAgMSAwLTJ6bS41IDdhMS41IDEuNSAwIDEgMSAwLTMgMS41IDEuNSAwIDAgMSAwIDN6Ij48L3BhdGg+PC9zdmc+");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ef9f76;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/956595905086255164"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/956595905086255164"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNTc2IDUxMiIgaGVpZ2h0PSI0OCIgd2lkdGg9IjQ4IiBmb2N1c2FibGU9ImZhbHNlIiByb2xlPSJpbWciIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBjbGFzcz0iU3R5bGVkSWNvbkJhc2Utc2MtZWE5dWxqLTAgaFJuSlBDIiBzdHlsZT0iLS1kYXJrcmVhZGVyLWlubGluZS1maWxsOiBjdXJyZW50Q29sb3I7IiBkYXRhLWRhcmtyZWFkZXItaW5saW5lLWZpbGw9IiI+PHRpdGxlPkZyb2cgaWNvbjwvdGl0bGU+PHBhdGggZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNTI4IDQxNmgtMzIuMDdsLTkwLjMyLTk2LjM0IDE0MC42LTc5LjAzYzE4LjM4LTEwLjI1IDI5Ljc1LTI5LjYyIDI5Ljc1LTUwLjYyIDAtMjEuNS0xMS43NS00MS0zMC41LTUxLjI1LTQwLjUtMjIuMjUtOTkuMDctNDEuNDMtOTkuMDctNDEuNDNDNDM5LjYgNjAuMTkgNDA3LjMgMzIgMzY4IDMycy03MS43NyAyOC4yNS03OC41MiA2NS41QzEyNi43IDExMy0uNSAyNTAuMSAwIDQxN2MuMTI1IDM0LjkgMjkuMTMgNjMgNjQgNjNoMzA0YzguODc1IDAgMTYtNy4xMjUgMTYtMTYgMC0yNi41MS0yMS40OS00OC00Ny4xLTQ4aC01Mi42bDIzLjkzLTMyLjM4YzI0LjI1LTM2LjEzIDEwLjM4LTg4LjI1LTMzLjYzLTEwNi41LTIzLjgtMTAuMDItNTEuNi00LjcyLTcyLjIgMTAuODhsLTMyLjggMjQuNWMtNy4xMjUgNS4zNzUtMTcuMTIgNC0yMi4zOC0zLjEyNS01LjM3NS03LjEyNS00LTE3LjEyIDMuMTI1LTIyLjM4bDM0Ljc1LTI2LjEyYzM2Ljg3LTI3LjYyIDg4LjM3LTI3LjYyIDEyNS4xIDAgMTAuODggOC4xMjUgNDUuODggMzkgNDAuODggOTMuMTNMNDY5LjYgNDgwaDkwLjM4YzguODc1IDAgMTYtNy4xMjUgMTYtMTYgLjAyLTI2LjUtMjEuNDgtNDgtNDcuOTgtNDh6TTM0NCAxMTJjMC0xMy4yNSAxMC43NS0yNCAyNC0yNHMyNCAxMC43NSAyNCAyNC0xMC43NSAyNC0yNCAyNC0yNC0xMC43LTI0LTI0eiIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e5c890;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1012053454497263637"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1012053454497263637"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTYgMTYiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5IZWFkcGhvbmVzIGljb248L3RpdGxlPjxwYXRoIGQ9Ik04IDNhNSA1IDAgMCAwLTUgNXYxaDFhMSAxIDAgMCAxIDEgMXYzYTEgMSAwIDAgMS0xIDFIM2ExIDEgMCAwIDEtMS0xVjhhNiA2IDAgMSAxIDEyIDB2NWExIDEgMCAwIDEtMSAxaC0xYTEgMSAwIDAgMS0xLTF2LTNhMSAxIDAgMCAxIDEtMWgxVjhhNSA1IDAgMCAwLTUtNXoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #a6d189;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/993360467835764776"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/993360467835764776"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjggMjgiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5BbmltYWxDYXQgaWNvbjwvdGl0bGU+PHBhdGggZD0iTTE3LjggMjZINi40NmE0LjQ2IDQuNDYgMCAwIDEtMy4yNi03LjVsMS4zOC0xLjQ4YTMuODggMy44OCAwIDAgMC0uMS01LjRsLTEuMzUtMS4zNUEuNzUuNzUgMCAwIDEgNC4yIDkuMjFsMS4zNiAxLjM2YTUuMzggNS4zOCAwIDAgMSAuMTIgNy40N0w0LjMgMTkuNTJhMi45NiAyLjk2IDAgMCAwIDIuMTcgNC45OGguOThhMjguNTggMjguNTggMCAwIDEgLjYyLTYuMjZjLjQxLTEuNzcgMS4xLTMuNiAyLjI4LTUuMDFhNi40MiA2LjQyIDAgMCAxIDQuNDItMi4zOFY1LjY3QTMuNjcgMy42NyAwIDAgMSAxOC40MyAyYy44MiAwIDEuNDguNjYgMS40OCAxLjQ4di45NWgyLjE1YzEuMSAwIDIuMTIuNTcgMi43IDEuNWwuNzYgMS4yMmEzLjE4IDMuMTggMCAwIDEtMi41NyA0Ljg2djExLjQyQTIuNTcgMi41NyAwIDAgMSAyMC4zOCAyNkgxOS4zdi0yLjU3YTQuNCA0LjQgMCAwIDAtNC40LTQuNGgtMS41YS43NS43NSAwIDAgMCAwIDEuNWgxLjUxYzEuNiAwIDIuOSAxLjMgMi45IDIuOVYyNnoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #85c1dc;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/995021303499206666"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/995021303499206666"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTYgMTYiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5TdGFyRmlsbCBpY29uPC90aXRsZT48cGF0aCBkPSJNMy42MTIgMTUuNDQzYy0uMzg2LjE5OC0uODI0LS4xNDktLjc0Ni0uNTkybC44My00LjczTC4xNzMgNi43NjVjLS4zMjktLjMxNC0uMTU4LS44ODguMjgzLS45NWw0Ljg5OC0uNjk2TDcuNTM4Ljc5MmMuMTk3LS4zOS43My0uMzkuOTI3IDBsMi4xODQgNC4zMjcgNC44OTguNjk2Yy40NDEuMDYyLjYxMi42MzYuMjgyLjk1bC0zLjUyMiAzLjM1Ni44MyA0LjczYy4wNzguNDQzLS4zNi43OS0uNzQ2LjU5Mkw4IDEzLjE4N2wtNC4zODkgMi4yNTZ6Ij48L3BhdGg+PC9zdmc+");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ca9ee6;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1043693729703272519"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1043693729703272519"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5DaGF0Vm9pY2UgaWNvbjwvdGl0bGU+PHBhdGggZmlsbD0ibm9uZSIgZD0iTTAgMGgyNHYyNEgweiI+PC9wYXRoPjxwYXRoIGQ9Ik0yIDEyQzIgNi40NzcgNi40NzcgMiAxMiAyczEwIDQuNDc3IDEwIDEwLTQuNDc3IDEwLTEwIDEwSDJsMi45MjktMi45MjlBOS45NjkgOS45NjkgMCAwIDEgMiAxMnptNC44MjggOEgxMmE4IDggMCAxIDAtOC04YzAgMi4xNTIuODUxIDQuMTY1IDIuMzQzIDUuNjU3bDEuNDE0IDEuNDE0LS45MjkuOTI5ek0xMSA2aDJ2MTJoLTJWNnpNNyA5aDJ2Nkg3Vjl6bTggMGgydjZoLTJWOXoiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e78284;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/923620165218869288"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/923620165218869288"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNjQwIDUxMiIgaGVpZ2h0PSI0OCIgd2lkdGg9IjQ4IiBmb2N1c2FibGU9ImZhbHNlIiByb2xlPSJpbWciIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBjbGFzcz0iU3R5bGVkSWNvbkJhc2Utc2MtZWE5dWxqLTAgaFJuSlBDIiBzdHlsZT0iLS1kYXJrcmVhZGVyLWlubGluZS1maWxsOiBjdXJyZW50Q29sb3I7IiBkYXRhLWRhcmtyZWFkZXItaW5saW5lLWZpbGw9IiI+PHRpdGxlPlJvYm90IGljb248L3RpdGxlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTkuMzc1IDIzMy40QzMuMzc1IDIzOS40IDAgMjQ3LjUgMCAyNTZ2MTI4YzAgOC41IDMuMzc1IDE2LjYyIDkuMzc1IDIyLjYyUzIzLjUgNDE2IDMyIDQxNmgzMlYyMjRIMzJjLTguNSAwLTE2LjYyIDMuNC0yMi42MjUgOS40ek00NjQgOTZIMzUyVjMyYzAtMTcuNjItMTQuMzgtMzItMzItMzJzLTMyIDE0LjM4LTMyIDMydjY0SDE3NmMtNDQuMiAwLTgwIDM1LjgtODAgODB2MjcyYzAgMzUuMzggMjguNjIgNjQgNjQgNjRoMzIwYzM1LjM4IDAgNjQtMjguNjIgNjQtNjRWMTc2YzAtNDQuMi0zNS43LTgwLTgwLTgwek0yNTYgNDE2aC02NHYtMzJoNjR2MzJ6bS0zMi0xMjBjLTIyLjEgMC00MC0xNy45LTQwLTQwczE3LjktNDAgNDAtNDAgNDAgMTcuOSA0MCA0MC0xNy45IDQwLTQwIDQwem0xMjggMTIwaC02NHYtMzJoNjR2MzJ6bTk2IDBoLTY0di0zMmg2NHYzMnptLTMyLTEyMGMtMjIuMTIgMC00MC0xNy44OC00MC00MHMxNy45LTQwIDQwLTQwIDQwIDE3LjkgNDAgNDAtMTcuOSA0MC00MCA0MHptMjE0LjYtNjIuNmMtNi02LTE0LjEtOS40LTIyLjYtOS40aC0zMnYxOTJoMzJjOC41IDAgMTYuNjItMy4zNzUgMjIuNjItOS4zNzVTNjQwIDM5Mi41IDY0MCAzODRWMjU2YzAtOC41LTMuNC0xNi42LTkuNC0yMi42eiIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ef9f76;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1024065293401722960"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1024065293401722960"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Gb3J1bSBpY29uPC90aXRsZT48cGF0aCBmaWxsPSJub25lIiBkPSJNMCAwaDI0djI0SDBWMHoiPjwvcGF0aD48cGF0aCBkPSJNMTUgMTFWNEg0djguMTdMNS4xNyAxMUg2eiIgb3BhY2l0eT0iMC4zIj48L3BhdGg+PHBhdGggZD0iTTE2IDEzYy41NSAwIDEtLjQ1IDEtMVYzYzAtLjU1LS40NS0xLTEtMUgzYy0uNTUgMC0xIC40NS0xIDF2MTRsNC00aDEwem0tMTItLjgzVjRoMTF2N0g1LjE3TDQgMTIuMTd6TTIyIDdjMC0uNTUtLjQ1LTEtMS0xaC0ydjlINnYyYzAgLjU1LjQ1IDEgMSAxaDExbDQgNFY3eiI+PC9wYXRoPjwvc3ZnPg==");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e78284;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1012716616728977438"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1012716616728977438"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjAgMjAiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5JZGVudGlmaWNhdGlvbiBpY29uPC90aXRsZT48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMCAyYTEgMSAwIDAgMC0xIDF2MWExIDEgMCAwIDAgMiAwVjNhMSAxIDAgMCAwLTEtMXpNNCA0aDNhMyAzIDAgMCAwIDYgMGgzYTIgMiAwIDAgMSAyIDJ2OWEyIDIgMCAwIDEtMiAySDRhMiAyIDAgMCAxLTItMlY2YTIgMiAwIDAgMSAyLTJ6bTIuNSA3YTEuNSAxLjUgMCAxIDAgMC0zIDEuNSAxLjUgMCAwIDAgMCAzem0yLjQ1IDRhMi41IDIuNSAwIDEgMC00LjkgMGg0Ljl6TTEyIDlhMSAxIDAgMSAwIDAgMmgzYTEgMSAwIDEgMCAwLTJoLTN6bS0xIDRhMSAxIDAgMCAxIDEtMWgyYTEgMSAwIDEgMSAwIDJoLTJhMSAxIDAgMCAxLTEtMXoiIGNsaXAtcnVsZT0iZXZlbm9kZCI+PC9wYXRoPjwvc3ZnPg==");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ef9f76;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/953827045996118046"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/953827045996118046"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNTEyIDUxMiIgaGVpZ2h0PSI0OCIgd2lkdGg9IjQ4IiBmb2N1c2FibGU9ImZhbHNlIiByb2xlPSJpbWciIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBjbGFzcz0iU3R5bGVkSWNvbkJhc2Utc2MtZWE5dWxqLTAgaFJuSlBDIiBzdHlsZT0iLS1kYXJrcmVhZGVyLWlubGluZS1maWxsOiBjdXJyZW50Q29sb3I7IiBkYXRhLWRhcmtyZWFkZXItaW5saW5lLWZpbGw9IiI+PHRpdGxlPlNoaWVsZEJsYW5rIGljb248L3RpdGxlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTQ5NiAxMjcuMUM0OTYgMzgxLjMgMzA5LjEgNTEyIDI1NS4xIDUxMiAyMDQuOSA1MTIgMTYgMzg1LjMgMTYgMTI3LjFjMC0xOS40MSAxMS43LTM2Ljg5IDI5LjYxLTQ0LjI4bDE5MS4xLTgwLjAxYzQuOTA2LTIuMDMxIDEzLjEzLTMuNzAxIDE4LjQ0LTMuNzAxIDUuMjgxIDAgMTMuNTggMS42NyAxOC40NiAzLjcwMWwxOTIgODAuMDFDNDg0LjMgOTEuMSA0OTYgMTA4LjYgNDk2IDEyNy4xeiIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjwvcGF0aD48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #e5c890;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1014746385037398137"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1014746385037398137"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTYgMTYiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5XZWJob29rIGljb248L3RpdGxlPjxwYXRoIGQ9Ik01LjUgNC4yNWEyLjI1IDIuMjUgMCAwIDEgNC41IDAgLjc1Ljc1IDAgMCAwIDEuNSAwIDMuNzUgMy43NSAwIDEgMC02LjE0IDIuODg5bC0yLjI3MiA0LjI1OGEuNzUuNzUgMCAwIDAgMS4zMjQuNzA2TDcgNy4yNWEuNzUuNzUgMCAwIDAtLjMwOS0xLjAxNUEyLjI1IDIuMjUgMCAwIDEgNS41IDQuMjV6Ij48L3BhdGg+PHBhdGggZD0iTTcuMzY0IDMuNjA3YS43NS43NSAwIDAgMSAxLjAzLjI1N2wyLjYwOCA0LjM0OWEzLjc1IDMuNzUgMCAxIDEtLjYyOCA2Ljc4NS43NS43NSAwIDAgMSAuNzUyLTEuMjk5IDIuMjUgMi4yNSAwIDEgMC0uMDMzLTMuODguNzUuNzUgMCAwIDEtMS4wMy0uMjU2TDcuMTA3IDQuNjM2YS43NS43NSAwIDAgMSAuMjU3LTEuMDN6Ij48L3BhdGg+PHBhdGggZD0iTTIuOSA4Ljc3NkEuNzUuNzUgMCAwIDEgMi42MjUgOS44IDIuMjUgMi4yNSAwIDEgMCA2IDExLjc1YS43NS43NSAwIDAgMSAuNzUtLjc1MWg1LjVhLjc1Ljc1IDAgMCAxIDAgMS41SDcuNDI1YTMuNzUxIDMuNzUxIDAgMSAxLTUuNTUtMy45OTguNzUuNzUgMCAwIDEgMS4wMjQuMjc0eiI+PC9wYXRoPjwvc3ZnPg==");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #a6d189;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1016528303642923028"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1016528303642923028"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyIgc3R5bGU9Ii0tZGFya3JlYWRlci1pbmxpbmUtZmlsbDogY3VycmVudENvbG9yOyIgZGF0YS1kYXJrcmVhZGVyLWlubGluZS1maWxsPSIiPjx0aXRsZT5Cb29rT3BlbiBpY29uPC90aXRsZT48ZyBkYXRhLW5hbWU9IkxheWVyIDIiPjxnIGRhdGEtbmFtZT0iYm9vay1vcGVuIj48cGF0aCBkPSJNMjEgNC4zNGExLjI0IDEuMjQgMCAwIDAtMS4wOC0uMjNMMTMgNS44OXYxNC4yN2w3LjU2LTEuOTRBMS4yNSAxLjI1IDAgMCAwIDIxLjUgMTdWNS4zMmExLjI1IDEuMjUgMCAwIDAtLjUtLjk4ek0xMSA1Ljg5IDQuMDYgNC4xMUExLjI3IDEuMjcgMCAwIDAgMyA0LjM0YTEuMjUgMS4yNSAwIDAgMC0uNDggMVYxN2ExLjI1IDEuMjUgMCAwIDAgLjk0IDEuMjFMMTEgMjAuMTZ6Ij48L3BhdGg+PC9nPjwvZz48L3N2Zz4=");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #85c1dc;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    a[href="/channels/907385605422448742/1041728426375127140"] *[class*=icon] {
      color: transparent !important;
    }
    a[href="/channels/907385605422448742/1041728426375127140"] div[class^=iconContainer]:before {
      content: " ";
      -webkit-mask: url("data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGhlaWdodD0iNDgiIHdpZHRoPSI0OCIgZm9jdXNhYmxlPSJmYWxzZSIgcm9sZT0iaW1nIiBmaWxsPSJjdXJyZW50Q29sb3IiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9IlN0eWxlZEljb25CYXNlLXNjLWVhOXVsai0wIGhSbkpQQyI+PHRpdGxlPkV5ZU91dGxpbmUgaWNvbjwvdGl0bGU+PGcgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBkYXRhLW5hbWU9ImV5ZSI+PHBhdGggZD0iTTIxLjg3IDExLjVjLS42NC0xLjExLTQuMTYtNi42OC0xMC4xNC02LjUtNS41My4xNC04LjczIDUtOS42IDYuNWExIDEgMCAwIDAgMCAxYy42MyAxLjA5IDQgNi41IDkuODkgNi41aC4yNWM1LjUzLS4xNCA4Ljc0LTUgOS42LTYuNWExIDEgMCAwIDAgMC0xek0xMi4yMiAxN2MtNC4zMS4xLTcuMTItMy41OS04LTUgMS0xLjYxIDMuNjEtNC45IDcuNjEtNSA0LjI5LS4xMSA3LjExIDMuNTkgOCA1LTEuMDMgMS42MS0zLjYxIDQuOS03LjYxIDV6Ij48L3BhdGg+PHBhdGggZD0iTTEyIDguNWEzLjUgMy41IDAgMSAwIDMuNSAzLjVBMy41IDMuNSAwIDAgMCAxMiA4LjV6bTAgNWExLjUgMS41IDAgMSAxIDEuNS0xLjUgMS41IDEuNSAwIDAgMS0xLjUgMS41eiI+PC9wYXRoPjwvZz48L2c+PC9zdmc+");
      position: absolute;
      height: 48px;
      width: 48px;
      color: #ca9ee6;
      background-color: currentColor;
      transform: scale(0.4) translate(-32px, -38px);
    }

    [class*=username-][style*="rgb(244, 219, 214)"] {
      color: #f2d5cf !important;
    }

    [class*=roleCircle-][style*="rgb(244, 219, 214)"] {
      background-color: #f2d5cf !important;
    }

    [class*=typing-] strong[style*="rgb(244, 219, 214)"] {
      color: #f2d5cf !important;
    }

    [class*=username-][style*="rgb(242, 205, 205)"] {
      color: #eebebe !important;
    }

    [class*=roleCircle-][style*="rgb(242, 205, 205)"] {
      background-color: #eebebe !important;
    }

    [class*=typing-] strong[style*="rgb(242, 205, 205)"] {
      color: #eebebe !important;
    }

    [class*=username-][style*="rgb(245, 194, 231)"] {
      color: #f4b8e4 !important;
    }

    [class*=roleCircle-][style*="rgb(245, 194, 231)"] {
      background-color: #f4b8e4 !important;
    }

    [class*=typing-] strong[style*="rgb(245, 194, 231)"] {
      color: #f4b8e4 !important;
    }

    [class*=username-][style*="rgb(221, 182, 242)"] {
      color: #ca9ee6 !important;
    }

    [class*=roleCircle-][style*="rgb(221, 182, 242)"] {
      background-color: #ca9ee6 !important;
    }

    [class*=typing-] strong[style*="rgb(221, 182, 242)"] {
      color: #ca9ee6 !important;
    }

    [class*=username-][style*="rgb(242, 143, 173)"] {
      color: #e78284 !important;
    }

    [class*=roleCircle-][style*="rgb(242, 143, 173)"] {
      background-color: #e78284 !important;
    }

    [class*=typing-] strong[style*="rgb(242, 143, 173)"] {
      color: #e78284 !important;
    }

    [class*=username-][style*="rgb(228, 156, 179)"] {
      color: #ea999c !important;
    }

    [class*=roleCircle-][style*="rgb(228, 156, 179)"] {
      background-color: #ea999c !important;
    }

    [class*=typing-] strong[style*="rgb(228, 156, 179)"] {
      color: #ea999c !important;
    }

    [class*=username-][style*="rgb(248, 189, 150)"] {
      color: #ef9f76 !important;
    }

    [class*=roleCircle-][style*="rgb(248, 189, 150)"] {
      background-color: #ef9f76 !important;
    }

    [class*=typing-] strong[style*="rgb(248, 189, 150)"] {
      color: #ef9f76 !important;
    }

    [class*=username-][style*="rgb(250, 227, 176)"] {
      color: #e5c890 !important;
    }

    [class*=roleCircle-][style*="rgb(250, 227, 176)"] {
      background-color: #e5c890 !important;
    }

    [class*=typing-] strong[style*="rgb(250, 227, 176)"] {
      color: #e5c890 !important;
    }

    [class*=username-][style*="rgb(171, 233, 179)"] {
      color: #a6d189 !important;
    }

    [class*=roleCircle-][style*="rgb(171, 233, 179)"] {
      background-color: #a6d189 !important;
    }

    [class*=typing-] strong[style*="rgb(171, 233, 179)"] {
      color: #a6d189 !important;
    }

    [class*=username-][style*="rgb(181, 232, 224)"] {
      color: #81c8be !important;
    }

    [class*=roleCircle-][style*="rgb(181, 232, 224)"] {
      background-color: #81c8be !important;
    }

    [class*=typing-] strong[style*="rgb(181, 232, 224)"] {
      color: #81c8be !important;
    }

    [class*=username-][style*="rgb(137, 220, 235)"] {
      color: #99d1db !important;
    }

    [class*=roleCircle-][style*="rgb(137, 220, 235)"] {
      background-color: #99d1db !important;
    }

    [class*=typing-] strong[style*="rgb(137, 220, 235)"] {
      color: #99d1db !important;
    }

    [class*=username-][style*="rgb(125, 196, 228)"] {
      color: #85c1dc !important;
    }

    [class*=roleCircle-][style*="rgb(125, 196, 228)"] {
      background-color: #85c1dc !important;
    }

    [class*=typing-] strong[style*="rgb(125, 196, 228)"] {
      color: #85c1dc !important;
    }

    [class*=username-][style*="rgb(150, 205, 251)"] {
      color: #DCD7BA !important;
    }

    [class*=roleCircle-][style*="rgb(150, 205, 251)"] {
      background-color: #DCD7BA !important;
    }

    [class*=typing-] strong[style*="rgb(150, 205, 251)"] {
      color: #DCD7BA !important;
    }

    [class*=username-][style*="rgb(201, 203, 255)"] {
      color: #babbf1 !important;
    }

    [class*=roleCircle-][style*="rgb(201, 203, 255)"] {
      background-color: #babbf1 !important;
    }

    [class*=typing-] strong[style*="rgb(201, 203, 255)"] {
      color: #babbf1 !important;
    }

    [class*=username-][style*="rgb(252, 176, 129)"] {
      color: #ef9f76 !important;
    }

    [class*=roleCircle-][style*="rgb(252, 176, 129)"] {
      background-color: #ef9f76 !important;
    }

    [class*=typing-] strong[style*="rgb(252, 176, 129)"] {
      color: #ef9f76 !important;
    }

    [class*=username-][style*="rgb(191, 183, 218)"] {
      color: #d1aae9 !important;
    }

    [class*=roleCircle-][style*="rgb(191, 183, 218)"] {
      background-color: #d1aae9 !important;
    }

    [class*=typing-] strong[style*="rgb(191, 183, 218)"] {
      color: #d1aae9 !important;
    }

    [class*=username-][style*="rgb(253, 245, 146)"] {
      color: #e5c890 !important;
    }

    [class*=roleCircle-][style*="rgb(253, 245, 146)"] {
      background-color: #e5c890 !important;
    }

    [class*=typing-] strong[style*="rgb(253, 245, 146)"] {
      color: #e5c890 !important;
    }

    [class*=username-][style*="rgb(237, 135, 150)"] {
      color: #e78284 !important;
    }

    [class*=roleCircle-][style*="rgb(237, 135, 150)"] {
      background-color: #e78284 !important;
    }

    [class*=typing-] strong[style*="rgb(237, 135, 150)"] {
      color: #e78284 !important;
    }

    [class*=username-][style*="rgb(138, 173, 244)"] {
      color: #DCD7BA !important;
    }

    [class*=roleCircle-][style*="rgb(138, 173, 244)"] {
      background-color: #DCD7BA !important;
    }

    [class*=typing-] strong[style*="rgb(138, 173, 244)"] {
      color: #DCD7BA !important;
    }

    [class*=username-][style*="rgb(183, 189, 248)"] {
      color: #babbf1 !important;
    }

    [class*=roleCircle-][style*="rgb(183, 189, 248)"] {
      background-color: #babbf1 !important;
    }

    [class*=typing-] strong[style*="rgb(183, 189, 248)"] {
      color: #babbf1 !important;
    }

    [class*=username-][style*="rgb(135, 162, 233)"] {
      color: #DCD7BA !important;
    }

    [class*=roleCircle-][style*="rgb(135, 162, 233)"] {
      background-color: #DCD7BA !important;
    }

    [class*=typing-] strong[style*="rgb(135, 162, 233)"] {
      color: #DCD7BA !important;
    }

    [class*=username-][style*="rgb(249, 226, 175)"] {
      color: #e5c890 !important;
    }

    [class*=roleCircle-][style*="rgb(249, 226, 175)"] {
      background-color: #e5c890 !important;
    }

    [class*=typing-] strong[style*="rgb(249, 226, 175)"] {
      color: #e5c890 !important;
    }

    [class*=username-][style*="rgb(220, 138, 120)"] {
      color: #ea999c !important;
    }

    [class*=roleCircle-][style*="rgb(220, 138, 120)"] {
      background-color: #ea999c !important;
    }

    [class*=typing-] strong[style*="rgb(220, 138, 120)"] {
      color: #ea999c !important;
    }

    [class*=username-][style*="rgb(148, 226, 213)"] {
      color: #81c8be !important;
    }

    [class*=roleCircle-][style*="rgb(148, 226, 213)"] {
      background-color: #81c8be !important;
    }

    [class*=typing-] strong[style*="rgb(148, 226, 213)"] {
      color: #81c8be !important;
    }

    [class*=username-][style*="rgb(198, 160, 246)"] {
      color: #ca9ee6 !important;
    }

    [class*=roleCircle-][style*="rgb(198, 160, 246)"] {
      background-color: #ca9ee6 !important;
    }

    [class*=typing-] strong[style*="rgb(198, 160, 246)"] {
      color: #ca9ee6 !important;
    }

    [class*=username-][style*="rgb(245, 223, 218)"] {
      color: #f2d5cf !important;
    }

    [class*=roleCircle-][style*="rgb(245, 223, 218)"] {
      background-color: #f2d5cf !important;
    }

    [class*=typing-] strong[style*="rgb(245, 223, 218)"] {
      color: #f2d5cf !important;
    }

    [class*=username-][style*="rgb(169, 228, 163)"] {
      color: #a6d189 !important;
    }

    [class*=roleCircle-][style*="rgb(169, 228, 163)"] {
      background-color: #a6d189 !important;
    }

    [class*=typing-] strong[style*="rgb(169, 228, 163)"] {
      color: #a6d189 !important;
    }

    [class*=username-][style*="rgb(140, 179, 250)"] {
      color: #DCD7BA !important;
    }

    [class*=roleCircle-][style*="rgb(140, 179, 250)"] {
      background-color: #DCD7BA !important;
    }

    [class*=typing-] strong[style*="rgb(140, 179, 250)"] {
      color: #DCD7BA !important;
    }

    [class*=username-][style*="rgb(180, 190, 254)"] {
      color: #babbf1 !important;
    }

    [class*=roleCircle-][style*="rgb(180, 190, 254)"] {
      background-color: #babbf1 !important;
    }

    [class*=typing-] strong[style*="rgb(180, 190, 254)"] {
      color: #babbf1 !important;
    }

    [class*=username-][style*="rgb(114, 135, 253)"] {
      color: #babbf1 !important;
    }

    [class*=roleCircle-][style*="rgb(114, 135, 253)"] {
      background-color: #babbf1 !important;
    }

    [class*=typing-] strong[style*="rgb(114, 135, 253)"] {
      color: #babbf1 !important;
    }

    [class*=username-][style*="rgb(202, 158, 230)"] {
      color: #ca9ee6 !important;
    }

    [class*=roleCircle-][style*="rgb(202, 158, 230)"] {
      background-color: #ca9ee6 !important;
    }

    [class*=typing-] strong[style*="rgb(202, 158, 230)"] {
      color: #ca9ee6 !important;
    }

    [class*=username-][style*="rgb(250, 179, 135)"] {
      color: #ef9f76 !important;
    }

    [class*=roleCircle-][style*="rgb(250, 179, 135)"] {
      background-color: #ef9f76 !important;
    }

    [class*=typing-] strong[style*="rgb(250, 179, 135)"] {
      color: #ef9f76 !important;
    }

    [class*=username-][style*="rgb(136, 223, 210)"] {
      color: #81c8be !important;
    }

    [class*=roleCircle-][style*="rgb(136, 223, 210)"] {
      background-color: #81c8be !important;
    }

    [class*=typing-] strong[style*="rgb(136, 223, 210)"] {
      color: #81c8be !important;
    }

    li[id*=chat-messages-921217923790561360-] article[style="border-color: hsla(120, calc(var(--saturation-factor, 1) * 100%), 29.8%, 1);"] {
      border-color: #a6d189 !important;
    }
    li[id*=chat-messages-921217923790561360-] article[style="border-color: hsla(20, calc(var(--saturation-factor, 1) * 83.5%), 52.4%, 1);"],
    li[id*=chat-messages-921217923790561360-] article[style="border-color: hsla(20, calc(var(--saturation-factor, 1) * 72.8%), 63.9%, 1);"] {
      border-color: #e5c890 !important;
    }

    .theme-dark code.hljs {
      color: #DCD7BA;
      background: #1F1F28;
    }
    .theme-dark code .hljs-keyword {
      color: #ca9ee6;
    }
    .theme-dark code .hljs-built_in {
      color: #e78284;
    }
    .theme-dark code .hljs-type {
      color: #e5c890;
    }
    .theme-dark code .hljs-literal {
      color: #ef9f76;
    }
    .theme-dark code .hljs-number {
      color: #ef9f76;
    }
    .theme-dark code .hljs-operator {
      color: #81c8be;
    }
    .theme-dark code .hljs-punctuation {
      color: #b5bfe2;
    }
    .theme-dark code .hljs-property {
      color: #81c8be;
    }
    .theme-dark code .hljs-regexp {
      color: #f4b8e4;
    }
    .theme-dark code .hljs-string {
      color: #a6d189;
    }
    .theme-dark code .hljs-char.escape_ {
      color: #a6d189;
    }
    .theme-dark code .hljs-subst {
      color: #a5adce;
    }
    .theme-dark code .hljs-symbol {
      color: #eebebe;
    }
    .theme-dark code .hljs-variable {
      color: #ca9ee6;
    }
    .theme-dark code .hljs-variable.language_ {
      color: #ca9ee6;
    }
    .theme-dark code .hljs-variable.constant_ {
      color: #ef9f76;
    }
    .theme-dark code .hljs-title {
      color: #DCD7BA;
    }
    .theme-dark code .hljs-title.class_ {
      color: #e5c890;
    }
    .theme-dark code .hljs-title.function_ {
      color: #DCD7BA;
    }
    .theme-dark code .hljs-params {
      color: #DCD7BA;
    }
    .theme-dark code .hljs-comment {
      color: #626880;
    }
    .theme-dark code .hljs-doctag {
      color: #e78284;
    }
    .theme-dark code .hljs-meta {
      color: #ef9f76;
    }
    .theme-dark code .hljs-section {
      color: #DCD7BA;
    }
    .theme-dark code .hljs-tag {
      color: #a5adce;
    }
    .theme-dark code .hljs-name {
      color: #ca9ee6;
    }
    .theme-dark code .hljs-attr {
      color: #DCD7BA;
    }
    .theme-dark code .hljs-attribute {
      color: #a6d189;
    }
    .theme-dark code .hljs-bullet {
      color: #81c8be;
    }
    .theme-dark code .hljs-code {
      color: #a6d189;
    }
    .theme-dark code .hljs-emphasis {
      color: #e78284;
      font-style: italic;
    }
    .theme-dark code .hljs-strong {
      color: #e78284;
      font-weight: bold;
    }
    .theme-dark code .hljs-formula {
      color: #81c8be;
    }
    .theme-dark code .hljs-link {
      color: #85c1dc;
      font-style: italic;
    }
    .theme-dark code .hljs-quote {
      color: #a6d189;
      font-style: italic;
    }
    .theme-dark code .hljs-selector-tag {
      color: #e5c890;
    }
    .theme-dark code .hljs-selector-id {
      color: #DCD7BA;
    }
    .theme-dark code .hljs-selector-class {
      color: #81c8be;
    }
    .theme-dark code .hljs-selector-attr {
      color: #ca9ee6;
    }
    .theme-dark code .hljs-selector-pseudo {
      color: #81c8be;
    }
    .theme-dark code .hljs-template-tag {
      color: #eebebe;
    }
    .theme-dark code .hljs-template-variable {
      color: #eebebe;
    }
    .theme-dark code .hljs-diff-addition {
      color: #a6d189;
      background: rgba(var(--ctp-green), 15%);
    }
    .theme-dark code .hljs-diff-deletion {
      color: #e78284;
      background: rgba(var(--ctp-red), 15%);
    }
    /* hold back tears = old hold back tears */
    [src^="/assets/571a9318fd6af1875977d03256f23214.svg"] {
      content: url("https://vendicated.github.io/random-files/face_holding_back_tears.svg");
    }
    [style*="background-position: -200px 0px;"][style*='background-image: url("/assets/d218674f309bcbfbf56faf6074df6347.png");'] {
      background-image: url("https://vendicated.github.io/random-files/face_holding_back_tears.svg") !important;
      background-size: contain !important;
      background-position: center !important;
      background-repeat: no-repeat;
    }

    /* pleading = old pleading */
    [src^="/assets/e63c47fd56c7ed1e4552974baaef4b4e.svg"] {
      content: url("https://vendicated.github.io/random-files/pleading_face.svg");
    }
    [style*="background-position: -200px -40px;"][style*='background-image: url("/assets/d218674f309bcbfbf56faf6074df6347.png");'] {
      background-image: url("https://vendicated.github.io/random-files/pleading_face.svg") !important;
      background-size: contain !important;
      background-position: center !important;
      background-repeat: no-repeat;
    }

    /* watergun = glock */
    [src^="/assets/fd0dd759c1ed1e0a044fa6882e95fd02.svg"] {
      content: url("https://cdn.discordapp.com/emojis/808512495794520114.webp?size=1024&quality=lossless");
    }
    [style*="background-position: -280px -800px;"][style*='background-image: url("/assets/d218674f309bcbfbf56faf6074df6347.png");'] {
      background-image: url("https://cdn.discordapp.com/emojis/808512495794520114.webp?size=1024&quality=lossless") !important;
      background-size: contain !important;
      background-position: center !important;
      background-repeat: no-repeat;
    }

    /* skull = sans */
    [src^="/assets/f64f47a895e537305b3463f9d30bc177.svg"] {
      content: url("https://cdn.discordapp.com/emojis/1136399266718429204.webp?size=96&quality=lossless");
    }
    [style*='background-position: -1000px -80px;'][style*='background-image: url("/assets/d218674f309bcbfbf56faf6074df6347.png");'] {
      background-image: url("https://cdn.discordapp.com/emojis/1136399266718429204.webp?size=96&quality=lossless") !important;
      background-size: contain !important;
      background-position: center !important;
      background-repeat: no-repeat;
    }

    /* Here is the font change */
    /*@font-face {
        font-family: "TerminessTTF";
        src: url("https://raw.githubusercontent.com/ardishco-the-great/catpuccin-with-emojis/main/Terminess%20(TTF)%20Nerd%20Font%20Complete.ttf");
    }
    @font-face {
        font-family: "TerminessTTF Mono";
        src: url("https://raw.githubusercontent.com/ardishco-the-great/catpuccin-with-emojis/main/Terminess%20(TTF)%20Nerd%20Font%20Complete%20Mono.ttf");
    }*/

    @font-face {
      font-family: "Victor Mono";
      font-style: normal;
      font-weight: 400;
      src: url(https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/VictorMono/Medium/complete/Victor%20Mono%20Medium%20Nerd%20Font%20Complete%20Mono.ttf);
      font-variant-ligatures: none;
    }

    :root {
      --font-primary: "Victor Mono";
      --font-headline: "Victor Mono";
      --font-code: "Victor Mono";
      --font-display: "Victor Mono";
    }

    /*Remove Invite Button next to channel name*/
    .actionIcon-2sw4Sl {
        display: none;
    }

    /*Resizable Channel/DM List But It Looks Bad Sometimes*/
    :root {
    --sidebar-initial-width: 240px;
    } 
    .sidebar-1tnWFu {
    resize: horizontal; 
    width: var(--sidebar-initial-width);
    }
    .sidebar-1tnWFu .channel-2QD9_O {
    max-width: unset;
    }
    .bannerImage-3KhIJ6 {
    width: 100%;
    }
  '';
}
