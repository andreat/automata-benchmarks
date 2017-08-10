%% Automatically generated by FSA Utilities.
%% For more info, cf. http://www.let.rug.nl/~vannoord/Fsa/

fa(
%begin sigma and symbols
t(fsa_preds,fsa_preds),
%end sigma and symbols
5, % number of states
[ % begin start states
0
], % end start states
[ % begin final states
4
], % end final states
[ % begin transitions

trans(0,m0/qs0,1),


trans(1,[]/'00000',2),
trans(1,[]/'00010',2),
trans(1,[]/'00100',2),
trans(1,[]/'00110',2),
trans(1,[]/'01000',2),
trans(1,[]/'01010',2),
trans(1,[]/'01100',2),
trans(1,[]/'01110',2),


trans(2,[]/'00001',3),
trans(2,[]/'00011',3),
trans(2,[]/'00101',3),
trans(2,[]/'00111',3),
trans(2,[]/'01001',3),
trans(2,[]/'01011',3),
trans(2,[]/'01101',3),
trans(2,[]/'01111',3),


trans(3,[]/'00001',3),
trans(3,[]/'00011',3),
trans(3,[]/'00101',3),
trans(3,[]/'00111',3),
trans(3,[]/'01001',3),
trans(3,[]/'01011',3),
trans(3,[]/'01101',3),
trans(3,[]/'01111',3),

trans(3,[]/m1,4)


], % end transitions
[]). % jumps















