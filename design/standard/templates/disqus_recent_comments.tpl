{if ezini_hasvariable( $disqusini, 'shortname', 'yuzudisqus.ini.append.php' )}
	{if ezini_hasvariable( $disqusini, 'items', 'yuzudisqus.ini.append.php' )}
		{def $items=ezini( $disqusini, 'items', 'yuzudisqus.ini.append.php' )}
	{else}
		{def $items=5}
	{/if}
	{if ezini_hasvariable( $disqusini, 'hide_avatars', 'yuzudisqus.ini.append.php' )}
		{switch match=ezini( $disqusini, 'hide_avatars', 'yuzudisqus.ini.append.php' )}
			{case match='enabled'}
			{def $avatars=1}
			{/case}
			{case match='disabled'}
			{def $avatars=0}
			{/case}
		{/switch}
	{else}
		{def $avatars=0}
	{/if}
	{if ezini_hasvariable( $disqusini, 'avatar_size', 'yuzudisqus.ini.append.php' )}
		{switch match=ezini( $disqusini, 'avatar_size', 'yuzudisqus.ini.append.php' )}
			{case match='small'}
			{def $avatar_size=24}
			{/case}
			{case match='medium'}
			{def $avatar_size=32}
			{/case}
			{case match='large'}
			{def $avatar_size=48}
			{/case}
			{case match='xlarge'}
			{def $avatar_size=92}
			{/case}
			{case match='ginormous'}
			{def $avatar_size=128}
			{/case}
		{/switch}
	{else}
		{def $avatar_size=32}
	{/if}
	{if ezini_hasvariable( $disqusini, 'length', 'yuzudisqus.ini.append.php' )}
		{def $length=ezini( $disqusini, 'length', 'yuzudisqus.ini.append.php' )}
	{else}
		{def $length=200}
	{/if}
<div id="recentcomments" class="dsq-widget">
	<h2 class="dsq-widget-title">{'Recent Comments'|i18n('yuzudisqus')}</h2>
	<script type="text/javascript" src="http://{ezini( $disqusini, 'shortname', 'yuzudisqus.ini.append.php' )}.disqus.com/recent_comments_widget.js?num_items={$items}&hide_avatars={$avatars}&avatar_size={$avatar_size}&excerpt_length={$length}"></script>
</div>
<a href="http://disqus.com/">Powered by Disqus</a>
{else}
	{'Please control your yuzudisqus.ini.append.php file or the disqusini parameter passed'|i18n('yuzudisqus')}
{/if}