<?xml version="1.0" encoding="UTF-8" ?>
<Package name="template" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="start_template" xar="behavior.xar" />
        <BehaviorDescription name="behavior" src="animations/little_laugh" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="dlg_welcome" src="dlg_welcome/dlg_welcome.dlg" />
    </Dialogs>
    <Resources>
        <File name="index" src="html/index.html" />
        <File name="main" src="html/css/main.css" />
        <File name="jquery.min" src="html/js/jquery.min.js" />
        <File name="main" src="html/js/main.js" />
        <File name="robotutils" src="html/js/robotutils.js" />
        <File name="Enu_Ono_Laugh_Happy_2_pitch_115" src="sounds/Enu_Ono_Laugh_Happy_2_pitch_115.ogg" />
        <File name="jquery.color.plus-names-2.1.2.min" src="html/js/jquery.color.plus-names-2.1.2.min.js" />
        <File name="jquery.easing.1.3" src="html/js/jquery.easing.1.3.js" />
    </Resources>
    <Topics>
        <Topic name="dlg_welcome_enu" src="dlg_welcome/dlg_welcome_enu.top" topicName="dlg_welcome" language="en_US" />
    </Topics>
    <IgnoredPaths />
    <Translations auto-fill="en_US">
        <Translation name="translation_en_US" src="translations/translation_en_US.ts" language="en_US" />
    </Translations>
</Package>
