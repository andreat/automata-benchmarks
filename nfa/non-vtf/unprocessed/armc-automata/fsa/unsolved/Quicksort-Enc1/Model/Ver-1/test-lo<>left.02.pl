%% Automatically generated by FSA Utilities.
%% For more info, cf. http://www.let.rug.nl/~vannoord/Fsa/

fa(
%begin sigma and symbols
t(fsa_preds,fsa_preds),
%end sigma and symbols
7, % number of states
[ % begin start states
0
], % end start states
[ % begin final states
3,4,5,6
], % end final states
[ % begin transitions

trans(0,b/b,1),


trans(1,qs1/qs1,2),


trans(2,'00000'/'00000',2),
trans(2,'00001'/'00001',2),
trans(2,'00010'/'00010',2),
trans(2,'00011'/'00011',2),
trans(2,'01000'/'01000',2),
trans(2,'01001'/'01001',2),
trans(2,'01010'/'01010',2),
trans(2,'01011'/'01011',2),

trans(2,'00100'/'00100',3),
trans(2,'00101'/'00101',3),
trans(2,'00110'/'00110',3),
trans(2,'00111'/'00111',3),
trans(2,'01100'/'01100',3),
trans(2,'01101'/'01101',3),
trans(2,'01110'/'01110',3),
trans(2,'01111'/'01111',3),

trans(2,'10000'/'10000',4),
trans(2,'10001'/'10001',4),
trans(2,'10010'/'10010',4),
trans(2,'10011'/'10011',4),
trans(2,'11000'/'11000',4),
trans(2,'11001'/'11001',4),
trans(2,'11010'/'11010',4),
trans(2,'11011'/'11011',4),


trans(3,'00100'/'00100',3),
trans(3,'00101'/'00101',3),
trans(3,'00110'/'00110',3),
trans(3,'00111'/'00111',3),
trans(3,'01100'/'01100',3),
trans(3,'01101'/'01101',3),
trans(3,'01110'/'01110',3),
trans(3,'01111'/'01111',3),

trans(3,'10100'/'10100',5),
trans(3,'10101'/'10101',5),
trans(3,'10110'/'10110',5),
trans(3,'10111'/'10111',5),
trans(3,'11100'/'11100',5),
trans(3,'11101'/'11101',5),
trans(3,'11110'/'11110',5),
trans(3,'11111'/'11111',5),

trans(3,qs0/qs0,6),
trans(3,qs1/qs1,6),
trans(3,qs2/qs2,6),
trans(3,qs3/qs3,6),


trans(4,'10000'/'10000',4),
trans(4,'10001'/'10001',4),
trans(4,'10010'/'10010',4),
trans(4,'10011'/'10011',4),
trans(4,'11000'/'11000',4),
trans(4,'11001'/'11001',4),
trans(4,'11010'/'11010',4),
trans(4,'11011'/'11011',4),

trans(4,'10100'/'10100',5),
trans(4,'10101'/'10101',5),
trans(4,'10110'/'10110',5),
trans(4,'10111'/'10111',5),
trans(4,'11100'/'11100',5),
trans(4,'11101'/'11101',5),
trans(4,'11110'/'11110',5),
trans(4,'11111'/'11111',5),

trans(4,qs0/qs0,6),
trans(4,qs1/qs1,6),
trans(4,qs2/qs2,6),
trans(4,qs3/qs3,6),


trans(5,'10100'/'10100',5),
trans(5,'10101'/'10101',5),
trans(5,'10110'/'10110',5),
trans(5,'10111'/'10111',5),
trans(5,'11100'/'11100',5),
trans(5,'11101'/'11101',5),
trans(5,'11110'/'11110',5),
trans(5,'11111'/'11111',5),

trans(5,qs0/qs0,6),
trans(5,qs1/qs1,6),
trans(5,qs2/qs2,6),
trans(5,qs3/qs3,6),


trans(6,$@(not_in([]))/ $@(not_in([])),6)


], % end transitions
[]). % jumps
















