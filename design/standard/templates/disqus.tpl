<div id="disqus_thread"></div>

{if ezini_hasvariable( $disqusini, 'shortname', 'yuzudisqus.ini.append.php' )}
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = '{ezini( $disqusini, 'shortname', 'yuzudisqus.ini.append.php' )}'; // required: replace example with your forum shortname
	var disqus_identifier = {$node_id};
	{if ezini_hasvariable( $disqusini, 'developer', 'yuzudisqus.ini.append.php' )}
		{if eq(ezini( $disqusini, 'developer', 'yuzudisqus.ini.append.php' ),1)}
		var disqus_developer = 1;
		{/if}
	{/if}


    /* * * DON'T EDIT BELOW THIS LINE * * */
    {literal}
	(function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
    {/literal}
</script>
{else}
{'Please control your yuzudisqus.ini.append.php file or the disqusini parameter passed'|i18n('yuzudisqus')}
{/if}

<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>