{% if theme.mathjax.enable && page.mathjax %} {# add "page.mathjax" by myself. For set toggle to mathjax.js in page #}
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      {% if page.mhchem %}  {# add "page.mhchem" by myself. For set toggle to mhchem.js in page #}
        extensions: ["tex2jax.js", "[Contrib]/mhchem/mhchem.js"],
      {% endif %}
      tex2jax: {
        inlineMath: [ ['$','$'], ["\\(","\\)"]  ],
        processEscapes: true,
        skipTags: ['script', 'noscript', 'style', 'textarea', 'pre', 'code']
      }
    });
  </script>

  <script type="text/x-mathjax-config">
    MathJax.Hub.Queue(function() {
      var all = MathJax.Hub.getAllJax(), i;
      for (i=0; i < all.length; i += 1) {
        all[i].SourceElement().parentNode.className += ' has-jax';
      }
    });
  </script>
  <script type="text/javascript" src="{{ theme.mathjax.cdn }}"></script>
{% endif %}
