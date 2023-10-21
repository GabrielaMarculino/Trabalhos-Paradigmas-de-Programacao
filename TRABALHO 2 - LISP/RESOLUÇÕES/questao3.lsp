;;a)
(defun verifica-segundo-maior-que-5 (lista)
  "Verifica se o segundo número da lista é estritamente maior que 5."
  
  ;; Passo 1: Verificar se a lista tem pelo menos dois elementos
  (if (>= (length lista) 2)  ; Verifica se a lista tem pelo menos 2 elementos
      (let ((segundo (nth 1 lista)))  ; Obtém o segundo elemento da lista
        ;; Passo 2: Verificar se o segundo número é estritamente maior que 5
        (if (> segundo 5)
            (format t "true~%") ; Se for verdade, imprime "true"
            (format t "false~%"))) ; Caso contrário, imprime "false"
      (format t "A lista não possui pelo menos dois elementos~%"))) ; Se a lista não tiver dois elementos, informa

;; Exemplo de uso:
(format t "Resultado: ")
(verifica-segundo-maior-que-5 '(3 1 5 0))

;;b)
(defun operacao-com-parametros (x operacao)
  "Executa uma operação com base no valor da string operacao e imprime o resultado."
  (cond
    ((string= operacao "somar")
     ;; Executa a operação "somar" e imprime o resultado
     (let ((resultado (+ (* 10 x) 100)))
       (format t "Resultado da operação 'somar': ~a~%" resultado)))

    (t
     ;; Executa a operação padrão e imprime o resultado
     (let ((resultado (- x (/ x 5) (/ x 10) (round (/ x 3.0)))))
       (format t "Resultado da operação padrão: ~a~%" resultado)))))

;; Exemplo de uso:
(format t "Digite um número inteiro: ")
(setq numero (read))
(format t "Digite 'somar' ou qualquer outra palavra: ")
(setq operacao (read-line))
(operacao-com-parametros numero operacao)

