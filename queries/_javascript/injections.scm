; ;extends
; ((template_string) @injection.content 
;              (#set! injection.language "html")
;              (#offset! @injection.content 0 1 0 -1)
; )
; ;extends
; ((comment) @_comment
;  (#match? @_comment "(_html|_HTML)")
;   value: (template_string) @injection.content 
;             (#set! injection.language "html")
;             (#offset! @injection.content 0 1 0 -1)
; )

; ;extends
; ((comment) @_comment
;  (#match? @_comment "(_html|_HTML)")
;   value: (template_string
;          (string_fragment) @injection.content
;         (#set! injection.language "html")
;         (#set! injection.combined)
;    ) 
; )


; ;extends
; ((comment) @_comment
;  (#match? @_comment "(_html|_HTML)")
;   value: (template_string
;          .((string_fragment).(template_substitution)?) @injection.content
;         (#set! injection.language "html")
;         (#set! injection.combined)
;         (#set! injection.include-children)
;          .((string_fragment).(template_substitution)?)* @injection.content
;         (#set! injection.language "html")
;         (#set! injection.combined)
;         (#set! injection.include-children)
;          .((string_fragment).(template_substitution)?) @injection.content
;          .
;         (#set! injection.language "html")
;         (#set! injection.combined)
;         (#set! injection.include-children)
;    ) 
; )

; Working one except template inclused
; ;extends
; ((comment) @_comment
;  (#match? @_comment "(_html|_HTML)")
;   value: (template_string) @injection.content 
;       (#set! injection.language "html")
;       (#offset! @injection.content 1 0 -1 0)
; )


; extends
; ((comment) @_comment
;  (#match? @_comment "(_html|_HTML)")
;   value: (template_string
;   ((string_fragment) (template_substitution)?)* @injection.content
;        (#set! injection.language "html")
;    ) 
; )


