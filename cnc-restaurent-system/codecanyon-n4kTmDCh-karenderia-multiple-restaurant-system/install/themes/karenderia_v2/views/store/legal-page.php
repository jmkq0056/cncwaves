<style>
.legal-page { max-width: 800px; margin: 0 auto; padding: 40px 20px 60px; }
.legal-page h1 { color: #3d0d0f; font-size: 28px; margin-bottom: 8px; }
.legal-page h2 { color: #3d0d0f; font-size: 20px; margin: 28px 0 10px; border-bottom: 2px solid #f17d00; padding-bottom: 6px; display: inline-block; }
.legal-page p, .legal-page li { font-size: 15px; line-height: 1.7; color: #444; }
.legal-page ul { padding-left: 20px; }
.legal-page .legal-meta { color: #999; font-size: 13px; margin-bottom: 24px; }
.legal-lang-switch { display: flex; gap: 8px; margin-bottom: 20px; }
.legal-lang-switch button { padding: 6px 16px; border: 2px solid #3d0d0f; border-radius: 20px; background: #fff; color: #3d0d0f; font-weight: 600; cursor: pointer; font-size: 13px; }
.legal-lang-switch button.active { background: #3d0d0f; color: #fff; }
.legal-content[data-lang] { display: none; }
.legal-content.active { display: block; }
</style>

<div class="legal-page">

<div class="legal-lang-switch">
  <button class="active" onclick="switchLang('da', this)">Dansk</button>
  <button onclick="switchLang('en', this)">English</button>
</div>

<?php echo $content_da; ?>
<?php echo $content_en; ?>

</div>

<script>
function switchLang(lang, btn) {
  document.querySelectorAll('.legal-content').forEach(function(el) { el.classList.remove('active'); });
  document.querySelectorAll('.legal-lang-switch button').forEach(function(b) { b.classList.remove('active'); });
  document.querySelector('.legal-content[data-lang="'+lang+'"]').classList.add('active');
  btn.classList.add('active');
}
</script>
