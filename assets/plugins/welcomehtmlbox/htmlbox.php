<?php
/**
 * WelcomeHtmlBox RC 2.3
 * author Nicola Lambathakis http://www.tattoocms.it/
 *
 * Dashboard html box widget plugin for EvoDashboard
 * Event: OnManagerWelcomeHome,OnManagerMainFrameHeaderHTMLBlock
&WidgetTitle= Widget Title:;string;Html Widget &AwesomeFontsIcon= Widget Title icon:;string;fa-star &WidgetChunk= Html Chunk:;string;WelcomeHtmlBoxChunk &LoadStyles= Load typography styles:;list;yes,no;no &StylesUrl= css file path:;string;../assets/plugins/welcomehtmlbox/welcomehtmlbox.css &datarow= widget row position:;list;1,2,3,4,5,6,7,8,9,10;1 &datacol= widget col position:;list;1,2,3,4;1 &datasizex= widget x size:;list;1,2,3,4;4 &datasizey= widget y size:;list;1,2,3,4,5,6,7,8,9,10;2
****
*/
//widget name
$WidgetID = isset($WidgetID) ? $WidgetID : 'HtmlBox';
// size and position
$datarow = isset($datarow) ? $datarow : '1';
$datacol = isset($datacol) ? $datacol : '2';
$datasizex = isset($datasizex) ? $datasizex : '2';
$datasizey = isset($datasizey) ? $datasizey : '2';
//output
$WidgetOutput = isset($WidgetOutput) ? $WidgetOutput : '';
//events
$EvoEvent = isset($EvoEvent) ? $EvoEvent : 'OnManagerWelcomeHome';
//styles
$StylesUrl = isset($StylesUrl) ? $StylesUrl : '../assets/plugins/welcomehtmlbox/welcomehtmlbox.css';
// box icon
$AwesomeFontsIcon = isset($AwesomeFontsIcon) ? $AwesomeFontsIcon : 'fa-list-alt';

$output = "";
$e = &$modx->Event;



/*load styles with OnManagerMainFrameHeaderHTMLBlock*/

	if ($LoadStyles == yes) {
if($e->name == 'OnManagerMainFrameHeaderHTMLBlock') {
$cssOutput = '<link type="text/css" rel="stylesheet" href="'.$StylesUrl.'">';
}
}
/*Widget Box */
if($e->name == ''.$EvoEvent.'') {
$WidgetOutput = '
<li id="'.$WidgetID.'" data-row="'.$datarow.'" data-col="'.$datacol.'" data-sizex="'.$datasizex.'" data-sizey="'.$datasizey.'">
                    <div class="panel panel-default widget-wrapper">
                      <div class="panel-headingx widget-title sectionHeader clearfix">
                          <span class="pull-left"><i class="fa '.$AwesomeFontsIcon.'"></i> '.$WidgetTitle.'</span>
                            <div class="widget-controls pull-right">
                                <div class="btn-group">
                                    <a href="#" class="btn btn-default btn-xs panel-hide hide-full glyphicon glyphicon-minus" data-id="'.$WidgetID.'"></a>
                                </div>     
                            </div>

                      </div>
                      <div class="panel-body widget-stage sectionBody">
                       '.$modx->getChunk(''.$WidgetChunk.'').' 
                      </div>
                    </div>           
                </li>';
}
//end chunk
$output .= $cssOutput.$WidgetOutput;
$e->output($output);
return;
?>