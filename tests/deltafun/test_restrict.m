% Test file for @deltafun/restrict.m

function pass = test_restrict(pref)

if (nargin < 1)
    pref = chebpref();
end
%%
d = deltafun();
pass(1) = isempty(restrict(d, [-.5, .5]));

d = deltafun([], 1, 0);
pass(2) = ~anyDelta(restrict(d, [-1, -.5]));
pass(3) = ~anyDelta(restrict(d, [.5, 1]));
pass(4) = anyDelta(restrict(d, [-.5, .5]));

f = fun.constructor(@(x) exp(x), [-1, 1] );
d = deltafun(f, [1 1 1 1], [-.5, -.25, 0, 1] );
A = restrict(d, [-1 0 .5 1]);
d1 = A{1}; d2 = A{2}; d3 = A{3};

pass(5) = all(d1.location == [-.5 -.25 0] );
pass(6) = all(d2.funPart.domain == [0, .5] );
pass(7) = all(d3.deltaMag == 1 );
end