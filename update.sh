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
BZh91AY&SYX�!  ���Tp}���~�ގ����  D   � P P �^� �F��$~�Sښl��F�oR4z&�P��M'���꟪ I!4	���M�4��=G���hOH�6Hh�A�      ��     ��4h&������щ��  �(1 # 	�&�4�M��G@�4>y:��sgډ�}R>�,�_�k�.��5����3��8OK���RR�� !t�KkSF2LZ����30��.���[��oӿo�~V��Tu�Nϲ�u~�!w�����D1qc���=邳FE�Sį{+�':nxÊ�b���9�%�dԘЀ>b�"j$9Ez'Ȥ��&���@L�t�`C*jN$-�[\<W�dl�	z�t7��.\�c��2i���h#a'c_�%DyDn�ط��w�&&F�5���"�3$�W��!��ګ�9)�#<#C�,6�S�lG��ID�R Xqt2\�kը�Lm!�NF������t(B8o�-�\CU#�H���a ��d�!�Z8�pp�2p����~�������c���<a�11Rp�V)[����E)ɴq}T�j�)^l�N�;�a���g9�8�ͶR�ɐvo싾�m$�*jr=o~�U>V��@<�t22;�0��{���m65�2U6���0���0n��m��̒y?#U�M'���X�p�R�����4�޹�v&�P�wtN�cN�XhO�M_k3�t�]2��;A��	�?��W���Pd}6[�rW�e�b<!���;��bV����7�hʢQ�ǊK-���k�Q�#"��m�r�i���u�6�P�U�!�Y�t�
\�q����K���R�ׯ��B�dK'�n�e/q~I�Հ�z+T(��~����|�W:�S����+�3u�ߣg��C����O@�${�b$*�(I E ��wrE8P�X�!