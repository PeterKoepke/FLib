[synonym zfset/-s]

Signature. A zfset is a notion.

Axiom. Let x be a zfset. Then x is a set.


## General Syntax

Let x /in y stand for x is an element of y.
Let x /notin y stand for x is not an element of y.
Let x /neq y stand for x != y.

Axiom. Let a be a set. Let b /in a. Then b is a zfset.


## Pretyped Variables

Let w,x,y,z,W,X,Y,Z stand for zfSets.
Let a,b,c,d,A,B,C,D stand for sets.
Let o,o1,o2 stand for objects.


## Introduction of Emptyset, Universe

# Extensionality is already defined
Lemma. Let a, b be sets. (Forall o (o /in a <=> o /in b)) => a = b.
Lemma. Let a, b be sets. (Forall c (c /in a <=> c /in b)) => a = b.

Definition Emptyset. The empty set is {zfset x | x /neq x}.
Let /emptyset stand for the empty set.

Definition. Let a be a set. a is empty iff a = /emptyset.
Definition. Let a be a set. a is nonempty iff exists b (b /in a).

Lemma. Let a be a set. Let a be nonempty. Then a /neq /emptyset.
Lemma. Let a be a set. Let a /neq /emptyset. Then exists x (x /in a).

Definition Universe. The universe is {zfset x | x = x}.
Let /VV stand for the universe.

Lemma. Let x be an object. x is a zfset iff x /in /VV.

Definition Subset. A subset of A is a set B such that
forall c (c /in B => c /in A).
Let B /subset A stand for B is a subset of A.

Lemma. Let a,b be sets. Let a /subset b /\ b /subset a. Then a = b.



## Arithmetic


Definition. The singleton set of X is
{zfset x | x = X}.
Let <X> stand for the singleton set of X.

Definition. The pair of x and y is {zfset z | z = x \/ z = y}.
Let <x , y> denote the pair of x and y.

Definition. The union of A is
{zfset x | exists w (w /in A /\ x /in w)}. 
Let /bigcup A denote the union of A.

Definition. The union of A and B is 
{zfset x | x /in A or x /in B}.
Let X /cup Y stand for the union of X and Y.

Definition. The intersection of A is
{zfset x | forall y (y /in A => x /in y)}.
Let /bigcap A stand for the intersection of A.

Definition. The intersection of A and B is 
{zfset x | x /in A and x /in B}.
Let A /cap B stand for the intersection of A and B.

Definition. The difference of A and B is 
{zfset x | x /in A and x /notin B}.
Let X /setminus Y stand for the difference of X and Y.

Definition. The power set of X is
{zfset x | x /subset X}.
Let /PP X stand for the power set of X.



## ZF-Axioms

Axiom Emptyset. /emptyset is a zfset.


Axiom Pair. Let x, y /in /VV. Then <x, y> /in /VV.

Lemma. Forall x,y exists z forall o (o /in z iff o = x \/ o = y).
Proof.
  Let x,y be zfsets.
  Let z = <x,y>.
  Then z is a zfset.
  Forall o (o /in z iff o = x \/ o = y).
qed.


Axiom Union. Let x /in /VV. Then /bigcup x /in /VV.

Lemma. Forall x exists y forall o (o /in y iff exists w (w /in x /\ o /in w)).
Proof.
  Let x be a zfset.
  Let y = /bigcup x.
  Then y is a zfset.
  Forall o (o /in y iff exists w (w /in x /\ o /in w)).
  Then exists z forall o (o /in z iff exists w (w /in x /\ o /in w)).
qed.

Lemma. Let x,y /in /VV. Then x /cup y /in /VV.
Proof.
  Let z = <x,y>.
  Then /bigcup z = x /cup y.
qed.


Axiom Separation. Let x /in /VV. Let a /subset x. Then a /in /VV.


Axiom Power. Let x be a zfset. Then /PP x is a zfset.

Lemma. Forall x exists y forall o (o /in y iff o /subset x).


Axiom Foundation. Let A be a nonempty set. Then there is a zfset b such that 
(b /in A /\ forall o (o /in b => o /notin A)).

Lemma. Let A be a nonempty set. Then there is a zfset b such that
(b /in A /\ forall c /in A (c /notin b)).

Lemma. Forall x (x /notin x).
#Proof by contradiction. Assume the contrary. Take a zfset x such that x /in x.
#Then <x, x> is a nonempty zfset.
#Forall y /in <x, x> (y = x).
#Forall y /in <x, x> (x /in y /\ x /in <x, x>).
#Contradiction.
#qed.


Lemma. Let x be a zfset. Then <x> is a zfset.
Proof. x is a zfset. Let A = <x, x>.
Then A is a zfset.
A = <x>.
qed.



[synonym class/-es]

Signature. A proper class is a notion.

Axiom. Let L be a proper class. Then L is a set.
Axiom. Let a be a set. a is a proper class iff a /notin /VV.

Lemma. /VV is a proper class.



## Ordinals

Definition. Let A be a set. A is transitive iff forall x,y (y /in A /\ x /in y => x /in A).
Let Trans(A) stand for A is transitive.

Lemma. Let A be a transitive set. Let Trans(A). Then forall o1,o2 (o1 /in A /\ o2 /in o1 => o2 /in A).

Lemma. Trans(/emptyset).

[synonym ordinal/-s]

Signature. An ordinal is a notion.

Let alpha, beta, gamma, delta stand for ordinals.

Axiom. Let alpha be an ordinal. Then alpha is a zfset.


# Successor of an ordinal

Signature. 0 is a zfset.
Signature. 1 is a zfset.
Signature. Let a be an object. a ++ is an object.


Lemma. Let alpha be an ordinal. Then alpha is a zfset.

Axiom. Let alpha be a set. alpha is an ordinal iff ( alpha /in /VV /\ Trans(alpha) /\ forall y (y /in alpha => Trans(y) )).

Definition. The class of transitives is
{zfset x | Trans(x)}.
Let /Trans stand for the class of transitives.

Definition. The class of ordinals is
{zfset x | x is an ordinal}.
Let /Ord stand for the class of ordinals.

Axiom. 0 = /emptyset.

Lemma. 0 is an ordinal.

Axiom. Let alpha be a zfset. Then alpha ++ is {zfset x | x /in alpha \/ x = alpha }.

Lemma. Let x be a zfset. Then x ++ is a zfset.
Proof.
  Let y = <x>.
  Then x++ = x /cup y.
qed.

Axiom. 1 = 0 ++.

Lemma. /Ord is a set and /Trans is a set.

Lemma. /emptyset /in /Trans and /emptyset /in /Ord.

Lemma. /Ord /subset /Trans.

Lemma. Let alpha be an ordinal. Then (alpha ++) is an ordinal.
Proof. alpha ++ is transitive. Forall x /in alpha ++ (x is transitive).
qed.

Lemma. Let alpha be an ordinal. Let x be an object. Let x /in alpha. Then x is an ordinal.

Lemma. Trans(/Ord).

Lemma. /Ord is a proper class.

Lemma ordunion. Let x be a zfset. Let x /subset /Ord. Then /bigcup x is an ordinal.
Proof. /bigcup x is transitive.
qed.

Lemma. Forall alpha (alpha /in alpha ++).


# Total Order

Lemma. Let alpha be an ordinal. Then alpha = /emptyset \/ /emptyset /in alpha.
Proof. Let alpha /neq /emptyset. Take a zfset b such that 
  (b /in alpha /\ forall c (c /in b => c /notin alpha)).
qed.

Lemma TotalOrder. Forall alpha, beta (alpha /in beta \/ beta /in alpha \/ alpha = beta).
Proof by contradiction. Assume the contrary.
  Define A = {ordinal alpha | exists beta (not (alpha /in beta \/ beta /in alpha \/ alpha = beta)) }.
  A is nonempty.
  Take a zfset alpha such that (alpha /in A /\ forall c (c /in alpha => c /notin A)).
  alpha is an ordinal.
  Define B = {ordinal beta |  (not (alpha /in beta \/ beta /in alpha \/ alpha = beta))}.
  B is nonempty.
  Take a zfset beta such that (beta /in B /\ forall c (c /in beta => c /notin B)).
  beta is an ordinal.
  Not (alpha /in beta \/ beta /in alpha \/ alpha = beta).
  alpha /subset beta.
  beta /subset alpha.
  alpha = beta.
  Contradiction.
qed.

Lemma TO1. Forall alpha, beta /in /Ord (alpha /in beta \/ beta /subset alpha).
Lemma TO2. Forall alpha, beta /in /Ord (alpha /subset beta \/ beta /subset alpha).


# Minimum

Definition. Let A /subset /Ord. Let A /neq /emptyset.
The minimum of A is /bigcap A.
Let min(A) stand for the minimum of A.

Lemma. Let A be a set. Let A /subset /Ord. Let A /neq /emptyset. Then forall beta /in A min(A) /subset beta.

Lemma. Let A be a set. Let A /subset /Ord. Let A /neq /emptyset. Then min(A) /in A.
Proof.
  Take a zfset b such that b /in A /\ forall c /in A (c /notin b).
  Then /bigcap A /subset b.
  b /subset /bigcap A.
  Then b = /bigcap A.
qed.

Lemma. Let A be a set. Let A /subset /Ord. Let A /neq /emptyset. Then min(A) is an ordinal.

Lemma. Let A /subset /Ord. Let A /neq /emptyset. Then forall beta /in A (min(A) = beta \/ min(A) /in beta).


Lemma. Let alpha, beta be ordinals. Let alpha /in beta. Then alpha /subset beta.


# Induction

Theorem Induction. Let B /subset /VV. Let forall x (x /subset B => x /in B). Then B = /VV.
Proof by contradiction. Assume the contrary.
  Let A = /VV /setminus B.
  Then A /neq /emptyset.
  Take a zfset b such that b /in A /\ forall c /in b (c /notin A).
  Then b /subset B.
  b /notin B.
  Contradiction.
qed.

Axiom. Forall x,y /in /VV (x -<- y iff x /in y).

Theorem OrdinalInduction. Let phi be a function. Let Dom(phi) = /Ord. Let forall alpha /in /Ord (forall beta /in alpha phi[beta] = 0 => phi[alpha] = 0).
Then forall alpha /in /Ord phi[alpha] = 0.
Proof by Contradiction. Assume the contrary.
  Define M = {ordinal alpha | phi[alpha] = 0}.
  Then M /neq /Ord.
  Let N = /Ord /setminus M.
  N /neq /emptyset.
  Take an ordinal alpha such that alpha /in N /\ forall beta /in alpha (beta /notin N).
  Then forall beta /in alpha phi[beta] = 0.
  Then phi[alpha] = 0.
  Contradiction.
qed.

# Alternatively:
# Theorem OrdinalInduction. Let phi be a function. Let Dom(phi) = /Ord. Let forall alpha /in /Ord (forall beta /in alpha phi[beta] = 0 => phi[alpha] = 0).
# Then forall alpha /in /Ord phi[alpha] = 0.
# Proof by induction.
# qed.



Signature. A successor ordinal is a notion.
Signature. A limit ordinal is a notion.

Axiom successor. Let alpha be an ordinal. alpha is a successor ordinal iff exists beta (alpha = beta ++).

Definition. The class of successor ordinals is
{ordinal alpha | alpha is a successor ordinal }.
Let /Succ stand for the class of successor ordinals.

Lemma. 1 /in /Succ.
Lemma. 0 /notin /Succ.

Axiom limit. Let gamma be an ordinal. gamma is a limit ordinal iff (gamma /neq 0 /\ forall alpha (alpha /in gamma => alpha ++ /in gamma)).

Definition. The class of limit ordinals is
{ordinal alpha | alpha is a limit ordinal }.
Let /Lim stand for the class of limit ordinals.

Lemma limit. Let gamma /in /Lim. Then forall x /in gamma x++ /in gamma.

Lemma. 0 /notin /Lim.
Lemma. 1 /notin /Lim.

Lemma. Forall alpha (alpha = 0 \/ alpha /in /Succ \/ alpha /in /Lim).
Proof.
  Let alpha /in /Ord.
  Then alpha = 0 \/ alpha /in /Succ \/ alpha /in /Lim.
  Proof.
    Case alpha = 0. end.
    Case alpha /in /Lim. end.
    Case alpha /neq 0 /\ alpha /notin /Lim.
      Take an ordinal beta such that beta /in alpha /\ beta++ /notin alpha.
      Then alpha = beta ++.
      Then alpha /in /Succ.
    end.
  end.
qed.


Axiom Infinity. Exists x (/emptyset /in x /\ forall y /in x ((y ++) /in x) ).



## Natural Numbers


[synonym number/-s]

Signature. A natural number is a notion.

Let k,l,m,n stand for natural numbers.

Axiom. Let n be a natural number. Then n is an ordinal.


Definition. The class of inductive sets is
{zfset x |  (/emptyset /in x /\ forall y (y /in x => (y ++) /in x) ) }.
Let /Ind stand for the class of inductive sets.

Definition. The class of natnumbers is /bigcap /Ind.
Let /NN stand for the class of natnumbers.

Lemma. /NN /in /VV.
Proof.
  Take a zfset x such that x /in /Ind.
  Then /NN /subset x.
qed.

Lemma. /NN /in /Ind.

Axiom. Let alpha be an object. alpha is a natural number iff alpha /in /NN.

Lemma. 0 is a natural number.
Lemma. 1 is a natural number.
Lemma. Let n be a natural number. Then n ++ is a natural number.


Lemma. Let n /in /NN. Let n /neq /emptyset. Then n /in /Succ.
Proof. Define M = {ordinal alpha | alpha /in /NN /\ (alpha = /emptyset \/ alpha /in /Succ)}.
  Then M /in /Ind.
  Proof. /emptyset /in M.
    Forall y /in M (y++) /in M.
  end.
  Then M = /NN.
qed.

Lemma. /NN /subset /Ord.
Proof. /NN /cap /Ord /in /VV.
  /NN /cap /Ord /in /Ind.
  Then /NN = /NN /cap /Ord.
qed.

Lemma. /NN is transitive.
Proof. Define A = {set n | n /in /NN /\ forall x /in n (x /in /NN)}.
  Then /emptyset /in A.
  Forall x /in A (x ++ /in A).
  Then A = /NN.
qed.

Lemma. /NN /in /Ord.

Lemma. /NN /in /Lim.











