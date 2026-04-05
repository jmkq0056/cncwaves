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

/* summary.html */
class __TwigTemplate_00c57a434479610bd14468a6ac083f1418bf7e3ec65e251b2fe67bbbc4232d15 extends Template
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
        echo "<table style=\"width:100%\" class=\"summary\">
 <tr>
  <td style=\"width:50%;\" valign=\"top\">        
    <table style=\"width:100%;\">
     <tr>
      <td colspan=\"2\"><h3>SUMMARY</h3></td>          
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Order Number:</td>
      <td valign=\"top\">";
        // line 10
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 10), "order_id", [], "any", false, false, false, 10), "html", null, true);
        echo "</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Order Type:</td>
      <td valign=\"top\">";
        // line 14
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 14), "order_type", [], "any", false, false, false, 14), "html", null, true);
        echo "</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Place On:</td>
      <td valign=\"top\">";
        // line 18
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 18), "place_on", [], "any", false, false, false, 18), "html", null, true);
        echo "</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Order Total:</td>
      <td valign=\"top\">";
        // line 22
        echo twig_escape_filter($this->env, ($context["total"] ?? null), "html", null, true);
        echo "</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">";
        // line 25
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["label"] ?? null), "date", [], "any", false, false, false, 25), "html", null, true);
        echo ":</td>
      <td valign=\"top\" >
       ";
        // line 27
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 27), "whento_deliver", [], "any", false, false, false, 27) == "now")) {
            // line 28
            echo "\t   ";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 28), "schedule_at", [], "any", false, false, false, 28), "html", null, true);
            echo "
\t   ";
        } else {
            // line 30
            echo "\t   ";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 30), "schedule_at", [], "any", false, false, false, 30), "html", null, true);
            echo "
\t   ";
        }
        // line 32
        echo "      </td>
     </tr>
    </table>
  </td>
  <td style=\"width:50%;\" valign=\"top\">     
  ";
        // line 37
        if ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 37), "service_code", [], "any", false, false, false, 37) == "delivery")) {
            // line 38
            echo "    <table style=\"width:100%;\">
     <tr>
      <td colspan=\"2\"><h3>DELIVERY ADDRESS</h3></td>          
     </tr>
     <tr><td>";
            // line 42
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 42), "customer_name", [], "any", false, false, false, 42), "html", null, true);
            echo "</td></tr>
     <tr><td>";
            // line 43
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 43), "contact_number", [], "any", false, false, false, 43), "html", null, true);
            echo "</td></tr>
     <tr><td>
      ";
            // line 45
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 45), "complete_delivery_address", [], "any", false, false, false, 45), "html", null, true);
            echo "
      <br/>
      ";
            // line 47
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 47), "address1", [], "any", false, false, false, 47), "html", null, true);
            echo " ";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["order"] ?? null), "order_info", [], "any", false, false, false, 47), "delivery_address", [], "any", false, false, false, 47), "html", null, true);
            echo "
     </td></tr>
    </table>
  ";
        }
        // line 50
        echo "  
  </td>
 </tr>
</table>   ";
    }

    public function getTemplateName()
    {
        return "summary.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  132 => 50,  123 => 47,  118 => 45,  113 => 43,  109 => 42,  103 => 38,  101 => 37,  94 => 32,  88 => 30,  82 => 28,  80 => 27,  75 => 25,  69 => 22,  62 => 18,  55 => 14,  48 => 10,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<table style=\"width:100%\" class=\"summary\">
 <tr>
  <td style=\"width:50%;\" valign=\"top\">        
    <table style=\"width:100%;\">
     <tr>
      <td colspan=\"2\"><h3>SUMMARY</h3></td>          
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Order Number:</td>
      <td valign=\"top\">{{order.order_info.order_id}}</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Order Type:</td>
      <td valign=\"top\">{{order.order_info.order_type}}</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Place On:</td>
      <td valign=\"top\">{{order.order_info.place_on}}</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">Order Total:</td>
      <td valign=\"top\">{{total}}</td>
     </tr>
     <tr>
      <td style=\"width:35%;\" valign=\"top\">{{label.date}}:</td>
      <td valign=\"top\" >
       {% if order.order_info.whento_deliver=='now' %}
\t   {{order.order_info.schedule_at}}
\t   {% else %}
\t   {{order.order_info.schedule_at}}
\t   {% endif %}
      </td>
     </tr>
    </table>
  </td>
  <td style=\"width:50%;\" valign=\"top\">     
  {% if order.order_info.service_code=='delivery' %}
    <table style=\"width:100%;\">
     <tr>
      <td colspan=\"2\"><h3>DELIVERY ADDRESS</h3></td>          
     </tr>
     <tr><td>{{order.order_info.customer_name}}</td></tr>
     <tr><td>{{order.order_info.contact_number}}</td></tr>
     <tr><td>
      {{order.order_info.complete_delivery_address}}
      <br/>
      {{order.order_info.address1}} {{order.order_info.delivery_address}}
     </td></tr>
    </table>
  {% endif %}  
  </td>
 </tr>
</table>   ", "summary.html", "/var/www/html/backoffice/twig/summary.html");
    }
}
