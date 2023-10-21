(defun pa-termos-e-soma (a1 r n)
  (format t "Os primeiros ~d termos da PA com primeiro termo ~a e razão ~a são:~%" n a1 r)
  (loop for i from 1 to n do
        (let ((termo (+ a1 (* (1- i) r))))
          (format t "~a " termo)))
  (terpri)
  
  (let ((an (+ a1 (* (1- n) r)))
        (soma 0))
    (format t "A soma dos ~d termos da PA é: ~a~%" n (/ (* n (+ a1 an)) 2))))

; Exemplo de uso:
(pa-termos-e-soma 1 2 5)
