(define (script-fu-resize800x600 image drawable)
  (gimp-image-undo-group-start image)
  (gimp-image-scale image 800 600)
  (gimp-displays-flush)
  (gimp-image-undo-group-end image) )

(script-fu-register
    "script-fu-resize800x600"         ;Script name
    "<Image>/Scripts/resize800x600" ;Menu
    "Resize Image 800x600 "           ;Description
    "emasaka"            ;Creater
    "copyright 2014, emasaka"	      ;copyright notice
    "May 20, 2014"              ;date created
    "RGB*, GRAY*"
    SF-IMAGE      "Image"     0
    SF-DRAWABLE   "Drawable"  0
)
