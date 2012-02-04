{if ezini_hasvariable( $disqusini, 'shortname', 'yuzudisqus.ini.append.php' )}
	<div id="popularthreads" class="dsq-widget">
		<h2 class="dsq-widget-title">{'Popular Threads'|i18n('yuzudisqus')}</h2>
		<script type="text/javascript" src="http://{ezini( $disqusini, 'shortname', 'yuzudisqus.ini.append.php' )}.disqus.com/popular_threads_widget.js?num_items={ezini( $disqusini, 'items', 'yuzudisqus.ini.append.php' )}"></script>
	</div>
	<a href="http://disqus.com/">Powered by Disqus</a>
{else}
	{'Please control your yuzudisqus.ini.append.php file or the disqusini parameter passed'|i18n('yuzudisqus')}
{/if}