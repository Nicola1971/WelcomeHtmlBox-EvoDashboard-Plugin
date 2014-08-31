//<?php
/**
 * WelcomeHtmlBox
 *
 * Dashboard html box widget plugin for OnManagerWelcomeCustom
 *
 * @author    Nicola Lambathakis http://www.tattoocms.it/
 * @category    plugin
 * @version    1.0 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerWelcomeHome,OnManagerWelcomeRender
 * @internal    @installset base
 * @internal    @modx_category Welcome
 * @internal    @properties  &HtmlBoxEvoEvent= Html Box placement:;list;OnManagerWelcomeHome,OnManagerWelcomeRender;OnManagerWelcomeRender &HtmlBoxSize= Html Box size:;list;dashboard-block-full,dashboard-block-half;dashboard-block-half &HtmlBoxTitle= Box Title:;string;Html Box Widget &AwesomeFontsIcon= Box Title icon:;string;fa-star &HtmlBoxChunk= Html Chunk:;string;WelcomeHtmlBoxChunk
 */

/**
 * WelcomeHtmlBox RC 1.0
 * author Nicola Lambathakis http://www.tattoocms.it/
 *
 * Dashboard html box widget plugin for OnManagerWelcomeCustom
 * Event: OnManagerWelcomeHome,OnManagerWelcomeRender
 * config : &HtmlBoxEvoEvent= Html Box placement:;list;OnManagerWelcomeHome,OnManagerWelcomeRender;OnManagerWelcomeRender &HtmlBoxSize= Html Box size:;list;dashboard-block-full,dashboard-block-half;dashboard-block-half &HtmlBoxTitle= Box Title:;string;Html Box Widget &AwesomeFontsIcon= Box Title icon:;string;fa-star &HtmlBoxChunk= Html Chunk:;string;WelcomeHtmlBoxChunk
****
*/
//chunk
$HtmlBoxChunk = isset($HtmlBoxChunk) ? $HtmlBoxChunk : 'WelcomeHtmlBoxChunk';
//events
$HtmlBoxEvoEvent = isset($HtmlBoxEvoEvent) ? $HtmlBoxEvoEvent : 'OnManagerWelcomeRender';
// box size
$AwesomeFontsIcon = isset($AwesomeFontsIcon) ? $AwesomeFontsIcon : 'fa-list-alt';
$HtmlBoxSize = isset($HtmlBoxSize) ? $HtmlBoxSize : 'dashboard-block-full';
$output = "";
$e = &$modx->Event;

/*chunk box*/
if($e->name == ''.$HtmlBoxEvoEvent.'') {
$HtmlOutput = '<div class="'.$HtmlBoxSize.'"> <div class="sectionHeader"><i class="fa '.$AwesomeFontsIcon.'"></i> '.$HtmlBoxTitle.'<a href="javascript:void(null);" onclick="doHideShow(\'idShowHideSocialBox\');"><i class="fa fa-bars expandbuttn"></i></a></div>
<div id="idShowHideSocialBox" class="sectionBody">'.$modx->getChunk(''.$HtmlBoxChunk.'').' <br style="clear:both;height:1px;margin-top: -1px;line-height:1px;font-size:1px;" /> </div></div>';
}
//end chunk
$output = $HtmlOutput;
$e->output($output);
return;