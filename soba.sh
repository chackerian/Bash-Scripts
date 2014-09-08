￼
#!/bin/bash
# c-vars.sh
# Manipulating a variable, C-style, using the (( ... )) construct.
echo
(( a = 23 ))  #  Setting a value, C-style,
              #+ with spaces on both sides of the "=".
echo "a (initial value) = $a"   # 23
(( a++ ))     #  Post-increment 'a', C-style.
echo "a (after a++) = $a"       # 24
(( a-- ))     #  Post-decrement 'a', C-style.
echo "a (after a--) = $a"       # 23
(( ++a ))     #  Pre-increment 'a', C-style.
echo "a (after ++a) = $a"       # 24
(( --a ))     #  Pre-decrement 'a', C-style.
echo "a (after --a) = $a"       # 23
echo
########################################################
#  Note that, as in C, pre- and post-decrement operators
#+ have different side-effects.
n=1; let --n && echo "True" || echo "False"  # False
n=1; let n-- && echo "True" || echo "False"  # True
#  Thanks, Jeroen Domburg.
########################################################
echo
(( t = a<45?7:11 )) # C-style trinary operator. # ^ ^^
echo "If a < 45, then t = 7, else t = 11."
echo "t = $t "
echo
# -----------------
# Easter Egg alert!
# a = 23 # t = 7
