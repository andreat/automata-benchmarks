%% Automatically generated by FSA Utilities.
%% For more info, cf. http://www.let.rug.nl/~vannoord/Fsa/

fa(
%begin sigma and symbols
t(fsa_preds,fsa_preds),
%end sigma and symbols
6, % number of states
[ % begin start states
0
], % end start states
[ % begin final states
2,3,4,5
], % end final states
[ % begin transitions

trans(0,b/b,1),


trans(1,qs1/qs1,2),


trans(2,'00000'/'00000',2),
trans(2,'00001'/'00001',2),
trans(2,'01000'/'01000',2),
trans(2,'01001'/'01001',2),
trans(2,'10000'/'10000',2),
trans(2,'10001'/'10001',2),
trans(2,'11000'/'11000',2),
trans(2,'11001'/'11001',2),

trans(2,'00010'/'00010',3),
trans(2,'00011'/'00011',3),
trans(2,'01010'/'01010',3),
trans(2,'01011'/'01011',3),
trans(2,'10010'/'10010',3),
trans(2,'10011'/'10011',3),
trans(2,'11010'/'11010',3),
trans(2,'11011'/'11011',3),

trans(2,'00110'/'00110',4),
trans(2,'00111'/'00111',4),
trans(2,'01110'/'01110',4),
trans(2,'01111'/'01111',4),
trans(2,'10110'/'10110',4),
trans(2,'10111'/'10111',4),
trans(2,'11110'/'11110',4),
trans(2,'11111'/'11111',4),

trans(2,qs0/qs0,5),
trans(2,qs1/qs1,5),
trans(2,qs2/qs2,5),
trans(2,qs3/qs3,5),


trans(3,'00010'/'00010',3),
trans(3,'00011'/'00011',3),
trans(3,'01010'/'01010',3),
trans(3,'01011'/'01011',3),
trans(3,'10010'/'10010',3),
trans(3,'10011'/'10011',3),
trans(3,'11010'/'11010',3),
trans(3,'11011'/'11011',3),

trans(3,'00110'/'00110',4),
trans(3,'00111'/'00111',4),
trans(3,'01110'/'01110',4),
trans(3,'01111'/'01111',4),
trans(3,'10110'/'10110',4),
trans(3,'10111'/'10111',4),
trans(3,'11110'/'11110',4),
trans(3,'11111'/'11111',4),

trans(3,qs0/qs0,5),
trans(3,qs1/qs1,5),
trans(3,qs2/qs2,5),
trans(3,qs3/qs3,5),


trans(4,'00110'/'00110',4),
trans(4,'00111'/'00111',4),
trans(4,'01110'/'01110',4),
trans(4,'01111'/'01111',4),
trans(4,'10110'/'10110',4),
trans(4,'10111'/'10111',4),
trans(4,'11110'/'11110',4),
trans(4,'11111'/'11111',4),

trans(4,qs0/qs0,5),
trans(4,qs1/qs1,5),
trans(4,qs2/qs2,5),
trans(4,qs3/qs3,5),


trans(5,$@(not_in([]))/ $@(not_in([])),5)


], % end transitions
[]). % jumps















