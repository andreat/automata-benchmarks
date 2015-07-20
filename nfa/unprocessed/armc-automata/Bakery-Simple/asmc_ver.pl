%%%%%%%%%%%%%%%%%%%%%%%%

%% :- consult('/usr/local/src/fsa6/swi/fsa_library').
:- consult('/usr/local/src/fsa6/yap/fsa_library').
:- use_module(library(lists)).
:- use_module(library(apply_macros)).

#include "asmc.pl"

%%%%%%%%%%%%%%%%%%%%%%%%

:- fsa_regex_compile(file(init),Init),assertz(init(Init)).

%%......................

:- fsa_regex_compile(file(trs),TR),assertz(tr(TR)).

%%......................

:- fsa_regex_compile(file(mux),MUX),assertz(good(MUX)).

%%......................

%% :- good(Good),init(Init),assertz(pred_lang([Init,Good])).

%% :- good(Good),init(Init),assertz(pred_lang([[Init,[0]],[Good,[0]]])).

%% :- good(Good),fsa_regex_compile(complement(fa(Good)),Bad),init(Init),assertz(pred_lang([Init,Bad])).

%% :- good(Good),fsa_regex_compile(complement(fa(Good)),Bad),init(Init),assertz(pred_lang([[Init,[0]],[Bad,[0]]])).

#ifdef PrIni
:- init(Init),assertz(pred_lang([Init])).
#endif

%% :- init(Init),assertz(pred_lang([[Init,[0]]])).

%% :- good(Good),assertz(pred_lang([Good])).

%% :- good(Good),assertz(pred_lang([[Good,[0]]])).

#ifdef PrBad
:- good(Good),fsa_regex_compile(complement(fa(Good)),Bad),assertz(pred_lang([Bad])).
#endif

%% :- good(Good),fsa_regex_compile(complement(fa(Good)),Bad),assertz(pred_lang([[Bad,[0]]])).

%% :- good(Good),fsa_regex_compile(complement(fa(Good)),Bad),Bad=fa(_,_,_,FL,_,_),assertz(pred_lang([[Bad,FL]])).

%%......................

%%% pred1 = mux
%%% :- retract(pred_lang(PL)),fsa_regex_compile(file(pred1),P),assertz(pred_lang([P|PL])). 

#ifdef PrGuards

:- retract(pred_lang(PL)),fsa_regex_compile(file(pred2),P),assertz(pred_lang([P|PL])).

:- retract(pred_lang(PL)),fsa_regex_compile(file(pred3),P),assertz(pred_lang([P|PL])).

:- retract(pred_lang(PL)),fsa_regex_compile(file(pred4),P),assertz(pred_lang([P|PL])).

:- pred_lang(PL),assertz(cp_pred_lang(PL)).

#endif

%%%%%%%%%%%%%%%%%%%%%%%%

%% Choose some of the below abstraction methods:

%%......................

#ifdef NoAbs
abstract(State,State).
#endif

%%......................

%% Abstraction based on classical language operations:

%% abstract(State,AbsState) :- abstr_lang(State,AbsState).

max_tuple(2).
max_for_appl_tuples(10).

%%......................

%% Abstraction based on forward collapsing:

#ifdef FwColl
abstract(State,AbsState) :- abstr_fw(State,AbsState).
#endif

%% Testing emptiness of intersectins of abstractions and predicates:
%% Requires new_pred to be initially asserted (see below) and its use enabled in the sources.

%% Checking whether the abstraction is an overapproximation of the concrete state set.

%% abstract(State,AbsState) :-
%%   abstr_fw(State,AbsState),
%%   fsa_regex_compile(intersect(complement(fa(AbsState)),fa(State)),X),
%%   ( (empty(X), !,
%% 	write('Abstraction is an overapproximation!'),nl);
%%     (write('Abstraction is NOT an overapproximation!'),nl,
%% 	fsa_write_file(xxxState,State),
%% 	fsa_write_file(xxxAbsState,AbsState),
%% 	trace) ).

%% abstract(State,AbsState) :- abstr_fw_debug(State,AbsState).

%%......................

%% Abstraction based on forward/backward collapsing:

%% abstract(State,AbsState) :- abstr_fwbw(State,AbsState).

%% Abstraction based on forward/backward collapsing - testing disjunctness of abstractions and bad sets

%% abstract(State,AbsState) :- abstr_fwbw_debug(State,AbsState).

%%......................

%% Abstraction based on backward collapsing:

#ifdef BwColl
abstract(State,AbsState) :- abstr_bw(State,AbsState).
#endif

%% Checking whether the abstraction is an overapproximation of the concrete state set.

%% abstract(State,AbsState) :-
%%   abstr_bw(State,AbsState),
%%   fsa_regex_compile(intersect(complement(fa(AbsState)),fa(State)),X),
%%   ( (empty(X), !,
%% 	write('Abstraction is an overapproximation!'),nl);
%%     (write('Abstraction is NOT an overapproximation!'),nl,
%% 	fsa_write_file(xxxState,State),
%% 	fsa_write_file(xxxAbsState,AbsState),
%% 	trace) ).

%% Abstraction based on forward/backward collapsing - testing disjunctness of abstractions and bad sets

%% abstract(State,AbsState) :- abstr_bw_debug(State,AbsState).

%%......................

%% Abstraction based on fw/bw languages with a bounded length of words/sets of traces of a bounded length:

#ifdef FlColl
abstract(State,AbsState) :- abstr_fl(State,AbsState).  %% Choose this or vvv
#endif

#ifdef FtColl
abstract(State,AbsState) :- abstr_ft(State,AbsState).  %% Choose this or ^^^
#endif

#ifdef FbColl
abstract(State,AbsState) :- abstr_fb(State,AbsState).	%% Choose this or vvv
#endif

#ifdef FbtColl
abstract(State,AbsState) :- abstr_ftb(State,AbsState).  %% Choose this or ^^^
#endif

:- assertz(sigma([b,c,w])). %% Must be switched on...

#ifdef IniBad
:- good(Good),fsa_regex_compile(complement(fa(Good)),fa(_,QN,_,_,_,_)),assertz(fin_lang_up_to(QN)).
#endif

#ifdef IniHalfBad
:- good(Good),fsa_regex_compile(complement(fa(Good)),fa(_,QN,_,_,_,_)),Lim is QN//2,assertz(fin_lang_up_to(Lim)).
#endif

#ifdef IniOne
:- assertz(fin_lang_up_to(1)).
#endif

#ifdef IniSp
:- assertz(fin_lang_up_to(IniSp)).
#endif

%%%%%%%%%%%%%%%%%%%%%%%%

:- dynamic with_self_loop_acclr/0, new_pred/1.

%% with_self_loop_acclr.

%% Just for debugging the collapsing method...

new_pred([]).

%%%%%%%%%%%%%%%%%%%%%%%%