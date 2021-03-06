; SICP exercise 3.15
;
; Draw box-and-pointer diagrams to explain the effect of set-to-wow! on the
; structures z1 and z2 above.

; Here is how the structures look before calling set-to-wow!:
;
;         +---+---+                      +---+---+    +---+---+    +---+---+
; z1 ---> | . | . |              z2 ---> | . | . -----| . | . -----| . | / |
;         +-|-+-|-+                      +-|-+---+    +-|-+---+    +-|-+---+
;           |   |                          |            |            |
;         +---+---+    +---+---+           |          +---+        +---+
;  x ---> | . | . -----| . | / |           |          | a |        | b |
;         +-|-+---+    +-|-+---+           |          +---+        +---+
;           |            |                 |            |            |
;         +---+        +---+               |          +-|-+---+    +-|-+---+
;         | a |        | b |               +----------| . | . -----| . | / |
;         +---+        +---+                          +---+---+    +---+---+
;
; Here's what happens after the two calls to set-to-wow!:
;
;         +---+---+                      +---+---+    +---+---+    +---+---+
; z1 ---> | . | . |              z2 ---> | . | . -----| . | . -----| . | / |
;         +-|-+-|-+                      +-|-+---+    +-|-+---+    +-|-+---+
;           |   |                          |            |            |
;         +---+---+    +---+---+           |          +---+        +---+
;  x ---> | . | . -----| . | / |           |          | a |        | b |
;         +-|-+---+    +-|-+---+           |          +---+        +---+
;           |            |                 |                         |
;        +-----+       +---+               |          +---+---+    +-|-+---+
;        | wow |       | b |               +----------| . | . -----| . | / |
;        +-----+       +---+                          +-|-+---+    +---+---+
;                                                       |
;                                                    +-----+
;                                                    | wow |
;                                                    +-----+
