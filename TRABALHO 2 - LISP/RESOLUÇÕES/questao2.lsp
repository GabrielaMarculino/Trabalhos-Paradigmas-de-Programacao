;;a)
(defun rotacao-direita (lista)
  "Realiza uma rotação da lista para a direita, movendo o último elemento para a primeira posição."
  (if (endp lista)  ; Verifica se a lista está vazia
      lista         ; Se a lista estiver vazia, não é possível realizar a rotação
      (let* ((ultimo-elemento (car (last lista)))  ; Obtém o último elemento
             (lista-sem-ultimo (butlast lista)))  ; Remove o último elemento
        (cons ultimo-elemento lista-sem-ultimo)))) ; Adiciona o último elemento na primeira posição

;; Exemplo de uso:
(format t "Lista original: ~a~%" '(1 2 3 4 5))
(format t "Rotação para a direita: ~a~%" (rotacao-direita '(1 2 3 4 5)))

;;b)
 (defun palindromizar (lista)
  "Cria um palíndromo a partir de uma lista, dobrando seu tamanho."
  
  ;;Inverte a lista
  (setq lista-invertida (reverse lista))
  
  ;; Concatena a lista original com a lista invertida
  (setq palindromo (append lista lista-invertida))
  
  ;; Retorna o palíndromo
  palindromo)

;; Exemplo de uso:
(format t "Lista original: ~a~%" '(ARARA))
(format t "Palíndromo: ~a~%" (palindromizar '(ARARA)))

;;C)
;; Procedimento para converter graus Fahrenheit para Celsius
(defun fahrenheit-para-celsius (f)
  "Converte graus Fahrenheit para Celsius."
  ;; Aplicar a fórmula correta
  (let ((c (/ (* (- f 32) 5) 9))) ; Definir uma variável local "c" com o valor da temperatura em Celsius
c))
;; Procedimento para converter graus Fahrenheit para Celsius
(defun fahrenheit-para-celsius (f)
  "Converte graus Fahrenheit para Celsius."
  ;; Aplicar a fórmula correta
  (let ((c (/ (* (- f 32) 5) 9))) ; Definir uma variável local "c" com o valor da temperatura em Celsius
    c)) ; Retornar o valor de "c"

;; Procedimento para converter graus Celsius para Fahrenheit
(defun celsius-para-fahrenheit (c)
  "Converte graus Celsius para Fahrenheit."
  ;; Aplicar a fórmula correta
  (let ((f (+ (* c 9/5) 32)))
    f))
;; Exemplos de uso:
(format t "32 graus Fahrenheit é igual a ~a graus Celsius.~%" (fahrenheit-para-celsius 32))
(format t "0 graus Celsius é igual a ~a graus Fahrenheit.~%" (celsius-para-fahrenheit 0))







