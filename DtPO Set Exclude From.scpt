FasdUAS 1.101.10   ��   ��    k             p         ������ 0 excludefrom excludeFrom��      	  l     ��������  ��  ��   	  
  
 l    � ����  O     �    Q    �     k    _       l   ��  ��    2 , Get selection and error if nothing selected     �   X   G e t   s e l e c t i o n   a n d   e r r o r   i f   n o t h i n g   s e l e c t e d      r        1    
��
�� 
DTsl  o      ���� "0 selectedrecords selectedRecords      Z     ����  =      !   o    ���� "0 selectedrecords selectedRecords ! J    ����    R    �� "��
�� .ascrerr ****      � **** " m     # # � $ $ B P l e a s e   s e l e c t   o n e   o r   m o r e   g r o u p s .��  ��  ��     % & % l   ��������  ��  ��   &  ' ( ' l   �� ) *��   ) J D Prompt user to select Exclude From mode and set global accordingly     * � + + �   P r o m p t   u s e r   t o   s e l e c t   E x c l u d e   F r o m   m o d e   a n d   s e t   g l o b a l   a c c o r d i n g l y   (  , - , r    + . / . I   )�� 0 1
�� .sysodlogaskr        TEXT 0 m     2 2 � 3 3 � E x c l u d e   s e l e c t e d   g r o u p ( s )   a n d   c h i l d   g r o u p s ,   i f   a n y ,   f r o m   C l a s s i f i c a t i o n ,   T a g g i n g ,   S e a r c h ,   a n d   S e e   A l s o ? 1 �� 4 5
�� 
btns 4 J    # 6 6  7 8 7 m      9 9 � : :  Y e s 8  ;�� ; m     ! < < � = =  N o��   5 �� >��
�� 
dflt > m   $ % ? ? � @ @  N o��   / o      ���� .0 excluderesponserecord excludeResponseRecord -  A B A Z   , = C D�� E C =  , 1 F G F n   , / H I H 1   - /��
�� 
bhit I o   , -���� .0 excluderesponserecord excludeResponseRecord G m   / 0 J J � K K  Y e s D r   4 7 L M L m   4 5��
�� boovtrue M o      ���� 0 excludefrom excludeFrom��   E r   : = N O N m   : ;��
�� boovfals O o      ���� 0 excludefrom excludeFrom B  P Q P l  > >��������  ��  ��   Q  R S R l  > >�� T U��   T ( " Iterate over all selected records    U � V V D   I t e r a t e   o v e r   a l l   s e l e c t e d   r e c o r d s S  W X W X   > ] Y�� Z Y n  R X [ \ [ I   S X�� ]���� >0 setgrouppropertiesrecursively setGroupPropertiesRecursively ]  ^�� ^ o   S T����  0 selectedrecord selectedRecord��  ��   \  f   R S��  0 selectedrecord selectedRecord Z l  A B _���� _ o   A B���� "0 selectedrecords selectedRecords��  ��   X  `�� ` l  ^ ^��������  ��  ��  ��    R      �� a b
�� .ascrerr ****      � **** a o      ���� 0 errormessage errorMessage b �� c��
�� 
errn c o      ���� 0 errornumber errorNumber��    I  g ��� d e
�� .sysodisAaleR        TEXT d m   g j f f � g g 
 E r r o r e �� h i
�� 
mesS h b   m | j k j b   m z l m l b   m v n o n b   m r p q p m   m p r r � s s  E r r o r   m e s s a g e :   q o   p q���� 0 errormessage errorMessage o o   r u��
�� 
ret  m m   v y t t � u u  E r r o r   n u m b e r :   k o   z {���� 0 errornumber errorNumber i �� v��
�� 
btns v J   } � w w  x�� x m   } � y y � z z  Q u i t��  ��    m      { {�                                                                                  DNtp  alis    n  Macintosh HD               ΗWcH+  �)�DEVONthink Pro.app                                             &�Zр=�        ����  	                Applications    Η��      р�    �)�  -Macintosh HD:Applications: DEVONthink Pro.app   &  D E V O N t h i n k   P r o . a p p    M a c i n t o s h   H D  Applications/DEVONthink Pro.app   / ��  ��  ��     | } | l     ��������  ��  ��   }  ~  ~ i      � � � I      �� ����� >0 setgrouppropertiesrecursively setGroupPropertiesRecursively �  ��� � o      ���� 0 	therecord 	theRecord��  ��   � O     F � � � k    E � �  � � � l   �� � ���   � b \ If the record is a group, set the 'exclude from' properties. Ignore all other record types.    � � � � �   I f   t h e   r e c o r d   i s   a   g r o u p ,   s e t   t h e   ' e x c l u d e   f r o m '   p r o p e r t i e s .   I g n o r e   a l l   o t h e r   r e c o r d   t y p e s . �  � � � Z    ' � ����� � =   	 � � � l    ����� � n     � � � 1    ��
�� 
DTty � o    ���� 0 	therecord 	theRecord��  ��   � m    ��
�� DtypDTgr � k    # � �  � � � r     � � � o    ���� 0 excludefrom excludeFrom � n       � � � 1    ��
�� 
DTxc � o    ���� 0 	therecord 	theRecord �  � � � r     � � � o    ���� 0 excludefrom excludeFrom � n       � � � 1    ��
�� 
DTxt � o    ���� 0 	therecord 	theRecord �  � � � r     � � � o    ���� 0 excludefrom excludeFrom � n       � � � 1    ��
�� 
DTxs � o    ���� 0 	therecord 	theRecord �  ��� � r    # � � � o    ���� 0 excludefrom excludeFrom � n       � � � 1     "��
�� 
DTxa � o     ���� 0 	therecord 	theRecord��  ��  ��   �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   � * $ Iterate over children of the record    � � � � H   I t e r a t e   o v e r   c h i l d r e n   o f   t h e   r e c o r d �  ��� � X   ( E ��� � � n  : @ � � � I   ; @�� ����� >0 setgrouppropertiesrecursively setGroupPropertiesRecursively �  ��� � o   ; <���� 0 	childitem 	childItem��  ��   �  f   : ;�� 0 	childitem 	childItem � l  + . ����� � n   + . � � � 2  , .��
�� 
DTch � o   + ,���� 0 	therecord 	theRecord��  ��  ��   � m      � ��                                                                                  DNtp  alis    n  Macintosh HD               ΗWcH+  �)�DEVONthink Pro.app                                             &�Zр=�        ����  	                Applications    Η��      р�    �)�  -Macintosh HD:Applications: DEVONthink Pro.app   &  D E V O N t h i n k   P r o . a p p    M a c i n t o s h   H D  Applications/DEVONthink Pro.app   / ��     ��� � l     ��������  ��  ��  ��       �� � � ���   � ������ >0 setgrouppropertiesrecursively setGroupPropertiesRecursively
�� .aevtoappnull  �   � **** � �� ����� � ����� >0 setgrouppropertiesrecursively setGroupPropertiesRecursively�� �� ���  �  ���� 0 	therecord 	theRecord��   � ������ 0 	therecord 	theRecord�� 0 	childitem 	childItem �  �������������������~�}�|
�� 
DTty
�� DtypDTgr�� 0 excludefrom excludeFrom
�� 
DTxc
�� 
DTxt
�� 
DTxs
�� 
DTxa
�� 
DTch
� 
kocl
�~ 
cobj
�} .corecnte****       ****�| >0 setgrouppropertiesrecursively setGroupPropertiesRecursively�� G� C��,�  à�,FOà�,FOà�,FOà�,FY hO ��-[��l kh )�k+ [OY��U � �{ ��z�y � ��x
�{ .aevtoappnull  �   � **** � k     � � �  
�w�w  �z  �y   � �v�u�t�v  0 selectedrecord selectedRecord�u 0 errormessage errorMessage�t 0 errornumber errorNumber �  {�s�r # 2�q 9 <�p ?�o�n�m�l J�k�j�i�h�g�f � f�e r�d t y�c
�s 
DTsl�r "0 selectedrecords selectedRecords
�q 
btns
�p 
dflt�o 
�n .sysodlogaskr        TEXT�m .0 excluderesponserecord excludeResponseRecord
�l 
bhit�k 0 excludefrom excludeFrom
�j 
kocl
�i 
cobj
�h .corecnte****       ****�g >0 setgrouppropertiesrecursively setGroupPropertiesRecursively�f 0 errormessage errorMessage � �b�a�`
�b 
errn�a 0 errornumber errorNumber�`  
�e 
mesS
�d 
ret 
�c .sysodisAaleR        TEXT�x �� � ]*�,E�O�jv  	)j�Y hO����lv��� E�O��,�  eE�Y fE�O �[a a l kh  )�k+ [OY��OPW &X  a a a �%_ %a %�%�a kv� U ascr  ��ޭ