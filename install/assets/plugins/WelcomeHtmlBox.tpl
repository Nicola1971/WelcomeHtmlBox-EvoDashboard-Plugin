//<?php
/**
 * WelcomeHtmlBox
 *
 * Dashboard html box widget plugin for OnManagerWelcomeCustom
 *
 * @author    Nicola Lambathakis http://www.tattoocms.it/
 * @category    plugin
 * @version    2.1 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerWelcomeHome,OnManagerWelcomeRender,OnManagerMainFrameHeaderHTMLBlock
 * @internal    @installset base
 * @internal    @modx_category Welcome
 * @internal    @properties  OnManagerWelcomeHome,OnManagerWelcomeRender,OnManagerMainFrameHeaderHTMLBlock
 * @internal    @properties  &HtmlBoxEvoEvent= Html Box placement:;list;OnManagerWelcomeHome,OnManagerWelcomeRender;OnManagerWelcomeRender &HtmlBoxSize= Html Box size:;list;dashboard-block-full,dashboard-block-half;dashboard-block-half &HtmlBoxTitle= Box Title:;string;Html Box Widget &AwesomeFontsIcon= Box Title icon:;string;fa-star &HtmlBoxChunk= Html Chunk:;string;WelcomeHtmlBoxChunk &LoadStyles= Load typography styles:;list;yes,no;yes &StylesUrl= css file path:;string;../assets/plugins/welcomehtmlbox/welcomehtmlbox.css
 */

/**
 * WelcomeHtmlBox RC 2.1
 * author Nicola Lambathakis http://www.tattoocms.it/
 *
 * Dashboard html box widget plugin for OnManagerWelcomeCustom
 * Event: OnManagerWelcomeHome,OnManagerWelcomeRender,OnManagerMainFrameHeaderHTMLBlock
&HtmlBoxEvoEvent= Html Box placement:;list;OnManagerWelcomeHome,OnManagerWelcomeRender;OnManagerWelcomeRender &HtmlBoxSize= Html Box size:;list;dashboard-block-full,dashboard-block-half;dashboard-block-half &HtmlBoxTitle= Box Title:;string;Html Box Widget &AwesomeFontsIcon= Box Title icon:;string;fa-star &HtmlBoxChunk= Html Chunk:;string;WelcomeHtmlBoxChunk &LoadStyles= Load typography styles:;list;yes,no;yes &StylesUrl= css file path:;string;../assets/plugins/welcomehtmlbox/welcomehtmlbox.css
****
*/
// Run the main code
include($modx->config['base_path'].'assets/plugins/welcomehtmlbox/htmlbox.php');