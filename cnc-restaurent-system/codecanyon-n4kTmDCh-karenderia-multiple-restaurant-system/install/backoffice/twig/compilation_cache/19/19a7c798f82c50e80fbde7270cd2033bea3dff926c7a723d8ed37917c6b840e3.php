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

/* header.html */
class __TwigTemplate_cf199e449f78ffa87b31e38d7765b86f4e95fface1288a76c50ba6947107508a extends Template
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
        echo "<!DOCTYPE html>
<html lang=\"da\">
<head>
<meta charset=\"utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">
<meta name=\"robots\" content=\"noindex, nofollow\" />
<style type=\"text/css\">
body { margin:0; padding:0; background:#f5f5f5; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; }
p { font-size:14px; margin:0; color:#333; }
h5 { font-size:17px; }
h5,h4,h3,h2,h1 { margin:0; }
table.collapse { border-collapse:collapse; font-size:14px; }
table.collapse thead { font-size:15px; font-weight:600; }
table.collapse td { padding:8px 10px; }
table.summary td { padding:3px 5px; }
th,td { padding:3pt; }
.summary td, table.items td, table.summary_order td { font-size:15px; }
table.items thead td { font-size:16px; }
table.summary_order b { font-size:17px; }
</style>
</head>
<body>
<table style=\"width:100%;max-width:600px;margin:20px auto;border-collapse:collapse;\">
<tr>
 <td style=\"background:#3d0d0f;padding:24px 30px;text-align:center;\">
   <h1 style=\"color:#f17d00;font-size:28px;font-weight:800;letter-spacing:1px;margin:0;\">
     Chicken <span style=\"color:#fff;\">N</span> Chicken
   </h1>
   <p style=\"color:#ccc;font-size:12px;margin-top:4px;\">Waves &middot; Greve</p>
 </td>
</tr>
<tr><td style=\"background:#fff;padding:30px;\">
";
    }

    public function getTemplateName()
    {
        return "header.html";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html lang=\"da\">
<head>
<meta charset=\"utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">
<meta name=\"robots\" content=\"noindex, nofollow\" />
<style type=\"text/css\">
body { margin:0; padding:0; background:#f5f5f5; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; }
p { font-size:14px; margin:0; color:#333; }
h5 { font-size:17px; }
h5,h4,h3,h2,h1 { margin:0; }
table.collapse { border-collapse:collapse; font-size:14px; }
table.collapse thead { font-size:15px; font-weight:600; }
table.collapse td { padding:8px 10px; }
table.summary td { padding:3px 5px; }
th,td { padding:3pt; }
.summary td, table.items td, table.summary_order td { font-size:15px; }
table.items thead td { font-size:16px; }
table.summary_order b { font-size:17px; }
</style>
</head>
<body>
<table style=\"width:100%;max-width:600px;margin:20px auto;border-collapse:collapse;\">
<tr>
 <td style=\"background:#3d0d0f;padding:24px 30px;text-align:center;\">
   <h1 style=\"color:#f17d00;font-size:28px;font-weight:800;letter-spacing:1px;margin:0;\">
     Chicken <span style=\"color:#fff;\">N</span> Chicken
   </h1>
   <p style=\"color:#ccc;font-size:12px;margin-top:4px;\">Waves &middot; Greve</p>
 </td>
</tr>
<tr><td style=\"background:#fff;padding:30px;\">
", "header.html", "/var/www/html/backoffice/twig/header.html");
    }
}
