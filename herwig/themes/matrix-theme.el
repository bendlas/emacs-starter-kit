(deftheme matrix)

(custom-theme-set-faces 'matrix
 '(default ((t (:stipple nil :background "#000" :foreground "#6f6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(mode-line ((t (:background "#55ff55" :foreground "#101010" :box (:line-width -1 :style released-button)))))
 '(region ((((class color) (min-colors 88) (background dark)) (:background "#000044"))))
 '(scroll-bar ((t (:background "#55ff55" :foreground "#101010"))))
 '(tool-bar ((t (:background "#101010" :foreground "#efebe7" :box (:line-width 1 :style released-button))))))

(provide-theme 'matrix)
