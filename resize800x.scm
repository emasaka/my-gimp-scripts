(define (script-fu-resize800x image drawable)
  (let ((org-width (car (gimp-image-width image)))
	(org-height (car (gimp-image-height image))) )
    (gimp-image-undo-group-start image)
    (gimp-image-scale image 800 (* org-height (/ 800 org-width)))
    (gimp-displays-flush)
    (gimp-image-undo-group-end image) ))

(script-fu-register
    "script-fu-resize800x"            ;Script name
    "<Image>/Scripts/resize800x"    ;Menu
    "REsize Image 800x "              ;Description
    "emasaka"            ;Creater
    "copyright 2014, emasaka"	      ;copyright notice
    "May 15, 2014"              ;date created
    "RGB*, GRAY*"
    SF-IMAGE      "Image"     0
    SF-DRAWABLE   "Drawable"  0
)
