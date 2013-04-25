function out = isinf(f)
%ISINF   Test if a BNDFUN is unbounded.
%   ISINF(F) returns TRUE if F has any infinite values and FALSE otherwise.
%
% See also ISFINITE, ISNAN.

% Copyright 2013 by The University of Oxford and The Chebfun Developers. 
% See http://www.chebfun.org/ for Chebfun information.

% Check if the onefun of f is infinite:
out = isinf(f.onefun);

end