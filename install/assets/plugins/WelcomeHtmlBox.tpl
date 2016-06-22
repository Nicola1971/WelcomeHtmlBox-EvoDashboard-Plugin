//<?php
/**
 * WelcomeHtmlBox
 *
 * Dashboard html box widget plugin for EvoDashboard
 *
 * @author    Nicola Lambathakis http://www.tattoocms.it/
 * @category    plugin
 * @version    3.0 RC
 * @license	 http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal    @events OnManagerWelcomeHome,OnManagerMainFrameHeaderHTMLBlock
 * @internal    @installset base
 * @internal    @modx_category Dashboard
 * @internal    @properties  OnManagerWelcomeHome,OnManagerWelcomeRender,OnManagerMainFrameHeaderHTMLBlock
 * @internal    @properties  &WidgetTitle=Widget Title:;string;Html Widget &AwesomeFontsIcon=Widget Title icon:;string;fa-star &WidgetChunk=Html Chunk:;string;WelcomeHtmlBoxChunk &LoadStyles=Load typography styles:;list;yes,no;no &StylesUrl=css file path:;string;../assets/plugins/welcomehtmlbox/welcomehtmlbox.css &datarow=widget row position:;list;1,2,3,4,5,6,7,8,9,10;1 &datacol=widget col position:;list;1,2,3,4;1 &datasizex=widget x size:;list;1,2,3,4;4 &datasizey=widget y size:;list;1,2,3,4,5,6,7,8,9,10;2
 */

/**
 * WelcomeHtmlBox RC 3.0
 * author Nicola Lambathakis http://www.tattoocms.it/
 *
 * Dashboard html box widget plugin for EvoDashboard
 * Event: &WidgetTitle=Widget Title:;string;Html Widget &AwesomeFontsIcon=Widget Title icon:;string;fa-star &WidgetChunk=Html Chunk:;string;WelcomeHtmlBoxChunk &LoadStyles=Load typography styles:;list;yes,no;no &StylesUrl=css file path:;string;../assets/plugins/welcomehtmlbox/welcomehtmlbox.css &datarow=widget row position:;list;1,2,3,4,5,6,7,8,9,10;1 &datacol=widget col position:;list;1,2,3,4;1 &datasizex=widget x size:;list;1,2,3,4;4 &datasizey=widget y size:;list;1,2,3,4,5,6,7,8,9,10;2
****
*/
// Run the main code
include($modx->config['base_path'].'assets/plugins/welcomehtmlbox/htmlbox.php');