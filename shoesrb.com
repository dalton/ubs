<!DOCTYPE html>
<html>
  <head>
    <title>Shoooes!</title>
    <style>@font-face {
  font-family: Droid Sans;
  src: url(/fonts/DroidSans.ttf);
}

@font-face {
  font-family: Droid Sans;
  font-weight: bold;
  src: url(/fonts/DroidSans-Bold.ttf);
}

@font-face {
  font-family: Graublau Web;
  src: url(/fonts/GraublauWeb.otf);
}

@font-face {
  font-family: Graublau Web;
  font-weight: bold;
  src: url(/fonts/GraublauWebBold.otf);
}

body {
  background-color: #ddd;
  color: #333;
  font-family: Droid Sans, sans-serif;
}

h1, h2, h3, h4, h5, h6 {
  /* font-variant: small-caps; */
  font-family: Graublau Web, sans-serif;
}

div.heading h1 {
  text-shadow: #222 10px 10px 2px;
}

div.heading {
  -moz-border-radius: 10px;
  -webkit-border-radius: 10px;
  border-radius: 10px;
  background-color: #444;
  color: #eee;
  border-bottom: 3px solid #933;
  padding: 5px 2px;
  min-height: 128px;
}

div.heading:hover {
  cursor: pointer;
}

.wiki-heading {
  color: #6ce;
}

.punct {
  color: #999;
}

div.heading > h1 {
  font-size: 38pt;
}

div.heading > img {
  float: left;
  padding-right: 25px;
  padding-left: 10px;
}

a, a:visited {
  color: #900;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

input[type='text'] {
  width: 70%;
}

textarea#body {
  width: 70%;
  height: 500px;
}</style>
    <link rel="stylesheet" href="/stylesheets/coderay.css" />
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-19052329-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
  </head>
  <body>
    <div class="heading" onclick="document.location = '/';">
      <img src='/images/shoes-icon.png'/>
      <h1>Shoes</h1>
    </div>
    Shoooes!
    <blockquote>
<p>You have reached the site of Shoes, how may we help you?</p>
</blockquote>
<p>Shoes is a cross-platform toolkit for writing graphical apps easily and artfully using Ruby.<br />
Unlike most other <span class="caps">GUI</span> toolkits, Shoes is <em>designed</em> to be easy and straightforward without losing power. Really, it&#8217;s easy!</p>
<p>Following are a few directions that can lead you on the right path to Shoes Enlightenment. You&#8217;ll be there in no time!</p>
<p>To the <strong>north</strong>, you find <a href="/downloads">downloads</a>, for Windows, Mac OS X, and Linux.<br />
To the <strong>north-west</strong>, there is <a href="http://the-shoebox.org">The Shoebox</a> with tons of little demos and apps for you to look at and try out.<br />
To the <strong>north-east</strong>, you find an intriguing tale &#8216;<a href="http://cloud.github.com/downloads/shoes/shoes/nks.pdf">Nobody Knows Shoes</a>&#8217; by the legendary _why, our creator.</p>
<p>To the <strong>west</strong>, there are <a href="/tutorials">tutorials</a>, so you can learn the basics of Shoes.<br />
To the <strong>east</strong>, a <a href="http://wiki.github.com/shoes/shoes">Wiki</a>, a place where Shoes ideas and documentation are bountiful.</p>
<p>To the <strong>south-east</strong>, the <a href="/manual/Hello.html">holy book of Shoes</a> (a.k.a. the manual) rests upon a jewel-covered stand.<br />
To the <strong>south-west</strong>, you will encounter the Shoes <a href="http://rdoc.info/projects/why/shoes">RDocs</a> (technical documentation).<br />
Finally, to the <strong>south</strong>, you find the <a href="/current-progress">Current Progress</a>.</p>
<p>We also have the <a href="http://shoesrb.com/_why-archive">_why archive</a>.</p>
<h2>So, how does all this work?</h2>
<p>Shoes uses Ruby for its code. What does that look like? Well, a simple button for example:</p>
<div class="CodeRay">
  <div class="code"><pre><span class="no">1</span> <span class="co">Shoes</span>.app <span class="sy">:width</span> =&gt; <span class="i">300</span>, <span class="sy">:height</span> =&gt; <span class="i">200</span> <span class="r">do</span>
<span class="no">2</span>   button(<span class="s"><span class="dl">&quot;</span><span class="k">Click me!</span><span class="dl">&quot;</span></span>) { alert(<span class="s"><span class="dl">&quot;</span><span class="k">Good job.</span><span class="dl">&quot;</span></span>) }
<span class="no">3</span> <span class="r">end</span></pre></div>
</div>
<p><img src="http://www.rin-shun.com/shoes/toppage__snapshot_click_me.png" title="Windows" alt="Windows" /> <img src="http://dl.dropbox.com/u/3000100/shoes/screenie-first-example.png" title="Linux" alt="Linux" /> <img src="http://dl.dropbox.com/u/3000100/shoes/miky-first-example-mac.png" title="Mac OS X" alt="Mac OS X" /></p>
<p>Since Shoes is based on <a href="http://ruby-lang.org/">Ruby</a>, it is very easy to use. Download <a href="http://cloud.github.com/downloads/devyn/shoes-web/whys-poignant-guide-to-ruby.pdf">why&#8217;s poignant guide to ruby</a>. You might also want to check out<br />
the <a href="http://cloud.github.com/downloads/mislav/poignant-guide/soundtrack.zip">soundtrack</a> of why&#8217;s Ruby book.</p>
<p>You can write a little <a href="http://twitter.com/">Twitter</a> app in Shoes in less than an hour! A little feed reader is no obstacle! Want a little chat app? No problem! The only limit is your imagination.</p>
<p>So don&#8217;t be afraid, try it out!</p>
<hr />
<p>Many thanks to <a href="http://www.heroku.com">Heroku</a> for hosting this website! They&#8217;re awesome!</p>
<hr />
  </body>
</html>