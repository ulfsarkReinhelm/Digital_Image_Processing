%[INFO]- produces a photographic negative by  reversing the intensity levels
%[INPUT]- an image array
%[OUTPUT]- an image array
function S = intTranNeg(R)

    var_type = class(R);
    L = intmax(var_type);
    
    S = L - 1 - R;
end

