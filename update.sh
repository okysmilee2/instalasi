#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYiს  ���Tp}���~�ގ����  D   � P PN����zU��$�j2&�i��2�i��M14h12bd4$����Sz��zCL@�     	I��4�M6�@��  d   42����SL�i�L�bh0��2LL�bh$�����	�S�Q�P�1A���4z��Ѩ@�u�+�����%�Cc��BlX���	KF��FP����8��$���u��� �� ����{r�_C�BR��1� ���E�cy�@Ĕ�dW��u�+��!�T��PKL�el���5�����j R(f3�%
y\��Vi�y�'|0�����1�-���]4� x��"�I%�U���YVD�e�8-�m�@`E��\�v͇S��	�*�?���yDL�Q+��-�ǑU�Y�)Z����Q�b��h�wL�"$٤]9��Xn	D��B� �HY�呏+˥�jZ8W/%q3�� @n�Ȱ����V�џ:#)b��)���y�!ޖ�Ck��qI(�q�;c8ĕ����AU@c�N�H"6.x��Y��ܤ��?g�8�4|���BBqâ(	�N�Ǐaך�rk]�e�U�=�k�T.��F�hTd��P���+���� ֔�9���3sE�D�3�U�����|��E`�H��L#Qha��a�LDJ~I���ј�81�s
���JNUv�Z���F(eR�F<(((�X��T�IBtk�9t((�.��p4LHg%`�ٜ�Q�a�p��d�~���0H��+F8.8��L�:�N��a|1T�H���2gӔf�)Đ���kY|"�7C���nޔVj�0
R���t���JJB��m�8U3oܨ$�iVu�BhHX��Q��Ix)�RB� ]�'�#\`���(��׸^^�"s��1���FZh��{8$�H��Cz(�D�Ba����)�O