#lang racket
(define atom? (lambda (x) 
                (and 
                 (not (null? x)) 
                 (not (pair? x)))))

(define (lat? l)
  (if (null? l) #t
   (and (atom? (car l)) (lat? (cdr l)))))

(define (member? item sequence)
  (if (null? sequence) #f
  (or 
   (eq? (car sequence) item) 
   (member? item (cdr sequence)))))

(define (removeMember item sequence)
  (if (null? sequence) 
      null
      (if (eq? item (car sequence)) 
          (cdr sequence)
          (cons (car sequence) (removeMember item (cdr sequence))))))

(define (firsts sequence)
  (cond ((null? sequence) null)
        ((pair? (car sequence)) 
          (cons (caar sequence)
                (firsts (cdr sequence))))
        (else null)))

(define (insertR new old sequence)
  (if (null? sequence) null
      (if (eq? (car sequence) old)
          (cons (car sequence) 
                (cons new (cdr sequence)))
          (cons (car sequence) 
                (insertR new old (cdr sequence))))))

(define (insertL new old sequence)
  (if (null? sequence) null
      (if (eq? (car sequence) old)
          (cons new 
                (cons (car sequence) (cdr sequence)))
          (cons (car sequence) 
                (insertL new old (cdr sequence))))))

(define (equan? a b)
  (cond ((and (number? a) (number? b)) (= a b))
        ;((or (number? a) (number? b)) #f)
        (else (eq? a b))))

(lat? '(a b c))
(lat? '(a b c (d e)))
(lat? null)

(removeMember 1 '(1 2 3))
(removeMember 1 '(4 3 2 1 12 34))
(removeMember 1 '(0 2 1))

(firsts '((a b c) (b c d) (c d e)))

(insertR 'topping 'fudge '(ice cream with fudge for dessert))