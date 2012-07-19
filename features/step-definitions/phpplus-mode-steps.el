;; This file contains your project specific step definitions. All
;; files in this directory whose names end with "-steps.el" will be
;; loaded automatically by Ecukes.

(Given "^I have \"\\(.+\\)\"$"
       (lambda (something)
         ;; Do something
         ))

(When "^I have \"\\(.+\\)\"$"
      (lambda (something)
        ;; Do something
        ))

(Then "^I should have \"\\(.+\\)\"$"
      (lambda (something)
        ;; Do something
        ))

(And "^I have \"\\(.+\\)\"$"
     (lambda (something)
       ;; Do something
       ))

(But "^I should not have \"\\(.+\\)\"$"
     (lambda (something)
       ;; Do something
       ))

(Then "^I should be at column \\([0-9]+\\)$"
      (lambda (column-num)
        (let ((current-col (current-column))
              (column-num (string-to-number column-num)))
          (assert (= current-col column-num) nil
                  "Expected column %d, actually at column %d."
                  column-num current-col))))

(Then "^I should see the face \\(.+\\)$"
      (lambda (face-string)
        (let ((expected-face (intern face-string))
              (actual-face (get-text-property (point) 'face)))
          (assert (eq expected-face actual-face) nil
                  "Expected face %s, actual face is %s."
                  expected-face actual-face))))

(When "^I go to the beginning of line text$"
      (lambda ()
        (beginning-of-line-text)))

(When "^I print the buffer string$"
      (lambda ()
        (print (buffer-substring-no-properties (point-min) (point-max)))))

(When "^I print the buffer string from here$"
      (lambda ()
        (print (buffer-substring-no-properties (point) (point-max)))))

(When "^I print the buffer string to here$"
      (lambda ()
        (print (buffer-substring-no-properties (point-min) (point)))))

(When "^I print the debug info$"
      (lambda ()
        (print major-mode)
        (print c-basic-offset)))
