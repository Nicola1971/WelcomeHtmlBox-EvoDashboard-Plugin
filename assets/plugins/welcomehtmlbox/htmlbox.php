<?php
//chunk
$HtmlBoxChunk = isset($HtmlBoxChunk) ? $HtmlBoxChunk : 'WelcomeHtmlBoxChunk';
//events
$HtmlBoxEvoEvent = isset($HtmlBoxEvoEvent) ? $HtmlBoxEvoEvent : 'OnManagerWelcomeRender';
//styles
$StylesUrl = isset($StylesUrl) ? $StylesUrl : '../assets/plugins/welcomehtmlbox/welcomehtmlbox.css';
// box size
$AwesomeFontsIcon = isset($AwesomeFontsIcon) ? $AwesomeFontsIcon : 'fa-list-alt';
$HtmlBoxSize = isset($HtmlBoxSize) ? $HtmlBoxSize : 'dashboard-block-full';
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
$HtmlOutput = '<div class="'.$HtmlBoxSize.' HtmlBoxWidget"> <div class="sectionHeader"><i class="fa '.$AwesomeFontsIcon.'"></i> '.$HtmlBoxTitle.'<a href="javascript:void(null);" onclick="doHideShow(\'idShowHideSocialBox\');"><i class="fa fa-bars expandbuttn"></i></a></div>
<div id="idShowHideSocialBox" class="sectionBody">'.$modx->getChunk(''.$HtmlBoxChunk.'').' <br style="clear:both;height:1px;margin-top: -1px;line-height:1px;font-size:1px;" /> </div></div>';
}
//end chunk
$output .= $cssOutput.$HtmlOutput;
$e->output($output);
return;
?>