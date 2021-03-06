FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

CUSTOM EVERNOTE URL HANDLER

Description:
	Evernote's built in URL handler scheme, evernote:///, only supports opening existing notes and activating the application (i.e., bringing the app window to the front of the desktop). See http://dev.evernote.com/doc/articles/note_links.php for details. This handler, x-evernote:///, supplements the capabilities of the built-in handler with additional feature, like creation of new notes with specified name and text. It does not include support for any functionality of the built-in handler. Both must be used together to utilize both built-in and extended capabilities together.

Author:
	Steve Denman, mailto:stevedenman@usa.net
	
Script location:
	http://sddinabq.wordpress.com
	
Version & release date:
	V1.0, February 27, 2014

Deployment: 
	URL handler scripts must be properly deployed on the computer where the handler is to be processed before first use. If the script is initially downloaded to the local computer as a script file (not the full AppleScript application package), it must be compiled to an AppleScript application from the command line or by opening it in the AppleScript Editer and saving it as an Application. Then, then the Info.plist file in the top level Contents folder within the package (From Finder, right-click on scriptfilename.app, then Show Package Contents, and navigate to the Contents folder) must be edited (see Info.plist example and instructions that follow). Finally, the handler must be registered on the computer by running the script app, by double-clicking it in the Finder or running it in using the 'open' command form the command line. Registration need only be performed before first use of the handler and again after any modifications to the script or Info.plist files.

Usage:	
	x-evernote:///add?title=<unEncodedText>&<noteTextQuery>[&source=<sourceURL>]
		<noteTextQuery> := text=<unEncodedText> | enml=<enmlEncodedText> | html=<htmlEncodedText>
	
Example(s):
	x-evernote:///add?title=Note%20Tite&text=Some%20unformatted%20note%20text.&source=http://www.google.com
	x-evernote:///add?title=Note%20Title&html=%3Cdiv%3E%3Cstrong%3Ehtml%3C/strong%3E%20formatted%20text.%3C/div%3E
	x-evernote:///add?enml=%3Cen-note%3E%3Cdiv%3E%3Cen-todo/%3EIncomplete%20item.%3C/div%3E%3C/en-note%3E

     � 	 	� 
 
 C U S T O M   E V E R N O T E   U R L   H A N D L E R 
 
 D e s c r i p t i o n : 
 	 E v e r n o t e ' s   b u i l t   i n   U R L   h a n d l e r   s c h e m e ,   e v e r n o t e : / / / ,   o n l y   s u p p o r t s   o p e n i n g   e x i s t i n g   n o t e s   a n d   a c t i v a t i n g   t h e   a p p l i c a t i o n   ( i . e . ,   b r i n g i n g   t h e   a p p   w i n d o w   t o   t h e   f r o n t   o f   t h e   d e s k t o p ) .   S e e   h t t p : / / d e v . e v e r n o t e . c o m / d o c / a r t i c l e s / n o t e _ l i n k s . p h p   f o r   d e t a i l s .   T h i s   h a n d l e r ,   x - e v e r n o t e : / / / ,   s u p p l e m e n t s   t h e   c a p a b i l i t i e s   o f   t h e   b u i l t - i n   h a n d l e r   w i t h   a d d i t i o n a l   f e a t u r e ,   l i k e   c r e a t i o n   o f   n e w   n o t e s   w i t h   s p e c i f i e d   n a m e   a n d   t e x t .   I t   d o e s   n o t   i n c l u d e   s u p p o r t   f o r   a n y   f u n c t i o n a l i t y   o f   t h e   b u i l t - i n   h a n d l e r .   B o t h   m u s t   b e   u s e d   t o g e t h e r   t o   u t i l i z e   b o t h   b u i l t - i n   a n d   e x t e n d e d   c a p a b i l i t i e s   t o g e t h e r . 
 
 A u t h o r : 
 	 S t e v e   D e n m a n ,   m a i l t o : s t e v e d e n m a n @ u s a . n e t 
 	 
 S c r i p t   l o c a t i o n : 
 	 h t t p : / / s d d i n a b q . w o r d p r e s s . c o m 
 	 
 V e r s i o n   &   r e l e a s e   d a t e : 
 	 V 1 . 0 ,   F e b r u a r y   2 7 ,   2 0 1 4 
 
 D e p l o y m e n t :   
 	 U R L   h a n d l e r   s c r i p t s   m u s t   b e   p r o p e r l y   d e p l o y e d   o n   t h e   c o m p u t e r   w h e r e   t h e   h a n d l e r   i s   t o   b e   p r o c e s s e d   b e f o r e   f i r s t   u s e .   I f   t h e   s c r i p t   i s   i n i t i a l l y   d o w n l o a d e d   t o   t h e   l o c a l   c o m p u t e r   a s   a   s c r i p t   f i l e   ( n o t   t h e   f u l l   A p p l e S c r i p t   a p p l i c a t i o n   p a c k a g e ) ,   i t   m u s t   b e   c o m p i l e d   t o   a n   A p p l e S c r i p t   a p p l i c a t i o n   f r o m   t h e   c o m m a n d   l i n e   o r   b y   o p e n i n g   i t   i n   t h e   A p p l e S c r i p t   E d i t e r   a n d   s a v i n g   i t   a s   a n   A p p l i c a t i o n .   T h e n ,   t h e n   t h e   I n f o . p l i s t   f i l e   i n   t h e   t o p   l e v e l   C o n t e n t s   f o l d e r   w i t h i n   t h e   p a c k a g e   ( F r o m   F i n d e r ,   r i g h t - c l i c k   o n   s c r i p t f i l e n a m e . a p p ,   t h e n   S h o w   P a c k a g e   C o n t e n t s ,   a n d   n a v i g a t e   t o   t h e   C o n t e n t s   f o l d e r )   m u s t   b e   e d i t e d   ( s e e   I n f o . p l i s t   e x a m p l e   a n d   i n s t r u c t i o n s   t h a t   f o l l o w ) .   F i n a l l y ,   t h e   h a n d l e r   m u s t   b e   r e g i s t e r e d   o n   t h e   c o m p u t e r   b y   r u n n i n g   t h e   s c r i p t   a p p ,   b y   d o u b l e - c l i c k i n g   i t   i n   t h e   F i n d e r   o r   r u n n i n g   i t   i n   u s i n g   t h e   ' o p e n '   c o m m a n d   f o r m   t h e   c o m m a n d   l i n e .   R e g i s t r a t i o n   n e e d   o n l y   b e   p e r f o r m e d   b e f o r e   f i r s t   u s e   o f   t h e   h a n d l e r   a n d   a g a i n   a f t e r   a n y   m o d i f i c a t i o n s   t o   t h e   s c r i p t   o r   I n f o . p l i s t   f i l e s . 
 
 U s a g e : 	 
 	 x - e v e r n o t e : / / / a d d ? t i t l e = < u n E n c o d e d T e x t > & < n o t e T e x t Q u e r y > [ & s o u r c e = < s o u r c e U R L > ] 
 	 	 < n o t e T e x t Q u e r y >   : =   t e x t = < u n E n c o d e d T e x t >   |   e n m l = < e n m l E n c o d e d T e x t >   |   h t m l = < h t m l E n c o d e d T e x t > 
 	 
 E x a m p l e ( s ) : 
 	 x - e v e r n o t e : / / / a d d ? t i t l e = N o t e % 2 0 T i t e & t e x t = S o m e % 2 0 u n f o r m a t t e d % 2 0 n o t e % 2 0 t e x t . & s o u r c e = h t t p : / / w w w . g o o g l e . c o m 
 	 x - e v e r n o t e : / / / a d d ? t i t l e = N o t e % 2 0 T i t l e & h t m l = % 3 C d i v % 3 E % 3 C s t r o n g % 3 E h t m l % 3 C / s t r o n g % 3 E % 2 0 f o r m a t t e d % 2 0 t e x t . % 3 C / d i v % 3 E 
 	 x - e v e r n o t e : / / / a d d ? e n m l = % 3 C e n - n o t e % 3 E % 3 C d i v % 3 E % 3 C e n - t o d o / % 3 E I n c o m p l e t e % 2 0 i t e m . % 3 C / d i v % 3 E % 3 C / e n - n o t e % 3 E 
 
   
  
 l     ��������  ��  ��        i         I     �� ��
�� .GURLGURLnull��� ��� TEXT  o      ���� 0 xevernoteurl xevernoteURL��    k    �       l     ��������  ��  ��        Q    �     k   �       l   ��������  ��  ��        l   ��  ��    : 4display dialog "xevernoteURL=|" & xevernoteURL & "|"     �     h d i s p l a y   d i a l o g   " x e v e r n o t e U R L = | "   &   x e v e r n o t e U R L   &   " | "   ! " ! l   ��������  ��  ��   "  # $ # l   �� % &��   % 4 . Parse passed URL into tokens and check syntax    & � ' ' \   P a r s e   p a s s e d   U R L   i n t o   t o k e n s   a n d   c h e c k   s y n t a x $  ( ) ( r     * + * m     , , � - -  x - e v e r n o t e : / / / + o      ���� (0 xevernoteurlprefix xevernoteURLPrefix )  . / . Z    0 1���� 0 H     2 2 C    
 3 4 3 o    ���� 0 xevernoteurl xevernoteURL 4 o    	���� (0 xevernoteurlprefix xevernoteURLPrefix 1 L     5 5 m    ��
�� boovfals��  ��   /  6 7 6 r     8 9 8 J     : :  ;�� ; m     < < � = =  ��   9 n      > ? > 1    ��
�� 
txdl ? 1    ��
�� 
ascr 7  @ A @ r    0 B C B n    . D E D 7   .�� F G
�� 
ctxt F l  " * H���� H [   " * I J I l  # ( K���� K I  # (�� L��
�� .corecnte****       **** L o   # $���� (0 xevernoteurlprefix xevernoteURLPrefix��  ��  ��   J m   ( )���� ��  ��   G m   + -������ E o    ���� 0 xevernoteurl xevernoteURL C o      ���� 
0 uri URI A  M N M l  1 1�� O P��   O ( "display dialog "URI=|" & URI & "|"    P � Q Q D d i s p l a y   d i a l o g   " U R I = | "   &   U R I   &   " | " N  R S R r   1 8 T U T J   1 4 V V  W�� W m   1 2 X X � Y Y  ?��   U n      Z [ Z 1   5 7��
�� 
txdl [ 1   4 5��
�� 
ascr S  \ ] \ r   9 > ^ _ ^ n   9 < ` a ` 2   : <��
�� 
citm a o   9 :���� 
0 uri URI _ o      ���� (0 questionmarktokens questionMarkTokens ]  b c b r   ? E d e d n   ? C f g f 4   @ C�� h
�� 
cobj h m   A B����  g o   ? @���� (0 questionmarktokens questionMarkTokens e o      ���� 
0 action   c  i j i l  F F�� k l��   k . (display dialog "action=|" & action & "|"    l � m m P d i s p l a y   d i a l o g   " a c t i o n = | "   &   a c t i o n   &   " | " j  n o n l  F R p q r p Z  F R s t���� s =  F I u v u o   F G���� 
0 action   v m   G H w w � x x   t L   L N y y m   L M��
�� boovfals��  ��   q %  This should be the action name    r � z z >   T h i s   s h o u l d   b e   t h e   a c t i o n   n a m e o  { | { l  S S��������  ��  ��   |  } ~ } l  S S��  ���      Parse parameters    � � � � "   P a r s e   p a r a m e t e r s ~  � � � r   S Y � � � n   S W � � � 4   T W�� �
�� 
cobj � m   U V����  � o   S T���� (0 questionmarktokens questionMarkTokens � o      ���� 
0 params   �  � � � l  Z Z�� � ���   � . (display dialog "params=|" & params & "|"    � � � � P d i s p l a y   d i a l o g   " p a r a m s = | "   &   p a r a m s   &   " | " �  � � � r   Z a � � � J   Z ] � �  ��� � m   Z [ � � � � �  &��   � n      � � � 1   ^ `��
�� 
txdl � 1   ] ^��
�� 
ascr �  � � � r   b g � � � n   b e � � � 2   c e��
�� 
citm � o   b c���� 
0 params   � o      ���� 0 	paramlist 	paramList �  � � � r   h o � � � J   h k � �  ��� � m   h i � � � � �  ��   � n      � � � 1   l n��
�� 
txdl � 1   k l��
�� 
ascr �  � � � l  p p�� � ���   � 4 .display dialog "paramList=|" & paramList & "|"    � � � � \ d i s p l a y   d i a l o g   " p a r a m L i s t = | "   &   p a r a m L i s t   &   " | " �  � � � r   p s � � � m   p q � � � � �   � o      ���� 0 	notetitle 	noteTitle �  � � � r   t w � � � m   t u � � � � �   � o      ���� 0 notetext noteText �  � � � r   x { � � � m   x y � � � � �   � o      ���� 0 noteenml noteENML �  � � � r   |  � � � m   | } � � � � �   � o      ���� 0 notehtml noteHTML �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 	sourceurl 	sourceURL �  � � � X   � ��� � � k   � � �  � � � r   � � � � � I      �� ����� 0 getkeyvalfrom getKeyValFrom �  ��� � o   � ����� 	0 param  ��  ��   � J       � �  � � � o      ���� 0 thekey theKey �  ��� � o      ���� 0 theval theVal��   �  � � � Z  � � � ����� � =  � � � � � o   � ����� 0 thekey theKey � m   � � � � � � � 
 t i t l e � r   � � � � � I   � ��� ����� 0 	decodeurl 	decodeURL �  ��� � o   � ����� 0 theval theVal��  ��   � o      ���� 0 	notetitle 	noteTitle��  ��   �  � � � Z  � � � ����� � =  � � � � � o   � ����� 0 thekey theKey � m   � � � � � � �  t e x t � r   � � � � � I   � ��� ����� 0 	decodeurl 	decodeURL �  ��� � o   � ����� 0 theval theVal��  ��   � o      ���� 0 notetext noteText��  ��   �  � � � Z  � � � ����� � =  � � � � � o   � ����� 0 thekey theKey � m   � � � � � � �  e n m l � r   � � � � � I   � ��� ����� 0 	decodeurl 	decodeURL �  ��� � o   � ����� 0 theval theVal��  ��   � o      ���� 0 noteenml noteENML��  ��   �  � � � Z  � ����  =  � � o   � ����� 0 thekey theKey m   � � �  h t m l r   � � I   � ������� 0 	decodeurl 	decodeURL 	��	 o   � ����� 0 theval theVal��  ��   o      ���� 0 notehtml noteHTML��  ��   � 
��
 Z ���� =  o  ���� 0 thekey theKey m   �  s o u r c e r  
 I  
������ 0 	decodeurl 	decodeURL �� o  ���� 0 theval theVal��  ��   o      �� 0 	sourceurl 	sourceURL��  ��  ��  �� 	0 param   � o   � ��~�~ 0 	paramlist 	paramList �  l �}�}   � �display dialog "action=|" & action & "|" & return & "noteTitle=|" & noteTitle & "|" & return & "noteText=|" & noteText & "|" & return & "noteENML=|" & noteENML & "|" & return & "noteHTML=|" & noteHTML & "|" & return & "sourceURL=|" & sourceURL & "|"    �� d i s p l a y   d i a l o g   " a c t i o n = | "   &   a c t i o n   &   " | "   &   r e t u r n   &   " n o t e T i t l e = | "   &   n o t e T i t l e   &   " | "   &   r e t u r n   &   " n o t e T e x t = | "   &   n o t e T e x t   &   " | "   &   r e t u r n   &   " n o t e E N M L = | "   &   n o t e E N M L   &   " | "   &   r e t u r n   &   " n o t e H T M L = | "   &   n o t e H T M L   &   " | "   &   r e t u r n   &   " s o u r c e U R L = | "   &   s o u r c e U R L   &   " | "  l �|�{�z�|  �{  �z    l �y�y     Process action    �      P r o c e s s   a c t i o n !�x! Z  �"#�w$" = !%&% o  �v�v 
0 action  & m   '' �((  a d d# O  $�)*) k  *�++ ,-, Z  *s./01. > */232 o  *+�u�u 0 notetext noteText3 m  +.44 �55  / r  2=676 I 2;�t�s8
�t .EVRNcrntnull��� ��� null�s  8 �r9�q
�r 
Enxt9 o  67�p�p 0 notetext noteText�q  7 o      �o�o 0 newnote newNote0 :;: > @E<=< o  @A�n�n 0 noteenml noteENML= m  AD>> �??  ; @A@ r  HSBCB I HQ�m�lD
�m .EVRNcrntnull��� ��� null�l  D �kE�j
�k 
EnMLE o  LM�i�i 0 noteenml noteENML�j  C o      �h�h 0 newnote newNoteA FGF > V[HIH o  VW�g�g 0 notehtml noteHTMLI m  WZJJ �KK  G L�fL r  ^iMNM I ^g�e�dO
�e .EVRNcrntnull��� ��� null�d  O �cP�b
�c 
EnhlP o  bc�a�a 0 notehtml noteHTML�b  N o      �`�` 0 newnote newNote�f  1 r  lsQRQ I lq�_�^�]
�_ .EVRNcrntnull��� ��� null�^  �]  R o      �\�\ 0 newnote newNote- STS r  t{UVU o  tu�[�[ 0 	notetitle 	noteTitleV n      WXW 1  vz�Z
�Z 
EVetX o  uv�Y�Y 0 newnote newNoteT YZY r  |�[\[ o  |}�X�X 0 	sourceurl 	sourceURL\ n      ]^] 1  ~��W
�W 
EVsu^ o  }~�V�V 0 newnote newNoteZ _`_ r  ��aba I ���U�Tc
�U .EVRNonwnnull��� ��� null�T  c �Sd�R
�S 
EV17d o  ���Q�Q 0 newnote newNote�R  b o      �P�P 0 newnotewindow newNoteWindow` e�Oe I ���Nf�M
�N .miscactvnull��� ��� nullf o  ���L�L 0 newnotewindow newNoteWindow�M  �O  * m  $'gg�                                                                                  EVRN  alis    V  Macintosh HD               ΗWcH+     OEvernote.app                                                    :={�V�d        ����  	                Applications    Η��      �V��       O  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  �w  $ l ��hijh L  ��kk m  ���K
�K boovfalsi #  Specified action is invalid.   j �ll :   S p e c i f i e d   a c t i o n   i s   i n v a l i d .�x    R      �Jmn
�J .ascrerr ****      � ****m o      �I�I 0 	errortext 	errorTextn �Hop
�H 
errno o      �G�G 0 errornum errorNump �Fq�E
�F 
erobq o      �D�D 0 errorobject errorObject�E    k  ��rr sts O ��uvu r  ��wxw c  ��yzy n  ��{|{ 1  ���C
�C 
pnam| 4  ���B}
�B 
file} l ��~�A�@~ I ���?�>
�? .earsffdralis        afdr  f  ���>  �A  �@  z m  ���=
�= 
ctxtx o      �<�< (0 thisscriptfilename thisScriptFileNamev m  �����                                                                                  MACS  alis    t  Macintosh HD               ΗWcH+     -
Finder.app                                                      %x�`ӑ        ����  	                CoreServices    Η��      �a'�       -   *   )  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  t ��;� I ���:��
�: .sysodisAaleR        TEXT� o  ���9�9 (0 thisscriptfilename thisScriptFileName� �8��7
�8 
mesS� b  ����� b  ����� b  ����� m  ���� ��� ( Q u i t t i n g   w i t h   e r r o r  � o  ���6�6 0 errornum errorNum� m  ���� ���  :  � o  ���5�5 0 	errortext 	errorText�7  �;    ��4� l ���3�2�1�3  �2  �1  �4    ��� l     �0�/�.�0  �/  �.  � ��� i    ��� I      �-��,�- 0 getkeyvalfrom getKeyValFrom� ��+� o      �*�* "0 thekeyvalstring theKeyValString�+  �,  � k     2�� ��� l     �)���)  � S M Parse and return key and value from theKeyValString formatted as "key=value"   � ��� �   P a r s e   a n d   r e t u r n   k e y   a n d   v a l u e   f r o m   t h e K e y V a l S t r i n g   f o r m a t t e d   a s   " k e y = v a l u e "� ��� r     ��� J     �� ��(� m     �� ���  =�(  � n     ��� 1    �'
�' 
txdl� 1    �&
�& 
ascr� ��� r    ��� n    ��� 2   	 �%
�% 
citm� o    	�$�$ "0 thekeyvalstring theKeyValString� o      �#�# $0 keyvalpairtokens keyValPairTokens� ��� r    ��� n    ��� 4   �"�
�" 
citm� m    �!�! � o    � �  $0 keyvalpairtokens keyValPairTokens� o      �� 0 	keystring 	keyString� ��� r    $��� c    "��� n     ��� 7    ���
� 
citm� m    �� � m    ����� o    �� $0 keyvalpairtokens keyValPairTokens� m     !�
� 
TEXT� o      �� 0 	valstring 	valString� ��� r   % ,��� J   % (�� ��� m   % &�� ���  �  � n     ��� 1   ) +�
� 
txdl� 1   ( )�
� 
ascr� ��� L   - 2�� J   - 1�� ��� o   - .�� 0 	keystring 	keyString� ��� o   . /�� 0 	valstring 	valString�  �  � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 	decodeurl 	decodeURL� ��� o      �
�
 0 theencodedurl theEncodedURL�  �  � k     4�� ��� l     �	���	  � < 6 Decode theEncodedURL using php urldecode() function.    � ��� l   D e c o d e   t h e E n c o d e d U R L   u s i n g   p h p   u r l d e c o d e ( )   f u n c t i o n .  � ��� l     ����  � ] W The decoding function converts URL encoded special characters to their original form,    � ��� �   T h e   d e c o d i n g   f u n c t i o n   c o n v e r t s   U R L   e n c o d e d   s p e c i a l   c h a r a c t e r s   t o   t h e i r   o r i g i n a l   f o r m ,  � ��� l     ����  � ^ X e.g., every occurence of "%20" in the encoded string is converted to a space char, " ".   � ��� �   e . g . ,   e v e r y   o c c u r e n c e   o f   " % 2 0 "   i n   t h e   e n c o d e d   s t r i n g   i s   c o n v e r t e d   t o   a   s p a c e   c h a r ,   "   " .� ��� l     ����  � [ U First, encode any tick mark characters since these are typically not encoded by URL    � ��� �   F i r s t ,   e n c o d e   a n y   t i c k   m a r k   c h a r a c t e r s   s i n c e   t h e s e   a r e   t y p i c a l l y   n o t   e n c o d e d   b y   U R L  � ��� l     ����  � 8 2 encoders and will cause the shell command to fail   � ��� d   e n c o d e r s   a n d   w i l l   c a u s e   t h e   s h e l l   c o m m a n d   t o   f a i l� ��� r     ��� J     �� ��� m     �� ���  '�  � n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� r    ��� n    ��� 2   	 �
� 
citm� o    	� �  0 theencodedurl theEncodedURL� o      ���� 00 theencodedurltokenlist theEncodedURLTokenList�    r     J     �� m     �  % 2 7��   n     	 1    ��
�� 
txdl	 1    ��
�� 
ascr 

 r     c     n     2    ��
�� 
citm o    ���� 00 theencodedurltokenlist theEncodedURLTokenList m    ��
�� 
TEXT o      ���� 20 theshellreadyencodedurl theShellReadyEncodedURL  r    % J    ! �� m     �  ��   n      1   " $��
�� 
txdl 1   ! "��
�� 
ascr  l  & &����   P Jdisplay dialog "theShellReadyEncodedURL=|" & theShellReadyEncodedURL & "|"    �   � d i s p l a y   d i a l o g   " t h e S h e l l R e a d y E n c o d e d U R L = | "   &   t h e S h e l l R e a d y E n c o d e d U R L   &   " | " !"! r   & 1#$# I  & /��%��
�� .sysoexecTEXT���     TEXT% b   & +&'& b   & )()( m   & '** �++ 0 p h p   - r   ' e c h o   u r l d e c o d e ( ") o   ' (���� 20 theshellreadyencodedurl theShellReadyEncodedURL' m   ) *,, �--  " ) ; '��  $ o      ���� 0 thedecodedurl theDecodedURL" .��. L   2 4// o   2 3���� 0 thedecodedurl theDecodedURL��  �       ��0123��  0 ������
�� .GURLGURLnull��� ��� TEXT�� 0 getkeyvalfrom getKeyValFrom�� 0 	decodeurl 	decodeURL1 �� ����45��
�� .GURLGURLnull��� ��� TEXT�� 0 xevernoteurl xevernoteURL��  4 �������������������������������������������� 0 xevernoteurl xevernoteURL�� (0 xevernoteurlprefix xevernoteURLPrefix�� 
0 uri URI�� (0 questionmarktokens questionMarkTokens�� 
0 action  �� 
0 params  �� 0 	paramlist 	paramList�� 0 	notetitle 	noteTitle�� 0 notetext noteText�� 0 noteenml noteENML�� 0 notehtml noteHTML�� 0 	sourceurl 	sourceURL�� 	0 param  �� 0 thekey theKey�� 0 theval theVal�� 0 newnote newNote�� 0 newnotewindow newNoteWindow�� 0 	errortext 	errorText�� 0 errornum errorNum�� 0 errorobject errorObject�� (0 thisscriptfilename thisScriptFileName5 1 , <�������� X���� w � � � � � � ����� ��� � �'g4����>��J��������������6�������������
�� 
ascr
�� 
txdl
�� 
ctxt
�� .corecnte****       ****
�� 
citm
�� 
cobj
�� 
kocl�� 0 getkeyvalfrom getKeyValFrom�� 0 	decodeurl 	decodeURL
�� 
Enxt
�� .EVRNcrntnull��� ��� null
�� 
EnML
�� 
Enhl
�� 
EVet
�� 
EVsu
�� 
EV17
�� .EVRNonwnnull��� ��� null
�� .miscactvnull��� ��� null�� 0 	errortext 	errorText6 ����7
�� 
errn�� 0 errornum errorNum7 ������
�� 
erob�� 0 errorobject errorObject��  
�� 
file
�� .earsffdralis        afdr
�� 
pnam
�� 
mesS
�� .sysodisAaleR        TEXT�����E�O�� fY hO�kv��,FO�[�\[Z�j k\Zi2E�O�kv��,FO��-E�O��k/E�O��  fY hO��l/E�O�kv��,FO��-E�O�kv��,FO�E�O�E�O�E�O�E�Oa E�O ��[a �l kh *�k+ E[�k/E�Z[�l/E�ZO�a   *�k+ E�Y hO�a   *�k+ E�Y hO�a   *�k+ E�Y hO�a   *�k+ E�Y hO�a   *�k+ E�Y h[OY�|O�a   {a  q�a  *a �l E�Y 5�a  *a �l E�Y �a   *a !�l E�Y 	*j E�O��a ",FO��a #,FO*a $�l %E^ O] j &UY fW <X ' (a ) *a *)j +/a ,,�&E^ UO] a -a .] %a /%] %l 0OP2 �������89���� 0 getkeyvalfrom getKeyValFrom�� ��:�� :  ���� "0 thekeyvalstring theKeyValString��  8 ���������� "0 thekeyvalstring theKeyValString�� $0 keyvalpairtokens keyValPairTokens�� 0 	keystring 	keyString�� 0 	valstring 	valString9 ����������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� 3�kv��,FO��-E�O��k/E�O�[�\[Zl\Zi2�&E�O�kv��,FO��lv3 �������;<���� 0 	decodeurl 	decodeURL�� ��=�� =  ���� 0 theencodedurl theEncodedURL��  ; ���������� 0 theencodedurl theEncodedURL�� 00 theencodedurltokenlist theEncodedURLTokenList�� 20 theshellreadyencodedurl theShellReadyEncodedURL�� 0 thedecodedurl theDecodedURL< 
���������*,��
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT
�� .sysoexecTEXT���     TEXT�� 5�kv��,FO��-E�O�kv��,FO��-�&E�O�kv��,FO�%�%j 	E�O�ascr  ��ޭ