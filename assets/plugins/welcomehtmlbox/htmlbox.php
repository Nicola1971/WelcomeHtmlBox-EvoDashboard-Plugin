<?php
/**
 * WelcomeHtmlBox RC 2.3
 * author Nicola Lambathakis http://www.tattoocms.it/
 *
 * Dashboard html box widget plugin for EvoDashboard
 * Event: OnManagerWelcomePrerender,OnManagerWelcomeHome,OnManagerWelcomeRender,OnManagerMainFrameHeaderHTMLBlock
&HtmlBoxEvoEvent= Html Box placement:;list;OnManagerWelcomePrerender,OnManagerWelcomeHome,OnManagerWelcomeRender;OnManagerWelcomeRender &HtmlBoxSize= Html Box size:;list;dashboard-block-full,dashboard-block-half;dashboard-block-half &HtmlBoxTitle= Box Title:;string;Html Box Widget &AwesomeFontsIcon= Box Title icon:;string;fa-star &HtmlBoxChunk= Html Chunk:;string;WelcomeHtmlBoxChunk &LoadStyles= Load typography styles:;list;yes,no;yes &StylesUrl= css file path:;string;../assets/plugins/welcomehtmlbox/welcomehtmlbox.css
****
*/
//chunk
$HtmlBoxChunk = isset($HtmlBoxChunk) ? $HtmlBoxChunk : 'WelcomeHtmlBoxChunk';
//events
$HtmlBoxEvoEvent = isset($HtmlBoxEvoEvent) ? $HtmlBoxEvoEvent : 'OnManagerWelcomeRender';
//styles
$StylesUrl = isset($StylesUrl) ? $StylesUrl : '../assets/plugins/welcomehtmlbox/welcomehtmlbox.css';
// box size
$AwesomeFontsIcon = isset($AwesomeFontsIcon) ? $AwesomeFontsIcon : 'fa-list-alt';
$HtmlBoxSize = isset($HtmlBoxSize) ? $HtmlBoxSize : 'dashboard-block-full';
//widget grid size
if ($HtmlBoxSize == 'dashboard-block-full') {
$HtmlBoxWidth = 'col-sm-12';
} else {
$HtmlBoxWidth = 'col-sm-6';
}
$output = "";
$e = &$modx->Event;



/*load styles with OnManagerMainFrameHeaderHTMLBlock*/

	if ($LoadStyles == yes) {
if($e->name == 'OnManagerMainFrameHeaderHTMLBlock') {
$cssOutput = '<link type="text/css" rel="stylesheet" href="'.$StylesUrl.'">';
}
}
/*chunk box*/
if($e->name == ''.$HtmlBoxEvoEvent.'') {
$HtmlOutput = '<div class="'.$HtmlBoxWidth.'"><div class="widget-wrapper"> <div class="widget-title sectionHeader"><i class="fa '.$AwesomeFontsIcon.'"></i> '.$HtmlBoxTitle.'</div>
<div id="idShowHideSocialBox" class="sectionBody">'.$modx->getChunk(''.$HtmlBoxChunk.'').' <br style="clear:both;height:1px;margin-top: -1px;line-height:1px;font-size:1px;" /> </div></div></div>';
}
//end chunk
$output .= $cssOutput.$HtmlOutput;
$e->output($output);
return;
?>