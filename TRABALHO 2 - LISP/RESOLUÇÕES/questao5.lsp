(defun SEPARAR-ORGANIZAR (lista)
  "Imprime todos os átomos da lista original."
  ;; Verificar se a lista está vazia
  (if (null lista)
      nil
      ;; Se não estiver vazia, processar cada elemento
      (progn
        ;; Processar o primeiro elemento da lista
        (if (atom (car lista))
            (format t "~a " (car lista))  ; Imprimir átomo
            (SEPARAR-ORGANIZAR (car lista)))  ; Recursivamente processar sublista
        ;; Processar o restante da lista
        (SEPARAR-ORGANIZAR (cdr lista)))))

;; Exemplo de uso:
(format t "Resultado: ")
(SEPARAR-ORGANIZAR '(a (a (a (a b))) (((a b) b) b) b))
