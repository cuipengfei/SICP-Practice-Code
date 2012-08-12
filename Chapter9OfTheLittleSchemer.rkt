#lang racket

(define (eternity x)
  (eternity x))

(define length0 ((lambda (length)
                   (lambda (l)
                     (cond
                       ((null? l) 0)
                       (else (+ 1 (length (cdr l)))))))
                 eternity))

(define length1 ((lambda (length)
                   (lambda (l)
                     (cond
                       ((null? l) 0)
                       (else (+ 1 (length (cdr l)))))))
                 ((lambda (length)
                    (lambda (l)
                      (cond
                        ((null? l) 0)
                        (else (+ 1 (length (cdr l)))))))
                  eternity)))

(define length2 ((lambda (length)
                   (lambda (l)
                     (cond
                       ((null? l) 0)
                       (else (+ 1 (length (cdr l)))))))
                 ((lambda (length)
                    (lambda (l)
                      (cond
                        ((null? l) 0)
                        (else (+ 1 (length (cdr l)))))))
                  ((lambda (length)
                     (lambda (l)
                       (cond
                         ((null? l) 0)
                         (else (+ 1 (length (cdr l)))))))
                   eternity))))

;(test '())
(define anotherLength0 ((lambda (mk-length)
                          (mk-length mk-length))
                        (lambda (length)
                          (lambda (l)
                            (cond
                              ((null? l) 0)
                              (else (+ 1 (length (cdr l)))))))))

(((lambda (mk-length)
    (mk-length mk-length))
  (lambda (length)
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (+ 1 ((length length) (cdr l)))))))) 
 '(1 2 3 4 5))

(((lambda (mk-length)
    (mk-length mk-length))
  (lambda (length)
    (lambda (l)
      (cond
        ((null? l) 0)
        (else (+ 
               1 
               ((lambda (x) ((length length) x))
                (cdr l)))))))) 
 '(1 2 3 4 5))

(((lambda (mk-length)
    (mk-length mk-length))
  (lambda (mk-length)
    ((lambda (length) 
       (lambda (l)
         (cond ((null? l) 0)
               (else (+ 1(length (cdr l)))))))
     (lambda (x) 
       ((mk-length mk-length) x)))))
 '(a b c d e f g))


(((lambda (le) 
    ((lambda (mk-length)
       (mk-length mk-length))
     (lambda (mk-length)
       (le (lambda (x) 
             ((mk-length mk-length) x))))))
  (lambda (length) 
    (lambda (l)
      (cond ((null? l) 0)
            (else (+ 1(length (cdr l))))))))
 '(q w e r t))