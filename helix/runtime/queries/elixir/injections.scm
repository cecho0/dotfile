((comment) @injection.content
 (#set! injection.language "comment"))

((sigil
  (sigil_name) @_sigil_name
  (quoted_content) @injection.content)
 (#match? @_sigil_name "^(r|R)$")
 (#set! injection.language "regex")
 (#set! injection.combined))
