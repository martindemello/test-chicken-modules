(load "outer.so")
(import foo)

(hello)
(c:goodbye)


(print (int->ccount 1))
(print (ccount->int 'c:one))
(print c:one)
