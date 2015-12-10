<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<title>Intranet</title>
    <meta http-equiv='Content-Type' content='text/html; charset=ISO-8859-1' />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="-1" />

    <link rel=stylesheet type='text/css' href='styles/reset.css?rand=3' />
    <link rel=stylesheet type='text/css' href='styles/portabilis.css?rand=3' />
    <link rel=stylesheet type='text/css' href='styles/min-portabilis.css?rand=3' />
    <link rel=stylesheet type='text/css' href='styles/login.css?rand=6' />
    <script type="text/javascript" src="http://assets.freshdesk.com/widget/freshwidget.js"></script>
    <script type="text/javascript" src="scripts/suporte_freshdesk.js?1"></script>

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
    <!--img src="https://s3-sa-east-1.amazonaws.com/apps-core-images/uploads/dia-da-mulher.png" style="float:left;"-->
    <img src="templates/imagens/mensagem-natal.png" height="300px" style="position:absolute; left: 40px; top: -2px;" />
    <div id="flash-container">

      <!--p style="min-height: 0px;  background-color: #F5829C; color: white;" class="flash update-browser"> 
        Desejamos a todas um Feliz Dia Internacional da Mulher! Voc&ecirc;s s&atilde;o exemplo de amor, perseveran&ccedil;a, coragem e determina&ccedil;&atilde;o. Estes s&atilde;o os votos da Equipe Portabilis. ;)
      </p-->

      <!--[if lt IE 7]>
      <p style="min-height: 32px;" class="flash update-browser"><strong>Seu navegador est&aacute desatualizado.</strong> Para melhor navega&ccedil;&atildeo  no sistema, por favor, atualize seu navegador.<a href="http://br.mozdev.org/download/" target="_blank"><img style="margin-top:4px;" src="http://www.mozilla.org/contribute/buttons/110x32bubble_r_pt.png" alt="Firefox" width="110" height="32" style="border-style:none;" title="Mozilla Firefox" /></a></p>
      <![endif]-->

           <!--p style="min-height: 0px;" class="flash exclamation"><strong>Caros clientes,</strong><br/> De 24/12 &agrave; 31/12 nosso atendimento de suporte ter&aacute; hor&aacute;rio de funcionamento especial. Sendo assim, pedimos que todos os contatos sejam feitos atrav&eacute;s do e-mail, pois ser&atilde;o atendidos normalmente. Se o contato for urgente, temos plant&atilde;o nos seguintes n&uacute;meros: (48) 9811-3030 (TIM), (48) 9187-6262 (Vivo) e (48) 8835-3082 (Claro). <strong>Obrigado pela compreens&atilde;o.</strong></p>
      <br/>
     <!--p style="min-height: 0px;" class="flash error">Desejamos a todos os nossos clientes e amigos um Feliz Natal e boas festas! Obrigado pela oportunidade de trabalharmos juntos neste ano e nos reencontramos em 2014 com muito mais garra ainda para continuar apoiando voc&ecirc;s nos seus trabalhos. :)</p-->

    <!--  <p style="min-height: 0px;" class="flash update-browser">
        Comunicamos que o nosso servi&ccedil;o de Suporte via telefone apresentar&aacute; instabilidades neste m&ecirc;s de Novembro, em virtude da mudan&ccedil;a de endere&ccedil;o da sede da Portabilis. <br/>Pedimos desculpas pelo transtorno tempor&aacute;rio e informamos que voc&ecirc; ainda poder&aacute; nos contatar pelo e-mail de suporte (<a href='mailto:suporte@portabilis.com.br'>suporte@portabilis.com.br</a>) ou diretamente pela ferramenta de HelpDesk (<a href='http://suporte.portabilis.com.br'>http://suporte.portabilis.com.br'</a>).
     </p> -->

     <p style="min-height: 0px;" class="flash success">
        Ol&aacute;, <br />
        Sabemos o quanto voc&ecirc;s est&atilde;o ocupados e preocupados neste fim de ano para que todas as atividades sejam conclu&iacute;das de forma plena no sistema. Por isso, queremos reafirmar nosso comprometimento em ajud&aacute;-los com estas tarefas. <br />

        Atualizamos o <b> Manual de encerramento e in&iacute;cio do ano letivo</b> para auxili&aacute;-los neste ano. Clique <a href="https://drive.google.com/uc?export=download&id=0B4FIX4vLOqLXckZ4YUVGYVRLVWc"> aqui </a> para obter. <br />
        Se tiver d&uacute;vidas, fale conosco ou com o respons&aacute;vel pelo sistema na sua institui&ccedil;&atilde;o.
      </p><br/>
      <p style="min-height: 0px;" class="flash exclamation">
      <strong>Caros clientes,</strong>
        <br/>Nos dias 24/12 e 31/12 nosso atendimento de suporte ter&aacute; hor&aacute;rio especial, funcionando das 08:00 &agrave;s 12:00 horas. Sendo assim, pedimos que todos os contatos posteriores a este hor&aacute;rio nas datas informadas, sejam feitos via e-mail suporte@portabilis.com.br, pois ser&atilde;o atendidos normalmente. <strong>Agradecemos pela compreens&atilde;o.</strong>
      </p>

      <!-- #&ERROLOGIN&# -->

      <!-- #&PENDENCIA_ADMINISTRATIVA&# -->
    </div>

    <div id="corpo">
      <div id="login-form" class="box shadow">
        <h2>Entrar</h2>
        <p class="explanation"></p>

        <form action="" method="post">
        <table>
          <tbody><tr>
    		    <td>
              <label class="" for="login">Matr&iacute;cula:</label>
              <input type="text" name="login" id="login"></td>
    	    </tr>

          <tr>
    		    <td>
              <label class="" for="senha">Senha:</label>
              <input type="password" name="senha" id="senha">
            </td>
          </tr>
          <tr>
            <td><!-- #&RECAPTCHA&# --></td>
          </tr>
          <tr>
    		    <td>
              <input type="submit" class="submit" src="imagens/nvp_bot_entra_webmail.jpg" value="Entrar">
            </td>
          </tr>
          <tr>
            <td>
              <p class="forget-password"><a class="light small" href="/module/Usuario/RedefinirSenha">Esqueceu sua senha?</a></p>

              <p><a target="_blank" class="light small" href="http://educacao.portabilis.com.br/">Acesso professores, pais e alunos.</a> <a target="_blank" class="decorated light small" href="http://www.portabilis.com.br/produto/educacao-19#destaques">Saiba mais</a>
            </p>
            </td>
          </tr>
        </tbody></table>
        </form>

      </div> <!-- end login-form -->

      <div id="service-info">
        <p class="requiriments title">Requisitos</p>
        <p class="explanation">Para melhor uso do sistema, recomendamos:</p>
        <ul class="requiriments unstyled">
          <li>- Navegador <a target="_blank" class="light decorated" href="https://www.google.com/intl/pt-BR/chrome/browser/">Google Chrome</a> ou <a target="_blank" class="light decorated" href="http://br.mozdev.org/download/">Mozilla Firefox</a></li>
          <li>- Leitor relat&oacute;rios PDF <a target="_blank" class="light decorated" href="http://get.adobe.com/br/reader/">Adobe Reader</a> ou <a target="_blank" class="light decorated" href="http://www.foxitsoftware.com/downloads#reader">Foxit</a></li>
        </ul>
      </div>

      <div class="clear"></div>

    </div> <!-- end corpo -->

    <div id="rodape" class="texto-normal">
      <p>
        Portabilis Tecnologia - suporte@portabilis.com.br -

        <a target="_blank" class="light" href="http://suporte.portabilis.com.br"> Obter Suporte </a>
      </p>

      <!-- <div id="div-novembro-azul" style="top: -385px">
        <a href="https://www.google.com.br/#q=Campanha+Novembro+azul" target="_blank"><img src="https://s3.amazonaws.com/apps-ieducar-images/novembro-azul/novembro-azul.jpg"/></a>
      </div> -->

      <!--div id="div-copa-no-brasil">
        <img src="https://cloud.githubusercontent.com/assets/1082624/3250687/b08b862c-f1a8-11e3-87f9-a1bfef5949c3.jpg"/>
        <p><a href="https://www.google.com/maps/views/streetview/brazils-painted-streets?gl=br&hl=pt-BR" target="_blank">
            <span style="color: #00A859;">Ruas</span> <span style="color: #FFCC29;">coloridas do <span style="color: #3E4095;">Brasil</span>
          </a></p>
      </div-->
    </div> <!-- end rodape -->

  </body>
</html>
