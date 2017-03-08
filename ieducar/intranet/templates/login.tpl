  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <title>Intranet</title>
    <meta http-equiv='Content-Type' content='text/html; charset=ISO-8859-1' />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="-1" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <link rel=stylesheet type='text/css' href='styles/login.css?rand=7' />
    <link rel=stylesheet type='text/css' href='styles/font-awesome.css' />
    <script type='text/javascript' src='scripts/jquery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src="scripts/mensagens.js"></script>
    <script type='text/javascript' src='scripts/jquery/jquery-1.8.3.min.js'></script>

  <script type="text/javascript">

    var $j = jQuery.noConflict();

    function currentSO() {
      var so = undefined;

      if (navigator && navigator.platform) {
        var platform = navigator.platform.toLowerCase();

        if (platform.indexOf('win') > -1)
          so = 'windows';
        else if (platform.indexOf('linux') > -1)
          so = 'linux';
        else if (platform.indexOf('mac') > -1)
          so = 'macOS';
        else if (platform.indexOf('x11') > -1)
          so = 'unix';
        else
          so = platform;
      }

      return so;
    }

    function loginpage_onload() {
      var domainName = window.location.hostname;

      if (domainName.indexOf('treinamento') < 0 && domainName.indexOf('demonstracao') < 0)
        $j('.only-for-clients').show();

      $j('.fade-in').fadeIn('slow');

      $j('#login').focus();

      // used for support links
      if (currentSO() == 'windows')
        $j('.visible-for-windows-so').show();
      else
        $j('.visible-for-non-windows-so').show();
    }

    // set up google analytics
    var domainName = "#&GOOGLE_ANALYTICS_DOMAIN_NAME&#";

    // track only production requests.
    if (domainName.indexOf('local.') < 0 && domainName.indexOf('test.') < 0) {
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', '***REMOVED***']);
      _gaq.push(['_setDomainName', domainName]);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    }
  </script>

  </head>
  <body onload="loginpage_onload();" class="hidden fade-in">
     <div id="flash-container">

      <!-- #&PENDENCIA_ADMINISTRATIVA&# -->


    <div class="mensagens" id="mensagens"></div>

    </div>

    <div id="corpo">
      <div>
        <img width="150px" height="150px" src="https://s3.amazonaws.com/apps-ieducar-images/treinamento/brasao-republica.png"/>
      </div>

      <h2>Secretaria Municipal de Educa&ccedil;&atilde;o</h2>

      <!-- #&ERROLOGIN&# -->

      <div id="login-form" class="box shadow">
        <h1>Acesse sua conta</h1>
        <form action="" method="post">
          <label class="" for="login">Matr&iacute;cula:</label>
          <input type="text" name="login" id="login">

          <label class="" for="senha">Senha:</label>
          <input type="password" name="senha" id="senha">

          <!-- #&RECAPTCHA&# -->
          
          <input type="submit" class="submit" src="imagens/nvp_bot_entra_webmail.jpg" value="Entrar">
          <p class="forget-password"><a class="light small" href="/module/Usuario/RedefinirSenha">Esqueceu sua senha?</a></p>
            </p>
        </form>

      </div> <!-- end login-form -->

    </div> <!-- end corpo -->

    <div id="rodape" class="texto-normal">
      <p>
        Portabilis Tecnologia - suporte@portabilis.com.br -
        <a target="_blank" class="light" href="http://suporte.portabilis.com.br"> Obter Suporte </a>
      </p>

      <div class="rodape-social">
        <p>
          Conhe&ccedil;a mais sobre o i-Educar e a Portabilis, acesse nosso <a href="http://blog.portabilis.com.br">blog</a> &nbsp; &nbsp; &nbsp; Siga-nos nas redes sociais
        </p>
        <div class="social-icons">
          <a href="#"><img src="/intranet/imagens/icon-social-facebook.png"></a>       
          <a href="#"><img src="/intranet/imagens/icon-social-linkedin.png"></a>    
          <a href="#"><img src="/intranet/imagens/icon-social-twitter.png"></a>        
        </div>
      </div>
    </div> <!-- end rodape -->

  </body>
</html>
