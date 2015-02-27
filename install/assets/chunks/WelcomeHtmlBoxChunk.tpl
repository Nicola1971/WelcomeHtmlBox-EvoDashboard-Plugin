/**
 * WelcomeHtmlBoxChunk
 *
 * WelcomeHtmlBox chunk example
 *
 * @author    Nicola Lambathakis http://www.tattoocms.it/
 * @category	chunk
 * @version    2.1 RC
 * @internal @modx_category Dashboard
 */
<div class="padding-10">
<h2>Hello Hello Hello Hello! this is my html box widget</h2>
	<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat <a href="#">volutpat</a>. </p>
	<p class="bg-info padding-5">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. </p>

<h4>A List</h4>
<ul>
	<li> item list </li>
	<li> <a href="#">item list</a> </li>
	<li> item list </li>

</ul>


<h3>Tables</h3>
<table class="table table-striped">
<tr>
<th>Tag</th>
<th>Description</th>
</tr>

<tr>
<td>[[snippet]]</td>
<td>for caching snippets. Inserts the output of a snippet named 'snippet' into your page</td>
</tr>

<tr>
<td>[!snippet!]</td>
<td>for non-caching snippets. Inserts the output of a snippet named 'snippet' into your page.</td>
</tr>

<tr>
<td>[(setting)]</td>
<td>Inserts the value of a site-wide setting named 'setting' into your page.</td>
</tr>

<tr>
<td>[*resourceField/TV*]</td>
<td>Inserts various blocks of content specific to the page being displayed.</td>
</tr>

<tr>
<td>[^timing^]</td>
<td>Shows how long it took to create the current page.</td>
</tr>

<tr>
<td>[~link~]</td>
<td>Makes a link to another document in your MODx site.</td>
</tr>

<tr>
<td>
{{chunk}}</td>
<td>Inserts a chunk of HTML into your page.</td>
</tr>

</table>
</div>