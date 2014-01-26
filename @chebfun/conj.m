function F = conj(F)
%CONJ   Complex conjugate of a CHEBFUN.
%   CONJ(F) is the complex conjugate of F.
%
% See also REAL, IMAG.

% Copyright 2013 by The University of Oxford and The Chebfun Developers.
% See http://www.chebfun.org for Chebfun information.

% Loop over the columns of F:
for j = 1:numel(F)
    
    % Conjugate the impulses:
    % [TODO]:  Is this the right thing to do for higher-order impulses?
    F(j).impulses = conj(F(j).impulses);
    
    % Conjugate the FUNs:
    for k = 1:numel(F(j).funs)
        F(j).funs{k} = conj(F(j).funs{k});
    end
    
end

end