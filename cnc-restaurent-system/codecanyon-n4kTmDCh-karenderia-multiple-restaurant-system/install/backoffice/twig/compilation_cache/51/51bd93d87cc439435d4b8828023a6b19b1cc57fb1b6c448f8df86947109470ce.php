<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* footer.html */
class __TwigTemplate_da2aa6c01eee53321b998ceb46481b6d4ab98e9068719ad48c89b94a7eb24f4e extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "
</td></tr>
<tr>
 <td style=\"background:#3d0d0f;padding:24px 30px;text-align:center;\">
   <h4 style=\"color:#f17d00;margin-bottom:8px;\">Chicken N Chicken Waves</h4>
   <p style=\"color:#999;font-size:13px;\">Over B&oslash;lgen 3, st. 1 &middot; 2670 Greve</p>
   <p style=\"color:#999;font-size:13px;margin-top:4px;\">chickenwaves.dk</p>
 </td>
</tr>
</table>
</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "footer.html";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("
</td></tr>
<tr>
 <td style=\"background:#3d0d0f;padding:24px 30px;text-align:center;\">
   <h4 style=\"color:#f17d00;margin-bottom:8px;\">Chicken N Chicken Waves</h4>
   <p style=\"color:#999;font-size:13px;\">Over B&oslash;lgen 3, st. 1 &middot; 2670 Greve</p>
   <p style=\"color:#999;font-size:13px;margin-top:4px;\">chickenwaves.dk</p>
 </td>
</tr>
</table>
</body>
</html>
", "footer.html", "/var/www/html/backoffice/twig/footer.html");
    }
}
