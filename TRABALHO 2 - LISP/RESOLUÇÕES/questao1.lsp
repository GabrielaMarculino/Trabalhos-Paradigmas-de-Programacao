;;A)
;; Define uma lista com elementos traduzidos
(setq minha-lista '(A b C x y Z))

;; Imprime o primeiro elemento
(format t "Primeiro elemento: ~a~%" (car minha-lista))

;; Imprime o último elemento
(format t "Último elemento: ~a~%" (car (last minha-lista)))


;;B)

;;Cria a lista de divisores dos primeiros divisores de 24
(setq divisores '(1 2 3 4 6 8 12 24))

;;Cria uma nova lista chamada "nova-lista" (inicialmente vazia)
(setq nova-lista '())

;;Realizar o procedimento de remoção e inserção três vezes
(dotimes (i 3)
  
    ;;Remove o primeiro elemento da lista "divisores"
  (let ((primeiro-elemento (car divisores)))
    (setq divisores (cdr divisores))  ; Atualizar a lista de divisores sem o primeiro elemento
  
    ;;Adiciona o primeiro elemento à lista "nova-lista"
    (push primeiro-elemento nova-lista)))

;;Imprime as duas listas
(format t "Lista 'divisores': ~a~%" divisores)
(format t "Lista 'nova-lista': ~a~%" nova-lista)

;;C)
 ;; Cria uma lista com as informações de notas
(setq notas-aluno '((PP . 9.0) (ES . 8.5) (MPFC . 7.0) (IHC . 8.0)))

;; Realiza a busca pela disciplina "PP" na lista
(setq disciplina-buscada 'PP)
(setq nota-encontrada nil)

;; Itera sobre a lista de notas para encontrar a disciplina "PP"
(dolist (disciplina-nota notas-aluno)
  (let ((disciplina (car disciplina-nota))
        (nota (cdr disciplina-nota)))
    (if (equal disciplina disciplina-buscada)
        (setq nota-encontrada nota))))

;; Imprime a nota do aluno na disciplina "PP" na tela
(if nota-encontrada
    (format t "Nota do aluno em PP: ~a~%" nota-encontrada)
    (format t "Disciplina 'PP' não encontrada nas notas do aluno.~%"))

