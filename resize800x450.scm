(define (script-fu-resize800x450 image drawable)
  (gimp-image-undo-group-start image)
  (gimp-image-scale image 800 450)
  (gimp-displays-flush)
  (gimp-image-undo-group-end image) )

(script-fu-register
    "script-fu-resize800x450"         ;Script name
    "<Image>/Scripts/resize800x450" ;Menu
    "Resize Image 800x450 "           ;Description
    "emasaka"            ;Creater
    "copyright 2014, emasaka"	      ;copyright notice
    "May 20, 2014"              ;date created
    "RGB*, GRAY*"
    SF-IMAGE      "Image"     0
    SF-DRAWABLE   "Drawable"  0
)
